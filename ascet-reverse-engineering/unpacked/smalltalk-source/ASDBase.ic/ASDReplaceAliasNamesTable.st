"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20057928; bytecode file offset 0x956284"
!ASDReplaceAliasNamesTable methodsFor: 'recovered'!
includesRestrictedAliasName: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) restrictedAliasNamesList.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) includes: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x200772e4; bytecode file offset 0x9757c8"
!ASDReplaceAliasNamesTable methodsFor: 'recovered'!
isReplaceAliasTable
    ^true
! !

"ASDBase.ic method 0x20098ab4; bytecode file offset 0x995850"
!ASDReplaceAliasNamesTable methodsFor: 'recovered'!
addRestrictedAliasName: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) restrictedAliasNamesList.
    recoveredValue1 := recoveredArg1.
    (recoveredValue0) add: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x200c12e8; bytecode file offset 0x9bdf14"
!ASDReplaceAliasNamesTable methodsFor: 'recovered'!
restrictedAliasNamesList: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    restrictedAliasNamesList := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x201298c8; bytecode file offset 0xa261a4"
!ASDReplaceAliasNamesTable methodsFor: 'recovered'!
restrictedAliasNamesList
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := restrictedAliasNamesList.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 15] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := Set.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            restrictedAliasNamesList := recoveredStack1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := restrictedAliasNamesList.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

