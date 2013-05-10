module loadupdowncount ( load , val , up , cnt , ck , rn ) ;

parameter N = 4;

input load , up, ck, rn;
input [N-1:0] val ;
output [N-1:0] cnt ;
reg [N-1:0] pst ;
wire [N-1:0] nst ;

//load=1 iken sayaca val y�kle. Aksi halde sayac� art�r veya azalt up=1/0 durumuna g�re)
assign nst = load ? val : ( up ? ( pst + 1 ) : ( pst - 1 ) ) ;

// ��kt� �imdiki duruma e�it olur
assign cnt = pst ;

// haf�zay� tan�mnla ( sonraki durum ve �imdiki durum aras�ndaki ge�i�)
always @ ( posedge ck or negedge rn )
if ( !rn ) pst <= 0 ;
else pst <= nst ;
endmodule