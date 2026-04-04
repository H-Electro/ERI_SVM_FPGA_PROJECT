`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/07/2024 10:07:36 AM
// Design Name: 
// Module Name: add_tb
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


module add_tb( );


localparam period=20;
 
reg axi_clk,axi_reset_n,s_axis_valid;
reg [7:0]   s_axis_data;
wire [7:0]  m_axis_data;
wire m_axis_valid,s_axis_ready;



add dut(
     .axi_clk(axi_clk),
     .axi_reset_n(axi_reset_n),
     .s_axis_valid(s_axis_valid),
     .s_axis_data(s_axis_data),
     .s_axis_ready(s_axis_ready),
     .m_axis_valid(m_axis_valid),
     .m_axis_data(m_axis_data),
     .m_axis_ready(1'b1)
    );
 

always 
begin
    axi_clk = 1'b1; #10; 
    axi_clk = 1'b0; #10; 
end

integer file1;

integer i= 0;


integer  in_data_b,out_data_b,k;
 
initial
begin
    out_data_b = $fopen("D:/1_course/tutorials/tutorial_2/out_data.txt","w");
    in_data_b  = $fopen("D:/1_course/tutorials/tutorial_2/in_data.txt","w"); // open file
 end


   
initial 
begin 

	axi_reset_n = 1;   // change from 0 to 1
	s_axis_valid = 0;
	#(10 * period);
	axi_reset_n = 0; // change from 1 to 0
	#(10 * period);
	axi_reset_n = 1; // change from 0 to 1
	#(10 * period);
	 
    file1 =$fopen("D:/1_course/tutorials/tutorial_2/in_data.bin","rb");       
                
        for ( i = 0 ; i < 32 ; i = i + 1) begin 
            @(posedge axi_clk); 
             s_axis_valid = 1;
             k = $fscanf(file1, "%c", s_axis_data);///read the input data      
             $fwrite(in_data_b, "%d\t", s_axis_data); 
                                    
         end 
         $fclose(in_data_b);
         $fclose(file1);
         
         @(posedge axi_clk);
         s_axis_valid = 0;
           
            
  
         $finish;
    
end
 
endmodule

