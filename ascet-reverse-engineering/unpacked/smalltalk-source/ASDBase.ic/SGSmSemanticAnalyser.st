"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x200052a0; bytecode file offset 0x90206c"
!SGSmSemanticAnalyser methodsFor: 'recovered'!
acceptTopHierarchyState: recoveredArg1
    ^self
! !

"ASDBase.ic method 0x200a932c; bytecode file offset 0x9a5d18"
!SGSmSemanticAnalyser methodsFor: 'recovered'!
acceptBdlState: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := [].
    (self) analyzeState: (recoveredValue0) firstVisit: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x2020d254; bytecode file offset 0xb09b24"
!SGSmSemanticAnalyser methodsFor: 'recovered'!
triggerLabel: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := 'Ble'.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := 'Call_68492'.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := 'trigger "'.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack2 ~~ nil) ifTrue: [recoveredPC := 22] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := 'undef'.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredPC := 25.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack2 := (recoveredStack2) mdlLabel.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack2 := '"'.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x20256fcc; bytecode file offset 0xb53894"
!SGSmSemanticAnalyser methodsFor: 'recovered'!
triggerMethod: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := ('Ble') = ('Call_68492').
    recoveredValue1 := allTriggers.
    recoveredValue2 := [:recoveredBlock12Arg1 | 
    | recoveredBlock12Stack0 recoveredBlock12Stack1 recoveredBlock12Stack2 recoveredBlock12Stack3 recoveredBlock12Stack4 recoveredBlock12PC recoveredBlock12Step recoveredBlock12Done recoveredBlock12Result |
    recoveredBlock12Stack0 := self.
    recoveredBlock12PC := 18.
    recoveredBlock12Done := false.
    [recoveredBlock12Done not] whileTrue: [
        recoveredBlock12Step := recoveredBlock12PC.
        recoveredBlock12Step = 18 ifTrue: [
            recoveredBlock12Stack1 := nil.
            recoveredBlock12PC := 19.
        ].
        recoveredBlock12Step = 19 ifTrue: [
            recoveredBlock12Stack2 := recoveredBlock12Arg1.
            recoveredBlock12PC := 20.
        ].
        recoveredBlock12Step = 20 ifTrue: [
            recoveredBlock12Stack2 := (recoveredBlock12Stack2) mdlName.
            recoveredBlock12PC := 21.
        ].
        recoveredBlock12Step = 21 ifTrue: [
            recoveredBlock12Stack2 := (recoveredBlock12Stack2) mdlKey.
            recoveredBlock12PC := 22.
        ].
        recoveredBlock12Step = 22 ifTrue: [
            recoveredBlock12Stack3 := recoveredArg1.
            recoveredBlock12PC := 25.
        ].
        recoveredBlock12Step = 25 ifTrue: [
            recoveredBlock12Stack2 := (recoveredBlock12Stack2) = (recoveredBlock12Stack3).
            recoveredBlock12PC := 26.
        ].
        recoveredBlock12Step = 26 ifTrue: [
            (recoveredBlock12Stack2) ifTrue: [recoveredBlock12PC := 30] ifFalse: [recoveredBlock12PC := 33].
        ].
        recoveredBlock12Step = 30 ifTrue: [
            recoveredBlock12PC := 31.
        ].
        recoveredBlock12Step = 31 ifTrue: [
            recoveredBlock12Stack1 := recoveredBlock12Arg1.
            recoveredBlock12PC := 32.
        ].
        recoveredBlock12Step = 32 ifTrue: [
            ^recoveredBlock12Stack1
        ].
        recoveredBlock12Step = 33 ifTrue: [
            recoveredBlock12Result := recoveredBlock12Stack1.
            recoveredBlock12Done := true.
        ].
    ].
    recoveredBlock12Result
].
    (recoveredValue1) do: (recoveredValue2).
    ^nil
! !

"ASDBase.ic method 0x202ec114; bytecode file offset 0xbe89e8"
!SGSmSemanticAnalyser methodsFor: 'recovered'!
acceptBdlHierarchyState: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := [
    | recoveredBlock7Stack0 recoveredBlock7Stack1 recoveredBlock7Stack2 recoveredBlock7PC recoveredBlock7Step recoveredBlock7Done recoveredBlock7Result |
    recoveredBlock7Stack0 := self.
    recoveredBlock7PC := 14.
    recoveredBlock7Done := false.
    [recoveredBlock7Done not] whileTrue: [
        recoveredBlock7Step := recoveredBlock7PC.
        recoveredBlock7Step = 14 ifTrue: [
            recoveredBlock7Stack1 := recoveredArg1.
            recoveredBlock7PC := 17.
        ].
        recoveredBlock7Step = 17 ifTrue: [
            (recoveredBlock7Stack0) analyzeChildren: (recoveredBlock7Stack1).
            recoveredBlock7PC := 19.
        ].
        recoveredBlock7Step = 19 ifTrue: [
            recoveredBlock7Stack0 := recoveredArg1.
            recoveredBlock7PC := 22.
        ].
        recoveredBlock7Step = 22 ifTrue: [
            recoveredBlock7Stack0 := (recoveredBlock7Stack0) children.
            recoveredBlock7PC := 23.
        ].
        recoveredBlock7Step = 23 ifTrue: [
            recoveredBlock7Stack1 := [:block280e7c90Arg1 | 
    | block280e7c90Value0 block280e7c90Value1 |
    block280e7c90Value0 := block280e7c90Arg1.
    block280e7c90Value1 := (block280e7c90Value0) isStartState.
    block280e7c90Value1
].
            recoveredBlock7PC := 25.
        ].
        recoveredBlock7Step = 25 ifTrue: [
            recoveredBlock7PC := 31.
        ].
        recoveredBlock7Step = 31 ifTrue: [
            recoveredBlock7Stack0 := (recoveredBlock7Stack0) select: (recoveredBlock7Stack1).
            recoveredBlock7PC := 33.
        ].
        recoveredBlock7Step = 33 ifTrue: [
            recoveredBlock7Stack1 := [:recoveredBlock7Block33Arg1 | 
    | recoveredBlock7Block33Value0 recoveredBlock7Block33Value1 |
    recoveredBlock7Block33Value0 := recoveredBlock7Block33Arg1.
    recoveredBlock7Block33Value1 := (recoveredBlock7Block33Value0) acceptBdlVisitor: (self).
    recoveredBlock7Block33Value1
].
            recoveredBlock7PC := 45.
        ].
        recoveredBlock7Step = 45 ifTrue: [
            recoveredBlock7Stack0 := (recoveredBlock7Stack0) do: (recoveredBlock7Stack1).
            recoveredBlock7PC := 47.
        ].
        recoveredBlock7Step = 47 ifTrue: [
            recoveredBlock7Result := recoveredBlock7Stack0.
            recoveredBlock7Done := true.
        ].
    ].
    recoveredBlock7Result
].
    (self) analyzeState: (recoveredValue0) firstVisit: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x203574d4; bytecode file offset 0xc53dac"
