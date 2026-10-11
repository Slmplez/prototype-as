"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"winsys.ic method 0x20004d90; bytecode file offset 0x80f58"
!CgID class methodsFor: 'recovered'!
display: recoveredArg1 serverResource: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) display: (recoveredValue0).
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := (recoveredValue1) serverResource: (recoveredValue2).
    ^recoveredValue3
! !

"winsys.ic method 0x2000559c; bytecode file offset 0x81844"
!CgID class methodsFor: 'recovered'!
new
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := super new.
    recoveredValue1 := (recoveredValue0) initialize.
    ^recoveredValue1
! !

"winsys.ic method 0x20009804; bytecode file offset 0x859d4"
!CgID class methodsFor: 'recovered'!
display: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := (self) new.
    recoveredValue1 := recoveredValue0.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (recoveredValue2) server.
    (recoveredValue1) server: (recoveredValue3).
    recoveredValue4 := recoveredArg1.
    recoveredValue5 := (recoveredValue0) display: (recoveredValue4).
    ^recoveredValue5
! !

"winsys.ic method 0x200111f4; bytecode file offset 0x8d3cc"
!CgID class methodsFor: 'recovered'!
screen: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) server.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := (self) new.
    recoveredValue3 := recoveredValue2.
    recoveredValue4 := recoveredLocal1.
    (recoveredValue3) server: (recoveredValue4).
    recoveredValue5 := recoveredValue2.
    recoveredValue6 := recoveredArg1.
    recoveredValue7 := (recoveredValue6) display.
    (recoveredValue5) display: (recoveredValue7).
    recoveredValue8 := recoveredArg1.
    recoveredValue9 := (recoveredValue2) screen: (recoveredValue8).
    ^recoveredValue9
! !

