"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2006cb28; bytecode file offset 0x969c04"
!FamosNamedGroupIndexKey methodsFor: 'recovered'!
nameLength
    | recoveredValue0 |
    recoveredValue0 := nameLength.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006d814; bytecode file offset 0x96a390"
!FamosNamedGroupIndexKey methodsFor: 'recovered'!
name
    | recoveredValue0 |
    recoveredValue0 := name.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006df18; bytecode file offset 0x96a9dc"
!FamosNamedGroupIndexKey methodsFor: 'recovered'!
commentLength
    | recoveredValue0 |
    recoveredValue0 := commentLength.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006e5cc; bytecode file offset 0x96af48"
!FamosNamedGroupIndexKey methodsFor: 'recovered'!
comment
    | recoveredValue0 |
    recoveredValue0 := comment.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200c3690; bytecode file offset 0x9c058c"
!FamosNamedGroupIndexKey methodsFor: 'recovered'!
nameLength: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    nameLength := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c426c; bytecode file offset 0x9c0bf0"
!FamosNamedGroupIndexKey methodsFor: 'recovered'!
name: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    name := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c4678; bytecode file offset 0x9c11bc"
!FamosNamedGroupIndexKey methodsFor: 'recovered'!
commentLength: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    commentLength := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c4bdc; bytecode file offset 0x9c16b0"
!FamosNamedGroupIndexKey methodsFor: 'recovered'!
comment: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    comment := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x201459a4; bytecode file offset 0xa42280"
!FamosNamedGroupIndexKey methodsFor: 'recovered'!
putFieldsIn: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    super putFieldsIn: (recoveredValue0).
    recoveredValue1 := recoveredArg1.
    (self) putNameLengthIn: (recoveredValue1).
    recoveredValue2 := recoveredArg1.
    (self) putNameIn: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x20194f94; bytecode file offset 0xa91858"
!FamosNamedGroupIndexKey methodsFor: 'recovered'!
getFrom: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := recoveredArg1.
    super getFrom: (recoveredValue0).
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (self) getFieldLength: (recoveredValue1).
    nameLength := recoveredValue2.
    recoveredValue3 := nameLength.
    recoveredValue4 := recoveredArg1.
    recoveredValue5 := (self) getString: (recoveredValue3) from: (recoveredValue4).
    name := recoveredValue5.
    ^self
! !

"ASDBase.ic method 0x201b1ad4; bytecode file offset 0xaae394"
!FamosNamedGroupIndexKey methodsFor: 'recovered'!
initialize
    super initialize.
    nameLength := 0.
    name := ''.
    commentLength := 0.
    comment := ''.
    ^self
! !