!SGSmSemanticAnalyser methodsFor: 'recovered'!
transitionsInChildren: recoveredArg1 index: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (-1).
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) transitions.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredPC := 30.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := (recoveredStack2) transitions.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack3 := recoveredLocal2.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := (recoveredStack2) at: (recoveredStack3).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack3 := 70.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack4 := recoveredArg1.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack4 := (recoveredStack4) errLabel.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            (recoveredStack2) smWarningNo: (recoveredStack3) with: (recoveredStack4).
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack2 := nil.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            (recoveredStack1 isInteger and: [recoveredLocal2 isInteger]) ifTrue: [(recoveredLocal2 + 1 <= recoveredStack1) ifTrue: [recoveredLocal2 := recoveredLocal2 + 1. recoveredPC := 14] ifFalse: [recoveredLocal2 := nil. recoveredPC := 44]] ifFalse: [recoveredPC := 34].
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack3 := recoveredLocal2.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack3 := (recoveredStack3) + (1).
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack4 := recoveredStack3.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredLocal2 := recoveredStack4.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack2 := (recoveredStack2) < (recoveredStack3).
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 42] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack2 := nil.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredLocal2 := recoveredStack2.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack1 := (recoveredStack1) children.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack1 := (recoveredStack1) statesOnly.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack2 := [:recoveredBlock50Arg1 | 
    | recoveredBlock50Value0 recoveredBlock50Value1 |
    recoveredBlock50Value0 := recoveredBlock50Arg1.
    recoveredBlock50Value1 := (self) transitionsInChildren: (recoveredBlock50Value0) index: (1).
    recoveredBlock50Value1
].
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x203be408; bytecode file offset 0xcbace4"
!SGSmSemanticAnalyser methodsFor: 'recovered'!
analyzeChildren: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := (recoveredStack1) children.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) statesOnly.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := (recoveredStack1) isBdlHierarchyState.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredPC := 19.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack2 := [:block280f65b8Arg1 | 
    | block280f65b8Value0 block280f65b8Value1 |
    block280f65b8Value0 := block280f65b8Arg1.
    block280f65b8Value1 := (block280f65b8Value0) isStartState.
    block280f65b8Value1
].
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := (recoveredStack1) select: (recoveredStack2).
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            (recoveredStack1 ~~ recoveredStack2) ifTrue: [recoveredPC := 50] ifFalse: [recoveredPC := 42].
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack2 := 20.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack3 := (recoveredStack3) errLabel.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            (recoveredStack1) smSyntaxErrNo: (recoveredStack2) with: (recoveredStack3).
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack2 := 1.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack1 := (recoveredStack1) > (recoveredStack2).
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 58] ifFalse: [recoveredPC := 66].
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack2 := 21.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack3 := (recoveredStack3) errLabel.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            (recoveredStack1) smSyntaxErrNo: (recoveredStack2) with: (recoveredStack3).
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack1 := (recoveredStack1) isEmpty.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 72] ifFalse: [recoveredPC := 80].
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack2 := 30.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack3 := (recoveredStack3) errLabel.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            (recoveredStack1) smSyntaxErrNo: (recoveredStack2) with: (recoveredStack3).
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2041027c; bytecode file offset 0xd0cb64"
!SGSmSemanticAnalyser methodsFor: 'recovered'!
staticActionsInChildren: recoveredArg1 transition: recoveredArg2 trigger: recoveredArg3
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) staticPort.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) sequence.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := (recoveredStack1) isUndef.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 70] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := [:recoveredBlock17Arg1 :recoveredBlock17Arg2 | 
    | recoveredBlock17Value0 recoveredBlock17Value1 recoveredBlock17Value2 recoveredBlock17Value3 recoveredBlock17Value4 recoveredBlock17Value5 recoveredBlock17Value6 |
    recoveredBlock17Value0 := recoveredBlock17Arg1.
    recoveredBlock17Value1 := (self) triggerMethod: (recoveredBlock17Value0).
    recoveredBlock17Value2 := (self) triggerLabel: (recoveredBlock17Value1).
    recoveredBlock17Value3 := recoveredBlock17Arg2.
    recoveredBlock17Value4 := (self) triggerMethod: (recoveredBlock17Value3).
    recoveredBlock17Value5 := (self) triggerLabel: (recoveredBlock17Value4).
    recoveredBlock17Value6 := (recoveredBlock17Value2) < (recoveredBlock17Value5).
    recoveredBlock17Value6
].
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack1 := (recoveredStack1) asSortedCollection: (recoveredStack2).
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack2 := [:recoveredBlock39Arg1 | 
    | recoveredBlock39Value0 recoveredBlock39Value1 recoveredBlock39Value2 recoveredBlock39Value3 recoveredBlock39Value4 recoveredBlock39Value5 recoveredBlock39Value6 recoveredBlock39Value7 |
    recoveredBlock39Value0 := recoveredArg2.
    recoveredBlock39Value1 := recoveredArg1.
    recoveredBlock39Value2 := (recoveredBlock39Value1) mdlName.
    recoveredBlock39Value3 := (recoveredBlock39Value2) label.
    recoveredBlock39Value4 := recoveredBlock39Arg1.
    recoveredBlock39Value5 := (self) triggerMethod: (recoveredBlock39Value4).
    recoveredBlock39Value6 := (self) triggerLabel: (recoveredBlock39Value5).
    recoveredBlock39Value7 := (recoveredBlock39Value0) smWarningNo: (60) with: (recoveredBlock39Value3) with: (recoveredBlock39Value6).
    recoveredBlock39Value7
].
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack1 := (recoveredStack1) children.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack1 := (recoveredStack1) statesOnly.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack2 := [:recoveredBlock77Arg1 | 
    | recoveredBlock77Value0 recoveredBlock77Value1 recoveredBlock77Value2 recoveredBlock77Value3 |
    recoveredBlock77Value0 := recoveredBlock77Arg1.
    recoveredBlock77Value1 := recoveredArg2.
    recoveredBlock77Value2 := recoveredArg3.
    recoveredBlock77Value3 := (self) staticActionsInChildren: (recoveredBlock77Value0) transition: (recoveredBlock77Value1) trigger: (recoveredBlock77Value2).
    recoveredBlock77Value3
].
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20456390; bytecode file offset 0xd52c70"
!SGSmSemanticAnalyser methodsFor: 'recovered'!
transitionsInChildren: recoveredArg1 index: recoveredArg2 trigger: recoveredArg3
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) transitions.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := (recoveredStack2) + (-1).
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredPC := 59.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredLocal2 := recoveredStack3.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack3 := (recoveredStack3) transitions.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack4 := recoveredLocal2.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack3 := (recoveredStack3) at: (recoveredStack4).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredLocal1 := recoveredStack3.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack3 := recoveredArg3.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack4 := recoveredLocal1.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack4 := (recoveredStack4) triggerAlias.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack3 := (recoveredStack3) includes: (recoveredStack4).
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            (recoveredStack3) ifTrue: [recoveredPC := 42] ifFalse: [recoveredPC := 55].
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack4 := 70.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack5 := recoveredArg1.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack5 := (recoveredStack5) errLabel.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            (recoveredStack3) smWarningNo: (recoveredStack4) with: (recoveredStack5).
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack3 := nil.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredLocal1 := recoveredStack3.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            (recoveredStack1 isInteger and: [recoveredStack2 isInteger]) ifTrue: [(recoveredStack2 + 1 <= recoveredStack1) ifTrue: [recoveredStack2 := recoveredStack2 + 1. recoveredStack3 := recoveredStack2. recoveredPC := 16] ifFalse: [recoveredPC := 87]] ifFalse: [recoveredPC := 62].
        ].
        recoveredStep = 62 ifTrue: [
            recoveredLocal2 := recoveredStack2.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack3 := recoveredLocal2.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack3 := (recoveredStack3) + (1).
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack4 := recoveredStack3.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredLocal2 := recoveredStack4.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack2 := (recoveredStack2) < (recoveredStack3).
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 83] ifFalse: [recoveredPC := 78].
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredPC := 19.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack2 := nil.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredLocal2 := recoveredStack2.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredStack1 := (recoveredStack1) children.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredStack1 := (recoveredStack1) statesOnly.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredStack2 := [:recoveredBlock95Arg1 | 
    | recoveredBlock95Value0 recoveredBlock95Value1 recoveredBlock95Value2 |
    recoveredBlock95Value0 := recoveredBlock95Arg1.
    recoveredBlock95Value1 := recoveredArg3.
    recoveredBlock95Value2 := (self) transitionsInChildren: (recoveredBlock95Value0) index: (1) trigger: (recoveredBlock95Value1).
    recoveredBlock95Value2
].
            recoveredPC := 112.
        ].
        recoveredStep = 112 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 114.
        ].
        recoveredStep = 114 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20496ec4; bytecode file offset 0xd937c4"
