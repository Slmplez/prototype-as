"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"dbgrun.ic method 0x2000015c; bytecode file offset 0x7734"
!DbgWatch methodsFor: 'recovered'!
hasErrorOccurred
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) errorObject.
    recoveredValue1 := (recoveredValue0) notNil.
    ^recoveredValue1
! !

"dbgrun.ic method 0x20000310; bytecode file offset 0x78dc"
!DbgWatch methodsFor: 'recovered'!
unlock
    (self) stackFrame: (nil).
    ^self
! !

"dbgrun.ic method 0x20000410; bytecode file offset 0x79cc"
!DbgWatch methodsFor: 'recovered'!
expression
    | recoveredValue0 |
    recoveredValue0 := expression.
    ^recoveredValue0
! !

"dbgrun.ic method 0x2000042c; bytecode file offset 0x79f8"
!DbgWatch methodsFor: 'recovered'!
value
    | recoveredValue0 |
    recoveredValue0 := value.
    ^recoveredValue0
! !

"dbgrun.ic method 0x20000468; bytecode file offset 0x7a24"
!DbgWatch methodsFor: 'recovered'!
stackFrame
    | recoveredValue0 |
    recoveredValue0 := stackFrame.
    ^recoveredValue0
! !

"dbgrun.ic method 0x200004dc; bytecode file offset 0x7ab0"
!DbgWatch methodsFor: 'recovered'!
cachedMethod
    | recoveredValue0 |
    recoveredValue0 := cachedMethod.
    ^recoveredValue0
! !

"dbgrun.ic method 0x20000508; bytecode file offset 0x7adc"
!DbgWatch methodsFor: 'recovered'!
errorObject
    | recoveredValue0 |
    recoveredValue0 := errorObject.
    ^recoveredValue0
! !

"dbgrun.ic method 0x20000544; bytecode file offset 0x7b00"
!DbgWatch methodsFor: 'recovered'!
commitChanges
    | recoveredValue0 |
    recoveredValue0 := commitChanges.
    ^recoveredValue0
! !

"dbgrun.ic method 0x20000558; bytecode file offset 0x7b1c"
!DbgWatch methodsFor: 'recovered'!
trapErrors
    | recoveredValue0 |
    recoveredValue0 := trapErrors.
    ^recoveredValue0
! !

"dbgrun.ic method 0x20000574; bytecode file offset 0x7b30"
!DbgWatch methodsFor: 'recovered'!
sourceManager
    | recoveredValue0 |
    recoveredValue0 := sourceManager.
    ^recoveredValue0
! !

"dbgrun.ic method 0x20000620; bytecode file offset 0x7be0"
!DbgWatch methodsFor: 'recovered'!
lockToFrame: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) stackFrame: (recoveredValue0).
    ^self
! !

"dbgrun.ic method 0x20000748; bytecode file offset 0x7d04"
!DbgWatch methodsFor: 'recovered'!
flushCachedState
    lastContext := nil.
    lastMethod := nil.
    ^self
! !

"dbgrun.ic method 0x200007c4; bytecode file offset 0x7d84"
!DbgWatch methodsFor: 'recovered'!
expression: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    expression := recoveredValue0.
    (self) flushCachedState.
    ^self
! !

"dbgrun.ic method 0x20000918; bytecode file offset 0x7ed4"
!DbgWatch methodsFor: 'recovered'!
value: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    value := recoveredValue0.
    ^self
! !

"dbgrun.ic method 0x20000954; bytecode file offset 0x7f10"
!DbgWatch methodsFor: 'recovered'!
stackFrame: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    stackFrame := recoveredValue0.
    ^self
! !

"dbgrun.ic method 0x200009c8; bytecode file offset 0x7f8c"
!DbgWatch methodsFor: 'recovered'!
cachedMethod: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    cachedMethod := recoveredValue0.
    ^self
! !

"dbgrun.ic method 0x200009fc; bytecode file offset 0x7fb8"
!DbgWatch methodsFor: 'recovered'!
errorObject: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    errorObject := recoveredValue0.
    ^self
! !

"dbgrun.ic method 0x20000a10; bytecode file offset 0x7fd4"
!DbgWatch methodsFor: 'recovered'!
commitChanges: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    commitChanges := recoveredValue0.
    ^self
! !

"dbgrun.ic method 0x20000a34; bytecode file offset 0x7ff0"
!DbgWatch methodsFor: 'recovered'!
trapErrors: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    trapErrors := recoveredValue0.
    ^self
! !

"dbgrun.ic method 0x20000a48; bytecode file offset 0x8004"
!DbgWatch methodsFor: 'recovered'!
sourceManager: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    sourceManager := recoveredValue0.
    ^self
! !

"dbgrun.ic method 0x20000bf4; bytecode file offset 0x81b8"
!DbgWatch methodsFor: 'recovered'!
isLockedToFrame
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
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
            recoveredStack2 := (recoveredStack2) stackFrame.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack2 == nil) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) stackFrame.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) isValid.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"dbgrun.ic method 0x20000e7c; bytecode file offset 0x8440"
!DbgWatch methodsFor: 'recovered'!
receiverForEvaluation: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := (recoveredStack1) isReceiverVisible.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) receiver.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredPC := 17.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"dbgrun.ic method 0x20000fb8; bytecode file offset 0x8584"
!DbgWatch methodsFor: 'recovered'!
errorNoCompilerFacilities
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := DbgError.
    recoveredValue1 := (recoveredValue0) new.
    recoveredValue2 := recoveredValue1.
    (recoveredValue2) errorCode: (1008).
    recoveredValue3 := recoveredValue1.
    (recoveredValue3) errorObject: (self).
    (self) errorObject: (recoveredValue1).
    ^self
