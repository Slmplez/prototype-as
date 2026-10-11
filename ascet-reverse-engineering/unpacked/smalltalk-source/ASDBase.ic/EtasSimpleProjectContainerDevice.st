"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2000d90c; bytecode file offset 0x90a4b8"
!EtasSimpleProjectContainerDevice methodsFor: 'recovered'!
selectableLabelsFrom: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2002eed4; bytecode file offset 0x934580"
!EtasSimpleProjectContainerDevice methodsFor: 'recovered'!
name
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) class.
    recoveredValue1 := (recoveredValue0) name.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20066a34; bytecode file offset 0x963428"
!EtasSimpleProjectContainerDevice methodsFor: 'recovered'!
project
    | recoveredValue0 |
    recoveredValue0 := project.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200778dc; bytecode file offset 0x9757c8"
!EtasSimpleProjectContainerDevice methodsFor: 'recovered'!
isCalibrationDevice
    ^true
! !

"ASDBase.ic method 0x200be264; bytecode file offset 0x9bb178"
!EtasSimpleProjectContainerDevice methodsFor: 'recovered'!
assignProject: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    project := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200be274; bytecode file offset 0x9bb178"
!EtasSimpleProjectContainerDevice methodsFor: 'recovered'!
project: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    project := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200f9224; bytecode file offset 0x9f5ae4"
!EtasSimpleProjectContainerDevice methodsFor: 'recovered'!
projectNodeTree
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) project.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := ASAP2ModuleLabel.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) createFor: (recoveredStack1).
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