!SGSmSemanticAnalyser methodsFor: 'recovered'!
acceptBdlTransition: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := transitionTrigger.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := (recoveredStack1) triggerAlias.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := SGReservedNames.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := (recoveredStack2) undefName.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) equals: (recoveredStack2).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 29] ifFalse: [recoveredPC := 20].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := (recoveredStack1) logicManager.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := (recoveredStack1) sgClass.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack2 := recoveredLocal4.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := (recoveredStack1) methodAliasName: (recoveredStack2).
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 94] ifFalse: [recoveredPC := 34].
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := triggers.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack2 := recoveredLocal4.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            (recoveredStack1) add: (recoveredStack2).
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack1 := transitionTrigger.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack2 := SGReservedNames.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack2 := (recoveredStack2) undefName.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack1 := (recoveredStack1) equals: (recoveredStack2).
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 48] ifFalse: [recoveredPC := 54].
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            transitionTrigger := recoveredStack1.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredPC := 67.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack1 := transitionTrigger.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack2 := recoveredLocal4.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack1 := (recoveredStack1) equals: (recoveredStack2).
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 67] ifFalse: [recoveredPC := 62].
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack2 := 61.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            (recoveredStack1) smSyntaxErrNo: (recoveredStack2).
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack1 := (recoveredStack1) connectedEndState.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack1 := (recoveredStack1) isBdlJunction.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack2 := (recoveredStack2) actionPort.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack2 := (recoveredStack2) sequence.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack2 := (recoveredStack2) isBdlValid.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack1 := (recoveredStack1) and: (recoveredStack2).
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 86] ifFalse: [recoveredPC := 94].
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack2 := 70.
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            (recoveredStack1) smSyntaxErrNo: (recoveredStack2).
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack1 := (recoveredStack1) conditionPort.
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack1 := (recoveredStack1) sequence.
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack1 := (recoveredStack1) isUndef.
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 109] ifFalse: [recoveredPC := 106].
        ].
        recoveredStep = 106 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            unconditionalTransition := recoveredStack1.
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            recoveredStack1 := transitionPath.
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 112.
        ].
        recoveredStep = 112 ifTrue: [
            recoveredStack1 := transitionPath.
            recoveredPC := 114.
        ].
        recoveredStep = 114 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 116.
        ].
        recoveredStep = 116 ifTrue: [
            recoveredStack1 := (recoveredStack1) copyWith: (recoveredStack2).
            recoveredPC := 118.
        ].
        recoveredStep = 118 ifTrue: [
            transitionPath := recoveredStack1.
            recoveredPC := 120.
        ].
        recoveredStep = 120 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 122.
        ].
        recoveredStep = 122 ifTrue: [
            recoveredStack1 := (recoveredStack1) connectedEndState.
            recoveredPC := 124.
        ].
        recoveredStep = 124 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 125.
        ].
        recoveredStep = 125 ifTrue: [
            (recoveredStack1) acceptBdlVisitor: (recoveredStack2).
            recoveredPC := 127.
        ].
        recoveredStep = 127 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 128.
        ].
        recoveredStep = 128 ifTrue: [
            transitionPath := recoveredStack1.
            recoveredPC := 130.
        ].
        recoveredStep = 130 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 131.
        ].
        recoveredStep = 131 ifTrue: [
            transitionTrigger := recoveredStack1.
            recoveredPC := 133.
        ].
        recoveredStep = 133 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x204a43e4; bytecode file offset 0xda0cdc"
