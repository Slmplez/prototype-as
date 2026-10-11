"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"xxx_dyn.ic method 0x2000c66c; bytecode file offset 0x6d758"
!SstHttpConnectionManager methodsFor: 'recovered'!
connectionFor: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := super connectionFor: (recoveredValue0).
    recoveredLocal1 := recoveredValue1.
    (self) addToCurrent.
    (self) startConnectionChecker.
    recoveredValue2 := recoveredLocal1.
    ^recoveredValue2
! !

"xxx_dyn.ic method 0x2000c684; bytecode file offset 0x6d758"
!SstHttpConnectionManager methodsFor: 'recovered'!
close: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := super close: (recoveredValue0).
    recoveredLocal1 := recoveredValue1.
    (self) removeFromCurrent.
    (self) stopConnectionChecker.
    recoveredValue2 := recoveredLocal1.
    ^recoveredValue2
! !

"xxx_dyn.ic method 0x2000c958; bytecode file offset 0x6da34"
!SstHttpConnectionManager methodsFor: 'recovered'!
startConnectionChecker
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) isRunning.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 17] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) activityBlock.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := Processor.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) systemBackgroundPriority.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) forkAt: (recoveredStack1).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            Checker := recoveredStack0.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"xxx_dyn.ic method 0x20011f9c; bytecode file offset 0x73070"
!SstHttpConnectionManager methodsFor: 'recovered'!
countConnections
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack0 := (recoveredStack0) hasActiveConnections.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 25].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := [:block2800ad88Arg1 | 
    nil
].
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := (recoveredStack0) connectionsDo: (recoveredStack1).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := (recoveredStack0) size.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"xxx_dyn.ic method 0x2001284c; bytecode file offset 0x73924"
!SstHttpConnectionManager methodsFor: 'recovered'!
addToCurrent
    | recoveredValue0 |
    recoveredValue0 := [
    | recoveredBlock4Stack0 recoveredBlock4Stack1 recoveredBlock4Stack2 recoveredBlock4Stack3 recoveredBlock4PC recoveredBlock4Step recoveredBlock4Done recoveredBlock4Result |
    recoveredBlock4Stack0 := self.
    recoveredBlock4PC := 10.
    recoveredBlock4Done := false.
    [recoveredBlock4Done not] whileTrue: [
        recoveredBlock4Step := recoveredBlock4PC.
        recoveredBlock4Step = 10 ifTrue: [
            recoveredBlock4Stack1 := Current.
            recoveredBlock4PC := 12.
        ].
        recoveredBlock4Step = 12 ifTrue: [
            (recoveredBlock4Stack1 ~~ nil) ifTrue: [recoveredBlock4PC := 21] ifFalse: [recoveredBlock4PC := 16].
        ].
        recoveredBlock4Step = 16 ifTrue: [
            recoveredBlock4Stack1 := Set.
            recoveredBlock4PC := 18.
        ].
        recoveredBlock4Step = 18 ifTrue: [
            recoveredBlock4Stack1 := (recoveredBlock4Stack1) new.
            recoveredBlock4PC := 19.
        ].
        recoveredBlock4Step = 19 ifTrue: [
            Current := recoveredBlock4Stack1.
            recoveredBlock4PC := 21.
        ].
        recoveredBlock4Step = 21 ifTrue: [
            recoveredBlock4Stack1 := Current.
            recoveredBlock4PC := 23.
        ].
        recoveredBlock4Step = 23 ifTrue: [
            recoveredBlock4Stack2 := self.
            recoveredBlock4PC := 24.
        ].
        recoveredBlock4Step = 24 ifTrue: [
            recoveredBlock4Stack1 := (recoveredBlock4Stack1) add: (recoveredBlock4Stack2).
            recoveredBlock4PC := 25.
        ].
        recoveredBlock4Step = 25 ifTrue: [
            recoveredBlock4Result := recoveredBlock4Stack1.
            recoveredBlock4Done := true.
        ].
    ].
    recoveredBlock4Result
].
    (recoveredValue0) critical.
    ^self
! !

