module d_ff ( D, CK, RN, Q);
 
input D , CK , RN ;
output Q ;
reg Q ;

always @ ( posedge CK or negedge RN )
if ( !RN ) Q <= 0 ;
else Q <= D ;

// CK sinyali yukselen kenardayken veya RN alcalan kenardayken bloktaki kodlar� isle
// CK yukselen kenari sayesinde blo�a girdiyse eger if dongusune tak�lmadan D neyse cikisa onu aktaracak
// ama RN alcalan kenari sayesinde girdiyse donguye if dongusundeki kod parcasi islenecek ve cikisa sifir
// verilecek.

endmodule