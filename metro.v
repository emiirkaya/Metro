`timescale 1ns / 1ps
module metro(
input clk,
input sw1,
input sw2,
input sw3,
input sw4,
input sw5,
input sw6,
input swyon1,
input swyon2,
output AB1,
output AB2,
output AB3,
output AB4,
output AB5,
output AB6,
output reg CD1,
output reg CD2,
output reg CD3,
output reg CD4,
output reg CD5,
output reg CD6,
output reg CD7,
output reg CD8,
output reg CD9,
output reg CD10,
output [6:0] seg,
output reg [3:0] an 


    );

reg act5;
reg yonel;
wire yon;
reg [20:0]sayac1;
reg [31:0]sayac2;
reg [30:0]sayac3;
reg [31:0]sayac4;
reg clk1; 
reg clk2;
reg activate1;
reg activate2;
reg activate3;
reg activate4;
reg activate5;
reg activate6;
reg [6:0] one,two,three,four;
reg [1:0] count;
reg [2:0]scroll;
reg [10:0] D;
initial begin
sayac1 = 0;
sayac2 = 0;
sayac3 = 0;
sayac4 = 0;
clk1 = 0;
CD1 = 0;
CD2 = 0;
CD3 = 0;
CD4 = 0;
CD5 = 0;
CD6 = 0;
CD7 = 0;
CD8 = 0;
CD9 = 0;
CD10 = 0;
activate1 = 0;
activate2 = 0;
activate3 = 0;
activate4 = 0;
activate5 = 0;
activate6 = 0;
yonel = 1;
one = 0;
two = 0;
three = 0;
four = 0;
scroll =0;
clk2 = 0;
count = 0;

end
assign AB1 = (activate1 || sw1) & ~CD1 & ~CD2 & ~CD3 & ~CD4 & ~CD5 & ~CD6 & ~CD7 & ~CD8 & ~CD9 & ~CD10 & ~activate2 & ~activate3 & ~activate4 & ~activate5 & ~activate6;
assign AB2 = (activate2 || (sw2 & (swyon1 || swyon2))) & ~CD1 & ~CD2 & ~CD3 & ~CD4 & ~CD5 & ~CD6 & ~CD7 & ~CD8 & ~CD9 & ~CD10 & ~activate1 & ~activate3 & ~activate4 & ~activate5 & ~activate6;
assign AB3 = (activate3 || (sw3 & (swyon1 || swyon2))) & ~CD1 & ~CD2 & ~CD3 & ~CD4 & ~CD5 & ~CD6 & ~CD7 & ~CD8 & ~CD9 & ~CD10 & ~activate2 & ~activate1 & ~activate4 & ~activate5 & ~activate6;
assign AB4 = (activate4 || (sw4 & (swyon1 || swyon2))) & ~CD1 & ~CD2 & ~CD3 & ~CD4 & ~CD5 & ~CD6 & ~CD7 & ~CD8 & ~CD9 & ~CD10 & ~activate2 & ~activate3 & ~activate1 & ~activate5 & ~activate6;
assign AB5 = (activate5 || (sw5 & (swyon1 || swyon2))) & ~CD1 & ~CD2 & ~CD3 & ~CD4 & ~CD5 & ~CD6 & ~CD7 & ~CD8 & ~CD9 & ~CD10 & ~activate2 & ~activate3 & ~activate1 & ~activate4 & ~activate6;
assign AB6 = (activate6 || sw6) & ~CD1 & ~CD2 & ~CD3 & ~CD4 & ~CD5 & ~CD6 & ~CD7 & ~CD8 & ~CD9 & ~CD10 & ~activate2 & ~activate3 & ~activate4 & ~activate5 & ~activate1;
assign yon = yonel & (sw6 || (~swyon1 & ~sw1));
always@(posedge clk)begin
    if (sayac2 == 10**8/2)begin
    sayac2 = 0;
    clk1 = ~clk1;
    end
    sayac2 = sayac2 + 1;
    if (sayac4 == 10**6/2)begin
    sayac4 = 0;
    clk2    = ~clk2;
    end
    sayac4 = sayac4 + 1;
end

segmento HH(D,seg);

always@(posedge clk1)begin
    if (scroll == 4)begin
        scroll = 1;
    end
    else begin
        scroll = scroll + 1;
    end
end
always@(posedge clk1)begin
    case(scroll)
        1:begin
        if (AB6)begin
        four = 0;
        three = 1;
        two = 2;
        one = 0;
        end
        if (AB5)begin
        four = 3;
        three = 4;
        two = 5;
        one = 6;
        end
        if (AB4)begin
        four = 0;
        three = 7;
        two = 8;
        one = 0;
        end
        if (AB3)begin
        four = 0;
        three = 9;
        two = 10;
        one = 11;
        end
        if (AB2)begin
        four = 0;
        three = 12;
        two = 13;
        one = 14;
        end
        if (AB1)begin
        four = 15;
        three = 16;
        two = 17;
        one = 18;
        end
        end
        2:begin
        if (AB6)begin
        four = 1;
        three = 2;
        two = 0;
        one = 0;
        end
        if (AB5)begin
        four = 4;
        three = 5;
        two = 6;
        one = 3;
        end
        if (AB4)begin
        four = 7;
        three = 8;
        two = 0;
        one = 0;
        end
        if (AB3)begin
        four = 9;
        three = 10;
        two = 11;
        one = 0;
        end
        if (AB2)begin
        four = 12;
        three = 13;
        two = 14;
        one = 0;
        end
        if (AB1)begin
        four = 16;
        three = 17;
        two = 18;
        one = 15;
        end
        end
        3:begin
        if (AB6)begin
        four = 2;
        three = 0;
        two = 0;
        one = 1;
        end
        if (AB5)begin
        four = 5;
        three = 6;
        two = 3;
        one = 4;
        end
        if (AB4)begin
        four = 8;
        three = 0;
        two = 0;
        one = 7;
        end
        if (AB3)begin
        four = 10;
        three = 11;
        two = 0;
        one = 9;
        end
        if (AB2)begin
        four = 13;
        three = 14;
        two = 0;
        one = 12;
        end
        if (AB1)begin
        four = 17;
        three = 18;
        two = 15;
        one = 16;
        end
        end
        4:begin
        if (AB6)begin
        four = 0;
        three = 0;
        two = 1;
        one = 2;
        end
        if (AB5)begin
        four = 6;
        three = 3;
        two = 4;
        one = 5;
        end
        if (AB4)begin
        four = 0;
        three = 0;
        two = 7;
        one = 8;
        end
        if (AB3)begin
        four = 11;
        three = 0;
        two = 9;
        one = 10;
        end
        if (AB2)begin
        four = 14;
        three = 0;
        two = 12;
        one = 13;
        end
        if (AB1)begin
        four = 18;
        three = 15;
        two = 16;
        one = 17;
        end
        
        end
    
    
    
    
    
    endcase
end
always@(posedge clk2)begin
    count = count + 1;
    case(count)
    2'b00: begin
    D = one;
    if(AB1 || AB2 || AB3 || AB4 || AB5 || AB6)begin an = 4'b1110;
    end
    else begin
    an = 4'b1111;
    end
    end
    2'b01: begin
    D = two;
    if(AB1 || AB2 || AB3 || AB4 || AB5 || AB6)begin an = 4'b1101;
    end
    else begin
    an = 4'b1111;
    end  
    end
    2'b10: begin
    D = three;
    if(AB1 || AB2 || AB3 || AB4 || AB5 || AB6)begin an = 4'b1011;
    end
    else begin
    an = 4'b1111;
    end
    end
    2'b11: begin
    D = four;
   if(AB1 || AB2 || AB3 || AB4 || AB5 || AB6)begin an = 4'b0111;
    end
    else begin
    an = 4'b1111;
    end
    end
    endcase
    
end
always@(posedge clk1)begin
if (sayac3 == 4 )begin
    sayac3 = 0;
    if (AB1)begin
    if (sayac1 == 5)
    begin CD1 = 1;
    activate1 = 0;  
    yonel = 0;
    sayac1 = 0;
    
    end
    else begin 
    sayac1 = sayac1 + 1;   
    end   
    end    
    else if (CD1 & yon)begin
    CD1 = 0;
    activate1 = 1;
    
           
    end
    else if (CD1 & ~yon)begin
    CD2 = 1;
    CD1 = 0;           
    end
    else if (CD2 & yon)begin
    CD2 = 0;
    CD1 = 1;       
    end
    else if (CD2 & ~yon)begin
    CD2 = 0;
    activate2 = 1;
      
    end
    else if (AB2 & yon)begin
    if (sayac1 == 5) begin
    CD2 = 1;
    activate2 = 0; 
    sayac1 = 0;      
    end
    else begin 
        sayac1 = sayac1 + 1;
    end
    end
    else if (AB2 & ~yon)begin
    if (sayac1 == 5) begin
    CD3 = 1;
    activate2 = 0;
    sayac1 = 0;           
    end
    else begin 
        sayac1 = sayac1 + 1;
    end
    end
    else if (CD3 & yon)begin
    CD3 = 0;
    activate2 = 1; 
      
    end
    else if (CD3 & ~yon)begin
    CD3 = 0;
    CD4 = 1;       
    end
    else if (CD4 & yon)begin
    CD4 = 0;
    CD3 = 1;       
    end
    else if (CD4 & ~yon)begin
    CD4 = 0;
    activate3 = 1; 
      
    end
    else if (AB3 & yon)begin
    if (sayac1 == 5)begin
    CD4 = 1;
    activate3 = 0;
    sayac1 = 0;           
    end
    else begin
    sayac1 = sayac1 + 1;
    end
    end
    else if (AB3 & ~yon)begin
    if (sayac1 == 5)begin
    CD5 = 1;
    activate3 = 0;
    sayac1 = 0;           
    end
    else begin
        sayac1 = sayac1 + 1;
    end
    end
    else if (CD5 & yon)begin
    CD5 = 0;
    activate3 = 1; 
      
    end
    else if (CD5 & ~yon)begin
    CD5 = 0;
    CD6 = 1;       
    end
    else if (CD6 & yon)begin
    CD6 = 0;
    CD5 = 1;       
    end
    else if (CD6 & ~yon)begin
    CD6 = 0;
    activate4 = 1;  
    
    end
    else if (AB4 & yon)begin
    if (sayac1 == 5)begin
    CD6 = 1;
    activate4 = 0;
    sayac1 = 0;           
    end
    else begin
        sayac1 = sayac1 + 1;
    end
    end
    else if (AB4 & ~yon)begin
    if (sayac1 == 5)begin
    CD7 = 1;
    activate4 = 0;
    sayac1 = 0;           
    end
    else begin
        sayac1 = sayac1 + 1;
    end
    end
    else if (CD7 & yon)begin
    CD7 = 0;
    activate4 = 1;  
  
    end
    else if (CD7 & ~yon)begin
    CD7 = 0;
    CD8 = 1;       
    end
    else if (CD8 & yon)begin
    CD8 = 0;
    CD7 = 1;       
    end
    else if (CD8 & ~yon)begin
    CD8 = 0;
    activate5 = 1;
    

    
    end
    else if (AB5 & yon)begin
    if (sayac1 == 5)begin
    CD8 = 1;
    activate5 = 0;
    sayac1 = 0;      
    
    end
    else begin
        sayac1 = sayac1 + 1;
    end
    end
    else if (AB5 & ~yon)begin
    if (sayac1 == 5)begin
    CD9 = 1;
    activate5 = 0;
    sayac1 = 0;     
    
    end
    else begin
        sayac1 = sayac1 + 1;
    end
    end
    else if (CD9 & yon)begin
    CD9 = 0;
    activate5 = 1; 
    act5 = 1;      
    #50000000;
    end
    else if (CD9 & ~yon)begin
    CD9 = 0;
    CD10 = 1;       
    end
    else if (CD10 & yon)begin
    CD10 = 0;
    CD9 = 1;       
    end
    else if (CD10 & ~yon)begin
    CD10 = 0;
    activate6 = 1;  
  
    end
    else if (AB6)begin
    if (sayac1 == 5)begin
    CD10 = 1;
    activate6 = 0;
    sayac1 = 0;     
    yonel = 1;      
    end
    else begin 
        sayac1 = sayac1 + 1;
    end
    end

    
    
    end
    else begin
        sayac3 = sayac3 + 1 ;
    end
    end


endmodule