! !

"dbgrun.ic method 0x20000fe8; bytecode file offset 0x85b0"
!DbgWatch methodsFor: 'recovered'!
hasCompilerErrorOccurred
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
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
            recoveredStack2 := (recoveredStack2) errorObject.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := (recoveredStack2) isDbgError.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 21].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) errorObject.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) errorCode.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := 1003.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := (recoveredStack1) == (recoveredStack2).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"dbgrun.ic method 0x20001014; bytecode file offset 0x85e0"
!DbgWatch methodsFor: 'recovered'!
errorDuringEvaluation: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := DbgError.
    recoveredValue1 := (recoveredValue0) new.
    recoveredValue2 := recoveredValue1.
    (recoveredValue2) errorCode: (1004).
    recoveredValue3 := recoveredValue1.
    recoveredValue4 := recoveredArg1.
    (recoveredValue3) errorObject: (recoveredValue4).
    (self) errorObject: (recoveredValue1).
    ^self
! !

"dbgrun.ic method 0x2000133c; bytecode file offset 0x891c"
!DbgWatch methodsFor: 'recovered'!
printOn: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := recoveredArg1.
    super printOn: (recoveredValue0).
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := MxDBG27.
    recoveredValue3 := (recoveredValue2) addLineDelimiters.
    recoveredValue4 := (self) expression.
    recoveredValue5 := (self) value.
    recoveredValue6 := (recoveredValue5) printString.
    recoveredValue7 := (recoveredValue3) bindWith: (recoveredValue4) with: (recoveredValue6).
    (recoveredValue1) nextPutAll: (recoveredValue7).
    ^self
! !

"dbgrun.ic method 0x200018f4; bytecode file offset 0x8eb8"
!DbgWatch methodsFor: 'recovered'!
mustRecomputeMethodFor: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := lastMethod.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 24] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := lastContext.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 24] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := cachedMethod.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 24] ifFalse: [recoveredPC := 22].
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack2 := lastMethod.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack3 := (recoveredStack3) method.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack2 := (recoveredStack2) ~= (recoveredStack3).
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 40] ifFalse: [recoveredPC := 34].
        ].
        recoveredStep = 34 ifTrue: [
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := lastContext.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack2 := (recoveredStack2) context.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack1 := (recoveredStack1) ~= (recoveredStack2).
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"dbgrun.ic method 0x200021bc; bytecode file offset 0x97a0"
!DbgWatch methodsFor: 'recovered'!
evaluateIn: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0) errorObject: (recoveredStack1).
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := (recoveredStack0) isLockedToFrame.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 27].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) stackFrame.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := (recoveredStack0) isValid.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 27] ifFalse: [recoveredPC := 22].
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            (recoveredStack0) unlock.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack0 := (recoveredStack0) mustRecomputeMethodFor: (recoveredStack1).
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 34] ifFalse: [recoveredPC := 54].
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack0 := (recoveredStack0) sourceManager.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 45] ifFalse: [recoveredPC := 40].
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            (recoveredStack0) errorNoCompilerFacilities.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack0 := (recoveredStack0) recomputeMethodFor: (recoveredStack1).
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 54] ifFalse: [recoveredPC := 52].
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack0 := (recoveredStack0) updateValueFromFrame: (recoveredStack1).
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"dbgrun.ic method 0x20002694; bytecode file offset 0x9c84"
!DbgWatch methodsFor: 'recovered'!
updateValueFromFrame: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := [
    | recoveredBlock4Value0 recoveredBlock4Value1 recoveredBlock4Value2 recoveredBlock4Value3 recoveredBlock4Value4 recoveredBlock4Value5 recoveredBlock4Value6 recoveredBlock4Value7 recoveredBlock4Value8 |
    recoveredBlock4Value0 := (self) cachedMethod.
    recoveredBlock4Value1 := recoveredArg1.
    recoveredBlock4Value2 := (self) receiverForEvaluation: (recoveredBlock4Value1).
    recoveredBlock4Value3 := Array.
    recoveredBlock4Value4 := recoveredArg1.
    recoveredBlock4Value5 := (self) commitChanges.
    recoveredBlock4Value6 := (recoveredBlock4Value3) with: (recoveredBlock4Value4) with: (recoveredBlock4Value5).
    recoveredBlock4Value7 := (recoveredBlock4Value0) executeWithReceiver: (recoveredBlock4Value2) andArguments: (recoveredBlock4Value6).
    recoveredBlock4Value8 := (self) value: (recoveredBlock4Value7).
    recoveredBlock4Value8
].
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := (recoveredStack0) trapErrors.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 47] ifFalse: [recoveredPC := 40].
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            (recoveredStack0) value.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack0 := true.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack1 := ExError.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack2 := [:recoveredBlock56Arg1 | 
    | recoveredBlock56Value0 recoveredBlock56Value1 recoveredBlock56Value2 |
    recoveredLocal1 := true.
    recoveredBlock56Value0 := recoveredBlock56Arg1.
    (self) errorDuringEvaluation: (recoveredBlock56Value0).
    recoveredBlock56Value1 := recoveredBlock56Arg1.
    recoveredBlock56Value2 := (recoveredBlock56Value1) exitWith: (nil).
    recoveredBlock56Value2
].
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            (recoveredStack0) when: (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack0 := (recoveredStack0) not.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

