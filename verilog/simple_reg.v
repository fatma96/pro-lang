module simple_reg ( load , inp , out , ck , rn ) ;

parameter N = 4;

input load, ck, rn ;
input [N-1:0] inp ;
output [N-1:0] out ;

reg [N-1:0] out ; // �imdiki durum her zaman ��kt�ya e�it olur
wire [N-1:0] nst ;

// load=1 ise load k�t���n� inp ile y�kle. Aksi halde bir�sey yapma
assign nst = load ? inp : out ;
// haf�zay� tan�mla (sonraki durum ile ��kt�)
always @ ( posedge ck or negedge rn )
if ( !rn ) out <= 0 ;
else out <= nst ;
endmodule


