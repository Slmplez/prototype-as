"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20040d08; bytecode file offset 0x93d83c"
!SGSimEventGeneratorC methodsFor: 'recovered'!
dataGeneratorDic
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := mainController.
    recoveredValue1 := (recoveredValue0) dataGeneratorDic.
    ^recoveredValue1
! !

"ASDBase.ic method 0x200414e0; bytecode file offset 0x93e1a0"
!SGSimEventGeneratorC methodsFor: 'recovered'!
allEvents
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := simulator.
    recoveredValue1 := (recoveredValue0) allEvents.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20041678; bytecode file offset 0x93e1a0"
!SGSimEventGeneratorC methodsFor: 'recovered'!
activeEvents
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := simulator.
    recoveredValue1 := (recoveredValue0) activeEvents.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20041720; bytecode file offset 0x93e1a0"
!SGSimEventGeneratorC methodsFor: 'recovered'!
getCTParameter
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := simulator.
    recoveredValue1 := (recoveredValue0) ctParameter.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2005d624; bytecode file offset 0x959f30"
!SGSimEventGeneratorC methodsFor: 'recovered'!
getTopClassLabel
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := mainController.
    recoveredValue1 := (recoveredValue0) getTopClass.
    recoveredValue2 := (recoveredValue1) label.
    ^recoveredValue2
! !

"ASDBase.ic method 0x2005e528; bytecode file offset 0x95adf8"
!SGSimEventGeneratorC methodsFor: 'recovered'!
initialize
    selectedEvents := #().
    ^self
! !

"ASDBase.ic method 0x200681fc; bytecode file offset 0x965b90"
!SGSimEventGeneratorC methodsFor: 'recovered'!
selectedEvents
    | recoveredValue0 |
    recoveredValue0 := selectedEvents.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200697a0; bytecode file offset 0x966bdc"
!SGSimEventGeneratorC methodsFor: 'recovered'!
simulator
    | recoveredValue0 |
    recoveredValue0 := simulator.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2008226c; bytecode file offset 0x97eb24"
!SGSimEventGeneratorC methodsFor: 'recovered'!
updateCTParameter: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := simulator.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) updateCTParameter: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x200c041c; bytecode file offset 0x9bd228"
!SGSimEventGeneratorC methodsFor: 'recovered'!
selectedEvents: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    selectedEvents := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c0c30; bytecode file offset 0x9bdf14"
!SGSimEventGeneratorC methodsFor: 'recovered'!
simulator: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    simulator := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x2015ca2c; bytecode file offset 0xa592f8"
!SGSimEventGeneratorC methodsFor: 'recovered'!
update
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := userInterface.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := userInterface.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) isDestroyed.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := userInterface.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            (recoveredStack1) updateWidgets.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

