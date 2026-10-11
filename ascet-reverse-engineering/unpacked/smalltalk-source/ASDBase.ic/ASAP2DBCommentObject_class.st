"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2000b30c; bytecode file offset 0x908be4"
!ASAP2DBCommentObject class methodsFor: 'recovered'!
create
    | recoveredValue0 |
    recoveredValue0 := (self) new.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20080a80; bytecode file offset 0x97d334"
!ASAP2DBCommentObject class methodsFor: 'recovered'!
asap2BehaviorId
    ^208
! !

"ASDBase.ic method 0x20113fcc; bytecode file offset 0xa1088c"
!ASAP2DBCommentObject class methodsFor: 'recovered'!
create: recoveredArg1 annotation: recoveredArg2
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := (self) new.
    recoveredLocal1 := recoveredValue0.
    recoveredValue1 := recoveredLocal1.
    recoveredValue2 := recoveredValue1.
    recoveredValue3 := recoveredArg1.
    (recoveredValue2) longName: (recoveredValue3).
    recoveredValue4 := recoveredArg2.
    (recoveredValue1) annotation: (recoveredValue4).
    recoveredValue5 := recoveredLocal1.
    ^recoveredValue5
! !

"ASDBase.ic method 0x201278b0; bytecode file offset 0xa24170"
!ASAP2DBCommentObject class methodsFor: 'recovered'!
create: recoveredArg1 longName: recoveredArg2 annotation: recoveredArg3
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) create: (recoveredValue0).
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := recoveredLocal1.
    recoveredValue3 := recoveredValue2.
    recoveredValue4 := recoveredArg2.
    (recoveredValue3) longName: (recoveredValue4).
    recoveredValue5 := recoveredArg3.
    (recoveredValue2) annotation: (recoveredValue5).
    recoveredValue6 := recoveredLocal1.
    ^recoveredValue6
! !

"ASDBase.ic method 0x2017db88; bytecode file offset 0xa7a44c"
!ASAP2DBCommentObject class methodsFor: 'recovered'!
create: recoveredArg1 longName: recoveredArg2 annotation: recoveredArg3 displayIdentifier: recoveredArg4
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) create: (recoveredValue0).
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := recoveredLocal1.
    recoveredValue3 := recoveredValue2.
    recoveredValue4 := recoveredArg2.
    (recoveredValue3) longName: (recoveredValue4).
    recoveredValue5 := recoveredValue2.
    recoveredValue6 := recoveredArg3.
    (recoveredValue5) annotation: (recoveredValue6).
    recoveredValue7 := recoveredArg4.
    (recoveredValue2) displayIdentifier: (recoveredValue7).
    recoveredValue8 := recoveredLocal1.
    ^recoveredValue8
! !

