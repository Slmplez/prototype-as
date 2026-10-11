"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x200265c0; bytecode file offset 0x923928"
!SGCgMessage class methodsFor: 'recovered'!
defaultKey
    ^'All'
! !

"ASDBase.ic method 0x2002ab54; bytecode file offset 0x934580"
!SGCgMessage class methodsFor: 'recovered'!
create
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) new.
    recoveredValue1 := (recoveredValue0) initialize.
    ^recoveredValue1
! !

"ASDBase.ic method 0x200dcd64; bytecode file offset 0x9d9628"
!SGCgMessage class methodsFor: 'recovered'!
createText: recoveredArg1 source: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := (self) create.
    recoveredValue1 := recoveredValue0.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (recoveredValue2) trimSeparators.
    (recoveredValue1) text: (recoveredValue3).
    recoveredValue4 := recoveredArg2.
    recoveredValue5 := (recoveredValue0) source: (recoveredValue4).
    ^recoveredValue5
! !

"ASDBase.ic method 0x2013604c; bytecode file offset 0xa32914"
!SGCgMessage class methodsFor: 'recovered'!
createText: recoveredArg1 source: recoveredArg2 id: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := (self) create.
    recoveredValue1 := recoveredValue0.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (recoveredValue2) trimSeparators.
    (recoveredValue1) text: (recoveredValue3).
    recoveredValue4 := recoveredValue0.
    recoveredValue5 := recoveredArg2.
    (recoveredValue4) source: (recoveredValue5).
    recoveredValue6 := recoveredArg3.
    recoveredValue7 := (recoveredValue0) id: (recoveredValue6).
    ^recoveredValue7
! !

