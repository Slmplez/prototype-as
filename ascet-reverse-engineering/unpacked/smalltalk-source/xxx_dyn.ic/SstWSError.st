"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"xxx_dyn.ic method 0x20004850; bytecode file offset 0x6592c"
!SstWSError methodsFor: 'recovered'!
isWSError
    ^true
! !

"xxx_dyn.ic method 0x20005180; bytecode file offset 0x6624c"
!SstWSError methodsFor: 'recovered'!
raise
    | recoveredValue0 |
    recoveredValue0 := ExWSNonFatalError.
    (self) raise: (recoveredValue0).
    ^self
! !

"xxx_dyn.ic method 0x2000fa84; bytecode file offset 0x70ba0"
!SstWSError methodsFor: 'recovered'!
identifier
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := SstWSErrorConstants.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := (recoveredStack2) errorCode.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack3 := [
    | block2800aa28Value0 block2800aa28Value1 |
    block2800aa28Value0 := NlsCatSSTG.
    block2800aa28Value1 := (block2800aa28Value0) indexedMsg: (2).
    block2800aa28Value1
].
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := (recoveredStack1) keyAtValue: (recoveredStack2) ifAbsent: (recoveredStack3).
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

