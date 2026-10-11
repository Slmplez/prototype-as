"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x200641e4; bytecode file offset 0x961970"
!BooleanTableCtrl methodsFor: 'recovered'!
addOutput
    | recoveredValue0 |
    recoveredValue0 := (self) model.
    (recoveredValue0) addOutput.
    ^self
! !

"ASDBase.ic method 0x200645b4; bytecode file offset 0x961970"
!BooleanTableCtrl methodsFor: 'recovered'!
addInput
    | recoveredValue0 |
    recoveredValue0 := (self) model.
    (recoveredValue0) addInput.
    ^self
! !

"ASDBase.ic method 0x20064994; bytecode file offset 0x961970"
!BooleanTableCtrl methodsFor: 'recovered'!
removeOutput
    | recoveredValue0 |
    recoveredValue0 := (self) model.
    (recoveredValue0) removeLastOutput.
    ^self
! !

"ASDBase.ic method 0x20064a24; bytecode file offset 0x961970"
!BooleanTableCtrl methodsFor: 'recovered'!
removeInput
    | recoveredValue0 |
    recoveredValue0 := (self) model.
    (recoveredValue0) removeLastInput.
    ^self
! !

"ASDBase.ic method 0x20064b04; bytecode file offset 0x961970"
!BooleanTableCtrl methodsFor: 'recovered'!
removeCombination
    | recoveredValue0 |
    recoveredValue0 := (self) model.
    (recoveredValue0) removeLastCombination.
    ^self
! !

"ASDBase.ic method 0x20065084; bytecode file offset 0x961970"
!BooleanTableCtrl methodsFor: 'recovered'!
addCombination
    | recoveredValue0 |
    recoveredValue0 := (self) model.
    (recoveredValue0) addCombination.
    ^self
! !

"ASDBase.ic method 0x200667ec; bytecode file offset 0x963428"
!BooleanTableCtrl methodsFor: 'recovered'!
model
    | recoveredValue0 |
    recoveredValue0 := model.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006726c; bytecode file offset 0x9646f8"
!BooleanTableCtrl methodsFor: 'recovered'!
view
    | recoveredValue0 |
    recoveredValue0 := view.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200974a4; bytecode file offset 0x995850"
!BooleanTableCtrl methodsFor: 'recovered'!
outputNameAt: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) model.
    recoveredValue1 := recoveredArg1.
    (recoveredValue0) outputNameAt: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x200974d4; bytecode file offset 0x995850"
!BooleanTableCtrl methodsFor: 'recovered'!
addInputs: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) model.
    recoveredValue1 := recoveredArg1.
    (recoveredValue0) addInputs: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x20097c24; bytecode file offset 0x995850"
!BooleanTableCtrl methodsFor: 'recovered'!
addOutputs: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) model.
    recoveredValue1 := recoveredArg1.
    (recoveredValue0) addOutputs: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x20097c74; bytecode file offset 0x995850"
!BooleanTableCtrl methodsFor: 'recovered'!
removeCombinations: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) model.
    recoveredValue1 := recoveredArg1.
    (recoveredValue0) removeCombinations: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x20098464; bytecode file offset 0x995850"
!BooleanTableCtrl methodsFor: 'recovered'!
removeInputs: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) model.
    recoveredValue1 := recoveredArg1.
    (recoveredValue0) removeInputs: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x20098594; bytecode file offset 0x995850"
!BooleanTableCtrl methodsFor: 'recovered'!
removeOutputs: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) model.
    recoveredValue1 := recoveredArg1.
    (recoveredValue0) removeOutputs: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x20098a04; bytecode file offset 0x995850"
!BooleanTableCtrl methodsFor: 'recovered'!
inputNameAt: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) model.
    recoveredValue1 := recoveredArg1.
    (recoveredValue0) inputNameAt: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x20098de4; bytecode file offset 0x995850"
!BooleanTableCtrl methodsFor: 'recovered'!
addCombinations: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) model.
    recoveredValue1 := recoveredArg1.
    (recoveredValue0) addCombinations: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x200a0338; bytecode file offset 0x99cc0c"
!BooleanTableCtrl methodsFor: 'recovered'!
outputCombinations
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) model.
    recoveredValue1 := (recoveredValue0) outputs.
    recoveredValue2 := (2) raisedTo: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x200a034c; bytecode file offset 0x99cc0c"
!BooleanTableCtrl methodsFor: 'recovered'!
inputCombinations
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) model.
    recoveredValue1 := (recoveredValue0) inputs.
    recoveredValue2 := (2) raisedTo: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x200ae258; bytecode file offset 0x9ab034"
