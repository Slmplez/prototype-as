"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20003370; bytecode file offset 0x8ffcfc"
!EtasExtendedWidgetUtilities class methodsFor: 'recovered'!
_PRAGMA_EwConstantsRB
    ^self
! !

"ASDBase.ic method 0x2014c164; bytecode file offset 0xa48a2c"
!EtasExtendedWidgetUtilities class methodsFor: 'recovered'!
loaded
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := EwConstantsRB.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := [:block280cc87cArg1 | 
    | block280cc87cValue0 block280cc87cValue1 block280cc87cValue2 |
    block280cc87cValue0 := EwConstants.
    block280cc87cValue1 := block280cc87cArg1.
    block280cc87cValue2 := (block280cc87cValue0) add: (block280cc87cValue1).
    block280cc87cValue2
].
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack1) associationsDo: (recoveredStack2).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

