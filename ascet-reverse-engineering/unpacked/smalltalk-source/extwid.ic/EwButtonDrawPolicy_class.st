"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"extwid.ic method 0x200018c4; bytecode file offset 0x526c8"
!EwButtonDrawPolicy class methodsFor: 'recovered'!
removing
    (self) reset.
    ^self
! !

"extwid.ic method 0x20004ed4; bytecode file offset 0x55ccc"
!EwButtonDrawPolicy class methodsFor: 'recovered'!
new
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := super new.
    recoveredValue1 := (recoveredValue0) initialize.
    ^recoveredValue1
! !

"extwid.ic method 0x20007044; bytecode file offset 0x57e08"
!EwButtonDrawPolicy class methodsFor: 'recovered'!
default: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    default := recoveredValue0.
    ^self
! !

"extwid.ic method 0x2000a2b8; bytecode file offset 0x5b080"
!EwButtonDrawPolicy class methodsFor: 'recovered'!
default
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := default.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            default := recoveredStack1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := default.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"extwid.ic method 0x2000b0e0; bytecode file offset 0x5beb4"
!EwButtonDrawPolicy class methodsFor: 'recovered'!
reset
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) allSubclasses.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := [:block28005538Arg1 | 
    | block28005538Value0 block28005538Value1 |
    block28005538Value0 := block28005538Arg1.
    block28005538Value1 := (block28005538Value0) default: (nil).
    block28005538Value1
].
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

