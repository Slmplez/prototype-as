"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x200128b8; bytecode file offset 0x912098"
!EtasDatabaseWidget class methodsFor: 'recovered'!
controllerClass
    | recoveredValue0 |
    recoveredValue0 := EtasDatabaseWidgetCtrl.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2001c544; bytecode file offset 0x92209c"
!EtasDatabaseWidget class methodsFor: 'recovered'!
pasteBufferItemString
    ^'item'
! !

"ASDBase.ic method 0x2006f890; bytecode file offset 0x96c1f4"
!EtasDatabaseWidget class methodsFor: 'recovered'!
pasteBuffer
    | recoveredValue0 |
    recoveredValue0 := pasteBuffer.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200c5e68; bytecode file offset 0x9c2804"
!EtasDatabaseWidget class methodsFor: 'recovered'!
pasteBuffer: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    pasteBuffer := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c603c; bytecode file offset 0x9c29e8"
!EtasDatabaseWidget class methodsFor: 'recovered'!
splitBarPosition: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    splitBarPosition := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x20116900; bytecode file offset 0xa131b4"
!EtasDatabaseWidget class methodsFor: 'recovered'!
splitBarPosition
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := splitBarPosition.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 13] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := splitBarPosition.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := 66.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

