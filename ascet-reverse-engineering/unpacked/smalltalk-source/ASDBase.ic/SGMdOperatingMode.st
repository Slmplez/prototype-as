"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20055170; bytecode file offset 0x952a9c"
!SGMdOperatingMode methodsFor: 'recovered'!
mdlAcceptNodeVisitor: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) operatingMode: (self).
    ^recoveredValue1
! !

"ASDBase.ic method 0x2006171c; bytecode file offset 0x95e838"
!SGMdOperatingMode methodsFor: 'recovered'!
isMdlInactiveMode
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) mdlLabel.
    recoveredValue1 := (recoveredValue0) equals: ('inactive').
    ^recoveredValue1
! !

"ASDBase.ic method 0x20069f28; bytecode file offset 0x966bdc"
!SGMdOperatingMode methodsFor: 'recovered'!
mdlName
    | recoveredValue0 |
    recoveredValue0 := name.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006a4bc; bytecode file offset 0x967a18"
!SGMdOperatingMode methodsFor: 'recovered'!
id
    | recoveredValue0 |
    recoveredValue0 := id.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006bbe0; bytecode file offset 0x96873c"
!SGMdOperatingMode methodsFor: 'recovered'!
tasks
    | recoveredValue0 |
    recoveredValue0 := tasks.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006c004; bytecode file offset 0x9692b0"
!SGMdOperatingMode methodsFor: 'recovered'!
startMode
    | recoveredValue0 |
    recoveredValue0 := startMode.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006d240; bytecode file offset 0x969c04"
!SGMdOperatingMode methodsFor: 'recovered'!
ctMode
    | recoveredValue0 |
    recoveredValue0 := ctMode.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200764b4; bytecode file offset 0x9757c8"
!SGMdOperatingMode methodsFor: 'recovered'!
isMdlOpMode
    ^true
! !

"ASDBase.ic method 0x200978a4; bytecode file offset 0x995850"
!SGMdOperatingMode methodsFor: 'recovered'!
addTask: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) tasks.
    recoveredValue1 := recoveredArg1.
    (recoveredValue0) addLast: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x200c1280; bytecode file offset 0x9bdf14"
!SGMdOperatingMode methodsFor: 'recovered'!
mdlName: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    name := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c1e7c; bytecode file offset 0x9beac8"
!SGMdOperatingMode methodsFor: 'recovered'!
id: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    id := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c311c; bytecode file offset 0x9bfde0"
!SGMdOperatingMode methodsFor: 'recovered'!
startMode: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    startMode := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c38c0; bytecode file offset 0x9c058c"
!SGMdOperatingMode methodsFor: 'recovered'!
ctMode: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    ctMode := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200f7bb4; bytecode file offset 0x9f4e38"
!SGMdOperatingMode methodsFor: 'recovered'!
timerTasks
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) tasks.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := [:block280c4f8cArg1 | 
    | block280c4f8cValue0 block280c4f8cValue1 |
    block280c4f8cValue0 := block280c4f8cArg1.
    block280c4f8cValue1 := (block280c4f8cValue0) isMdlTimerTask.
    block280c4f8cValue1
].
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) select: (recoveredStack1).
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x200f7d1c; bytecode file offset 0x9f4e38"
!SGMdOperatingMode methodsFor: 'recovered'!
eventTasks
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) tasks.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := [:block280c51a8Arg1 | 
    | block280c51a8Value0 block280c51a8Value1 |
    block280c51a8Value0 := block280c51a8Arg1.
    block280c51a8Value1 := (block280c51a8Value0) isMdlEventTask.
    block280c51a8Value1
].
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) select: (recoveredStack1).
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x200f80dc; bytecode file offset 0x9f4e38"
!SGMdOperatingMode methodsFor: 'recovered'!
initTasks
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) tasks.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := [:block280c5748Arg1 | 
    | block280c5748Value0 block280c5748Value1 |
    block280c5748Value0 := block280c5748Arg1.
    block280c5748Value1 := (block280c5748Value0) isMdlInitTask.
    block280c5748Value1
].
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) select: (recoveredStack1).
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x200fa1f4; bytecode file offset 0x9f6ab8"
!SGMdOperatingMode methodsFor: 'recovered'!
initialize
    | recoveredValue0 recoveredValue1 |
    super initialize.
    recoveredValue0 := OrderedCollection.
    recoveredValue1 := (recoveredValue0) new.
    tasks := recoveredValue1.
    ^self
! !