"xxx_dyn.ic method 0x20015068; bytecode file offset 0x76138"
!SstHttpConnectionManager methodsFor: 'recovered'!
isRunning
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := [
    | recoveredBlock4Value0 recoveredBlock4Value1 |
    recoveredBlock4Value0 := Checker.
    recoveredBlock4Value1 := recoveredBlock4Value0.
    recoveredLocal1 := recoveredBlock4Value1.
    recoveredBlock4Value0
].
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack1) critical.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            (recoveredStack2 == nil) ifTrue: [recoveredPC := 32] ifFalse: [recoveredPC := 26].
        ].
        recoveredStep = 26 ifTrue: [
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := (recoveredStack1) isDead.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := (recoveredStack1) not.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"xxx_dyn.ic method 0x2001527c; bytecode file offset 0x76358"
!SstHttpConnectionManager methodsFor: 'recovered'!
stopConnectionChecker
    | recoveredStack0 recoveredStack1 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) isRunning.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 8] ifFalse: [recoveredPC := 32].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := [
    | block2800ae60Stack0 block2800ae60Stack1 block2800ae60Stack2 block2800ae60Stack3 block2800ae60PC block2800ae60Step block2800ae60Done block2800ae60Result |
    block2800ae60Stack0 := self.
    block2800ae60PC := 4.
    block2800ae60Done := false.
    [block2800ae60Done not] whileTrue: [
        block2800ae60Step := block2800ae60PC.
        block2800ae60Step = 4 ifTrue: [
            block2800ae60Stack1 := nil.
            block2800ae60PC := 5.
        ].
        block2800ae60Step = 5 ifTrue: [
            block2800ae60Stack2 := Current.
            block2800ae60PC := 7.
        ].
        block2800ae60Step = 7 ifTrue: [
            (block2800ae60Stack2 ~~ nil) ifTrue: [block2800ae60PC := 19] ifFalse: [block2800ae60PC := 10].
        ].
        block2800ae60Step = 10 ifTrue: [
            block2800ae60PC := 11.
        ].
        block2800ae60Step = 11 ifTrue: [
            block2800ae60Stack1 := Checker.
            block2800ae60PC := 13.
        ].
        block2800ae60Step = 13 ifTrue: [
            (block2800ae60Stack1) terminate.
            block2800ae60PC := 15.
        ].
        block2800ae60Step = 15 ifTrue: [
            block2800ae60Stack1 := nil.
            block2800ae60PC := 16.
        ].
        block2800ae60Step = 16 ifTrue: [
            block2800ae60Stack2 := block2800ae60Stack1.
            block2800ae60PC := 17.
        ].
        block2800ae60Step = 17 ifTrue: [
            Checker := block2800ae60Stack2.
            block2800ae60PC := 19.
        ].
        block2800ae60Step = 19 ifTrue: [
            block2800ae60Result := block2800ae60Stack1.
            block2800ae60Done := true.
        ].
    ].
    block2800ae60Result
].
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            (recoveredStack0) critical.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"xxx_dyn.ic method 0x20018058; bytecode file offset 0x79134"
!SstHttpConnectionManager methodsFor: 'recovered'!
activityBlock
    | recoveredValue0 |
    recoveredValue0 := [
    | recoveredBlock4Local1 recoveredBlock4Stack0 recoveredBlock4Stack1 recoveredBlock4Stack2 recoveredBlock4Stack3 recoveredBlock4PC recoveredBlock4Step recoveredBlock4Done recoveredBlock4Result |
    recoveredBlock4Stack0 := self.
    recoveredBlock4PC := 10.
    recoveredBlock4Done := false.
    [recoveredBlock4Done not] whileTrue: [
        recoveredBlock4Step := recoveredBlock4PC.
        recoveredBlock4Step = 10 ifTrue: [
            recoveredBlock4Stack1 := true.
            recoveredBlock4PC := 11.
        ].
        recoveredBlock4Step = 11 ifTrue: [
            recoveredBlock4Local1 := recoveredBlock4Stack1.
            recoveredBlock4PC := 12.
        ].
        recoveredBlock4Step = 12 ifTrue: [
            recoveredBlock4PC := 34.
        ].
        recoveredBlock4Step = 16 ifTrue: [
            recoveredBlock4Stack1 := self.
            recoveredBlock4PC := 17.
        ].
        recoveredBlock4Step = 17 ifTrue: [
            (recoveredBlock4Stack1) checkConnections.
            recoveredBlock4PC := 19.
        ].
        recoveredBlock4Step = 19 ifTrue: [
            recoveredBlock4Stack1 := Delay.
            recoveredBlock4PC := 21.
        ].
        recoveredBlock4Step = 21 ifTrue: [
            recoveredBlock4Stack2 := HttpSurvivalTime.
            recoveredBlock4PC := 23.
        ].
        recoveredBlock4Step = 23 ifTrue: [
            recoveredBlock4Stack1 := (recoveredBlock4Stack1) forMilliseconds: (recoveredBlock4Stack2).
            recoveredBlock4PC := 24.
        ].
        recoveredBlock4Step = 24 ifTrue: [
            (recoveredBlock4Stack1) wait.
            recoveredBlock4PC := 26.
        ].
        recoveredBlock4Step = 26 ifTrue: [
            recoveredBlock4Stack1 := Current.
            recoveredBlock4PC := 28.
        ].
        recoveredBlock4Step = 28 ifTrue: [
            (recoveredBlock4Stack1 ~~ nil) ifTrue: [recoveredBlock4PC := 34] ifFalse: [recoveredBlock4PC := 32].
        ].
        recoveredBlock4Step = 32 ifTrue: [
            recoveredBlock4Stack1 := false.
            recoveredBlock4PC := 33.
        ].
        recoveredBlock4Step = 33 ifTrue: [
            recoveredBlock4Local1 := recoveredBlock4Stack1.
            recoveredBlock4PC := 34.
        ].
        recoveredBlock4Step = 34 ifTrue: [
            recoveredBlock4Stack1 := recoveredBlock4Local1.
            recoveredBlock4PC := 35.
        ].
        recoveredBlock4Step = 35 ifTrue: [
            recoveredBlock4Stack2 := true.
            recoveredBlock4PC := 36.
        ].
        recoveredBlock4Step = 36 ifTrue: [
            (recoveredBlock4Stack1 == recoveredBlock4Stack2) ifTrue: [recoveredBlock4PC := 16] ifFalse: [recoveredBlock4PC := 38].
        ].
        recoveredBlock4Step = 38 ifTrue: [
            recoveredBlock4Stack1 := nil.
            recoveredBlock4PC := 39.
        ].
        recoveredBlock4Step = 39 ifTrue: [
            recoveredBlock4Result := recoveredBlock4Stack1.
            recoveredBlock4Done := true.
        ].
    ].
    recoveredBlock4Result
].
    ^recoveredValue0
