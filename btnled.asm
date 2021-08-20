;portc ye bagl?  butonlara kars?l?k gelen portbeye bagl? ledleri yak
    LIST P=16F877A
    include "P16F877A.inc"
    org 0x00
    BSF STATUS,5
    MOVLW H'FF'
    MOVWF TRISC
    CLRF TRISB
    BCF STATUS,5
    ;ANA PROGRAM
    SONSUZ
    MOVFW PORTC
    MOVWF  PORTB
    GOTO SONSUZ
    END


