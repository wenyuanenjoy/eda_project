`timescale 1ns/1ns
`include "TIMER.v"

module TIMER_tb;
reg clk;
reg rst;
reg [2:0] time_min;
reg [5:0] time_sec;
reg start;
wire [2:0] minute;
wire [5:0] second;
wire time_up;

TIMER dut(   
    .SYSCLK(clk),
	.RST_B(rst),
	.TIME_MIN(time_min),
	.TIME_SEC(time_sec),
	.START(start),
	.MINUTE(minute),
	.SECOND(second),
	.TIME_UP(time_up)
    );
    
always #5 clk=~clk;

initial
begin
    $display("test begin");
    clk=1;
    rst=0;
    time_min=3'd3;
    time_sec=6'd48;
    #10 rst=1;
    #10 start=1;
    #10 start=0;

end
    
initial 
fork
    #2500 time_min=0;
    #2500 time_sec=0;
    #2520 rst=0;
    #2530 rst=1;
    #2540 start=1;
    #2550 start=0;
    #3000 $finish;

join

endmodule