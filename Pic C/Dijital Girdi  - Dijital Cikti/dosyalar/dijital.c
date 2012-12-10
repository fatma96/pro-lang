#include <16f877.h>

#fuses XT, NOWDT, NOPROTECT, NOBROWNOUT, NOLVP, NOPUT, NOWRT, NODEBUG, NOCPD


#use fast_io(a) // port y�nlendirme komutlar� A portu i�in ge�erli
#use fast_io(b) // port y�nlendirme komutlar� B portu i�in ge�erli

int1 x;
  
void main()
  {
  setup_psp(PSP_DISABLED);   // PSP birimi devre d���
  setup_timer_1(T1_DISABLED);   // T1 zamanlay�c�s� devre d���
  setup_timer_2(T2_DISABLED,0,1);   // T2 zamanlay�c�s� devre d���
  setup_adc_ports(NO_ANALOGS);    // ANALOG giri� yok
  setup_adc(ADC_OFF);    // ADC birimi devre d���
  setup_CCP1(CCP_OFF);   // CCP1 birimi devre d���
  setup_CCP2(CCP_OFF);   // // CCP2 birimi devre d���
  
  set_tris_a(0b00000001); // RA0 ucu giri� olarak ayarland�.
  set_tris_b(0x00);   // RB0 portu t�m�yle ��k�� olarak ayarland�.
  
  basla:
  
  x = input(pin_a0);      // RA0 giri�i okunuyor ve c de�i�kenine aktar�l�yor.
  output_bit(pin_b0,x);   //   x de�i�keninin de�eri RB0 pini ��k���na aktar�l�yor.
 
  goto basla;
  
  }
