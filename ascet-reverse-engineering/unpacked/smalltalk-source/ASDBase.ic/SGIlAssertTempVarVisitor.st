"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2002b504; bytecode file offset 0x934580"
!SGIlAssertTempVarVisitor methodsFor: 'recovered'!
initializedTempVars
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) state.
    recoveredValue1 := (recoveredValue0) initializedTempVars.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2006be00; bytecode file offset 0x96873c"
!SGIlAssertTempVarVisitor methodsFor: 'recovered'!
visitedTempId
    | recoveredValue0 |
    recoveredValue0 := visitedTempId.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200979d4; bytecode file offset 0x995850"
!SGIlAssertTempVarVisitor methodsFor: 'recovered'!
tempAssignIdentifier: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) visitedTempId.
    recoveredValue1 := recoveredArg1.
    (recoveredValue0) add: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x2009cd54; bytecode file offset 0x999628"
!SGIlAssertTempVarVisitor methodsFor: 'recovered'!
initState
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := SGIlTempVarInitState.
    recoveredValue1 := (recoveredValue0) create.
    (self) state: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x20174cc8; bytecode file offset 0xa7158c"
!SGIlAssertTempVarVisitor methodsFor: 'recovered'!
assert: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    (self) initState.
    recoveredValue0 := Set.
    recoveredValue1 := (recoveredValue0) new.
    initializedTempVars := recoveredValue1.
    recoveredValue2 := Set.
    recoveredValue3 := (recoveredValue2) new.
    visitedTempId := recoveredValue3.
    recoveredValue4 := recoveredArg1.
    (self) visitNode: (recoveredValue4).
    ^self
! !

"ASDBase.ic method 0x201bfa98; bytecode file offset 0xabc360"
!SGIlAssertTempVarVisitor methodsFor: 'recovered'!
localScope: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 |
    recoveredValue0 := (self) state.
    recoveredValue1 := (recoveredValue0) copy.
    recoveredLocal3 := recoveredValue1.
    recoveredValue2 := (self) visitedTempId.
    recoveredValue3 := (recoveredValue2) copy.
    recoveredLocal2 := recoveredValue3.
    recoveredValue4 := recoveredArg1.
    (recoveredValue4) value.
    recoveredValue5 := (self) state.
    recoveredLocal1 := recoveredValue5.
    recoveredValue6 := recoveredLocal2.
    visitedTempId := recoveredValue6.
    recoveredValue7 := recoveredLocal3.
    (self) state: (recoveredValue7).
    recoveredValue8 := recoveredLocal1.
    ^recoveredValue8
! !

