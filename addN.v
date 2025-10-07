module addN (S,A,B);
parameter N=16;
input [N-1:0] A,B;
output [N:0] S;
wire [N-1 :0] c;

genvar j;
for (j=0;j<=N-1;j=j+1)
begin
if(j==0) fa G0 (c[0],S[0],A[0],B[0],1'b0);
else
if (j==N-1) fa G3 (S[N],S[N-1],A[N-1],B[N-1],c[N-2]);

else fa Gj (c[j],S[j],A[j],B[j],c[j-1]);
end
endmodule
