module halfadder(A,B,Sum,Carry);
  
  input A,B;
  output Sum,Carry;
  
  wire A,B;
  reg Sum,Carry;
  
  always@(A,B)
    begin
      case({A,B})
        2'b00: Sum=0; carry=0;
        2'b01: Sum=1; carry=0;
        2'b10: Sum=1; carry=0;
        2'b11: Sum=0; carry=1;
        default: Sum=0; Carry=0;
      endcase
      $monitor(" Sum=%d , Carry=%d ",Sum,Carry);
    end
 
endmodule
