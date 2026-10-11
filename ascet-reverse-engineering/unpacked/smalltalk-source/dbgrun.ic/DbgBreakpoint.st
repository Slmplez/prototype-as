"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"dbgrun.ic method 0x200003c0; bytecode file offset 0x7980"
!DbgBreakpoint methodsFor: 'recovered'!
isNull
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) number.
    recoveredValue1 := (recoveredValue0) == (0).
    ^recoveredValue1
! !

"dbgrun.ic method 0x200003f0; bytecode file offset 0x79cc"
!DbgBreakpoint methodsFor: 'recovered'!
process
    | recoveredValue0 |
    recoveredValue0 := process.
    ^recoveredValue0
! !

"dbgrun.ic method 0x20000424; bytecode file offset 0x79f8"
!DbgBreakpoint methodsFor: 'recovered'!
parseNodeId
    | recoveredValue0 |
    recoveredValue0 := parseNodeId.
    ^recoveredValue0
! !

"dbgrun.ic method 0x20000450; bytecode file offset 0x7a24"
!DbgBreakpoint methodsFor: 'recovered'!
method
    | recoveredValue0 |
    recoveredValue0 := method.
    ^recoveredValue0
! !

"dbgrun.ic method 0x20000494; bytecode file offset 0x7a50"
!DbgBreakpoint methodsFor: 'recovered'!
number
    | recoveredValue0 |
    recoveredValue0 := number.
    ^recoveredValue0
! !

"dbgrun.ic method 0x200004c0; bytecode file offset 0x7a84"
!DbgBreakpoint methodsFor: 'recovered'!
isActive
    | recoveredValue0 |
    recoveredValue0 := active.
    ^recoveredValue0
! !

"dbgrun.ic method 0x200004ec; bytecode file offset 0x7ab0"
!DbgBreakpoint methodsFor: 'recovered'!
currentIteration
    | recoveredValue0 |
    recoveredValue0 := currentIteration.
    ^recoveredValue0
! !

"dbgrun.ic method 0x20000520; bytecode file offset 0x7adc"
!DbgBreakpoint methodsFor: 'recovered'!
triggerIteration
    | recoveredValue0 |
    recoveredValue0 := triggerIteration.
    ^recoveredValue0
! !

"dbgrun.ic method 0x2000053c; bytecode file offset 0x7b00"
!DbgBreakpoint methodsFor: 'recovered'!
watch
    | recoveredValue0 |
    recoveredValue0 := watch.
    ^recoveredValue0
! !

"dbgrun.ic method 0x20000654; bytecode file offset 0x7c14"
!DbgBreakpoint methodsFor: 'recovered'!
resetIterationsCounter
    (self) currentIteration: (0).
    ^self
! !

"dbgrun.ic method 0x2000075c; bytecode file offset 0x7d20"
!DbgBreakpoint methodsFor: 'recovered'!
incrementIterationCounter
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) currentIteration.
    recoveredValue1 := (recoveredValue0) + (1).
    (self) currentIteration: (recoveredValue1).
    ^self
! !

"dbgrun.ic method 0x200008ec; bytecode file offset 0x7ea8"
!DbgBreakpoint methodsFor: 'recovered'!
process: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    process := recoveredValue0.
    ^self
! !

"dbgrun.ic method 0x20000908; bytecode file offset 0x7ed4"
!DbgBreakpoint methodsFor: 'recovered'!
parseNodeId: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    parseNodeId := recoveredValue0.
    ^self
! !

"dbgrun.ic method 0x20000944; bytecode file offset 0x7f10"
!DbgBreakpoint methodsFor: 'recovered'!
method: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    method := recoveredValue0.
    ^self
! !

"dbgrun.ic method 0x20000970; bytecode file offset 0x7f2c"
!DbgBreakpoint methodsFor: 'recovered'!
number: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    number := recoveredValue0.
    ^self
! !

"dbgrun.ic method 0x2000099c; bytecode file offset 0x7f60"
!DbgBreakpoint methodsFor: 'recovered'!
active: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    active := recoveredValue0.
    ^self
! !

"dbgrun.ic method 0x200009c0; bytecode file offset 0x7f8c"
!DbgBreakpoint methodsFor: 'recovered'!
currentIteration: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    currentIteration := recoveredValue0.
    ^self
! !

"dbgrun.ic method 0x200009f4; bytecode file offset 0x7fb8"
!DbgBreakpoint methodsFor: 'recovered'!
triggerIteration: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    triggerIteration := recoveredValue0.
    ^self
! !

"dbgrun.ic method 0x20000a18; bytecode file offset 0x7fd4"
!DbgBreakpoint methodsFor: 'recovered'!
watch: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    watch := recoveredValue0.
    ^self
! !

"dbgrun.ic method 0x20000b38; bytecode file offset 0x80fc"
!DbgBreakpoint methodsFor: 'recovered'!
triggerExpression
    | recoveredStack0 recoveredStack1 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) watch.
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
            recoveredStack0 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) watch.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) expression.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"dbgrun.ic method 0x20000b58; bytecode file offset 0x8128"
!DbgBreakpoint methodsFor: 'recovered'!
installedMethod
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := (self) method.
    recoveredValue1 := (recoveredValue0) methodClass.
    recoveredValue2 := (self) method.
    recoveredValue3 := (recoveredValue2) selector.
    recoveredValue4 := [].
    recoveredValue5 := (recoveredValue1) compiledMethodAt: (recoveredValue3) ifAbsent: (recoveredValue4).
    ^recoveredValue5
