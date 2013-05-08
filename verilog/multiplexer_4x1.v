module mux_4x1 (A, B, C, D, S, Y);

input A , B , C , D ;

input [1:0] S;

assign A = 1'b0;
assign B = 1'b1;
assign C = 1'b0;
assign D = 1'b1;

assign S = 2'b10; // c'yi se�iyoruz.

output Y ;

assign Y = S[1] ? ( S[0] ? D : C ) : ( S[0] ? B : A ) ;

endmodule

