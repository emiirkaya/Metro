`timescale 1ns / 1ps



module segmento(
input [10:0] Y,
output reg [6:0] disp
    );
always@(Y)begin
case(Y)
0: disp = 7'b0111111;// 
1: disp = 7'b0001000;
2: disp = 7'b0000011; 

3: disp = 7'b0000011;
4: disp = 7'b0001011;
5: disp = 7'b1000110; 
6: disp = 7'b0000110;

7: disp = 7'b0010010;
8: disp = 7'b0010010;

9: disp = 7'b0010000;
10: disp = 7'b0001100;
11: disp = 7'b1100001;

12: disp = 7'b0001101;
13: disp = 7'b0100001;
14: disp = 7'b0000011;

15: disp = 7'b0111111;
16: disp = 7'b0000111;
17: disp = 7'b0101011;
18: disp = 7'b0101011;













endcase


end





endmodule
