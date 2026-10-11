"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20072980; bytecode file offset 0x96f23c"
!SGPMIScanner class methodsFor: 'recovered'!
pmiCharacter
    ^$@
! !

"ASDBase.ic method 0x20088ef4; bytecode file offset 0x9857b0"
!SGPMIScanner class methodsFor: 'recovered'!
endOfLineCharacter
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := Character.
    recoveredValue1 := (recoveredValue0) value: (13).
    ^recoveredValue1
! !

"ASDBase.ic method 0x200dab18; bytecode file offset 0x9d73e0"
!SGPMIScanner class methodsFor: 'recovered'!
createOn: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := (self) new.
    recoveredValue1 := (recoveredValue0) initialize.
    recoveredValue2 := ReadStream.
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := (recoveredValue2) on: (recoveredValue3).
    recoveredValue5 := (recoveredValue1) code: (recoveredValue4).
    ^recoveredValue5
! !

