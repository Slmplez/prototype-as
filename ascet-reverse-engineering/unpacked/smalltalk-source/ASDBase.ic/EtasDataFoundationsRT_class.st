"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20000fa0; bytecode file offset 0x8ffcfc"
!EtasDataFoundationsRT class methodsFor: 'recovered'!
_PRAGMA_Infinity
    ^self
! !

"ASDBase.ic method 0x2005c164; bytecode file offset 0x958ab0"
!EtasDataFoundationsRT class methodsFor: 'recovered'!
saving
    | recoveredValue0 |
    recoveredValue0 := RBDataTypes.
    (recoveredValue0) clearIdentifierToDataTypeMapping.
    ^self
! !

"ASDBase.ic method 0x20223ea4; bytecode file offset 0xb20784"
!EtasDataFoundationsRT class methodsFor: 'recovered'!
loaded
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := Infinity.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) plus.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            PlusInfinity := recoveredStack1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := Infinity.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) minus.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            MinusInfinity := recoveredStack1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := RBDataTypes.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) allSubclasses.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack2 := [:block280dbe4cArg1 | 
    | block280dbe4cValue0 block280dbe4cValue1 block280dbe4cValue2 block280dbe4cValue3 |
    block280dbe4cValue0 := block280dbe4cArg1.
    block280dbe4cValue1 := block280dbe4cArg1.
    block280dbe4cValue2 := (block280dbe4cValue1) getInterval.
    block280dbe4cValue3 := (block280dbe4cValue0) interval: (block280dbe4cValue2).
    block280dbe4cValue3
].
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

