"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"extwid.ic method 0x2003b694; bytecode file offset 0x8c500"
!EwPushButtonTool class methodsFor: 'recovered'!
initializeFsm
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredStack7 recoveredStack8 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := EwToolBarFsm.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := 'idle'.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) withInitialState: (recoveredStack2).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack3 := 'idle'.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack4 := 'visited'.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack5 := 1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack6 := [:block280060c0Arg1 :block280060c0Arg2 | 
    | block280060c0Stack0 block280060c0Stack1 block280060c0Stack2 block280060c0Stack3 block280060c0Stack4 block280060c0PC block280060c0Step block280060c0Done block280060c0Result |
    block280060c0Stack0 := self.
    block280060c0PC := 4.
    block280060c0Done := false.
    [block280060c0Done not] whileTrue: [
        block280060c0Step := block280060c0PC.
        block280060c0Step = 4 ifTrue: [
            block280060c0Stack1 := false.
            block280060c0PC := 5.
        ].
        block280060c0Step = 5 ifTrue: [
            block280060c0Stack2 := block280060c0Arg2.
            block280060c0PC := 6.
        ].
        block280060c0Step = 6 ifTrue: [
            block280060c0Stack2 := (block280060c0Stack2) isOkToNotify.
            block280060c0PC := 8.
        ].
        block280060c0Step = 8 ifTrue: [
            (block280060c0Stack2) ifTrue: [block280060c0PC := 12] ifFalse: [block280060c0PC := 49].
        ].
        block280060c0Step = 12 ifTrue: [
            block280060c0PC := 13.
        ].
        block280060c0Step = 13 ifTrue: [
            block280060c0Stack1 := false.
            block280060c0PC := 14.
        ].
        block280060c0Step = 14 ifTrue: [
            block280060c0Stack2 := block280060c0Arg1.
            block280060c0PC := 15.
        ].
        block280060c0Step = 15 ifTrue: [
            block280060c0Stack2 := (block280060c0Stack2) type.
            block280060c0PC := 17.
        ].
        block280060c0Step = 17 ifTrue: [
            block280060c0Stack3 := MotionNotify.
            block280060c0PC := 19.
        ].
        block280060c0Step = 19 ifTrue: [
            block280060c0Stack2 := (block280060c0Stack2) = (block280060c0Stack3).
            block280060c0PC := 20.
        ].
        block280060c0Step = 20 ifTrue: [
            (block280060c0Stack2) ifTrue: [block280060c0PC := 42] ifFalse: [block280060c0PC := 24].
        ].
        block280060c0Step = 24 ifTrue: [
            block280060c0Stack2 := block280060c0Arg1.
            block280060c0PC := 25.
        ].
        block280060c0Step = 25 ifTrue: [
            block280060c0Stack2 := (block280060c0Stack2) type.
            block280060c0PC := 27.
        ].
        block280060c0Step = 27 ifTrue: [
            block280060c0Stack3 := ButtonRelease.
            block280060c0PC := 29.
        ].
        block280060c0Step = 29 ifTrue: [
            block280060c0Stack2 := (block280060c0Stack2) = (block280060c0Stack3).
            block280060c0PC := 30.
        ].
        block280060c0Step = 30 ifTrue: [
            (block280060c0Stack2) ifTrue: [block280060c0PC := 34] ifFalse: [block280060c0PC := 49].
        ].
        block280060c0Step = 34 ifTrue: [
            block280060c0Stack2 := block280060c0Arg1.
            block280060c0PC := 35.
        ].
        block280060c0Step = 35 ifTrue: [
            block280060c0Stack2 := (block280060c0Stack2) button.
            block280060c0PC := 37.
        ].
        block280060c0Step = 37 ifTrue: [
            block280060c0Stack3 := Button1.
            block280060c0PC := 39.
        ].
        block280060c0Step = 39 ifTrue: [
            (block280060c0Stack2 ~~ block280060c0Stack3) ifTrue: [block280060c0PC := 49] ifFalse: [block280060c0PC := 42].
        ].
        block280060c0Step = 42 ifTrue: [
            block280060c0PC := 43.
        ].
        block280060c0Step = 43 ifTrue: [
            block280060c0Stack1 := block280060c0Arg2.
            block280060c0PC := 44.
        ].
        block280060c0Step = 44 ifTrue: [
            block280060c0Stack2 := block280060c0Arg1.
            block280060c0PC := 45.
        ].
        block280060c0Step = 45 ifTrue: [
            block280060c0Stack2 := (block280060c0Stack2) point.
            block280060c0PC := 47.
        ].
        block280060c0Step = 47 ifTrue: [
            block280060c0Stack1 := (block280060c0Stack1) containsPoint: (block280060c0Stack2).
            block280060c0PC := 49.
        ].
        block280060c0Step = 49 ifTrue: [
            block280060c0Result := block280060c0Stack1.
            block280060c0Done := true.
        ].
    ].
    block280060c0Result
].
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack7 := [:block280060e4Arg1 :block280060e4Arg2 | 
    | block280060e4Value0 block280060e4Value1 block280060e4Value2 block280060e4Value3 block280060e4Value4 block280060e4Value5 |
    block280060e4Value0 := block280060e4Arg2.
    block280060e4Value1 := block280060e4Value0.
    (block280060e4Value1) wantAllEvents: (true).
    block280060e4Value2 := block280060e4Value0.
    block280060e4Value3 := block280060e4Arg2.
    (block280060e4Value2) wantsEventsFirst: (block280060e4Value3).
    block280060e4Value4 := block280060e4Arg1.
    block280060e4Value5 := (block280060e4Value0) callEnterNotifyCallback: (block280060e4Value4).
    block280060e4Value5
].
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            (recoveredStack2) addEdgeFrom: (recoveredStack3) to: (recoveredStack4) ref: (recoveredStack5) condition: (recoveredStack6) action: (recoveredStack7).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack3 := 'visited'.
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack4 := 'idle'.
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack5 := 2.
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack6 := [:block28006108Arg1 :block28006108Arg2 | 
    | block28006108Stack0 block28006108Stack1 block28006108Stack2 block28006108Stack3 block28006108Stack4 block28006108PC block28006108Step block28006108Done block28006108Result |
    block28006108Stack0 := self.
    block28006108PC := 4.
    block28006108Done := false.
    [block28006108Done not] whileTrue: [
        block28006108Step := block28006108PC.
        block28006108Step = 4 ifTrue: [
            block28006108Stack1 := false.
            block28006108PC := 5.
        ].
        block28006108Step = 5 ifTrue: [
            block28006108Stack2 := block28006108Arg2.
            block28006108PC := 6.
        ].
        block28006108Step = 6 ifTrue: [
            block28006108Stack2 := (block28006108Stack2) isOkToNotify.
            block28006108PC := 8.
        ].
        block28006108Step = 8 ifTrue: [
            (block28006108Stack2) ifTrue: [block28006108PC := 12] ifFalse: [block28006108PC := 32].
        ].
        block28006108Step = 12 ifTrue: [
            block28006108PC := 13.
        ].
        block28006108Step = 13 ifTrue: [
            block28006108Stack1 := false.
            block28006108PC := 14.
        ].
        block28006108Step = 14 ifTrue: [
            block28006108Stack2 := block28006108Arg1.
            block28006108PC := 15.
        ].
        block28006108Step = 15 ifTrue: [
            block28006108Stack2 := (block28006108Stack2) type.
            block28006108PC := 17.
        ].
        block28006108Step = 17 ifTrue: [
            block28006108Stack3 := MotionNotify.
            block28006108PC := 19.
        ].
        block28006108Step = 19 ifTrue: [
            block28006108Stack2 := (block28006108Stack2) = (block28006108Stack3).
            block28006108PC := 20.
        ].
        block28006108Step = 20 ifTrue: [
            (block28006108Stack2) ifTrue: [block28006108PC := 24] ifFalse: [block28006108PC := 32].
        ].
        block28006108Step = 24 ifTrue: [
            block28006108PC := 25.
        ].
        block28006108Step = 25 ifTrue: [
            block28006108Stack1 := block28006108Arg2.
            block28006108PC := 26.
        ].
        block28006108Step = 26 ifTrue: [
            block28006108Stack2 := block28006108Arg1.
            block28006108PC := 27.
        ].
        block28006108Step = 27 ifTrue: [
            block28006108Stack2 := (block28006108Stack2) point.
            block28006108PC := 29.
        ].
        block28006108Step = 29 ifTrue: [
            block28006108Stack1 := (block28006108Stack1) containsPoint: (block28006108Stack2).
            block28006108PC := 31.
        ].
        block28006108Step = 31 ifTrue: [
            block28006108Stack1 := (block28006108Stack1) not.
            block28006108PC := 32.
        ].
        block28006108Step = 32 ifTrue: [
            block28006108Result := block28006108Stack1.
            block28006108Done := true.
        ].
    ].
    block28006108Result
].
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            recoveredPC := 131.
        ].
        recoveredStep = 131 ifTrue: [
            recoveredStack7 := [:block2800612cArg1 :block2800612cArg2 | 
    | block2800612cValue0 block2800612cValue1 block2800612cValue2 block2800612cValue3 block2800612cValue4 |
    block2800612cValue0 := block2800612cArg2.
    block2800612cValue1 := block2800612cValue0.
    (block2800612cValue1) wantAllEvents: (false).
    block2800612cValue2 := block2800612cValue0.
    (block2800612cValue2) wantsEventsFirst: (nil).
    block2800612cValue3 := block2800612cArg1.
    block2800612cValue4 := (block2800612cValue0) callLeaveNotifyCallback: (block2800612cValue3).
    block2800612cValue4
].
            recoveredPC := 133.
        ].
        recoveredStep = 133 ifTrue: [
            recoveredPC := 149.
        ].
        recoveredStep = 149 ifTrue: [
            (recoveredStack2) addEdgeFrom: (recoveredStack3) to: (recoveredStack4) ref: (recoveredStack5) condition: (recoveredStack6) action: (recoveredStack7).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 152.
        ].
        recoveredStep = 152 ifTrue: [
            recoveredStack3 := 'visited'.
            recoveredPC := 154.
        ].
        recoveredStep = 154 ifTrue: [
            recoveredStack4 := 'active'.
            recoveredPC := 156.
        ].
        recoveredStep = 156 ifTrue: [
            recoveredStack5 := 3.
            recoveredPC := 158.
        ].
        recoveredStep = 158 ifTrue: [
            recoveredStack6 := [:block28006150Arg1 :block28006150Arg2 | 
    | block28006150Stack0 block28006150Stack1 block28006150Stack2 block28006150Stack3 block28006150Stack4 block28006150PC block28006150Step block28006150Done block28006150Result |
    block28006150Stack0 := self.
    block28006150PC := 4.
    block28006150Done := false.
    [block28006150Done not] whileTrue: [
        block28006150Step := block28006150PC.
        block28006150Step = 4 ifTrue: [
            block28006150Stack1 := false.
            block28006150PC := 5.
        ].
        block28006150Step = 5 ifTrue: [
            block28006150Stack2 := block28006150Arg1.
            block28006150PC := 6.
        ].
        block28006150Step = 6 ifTrue: [
            block28006150Stack2 := (block28006150Stack2) type.
            block28006150PC := 8.
        ].
        block28006150Step = 8 ifTrue: [
            block28006150Stack3 := ButtonPress.
            block28006150PC := 10.
        ].
        block28006150Step = 10 ifTrue: [
            block28006150Stack2 := (block28006150Stack2) = (block28006150Stack3).
            block28006150PC := 11.
        ].
        block28006150Step = 11 ifTrue: [
            (block28006150Stack2) ifTrue: [block28006150PC := 14] ifFalse: [block28006150PC := 21].
        ].
        block28006150Step = 14 ifTrue: [
            block28006150PC := 15.
        ].
        block28006150Step = 15 ifTrue: [
            block28006150Stack1 := block28006150Arg1.
            block28006150PC := 16.
        ].
        block28006150Step = 16 ifTrue: [
            block28006150Stack1 := (block28006150Stack1) button.
            block28006150PC := 18.
        ].
        block28006150Step = 18 ifTrue: [
            block28006150Stack2 := Button1.
            block28006150PC := 20.
        ].
        block28006150Step = 20 ifTrue: [
            block28006150Stack1 := (block28006150Stack1) == (block28006150Stack2).
            block28006150PC := 21.
        ].
        block28006150Step = 21 ifTrue: [
            block28006150Result := block28006150Stack1.
            block28006150Done := true.
        ].
    ].
    block28006150Result
].
            recoveredPC := 160.
        ].
        recoveredStep = 160 ifTrue: [
            recoveredPC := 182.
        ].
        recoveredStep = 182 ifTrue: [
            recoveredStack7 := [:block28006174Arg1 :block28006174Arg2 | 
    | block28006174Value0 block28006174Value1 block28006174Value2 block28006174Value3 block28006174Value4 |
    block28006174Value0 := block28006174Arg2.
    block28006174Value1 := block28006174Value0.
    (block28006174Value1) showPressedButton.
    block28006174Value2 := block28006174Value0.
    block28006174Value3 := block28006174Arg1.
    (block28006174Value2) callArmCallback: (block28006174Value3).
    block28006174Value4 := (block28006174Value0) lockNotification.
    block28006174Value4
].
            recoveredPC := 184.
        ].
        recoveredStep = 184 ifTrue: [
            recoveredPC := 199.
        ].
        recoveredStep = 199 ifTrue: [
            (recoveredStack2) addEdgeFrom: (recoveredStack3) to: (recoveredStack4) ref: (recoveredStack5) condition: (recoveredStack6) action: (recoveredStack7).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 202.
        ].
        recoveredStep = 202 ifTrue: [
            recoveredStack3 := 'active'.
            recoveredPC := 204.
        ].
        recoveredStep = 204 ifTrue: [
            recoveredStack4 := 'visited'.
            recoveredPC := 206.
        ].
        recoveredStep = 206 ifTrue: [
            recoveredStack5 := 4.
            recoveredPC := 208.
        ].
        recoveredStep = 208 ifTrue: [
            recoveredStack6 := [:block28006198Arg1 :block28006198Arg2 | 
    | block28006198Stack0 block28006198Stack1 block28006198Stack2 block28006198Stack3 block28006198Stack4 block28006198PC block28006198Step block28006198Done block28006198Result |
    block28006198Stack0 := self.
    block28006198PC := 4.
    block28006198Done := false.
    [block28006198Done not] whileTrue: [
        block28006198Step := block28006198PC.
        block28006198Step = 4 ifTrue: [
            block28006198Stack1 := false.
            block28006198PC := 5.
        ].
        block28006198Step = 5 ifTrue: [
            block28006198Stack2 := block28006198Arg1.
            block28006198PC := 6.
        ].
        block28006198Step = 6 ifTrue: [
            block28006198Stack2 := (block28006198Stack2) type.
            block28006198PC := 8.
        ].
        block28006198Step = 8 ifTrue: [
            block28006198Stack3 := ButtonRelease.
            block28006198PC := 10.
        ].
        block28006198Step = 10 ifTrue: [
            block28006198Stack2 := (block28006198Stack2) = (block28006198Stack3).
            block28006198PC := 11.
        ].
        block28006198Step = 11 ifTrue: [
            (block28006198Stack2) ifTrue: [block28006198PC := 14] ifFalse: [block28006198PC := 21].
        ].
        block28006198Step = 14 ifTrue: [
            block28006198PC := 15.
        ].
        block28006198Step = 15 ifTrue: [
            block28006198Stack1 := block28006198Arg1.
            block28006198PC := 16.
        ].
        block28006198Step = 16 ifTrue: [
            block28006198Stack1 := (block28006198Stack1) button.
            block28006198PC := 18.
        ].
        block28006198Step = 18 ifTrue: [
            block28006198Stack2 := Button1.
            block28006198PC := 20.
        ].
        block28006198Step = 20 ifTrue: [
            block28006198Stack1 := (block28006198Stack1) == (block28006198Stack2).
            block28006198PC := 21.
        ].
        block28006198Step = 21 ifTrue: [
            block28006198Result := block28006198Stack1.
            block28006198Done := true.
        ].
    ].
    block28006198Result
].
            recoveredPC := 210.
        ].
        recoveredStep = 210 ifTrue: [
            recoveredPC := 232.
        ].
        recoveredStep = 232 ifTrue: [
            recoveredStack7 := [:block280061bcArg1 :block280061bcArg2 | 
    | block280061bcValue0 block280061bcValue1 block280061bcValue2 block280061bcValue3 block280061bcValue4 block280061bcValue5 block280061bcValue6 |
    block280061bcValue0 := block280061bcArg2.
    block280061bcValue1 := block280061bcValue0.
    (block280061bcValue1) showUpButton.
    block280061bcValue2 := block280061bcValue0.
    block280061bcValue3 := block280061bcArg1.
    (block280061bcValue2) callActivateCallback: (block280061bcValue3).
    block280061bcValue4 := block280061bcValue0.
    block280061bcValue5 := block280061bcArg1.
    (block280061bcValue4) callDisarmCallback: (block280061bcValue5).
    block280061bcValue6 := (block280061bcValue0) unlockNotification.
    block280061bcValue6
].
            recoveredPC := 234.
        ].
        recoveredStep = 234 ifTrue: [
            recoveredPC := 253.
        ].
        recoveredStep = 253 ifTrue: [
            (recoveredStack2) addEdgeFrom: (recoveredStack3) to: (recoveredStack4) ref: (recoveredStack5) condition: (recoveredStack6) action: (recoveredStack7).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 256.
        ].
        recoveredStep = 256 ifTrue: [
            recoveredStack3 := 'active'.
            recoveredPC := 258.
        ].
        recoveredStep = 258 ifTrue: [
            recoveredStack4 := 'waiting'.
            recoveredPC := 260.
        ].
        recoveredStep = 260 ifTrue: [
            recoveredStack5 := 5.
            recoveredPC := 262.
        ].
        recoveredStep = 262 ifTrue: [
            recoveredStack6 := [:block280061e0Arg1 :block280061e0Arg2 | 
    | block280061e0Stack0 block280061e0Stack1 block280061e0Stack2 block280061e0Stack3 block280061e0Stack4 block280061e0PC block280061e0Step block280061e0Done block280061e0Result |
    block280061e0Stack0 := self.
    block280061e0PC := 4.
    block280061e0Done := false.
    [block280061e0Done not] whileTrue: [
        block280061e0Step := block280061e0PC.
        block280061e0Step = 4 ifTrue: [
            block280061e0Stack1 := false.
            block280061e0PC := 5.
        ].
        block280061e0Step = 5 ifTrue: [
            block280061e0Stack2 := block280061e0Arg2.
            block280061e0PC := 6.
        ].
        block280061e0Step = 6 ifTrue: [
            block280061e0Stack3 := block280061e0Arg1.
            block280061e0PC := 7.
        ].
        block280061e0Step = 7 ifTrue: [
            block280061e0Stack3 := (block280061e0Stack3) point.
            block280061e0PC := 9.
        ].
        block280061e0Step = 9 ifTrue: [
            block280061e0Stack2 := (block280061e0Stack2) containsPoint: (block280061e0Stack3).
            block280061e0PC := 11.
        ].
        block280061e0Step = 11 ifTrue: [
            (block280061e0Stack2) ifTrue: [block280061e0PC := 21] ifFalse: [block280061e0PC := 14].
        ].
        block280061e0Step = 14 ifTrue: [
            block280061e0PC := 15.
        ].
        block280061e0Step = 15 ifTrue: [
            block280061e0Stack1 := block280061e0Arg1.
            block280061e0PC := 16.
        ].
        block280061e0Step = 16 ifTrue: [
            block280061e0Stack1 := (block280061e0Stack1) type.
            block280061e0PC := 18.
        ].
        block280061e0Step = 18 ifTrue: [
            block280061e0Stack2 := MotionNotify.
            block280061e0PC := 20.
        ].
        block280061e0Step = 20 ifTrue: [
            block280061e0Stack1 := (block280061e0Stack1) = (block280061e0Stack2).
            block280061e0PC := 21.
        ].
        block280061e0Step = 21 ifTrue: [
            block280061e0Result := block280061e0Stack1.
            block280061e0Done := true.
        ].
    ].
    block280061e0Result
].
            recoveredPC := 264.
        ].
        recoveredStep = 264 ifTrue: [
            recoveredPC := 286.
        ].
        recoveredStep = 286 ifTrue: [
            recoveredStack7 := [:block28006204Arg1 :block28006204Arg2 | 
    | block28006204Stack0 block28006204Stack1 block28006204Stack2 block28006204Stack3 block28006204PC block28006204Step block28006204Done block28006204Result |
    block28006204Stack0 := self.
    block28006204PC := 4.
    block28006204Done := false.
    [block28006204Done not] whileTrue: [
        block28006204Step := block28006204PC.
        block28006204Step = 4 ifTrue: [
            block28006204Stack1 := block28006204Arg2.
            block28006204PC := 5.
        ].
        block28006204Step = 5 ifTrue: [
            block28006204Stack2 := block28006204Stack1.
            block28006204PC := 6.
        ].
        block28006204Step = 6 ifTrue: [
            (block28006204Stack2) showUpButton.
            block28006204PC := 8.
        ].
        block28006204Step = 8 ifTrue: [
            block28006204Stack2 := block28006204Arg1.
            block28006204PC := 9.
        ].
        block28006204Step = 9 ifTrue: [
            (block28006204Stack1) callDisarmCallback: (block28006204Stack2).
            block28006204PC := 11.
        ].
        block28006204Step = 11 ifTrue: [
            block28006204Stack1 := nil.
            block28006204PC := 12.
        ].
        block28006204Step = 12 ifTrue: [
            block28006204Stack2 := block28006204Arg2.
            block28006204PC := 13.
        ].
        block28006204Step = 13 ifTrue: [
            block28006204Stack2 := (block28006204Stack2) isOkToNotify.
            block28006204PC := 15.
        ].
        block28006204Step = 15 ifTrue: [
            (block28006204Stack2) ifTrue: [block28006204PC := 18] ifFalse: [block28006204PC := 23].
        ].
        block28006204Step = 18 ifTrue: [
            block28006204PC := 19.
        ].
        block28006204Step = 19 ifTrue: [
            block28006204Stack1 := block28006204Arg2.
            block28006204PC := 20.
        ].
        block28006204Step = 20 ifTrue: [
            block28006204Stack2 := block28006204Arg1.
            block28006204PC := 21.
        ].
        block28006204Step = 21 ifTrue: [
            block28006204Stack1 := (block28006204Stack1) callLeaveNotifyCallback: (block28006204Stack2).
            block28006204PC := 23.
        ].
        block28006204Step = 23 ifTrue: [
            block28006204Result := block28006204Stack1.
            block28006204Done := true.
        ].
    ].
    block28006204Result
].
            recoveredPC := 288.
        ].
        recoveredStep = 288 ifTrue: [
            recoveredPC := 312.
        ].
        recoveredStep = 312 ifTrue: [
            (recoveredStack2) addEdgeFrom: (recoveredStack3) to: (recoveredStack4) ref: (recoveredStack5) condition: (recoveredStack6) action: (recoveredStack7).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 315.
        ].
        recoveredStep = 315 ifTrue: [
            recoveredStack3 := 'waiting'.
            recoveredPC := 317.
        ].
        recoveredStep = 317 ifTrue: [
            recoveredStack4 := 'active'.
            recoveredPC := 319.
        ].
        recoveredStep = 319 ifTrue: [
            recoveredStack5 := 6.
            recoveredPC := 321.
        ].
        recoveredStep = 321 ifTrue: [
            recoveredStack6 := [:block28006228Arg1 :block28006228Arg2 | 
    | block28006228Stack0 block28006228Stack1 block28006228Stack2 block28006228Stack3 block28006228Stack4 block28006228PC block28006228Step block28006228Done block28006228Result |
    block28006228Stack0 := self.
    block28006228PC := 4.
    block28006228Done := false.
    [block28006228Done not] whileTrue: [
        block28006228Step := block28006228PC.
        block28006228Step = 4 ifTrue: [
            block28006228Stack1 := false.
            block28006228PC := 5.
        ].
        block28006228Step = 5 ifTrue: [
            block28006228Stack2 := block28006228Arg2.
            block28006228PC := 6.
        ].
        block28006228Step = 6 ifTrue: [
            block28006228Stack3 := block28006228Arg1.
            block28006228PC := 7.
        ].
        block28006228Step = 7 ifTrue: [
            block28006228Stack3 := (block28006228Stack3) point.
            block28006228PC := 9.
        ].
        block28006228Step = 9 ifTrue: [
            block28006228Stack2 := (block28006228Stack2) containsPoint: (block28006228Stack3).
            block28006228PC := 11.
        ].
        block28006228Step = 11 ifTrue: [
            (block28006228Stack2) ifTrue: [block28006228PC := 14] ifFalse: [block28006228PC := 21].
        ].
        block28006228Step = 14 ifTrue: [
            block28006228PC := 15.
        ].
        block28006228Step = 15 ifTrue: [
            block28006228Stack1 := block28006228Arg1.
            block28006228PC := 16.
        ].
        block28006228Step = 16 ifTrue: [
            block28006228Stack1 := (block28006228Stack1) type.
            block28006228PC := 18.
        ].
        block28006228Step = 18 ifTrue: [
            block28006228Stack2 := MotionNotify.
            block28006228PC := 20.
        ].
        block28006228Step = 20 ifTrue: [
            block28006228Stack1 := (block28006228Stack1) = (block28006228Stack2).
            block28006228PC := 21.
        ].
        block28006228Step = 21 ifTrue: [
            block28006228Result := block28006228Stack1.
            block28006228Done := true.
        ].
    ].
    block28006228Result
].
            recoveredPC := 323.
        ].
        recoveredStep = 323 ifTrue: [
            recoveredPC := 344.
        ].
        recoveredStep = 344 ifTrue: [
            recoveredStack7 := [:block2800624cArg1 :block2800624cArg2 | 
    | block2800624cStack0 block2800624cStack1 block2800624cStack2 block2800624cStack3 block2800624cPC block2800624cStep block2800624cDone block2800624cResult |
    block2800624cStack0 := self.
    block2800624cPC := 4.
    block2800624cDone := false.
    [block2800624cDone not] whileTrue: [
        block2800624cStep := block2800624cPC.
        block2800624cStep = 4 ifTrue: [
            block2800624cStack1 := block2800624cArg2.
            block2800624cPC := 5.
        ].
        block2800624cStep = 5 ifTrue: [
            block2800624cStack2 := block2800624cStack1.
            block2800624cPC := 6.
        ].
        block2800624cStep = 6 ifTrue: [
            (block2800624cStack2) showPressedButton.
            block2800624cPC := 8.
        ].
        block2800624cStep = 8 ifTrue: [
            block2800624cStack2 := block2800624cArg1.
            block2800624cPC := 9.
        ].
        block2800624cStep = 9 ifTrue: [
            (block2800624cStack1) callArmCallback: (block2800624cStack2).
            block2800624cPC := 11.
        ].
        block2800624cStep = 11 ifTrue: [
            block2800624cStack1 := nil.
            block2800624cPC := 12.
        ].
        block2800624cStep = 12 ifTrue: [
            block2800624cStack2 := block2800624cArg2.
            block2800624cPC := 13.
        ].
        block2800624cStep = 13 ifTrue: [
            block2800624cStack2 := (block2800624cStack2) isOkToNotify.
            block2800624cPC := 15.
        ].
        block2800624cStep = 15 ifTrue: [
            (block2800624cStack2) ifTrue: [block2800624cPC := 18] ifFalse: [block2800624cPC := 23].
        ].
        block2800624cStep = 18 ifTrue: [
            block2800624cPC := 19.
        ].
        block2800624cStep = 19 ifTrue: [
            block2800624cStack1 := block2800624cArg2.
            block2800624cPC := 20.
        ].
        block2800624cStep = 20 ifTrue: [
            block2800624cStack2 := block2800624cArg1.
            block2800624cPC := 21.
        ].
        block2800624cStep = 21 ifTrue: [
            block2800624cStack1 := (block2800624cStack1) callEnterNotifyCallback: (block2800624cStack2).
            block2800624cPC := 23.
        ].
        block2800624cStep = 23 ifTrue: [
            block2800624cResult := block2800624cStack1.
            block2800624cDone := true.
        ].
    ].
    block2800624cResult
].
            recoveredPC := 346.
        ].
        recoveredStep = 346 ifTrue: [
            recoveredPC := 370.
        ].
        recoveredStep = 370 ifTrue: [
            (recoveredStack2) addEdgeFrom: (recoveredStack3) to: (recoveredStack4) ref: (recoveredStack5) condition: (recoveredStack6) action: (recoveredStack7).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 373.
        ].
        recoveredStep = 373 ifTrue: [
            recoveredStack3 := 'waiting'.
            recoveredPC := 375.
        ].
        recoveredStep = 375 ifTrue: [
            recoveredStack4 := 'idle'.
            recoveredPC := 377.
        ].
        recoveredStep = 377 ifTrue: [
            recoveredStack5 := 7.
            recoveredPC := 379.
        ].
        recoveredStep = 379 ifTrue: [
            recoveredStack6 := [:block28006270Arg1 :block28006270Arg2 | 
    | block28006270Stack0 block28006270Stack1 block28006270Stack2 block28006270Stack3 block28006270Stack4 block28006270PC block28006270Step block28006270Done block28006270Result |
    block28006270Stack0 := self.
    block28006270PC := 4.
    block28006270Done := false.
    [block28006270Done not] whileTrue: [
        block28006270Step := block28006270PC.
        block28006270Step = 4 ifTrue: [
            block28006270Stack1 := false.
            block28006270PC := 5.
        ].
        block28006270Step = 5 ifTrue: [
            block28006270Stack2 := block28006270Arg1.
            block28006270PC := 6.
        ].
        block28006270Step = 6 ifTrue: [
            block28006270Stack2 := (block28006270Stack2) type.
            block28006270PC := 8.
        ].
        block28006270Step = 8 ifTrue: [
            block28006270Stack3 := ButtonRelease.
            block28006270PC := 10.
        ].
        block28006270Step = 10 ifTrue: [
            block28006270Stack2 := (block28006270Stack2) = (block28006270Stack3).
            block28006270PC := 11.
        ].
        block28006270Step = 11 ifTrue: [
            (block28006270Stack2) ifTrue: [block28006270PC := 14] ifFalse: [block28006270PC := 21].
        ].
        block28006270Step = 14 ifTrue: [
            block28006270PC := 15.
        ].
        block28006270Step = 15 ifTrue: [
            block28006270Stack1 := block28006270Arg1.
            block28006270PC := 16.
        ].
        block28006270Step = 16 ifTrue: [
            block28006270Stack1 := (block28006270Stack1) button.
            block28006270PC := 18.
        ].
        block28006270Step = 18 ifTrue: [
            block28006270Stack2 := Button1.
            block28006270PC := 20.
        ].
        block28006270Step = 20 ifTrue: [
            block28006270Stack1 := (block28006270Stack1) == (block28006270Stack2).
            block28006270PC := 21.
        ].
        block28006270Step = 21 ifTrue: [
            block28006270Result := block28006270Stack1.
            block28006270Done := true.
        ].
    ].
    block28006270Result
].
            recoveredPC := 381.
        ].
        recoveredStep = 381 ifTrue: [
            recoveredPC := 402.
        ].
        recoveredStep = 402 ifTrue: [
            recoveredStack7 := [:block28006294Arg1 :block28006294Arg2 | 
    | block28006294Stack0 block28006294Stack1 block28006294Stack2 block28006294Stack3 block28006294Stack4 block28006294PC block28006294Step block28006294Done block28006294Result |
    block28006294Stack0 := self.
    block28006294PC := 4.
    block28006294Done := false.
    [block28006294Done not] whileTrue: [
        block28006294Step := block28006294PC.
        block28006294Step = 4 ifTrue: [
            block28006294Stack1 := block28006294Arg2.
            block28006294PC := 5.
        ].
        block28006294Step = 5 ifTrue: [
            block28006294Stack2 := block28006294Stack1.
            block28006294PC := 6.
        ].
        block28006294Step = 6 ifTrue: [
            block28006294Stack3 := false.
            block28006294PC := 7.
        ].
        block28006294Step = 7 ifTrue: [
            (block28006294Stack2) wantAllEvents: (block28006294Stack3).
            block28006294Stack2 := block28006294Stack1.
            block28006294PC := 10.
        ].
        block28006294Step = 10 ifTrue: [
            block28006294Stack3 := nil.
            block28006294PC := 11.
        ].
        block28006294Step = 11 ifTrue: [
            (block28006294Stack2) wantsEventsFirst: (block28006294Stack3).
            block28006294PC := 13.
        ].
        block28006294Step = 13 ifTrue: [
            (block28006294Stack1) unlockNotification.
            block28006294PC := 15.
        ].
        block28006294Step = 15 ifTrue: [
            block28006294Stack1 := nil.
            block28006294PC := 16.
        ].
        block28006294Step = 16 ifTrue: [
            block28006294Stack2 := block28006294Arg2.
            block28006294PC := 17.
        ].
        block28006294Step = 17 ifTrue: [
            block28006294Stack2 := (block28006294Stack2) isOkToNotify.
            block28006294PC := 19.
        ].
        block28006294Step = 19 ifTrue: [
            (block28006294Stack2) ifTrue: [block28006294PC := 22] ifFalse: [block28006294PC := 27].
        ].
        block28006294Step = 22 ifTrue: [
            block28006294PC := 23.
        ].
        block28006294Step = 23 ifTrue: [
            block28006294Stack1 := block28006294Arg2.
            block28006294PC := 24.
        ].
        block28006294Step = 24 ifTrue: [
            block28006294Stack2 := block28006294Arg1.
            block28006294PC := 25.
        ].
        block28006294Step = 25 ifTrue: [
            block28006294Stack1 := (block28006294Stack1) callLeaveNotifyCallback: (block28006294Stack2).
            block28006294PC := 27.
        ].
        block28006294Step = 27 ifTrue: [
            block28006294Result := block28006294Stack1.
            block28006294Done := true.
        ].
    ].
    block28006294Result
].
            recoveredPC := 404.
        ].
        recoveredStep = 404 ifTrue: [
            recoveredPC := 432.
        ].
        recoveredStep = 432 ifTrue: [
            (recoveredStack2) addEdgeFrom: (recoveredStack3) to: (recoveredStack4) ref: (recoveredStack5) condition: (recoveredStack6) action: (recoveredStack7).
            recoveredPC := 435.
        ].
        recoveredStep = 435 ifTrue: [
            (recoveredStack0) fsm: (recoveredStack1).
            recoveredPC := 437.
        ].
        recoveredStep = 437 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 438.
        ].
        recoveredStep = 438 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

