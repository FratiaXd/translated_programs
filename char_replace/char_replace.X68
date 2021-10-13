*-----------------------------------------------------------
* Title      : char replace
* Written by :
* Date       :
* Description:
*-----------------------------------------------------------
    ORG    $1000
START:                  ; first instruction of program

* Put program code here
    
        LEA     test,A0     ; move char address to A0
while:  tst.b   (A0)    ; loop starts
        BEQ     finish      ; loop ends
        MOVE.B  (A0),D0     ; copy char
        CMP.B   #$20,D0     ; compare
        BNE     loop        ; jump to loop if not equal
        ADD.B   #$3F,D0     ; add if equal
loop:   MOVE.B  D0,(A0)+    ; replace char and post-increment A0
        bra     while       ; jump to the loop start
finish:
        TRAP    #15             ; halt simulator

* Put variables and constants here
test:   dc.b 'This is a test string',0

    END    START        ; last line of source

*~Font name~Courier New~
*~Font size~10~
*~Tab type~1~
*~Tab size~4~
