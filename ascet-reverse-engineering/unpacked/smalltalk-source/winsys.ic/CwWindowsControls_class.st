"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"winsys.ic method 0x20002174; bytecode file offset 0x7e36c"
!CwWindowsControls class methodsFor: 'recovered'!
startUp
    | recoveredValue0 |
    recoveredValue0 := OS.
    (recoveredValue0) initCommonControls.
    ^self
! !

"winsys.ic method 0x20009d90; bytecode file offset 0x85f5c"
!CwWindowsControls class methodsFor: 'recovered'!
loaded
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := System.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) imageStarted.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 13].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack1) startUp.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

