module loadrlreg ( load , dir , pinp , linp , rinp , out , ck , rn ) ;

parameter N = 4;

input load , dir, ck, rn ;
input [N-1:0] pinp ; // load i�in paralel girdi
input linp , rinp ; // girdilerin 1-bit sa�a sla kayd�r�lm�� hali
output [N-1:0] out ;

reg [N-1:0] out ;
wire [N-1:0] nst ;

// k�t��� load=1 iken pinp ile y�kle. Aksi halde dir=1 ise sa�a kayd�r, aksi haldesola kayd�r.
assign nst = load ? pinp : (
dir ? { linp , out[N-1:1] } :
{ out[N-2:0] , rinp } ) ;
// haf�zay� tan�mla (sonraki durum ile �imdiki durum aras�ndaki ileti�im)

always @ ( posedge ck or negedge rn )
if ( !rn ) out <= 0 ;
else out <= nst ;
endmodule
