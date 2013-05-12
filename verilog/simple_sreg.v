module simple_sreg ( inp , out , ck , rn ) ;

parameter N = 4;

input inp, ck, rn ;
output [N-1:0] out ;
reg [N-1:0] out ;
wire [N-1:0] nst ;

// her zaman girdiyi k�t���n msbitini (sol) bir bit kayd�r
assign nst = { inp , out[N-1:1] } ; // {} = concatenation
// haf�zay� tan�mla (sonraki durum ile �imdiki durum aras�ndaki ileti�im)

always @ ( posedge ck or negedge rn )
if ( !rn ) out <= 0 ;
else out <= nst ;

endmodule

