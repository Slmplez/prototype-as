"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x200658b4; bytecode file offset 0x963428"
!SGMapFileSymbols methodsFor: 'recovered'!
variableSymbols
    | recoveredValue0 |
    recoveredValue0 := variableSymbols.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20066fdc; bytecode file offset 0x9646f8"
!SGMapFileSymbols methodsFor: 'recovered'!
memoryMapSymbols
    | recoveredValue0 |
    recoveredValue0 := memoryMapSymbols.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200be41c; bytecode file offset 0x9bb178"
!SGMapFileSymbols methodsFor: 'recovered'!
variableSymbols: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    variableSymbols := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200bf0e0; bytecode file offset 0x9bc0b4"
!SGMapFileSymbols methodsFor: 'recovered'!
memoryMapSymbols: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    memoryMapSymbols := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x20172eb8; bytecode file offset 0xa6f7c4"
!SGMapFileSymbols methodsFor: 'recovered'!
initialize
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    super initialize.
    recoveredValue0 := OrderedCollection.
    recoveredValue1 := (recoveredValue0) new.
    (self) memoryMapSymbols: (recoveredValue1).
    recoveredValue2 := OrderedCollection.
    recoveredValue3 := (recoveredValue2) new.
    (self) variableSymbols: (recoveredValue3).
    ^self
! !

