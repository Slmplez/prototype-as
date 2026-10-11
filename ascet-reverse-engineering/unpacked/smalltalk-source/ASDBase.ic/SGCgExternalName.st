"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2000bae0; bytecode file offset 0x908be4"
!SGCgExternalName methodsFor: 'recovered'!
expr
    | recoveredValue0 |
    recoveredValue0 := (self) label.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2002ba74; bytecode file offset 0x934580"
!SGCgExternalName methodsFor: 'recovered'!
printString
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) label.
    recoveredValue1 := (recoveredValue0) printString.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20066414; bytecode file offset 0x963428"
!SGCgExternalName methodsFor: 'recovered'!
label
    | recoveredValue0 |
    recoveredValue0 := label.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20078294; bytecode file offset 0x9757c8"
!SGCgExternalName methodsFor: 'recovered'!
isCgExternalName
    ^true
! !

"ASDBase.ic method 0x20079ddc; bytecode file offset 0x97c330"
!SGCgExternalName methodsFor: 'recovered'!
isCgPerlCode
    ^false
! !

"ASDBase.ic method 0x20093704; bytecode file offset 0x98ffec"
!SGCgExternalName methodsFor: 'recovered'!
fieldAccess: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := ('.') , (recoveredValue0).
    recoveredValue2 := (self) append: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x200ab394; bytecode file offset 0x9a7c58"
!SGCgExternalName methodsFor: 'recovered'!
append: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := (self) class.
    recoveredValue1 := (self) label.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (recoveredValue1) , (recoveredValue2).
    recoveredValue4 := (recoveredValue0) create: (recoveredValue3).
    ^recoveredValue4
! !

"ASDBase.ic method 0x200be784; bytecode file offset 0x9bb178"
!SGCgExternalName methodsFor: 'recovered'!
label: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    label := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x201f5818; bytecode file offset 0xaf20e4"
!SGCgExternalName methodsFor: 'recovered'!
printOn: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := recoveredArg1.
    super printOn: (recoveredValue0).
    recoveredValue1 := recoveredArg1.
    (recoveredValue1) cr.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := recoveredValue2.
    (recoveredValue3) nextPutAll: ('"').
    recoveredValue4 := recoveredValue2.
    recoveredValue5 := (self) label.
    (recoveredValue4) nextPutAll: (recoveredValue5).
    (recoveredValue2) nextPutAll: ('"').
    ^self
! !

