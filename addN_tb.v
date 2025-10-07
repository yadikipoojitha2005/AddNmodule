module tb;
parameter M=16;
reg [M-1:0] A,B;
wire [M:0] S;
addN #(.N(M)) KABALI (S,A,B);
initial begin
repeat (20)
begin
A=$random;
B=$random;
#1;
$display (A,,B,,S);
end
end
endmodule
