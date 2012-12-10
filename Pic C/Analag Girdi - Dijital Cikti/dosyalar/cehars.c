#include <16F877.h>
#fuses HS,NOWDT,NOPROTECT,NOLVP
#use delay(clock=4000000)
int t=0;


void main( )
{ 
   byte X;
   setup_ccp1(CCP_PWM); // CCP1 PWM moduna ayarlanıyor
   setup_timer_2(T2_DIV_BY_16, 255, 16); // Periyot (1/clock)*4*t2div*(period+1)
   setup_port_a(ALL_ANALOG); // Fosc=20000000 ve periyot katsayısı=127
   setup_adc(adc_clock_internal); // (1/20000000)*4*16*128= 409,6 us or 2,44 khz
   
   
   while( TRUE )
   {
   
   set_adc_channel( 0 );
   delay_us(20);
   x=read_adc();
   
 
   
   if (x>128)
   output_high(pin_d0);
   
   else 
   output_low(pin_d0);
   
   
   }
}