"ASDBase.ic method 0x2032916c; bytecode file offset 0xc25a50"
!SGIlAssertTempVarVisitor methodsFor: 'recovered'!
assignExpr: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := (recoveredStack1) lValue.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) expr.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredLocal2 := recoveredStack2.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleTempIdentifier.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleTempVarIdentifier.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 51].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack2 := (recoveredStack2) expr.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := (recoveredStack1) visitNode: (recoveredStack2).
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            (recoveredStack1) mergeBooleanState.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := (recoveredStack1) initializedTempVars.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack2 := (recoveredStack2) isIleTempIdentifier.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 38] ifFalse: [recoveredPC := 42].
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredPC := 47.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack2 := (recoveredStack2) tempAssign.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack2 := (recoveredStack2) tempVar.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            (recoveredStack1) add: (recoveredStack2).
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack1 := super assignExpr: (recoveredStack2).
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2032bcfc; bytecode file offset 0xc285d8"
!SGIlAssertTempVarVisitor methodsFor: 'recovered'!
pmiCodeBlock: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) code.
    recoveredValue2 := [:recoveredBlock6Arg1 | 
    | recoveredBlock6Stack0 recoveredBlock6Stack1 recoveredBlock6Stack2 recoveredBlock6Stack3 recoveredBlock6PC recoveredBlock6Step recoveredBlock6Done recoveredBlock6Result |
    recoveredBlock6Stack0 := self.
    recoveredBlock6PC := 12.
    recoveredBlock6Done := false.
    [recoveredBlock6Done not] whileTrue: [
        recoveredBlock6Step := recoveredBlock6PC.
        recoveredBlock6Step = 12 ifTrue: [
            recoveredBlock6Stack1 := recoveredBlock6Arg1.
            recoveredBlock6PC := 13.
        ].
        recoveredBlock6Step = 13 ifTrue: [
            recoveredBlock6Stack1 := (recoveredBlock6Stack1) isIleExpr.
            recoveredBlock6PC := 14.
        ].
        recoveredBlock6Step = 14 ifTrue: [
            (recoveredBlock6Stack1) ifTrue: [recoveredBlock6PC := 18] ifFalse: [recoveredBlock6PC := 52].
        ].
        recoveredBlock6Step = 18 ifTrue: [
            recoveredBlock6Stack1 := recoveredBlock6Arg1.
            recoveredBlock6PC := 19.
        ].
        recoveredBlock6Step = 19 ifTrue: [
            recoveredBlock6Stack1 := (recoveredBlock6Stack1) isIleTempIdentifier.
            recoveredBlock6PC := 20.
        ].
        recoveredBlock6Step = 20 ifTrue: [
            (recoveredBlock6Stack1) ifTrue: [recoveredBlock6PC := 30] ifFalse: [recoveredBlock6PC := 24].
        ].
        recoveredBlock6Step = 24 ifTrue: [
            recoveredBlock6Stack1 := recoveredBlock6Arg1.
            recoveredBlock6PC := 25.
        ].
        recoveredBlock6Step = 25 ifTrue: [
            recoveredBlock6Stack1 := (recoveredBlock6Stack1) isIleTempVarIdentifier.
            recoveredBlock6PC := 26.
        ].
        recoveredBlock6Step = 26 ifTrue: [
            (recoveredBlock6Stack1) ifTrue: [recoveredBlock6PC := 30] ifFalse: [recoveredBlock6PC := 52].
        ].
        recoveredBlock6Step = 30 ifTrue: [
            recoveredBlock6Stack1 := self.
            recoveredBlock6PC := 31.
        ].
        recoveredBlock6Step = 31 ifTrue: [
            recoveredBlock6Stack1 := (recoveredBlock6Stack1) initializedTempVars.
            recoveredBlock6PC := 33.
        ].
        recoveredBlock6Step = 33 ifTrue: [
            recoveredBlock6Stack2 := recoveredBlock6Arg1.
            recoveredBlock6PC := 34.
        ].
        recoveredBlock6Step = 34 ifTrue: [
            recoveredBlock6Stack2 := (recoveredBlock6Stack2) isIleTempIdentifier.
            recoveredBlock6PC := 35.
        ].
        recoveredBlock6Step = 35 ifTrue: [
            (recoveredBlock6Stack2) ifTrue: [recoveredBlock6PC := 38] ifFalse: [recoveredBlock6PC := 42].
        ].
        recoveredBlock6Step = 38 ifTrue: [
            recoveredBlock6Stack2 := recoveredBlock6Arg1.
            recoveredBlock6PC := 39.
        ].
        recoveredBlock6Step = 39 ifTrue: [
            recoveredBlock6PC := 47.
        ].
        recoveredBlock6Step = 42 ifTrue: [
            recoveredBlock6Stack2 := recoveredBlock6Arg1.
            recoveredBlock6PC := 43.
        ].
        recoveredBlock6Step = 43 ifTrue: [
            recoveredBlock6Stack2 := (recoveredBlock6Stack2) tempAssign.
            recoveredBlock6PC := 45.
        ].
        recoveredBlock6Step = 45 ifTrue: [
            recoveredBlock6Stack2 := (recoveredBlock6Stack2) tempVar.
            recoveredBlock6PC := 47.
        ].
        recoveredBlock6Step = 47 ifTrue: [
            recoveredBlock6Stack1 := (recoveredBlock6Stack1) add: (recoveredBlock6Stack2).
            recoveredBlock6PC := 49.
        ].
        recoveredBlock6Step = 49 ifTrue: [
            recoveredBlock6PC := 56.
        ].
        recoveredBlock6Step = 52 ifTrue: [
            recoveredBlock6Stack1 := self.
            recoveredBlock6PC := 53.
        ].
        recoveredBlock6Step = 53 ifTrue: [
            recoveredBlock6Stack2 := recoveredBlock6Arg1.
            recoveredBlock6PC := 54.
        ].
        recoveredBlock6Step = 54 ifTrue: [
            recoveredBlock6Stack1 := (recoveredBlock6Stack1) visitNode: (recoveredBlock6Stack2).
            recoveredBlock6PC := 56.
        ].
        recoveredBlock6Step = 56 ifTrue: [
            recoveredBlock6Result := recoveredBlock6Stack1.
            recoveredBlock6Done := true.
        ].
    ].
    recoveredBlock6Result
].
    (recoveredValue1) do: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x20455744; bytecode file offset 0xd52040"
