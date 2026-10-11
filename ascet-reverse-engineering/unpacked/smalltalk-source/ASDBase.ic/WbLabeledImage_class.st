"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20086dac; bytecode file offset 0x98376c"
!WbLabeledImage class methodsFor: 'recovered'!
image: recoveredArg1 label: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := (self) horizontalImage: (recoveredValue0) label: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x200c8968; bytecode file offset 0x9c52c4"
!WbLabeledImage class methodsFor: 'recovered'!
verticalImage: recoveredArg1 label: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := XmVERTICAL.
    recoveredValue3 := (self) image: (recoveredValue0) label: (recoveredValue1) orientation: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x200c89c8; bytecode file offset 0x9c52c4"
!WbLabeledImage class methodsFor: 'recovered'!
horizontalImage: recoveredArg1 label: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := XmHORIZONTAL.
    recoveredValue3 := (self) image: (recoveredValue0) label: (recoveredValue1) orientation: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x200ebb74; bytecode file offset 0x9e8430"
!WbLabeledImage class methodsFor: 'recovered'!
tightImage: recoveredArg1 label: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := XmHORIZONTAL.
    recoveredValue3 := (self) image: (recoveredValue0) label: (recoveredValue1) orientation: (recoveredValue2) separation: (4).
    ^recoveredValue3
! !

"ASDBase.ic method 0x20135f08; bytecode file offset 0xa3288c"
!WbLabeledImage class methodsFor: 'recovered'!
image: recoveredArg1 label: recoveredArg2 orientation: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := (self) new.
    recoveredValue1 := recoveredValue0.
    recoveredValue2 := recoveredArg1.
    (recoveredValue1) image: (recoveredValue2).
    recoveredValue3 := recoveredValue0.
    recoveredValue4 := recoveredArg2.
    (recoveredValue3) label: (recoveredValue4).
    recoveredValue5 := recoveredValue0.
    recoveredValue6 := recoveredArg3.
    (recoveredValue5) orientation: (recoveredValue6).
    ^recoveredValue0
! !

"ASDBase.ic method 0x20179d60; bytecode file offset 0xa7667c"
!WbLabeledImage class methodsFor: 'recovered'!
image: recoveredArg1 label: recoveredArg2 orientation: recoveredArg3 separation: recoveredArg4
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 |
    recoveredValue0 := (self) new.
    recoveredValue1 := recoveredValue0.
    recoveredValue2 := recoveredArg1.
    (recoveredValue1) image: (recoveredValue2).
    recoveredValue3 := recoveredValue0.
    recoveredValue4 := recoveredArg2.
    (recoveredValue3) label: (recoveredValue4).
    recoveredValue5 := recoveredValue0.
    recoveredValue6 := recoveredArg3.
    (recoveredValue5) orientation: (recoveredValue6).
    recoveredValue7 := recoveredValue0.
    recoveredValue8 := recoveredArg4.
    (recoveredValue7) separation: (recoveredValue8).
    ^recoveredValue0
! !

