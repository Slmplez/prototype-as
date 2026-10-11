"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x200c8b10; bytecode file offset 0x9c53ec"
!SGAutosarAttributes class methodsFor: 'recovered'!
shortName: recoveredArg1 uuid: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := (self) shortName: (recoveredValue0) uuid: (recoveredValue1) source: (nil) category: (nil).
    ^recoveredValue2
! !

"ASDBase.ic method 0x200c9ffc; bytecode file offset 0x9c692c"
!SGAutosarAttributes class methodsFor: 'recovered'!
shortName: recoveredArg1 uuid: recoveredArg2 source: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := recoveredArg3.
    recoveredValue3 := (self) shortName: (recoveredValue0) uuid: (recoveredValue1) source: (recoveredValue2) attributes: (nil).
    ^recoveredValue3
! !

"ASDBase.ic method 0x200ca12c; bytecode file offset 0x9c69f8"
!SGAutosarAttributes class methodsFor: 'recovered'!
shortName: recoveredArg1 uuid: recoveredArg2 mdlNode: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := recoveredArg3.
    recoveredValue3 := (recoveredValue2) source.
    recoveredValue4 := (self) shortName: (recoveredValue0) uuid: (recoveredValue1) source: (recoveredValue3).
    ^recoveredValue4
! !

"ASDBase.ic method 0x200de178; bytecode file offset 0x9daa44"
!SGAutosarAttributes class methodsFor: 'recovered'!
shortName: recoveredArg1 uuid: recoveredArg2 referenceName: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := (self) shortName: (recoveredValue0) uuid: (recoveredValue1).
    recoveredValue3 := recoveredValue2.
    recoveredValue4 := recoveredArg3.
    (recoveredValue3) referenceName: (recoveredValue4).
    ^recoveredValue2
! !

"ASDBase.ic method 0x200dec8c; bytecode file offset 0x9db544"
!SGAutosarAttributes class methodsFor: 'recovered'!
shortName: recoveredArg1 uuid: recoveredArg2 source: recoveredArg3 category: recoveredArg4
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := recoveredArg3.
    recoveredValue3 := recoveredArg4.
    recoveredValue4 := (self) shortName: (recoveredValue0) uuid: (recoveredValue1) source: (recoveredValue2) attributes: (nil) category: (recoveredValue3).
    ^recoveredValue4
! !

"ASDBase.ic method 0x200ee170; bytecode file offset 0x9eaa2c"
!SGAutosarAttributes class methodsFor: 'recovered'!
shortName: recoveredArg1 uuid: recoveredArg2 source: recoveredArg3 attributes: recoveredArg4
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := recoveredArg3.
    recoveredValue3 := recoveredArg4.
    recoveredValue4 := (self) shortName: (recoveredValue0) uuid: (recoveredValue1) source: (recoveredValue2) attributes: (recoveredValue3) category: ('model element').
    ^recoveredValue4
! !

"ASDBase.ic method 0x20102580; bytecode file offset 0x9fee40"
!SGAutosarAttributes class methodsFor: 'recovered'!
shortName: recoveredArg1 uuid: recoveredArg2 attributes: recoveredArg3 mdlNode: recoveredArg4
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := recoveredArg4.
    recoveredValue3 := (recoveredValue2) source.
    recoveredValue4 := recoveredArg3.
    recoveredValue5 := (self) shortName: (recoveredValue0) uuid: (recoveredValue1) source: (recoveredValue3) attributes: (recoveredValue4) category: ('model element').
    ^recoveredValue5
! !

"ASDBase.ic method 0x20123c40; bytecode file offset 0xa20504"
!SGAutosarAttributes class methodsFor: 'recovered'!
shortName: recoveredArg1 uuid: recoveredArg2 varDecl: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := recoveredArg3.
    recoveredValue3 := (self) shortName: (recoveredValue0) uuid: (recoveredValue1) mdlNode: (recoveredValue2).
    recoveredValue4 := recoveredValue3.
    recoveredValue5 := recoveredArg3.
    recoveredValue6 := (recoveredValue5) attributes.
    recoveredValue7 := (recoveredValue6) comment.
    (recoveredValue4) description: (recoveredValue7).
    ^recoveredValue3
! !

"ASDBase.ic method 0x201d00cc; bytecode file offset 0xacc998"
!SGAutosarAttributes class methodsFor: 'recovered'!
shortName: recoveredArg1 uuid: recoveredArg2 source: recoveredArg3 attributes: recoveredArg4 category: recoveredArg5
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 |
    recoveredValue0 := (self) new.
    recoveredValue1 := recoveredValue0.
    recoveredValue2 := recoveredArg2.
    (recoveredValue1) uuid: (recoveredValue2).
    recoveredValue3 := recoveredValue0.
    recoveredValue4 := recoveredArg3.
    (recoveredValue3) source: (recoveredValue4).
    recoveredValue5 := recoveredValue0.
    recoveredValue6 := recoveredArg5.
    (recoveredValue5) category: (recoveredValue6).
    recoveredValue7 := recoveredValue0.
    recoveredValue8 := recoveredArg4.
    (recoveredValue7) attributes: (recoveredValue8).
    recoveredValue9 := recoveredValue0.
    recoveredValue10 := recoveredArg1.
    (recoveredValue9) shortName: (recoveredValue10).
    ^recoveredValue0
! !

