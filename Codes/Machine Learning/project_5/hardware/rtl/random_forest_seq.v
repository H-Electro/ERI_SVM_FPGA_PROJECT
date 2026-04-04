`timescale 1ns / 1ps
`define RF_NUM_CROPS 6
`define RF_CROP_SEL_W 3
`define RF_TOTAL_TREES 96
`define RF_TOTAL_NODES 19178
`define RF_TOTAL_TESTS 10000
`define RF_NUM_FEATURES 18
`define RF_DATA_W 32
`define RF_NODE_W 128
`define RF_FRAC_BITS 16
`define RF_SCALE 65536

module random_forest_seq #(
    parameter NUM_FEATURES = `RF_NUM_FEATURES,
    parameter NUM_CROPS    = `RF_NUM_CROPS,
    parameter TOTAL_TREES  = `RF_TOTAL_TREES,
    parameter TOTAL_NODES  = `RF_TOTAL_NODES,
    parameter DATA_W       = `RF_DATA_W,
    parameter NODE_W       = `RF_NODE_W,
    parameter CROP_SEL_W   = `RF_CROP_SEL_W
)(
    input  wire                         axi_clk,
    input  wire                         axi_reset_n,
    input  wire [CROP_SEL_W-1:0]        crop_type,
    input  wire                         s_axis_valid,
    input  wire [DATA_W-1:0]            s_axis_data,
    output wire                         s_axis_ready,
    output reg                          m_axis_valid,
    output reg  [DATA_W-1:0]            m_axis_data,
    input  wire                         m_axis_ready
);

    localparam S_RECV      = 3'd0;
    localparam S_LOAD_TREE = 3'd1;
    localparam S_READ_NODE = 3'd2;
    localparam S_EVAL_NODE = 3'd3;
    localparam S_NEXT_TREE = 3'd4;
    localparam S_OUTPUT    = 3'd5;

    reg [2:0] state;
    reg [15:0] current_tree_local;
    reg [15:0] current_node;
    reg [15:0] active_tree_offset;
    reg [15:0] active_tree_count;
    reg [7:0]  feature_write_idx;
    reg [CROP_SEL_W-1:0] active_crop_type;
    reg [127:0] node_word_reg;
    reg signed [63:0] acc_sum;

    reg signed [DATA_W-1:0] feature_store [0:NUM_FEATURES-1];
    reg [127:0] forest_mem [0:TOTAL_NODES-1];
    reg [15:0] tree_base_mem [0:TOTAL_TREES-1];
    reg [15:0] crop_tree_offset_mem [0:NUM_CROPS-1];
    reg [15:0] crop_tree_count_mem [0:NUM_CROPS-1];

    integer init_idx;

    initial begin
        $readmemh("forest_nodes.mem", forest_mem);
        $readmemh("tree_bases.mem", tree_base_mem);
        $readmemh("crop_tree_offsets.mem", crop_tree_offset_mem);
        $readmemh("crop_tree_counts.mem", crop_tree_count_mem);
        for (init_idx = 0; init_idx < NUM_FEATURES; init_idx = init_idx + 1)
            feature_store[init_idx] = {DATA_W{1'b0}};
    end

    wire               node_is_leaf;
    wire [7:0]         node_feature_idx;
    wire [15:0]        node_left_idx;
    wire [15:0]        node_right_idx;
    wire signed [31:0] node_threshold_q;
    wire signed [31:0] node_leaf_value_q;
    wire [15:0]        active_tree_index;
    wire               s_axis_handshake;
    wire               m_axis_handshake;

    assign node_is_leaf      = node_word_reg[127];
    assign node_feature_idx  = node_word_reg[126:119];
    assign node_left_idx     = node_word_reg[118:103];
    assign node_right_idx    = node_word_reg[102:87];
    assign node_threshold_q  = node_word_reg[86:55];
    assign node_leaf_value_q = node_word_reg[54:23];
    assign active_tree_index = active_tree_offset + current_tree_local;

    assign s_axis_ready = (state == S_RECV) && !m_axis_valid;
    assign s_axis_handshake = s_axis_valid && s_axis_ready;
    assign m_axis_handshake = m_axis_valid && m_axis_ready;

    always @(posedge axi_clk or negedge axi_reset_n) begin
        if (!axi_reset_n) begin
            state              <= S_RECV;
            current_tree_local <= 16'd0;
            current_node       <= 16'd0;
            active_tree_offset <= 16'd0;
            active_tree_count  <= 16'd0;
            active_crop_type   <= {CROP_SEL_W{1'b0}};
            feature_write_idx  <= 8'd0;
            node_word_reg      <= 128'd0;
            acc_sum            <= 64'sd0;
            m_axis_valid       <= 1'b0;
            m_axis_data        <= {DATA_W{1'b0}};
        end else begin
            case (state)
                S_RECV: begin
                    if (s_axis_handshake) begin
                        feature_store[feature_write_idx] <= s_axis_data;

                        if (feature_write_idx == 0)
                            active_crop_type <= crop_type;

                        if (feature_write_idx + 8'd1 >= NUM_FEATURES) begin
                            feature_write_idx  <= 8'd0;
                            current_tree_local <= 16'd0;
                            active_tree_offset <= crop_tree_offset_mem[crop_type];
                            active_tree_count  <= crop_tree_count_mem[crop_type];
                            acc_sum            <= 64'sd0;
                            m_axis_valid       <= 1'b0;
                            state              <= S_LOAD_TREE;
                        end else begin
                            feature_write_idx <= feature_write_idx + 8'd1;
                        end
                    end
                end

                S_LOAD_TREE: begin
                    current_node <= tree_base_mem[active_tree_index];
                    state        <= S_READ_NODE;
                end

                S_READ_NODE: begin
                    node_word_reg <= forest_mem[current_node];
                    state         <= S_EVAL_NODE;
                end

                S_EVAL_NODE: begin
                    if (node_is_leaf) begin
                        acc_sum <= acc_sum + node_leaf_value_q;
                        state   <= S_NEXT_TREE;
                    end else begin
                        if (feature_store[node_feature_idx] <= node_threshold_q)
                            current_node <= node_left_idx;
                        else
                            current_node <= node_right_idx;
                        state <= S_READ_NODE;
                    end
                end

                S_NEXT_TREE: begin
                    if (current_tree_local + 16'd1 >= active_tree_count) begin
                        m_axis_data  <= acc_sum / active_tree_count;
                        m_axis_valid <= 1'b1;
                        state        <= S_OUTPUT;
                    end else begin
                        current_tree_local <= current_tree_local + 16'd1;
                        state              <= S_LOAD_TREE;
                    end
                end

                S_OUTPUT: begin
                    if (m_axis_handshake) begin
                        m_axis_valid <= 1'b0;
                        m_axis_data  <= {DATA_W{1'b0}};
                        state        <= S_RECV;
                    end
                end

                default: begin
                    state <= S_RECV;
                end
            endcase
        end
    end
endmodule