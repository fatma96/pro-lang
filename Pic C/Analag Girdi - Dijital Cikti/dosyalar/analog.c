#include <16F877.h>
#fuses HS,NOWDT,NOPROTECT,NOLVP
#use delay(clock=4000000)
int t=0;


void main( )
{ 
   byte X;
   setup_ccp1(CCP_PWM); // CCP1 PWM moduna ayarlan�yor
   setup_timer_2(T2_DIV_BY_16, 255, 16); // Analog sinyali 255 par�aya b�l�yor.
   setup_port_a(ALL_ANALOG); // A portunun hepsini analog girdi yapt�k
   setup_adc(adc_clock_internal); 
   
   
   while( TRUE )
   {
   
   set_adc_channel( 0 ); // Pic'in RA0 baca��ndan analog giri� al
   delay_us(20);
   x=read_adc(); // Ald���n giri�i x de�i�kenine ata
   
   if (x>128)        //  E�er 255 par�aya b�l�nen analog sinyal 128 den b�y�kse b0 numaral� pini dijital 1 yap          
   output_high(pin_d0);
   
   else              // De�ilse dijital 0 yap
   output_low(pin_d0);
   
   
   }
}
