"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"sci.ic method 0x20000bf4; bytecode file offset 0x13c7c"
!SciSocket class methodsFor: 'recovered'!
new
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := super new.
    recoveredValue1 := (recoveredValue0) initialize.
    ^recoveredValue1
! !

"sci.ic method 0x2000166c; bytecode file offset 0x14710"
!SciSocket class methodsFor: 'recovered'!
newDatagramSocket
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := AFINET.
    recoveredValue1 := SOCKDGRAM.
    recoveredValue2 := IP.
    recoveredValue3 := (self) socket: (recoveredValue0) type: (recoveredValue1) protocol: (recoveredValue2).
    ^recoveredValue3
! !

"sci.ic method 0x20001684; bytecode file offset 0x14710"
!SciSocket class methodsFor: 'recovered'!
newStreamSocket
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := AFINET.
    recoveredValue1 := SOCKSTREAM.
    recoveredValue2 := IP.
    recoveredValue3 := (self) socket: (recoveredValue0) type: (recoveredValue1) protocol: (recoveredValue2).
    ^recoveredValue3
! !

