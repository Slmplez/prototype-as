"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"winsys.ic method 0x20000160; bytecode file offset 0x7c350"
!CwTextManager methodsFor: 'recovered'!
initializeConnection
    ^self
! !

"winsys.ic method 0x20000210; bytecode file offset 0x7c440"
!CwTextManager methodsFor: 'recovered'!
disconnectFromOwner: recoveredArg1
    ^self
! !

"winsys.ic method 0x20000258; bytecode file offset 0x7c440"
!CwTextManager methodsFor: 'recovered'!
connectToOwner: recoveredArg1
    ^self
! !

"winsys.ic method 0x20002a58; bytecode file offset 0x7ed00"
!CwTextManager methodsFor: 'recovered'!
owner
    | recoveredValue0 |
    recoveredValue0 := owner.
    ^recoveredValue0
! !

"winsys.ic method 0x20005198; bytecode file offset 0x81360"
!CwTextManager methodsFor: 'recovered'!
disconnect
    | recoveredValue0 |
    recoveredValue0 := (self) owner.
    (self) disconnectFromOwner: (recoveredValue0).
    ^self
! !

"winsys.ic method 0x2000711c; bytecode file offset 0x8346c"
!CwTextManager methodsFor: 'recovered'!
owner: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    owner := recoveredValue0.
    ^self
! !

"winsys.ic method 0x2000e894; bytecode file offset 0x8aa60"
!CwTextManager methodsFor: 'recovered'!
connect
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) owner.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack1) initializeConnection.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) owner.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack0) connectToOwner: (recoveredStack1).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

