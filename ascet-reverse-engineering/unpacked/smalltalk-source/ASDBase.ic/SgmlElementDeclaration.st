"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2006a984; bytecode file offset 0x967a18"
!SgmlElementDeclaration methodsFor: 'recovered'!
attributes
    | recoveredValue0 |
    recoveredValue0 := attributes.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006bda0; bytecode file offset 0x96873c"
!SgmlElementDeclaration methodsFor: 'recovered'!
startTagRequired
    | recoveredValue0 |
    recoveredValue0 := startTagRequired.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006c074; bytecode file offset 0x9692b0"
!SgmlElementDeclaration methodsFor: 'recovered'!
endTagRequired
    | recoveredValue0 |
    recoveredValue0 := endTagRequired.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200842f4; bytecode file offset 0x981ca4"
!SgmlElementDeclaration methodsFor: 'recovered'!
printOn: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) printTagOn: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x2009705c; bytecode file offset 0x9939e8"
!SgmlElementDeclaration methodsFor: 'recovered'!
addAllPermissibleTagsTo: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) contents.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) addAllPermissibleTagsOf: (self) to: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x2009a1b8; bytecode file offset 0x997194"
!SgmlElementDeclaration methodsFor: 'recovered'!
canAdd: recoveredArg1 to: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) contents.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := (recoveredValue0) canAdd: (recoveredValue1) to: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x200aab5c; bytecode file offset 0x9a7438"
!SgmlElementDeclaration methodsFor: 'recovered'!
name: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    super name: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x200c1b54; bytecode file offset 0x9beac8"
!SgmlElementDeclaration methodsFor: 'recovered'!
attributes: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    attributes := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c2480; bytecode file offset 0x9bf474"
!SgmlElementDeclaration methodsFor: 'recovered'!
startTagRequired: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    startTagRequired := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c2c14; bytecode file offset 0x9bfde0"
!SgmlElementDeclaration methodsFor: 'recovered'!
endTagRequired: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    endTagRequired := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200daa20; bytecode file offset 0x9d72fc"
!SgmlElementDeclaration methodsFor: 'recovered'!
addAttribute: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := (self) attributes.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue1) name.
    recoveredValue3 := (recoveredValue2) asUppercase.
    recoveredValue4 := recoveredArg1.
    (recoveredValue0) at: (recoveredValue3) put: (recoveredValue4).
    ^self
! !

"ASDBase.ic method 0x2010bbbc; bytecode file offset 0xa085f0"
!SgmlElementDeclaration methodsFor: 'recovered'!
initialize
    | recoveredValue0 recoveredValue1 |
    super initialize.
    recoveredValue0 := Dictionary.
    recoveredValue1 := (recoveredValue0) new.
    (self) attributes: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x2016535c; bytecode file offset 0xa61c20"
!SgmlElementDeclaration methodsFor: 'recovered'!
printEndTagOn: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredValue0.
    (recoveredValue1) nextPutAll: ('</').
    recoveredValue2 := recoveredValue0.
    recoveredValue3 := (self) name.
    (recoveredValue2) nextPutAll: (recoveredValue3).
    (recoveredValue0) nextPut: ($>).
    ^self
! !

"ASDBase.ic method 0x20184ae4; bytecode file offset 0xa813a4"
!SgmlElementDeclaration methodsFor: 'recovered'!
printTagOn: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredValue0.
    (recoveredValue1) nextPut: ($<).
    recoveredValue2 := recoveredValue0.
    recoveredValue3 := (self) name.
    (recoveredValue2) nextPutAll: (recoveredValue3).
    (recoveredValue0) nextPut: ($>).
    ^self
! !