!BooleanTableCtrl methodsFor: 'recovered'!
setInputName: recoveredArg1 atIndex: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) model.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    (recoveredValue0) setInputName: (recoveredValue1) atIndex: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x200ae298; bytecode file offset 0x9ab034"
!BooleanTableCtrl methodsFor: 'recovered'!
setOutputName: recoveredArg1 atIndex: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) model.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    (recoveredValue0) setOutputName: (recoveredValue1) atIndex: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x200ae2c8; bytecode file offset 0x9ab034"
!BooleanTableCtrl methodsFor: 'recovered'!
swapCombinationAtIndex: recoveredArg1 with: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) model.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    (recoveredValue0) swapCombinationAtIndex: (recoveredValue1) with: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x200ae428; bytecode file offset 0x9ab034"
!BooleanTableCtrl methodsFor: 'recovered'!
inputCharAt: recoveredArg1 put: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) model.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    (recoveredValue0) inputCharAt: (recoveredValue1) put: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x200ae4d8; bytecode file offset 0x9ab034"
!BooleanTableCtrl methodsFor: 'recovered'!
swapOutputAtIndex: recoveredArg1 with: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) model.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    (recoveredValue0) swapOutputAtIndex: (recoveredValue1) with: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x200ae538; bytecode file offset 0x9ab034"
!BooleanTableCtrl methodsFor: 'recovered'!
swapInputAtIndex: recoveredArg1 with: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) model.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    (recoveredValue0) swapInputAtIndex: (recoveredValue1) with: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x200ae648; bytecode file offset 0x9ab034"
!BooleanTableCtrl methodsFor: 'recovered'!
swapCombiAtIndex: recoveredArg1 with: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) model.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    (recoveredValue0) swapCombiAtIndex: (recoveredValue1) with: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x200ae6d8; bytecode file offset 0x9ab034"
!BooleanTableCtrl methodsFor: 'recovered'!
outputCharAt: recoveredArg1 put: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) model.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    (recoveredValue0) outputCharAt: (recoveredValue1) put: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x200be3ec; bytecode file offset 0x9bb178"
!BooleanTableCtrl methodsFor: 'recovered'!
model: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    model := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200beec0; bytecode file offset 0x9bc0b4"
!BooleanTableCtrl methodsFor: 'recovered'!
view: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    view := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200e48dc; bytecode file offset 0x9e119c"
!BooleanTableCtrl methodsFor: 'recovered'!
releaseController
    | recoveredValue0 |
    recoveredValue0 := (self) model.
    (recoveredValue0) removeDependent: (self).
    (self) model: (nil).
    ^self
! !

"ASDBase.ic method 0x20113e48; bytecode file offset 0xa1071c"
!BooleanTableCtrl methodsFor: 'recovered'!
setUniqueInputName: recoveredArg1 atIndex: recoveredArg2
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := (self) model.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) uniqueInputNameFor: (recoveredValue1).
    recoveredLocal1 := recoveredValue2.
    recoveredValue3 := (self) model.
    recoveredValue4 := recoveredLocal1.
    recoveredValue5 := recoveredArg2.
    (recoveredValue3) setInputName: (recoveredValue4) atIndex: (recoveredValue5).
    ^self
! !

"ASDBase.ic method 0x20113e5c; bytecode file offset 0xa1071c"
!BooleanTableCtrl methodsFor: 'recovered'!
setUniqueOutputName: recoveredArg1 atIndex: recoveredArg2
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := (self) model.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) uniqueInputNameFor: (recoveredValue1).
    recoveredLocal1 := recoveredValue2.
    recoveredValue3 := (self) model.
    recoveredValue4 := recoveredLocal1.
    recoveredValue5 := recoveredArg2.
    (recoveredValue3) setOutputName: (recoveredValue4) atIndex: (recoveredValue5).
    ^self
! !

"ASDBase.ic method 0x20122704; bytecode file offset 0xa1efc4"
!BooleanTableCtrl methodsFor: 'recovered'!
initialize: recoveredArg1 withView: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    (self) model: (recoveredValue0).
    recoveredValue1 := recoveredArg2.
    (self) view: (recoveredValue1).
    recoveredValue2 := recoveredArg1.
    (recoveredValue2) addDependent: (self).
    ^self
! !

"ASDBase.ic method 0x201286a4; bytecode file offset 0xa24f80"
!BooleanTableCtrl methodsFor: 'recovered'!
completeInputRows
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := System.
    recoveredValue1 := [
    | recoveredBlock6Value0 recoveredBlock6Value1 |
    recoveredBlock6Value0 := (self) model.
    recoveredBlock6Value1 := (recoveredBlock6Value0) completeInputRows.
    recoveredBlock6Value1
].
    (recoveredValue0) showBusyCursorWhile: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x201286bc; bytecode file offset 0xa24f80"
!BooleanTableCtrl methodsFor: 'recovered'!
completeOutputRows
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := System.
    recoveredValue1 := [
    | recoveredBlock6Value0 recoveredBlock6Value1 |
    recoveredBlock6Value0 := (self) model.
    recoveredBlock6Value1 := (recoveredBlock6Value0) completeOutputRows.
    recoveredBlock6Value1
].
    (recoveredValue0) showBusyCursorWhile: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x2014aebc; bytecode file offset 0xa47790"
