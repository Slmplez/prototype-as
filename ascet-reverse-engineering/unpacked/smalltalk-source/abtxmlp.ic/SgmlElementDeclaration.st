"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"abtxmlp.ic method 0x20000f4c; bytecode file offset 0x19774"
!SgmlElementDeclaration methodsFor: 'recovered'!
attributes
    | recoveredValue0 |
    recoveredValue0 := attributes.
    ^recoveredValue0
! !

"abtxmlp.ic method 0x20000fb8; bytecode file offset 0x197d8"
!SgmlElementDeclaration methodsFor: 'recovered'!
startTagRequired
    | recoveredValue0 |
    recoveredValue0 := startTagRequired.
    ^recoveredValue0
! !

"abtxmlp.ic method 0x2000103c; bytecode file offset 0x19834"
!SgmlElementDeclaration methodsFor: 'recovered'!
endTagRequired
    | recoveredValue0 |
    recoveredValue0 := endTagRequired.
    ^recoveredValue0
! !

"abtxmlp.ic method 0x20001560; bytecode file offset 0x19d7c"
!SgmlElementDeclaration methodsFor: 'recovered'!
printOn: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) printTagOn: (recoveredValue0).
    ^self
! !

"abtxmlp.ic method 0x200019d0; bytecode file offset 0x1a1c0"
!SgmlElementDeclaration methodsFor: 'recovered'!
addAllPermissibleTagsTo: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) contents.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) addAllPermissibleTagsOf: (self) to: (recoveredValue1).
    ^recoveredValue2
! !

"abtxmlp.ic method 0x20001b34; bytecode file offset 0x1a3a4"
!SgmlElementDeclaration methodsFor: 'recovered'!
canAdd: recoveredArg1 to: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) contents.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := (recoveredValue0) canAdd: (recoveredValue1) to: (recoveredValue2).
    ^recoveredValue3
! !

"abtxmlp.ic method 0x20001d9c; bytecode file offset 0x1a58c"
!SgmlElementDeclaration methodsFor: 'recovered'!
name: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    super name: (recoveredValue0).
    ^self
! !

"abtxmlp.ic method 0x200026ac; bytecode file offset 0x1ae94"
!SgmlElementDeclaration methodsFor: 'recovered'!
attributes: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    attributes := recoveredValue0.
    ^self
! !

"abtxmlp.ic method 0x200026f8; bytecode file offset 0x1aef0"
!SgmlElementDeclaration methodsFor: 'recovered'!
startTagRequired: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    startTagRequired := recoveredValue0.
    ^self
! !

"abtxmlp.ic method 0x20002734; bytecode file offset 0x1af34"
!SgmlElementDeclaration methodsFor: 'recovered'!
endTagRequired: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    endTagRequired := recoveredValue0.
    ^self
! !

"abtxmlp.ic method 0x20002b00; bytecode file offset 0x1b2f8"
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

"abtxmlp.ic method 0x2000339c; bytecode file offset 0x1bb98"
!SgmlElementDeclaration methodsFor: 'recovered'!
initialize
    | recoveredValue0 recoveredValue1 |
    super initialize.
    recoveredValue0 := SystemExceptions.
    recoveredValue1 := (recoveredValue0) new.
    (self) attributes: (recoveredValue1).
    ^self
! !

"abtxmlp.ic method 0x200042b4; bytecode file offset 0x1caac"
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

"abtxmlp.ic method 0x20004790; bytecode file offset 0x1cf84"
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