! !

"xxx_dyn.ic method 0x2001e430; bytecode file offset 0x7f50c"
!SstHttpConnectionManager methodsFor: 'recovered'!
removeFromCurrent
    | recoveredValue0 |
    recoveredValue0 := [
    | recoveredBlock4Local1 recoveredBlock4Stack0 recoveredBlock4Stack1 recoveredBlock4Stack2 recoveredBlock4Stack3 recoveredBlock4Stack4 recoveredBlock4PC recoveredBlock4Step recoveredBlock4Done recoveredBlock4Result |
    recoveredBlock4Stack0 := self.
    recoveredBlock4PC := 10.
    recoveredBlock4Done := false.
    [recoveredBlock4Done not] whileTrue: [
        recoveredBlock4Step := recoveredBlock4PC.
        recoveredBlock4Step = 10 ifTrue: [
            recoveredBlock4Stack1 := nil.
            recoveredBlock4PC := 11.
        ].
        recoveredBlock4Step = 11 ifTrue: [
            recoveredBlock4Stack2 := Current.
            recoveredBlock4PC := 13.
        ].
        recoveredBlock4Step = 13 ifTrue: [
            (recoveredBlock4Stack2 == nil) ifTrue: [recoveredBlock4PC := 55] ifFalse: [recoveredBlock4PC := 16].
        ].
        recoveredBlock4Step = 16 ifTrue: [
            recoveredBlock4PC := 17.
        ].
        recoveredBlock4Step = 17 ifTrue: [
            recoveredBlock4Stack1 := 0.
            recoveredBlock4PC := 19.
        ].
        recoveredBlock4Step = 19 ifTrue: [
            recoveredBlock4Local1 := recoveredBlock4Stack1.
            recoveredBlock4PC := 20.
        ].
        recoveredBlock4Step = 20 ifTrue: [
            recoveredBlock4Stack1 := self.
            recoveredBlock4PC := 21.
        ].
        recoveredBlock4Step = 21 ifTrue: [
            recoveredBlock4Stack1 := (recoveredBlock4Stack1) countConnections.
            recoveredBlock4PC := 22.
        ].
        recoveredBlock4Step = 22 ifTrue: [
            recoveredBlock4Local1 := recoveredBlock4Stack1.
            recoveredBlock4PC := 23.
        ].
        recoveredBlock4Step = 23 ifTrue: [
            recoveredBlock4Stack1 := nil.
            recoveredBlock4PC := 24.
        ].
        recoveredBlock4Step = 24 ifTrue: [
            recoveredBlock4Stack2 := recoveredBlock4Local1.
            recoveredBlock4PC := 25.
        ].
        recoveredBlock4Step = 25 ifTrue: [
            recoveredBlock4Stack3 := 1.
            recoveredBlock4PC := 27.
        ].
        recoveredBlock4Step = 27 ifTrue: [
            recoveredBlock4Stack2 := (recoveredBlock4Stack2) <= (recoveredBlock4Stack3).
            recoveredBlock4PC := 28.
        ].
        recoveredBlock4Step = 28 ifTrue: [
            (recoveredBlock4Stack2) ifTrue: [recoveredBlock4PC := 32] ifFalse: [recoveredBlock4PC := 53].
        ].
        recoveredBlock4Step = 32 ifTrue: [
            recoveredBlock4PC := 33.
        ].
        recoveredBlock4Step = 33 ifTrue: [
            recoveredBlock4Stack1 := Current.
            recoveredBlock4PC := 35.
        ].
        recoveredBlock4Step = 35 ifTrue: [
            recoveredBlock4Stack2 := self.
            recoveredBlock4PC := 36.
        ].
        recoveredBlock4Step = 36 ifTrue: [
            recoveredBlock4Stack3 := [].
            recoveredBlock4PC := 38.
        ].
        recoveredBlock4Step = 38 ifTrue: [
            (recoveredBlock4Stack1) remove: (recoveredBlock4Stack2) ifAbsent: (recoveredBlock4Stack3).
            recoveredBlock4PC := 40.
        ].
        recoveredBlock4Step = 40 ifTrue: [
            recoveredBlock4Stack1 := nil.
            recoveredBlock4PC := 41.
        ].
        recoveredBlock4Step = 41 ifTrue: [
            recoveredBlock4Stack2 := Current.
            recoveredBlock4PC := 43.
        ].
        recoveredBlock4Step = 43 ifTrue: [
            recoveredBlock4Stack2 := (recoveredBlock4Stack2) isEmpty.
            recoveredBlock4PC := 45.
        ].
        recoveredBlock4Step = 45 ifTrue: [
            (recoveredBlock4Stack2) ifTrue: [recoveredBlock4PC := 48] ifFalse: [recoveredBlock4PC := 53].
        ].
        recoveredBlock4Step = 48 ifTrue: [
            recoveredBlock4PC := 49.
        ].
        recoveredBlock4Step = 49 ifTrue: [
            recoveredBlock4Stack1 := nil.
            recoveredBlock4PC := 50.
        ].
        recoveredBlock4Step = 50 ifTrue: [
            recoveredBlock4Stack2 := recoveredBlock4Stack1.
            recoveredBlock4PC := 51.
        ].
        recoveredBlock4Step = 51 ifTrue: [
            Current := recoveredBlock4Stack2.
            recoveredBlock4PC := 53.
        ].
        recoveredBlock4Step = 53 ifTrue: [
            recoveredBlock4Stack2 := nil.
            recoveredBlock4PC := 54.
        ].
        recoveredBlock4Step = 54 ifTrue: [
            recoveredBlock4Local1 := recoveredBlock4Stack2.
            recoveredBlock4PC := 55.
        ].
        recoveredBlock4Step = 55 ifTrue: [
            recoveredBlock4Result := recoveredBlock4Stack1.
            recoveredBlock4Done := true.
        ].
    ].
    recoveredBlock4Result
].
    (recoveredValue0) critical.
    ^self
