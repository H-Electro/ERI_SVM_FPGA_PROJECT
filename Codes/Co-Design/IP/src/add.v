`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/04/2024 05:46:35 PM
// Design Name: 
// Module Name: add
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module add(
    input    axi_clk,
    input    axi_reset_n,
    //AXI4-S slave intf
    input    s_axis_valid,
    input [7:0] s_axis_data,
    output   s_axis_ready,
    //AXI4-S master intf
    output reg  m_axis_valid,
    output reg [7:0] m_axis_data,
    input    m_axis_ready
    );
    
 
    
    assign s_axis_ready = m_axis_ready;
    
    always @(posedge axi_clk)
    begin
       if(s_axis_valid & s_axis_ready)
       begin
              m_axis_data <= 1 + s_axis_data;
       end
    end
    
    always @(posedge axi_clk)
    begin
        m_axis_valid <= s_axis_valid;
    end
    
endmodule
