"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20002520; bytecode file offset 0x8ffcfc"
!EtasSeparator methodsFor: 'recovered'!
updateOSLabel
    ^self
! !

"ASDBase.ic method 0x200713d0; bytecode file offset 0x96dcac"
!EtasSeparator methodsFor: 'recovered'!
menuItemPosition
    | recoveredValue0 |
    recoveredValue0 := menuItemPosition.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200c7958; bytecode file offset 0x9c420c"
!EtasSeparator methodsFor: 'recovered'!
menuItemPosition: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    menuItemPosition := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x201060d8; bytecode file offset 0xa029c0"
!EtasSeparator methodsFor: 'recovered'!
osWidgetClass
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := cwParent.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) isMenu.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 13].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := EtasOSMenuItem.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := OSStatic.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