!SGIlAssertTempVarVisitor methodsFor: 'recovered'!
abstractMethodCall: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := OrderedCollection.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) args.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := [:recoveredBlock14Arg1 | 
    | recoveredBlock14Value0 recoveredBlock14Value1 recoveredBlock14Value2 recoveredBlock14Value3 recoveredBlock14Value4 |
    recoveredBlock14Value0 := recoveredLocal1.
    recoveredBlock14Value1 := [
    | recoveredBlock14Block25Stack0 recoveredBlock14Block25Stack1 recoveredBlock14Block25Stack2 recoveredBlock14Block25Stack3 recoveredBlock14Block25PC recoveredBlock14Block25Step recoveredBlock14Block25Done recoveredBlock14Block25Result |
    recoveredBlock14Block25Stack0 := self.
    recoveredBlock14Block25PC := 32.
    recoveredBlock14Block25Done := false.
    [recoveredBlock14Block25Done not] whileTrue: [
        recoveredBlock14Block25Step := recoveredBlock14Block25PC.
        recoveredBlock14Block25Step = 32 ifTrue: [
            recoveredBlock14Block25Stack1 := recoveredBlock14Arg1.
            recoveredBlock14Block25PC := 35.
        ].
        recoveredBlock14Block25Step = 35 ifTrue: [
            recoveredBlock14Block25Stack1 := (recoveredBlock14Block25Stack1) isIleArgumentOut.
            recoveredBlock14Block25PC := 36.
        ].
        recoveredBlock14Block25Step = 36 ifTrue: [
            (recoveredBlock14Block25Stack1) ifTrue: [recoveredBlock14Block25PC := 40] ifFalse: [recoveredBlock14Block25PC := 84].
        ].
        recoveredBlock14Block25Step = 40 ifTrue: [
            recoveredBlock14Block25Stack1 := recoveredBlock14Arg1.
            recoveredBlock14Block25PC := 43.
        ].
        recoveredBlock14Block25Step = 43 ifTrue: [
            recoveredBlock14Block25Stack1 := (recoveredBlock14Block25Stack1) expr.
            recoveredBlock14Block25PC := 45.
        ].
        recoveredBlock14Block25Step = 45 ifTrue: [
            recoveredBlock14Block25Stack1 := (recoveredBlock14Block25Stack1) isIleReferencedExpr.
            recoveredBlock14Block25PC := 47.
        ].
        recoveredBlock14Block25Step = 47 ifTrue: [
            (recoveredBlock14Block25Stack1) ifTrue: [recoveredBlock14Block25PC := 50] ifFalse: [recoveredBlock14Block25PC := 84].
        ].
        recoveredBlock14Block25Step = 50 ifTrue: [
            recoveredBlock14Block25Stack1 := recoveredBlock14Arg1.
            recoveredBlock14Block25PC := 53.
        ].
        recoveredBlock14Block25Step = 53 ifTrue: [
            recoveredBlock14Block25Stack1 := (recoveredBlock14Block25Stack1) expr.
            recoveredBlock14Block25PC := 55.
        ].
        recoveredBlock14Block25Step = 55 ifTrue: [
            recoveredBlock14Block25Stack1 := (recoveredBlock14Block25Stack1) expr.
            recoveredBlock14Block25PC := 57.
        ].
        recoveredBlock14Block25Step = 57 ifTrue: [
            recoveredBlock14Block25Stack1 := (recoveredBlock14Block25Stack1) isIleTempVarIdentifier.
            recoveredBlock14Block25PC := 59.
        ].
        recoveredBlock14Block25Step = 59 ifTrue: [
            (recoveredBlock14Block25Stack1) ifTrue: [recoveredBlock14Block25PC := 62] ifFalse: [recoveredBlock14Block25PC := 84].
        ].
        recoveredBlock14Block25Step = 62 ifTrue: [
            recoveredBlock14Block25Stack1 := self.
            recoveredBlock14Block25PC := 63.
        ].
        recoveredBlock14Block25Step = 63 ifTrue: [
            recoveredBlock14Block25Stack1 := (recoveredBlock14Block25Stack1) state.
            recoveredBlock14Block25PC := 65.
        ].
        recoveredBlock14Block25Step = 65 ifTrue: [
            recoveredBlock14Block25Stack1 := (recoveredBlock14Block25Stack1) initializedTempVars.
            recoveredBlock14Block25PC := 67.
        ].
        recoveredBlock14Block25Step = 67 ifTrue: [
            recoveredBlock14Block25Stack2 := recoveredBlock14Arg1.
            recoveredBlock14Block25PC := 70.
        ].
        recoveredBlock14Block25Step = 70 ifTrue: [
            recoveredBlock14Block25Stack2 := (recoveredBlock14Block25Stack2) expr.
            recoveredBlock14Block25PC := 72.
        ].
        recoveredBlock14Block25Step = 72 ifTrue: [
            recoveredBlock14Block25Stack2 := (recoveredBlock14Block25Stack2) expr.
            recoveredBlock14Block25PC := 74.
        ].
        recoveredBlock14Block25Step = 74 ifTrue: [
            recoveredBlock14Block25Stack2 := (recoveredBlock14Block25Stack2) tempAssign.
            recoveredBlock14Block25PC := 76.
        ].
        recoveredBlock14Block25Step = 76 ifTrue: [
            recoveredBlock14Block25Stack2 := (recoveredBlock14Block25Stack2) tempVar.
            recoveredBlock14Block25PC := 78.
        ].
        recoveredBlock14Block25Step = 78 ifTrue: [
            recoveredBlock14Block25Stack1 := (recoveredBlock14Block25Stack1) add: (recoveredBlock14Block25Stack2).
            recoveredBlock14Block25PC := 80.
        ].
        recoveredBlock14Block25Step = 80 ifTrue: [
            recoveredBlock14Block25PC := 90.
        ].
        recoveredBlock14Block25Step = 84 ifTrue: [
            recoveredBlock14Block25Stack1 := self.
            recoveredBlock14Block25PC := 85.
        ].
        recoveredBlock14Block25Step = 85 ifTrue: [
            recoveredBlock14Block25Stack2 := recoveredBlock14Arg1.
            recoveredBlock14Block25PC := 88.
        ].
        recoveredBlock14Block25Step = 88 ifTrue: [
            recoveredBlock14Block25Stack1 := (recoveredBlock14Block25Stack1) visitNode: (recoveredBlock14Block25Stack2).
            recoveredBlock14Block25PC := 90.
        ].
        recoveredBlock14Block25Step = 90 ifTrue: [
            recoveredBlock14Block25Result := recoveredBlock14Block25Stack1.
            recoveredBlock14Block25Done := true.
        ].
    ].
    recoveredBlock14Block25Result
].
    recoveredBlock14Value2 := (self) localScope: (recoveredBlock14Value1).
    recoveredBlock14Value3 := (self) mergeBooleanState: (recoveredBlock14Value2).
    recoveredBlock14Value4 := (recoveredBlock14Value0) add: (recoveredBlock14Value3).
    recoveredBlock14Value4
].
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            recoveredStack1 := (recoveredStack1) notEmpty.
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 108] ifFalse: [recoveredPC := 114].
        ].
        recoveredStep = 108 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 112.
        ].
        recoveredStep = 112 ifTrue: [
            (recoveredStack1) mergeUnion: (recoveredStack2).
            recoveredPC := 114.
        ].
        recoveredStep = 114 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

