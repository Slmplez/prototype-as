"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"dde.ic method 0x20000000; bytecode file offset 0x62d0"
!DynamicDataExchange class methodsFor: 'recovered'!
_PRAGMA_NlsCatDDE
    ^self
! !

"dde.ic method 0x20000008; bytecode file offset 0x62d0"
!DynamicDataExchange class methodsFor: 'recovered'!
_PRAGMA_DdeConstants
    ^self
! !

"dde.ic method 0x20000088; bytecode file offset 0x634c"
!DynamicDataExchange class methodsFor: 'recovered'!
loaded
    (self) localize.
    ^self
! !

"dde.ic method 0x200003d0; bytecode file offset 0x669c"
!DynamicDataExchange class methodsFor: 'recovered'!
localize
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := NlsCatDDE.
    recoveredValue1 := (self) defaultMessagesLocale.
    (recoveredValue0) relocalizeTo: (recoveredValue1).
    ^self
! !

"dde.ic method 0x200009dc; bytecode file offset 0x6cb0"
!DynamicDataExchange class methodsFor: 'recovered'!
packagerIncludeSelectors
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := DdeConstants.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) asOrderedCollection.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := [:block28000718Arg1 | 
    | block28000718Value0 block28000718Value1 |
    block28000718Value0 := block28000718Arg1.
    block28000718Value1 := (block28000718Value0) isSymbol.
    block28000718Value1
].
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) select: (recoveredStack2).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

