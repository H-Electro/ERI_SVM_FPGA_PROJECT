`timescale 1ns / 1ps
`include "generated/config_auto.vh"

module tb_random_forest_seq;

    localparam NUM_FEATURES = `RF_NUM_FEATURES;
    localparam NUM_CROPS    = `RF_NUM_CROPS;
    localparam TOTAL_TESTS  = `RF_TOTAL_TESTS;
    localparam DATA_W       = `RF_DATA_W;
    localparam FEATURES_W   = NUM_FEATURES * DATA_W;
    localparam CROP_SEL_W   = `RF_CROP_SEL_W;

    reg axi_clk;
    reg axi_reset_n;
    reg [CROP_SEL_W-1:0] crop_type;
    reg s_axis_valid;
    reg [DATA_W-1:0] s_axis_data;
    wire s_axis_ready;
    wire m_axis_valid;
    wire [DATA_W-1:0] m_axis_data;
    reg m_axis_ready;

    reg [FEATURES_W-1:0] feature_mem [0:TOTAL_TESTS-1];
    reg signed [DATA_W-1:0] expected_mem [0:TOTAL_TESTS-1];
    reg [31:0] crop_sample_offset_mem [0:NUM_CROPS-1];
    reg [31:0] crop_sample_count_mem [0:NUM_CROPS-1];

    integer crop_idx;
    integer sample_idx;
    integer feature_idx;
    integer global_idx;
    integer crop_errors;
    integer crop_correct;
    integer errors;
    integer correct;

    random_forest_seq #(
        .NUM_FEATURES(NUM_FEATURES)
    ) dut (
        .axi_clk(axi_clk),
        .axi_reset_n(axi_reset_n),
        .crop_type(crop_type),
        .s_axis_valid(s_axis_valid),
        .s_axis_data(s_axis_data),
        .s_axis_ready(s_axis_ready),
        .m_axis_valid(m_axis_valid),
        .m_axis_data(m_axis_data),
        .m_axis_ready(m_axis_ready)
    );

    initial begin
        axi_clk = 1'b0;
        forever #5 axi_clk = ~axi_clk;
    end

    initial begin
        $readmemh("generated/tb_features.mem", feature_mem);
        $readmemh("generated/tb_expected.mem", expected_mem);
        $readmemh("generated/crop_sample_offsets.mem", crop_sample_offset_mem);
        $readmemh("generated/crop_sample_counts.mem", crop_sample_count_mem);
    end

    task automatic send_sample;
        input integer sample_global_idx;
        integer local_feature_idx;
        reg [FEATURES_W-1:0] packed_features;
        begin
            packed_features = feature_mem[sample_global_idx];
            for (local_feature_idx = 0; local_feature_idx < NUM_FEATURES; local_feature_idx = local_feature_idx + 1) begin
                @(posedge axi_clk);
                while (!s_axis_ready)
                    @(posedge axi_clk);
                s_axis_valid <= 1'b1;
                s_axis_data  <= packed_features[local_feature_idx*DATA_W +: DATA_W];
            end
            @(posedge axi_clk);
            s_axis_valid <= 1'b0;
            s_axis_data  <= {DATA_W{1'b0}};
        end
    endtask

    task automatic receive_and_check;
        input integer crop_id;
        input integer local_sample_idx;
        input integer sample_global_idx;
        begin
            @(posedge axi_clk);
            while (!m_axis_valid)
                @(posedge axi_clk);
            m_axis_ready <= 1'b1;
            @(posedge axi_clk);
            if ($signed(m_axis_data) === expected_mem[sample_global_idx]) begin
                $display("CROP %0d TEST %0d PASS | prediction = %0h | expected = %0h", crop_id, local_sample_idx, m_axis_data, expected_mem[sample_global_idx]);
                correct = correct + 1;
                crop_correct = crop_correct + 1;
            end else begin
                $display("CROP %0d TEST %0d FAIL | prediction = %0h | expected = %0h", crop_id, local_sample_idx, m_axis_data, expected_mem[sample_global_idx]);
                errors = errors + 1;
                crop_errors = crop_errors + 1;
            end
            m_axis_ready <= 1'b0;
        end
    endtask

    initial begin
        axi_reset_n = 1'b0;
        crop_type = {CROP_SEL_W{1'b0}};
        s_axis_valid = 1'b0;
        s_axis_data = {DATA_W{1'b0}};
        m_axis_ready = 1'b0;
        errors = 0;
        correct = 0;

        repeat (5) @(posedge axi_clk);
        axi_reset_n = 1'b1;

        for (crop_idx = 0; crop_idx < NUM_CROPS; crop_idx = crop_idx + 1) begin
            crop_errors = 0;
            crop_correct = 0;
            crop_type = crop_idx[CROP_SEL_W-1:0];
            $display("Starting crop %0d with %0d samples", crop_idx, crop_sample_count_mem[crop_idx]);

            for (sample_idx = 0; sample_idx < crop_sample_count_mem[crop_idx]; sample_idx = sample_idx + 1) begin
                global_idx = crop_sample_offset_mem[crop_idx] + sample_idx;
                send_sample(global_idx);
                receive_and_check(crop_idx, sample_idx, global_idx);
            end

            $display("Finished crop %0d | correct = %0d | incorrect = %0d", crop_idx, crop_correct, crop_errors);
        end

        $display("Simulation finished.");
        $display("Correct predictions: %0d", correct);
        $display("Incorrect predictions: %0d", errors);
        $finish;
    end
endmodule