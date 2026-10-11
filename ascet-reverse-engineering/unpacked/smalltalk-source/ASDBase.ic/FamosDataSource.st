"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2006c6ac; bytecode file offset 0x9692b0"
!FamosDataSource methodsFor: 'recovered'!
origin
    | recoveredValue0 |
    recoveredValue0 := origin.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006cb60; bytecode file offset 0x969c04"
!FamosDataSource methodsFor: 'recovered'!
nameLength
    | recoveredValue0 |
    recoveredValue0 := nameLength.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006d954; bytecode file offset 0x96a390"
!FamosDataSource methodsFor: 'recovered'!
name
    | recoveredValue0 |
    recoveredValue0 := name.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006df20; bytecode file offset 0x96a9dc"
!FamosDataSource methodsFor: 'recovered'!
commentLength
    | recoveredValue0 |
    recoveredValue0 := commentLength.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006e624; bytecode file offset 0x96af48"
!FamosDataSource methodsFor: 'recovered'!
comment
    | recoveredValue0 |
    recoveredValue0 := comment.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200c31e4; bytecode file offset 0x9bfde0"
!FamosDataSource methodsFor: 'recovered'!
origin: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    origin := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c3698; bytecode file offset 0x9c058c"
!FamosDataSource methodsFor: 'recovered'!
nameLength: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    nameLength := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c4274; bytecode file offset 0x9c0bf0"
!FamosDataSource methodsFor: 'recovered'!
name: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    name := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c4680; bytecode file offset 0x9c11bc"
!FamosDataSource methodsFor: 'recovered'!
commentLength: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    commentLength := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c4be4; bytecode file offset 0x9c16b0"
!FamosDataSource methodsFor: 'recovered'!
comment: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    comment := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200d944c; bytecode file offset 0x9d5d08"
!FamosDataSource methodsFor: 'recovered'!
addToSuper: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    (self) parent: (recoveredValue0).
    recoveredValue1 := recoveredArg1.
    (recoveredValue1) dataSource: (self).
    ^true
! !

"ASDBase.ic method 0x200faf18; bytecode file offset 0x9f7824"
!FamosDataSource methodsFor: 'recovered'!
putOriginIn: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    (self) putSeparatorIn: (recoveredValue0).
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := origin.
    (self) putIn: (recoveredValue1) integer: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x201e4c78; bytecode file offset 0xae1538"
!FamosDataSource methodsFor: 'recovered'!
initialize
    super initialize.
    origin := nil.
    nameLength := 0.
    name := ''.
    commentLength := 0.
    comment := ''.
    ^self
! !

"ASDBase.ic method 0x201e593c; bytecode file offset 0xae2268"
!FamosDataSource methodsFor: 'recovered'!
putFieldsIn: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := recoveredArg1.
    (self) putOriginIn: (recoveredValue0).
    recoveredValue1 := recoveredArg1.
    (self) putNameLengthIn: (recoveredValue1).
    recoveredValue2 := recoveredArg1.
    (self) putNameIn: (recoveredValue2).
    recoveredValue3 := recoveredArg1.
    (self) putCommentLengthIn: (recoveredValue3).
    recoveredValue4 := recoveredArg1.
    (self) putCommentIn: (recoveredValue4).
    recoveredValue5 := recoveredArg1.
    (self) putEndIn: (recoveredValue5).
    ^self
! !

"ASDBase.ic method 0x20284920; bytecode file offset 0xb811e4"
!FamosDataSource methodsFor: 'recovered'!
getFrom: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 |
    recoveredValue0 := recoveredArg1.
    super getFrom: (recoveredValue0).
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (self) getInteger: (recoveredValue1).
    origin := recoveredValue2.
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := (self) getInteger: (recoveredValue3).
    nameLength := recoveredValue4.
    recoveredValue5 := nameLength.
    recoveredValue6 := recoveredArg1.
    recoveredValue7 := (self) getString: (recoveredValue5) from: (recoveredValue6).
    name := recoveredValue7.
    recoveredValue8 := recoveredArg1.
    recoveredValue9 := (self) getInteger: (recoveredValue8).
    commentLength := recoveredValue9.
    recoveredValue10 := commentLength.
    recoveredValue11 := recoveredArg1.
    recoveredValue12 := (self) getString: (recoveredValue10) from: (recoveredValue11).
    comment := recoveredValue12.
    ^self
! !

"ASDBase.ic method 0x20295598; bytecode file offset 0xb91e5c"
!FamosDataSource methodsFor: 'recovered'!
putHeaderIn: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 recoveredValue21 |
    recoveredValue0 := name.
    recoveredValue1 := (recoveredValue0) size.
    recoveredLocal2 := recoveredValue1.
    recoveredValue2 := comment.
    recoveredValue3 := (recoveredValue2) size.
    recoveredLocal1 := recoveredValue3.
    recoveredValue4 := name.
    recoveredValue5 := (recoveredValue4) size.
    recoveredValue6 := comment.
    recoveredValue7 := (recoveredValue6) size.
    recoveredValue8 := (recoveredValue5) + (recoveredValue7).
    recoveredValue9 := name.
    recoveredValue10 := (recoveredValue9) size.
    recoveredValue11 := (recoveredValue10) printString.
    recoveredValue12 := (recoveredValue11) size.
    recoveredValue13 := (recoveredValue8) + (recoveredValue12).
    recoveredValue14 := comment.
    recoveredValue15 := (recoveredValue14) size.
    recoveredValue16 := (recoveredValue15) printString.
    recoveredValue17 := (recoveredValue16) size.
    recoveredValue18 := (recoveredValue13) + (recoveredValue17).
    recoveredValue19 := (recoveredValue18) + (1).
    recoveredValue20 := (recoveredValue19) + (4).
    recoveredLocal3 := recoveredValue20.
    recoveredValue21 := recoveredArg1.
    super putHeaderIn: (recoveredValue21).
    ^self
! !

