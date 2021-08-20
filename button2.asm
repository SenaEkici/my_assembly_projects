;portbn?n 1. bitine bagl? butona portcnin 1. bitine bagl? ledi yakan program
    LIST P=16F877A
    include "P16F877A.inc"
    org 0x00
    ;AYARLAMALAR
     CLRF PORTC
    BSF STATUS,5
    CLRF TRISC
    MOVLW H'FF'
    MOVWF TRISB
    BCF STATUS,5
    
    ;ANA PRO
    
    TEST
        BTFSC PORTB,1
        GOTO TEST
    
        BSF PORTC,1
    SONSUZ
          GOTO SONSUZ
    END


