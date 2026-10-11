"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"kernel.ic method 0x2000427c; bytecode file offset 0x4f190"
!OSStructure class methodsFor: 'recovered'!
members
    | recoveredValue0 |
    recoveredValue0 := members.
    ^recoveredValue0
! !

"kernel.ic method 0x200043a0; bytecode file offset 0x4f2dc"
!OSStructure class methodsFor: 'recovered'!
variableSize
    ^0
! !

"kernel.ic method 0x20004770; bytecode file offset 0x4f794"
!OSStructure class methodsFor: 'recovered'!
isUnion
    ^false
! !

"kernel.ic method 0x20007b30; bytecode file offset 0x52a5c"
!OSStructure class methodsFor: 'recovered'!
members: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    members := recoveredValue0.
    ^self
! !

"kernel.ic method 0x20010aec; bytecode file offset 0x5ba14"
!OSStructure class methodsFor: 'recovered'!
initializeAfterLoad
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := 'PTR'.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := '8473'.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            super initializeAfterLoad.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) members.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 25] ifFalse: [recoveredPC := 20].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := #().
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            (recoveredStack0) members: (recoveredStack1).
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