! !

"dbgrun.ic method 0x20000dd8; bytecode file offset 0x8398"
!DbgBreakpoint methodsFor: 'recovered'!
isProcessConstraintSatisfied: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := (recoveredStack2) process.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack3 := recoveredStack2.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredLocal1 := recoveredStack3.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack2 == nil) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) == (recoveredStack2).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"dbgrun.ic method 0x20000df8; bytecode file offset 0x83c0"
!DbgBreakpoint methodsFor: 'recovered'!
clearState
    (self) process: (nil).
    (self) watch: (nil).
    (self) number: (0).
    ^self
! !

"dbgrun.ic method 0x20000ea0; bytecode file offset 0x8464"
!DbgBreakpoint methodsFor: 'recovered'!
isIterationsConstraintSatisfied
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := (recoveredStack2) triggerIteration.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack3 := recoveredStack2.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredLocal1 := recoveredStack3.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack2 == nil) ifTrue: [recoveredPC := 17] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) currentIteration.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"dbgrun.ic method 0x20000f1c; bytecode file offset 0x84f0"
!DbgBreakpoint methodsFor: 'recovered'!
printOn: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := recoveredArg1.
    super printOn: (recoveredValue0).
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := MxDBG14.
    recoveredValue3 := (self) shortDescription.
    recoveredValue4 := (recoveredValue2) bindWith: (recoveredValue3).
    (recoveredValue1) nextPutAll: (recoveredValue4).
    ^self
! !

"dbgrun.ic method 0x200010a0; bytecode file offset 0x86cc"
!DbgBreakpoint methodsFor: 'recovered'!
shortDescription
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 |
    recoveredValue0 := WriteStream.
    recoveredValue1 := Locale.
    recoveredValue2 := (recoveredValue1) current.
    recoveredValue3 := (recoveredValue2) preferredStringClass.
    recoveredValue4 := (recoveredValue3) new.
    recoveredValue5 := (recoveredValue0) on: (recoveredValue4).
    recoveredLocal1 := recoveredValue5.
    recoveredValue6 := recoveredLocal1.
    (self) printInfoOn: (recoveredValue6).
    recoveredValue7 := recoveredLocal1.
    recoveredValue8 := (recoveredValue7) contents.
    ^recoveredValue8
! !

"dbgrun.ic method 0x20001384; bytecode file offset 0x8954"
!DbgBreakpoint methodsFor: 'recovered'!
breakpointHit: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack3 := (recoveredStack3) process.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack2 := (recoveredStack2) isProcessConstraintSatisfied: (recoveredStack3).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 27].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := (recoveredStack2) isExpressionConstraintSatisfied: (recoveredStack3).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 27].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            (recoveredStack2) incrementIterationCounter.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIterationsConstraintSatisfied.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"dbgrun.ic method 0x20002064; bytecode file offset 0x9634"
!DbgBreakpoint methodsFor: 'recovered'!
isExpressionConstraintSatisfied: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := [
    | recoveredBlock4Value0 recoveredBlock4Value1 recoveredBlock4Value2 recoveredBlock4Value3 |
    recoveredBlock4Value0 := (self) triggerExpression.
    recoveredBlock4Value1 := (recoveredBlock4Value0) isNil.
    recoveredLocal1 := recoveredBlock4Value1.
    recoveredBlock4Value2 := (self) watch.
    recoveredBlock4Value3 := recoveredBlock4Value2.
    recoveredLocal2 := recoveredBlock4Value3.
    recoveredBlock4Value2
].
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            (recoveredStack1) critical.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 30] ifFalse: [recoveredPC := 34].
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredPC := 54.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack2 := (recoveredStack2) evaluateIn: (recoveredStack3).
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 46] ifFalse: [recoveredPC := 54].
        ].
        recoveredStep = 46 ifTrue: [
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack1 := (recoveredStack1) value.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack2 := true.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack1 := (recoveredStack1) == (recoveredStack2).
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"dbgrun.ic method 0x2000256c; bytecode file offset 0x9b64"
!DbgBreakpoint methodsFor: 'recovered'!
printInfoOn: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := OrderedCollection.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := 5.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) new: (recoveredStack2).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack3 := (recoveredStack3) method.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack3 := (recoveredStack3) printString.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack2) add: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack3 := (recoveredStack3) number.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack3 := (recoveredStack3) printString.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            (recoveredStack2) add: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack3 := (recoveredStack3) isActive.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            (recoveredStack3) ifTrue: [recoveredPC := 32] ifFalse: [recoveredPC := 38].
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack3 := MxDBG23.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredPC := 40.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack3 := MxDBG24.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            (recoveredStack2) add: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack3 := (recoveredStack3) currentIteration.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack3 := (recoveredStack3) printString.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            (recoveredStack2) add: (recoveredStack3).
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack2 := (recoveredStack2) triggerIteration.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            (recoveredStack2 ~~ nil) ifTrue: [recoveredPC := 62] ifFalse: [recoveredPC := 56].
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack2 := '*'.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredPC := 66.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack2 := (recoveredStack2) triggerIteration.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack2 := (recoveredStack2) printString.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            (recoveredStack1) add: (recoveredStack2).
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack2 := MxDBG25.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack2 := (recoveredStack2) bindWithArguments: (recoveredStack3).
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            (recoveredStack1) nextPutAll: (recoveredStack2).
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