!SGSmSemanticAnalyser methodsFor: 'recovered'!
analyze: recoveredArg1 states: recoveredArg2 triggers: recoveredArg3
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            allTriggers := recoveredStack1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := Set.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            reachable := recoveredStack1.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := Set.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            triggers := recoveredStack1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            (recoveredStack0) analyzeChildren: (recoveredStack1).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := (recoveredStack0) children.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := [:block281049bcArg1 | 
    | block281049bcValue0 block281049bcValue1 |
    block281049bcValue0 := block281049bcArg1.
    block281049bcValue1 := (block281049bcValue0) isStartState.
    block281049bcValue1
].
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := (recoveredStack0) select: (recoveredStack1).
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := [:recoveredBlock34Arg1 | 
    | recoveredBlock34Value0 recoveredBlock34Value1 |
    unconditionalTransition := false.
    recoveredBlock34Value0 := recoveredBlock34Arg1.
    recoveredBlock34Value1 := (recoveredBlock34Value0) acceptBdlVisitor: (self).
    recoveredBlock34Value1
].
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack0 := recoveredArg2.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack1 := [:recoveredBlock51Arg1 | 
    | recoveredBlock51Stack0 recoveredBlock51Stack1 recoveredBlock51Stack2 recoveredBlock51Stack3 recoveredBlock51Stack4 recoveredBlock51PC recoveredBlock51Step recoveredBlock51Done recoveredBlock51Result |
    recoveredBlock51Stack0 := self.
    recoveredBlock51PC := 58.
    recoveredBlock51Done := false.
    [recoveredBlock51Done not] whileTrue: [
        recoveredBlock51Step := recoveredBlock51PC.
        recoveredBlock51Step = 58 ifTrue: [
            recoveredBlock51Stack1 := nil.
            recoveredBlock51PC := 59.
        ].
        recoveredBlock51Step = 59 ifTrue: [
            recoveredBlock51Stack2 := recoveredBlock51Arg1.
            recoveredBlock51PC := 60.
        ].
        recoveredBlock51Step = 60 ifTrue: [
            recoveredBlock51Stack2 := (recoveredBlock51Stack2) isBdlHierarchyState.
            recoveredBlock51PC := 62.
        ].
        recoveredBlock51Step = 62 ifTrue: [
            (recoveredBlock51Stack2) ifTrue: [recoveredBlock51PC := 83] ifFalse: [recoveredBlock51PC := 66].
        ].
        recoveredBlock51Step = 66 ifTrue: [
            recoveredBlock51Stack2 := reachable.
            recoveredBlock51PC := 68.
        ].
        recoveredBlock51Step = 68 ifTrue: [
            recoveredBlock51Stack3 := recoveredBlock51Arg1.
            recoveredBlock51PC := 69.
        ].
        recoveredBlock51Step = 69 ifTrue: [
            recoveredBlock51Stack2 := (recoveredBlock51Stack2) includes: (recoveredBlock51Stack3).
            recoveredBlock51PC := 71.
        ].
        recoveredBlock51Step = 71 ifTrue: [
            (recoveredBlock51Stack2) ifTrue: [recoveredBlock51PC := 83] ifFalse: [recoveredBlock51PC := 74].
        ].
        recoveredBlock51Step = 74 ifTrue: [
            recoveredBlock51PC := 75.
        ].
        recoveredBlock51Step = 75 ifTrue: [
            recoveredBlock51Stack1 := recoveredBlock51Arg1.
            recoveredBlock51PC := 76.
        ].
        recoveredBlock51Step = 76 ifTrue: [
            recoveredBlock51Stack2 := 40.
            recoveredBlock51PC := 78.
        ].
        recoveredBlock51Step = 78 ifTrue: [
            recoveredBlock51Stack3 := recoveredBlock51Arg1.
            recoveredBlock51PC := 79.
        ].
        recoveredBlock51Step = 79 ifTrue: [
            recoveredBlock51Stack3 := (recoveredBlock51Stack3) errLabel.
            recoveredBlock51PC := 81.
        ].
        recoveredBlock51Step = 81 ifTrue: [
            recoveredBlock51Stack1 := (recoveredBlock51Stack1) smWarningNo: (recoveredBlock51Stack2) with: (recoveredBlock51Stack3).
            recoveredBlock51PC := 83.
        ].
        recoveredBlock51Step = 83 ifTrue: [
            recoveredBlock51Result := recoveredBlock51Stack1.
            recoveredBlock51Done := true.
        ].
    ].
    recoveredBlock51Result
].
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack0 := allTriggers.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack1 := [:recoveredBlock88Arg1 | 
    | recoveredBlock88Stack0 recoveredBlock88Stack1 recoveredBlock88Stack2 recoveredBlock88Stack3 recoveredBlock88Stack4 recoveredBlock88Stack5 recoveredBlock88PC recoveredBlock88Step recoveredBlock88Done recoveredBlock88Result |
    recoveredBlock88Stack0 := self.
    recoveredBlock88PC := 94.
    recoveredBlock88Done := false.
    [recoveredBlock88Done not] whileTrue: [
        recoveredBlock88Step := recoveredBlock88PC.
        recoveredBlock88Step = 94 ifTrue: [
            recoveredBlock88Stack1 := triggers.
            recoveredBlock88PC := 96.
        ].
        recoveredBlock88Step = 96 ifTrue: [
            recoveredBlock88Stack2 := recoveredBlock88Arg1.
            recoveredBlock88PC := 97.
        ].
        recoveredBlock88Step = 97 ifTrue: [
            recoveredBlock88Stack2 := (recoveredBlock88Stack2) aliasName.
            recoveredBlock88PC := 99.
        ].
        recoveredBlock88Step = 99 ifTrue: [
            recoveredBlock88Stack1 := (recoveredBlock88Stack1) includes: (recoveredBlock88Stack2).
            recoveredBlock88PC := 101.
        ].
        recoveredBlock88Step = 101 ifTrue: [
            (recoveredBlock88Stack1) ifTrue: [recoveredBlock88PC := 104] ifFalse: [recoveredBlock88PC := 124].
        ].
        recoveredBlock88Step = 104 ifTrue: [
            recoveredBlock88Stack1 := nil.
            recoveredBlock88PC := 105.
        ].
        recoveredBlock88Step = 105 ifTrue: [
            recoveredBlock88Stack2 := recoveredBlock88Arg1.
            recoveredBlock88PC := 106.
        ].
        recoveredBlock88Step = 106 ifTrue: [
            recoveredBlock88Stack2 := (recoveredBlock88Stack2) isReinitializeMethod.
            recoveredBlock88PC := 108.
        ].
        recoveredBlock88Step = 108 ifTrue: [
            (recoveredBlock88Stack2) ifTrue: [recoveredBlock88PC := 112] ifFalse: [recoveredBlock88PC := 120].
        ].
        recoveredBlock88Step = 112 ifTrue: [
            recoveredBlock88PC := 113.
        ].
        recoveredBlock88Step = 113 ifTrue: [
            recoveredBlock88Stack1 := recoveredBlock88Arg1.
            recoveredBlock88PC := 114.
        ].
        recoveredBlock88Step = 114 ifTrue: [
            recoveredBlock88Stack2 := 95.
            recoveredBlock88PC := 118.
        ].
        recoveredBlock88Step = 118 ifTrue: [
            recoveredBlock88Stack1 := (recoveredBlock88Stack1) smWarningNo: (recoveredBlock88Stack2).
            recoveredBlock88PC := 120.
        ].
        recoveredBlock88Step = 120 ifTrue: [
            recoveredBlock88PC := 134.
        ].
        recoveredBlock88Step = 124 ifTrue: [
            recoveredBlock88Stack1 := self.
            recoveredBlock88PC := 125.
        ].
        recoveredBlock88Step = 125 ifTrue: [
            recoveredBlock88Stack2 := 80.
            recoveredBlock88PC := 128.
        ].
        recoveredBlock88Step = 128 ifTrue: [
            recoveredBlock88Stack3 := self.
            recoveredBlock88PC := 129.
        ].
        recoveredBlock88Step = 129 ifTrue: [
            recoveredBlock88Stack4 := recoveredBlock88Arg1.
            recoveredBlock88PC := 130.
        ].
        recoveredBlock88Step = 130 ifTrue: [
            recoveredBlock88Stack3 := (recoveredBlock88Stack3) triggerLabel: (recoveredBlock88Stack4).
            recoveredBlock88PC := 132.
        ].
        recoveredBlock88Step = 132 ifTrue: [
            recoveredBlock88Stack1 := (recoveredBlock88Stack1) smWarningNo: (recoveredBlock88Stack2) with: (recoveredBlock88Stack3).
            recoveredBlock88PC := 134.
        ].
        recoveredBlock88Step = 134 ifTrue: [
            recoveredBlock88Result := recoveredBlock88Stack1.
            recoveredBlock88Done := true.
        ].
    ].
    recoveredBlock88Result
].
            recoveredPC := 135.
        ].
        recoveredStep = 135 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 137.
        ].
        recoveredStep = 137 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 138.
        ].
        recoveredStep = 138 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x205025d4; bytecode file offset 0xdfeec8"
