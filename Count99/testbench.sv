`timescale 1ns/1ps

module testbench;
  
  reg clk,rst;
  wire [3:0]q;
  
  counter UUT(clk,rst,q); // instantiation
  
  initial begin
    clk=0;
    rst=0;
    #10 rst=1;
    #10 rst=0;
    
    #1 $monitor(" q = %d ",q);
    #500 $stop;
  end
  
  initial begin
    $dumpfile("dump.vcd");  // waveform generation
    $dumpvars(1,testbench);
  end
  
endmodule