! !

"xxx_dyn.ic method 0x2002b294; bytecode file offset 0x8c398"
!SstHttpConnectionManager methodsFor: 'recovered'!
checkConnections
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 |
    recoveredValue0 := LookupTable.
    recoveredValue1 := (recoveredValue0) new.
    recoveredLocal2 := recoveredValue1.
    recoveredValue2 := Time.
    recoveredValue3 := (recoveredValue2) millisecondClockValue.
    recoveredValue4 := HttpSurvivalTime.
    recoveredValue5 := (recoveredValue3) - (recoveredValue4).
    recoveredLocal1 := recoveredValue5.
    recoveredValue6 := [
    | recoveredBlock19Stack0 recoveredBlock19Stack1 recoveredBlock19Stack2 recoveredBlock19Stack3 recoveredBlock19PC recoveredBlock19Step recoveredBlock19Done recoveredBlock19Result |
    recoveredBlock19Stack0 := self.
    recoveredBlock19PC := 26.
    recoveredBlock19Done := false.
    [recoveredBlock19Done not] whileTrue: [
        recoveredBlock19Step := recoveredBlock19PC.
        recoveredBlock19Step = 26 ifTrue: [
            recoveredBlock19Stack1 := nil.
            recoveredBlock19PC := 27.
        ].
        recoveredBlock19Step = 27 ifTrue: [
            recoveredBlock19Stack2 := Current.
            recoveredBlock19PC := 29.
        ].
        recoveredBlock19Step = 29 ifTrue: [
            (recoveredBlock19Stack2 == nil) ifTrue: [recoveredBlock19PC := 100] ifFalse: [recoveredBlock19PC := 32].
        ].
        recoveredBlock19Step = 32 ifTrue: [
            recoveredBlock19PC := 33.
        ].
        recoveredBlock19Step = 33 ifTrue: [
            recoveredBlock19Stack1 := Current.
            recoveredBlock19PC := 35.
        ].
        recoveredBlock19Step = 35 ifTrue: [
            recoveredBlock19Stack2 := [:recoveredBlock19Block35Arg1 | 
    | recoveredBlock19Block35Local1 recoveredBlock19Block35Local2 recoveredBlock19Block35Stack0 recoveredBlock19Block35Stack1 recoveredBlock19Block35Stack2 recoveredBlock19Block35Stack3 recoveredBlock19Block35PC recoveredBlock19Block35Step recoveredBlock19Block35Done recoveredBlock19Block35Result |
    recoveredBlock19Block35Stack0 := nil.
    recoveredBlock19Block35PC := 42.
    recoveredBlock19Block35Done := false.
    [recoveredBlock19Block35Done not] whileTrue: [
        recoveredBlock19Block35Step := recoveredBlock19Block35PC.
        recoveredBlock19Block35Step = 42 ifTrue: [
            recoveredBlock19Block35Stack1 := nil.
            recoveredBlock19Block35PC := 43.
        ].
        recoveredBlock19Block35Step = 43 ifTrue: [
            recoveredBlock19Block35Stack2 := recoveredBlock19Block35Arg1.
            recoveredBlock19Block35PC := 44.
        ].
        recoveredBlock19Block35Step = 44 ifTrue: [
            (recoveredBlock19Block35Stack2 == nil) ifTrue: [recoveredBlock19Block35PC := 97] ifFalse: [recoveredBlock19Block35PC := 48].
        ].
        recoveredBlock19Block35Step = 48 ifTrue: [
            recoveredBlock19Block35PC := 49.
        ].
        recoveredBlock19Block35Step = 49 ifTrue: [
            recoveredBlock19Block35Stack1 := recoveredBlock19Block35Arg1.
            recoveredBlock19Block35PC := 50.
        ].
        recoveredBlock19Block35Step = 50 ifTrue: [
            recoveredBlock19Block35Stack1 := (recoveredBlock19Block35Stack1) hasActiveConnections.
            recoveredBlock19Block35PC := 52.
        ].
        recoveredBlock19Block35Step = 52 ifTrue: [
            (recoveredBlock19Block35Stack1) ifTrue: [recoveredBlock19Block35PC := 56] ifFalse: [recoveredBlock19Block35PC := 94].
        ].
        recoveredBlock19Block35Step = 56 ifTrue: [
            recoveredBlock19Block35Stack1 := recoveredBlock19Block35Arg1.
            recoveredBlock19Block35PC := 57.
        ].
        recoveredBlock19Block35Step = 57 ifTrue: [
            recoveredBlock19Block35Stack2 := [:block2800c0f0Arg1 | 
    nil
].
            recoveredBlock19Block35PC := 59.
        ].
        recoveredBlock19Block35Step = 59 ifTrue: [
            recoveredBlock19Block35PC := 64.
        ].
        recoveredBlock19Block35Step = 64 ifTrue: [
            recoveredBlock19Block35Stack1 := (recoveredBlock19Block35Stack1) connectionsDo: (recoveredBlock19Block35Stack2).
            recoveredBlock19Block35PC := 66.
        ].
        recoveredBlock19Block35Step = 66 ifTrue: [
            recoveredBlock19Block35Local2 := recoveredBlock19Block35Stack1.
            recoveredBlock19Block35PC := 67.
        ].
        recoveredBlock19Block35Step = 67 ifTrue: [
            recoveredBlock19Block35Stack1 := recoveredBlock19Block35Local2.
            recoveredBlock19Block35PC := 68.
        ].
        recoveredBlock19Block35Step = 68 ifTrue: [
            recoveredBlock19Block35Stack2 := [:recoveredBlock19Block35Block68Arg1 | 
    | recoveredBlock19Block35Block68Value0 recoveredBlock19Block35Block68Value1 recoveredBlock19Block35Block68Value2 recoveredBlock19Block35Block68Value3 |
    recoveredBlock19Block35Block68Value0 := recoveredBlock19Block35Block68Arg1.
    recoveredBlock19Block35Block68Value1 := (recoveredBlock19Block35Block68Value0) lastUse.
    recoveredBlock19Block35Block68Value2 := recoveredLocal1.
    recoveredBlock19Block35Block68Value3 := (recoveredBlock19Block35Block68Value1) < (recoveredBlock19Block35Block68Value2).
    recoveredBlock19Block35Block68Value3
].
            recoveredBlock19Block35PC := 82.
        ].
        recoveredBlock19Block35Step = 82 ifTrue: [
            recoveredBlock19Block35Stack1 := (recoveredBlock19Block35Stack1) select: (recoveredBlock19Block35Stack2).
            recoveredBlock19Block35PC := 84.
        ].
        recoveredBlock19Block35Step = 84 ifTrue: [
            recoveredBlock19Block35Local1 := recoveredBlock19Block35Stack1.
            recoveredBlock19Block35PC := 85.
        ].
        recoveredBlock19Block35Step = 85 ifTrue: [
            recoveredBlock19Block35Stack1 := recoveredLocal2.
            recoveredBlock19Block35PC := 88.
        ].
        recoveredBlock19Block35Step = 88 ifTrue: [
            recoveredBlock19Block35Stack2 := recoveredBlock19Block35Local1.
            recoveredBlock19Block35PC := 89.
        ].
        recoveredBlock19Block35Step = 89 ifTrue: [
            recoveredBlock19Block35Stack1 := (recoveredBlock19Block35Stack1) addAll: (recoveredBlock19Block35Stack2).
            recoveredBlock19Block35PC := 91.
        ].
        recoveredBlock19Block35Step = 91 ifTrue: [
            recoveredBlock19Block35PC := 97.
        ].
        recoveredBlock19Block35Step = 94 ifTrue: [
            recoveredBlock19Block35Stack1 := recoveredBlock19Block35Arg1.
            recoveredBlock19Block35PC := 95.
        ].
        recoveredBlock19Block35Step = 95 ifTrue: [
            recoveredBlock19Block35Stack1 := (recoveredBlock19Block35Stack1) removeFromCurrent.
            recoveredBlock19Block35PC := 97.
        ].
        recoveredBlock19Block35Step = 97 ifTrue: [
            recoveredBlock19Block35Result := recoveredBlock19Block35Stack1.
            recoveredBlock19Block35Done := true.
        ].
    ].
    recoveredBlock19Block35Result
].
            recoveredBlock19PC := 98.
        ].
        recoveredBlock19Step = 98 ifTrue: [
            recoveredBlock19Stack1 := (recoveredBlock19Stack1) do: (recoveredBlock19Stack2).
            recoveredBlock19PC := 100.
        ].
        recoveredBlock19Step = 100 ifTrue: [
            recoveredBlock19Result := recoveredBlock19Stack1.
            recoveredBlock19Done := true.
        ].
    ].
    recoveredBlock19Result
].
    (recoveredValue6) critical.
    recoveredValue7 := recoveredLocal2.
    recoveredValue8 := [:recoveredBlock106Arg1 | 
    | recoveredBlock106Value0 recoveredBlock106Value1 |
    recoveredBlock106Value0 := [
    | recoveredBlock106Block112Stack0 recoveredBlock106Block112Stack1 recoveredBlock106Block112Stack2 recoveredBlock106Block112Stack3 recoveredBlock106Block112Stack4 recoveredBlock106Block112PC recoveredBlock106Block112Step recoveredBlock106Block112Done recoveredBlock106Block112Result |
    recoveredBlock106Block112Stack0 := nil.
    recoveredBlock106Block112PC := 118.
    recoveredBlock106Block112Done := false.
    [recoveredBlock106Block112Done not] whileTrue: [
        recoveredBlock106Block112Step := recoveredBlock106Block112PC.
        recoveredBlock106Block112Step = 118 ifTrue: [
            recoveredBlock106Block112Stack1 := nil.
            recoveredBlock106Block112PC := 119.
        ].
        recoveredBlock106Block112Step = 119 ifTrue: [
            recoveredBlock106Block112Stack2 := recoveredBlock106Arg1.
            recoveredBlock106Block112PC := 122.
        ].
        recoveredBlock106Block112Step = 122 ifTrue: [
            recoveredBlock106Block112Stack2 := (recoveredBlock106Block112Stack2) lastUse.
            recoveredBlock106Block112PC := 124.
        ].
        recoveredBlock106Block112Step = 124 ifTrue: [
            recoveredBlock106Block112Stack3 := recoveredLocal1.
            recoveredBlock106Block112PC := 127.
        ].
        recoveredBlock106Block112Step = 127 ifTrue: [
            recoveredBlock106Block112Stack2 := (recoveredBlock106Block112Stack2) < (recoveredBlock106Block112Stack3).
            recoveredBlock106Block112PC := 128.
        ].
        recoveredBlock106Block112Step = 128 ifTrue: [
            (recoveredBlock106Block112Stack2) ifTrue: [recoveredBlock106Block112PC := 132] ifFalse: [recoveredBlock106Block112PC := 138].
        ].
        recoveredBlock106Block112Step = 132 ifTrue: [
            recoveredBlock106Block112PC := 133.
        ].
        recoveredBlock106Block112Step = 133 ifTrue: [
            recoveredBlock106Block112Stack1 := recoveredBlock106Arg1.
            recoveredBlock106Block112PC := 136.
        ].
        recoveredBlock106Block112Step = 136 ifTrue: [
            recoveredBlock106Block112Stack1 := (recoveredBlock106Block112Stack1) close.
            recoveredBlock106Block112PC := 138.
        ].
        recoveredBlock106Block112Step = 138 ifTrue: [
            recoveredBlock106Block112Result := recoveredBlock106Block112Stack1.
            recoveredBlock106Block112Done := true.
        ].
    ].
    recoveredBlock106Block112Result
].
    recoveredBlock106Value1 := (recoveredBlock106Value0) critical.
    recoveredBlock106Value1
].
    (recoveredValue7) do: (recoveredValue8).
    ^self
! !