!SGSmSemanticAnalyser methodsFor: 'recovered'!
acceptBdlJunction: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := unconditionalTransition.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal5 := recoveredStack1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := unconditionalTrigger.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := visitedJunctions.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := (recoveredStack1) includes: (recoveredStack2).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 28] ifFalse: [recoveredPC := 38].
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack2 := 62.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            (recoveredStack1) smSyntaxErrNo: (recoveredStack2).
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredPC := 161.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := reachable.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            (recoveredStack1) add: (recoveredStack2).
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack1 := visitedJunctions.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            (recoveredStack1) add: (recoveredStack2).
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack1 := SortedCollection.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack2 := [:block2810a818Arg1 :block2810a818Arg2 | 
    | block2810a818Value0 block2810a818Value1 block2810a818Value2 block2810a818Value3 block2810a818Value4 |
    block2810a818Value0 := block2810a818Arg1.
    block2810a818Value1 := (block2810a818Value0) priority.
    block2810a818Value2 := block2810a818Arg2.
    block2810a818Value3 := (block2810a818Value2) priority.
    block2810a818Value4 := (block2810a818Value1) > (block2810a818Value3).
    block2810a818Value4
].
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack1 := (recoveredStack1) sortBlock: (recoveredStack2).
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack2 := (recoveredStack2) transitions.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            (recoveredStack1) addAll: (recoveredStack2).
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack2 := [:recoveredBlock86Arg1 :recoveredBlock86Arg2 | 
    | recoveredBlock86Stack0 recoveredBlock86Stack1 recoveredBlock86Stack2 recoveredBlock86Stack3 recoveredBlock86Stack4 recoveredBlock86Stack5 recoveredBlock86PC recoveredBlock86Step recoveredBlock86Done recoveredBlock86Result |
    recoveredBlock86Stack0 := self.
    recoveredBlock86PC := 92.
    recoveredBlock86Done := false.
    [recoveredBlock86Done not] whileTrue: [
        recoveredBlock86Step := recoveredBlock86PC.
        recoveredBlock86Step = 92 ifTrue: [
            recoveredBlock86Stack1 := true.
            recoveredBlock86PC := 93.
        ].
        recoveredBlock86Step = 93 ifTrue: [
            unconditionalTransition := recoveredBlock86Stack1.
            recoveredBlock86PC := 95.
        ].
        recoveredBlock86Step = 95 ifTrue: [
            recoveredBlock86Stack1 := Set.
            recoveredBlock86PC := 97.
        ].
        recoveredBlock86Step = 97 ifTrue: [
            recoveredBlock86Stack1 := (recoveredBlock86Stack1) new.
            recoveredBlock86PC := 99.
        ].
        recoveredBlock86Step = 99 ifTrue: [
            unconditionalTrigger := recoveredBlock86Stack1.
            recoveredBlock86PC := 101.
        ].
        recoveredBlock86Step = 101 ifTrue: [
            recoveredBlock86Stack1 := visitedJunctions.
            recoveredBlock86PC := 103.
        ].
        recoveredBlock86Step = 103 ifTrue: [
            recoveredLocal2 := recoveredBlock86Stack1.
            recoveredBlock86PC := 106.
        ].
        recoveredBlock86Step = 106 ifTrue: [
            recoveredBlock86Stack1 := recoveredLocal2.
            recoveredBlock86PC := 109.
        ].
        recoveredBlock86Step = 109 ifTrue: [
            recoveredBlock86Stack1 := (recoveredBlock86Stack1) copy.
            recoveredBlock86PC := 111.
        ].
        recoveredBlock86Step = 111 ifTrue: [
            visitedJunctions := recoveredBlock86Stack1.
            recoveredBlock86PC := 113.
        ].
        recoveredBlock86Step = 113 ifTrue: [
            recoveredBlock86Stack1 := recoveredBlock86Arg1.
            recoveredBlock86PC := 114.
        ].
        recoveredBlock86Step = 114 ifTrue: [
            recoveredBlock86Stack2 := self.
            recoveredBlock86PC := 115.
        ].
        recoveredBlock86Step = 115 ifTrue: [
            (recoveredBlock86Stack1) acceptBdlVisitor: (recoveredBlock86Stack2).
            recoveredBlock86PC := 117.
        ].
        recoveredBlock86Step = 117 ifTrue: [
            recoveredBlock86Stack1 := unconditionalTransition.
            recoveredBlock86PC := 119.
        ].
        recoveredBlock86Step = 119 ifTrue: [
            (recoveredBlock86Stack1) ifTrue: [recoveredBlock86PC := 122] ifFalse: [recoveredBlock86PC := 144].
        ].
        recoveredBlock86Step = 122 ifTrue: [
            recoveredBlock86Stack1 := true.
            recoveredBlock86PC := 123.
        ].
        recoveredBlock86Step = 123 ifTrue: [
            recoveredLocal4 := recoveredBlock86Stack1.
            recoveredBlock86PC := 126.
        ].
        recoveredBlock86Step = 126 ifTrue: [
            recoveredBlock86Stack1 := self.
            recoveredBlock86PC := 127.
        ].
        recoveredBlock86Step = 127 ifTrue: [
            recoveredBlock86Stack2 := recoveredArg1.
            recoveredBlock86PC := 130.
        ].
        recoveredBlock86Step = 130 ifTrue: [
            recoveredBlock86Stack3 := recoveredBlock86Arg2.
            recoveredBlock86PC := 131.
        ].
        recoveredBlock86Step = 131 ifTrue: [
            recoveredBlock86Stack3 := (recoveredBlock86Stack3) + (1).
            recoveredBlock86PC := 132.
        ].
        recoveredBlock86Step = 132 ifTrue: [
            recoveredBlock86Stack4 := unconditionalTrigger.
            recoveredBlock86PC := 134.
        ].
        recoveredBlock86Step = 134 ifTrue: [
            (recoveredBlock86Stack1) transitionsInChildren: (recoveredBlock86Stack2) index: (recoveredBlock86Stack3) trigger: (recoveredBlock86Stack4).
            recoveredBlock86PC := 137.
        ].
        recoveredBlock86Step = 137 ifTrue: [
            recoveredBlock86Stack1 := recoveredLocal3.
            recoveredBlock86PC := 140.
        ].
        recoveredBlock86Step = 140 ifTrue: [
            recoveredBlock86Stack2 := unconditionalTrigger.
            recoveredBlock86PC := 142.
        ].
        recoveredBlock86Step = 142 ifTrue: [
            (recoveredBlock86Stack1) addAll: (recoveredBlock86Stack2).
            recoveredBlock86PC := 144.
        ].
        recoveredBlock86Step = 144 ifTrue: [
            recoveredBlock86Stack1 := recoveredLocal2.
            recoveredBlock86PC := 147.
        ].
        recoveredBlock86Step = 147 ifTrue: [
            recoveredBlock86Stack2 := recoveredBlock86Stack1.
            recoveredBlock86PC := 148.
        ].
        recoveredBlock86Step = 148 ifTrue: [
            visitedJunctions := recoveredBlock86Stack2.
            recoveredBlock86PC := 150.
        ].
        recoveredBlock86Step = 150 ifTrue: [
            recoveredBlock86Result := recoveredBlock86Stack1.
            recoveredBlock86Done := true.
        ].
    ].
    recoveredBlock86Result
].
            recoveredPC := 151.
        ].
        recoveredStep = 151 ifTrue: [
            (recoveredStack1) doWithIndex: (recoveredStack2).
            recoveredPC := 153.
        ].
        recoveredStep = 153 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 154.
        ].
        recoveredStep = 154 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 155.
        ].
        recoveredStep = 155 ifTrue: [
            recoveredLocal2 := recoveredStack2.
            recoveredPC := 158.
        ].
        recoveredStep = 158 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 161.
        ].
        recoveredStep = 161 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 164.
        ].
        recoveredStep = 164 ifTrue: [
            recoveredStack2 := recoveredLocal4.
            recoveredPC := 167.
        ].
        recoveredStep = 167 ifTrue: [
            recoveredStack1 := (recoveredStack1) and: (recoveredStack2).
            recoveredPC := 169.
        ].
        recoveredStep = 169 ifTrue: [
            unconditionalTransition := recoveredStack1.
            recoveredPC := 171.
        ].
        recoveredStep = 171 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 174.
        ].
        recoveredStep = 174 ifTrue: [
            unconditionalTrigger := recoveredStack1.
            recoveredPC := 176.
        ].
        recoveredStep = 176 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x205a129c; bytecode file offset 0xe9dbc8"
