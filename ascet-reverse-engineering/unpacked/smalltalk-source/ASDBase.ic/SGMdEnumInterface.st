"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20000e28; bytecode file offset 0x8ffcfc"
!SGMdEnumInterface methodsFor: 'recovered'!
semAnaDataset
    ^self
! !

"ASDBase.ic method 0x20007ad8; bytecode file offset 0x908be4"
!SGMdEnumInterface methodsFor: 'recovered'!
mdlEnumType
    | recoveredValue0 |
    recoveredValue0 := (self) mdlClassType.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20008234; bytecode file offset 0x908be4"
!SGMdEnumInterface methodsFor: 'recovered'!
cgEnumType
    | recoveredValue0 |
    recoveredValue0 := (self) mdlClassType.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20031904; bytecode file offset 0x934580"
!SGMdEnumInterface methodsFor: 'recovered'!
mdlFormulaName
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) mdlEnumType.
    recoveredValue1 := (recoveredValue0) mdlFormulaName.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20033c94; bytecode file offset 0x934580"
!SGMdEnumInterface methodsFor: 'recovered'!
mdlEnumerationMap
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) mdlClassType.
    recoveredValue1 := (recoveredValue0) enumerationMap.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20055f5c; bytecode file offset 0x952a9c"
!SGMdEnumInterface methodsFor: 'recovered'!
mdlAcceptNodeVisitor: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) mdlEnumInterface: (self).
    ^recoveredValue1
! !

"ASDBase.ic method 0x20063e74; bytecode file offset 0x961970"
!SGMdEnumInterface methodsFor: 'recovered'!
resetIleTypes
    | recoveredValue0 |
    recoveredValue0 := (self) mdlClassType.
    (recoveredValue0) resetIleNames.
    ^self
! !

"ASDBase.ic method 0x20077014; bytecode file offset 0x9757c8"
!SGMdEnumInterface methodsFor: 'recovered'!
isMdlEnumType
    ^true
! !