!BooleanTableCtrl methodsFor: 'recovered'!
getOutputNameAtIndex: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) model.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack0 := (recoveredStack0) outputNameAt: (recoveredStack1).
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredPC := 18.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := ''.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2014aed0; bytecode file offset 0xa47790"
!BooleanTableCtrl methodsFor: 'recovered'!
getInputNameAtIndex: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) model.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack0 := (recoveredStack0) inputNameAt: (recoveredStack1).
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredPC := 18.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := ''.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20153e84; bytecode file offset 0xa507a8"
!BooleanTableCtrl methodsFor: 'recovered'!
addCombinationBeforeIndex: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack2 := 1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack3 := (recoveredStack3) model.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack3 := (recoveredStack3) combinations.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := (recoveredStack1) between: (recoveredStack2) and: (recoveredStack3).
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 19].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) model.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack1) addCombinationBeforeIndex: (recoveredStack2).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20153e98; bytecode file offset 0xa507a8"
!BooleanTableCtrl methodsFor: 'recovered'!
removeInputAtIndex: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack2 := 1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack3 := (recoveredStack3) model.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack3 := (recoveredStack3) inputs.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := (recoveredStack1) between: (recoveredStack2) and: (recoveredStack3).
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 19].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) model.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack1) removeInputAtIndex: (recoveredStack2).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20153eac; bytecode file offset 0xa507a8"
!BooleanTableCtrl methodsFor: 'recovered'!
addOutputBeforeIndex: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack2 := 1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack3 := (recoveredStack3) model.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack3 := (recoveredStack3) outputs.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := (recoveredStack1) between: (recoveredStack2) and: (recoveredStack3).
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 19].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) model.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack1) addOutputBeforeIndex: (recoveredStack2).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20153ec0; bytecode file offset 0xa507a8"
!BooleanTableCtrl methodsFor: 'recovered'!
removeOutputAtIndex: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack2 := 1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack3 := (recoveredStack3) model.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack3 := (recoveredStack3) outputs.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := (recoveredStack1) between: (recoveredStack2) and: (recoveredStack3).
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 19].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) model.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack1) removeOutputAtIndex: (recoveredStack2).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20153ed4; bytecode file offset 0xa507a8"
!BooleanTableCtrl methodsFor: 'recovered'!
addInputBeforeIndex: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack2 := 1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack3 := (recoveredStack3) model.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack3 := (recoveredStack3) inputs.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := (recoveredStack1) between: (recoveredStack2) and: (recoveredStack3).
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 19].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) model.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack1) addInputBeforeIndex: (recoveredStack2).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20153ee8; bytecode file offset 0xa507a8"
!BooleanTableCtrl methodsFor: 'recovered'!
removeCombinationAtIndex: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack2 := 1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack3 := (recoveredStack3) model.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack3 := (recoveredStack3) combinations.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := (recoveredStack1) between: (recoveredStack2) and: (recoveredStack3).
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 19].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) model.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack1) removeCombinationAtIndex: (recoveredStack2).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201c6f30; bytecode file offset 0xac37fc"
!BooleanTableCtrl methodsFor: 'recovered'!
setDefaultMatrix
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := System.
    recoveredValue1 := [
    | recoveredBlock6Value0 recoveredBlock6Value1 recoveredBlock6Value2 recoveredBlock6Value3 |
    recoveredBlock6Value0 := (self) model.
    (recoveredBlock6Value0) removeAllCombinations.
    recoveredBlock6Value1 := (self) model.
    recoveredBlock6Value2 := (self) inputCombinations.
    recoveredBlock6Value3 := (recoveredBlock6Value1) addCombinations: (recoveredBlock6Value2) startValue: (0).
    recoveredBlock6Value3
].
    (recoveredValue0) showBusyCursorWhile: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x202440ac; bytecode file offset 0xb409a0"
!BooleanTableCtrl methodsFor: 'recovered'!
setCombinations: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) model.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) combinations.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack0 == recoveredStack1) ifTrue: [recoveredPC := 34] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := (recoveredStack0) > (recoveredStack1).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 28].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := (recoveredStack1) - (recoveredStack2).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            (recoveredStack0) addCombinations: (recoveredStack1).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredPC := 34.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := (recoveredStack1) - (recoveredStack2).
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            (recoveredStack0) removeCombinations: (recoveredStack1).
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x202440c4; bytecode file offset 0xb409a0"
!BooleanTableCtrl methodsFor: 'recovered'!
setOutputs: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) model.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) outputs.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack0 == recoveredStack1) ifTrue: [recoveredPC := 34] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := (recoveredStack0) > (recoveredStack1).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 28].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := (recoveredStack1) - (recoveredStack2).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            (recoveredStack0) addOutputs: (recoveredStack1).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredPC := 34.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := (recoveredStack1) - (recoveredStack2).
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            (recoveredStack0) removeOutputs: (recoveredStack1).
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x202440dc; bytecode file offset 0xb409a0"
!BooleanTableCtrl methodsFor: 'recovered'!
setInputs: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) model.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) inputs.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack0 == recoveredStack1) ifTrue: [recoveredPC := 34] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := (recoveredStack0) > (recoveredStack1).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 28].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := (recoveredStack1) - (recoveredStack2).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            (recoveredStack0) addInputs: (recoveredStack1).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredPC := 34.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := (recoveredStack1) - (recoveredStack2).
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            (recoveredStack0) removeInputs: (recoveredStack1).
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

