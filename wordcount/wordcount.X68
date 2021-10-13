*-----------------------------------------------------------
* Title      :
* Written by :
* Date       :
* Description:
*-----------------------------------------------------------
    ORG    $1000
START:                  ; first instruction of program

* Put program code here
                ;loads the adresess of values into A0,A1,A2,
        LEA     test,A0             ;in c++: i is A0 
        LEA     words,A1            ;in c++: words = 0 
        LEA     lastspace,A2        ;in c++: last_space = true   
        MOVE.B  (A1),D1             ;copies words value into D1
        ADD.B   #1,D1               ;to start count from 0 adds 1 to words
        MOVE.B  (A2),D2             ;copies last_space value into D2
loop:   tst.b   (A0)                ;in c++: while( test_string[i]!=0)
        BEQ     finish
        MOVE.B  (A0),D0
        CMP.B   #0,D2               ;in c++: if(!last_space         
        BNE     if
        CMP.B   #$20,D0             ;in c++: && test_string[i]==' ')
        BNE     if
        ADD.B   #1,D1               ;in c++: words=words+1
if:     CMP.B   #$20,D0             ;in c++: if(test_string[i]==' ')
        BNE     else
        MOVE.B  #1,D2               ;in c++: last_space = true
        BRA     update
else:   MOVE.B  #0,D2               ;in c++: last_space = false
update: MOVE.B  D0,(A0)+            ;in c++: i++
        MOVE.W  D1,D3               ;load words result into D3
        BRA     loop                     

finish:     
        TRAP    #15           ; halt simulator

* Put variables and constants here
test:       dc.b 'This is a  test  string longer now ',0
lastspace:  dc.b  1         ;true = 1
words:      ds.b  0    

    END    START        ; last line of source




*~Font name~Courier New~
*~Font size~10~
*~Tab type~1~
*~Tab size~4~
