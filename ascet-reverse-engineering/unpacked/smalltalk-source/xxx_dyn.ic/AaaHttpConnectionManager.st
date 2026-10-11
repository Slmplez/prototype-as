"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"xxx_dyn.ic method 0x20001384; bytecode file offset 0x626a4"
!AaaHttpConnectionManager methodsFor: 'recovered'!
myHttpSurvivalTime
    ^54000000
! !

"xxx_dyn.ic method 0x200036d0; bytecode file offset 0x647ac"
!AaaHttpConnectionManager methodsFor: 'recovered'!
startConnectionChecker
    | recoveredValue0 |
    recoveredValue0 := super startConnectionChecker.
    ^recoveredValue0
! !

"xxx_dyn.ic method 0x200180a4; bytecode file offset 0x79180"
!AaaHttpConnectionManager methodsFor: 'recovered'!
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
            recoveredBlock4Stack2 := self.
            recoveredBlock4PC := 22.
        ].
        recoveredBlock4Step = 22 ifTrue: [
            recoveredBlock4Stack2 := (recoveredBlock4Stack2) myHttpSurvivalTime.
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

"xxx_dyn.ic method 0x2002b370; bytecode file offset 0x8c474"
!AaaHttpConnectionManager methodsFor: 'recovered'!
checkConnections
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 |
    recoveredValue0 := LookupTable.
    recoveredValue1 := (recoveredValue0) new.
    recoveredLocal2 := recoveredValue1.
    recoveredValue2 := Time.
    recoveredValue3 := (recoveredValue2) millisecondClockValue.
    recoveredValue4 := (self) myHttpSurvivalTime.
    recoveredValue5 := (recoveredValue3) - (recoveredValue4).
    recoveredLocal1 := recoveredValue5.
    recoveredValue6 := [
    | recoveredBlock20Stack0 recoveredBlock20Stack1 recoveredBlock20Stack2 recoveredBlock20Stack3 recoveredBlock20PC recoveredBlock20Step recoveredBlock20Done recoveredBlock20Result |
    recoveredBlock20Stack0 := self.
    recoveredBlock20PC := 26.
    recoveredBlock20Done := false.
    [recoveredBlock20Done not] whileTrue: [
        recoveredBlock20Step := recoveredBlock20PC.
        recoveredBlock20Step = 26 ifTrue: [
            recoveredBlock20Stack1 := nil.
            recoveredBlock20PC := 27.
        ].
        recoveredBlock20Step = 27 ifTrue: [
            recoveredBlock20Stack2 := Current.
            recoveredBlock20PC := 29.
        ].
        recoveredBlock20Step = 29 ifTrue: [
            (recoveredBlock20Stack2 == nil) ifTrue: [recoveredBlock20PC := 100] ifFalse: [recoveredBlock20PC := 32].
        ].
        recoveredBlock20Step = 32 ifTrue: [
            recoveredBlock20PC := 33.
        ].
        recoveredBlock20Step = 33 ifTrue: [
            recoveredBlock20Stack1 := Current.
            recoveredBlock20PC := 35.
        ].
        recoveredBlock20Step = 35 ifTrue: [
            recoveredBlock20Stack2 := [:recoveredBlock20Block35Arg1 | 
    | recoveredBlock20Block35Local1 recoveredBlock20Block35Local2 recoveredBlock20Block35Stack0 recoveredBlock20Block35Stack1 recoveredBlock20Block35Stack2 recoveredBlock20Block35Stack3 recoveredBlock20Block35PC recoveredBlock20Block35Step recoveredBlock20Block35Done recoveredBlock20Block35Result |
    recoveredBlock20Block35Stack0 := nil.
    recoveredBlock20Block35PC := 42.
    recoveredBlock20Block35Done := false.
    [recoveredBlock20Block35Done not] whileTrue: [
        recoveredBlock20Block35Step := recoveredBlock20Block35PC.
        recoveredBlock20Block35Step = 42 ifTrue: [
            recoveredBlock20Block35Stack1 := nil.
            recoveredBlock20Block35PC := 43.
        ].
        recoveredBlock20Block35Step = 43 ifTrue: [
            recoveredBlock20Block35Stack2 := recoveredBlock20Block35Arg1.
            recoveredBlock20Block35PC := 44.
        ].
        recoveredBlock20Block35Step = 44 ifTrue: [
            (recoveredBlock20Block35Stack2 == nil) ifTrue: [recoveredBlock20Block35PC := 97] ifFalse: [recoveredBlock20Block35PC := 48].
        ].
        recoveredBlock20Block35Step = 48 ifTrue: [
            recoveredBlock20Block35PC := 49.
        ].
        recoveredBlock20Block35Step = 49 ifTrue: [
            recoveredBlock20Block35Stack1 := recoveredBlock20Block35Arg1.
            recoveredBlock20Block35PC := 50.
        ].
        recoveredBlock20Block35Step = 50 ifTrue: [
            recoveredBlock20Block35Stack1 := (recoveredBlock20Block35Stack1) hasActiveConnections.
            recoveredBlock20Block35PC := 52.
        ].
        recoveredBlock20Block35Step = 52 ifTrue: [
            (recoveredBlock20Block35Stack1) ifTrue: [recoveredBlock20Block35PC := 56] ifFalse: [recoveredBlock20Block35PC := 94].
        ].
        recoveredBlock20Block35Step = 56 ifTrue: [
            recoveredBlock20Block35Stack1 := recoveredBlock20Block35Arg1.
            recoveredBlock20Block35PC := 57.
        ].
        recoveredBlock20Block35Step = 57 ifTrue: [
            recoveredBlock20Block35Stack2 := [:block2800c114Arg1 | 
    nil
].
            recoveredBlock20Block35PC := 59.
        ].
        recoveredBlock20Block35Step = 59 ifTrue: [
            recoveredBlock20Block35PC := 64.
        ].
        recoveredBlock20Block35Step = 64 ifTrue: [
            recoveredBlock20Block35Stack1 := (recoveredBlock20Block35Stack1) connectionsDo: (recoveredBlock20Block35Stack2).
            recoveredBlock20Block35PC := 66.
        ].
        recoveredBlock20Block35Step = 66 ifTrue: [
            recoveredBlock20Block35Local2 := recoveredBlock20Block35Stack1.
            recoveredBlock20Block35PC := 67.
        ].
        recoveredBlock20Block35Step = 67 ifTrue: [
            recoveredBlock20Block35Stack1 := recoveredBlock20Block35Local2.
            recoveredBlock20Block35PC := 68.
        ].
        recoveredBlock20Block35Step = 68 ifTrue: [
            recoveredBlock20Block35Stack2 := [:recoveredBlock20Block35Block68Arg1 | 
    | recoveredBlock20Block35Block68Value0 recoveredBlock20Block35Block68Value1 recoveredBlock20Block35Block68Value2 recoveredBlock20Block35Block68Value3 |
    recoveredBlock20Block35Block68Value0 := recoveredBlock20Block35Block68Arg1.
    recoveredBlock20Block35Block68Value1 := (recoveredBlock20Block35Block68Value0) lastUse.
    recoveredBlock20Block35Block68Value2 := recoveredLocal1.
    recoveredBlock20Block35Block68Value3 := (recoveredBlock20Block35Block68Value1) < (recoveredBlock20Block35Block68Value2).
    recoveredBlock20Block35Block68Value3
].
            recoveredBlock20Block35PC := 82.
        ].
        recoveredBlock20Block35Step = 82 ifTrue: [
            recoveredBlock20Block35Stack1 := (recoveredBlock20Block35Stack1) select: (recoveredBlock20Block35Stack2).
            recoveredBlock20Block35PC := 84.
        ].
        recoveredBlock20Block35Step = 84 ifTrue: [
            recoveredBlock20Block35Local1 := recoveredBlock20Block35Stack1.
            recoveredBlock20Block35PC := 85.
        ].
        recoveredBlock20Block35Step = 85 ifTrue: [
            recoveredBlock20Block35Stack1 := recoveredLocal2.
            recoveredBlock20Block35PC := 88.
        ].
        recoveredBlock20Block35Step = 88 ifTrue: [
            recoveredBlock20Block35Stack2 := recoveredBlock20Block35Local1.
            recoveredBlock20Block35PC := 89.
        ].
        recoveredBlock20Block35Step = 89 ifTrue: [
            recoveredBlock20Block35Stack1 := (recoveredBlock20Block35Stack1) addAll: (recoveredBlock20Block35Stack2).
            recoveredBlock20Block35PC := 91.
        ].
        recoveredBlock20Block35Step = 91 ifTrue: [
            recoveredBlock20Block35PC := 97.
        ].
        recoveredBlock20Block35Step = 94 ifTrue: [
            recoveredBlock20Block35Stack1 := recoveredBlock20Block35Arg1.
            recoveredBlock20Block35PC := 95.
        ].
        recoveredBlock20Block35Step = 95 ifTrue: [
            recoveredBlock20Block35Stack1 := (recoveredBlock20Block35Stack1) removeFromCurrent.
            recoveredBlock20Block35PC := 97.
        ].
        recoveredBlock20Block35Step = 97 ifTrue: [
            recoveredBlock20Block35Result := recoveredBlock20Block35Stack1.
            recoveredBlock20Block35Done := true.
        ].
    ].
    recoveredBlock20Block35Result
].
            recoveredBlock20PC := 98.
        ].
        recoveredBlock20Step = 98 ifTrue: [
            recoveredBlock20Stack1 := (recoveredBlock20Stack1) do: (recoveredBlock20Stack2).
            recoveredBlock20PC := 100.
        ].
        recoveredBlock20Step = 100 ifTrue: [
            recoveredBlock20Result := recoveredBlock20Stack1.
            recoveredBlock20Done := true.
        ].
    ].
    recoveredBlock20Result
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

