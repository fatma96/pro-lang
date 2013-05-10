module tff ( t , q , ck , rn ) ;

input t, ck, rn;
output q ;

reg pst ;
wire nst ;

// sonraki durumu input ve �imdiki durum ile tan�mla
assign nst = t ? ~ pst : pst ;

// ��kt�y� input ve �imdiki durum cinsinden tan�mla
assign q = pst ;

// haf�zay� tan�mla (sonraki durum ve �imdiki durum aras�ndaki ge�i�)
always @ ( posedge ck or negedge rn )
if ( !rn ) pst <= 0 ;
else pst <= nst ;

endmodule
