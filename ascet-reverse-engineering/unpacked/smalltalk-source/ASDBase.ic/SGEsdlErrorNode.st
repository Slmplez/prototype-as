"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x200145ec; bytecode file offset 0x912098"
!SGEsdlErrorNode methodsFor: 'recovered'!
nodeColor
    | recoveredValue0 |
    recoveredValue0 := ErrorNodeColor.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006b178; bytecode file offset 0x96873c"
!SGEsdlErrorNode methodsFor: 'recovered'!
followUpCode
    | recoveredValue0 |
    recoveredValue0 := followUpCode.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200c2728; bytecode file offset 0x9bf474"
!SGEsdlErrorNode methodsFor: 'recovered'!
followUpCode: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    followUpCode := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200e04e4; bytecode file offset 0x9dcda8"
!SGEsdlErrorNode methodsFor: 'recovered'!
errorPositionPoint
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := Point.
    recoveredValue1 := (self) sourceStart.
    recoveredValue2 := (recoveredValue1) + (-1).
    recoveredValue3 := (self) sourceEnd.
    recoveredValue4 := (recoveredValue0) x: (recoveredValue2) y: (recoveredValue3).
    ^recoveredValue4
! !

