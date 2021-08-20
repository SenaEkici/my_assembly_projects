;H'25C8' ILE H'1F69' SAYISINI TOPLA VE SONUCU ALT BIT TOPLAMI PORTB DE UST B?T TOPLAMINI ISE PORTC DE GOSTEREN PRO.
    LIST P=16F877A
    include "P16F877A.inc"
    ;SAYILARI TOPLAMAK ICIN GEREKLI OLAN REGISTERLAR TANIMLANIR
    XL EQU H'0C'
    XH EQU H'0D'
    YL EQU H'0E'
    YH EQU H'0F'
 ;SAYILAR REGISTERLARA ATANIR.
 ORG 0X00
 BSF STATUS,5
    CLRF TRISC
    BCF STATUS,5
    MOVLW H'C8'
 MOVWF XL
 MOVLW H'25'
 MOVWF XH
  MOVLW H'69'
 MOVWF YL
 MOVLW H'1F'
 MOVWF YH

 ALTBIT
 ;XL ILE YL YITOPLA SONUCU YL YE YUKLE.
 MOVFW XL
 ADDWF YL,F
 BTFSS STATUS,0;ELDE VARMI CARRY FLAG 1 MI
 GOTO SONUC;ELDE YOKSA UST BIT TOPLAMAYA GEC
 INCF YH;EGER ELDE VARSA ELDEYI Y SAYISINA EKLE
 USTBIT
 ;UST BITLERI TOPLA SONUCU X SAYISINA YUKLE
 MOVFW YH
 ADDWF XH,F
 MOVFW XH
 MOVWF PORTC

SONUC
 MOVFW YL
 MOVWF PORTB
 GOTO USTBIT
 
 
 END