!SGSmSemanticAnalyser methodsFor: 'recovered'!
analyzeState: recoveredArg1 firstVisit: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := unconditionalTransition.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := unconditionalTrigger.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := transitionTrigger.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack1) add: (recoveredStack2).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := reachable.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := (recoveredStack1) includes: (recoveredStack2).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 192] ifFalse: [recoveredPC := 26].
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := reachable.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            (recoveredStack1) add: (recoveredStack2).
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := (recoveredStack1) owner.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            (recoveredStack1) acceptBdlVisitor: (recoveredStack2).
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := transitionTrigger.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack1 := unconditionalTrigger.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack1 := unconditionalTransition.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredLocal5 := recoveredStack1.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack1 := transitionPath.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack1 := SortedCollection.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack2 := [:block281157bcArg1 :block281157bcArg2 | 
    | block281157bcValue0 block281157bcValue1 block281157bcValue2 block281157bcValue3 block281157bcValue4 |
    block281157bcValue0 := block281157bcArg1.
    block281157bcValue1 := (block281157bcValue0) priority.
    block281157bcValue2 := block281157bcArg2.
    block281157bcValue3 := (block281157bcValue2) priority.
    block281157bcValue4 := (block281157bcValue1) > (block281157bcValue3).
    block281157bcValue4
].
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack1 := (recoveredStack1) sortBlock: (recoveredStack2).
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredStack2 := (recoveredStack2) transitions.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            (recoveredStack1) addAll: (recoveredStack2).
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack2 := [:recoveredBlock94Arg1 :recoveredBlock94Arg2 | 
    | recoveredBlock94Stack0 recoveredBlock94Stack1 recoveredBlock94Stack2 recoveredBlock94Stack3 recoveredBlock94Stack4 recoveredBlock94Stack5 recoveredBlock94PC recoveredBlock94Step recoveredBlock94Done recoveredBlock94Result |
    recoveredBlock94Stack0 := self.
    recoveredBlock94PC := 100.
    recoveredBlock94Done := false.
    [recoveredBlock94Done not] whileTrue: [
        recoveredBlock94Step := recoveredBlock94PC.
        recoveredBlock94Step = 100 ifTrue: [
            recoveredBlock94Stack1 := SGReservedNames.
            recoveredBlock94PC := 102.
        ].
        recoveredBlock94Step = 102 ifTrue: [
            recoveredBlock94Stack1 := (recoveredBlock94Stack1) undefName.
            recoveredBlock94PC := 104.
        ].
        recoveredBlock94Step = 104 ifTrue: [
            transitionTrigger := recoveredBlock94Stack1.
            recoveredBlock94PC := 106.
        ].
        recoveredBlock94Step = 106 ifTrue: [
            recoveredBlock94Stack1 := true.
            recoveredBlock94PC := 107.
        ].
        recoveredBlock94Step = 107 ifTrue: [
            unconditionalTransition := recoveredBlock94Stack1.
            recoveredBlock94PC := 109.
        ].
        recoveredBlock94Step = 109 ifTrue: [
            recoveredBlock94Stack1 := Set.
            recoveredBlock94PC := 111.
        ].
        recoveredBlock94Step = 111 ifTrue: [
            recoveredBlock94Stack1 := (recoveredBlock94Stack1) new.
            recoveredBlock94PC := 113.
        ].
        recoveredBlock94Step = 113 ifTrue: [
            unconditionalTrigger := recoveredBlock94Stack1.
            recoveredBlock94PC := 115.
        ].
        recoveredBlock94Step = 115 ifTrue: [
            recoveredBlock94Stack1 := OrderedCollection.
            recoveredBlock94PC := 117.
        ].
        recoveredBlock94Step = 117 ifTrue: [
            recoveredBlock94Stack1 := (recoveredBlock94Stack1) new.
            recoveredBlock94PC := 119.
        ].
        recoveredBlock94Step = 119 ifTrue: [
            visitedJunctions := recoveredBlock94Stack1.
            recoveredBlock94PC := 121.
        ].
        recoveredBlock94Step = 121 ifTrue: [
            recoveredBlock94Stack1 := OrderedCollection.
            recoveredBlock94PC := 123.
        ].
        recoveredBlock94Step = 123 ifTrue: [
            recoveredBlock94Stack1 := (recoveredBlock94Stack1) new.
            recoveredBlock94PC := 125.
        ].
        recoveredBlock94Step = 125 ifTrue: [
            transitionPath := recoveredBlock94Stack1.
            recoveredBlock94PC := 127.
        ].
        recoveredBlock94Step = 127 ifTrue: [
            recoveredBlock94Stack1 := recoveredBlock94Arg1.
            recoveredBlock94PC := 128.
        ].
        recoveredBlock94Step = 128 ifTrue: [
            recoveredBlock94Stack2 := self.
            recoveredBlock94PC := 129.
        ].
        recoveredBlock94Step = 129 ifTrue: [
            (recoveredBlock94Stack1) acceptBdlVisitor: (recoveredBlock94Stack2).
            recoveredBlock94PC := 131.
        ].
        recoveredBlock94Step = 131 ifTrue: [
            recoveredBlock94Stack1 := nil.
            recoveredBlock94PC := 132.
        ].
        recoveredBlock94Step = 132 ifTrue: [
            recoveredBlock94Stack2 := unconditionalTransition.
            recoveredBlock94PC := 134.
        ].
        recoveredBlock94Step = 134 ifTrue: [
            (recoveredBlock94Stack2) ifTrue: [recoveredBlock94PC := 138] ifFalse: [recoveredBlock94PC := 160].
        ].
        recoveredBlock94Step = 138 ifTrue: [
            recoveredBlock94PC := 139.
        ].
        recoveredBlock94Step = 139 ifTrue: [
            recoveredBlock94Stack1 := self.
            recoveredBlock94PC := 140.
        ].
        recoveredBlock94Step = 140 ifTrue: [
            recoveredBlock94Stack2 := recoveredArg1.
            recoveredBlock94PC := 143.
        ].
        recoveredBlock94Step = 143 ifTrue: [
            recoveredBlock94Stack3 := recoveredBlock94Arg1.
            recoveredBlock94PC := 144.
        ].
        recoveredBlock94Step = 144 ifTrue: [
            recoveredBlock94Stack4 := unconditionalTrigger.
            recoveredBlock94PC := 146.
        ].
        recoveredBlock94Step = 146 ifTrue: [
            (recoveredBlock94Stack1) staticActionsInChildren: (recoveredBlock94Stack2) transition: (recoveredBlock94Stack3) trigger: (recoveredBlock94Stack4).
            recoveredBlock94PC := 149.
        ].
        recoveredBlock94Step = 149 ifTrue: [
            recoveredBlock94Stack1 := self.
            recoveredBlock94PC := 150.
        ].
        recoveredBlock94Step = 150 ifTrue: [
            recoveredBlock94Stack2 := recoveredArg1.
            recoveredBlock94PC := 153.
        ].
        recoveredBlock94Step = 153 ifTrue: [
            recoveredBlock94Stack3 := recoveredBlock94Arg2.
            recoveredBlock94PC := 154.
        ].
        recoveredBlock94Step = 154 ifTrue: [
            recoveredBlock94Stack3 := (recoveredBlock94Stack3) + (1).
            recoveredBlock94PC := 155.
        ].
        recoveredBlock94Step = 155 ifTrue: [
            recoveredBlock94Stack4 := unconditionalTrigger.
            recoveredBlock94PC := 157.
        ].
        recoveredBlock94Step = 157 ifTrue: [
            recoveredBlock94Stack1 := (recoveredBlock94Stack1) transitionsInChildren: (recoveredBlock94Stack2) index: (recoveredBlock94Stack3) trigger: (recoveredBlock94Stack4).
            recoveredBlock94PC := 160.
        ].
        recoveredBlock94Step = 160 ifTrue: [
            recoveredBlock94Result := recoveredBlock94Stack1.
            recoveredBlock94Done := true.
        ].
    ].
    recoveredBlock94Result
].
            recoveredPC := 161.
        ].
        recoveredStep = 161 ifTrue: [
            (recoveredStack1) doWithIndex: (recoveredStack2).
            recoveredPC := 163.
        ].
        recoveredStep = 163 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 166.
        ].
        recoveredStep = 166 ifTrue: [
            unconditionalTransition := recoveredStack1.
            recoveredPC := 168.
        ].
        recoveredStep = 168 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 171.
        ].
        recoveredStep = 171 ifTrue: [
            transitionTrigger := recoveredStack1.
            recoveredPC := 173.
        ].
        recoveredStep = 173 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 176.
        ].
        recoveredStep = 176 ifTrue: [
            unconditionalTrigger := recoveredStack1.
            recoveredPC := 178.
        ].
        recoveredStep = 178 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 181.
        ].
        recoveredStep = 181 ifTrue: [
            transitionPath := recoveredStack1.
            recoveredPC := 183.
        ].
        recoveredStep = 183 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 186.
        ].
        recoveredStep = 186 ifTrue: [
            (recoveredStack1) value.
            recoveredPC := 188.
        ].
        recoveredStep = 188 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 189.
        ].
        recoveredStep = 189 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 192.
        ].
        recoveredStep = 192 ifTrue: [
            recoveredStack1 := transitionTrigger.
            recoveredPC := 194.
        ].
        recoveredStep = 194 ifTrue: [
            recoveredStack2 := SGReservedNames.
            recoveredPC := 196.
        ].
        recoveredStep = 196 ifTrue: [
            recoveredStack2 := (recoveredStack2) undefName.
            recoveredPC := 198.
        ].
        recoveredStep = 198 ifTrue: [
            recoveredStack1 := (recoveredStack1) equals: (recoveredStack2).
            recoveredPC := 200.
        ].
        recoveredStep = 200 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 204] ifFalse: [recoveredPC := 291].
        ].
        recoveredStep = 204 ifTrue: [
            recoveredStack1 := transitionPath.
            recoveredPC := 206.
        ].
        recoveredStep = 206 ifTrue: [
            recoveredStack1 := (recoveredStack1) isEmpty.
            recoveredPC := 208.
        ].
        recoveredStep = 208 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 212] ifFalse: [recoveredPC := 222].
        ].
        recoveredStep = 212 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 213.
        ].
        recoveredStep = 213 ifTrue: [
            recoveredStack1 := (recoveredStack1) source.
            recoveredPC := 215.
        ].
        recoveredStep = 215 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 218.
        ].
        recoveredStep = 218 ifTrue: [
            recoveredPC := 279.
        ].
        recoveredStep = 222 ifTrue: [
            recoveredStack1 := transitionPath.
            recoveredPC := 224.
        ].
        recoveredStep = 224 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 226.
        ].
        recoveredStep = 226 ifTrue: [
            recoveredStack2 := 1.
            recoveredPC := 228.
        ].
        recoveredStep = 228 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 229.
        ].
        recoveredStep = 229 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 232] ifFalse: [recoveredPC := 244].
        ].
        recoveredStep = 232 ifTrue: [
            recoveredStack1 := transitionPath.
            recoveredPC := 234.
        ].
        recoveredStep = 234 ifTrue: [
            recoveredStack1 := (recoveredStack1) first.
            recoveredPC := 236.
        ].
        recoveredStep = 236 ifTrue: [
            recoveredStack1 := (recoveredStack1) source.
            recoveredPC := 238.
        ].
        recoveredStep = 238 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 241.
        ].
        recoveredStep = 241 ifTrue: [
            recoveredPC := 279.
        ].
        recoveredStep = 244 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 245.
        ].
        recoveredStep = 245 ifTrue: [
            recoveredStack1 := (recoveredStack1) source.
            recoveredPC := 247.
        ].
        recoveredStep = 247 ifTrue: [
            recoveredStack2 := transitionPath.
            recoveredPC := 249.
        ].
        recoveredStep = 249 ifTrue: [
            recoveredStack3 := [:block281157e0Arg1 | 
    | block281157e0Value0 block281157e0Value1 |
    block281157e0Value0 := block281157e0Arg1.
    block281157e0Value1 := (block281157e0Value0) source.
    block281157e0Value1
].
            recoveredPC := 251.
        ].
        recoveredStep = 251 ifTrue: [
            recoveredPC := 258.
        ].
        recoveredStep = 258 ifTrue: [
            recoveredStack2 := (recoveredStack2) collect: (recoveredStack3).
            recoveredPC := 260.
        ].
        recoveredStep = 260 ifTrue: [
            recoveredStack3 := transitionPath.
            recoveredPC := 262.
        ].
        recoveredStep = 262 ifTrue: [
            recoveredStack4 := [:block28115804Arg1 | 
    | block28115804Value0 block28115804Value1 |
    block28115804Value0 := block28115804Arg1.
    block28115804Value1 := (block28115804Value0) errLabel.
    block28115804Value1
].
            recoveredPC := 264.
        ].
        recoveredStep = 264 ifTrue: [
            recoveredPC := 272.
        ].
        recoveredStep = 272 ifTrue: [
            recoveredStack3 := (recoveredStack3) collect: (recoveredStack4).
            recoveredPC := 274.
        ].
        recoveredStep = 274 ifTrue: [
            recoveredStack1 := (recoveredStack1) createMultiSource: (recoveredStack2) labels: (recoveredStack3).
            recoveredPC := 276.
        ].
        recoveredStep = 276 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 279.
        ].
        recoveredStep = 279 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 280.
        ].
        recoveredStep = 280 ifTrue: [
            recoveredStack2 := 60.
            recoveredPC := 282.
        ].
        recoveredStep = 282 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 285.
        ].
        recoveredStep = 285 ifTrue: [
            (recoveredStack1) smSyntaxErrNo: (recoveredStack2) source: (recoveredStack3).
            recoveredPC := 287.
        ].
        recoveredStep = 287 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 288.
        ].
        recoveredStep = 288 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 291.
        ].
        recoveredStep = 291 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

