"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"extwid.ic method 0x2003cd38; bytecode file offset 0x8dbd4"
!EwToggleButtonTool class methodsFor: 'recovered'!
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
            recoveredStack6 := [:block280062dcArg1 :block280062dcArg2 | 
    | block280062dcStack0 block280062dcStack1 block280062dcStack2 block280062dcStack3 block280062dcStack4 block280062dcPC block280062dcStep block280062dcDone block280062dcResult |
    block280062dcStack0 := self.
    block280062dcPC := 4.
    block280062dcDone := false.
    [block280062dcDone not] whileTrue: [
        block280062dcStep := block280062dcPC.
        block280062dcStep = 4 ifTrue: [
            block280062dcStack1 := false.
            block280062dcPC := 5.
        ].
        block280062dcStep = 5 ifTrue: [
            block280062dcStack2 := block280062dcArg2.
            block280062dcPC := 6.
        ].
        block280062dcStep = 6 ifTrue: [
            block280062dcStack2 := (block280062dcStack2) isOkToNotify.
            block280062dcPC := 8.
        ].
        block280062dcStep = 8 ifTrue: [
            (block280062dcStack2) ifTrue: [block280062dcPC := 12] ifFalse: [block280062dcPC := 49].
        ].
        block280062dcStep = 12 ifTrue: [
            block280062dcPC := 13.
        ].
        block280062dcStep = 13 ifTrue: [
            block280062dcStack1 := false.
            block280062dcPC := 14.
        ].
        block280062dcStep = 14 ifTrue: [
            block280062dcStack2 := block280062dcArg1.
            block280062dcPC := 15.
        ].
        block280062dcStep = 15 ifTrue: [
            block280062dcStack2 := (block280062dcStack2) type.
            block280062dcPC := 17.
        ].
        block280062dcStep = 17 ifTrue: [
            block280062dcStack3 := MotionNotify.
            block280062dcPC := 19.
        ].
        block280062dcStep = 19 ifTrue: [
            block280062dcStack2 := (block280062dcStack2) = (block280062dcStack3).
            block280062dcPC := 20.
        ].
        block280062dcStep = 20 ifTrue: [
            (block280062dcStack2) ifTrue: [block280062dcPC := 42] ifFalse: [block280062dcPC := 24].
        ].
        block280062dcStep = 24 ifTrue: [
            block280062dcStack2 := block280062dcArg1.
            block280062dcPC := 25.
        ].
        block280062dcStep = 25 ifTrue: [
            block280062dcStack2 := (block280062dcStack2) type.
            block280062dcPC := 27.
        ].
        block280062dcStep = 27 ifTrue: [
            block280062dcStack3 := ButtonRelease.
            block280062dcPC := 29.
        ].
        block280062dcStep = 29 ifTrue: [
            block280062dcStack2 := (block280062dcStack2) = (block280062dcStack3).
            block280062dcPC := 30.
        ].
        block280062dcStep = 30 ifTrue: [
            (block280062dcStack2) ifTrue: [block280062dcPC := 34] ifFalse: [block280062dcPC := 49].
        ].
        block280062dcStep = 34 ifTrue: [
            block280062dcStack2 := block280062dcArg1.
            block280062dcPC := 35.
        ].
        block280062dcStep = 35 ifTrue: [
            block280062dcStack2 := (block280062dcStack2) button.
            block280062dcPC := 37.
        ].
        block280062dcStep = 37 ifTrue: [
            block280062dcStack3 := Button1.
            block280062dcPC := 39.
        ].
        block280062dcStep = 39 ifTrue: [
            (block280062dcStack2 ~~ block280062dcStack3) ifTrue: [block280062dcPC := 49] ifFalse: [block280062dcPC := 42].
        ].
        block280062dcStep = 42 ifTrue: [
            block280062dcPC := 43.
        ].
        block280062dcStep = 43 ifTrue: [
            block280062dcStack1 := block280062dcArg2.
            block280062dcPC := 44.
        ].
        block280062dcStep = 44 ifTrue: [
            block280062dcStack2 := block280062dcArg1.
            block280062dcPC := 45.
        ].
        block280062dcStep = 45 ifTrue: [
            block280062dcStack2 := (block280062dcStack2) point.
            block280062dcPC := 47.
        ].
        block280062dcStep = 47 ifTrue: [
            block280062dcStack1 := (block280062dcStack1) containsPoint: (block280062dcStack2).
            block280062dcPC := 49.
        ].
        block280062dcStep = 49 ifTrue: [
            block280062dcResult := block280062dcStack1.
            block280062dcDone := true.
        ].
    ].
    block280062dcResult
].
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack7 := [:block28006300Arg1 :block28006300Arg2 | 
    | block28006300Value0 block28006300Value1 block28006300Value2 block28006300Value3 block28006300Value4 block28006300Value5 |
    block28006300Value0 := block28006300Arg2.
    block28006300Value1 := block28006300Value0.
    (block28006300Value1) wantAllEvents: (true).
    block28006300Value2 := block28006300Value0.
    block28006300Value3 := block28006300Arg2.
    (block28006300Value2) wantsEventsFirst: (block28006300Value3).
    block28006300Value4 := block28006300Arg1.
    block28006300Value5 := (block28006300Value0) callEnterNotifyCallback: (block28006300Value4).
    block28006300Value5
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
            recoveredStack6 := [:block28006324Arg1 :block28006324Arg2 | 
    | block28006324Stack0 block28006324Stack1 block28006324Stack2 block28006324Stack3 block28006324Stack4 block28006324PC block28006324Step block28006324Done block28006324Result |
    block28006324Stack0 := self.
    block28006324PC := 4.
    block28006324Done := false.
    [block28006324Done not] whileTrue: [
        block28006324Step := block28006324PC.
        block28006324Step = 4 ifTrue: [
            block28006324Stack1 := false.
            block28006324PC := 5.
        ].
        block28006324Step = 5 ifTrue: [
            block28006324Stack2 := block28006324Arg2.
            block28006324PC := 6.
        ].
        block28006324Step = 6 ifTrue: [
            block28006324Stack2 := (block28006324Stack2) isOkToNotify.
            block28006324PC := 8.
        ].
        block28006324Step = 8 ifTrue: [
            (block28006324Stack2) ifTrue: [block28006324PC := 12] ifFalse: [block28006324PC := 32].
        ].
        block28006324Step = 12 ifTrue: [
            block28006324PC := 13.
        ].
        block28006324Step = 13 ifTrue: [
            block28006324Stack1 := false.
            block28006324PC := 14.
        ].
        block28006324Step = 14 ifTrue: [
            block28006324Stack2 := block28006324Arg1.
            block28006324PC := 15.
        ].
        block28006324Step = 15 ifTrue: [
            block28006324Stack2 := (block28006324Stack2) type.
            block28006324PC := 17.
        ].
        block28006324Step = 17 ifTrue: [
            block28006324Stack3 := MotionNotify.
            block28006324PC := 19.
        ].
        block28006324Step = 19 ifTrue: [
            block28006324Stack2 := (block28006324Stack2) = (block28006324Stack3).
            block28006324PC := 20.
        ].
        block28006324Step = 20 ifTrue: [
            (block28006324Stack2) ifTrue: [block28006324PC := 24] ifFalse: [block28006324PC := 32].
        ].
        block28006324Step = 24 ifTrue: [
            block28006324PC := 25.
        ].
        block28006324Step = 25 ifTrue: [
            block28006324Stack1 := block28006324Arg2.
            block28006324PC := 26.
        ].
        block28006324Step = 26 ifTrue: [
            block28006324Stack2 := block28006324Arg1.
            block28006324PC := 27.
        ].
        block28006324Step = 27 ifTrue: [
            block28006324Stack2 := (block28006324Stack2) point.
            block28006324PC := 29.
        ].
        block28006324Step = 29 ifTrue: [
            block28006324Stack1 := (block28006324Stack1) containsPoint: (block28006324Stack2).
            block28006324PC := 31.
        ].
        block28006324Step = 31 ifTrue: [
            block28006324Stack1 := (block28006324Stack1) not.
            block28006324PC := 32.
        ].
        block28006324Step = 32 ifTrue: [
            block28006324Result := block28006324Stack1.
            block28006324Done := true.
        ].
    ].
    block28006324Result
].
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            recoveredPC := 131.
        ].
        recoveredStep = 131 ifTrue: [
            recoveredStack7 := [:block28006348Arg1 :block28006348Arg2 | 
    | block28006348Value0 block28006348Value1 block28006348Value2 block28006348Value3 block28006348Value4 |
    block28006348Value0 := block28006348Arg2.
    block28006348Value1 := block28006348Value0.
    (block28006348Value1) wantAllEvents: (false).
    block28006348Value2 := block28006348Value0.
    (block28006348Value2) wantsEventsFirst: (nil).
    block28006348Value3 := block28006348Arg1.
    block28006348Value4 := (block28006348Value0) callLeaveNotifyCallback: (block28006348Value3).
    block28006348Value4
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
            recoveredStack6 := [:block2800636cArg1 :block2800636cArg2 | 
    | block2800636cStack0 block2800636cStack1 block2800636cStack2 block2800636cStack3 block2800636cStack4 block2800636cPC block2800636cStep block2800636cDone block2800636cResult |
    block2800636cStack0 := self.
    block2800636cPC := 4.
    block2800636cDone := false.
    [block2800636cDone not] whileTrue: [
        block2800636cStep := block2800636cPC.
        block2800636cStep = 4 ifTrue: [
            block2800636cStack1 := false.
            block2800636cPC := 5.
        ].
        block2800636cStep = 5 ifTrue: [
            block2800636cStack2 := block2800636cArg1.
            block2800636cPC := 6.
        ].
        block2800636cStep = 6 ifTrue: [
            block2800636cStack2 := (block2800636cStack2) type.
            block2800636cPC := 8.
        ].
        block2800636cStep = 8 ifTrue: [
            block2800636cStack3 := ButtonPress.
            block2800636cPC := 10.
        ].
        block2800636cStep = 10 ifTrue: [
            block2800636cStack2 := (block2800636cStack2) = (block2800636cStack3).
            block2800636cPC := 11.
        ].
        block2800636cStep = 11 ifTrue: [
            (block2800636cStack2) ifTrue: [block2800636cPC := 14] ifFalse: [block2800636cPC := 29].
        ].
        block2800636cStep = 14 ifTrue: [
            block2800636cPC := 15.
        ].
        block2800636cStep = 15 ifTrue: [
            block2800636cStack1 := false.
            block2800636cPC := 16.
        ].
        block2800636cStep = 16 ifTrue: [
            block2800636cStack2 := block2800636cArg1.
            block2800636cPC := 17.
        ].
        block2800636cStep = 17 ifTrue: [
            block2800636cStack2 := (block2800636cStack2) button.
            block2800636cPC := 19.
        ].
        block2800636cStep = 19 ifTrue: [
            block2800636cStack3 := Button1.
            block2800636cPC := 21.
        ].
        block2800636cStep = 21 ifTrue: [
            (block2800636cStack2 ~~ block2800636cStack3) ifTrue: [block2800636cPC := 29] ifFalse: [block2800636cPC := 24].
        ].
        block2800636cStep = 24 ifTrue: [
            block2800636cPC := 25.
        ].
        block2800636cStep = 25 ifTrue: [
            block2800636cStack1 := block2800636cArg2.
            block2800636cPC := 26.
        ].
        block2800636cStep = 26 ifTrue: [
            block2800636cStack1 := (block2800636cStack1) isRadioButton.
            block2800636cPC := 28.
        ].
        block2800636cStep = 28 ifTrue: [
            block2800636cStack1 := (block2800636cStack1) not.
            block2800636cPC := 29.
        ].
        block2800636cStep = 29 ifTrue: [
            block2800636cResult := block2800636cStack1.
            block2800636cDone := true.
        ].
    ].
    block2800636cResult
].
            recoveredPC := 160.
        ].
        recoveredStep = 160 ifTrue: [
            recoveredPC := 190.
        ].
        recoveredStep = 190 ifTrue: [
            recoveredStack7 := [:block28006390Arg1 :block28006390Arg2 | 
    | block28006390Value0 block28006390Value1 block28006390Value2 block28006390Value3 block28006390Value4 |
    block28006390Value0 := block28006390Arg2.
    block28006390Value1 := block28006390Value0.
    (block28006390Value1) showDeepPressedButton.
    block28006390Value2 := block28006390Value0.
    block28006390Value3 := block28006390Arg1.
    (block28006390Value2) callArmCallback: (block28006390Value3).
    block28006390Value4 := (block28006390Value0) lockNotification.
    block28006390Value4
].
            recoveredPC := 192.
        ].
        recoveredStep = 192 ifTrue: [
            recoveredPC := 207.
        ].
        recoveredStep = 207 ifTrue: [
            (recoveredStack2) addEdgeFrom: (recoveredStack3) to: (recoveredStack4) ref: (recoveredStack5) condition: (recoveredStack6) action: (recoveredStack7).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 210.
        ].
        recoveredStep = 210 ifTrue: [
            recoveredStack3 := 'active'.
            recoveredPC := 212.
        ].
        recoveredStep = 212 ifTrue: [
            recoveredStack4 := 'visited'.
            recoveredPC := 214.
        ].
        recoveredStep = 214 ifTrue: [
            recoveredStack5 := 4.
            recoveredPC := 216.
        ].
        recoveredStep = 216 ifTrue: [
            recoveredStack6 := [:block280063b4Arg1 :block280063b4Arg2 | 
    | block280063b4Stack0 block280063b4Stack1 block280063b4Stack2 block280063b4Stack3 block280063b4Stack4 block280063b4PC block280063b4Step block280063b4Done block280063b4Result |
    block280063b4Stack0 := self.
    block280063b4PC := 4.
    block280063b4Done := false.
    [block280063b4Done not] whileTrue: [
        block280063b4Step := block280063b4PC.
        block280063b4Step = 4 ifTrue: [
            block280063b4Stack1 := false.
            block280063b4PC := 5.
        ].
        block280063b4Step = 5 ifTrue: [
            block280063b4Stack2 := block280063b4Arg1.
            block280063b4PC := 6.
        ].
        block280063b4Step = 6 ifTrue: [
            block280063b4Stack2 := (block280063b4Stack2) type.
            block280063b4PC := 8.
        ].
        block280063b4Step = 8 ifTrue: [
            block280063b4Stack3 := ButtonRelease.
            block280063b4PC := 10.
        ].
        block280063b4Step = 10 ifTrue: [
            block280063b4Stack2 := (block280063b4Stack2) = (block280063b4Stack3).
            block280063b4PC := 11.
        ].
        block280063b4Step = 11 ifTrue: [
            (block280063b4Stack2) ifTrue: [block280063b4PC := 14] ifFalse: [block280063b4PC := 36].
        ].
        block280063b4Step = 14 ifTrue: [
            block280063b4PC := 15.
        ].
        block280063b4Step = 15 ifTrue: [
            block280063b4Stack1 := false.
            block280063b4PC := 16.
        ].
        block280063b4Step = 16 ifTrue: [
            block280063b4Stack2 := block280063b4Arg1.
            block280063b4PC := 17.
        ].
        block280063b4Step = 17 ifTrue: [
            block280063b4Stack2 := (block280063b4Stack2) button.
            block280063b4PC := 19.
        ].
        block280063b4Step = 19 ifTrue: [
            block280063b4Stack3 := Button1.
            block280063b4PC := 21.
        ].
        block280063b4Step = 21 ifTrue: [
            (block280063b4Stack2 ~~ block280063b4Stack3) ifTrue: [block280063b4PC := 36] ifFalse: [block280063b4PC := 24].
        ].
        block280063b4Step = 24 ifTrue: [
            block280063b4PC := 25.
        ].
        block280063b4Step = 25 ifTrue: [
            block280063b4Stack1 := false.
            block280063b4PC := 26.
        ].
        block280063b4Step = 26 ifTrue: [
            block280063b4Stack2 := block280063b4Arg2.
            block280063b4PC := 27.
        ].
        block280063b4Step = 27 ifTrue: [
            block280063b4Stack2 := (block280063b4Stack2) isRadioButton.
            block280063b4PC := 29.
        ].
        block280063b4Step = 29 ifTrue: [
            (block280063b4Stack2) ifTrue: [block280063b4PC := 36] ifFalse: [block280063b4PC := 32].
        ].
        block280063b4Step = 32 ifTrue: [
            block280063b4PC := 33.
        ].
        block280063b4Step = 33 ifTrue: [
            block280063b4Stack1 := block280063b4Arg2.
            block280063b4PC := 34.
        ].
        block280063b4Step = 34 ifTrue: [
            block280063b4Stack1 := (block280063b4Stack1) isSet.
            block280063b4PC := 36.
        ].
        block280063b4Step = 36 ifTrue: [
            block280063b4Result := block280063b4Stack1.
            block280063b4Done := true.
        ].
    ].
    block280063b4Result
].
            recoveredPC := 218.
        ].
        recoveredStep = 218 ifTrue: [
            recoveredPC := 255.
        ].
        recoveredStep = 255 ifTrue: [
            recoveredStack7 := [:block280063d8Arg1 :block280063d8Arg2 | 
    | block280063d8Value0 block280063d8Value1 block280063d8Value2 block280063d8Value3 block280063d8Value4 block280063d8Value5 block280063d8Value6 |
    block280063d8Value0 := block280063d8Arg2.
    block280063d8Value1 := block280063d8Value0.
    (block280063d8Value1) basicSet: (false).
    block280063d8Value2 := block280063d8Value0.
    block280063d8Value3 := block280063d8Arg1.
    (block280063d8Value2) callValueChangedCallback: (block280063d8Value3).
    block280063d8Value4 := block280063d8Value0.
    block280063d8Value5 := block280063d8Arg1.
    (block280063d8Value4) callDisarmCallback: (block280063d8Value5).
    block280063d8Value6 := (block280063d8Value0) unlockNotification.
    block280063d8Value6
].
            recoveredPC := 257.
        ].
        recoveredStep = 257 ifTrue: [
            recoveredPC := 276.
        ].
        recoveredStep = 276 ifTrue: [
            (recoveredStack2) addEdgeFrom: (recoveredStack3) to: (recoveredStack4) ref: (recoveredStack5) condition: (recoveredStack6) action: (recoveredStack7).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 279.
        ].
        recoveredStep = 279 ifTrue: [
            recoveredStack3 := 'active'.
            recoveredPC := 281.
        ].
        recoveredStep = 281 ifTrue: [
            recoveredStack4 := 'visited'.
            recoveredPC := 283.
        ].
        recoveredStep = 283 ifTrue: [
            recoveredStack5 := 5.
            recoveredPC := 285.
        ].
        recoveredStep = 285 ifTrue: [
            recoveredStack6 := [:block280063fcArg1 :block280063fcArg2 | 
    | block280063fcStack0 block280063fcStack1 block280063fcStack2 block280063fcStack3 block280063fcStack4 block280063fcPC block280063fcStep block280063fcDone block280063fcResult |
    block280063fcStack0 := self.
    block280063fcPC := 4.
    block280063fcDone := false.
    [block280063fcDone not] whileTrue: [
        block280063fcStep := block280063fcPC.
        block280063fcStep = 4 ifTrue: [
            block280063fcStack1 := false.
            block280063fcPC := 5.
        ].
        block280063fcStep = 5 ifTrue: [
            block280063fcStack2 := block280063fcArg1.
            block280063fcPC := 6.
        ].
        block280063fcStep = 6 ifTrue: [
            block280063fcStack2 := (block280063fcStack2) type.
            block280063fcPC := 8.
        ].
        block280063fcStep = 8 ifTrue: [
            block280063fcStack3 := ButtonRelease.
            block280063fcPC := 10.
        ].
        block280063fcStep = 10 ifTrue: [
            block280063fcStack2 := (block280063fcStack2) = (block280063fcStack3).
            block280063fcPC := 11.
        ].
        block280063fcStep = 11 ifTrue: [
            (block280063fcStack2) ifTrue: [block280063fcPC := 14] ifFalse: [block280063fcPC := 37].
        ].
        block280063fcStep = 14 ifTrue: [
            block280063fcPC := 15.
        ].
        block280063fcStep = 15 ifTrue: [
            block280063fcStack1 := false.
            block280063fcPC := 16.
        ].
        block280063fcStep = 16 ifTrue: [
            block280063fcStack2 := block280063fcArg1.
            block280063fcPC := 17.
        ].
        block280063fcStep = 17 ifTrue: [
            block280063fcStack2 := (block280063fcStack2) button.
            block280063fcPC := 19.
        ].
        block280063fcStep = 19 ifTrue: [
            block280063fcStack3 := Button1.
            block280063fcPC := 21.
        ].
        block280063fcStep = 21 ifTrue: [
            (block280063fcStack2 ~~ block280063fcStack3) ifTrue: [block280063fcPC := 37] ifFalse: [block280063fcPC := 24].
        ].
        block280063fcStep = 24 ifTrue: [
            block280063fcPC := 25.
        ].
        block280063fcStep = 25 ifTrue: [
            block280063fcStack1 := false.
            block280063fcPC := 26.
        ].
        block280063fcStep = 26 ifTrue: [
            block280063fcStack2 := block280063fcArg2.
            block280063fcPC := 27.
        ].
        block280063fcStep = 27 ifTrue: [
            block280063fcStack2 := (block280063fcStack2) isRadioButton.
            block280063fcPC := 29.
        ].
        block280063fcStep = 29 ifTrue: [
            (block280063fcStack2) ifTrue: [block280063fcPC := 37] ifFalse: [block280063fcPC := 32].
        ].
        block280063fcStep = 32 ifTrue: [
            block280063fcPC := 33.
        ].
        block280063fcStep = 33 ifTrue: [
            block280063fcStack1 := block280063fcArg2.
            block280063fcPC := 34.
        ].
        block280063fcStep = 34 ifTrue: [
            block280063fcStack1 := (block280063fcStack1) isSet.
            block280063fcPC := 36.
        ].
        block280063fcStep = 36 ifTrue: [
            block280063fcStack1 := (block280063fcStack1) not.
            block280063fcPC := 37.
        ].
        block280063fcStep = 37 ifTrue: [
            block280063fcResult := block280063fcStack1.
            block280063fcDone := true.
        ].
    ].
    block280063fcResult
].
            recoveredPC := 287.
        ].
        recoveredStep = 287 ifTrue: [
            recoveredPC := 324.
        ].
        recoveredStep = 324 ifTrue: [
            recoveredStack7 := [:block28006420Arg1 :block28006420Arg2 | 
    | block28006420Value0 block28006420Value1 block28006420Value2 block28006420Value3 block28006420Value4 block28006420Value5 block28006420Value6 |
    block28006420Value0 := block28006420Arg2.
    block28006420Value1 := block28006420Value0.
    (block28006420Value1) basicSet: (true).
    block28006420Value2 := block28006420Value0.
    block28006420Value3 := block28006420Arg1.
    (block28006420Value2) callValueChangedCallback: (block28006420Value3).
    block28006420Value4 := block28006420Value0.
    block28006420Value5 := block28006420Arg1.
    (block28006420Value4) callDisarmCallback: (block28006420Value5).
    block28006420Value6 := (block28006420Value0) unlockNotification.
    block28006420Value6
].
            recoveredPC := 326.
        ].
        recoveredStep = 326 ifTrue: [
            recoveredPC := 346.
        ].
        recoveredStep = 346 ifTrue: [
            (recoveredStack2) addEdgeFrom: (recoveredStack3) to: (recoveredStack4) ref: (recoveredStack5) condition: (recoveredStack6) action: (recoveredStack7).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 349.
        ].
        recoveredStep = 349 ifTrue: [
            recoveredStack3 := 'visited'.
            recoveredPC := 351.
        ].
        recoveredStep = 351 ifTrue: [
            recoveredStack4 := 'visited'.
            recoveredPC := 353.
        ].
        recoveredStep = 353 ifTrue: [
            recoveredStack5 := 6.
            recoveredPC := 355.
        ].
        recoveredStep = 355 ifTrue: [
            recoveredStack6 := [:block28006444Arg1 :block28006444Arg2 | 
    | block28006444Stack0 block28006444Stack1 block28006444Stack2 block28006444Stack3 block28006444Stack4 block28006444PC block28006444Step block28006444Done block28006444Result |
    block28006444Stack0 := self.
    block28006444PC := 4.
    block28006444Done := false.
    [block28006444Done not] whileTrue: [
        block28006444Step := block28006444PC.
        block28006444Step = 4 ifTrue: [
            block28006444Stack1 := false.
            block28006444PC := 5.
        ].
        block28006444Step = 5 ifTrue: [
            block28006444Stack2 := block28006444Arg1.
            block28006444PC := 6.
        ].
        block28006444Step = 6 ifTrue: [
            block28006444Stack2 := (block28006444Stack2) type.
            block28006444PC := 8.
        ].
        block28006444Step = 8 ifTrue: [
            block28006444Stack3 := ButtonPress.
            block28006444PC := 10.
        ].
        block28006444Step = 10 ifTrue: [
            block28006444Stack2 := (block28006444Stack2) = (block28006444Stack3).
            block28006444PC := 11.
        ].
        block28006444Step = 11 ifTrue: [
            (block28006444Stack2) ifTrue: [block28006444PC := 14] ifFalse: [block28006444PC := 36].
        ].
        block28006444Step = 14 ifTrue: [
            block28006444PC := 15.
        ].
        block28006444Step = 15 ifTrue: [
            block28006444Stack1 := false.
            block28006444PC := 16.
        ].
        block28006444Step = 16 ifTrue: [
            block28006444Stack2 := block28006444Arg1.
            block28006444PC := 17.
        ].
        block28006444Step = 17 ifTrue: [
            block28006444Stack2 := (block28006444Stack2) button.
            block28006444PC := 19.
        ].
        block28006444Step = 19 ifTrue: [
            block28006444Stack3 := Button1.
            block28006444PC := 21.
        ].
        block28006444Step = 21 ifTrue: [
            (block28006444Stack2 ~~ block28006444Stack3) ifTrue: [block28006444PC := 36] ifFalse: [block28006444PC := 24].
        ].
        block28006444Step = 24 ifTrue: [
            block28006444PC := 25.
        ].
        block28006444Step = 25 ifTrue: [
            block28006444Stack1 := false.
            block28006444PC := 26.
        ].
        block28006444Step = 26 ifTrue: [
            block28006444Stack2 := block28006444Arg2.
            block28006444PC := 27.
        ].
        block28006444Step = 27 ifTrue: [
            block28006444Stack2 := (block28006444Stack2) isRadioButton.
            block28006444PC := 29.
        ].
        block28006444Step = 29 ifTrue: [
            (block28006444Stack2) ifTrue: [block28006444PC := 32] ifFalse: [block28006444PC := 36].
        ].
        block28006444Step = 32 ifTrue: [
            block28006444PC := 33.
        ].
        block28006444Step = 33 ifTrue: [
            block28006444Stack1 := block28006444Arg2.
            block28006444PC := 34.
        ].
        block28006444Step = 34 ifTrue: [
            block28006444Stack1 := (block28006444Stack1) isSet.
            block28006444PC := 36.
        ].
        block28006444Step = 36 ifTrue: [
            block28006444Result := block28006444Stack1.
            block28006444Done := true.
        ].
    ].
    block28006444Result
].
            recoveredPC := 357.
        ].
        recoveredStep = 357 ifTrue: [
            recoveredPC := 393.
        ].
        recoveredStep = 393 ifTrue: [
            recoveredStack7 := [:block28006468Arg1 :block28006468Arg2 | 
    nil
].
            recoveredPC := 395.
        ].
        recoveredStep = 395 ifTrue: [
            recoveredPC := 400.
        ].
        recoveredStep = 400 ifTrue: [
            (recoveredStack2) addEdgeFrom: (recoveredStack3) to: (recoveredStack4) ref: (recoveredStack5) condition: (recoveredStack6) action: (recoveredStack7).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 403.
        ].
        recoveredStep = 403 ifTrue: [
            recoveredStack3 := 'visited'.
            recoveredPC := 405.
        ].
        recoveredStep = 405 ifTrue: [
            recoveredStack4 := 'active'.
            recoveredPC := 407.
        ].
        recoveredStep = 407 ifTrue: [
            recoveredStack5 := 7.
            recoveredPC := 409.
        ].
        recoveredStep = 409 ifTrue: [
            recoveredStack6 := [:block2800648cArg1 :block2800648cArg2 | 
    | block2800648cStack0 block2800648cStack1 block2800648cStack2 block2800648cStack3 block2800648cStack4 block2800648cPC block2800648cStep block2800648cDone block2800648cResult |
    block2800648cStack0 := self.
    block2800648cPC := 4.
    block2800648cDone := false.
    [block2800648cDone not] whileTrue: [
        block2800648cStep := block2800648cPC.
        block2800648cStep = 4 ifTrue: [
            block2800648cStack1 := false.
            block2800648cPC := 5.
        ].
        block2800648cStep = 5 ifTrue: [
            block2800648cStack2 := block2800648cArg1.
            block2800648cPC := 6.
        ].
        block2800648cStep = 6 ifTrue: [
            block2800648cStack2 := (block2800648cStack2) type.
            block2800648cPC := 8.
        ].
        block2800648cStep = 8 ifTrue: [
            block2800648cStack3 := ButtonPress.
            block2800648cPC := 10.
        ].
        block2800648cStep = 10 ifTrue: [
            block2800648cStack2 := (block2800648cStack2) = (block2800648cStack3).
            block2800648cPC := 11.
        ].
        block2800648cStep = 11 ifTrue: [
            (block2800648cStack2) ifTrue: [block2800648cPC := 14] ifFalse: [block2800648cPC := 37].
        ].
        block2800648cStep = 14 ifTrue: [
            block2800648cPC := 15.
        ].
        block2800648cStep = 15 ifTrue: [
            block2800648cStack1 := false.
            block2800648cPC := 16.
        ].
        block2800648cStep = 16 ifTrue: [
            block2800648cStack2 := block2800648cArg1.
            block2800648cPC := 17.
        ].
        block2800648cStep = 17 ifTrue: [
            block2800648cStack2 := (block2800648cStack2) button.
            block2800648cPC := 19.
        ].
        block2800648cStep = 19 ifTrue: [
            block2800648cStack3 := Button1.
            block2800648cPC := 21.
        ].
        block2800648cStep = 21 ifTrue: [
            (block2800648cStack2 ~~ block2800648cStack3) ifTrue: [block2800648cPC := 37] ifFalse: [block2800648cPC := 24].
        ].
        block2800648cStep = 24 ifTrue: [
            block2800648cPC := 25.
        ].
        block2800648cStep = 25 ifTrue: [
            block2800648cStack1 := false.
            block2800648cPC := 26.
        ].
        block2800648cStep = 26 ifTrue: [
            block2800648cStack2 := block2800648cArg2.
            block2800648cPC := 27.
        ].
        block2800648cStep = 27 ifTrue: [
            block2800648cStack2 := (block2800648cStack2) isRadioButton.
            block2800648cPC := 29.
        ].
        block2800648cStep = 29 ifTrue: [
            (block2800648cStack2) ifTrue: [block2800648cPC := 32] ifFalse: [block2800648cPC := 37].
        ].
        block2800648cStep = 32 ifTrue: [
            block2800648cPC := 33.
        ].
        block2800648cStep = 33 ifTrue: [
            block2800648cStack1 := block2800648cArg2.
            block2800648cPC := 34.
        ].
        block2800648cStep = 34 ifTrue: [
            block2800648cStack1 := (block2800648cStack1) isSet.
            block2800648cPC := 36.
        ].
        block2800648cStep = 36 ifTrue: [
            block2800648cStack1 := (block2800648cStack1) not.
            block2800648cPC := 37.
        ].
        block2800648cStep = 37 ifTrue: [
            block2800648cResult := block2800648cStack1.
            block2800648cDone := true.
        ].
    ].
    block2800648cResult
].
            recoveredPC := 411.
        ].
        recoveredStep = 411 ifTrue: [
            recoveredPC := 448.
        ].
        recoveredStep = 448 ifTrue: [
            recoveredStack7 := [:block280064b0Arg1 :block280064b0Arg2 | 
    | block280064b0Value0 block280064b0Value1 block280064b0Value2 block280064b0Value3 block280064b0Value4 |
    block280064b0Value0 := block280064b0Arg2.
    block280064b0Value1 := block280064b0Value0.
    (block280064b0Value1) showDeepPressedButton.
    block280064b0Value2 := block280064b0Value0.
    block280064b0Value3 := block280064b0Arg1.
    (block280064b0Value2) callArmCallback: (block280064b0Value3).
    block280064b0Value4 := (block280064b0Value0) lockNotification.
    block280064b0Value4
].
            recoveredPC := 450.
        ].
        recoveredStep = 450 ifTrue: [
            recoveredPC := 465.
        ].
        recoveredStep = 465 ifTrue: [
            (recoveredStack2) addEdgeFrom: (recoveredStack3) to: (recoveredStack4) ref: (recoveredStack5) condition: (recoveredStack6) action: (recoveredStack7).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 468.
        ].
        recoveredStep = 468 ifTrue: [
            recoveredStack3 := 'active'.
            recoveredPC := 470.
        ].
        recoveredStep = 470 ifTrue: [
            recoveredStack4 := 'visited'.
            recoveredPC := 472.
        ].
        recoveredStep = 472 ifTrue: [
            recoveredStack5 := 8.
            recoveredPC := 474.
        ].
        recoveredStep = 474 ifTrue: [
            recoveredStack6 := [:block280064d4Arg1 :block280064d4Arg2 | 
    | block280064d4Stack0 block280064d4Stack1 block280064d4Stack2 block280064d4Stack3 block280064d4Stack4 block280064d4PC block280064d4Step block280064d4Done block280064d4Result |
    block280064d4Stack0 := self.
    block280064d4PC := 4.
    block280064d4Done := false.
    [block280064d4Done not] whileTrue: [
        block280064d4Step := block280064d4PC.
        block280064d4Step = 4 ifTrue: [
            block280064d4Stack1 := false.
            block280064d4PC := 5.
        ].
        block280064d4Step = 5 ifTrue: [
            block280064d4Stack2 := block280064d4Arg1.
            block280064d4PC := 6.
        ].
        block280064d4Step = 6 ifTrue: [
            block280064d4Stack2 := (block280064d4Stack2) type.
            block280064d4PC := 8.
        ].
        block280064d4Step = 8 ifTrue: [
            block280064d4Stack3 := ButtonRelease.
            block280064d4PC := 10.
        ].
        block280064d4Step = 10 ifTrue: [
            block280064d4Stack2 := (block280064d4Stack2) = (block280064d4Stack3).
            block280064d4PC := 11.
        ].
        block280064d4Step = 11 ifTrue: [
            (block280064d4Stack2) ifTrue: [block280064d4PC := 14] ifFalse: [block280064d4PC := 28].
        ].
        block280064d4Step = 14 ifTrue: [
            block280064d4PC := 15.
        ].
        block280064d4Step = 15 ifTrue: [
            block280064d4Stack1 := false.
            block280064d4PC := 16.
        ].
        block280064d4Step = 16 ifTrue: [
            block280064d4Stack2 := block280064d4Arg1.
            block280064d4PC := 17.
        ].
        block280064d4Step = 17 ifTrue: [
            block280064d4Stack2 := (block280064d4Stack2) button.
            block280064d4PC := 19.
        ].
        block280064d4Step = 19 ifTrue: [
            block280064d4Stack3 := Button1.
            block280064d4PC := 21.
        ].
        block280064d4Step = 21 ifTrue: [
            (block280064d4Stack2 ~~ block280064d4Stack3) ifTrue: [block280064d4PC := 28] ifFalse: [block280064d4PC := 24].
        ].
        block280064d4Step = 24 ifTrue: [
            block280064d4PC := 25.
        ].
        block280064d4Step = 25 ifTrue: [
            block280064d4Stack1 := block280064d4Arg2.
            block280064d4PC := 26.
        ].
        block280064d4Step = 26 ifTrue: [
            block280064d4Stack1 := (block280064d4Stack1) isRadioButton.
            block280064d4PC := 28.
        ].
        block280064d4Step = 28 ifTrue: [
            block280064d4Result := block280064d4Stack1.
            block280064d4Done := true.
        ].
    ].
    block280064d4Result
].
            recoveredPC := 476.
        ].
        recoveredStep = 476 ifTrue: [
            recoveredPC := 505.
        ].
        recoveredStep = 505 ifTrue: [
            recoveredStack7 := [:block280064f8Arg1 :block280064f8Arg2 | 
    | block280064f8Value0 block280064f8Value1 block280064f8Value2 block280064f8Value3 block280064f8Value4 block280064f8Value5 block280064f8Value6 block280064f8Value7 block280064f8Value8 |
    block280064f8Value0 := block280064f8Arg2.
    block280064f8Value1 := block280064f8Value0.
    block280064f8Value2 := block280064f8Arg1.
    (block280064f8Value1) callRadioChangingCallback: (block280064f8Value2).
    block280064f8Value3 := block280064f8Value0.
    (block280064f8Value3) basicSet: (true).
    block280064f8Value4 := block280064f8Value0.
    block280064f8Value5 := block280064f8Arg1.
    (block280064f8Value4) callValueChangedCallback: (block280064f8Value5).
    block280064f8Value6 := block280064f8Value0.
    block280064f8Value7 := block280064f8Arg1.
    (block280064f8Value6) callDisarmCallback: (block280064f8Value7).
    block280064f8Value8 := (block280064f8Value0) unlockNotification.
    block280064f8Value8
].
            recoveredPC := 507.
        ].
        recoveredStep = 507 ifTrue: [
            recoveredPC := 530.
        ].
        recoveredStep = 530 ifTrue: [
            (recoveredStack2) addEdgeFrom: (recoveredStack3) to: (recoveredStack4) ref: (recoveredStack5) condition: (recoveredStack6) action: (recoveredStack7).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 533.
        ].
        recoveredStep = 533 ifTrue: [
            recoveredStack3 := 'active'.
            recoveredPC := 535.
        ].
        recoveredStep = 535 ifTrue: [
            recoveredStack4 := 'waiting'.
            recoveredPC := 537.
        ].
        recoveredStep = 537 ifTrue: [
            recoveredStack5 := 9.
            recoveredPC := 539.
        ].
        recoveredStep = 539 ifTrue: [
            recoveredStack6 := [:block2800651cArg1 :block2800651cArg2 | 
    | block2800651cStack0 block2800651cStack1 block2800651cStack2 block2800651cStack3 block2800651cStack4 block2800651cPC block2800651cStep block2800651cDone block2800651cResult |
    block2800651cStack0 := self.
    block2800651cPC := 4.
    block2800651cDone := false.
    [block2800651cDone not] whileTrue: [
        block2800651cStep := block2800651cPC.
        block2800651cStep = 4 ifTrue: [
            block2800651cStack1 := false.
            block2800651cPC := 5.
        ].
        block2800651cStep = 5 ifTrue: [
            block2800651cStack2 := block2800651cArg2.
            block2800651cPC := 6.
        ].
        block2800651cStep = 6 ifTrue: [
            block2800651cStack3 := block2800651cArg1.
            block2800651cPC := 7.
        ].
        block2800651cStep = 7 ifTrue: [
            block2800651cStack3 := (block2800651cStack3) point.
            block2800651cPC := 9.
        ].
        block2800651cStep = 9 ifTrue: [
            block2800651cStack2 := (block2800651cStack2) containsPoint: (block2800651cStack3).
            block2800651cPC := 11.
        ].
        block2800651cStep = 11 ifTrue: [
            (block2800651cStack2) ifTrue: [block2800651cPC := 21] ifFalse: [block2800651cPC := 14].
        ].
        block2800651cStep = 14 ifTrue: [
            block2800651cPC := 15.
        ].
        block2800651cStep = 15 ifTrue: [
            block2800651cStack1 := block2800651cArg1.
            block2800651cPC := 16.
        ].
        block2800651cStep = 16 ifTrue: [
            block2800651cStack1 := (block2800651cStack1) type.
            block2800651cPC := 18.
        ].
        block2800651cStep = 18 ifTrue: [
            block2800651cStack2 := MotionNotify.
            block2800651cPC := 20.
        ].
        block2800651cStep = 20 ifTrue: [
            block2800651cStack1 := (block2800651cStack1) = (block2800651cStack2).
            block2800651cPC := 21.
        ].
        block2800651cStep = 21 ifTrue: [
            block2800651cResult := block2800651cStack1.
            block2800651cDone := true.
        ].
    ].
    block2800651cResult
].
            recoveredPC := 541.
        ].
        recoveredStep = 541 ifTrue: [
            recoveredPC := 562.
        ].
        recoveredStep = 562 ifTrue: [
            recoveredStack7 := [:block28006540Arg1 :block28006540Arg2 | 
    | block28006540Stack0 block28006540Stack1 block28006540Stack2 block28006540Stack3 block28006540PC block28006540Step block28006540Done block28006540Result |
    block28006540Stack0 := self.
    block28006540PC := 4.
    block28006540Done := false.
    [block28006540Done not] whileTrue: [
        block28006540Step := block28006540PC.
        block28006540Step = 4 ifTrue: [
            block28006540Stack1 := block28006540Arg2.
            block28006540PC := 5.
        ].
        block28006540Step = 5 ifTrue: [
            block28006540Stack2 := block28006540Stack1.
            block28006540PC := 6.
        ].
        block28006540Step = 6 ifTrue: [
            (block28006540Stack2) showToggleButton.
            block28006540PC := 8.
        ].
        block28006540Step = 8 ifTrue: [
            block28006540Stack2 := block28006540Arg1.
            block28006540PC := 9.
        ].
        block28006540Step = 9 ifTrue: [
            (block28006540Stack1) callDisarmCallback: (block28006540Stack2).
            block28006540PC := 11.
        ].
        block28006540Step = 11 ifTrue: [
            block28006540Stack1 := nil.
            block28006540PC := 12.
        ].
        block28006540Step = 12 ifTrue: [
            block28006540Stack2 := block28006540Arg2.
            block28006540PC := 13.
        ].
        block28006540Step = 13 ifTrue: [
            block28006540Stack2 := (block28006540Stack2) isOkToNotify.
            block28006540PC := 15.
        ].
        block28006540Step = 15 ifTrue: [
            (block28006540Stack2) ifTrue: [block28006540PC := 18] ifFalse: [block28006540PC := 23].
        ].
        block28006540Step = 18 ifTrue: [
            block28006540PC := 19.
        ].
        block28006540Step = 19 ifTrue: [
            block28006540Stack1 := block28006540Arg2.
            block28006540PC := 20.
        ].
        block28006540Step = 20 ifTrue: [
            block28006540Stack2 := block28006540Arg1.
            block28006540PC := 21.
        ].
        block28006540Step = 21 ifTrue: [
            block28006540Stack1 := (block28006540Stack1) callLeaveNotifyCallback: (block28006540Stack2).
            block28006540PC := 23.
        ].
        block28006540Step = 23 ifTrue: [
            block28006540Result := block28006540Stack1.
            block28006540Done := true.
        ].
    ].
    block28006540Result
].
            recoveredPC := 564.
        ].
        recoveredStep = 564 ifTrue: [
            recoveredPC := 588.
        ].
        recoveredStep = 588 ifTrue: [
            (recoveredStack2) addEdgeFrom: (recoveredStack3) to: (recoveredStack4) ref: (recoveredStack5) condition: (recoveredStack6) action: (recoveredStack7).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 591.
        ].
        recoveredStep = 591 ifTrue: [
            recoveredStack3 := 'waiting'.
            recoveredPC := 593.
        ].
        recoveredStep = 593 ifTrue: [
            recoveredStack4 := 'active'.
            recoveredPC := 595.
        ].
        recoveredStep = 595 ifTrue: [
            recoveredStack5 := 10.
            recoveredPC := 597.
        ].
        recoveredStep = 597 ifTrue: [
            recoveredStack6 := [:block28006564Arg1 :block28006564Arg2 | 
    | block28006564Stack0 block28006564Stack1 block28006564Stack2 block28006564Stack3 block28006564Stack4 block28006564PC block28006564Step block28006564Done block28006564Result |
    block28006564Stack0 := self.
    block28006564PC := 4.
    block28006564Done := false.
    [block28006564Done not] whileTrue: [
        block28006564Step := block28006564PC.
        block28006564Step = 4 ifTrue: [
            block28006564Stack1 := false.
            block28006564PC := 5.
        ].
        block28006564Step = 5 ifTrue: [
            block28006564Stack2 := block28006564Arg2.
            block28006564PC := 6.
        ].
        block28006564Step = 6 ifTrue: [
            block28006564Stack3 := block28006564Arg1.
            block28006564PC := 7.
        ].
        block28006564Step = 7 ifTrue: [
            block28006564Stack3 := (block28006564Stack3) point.
            block28006564PC := 9.
        ].
        block28006564Step = 9 ifTrue: [
            block28006564Stack2 := (block28006564Stack2) containsPoint: (block28006564Stack3).
            block28006564PC := 11.
        ].
        block28006564Step = 11 ifTrue: [
            (block28006564Stack2) ifTrue: [block28006564PC := 14] ifFalse: [block28006564PC := 21].
        ].
        block28006564Step = 14 ifTrue: [
            block28006564PC := 15.
        ].
        block28006564Step = 15 ifTrue: [
            block28006564Stack1 := block28006564Arg1.
            block28006564PC := 16.
        ].
        block28006564Step = 16 ifTrue: [
            block28006564Stack1 := (block28006564Stack1) type.
            block28006564PC := 18.
        ].
        block28006564Step = 18 ifTrue: [
            block28006564Stack2 := MotionNotify.
            block28006564PC := 20.
        ].
        block28006564Step = 20 ifTrue: [
            block28006564Stack1 := (block28006564Stack1) = (block28006564Stack2).
            block28006564PC := 21.
        ].
        block28006564Step = 21 ifTrue: [
            block28006564Result := block28006564Stack1.
            block28006564Done := true.
        ].
    ].
    block28006564Result
].
            recoveredPC := 599.
        ].
        recoveredStep = 599 ifTrue: [
            recoveredPC := 620.
        ].
        recoveredStep = 620 ifTrue: [
            recoveredStack7 := [:block28006588Arg1 :block28006588Arg2 | 
    | block28006588Stack0 block28006588Stack1 block28006588Stack2 block28006588Stack3 block28006588PC block28006588Step block28006588Done block28006588Result |
    block28006588Stack0 := self.
    block28006588PC := 4.
    block28006588Done := false.
    [block28006588Done not] whileTrue: [
        block28006588Step := block28006588PC.
        block28006588Step = 4 ifTrue: [
            block28006588Stack1 := block28006588Arg2.
            block28006588PC := 5.
        ].
        block28006588Step = 5 ifTrue: [
            block28006588Stack2 := block28006588Stack1.
            block28006588PC := 6.
        ].
        block28006588Step = 6 ifTrue: [
            (block28006588Stack2) showDeepPressedButton.
            block28006588PC := 8.
        ].
        block28006588Step = 8 ifTrue: [
            block28006588Stack2 := block28006588Arg1.
            block28006588PC := 9.
        ].
        block28006588Step = 9 ifTrue: [
            (block28006588Stack1) callArmCallback: (block28006588Stack2).
            block28006588PC := 11.
        ].
        block28006588Step = 11 ifTrue: [
            block28006588Stack1 := nil.
            block28006588PC := 12.
        ].
        block28006588Step = 12 ifTrue: [
            block28006588Stack2 := block28006588Arg2.
            block28006588PC := 13.
        ].
        block28006588Step = 13 ifTrue: [
            block28006588Stack2 := (block28006588Stack2) isOkToNotify.
            block28006588PC := 15.
        ].
        block28006588Step = 15 ifTrue: [
            (block28006588Stack2) ifTrue: [block28006588PC := 18] ifFalse: [block28006588PC := 23].
        ].
        block28006588Step = 18 ifTrue: [
            block28006588PC := 19.
        ].
        block28006588Step = 19 ifTrue: [
            block28006588Stack1 := block28006588Arg2.
            block28006588PC := 20.
        ].
        block28006588Step = 20 ifTrue: [
            block28006588Stack2 := block28006588Arg1.
            block28006588PC := 21.
        ].
        block28006588Step = 21 ifTrue: [
            block28006588Stack1 := (block28006588Stack1) callEnterNotifyCallback: (block28006588Stack2).
            block28006588PC := 23.
        ].
        block28006588Step = 23 ifTrue: [
            block28006588Result := block28006588Stack1.
            block28006588Done := true.
        ].
    ].
    block28006588Result
].
            recoveredPC := 622.
        ].
        recoveredStep = 622 ifTrue: [
            recoveredPC := 646.
        ].
        recoveredStep = 646 ifTrue: [
            (recoveredStack2) addEdgeFrom: (recoveredStack3) to: (recoveredStack4) ref: (recoveredStack5) condition: (recoveredStack6) action: (recoveredStack7).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 649.
        ].
        recoveredStep = 649 ifTrue: [
            recoveredStack3 := 'waiting'.
            recoveredPC := 651.
        ].
        recoveredStep = 651 ifTrue: [
            recoveredStack4 := 'idle'.
            recoveredPC := 653.
        ].
        recoveredStep = 653 ifTrue: [
            recoveredStack5 := 11.
            recoveredPC := 655.
        ].
        recoveredStep = 655 ifTrue: [
            recoveredStack6 := [:block280065acArg1 :block280065acArg2 | 
    | block280065acStack0 block280065acStack1 block280065acStack2 block280065acStack3 block280065acStack4 block280065acPC block280065acStep block280065acDone block280065acResult |
    block280065acStack0 := self.
    block280065acPC := 4.
    block280065acDone := false.
    [block280065acDone not] whileTrue: [
        block280065acStep := block280065acPC.
        block280065acStep = 4 ifTrue: [
            block280065acStack1 := false.
            block280065acPC := 5.
        ].
        block280065acStep = 5 ifTrue: [
            block280065acStack2 := block280065acArg1.
            block280065acPC := 6.
        ].
        block280065acStep = 6 ifTrue: [
            block280065acStack2 := (block280065acStack2) type.
            block280065acPC := 8.
        ].
        block280065acStep = 8 ifTrue: [
            block280065acStack3 := ButtonRelease.
            block280065acPC := 10.
        ].
        block280065acStep = 10 ifTrue: [
            block280065acStack2 := (block280065acStack2) = (block280065acStack3).
            block280065acPC := 11.
        ].
        block280065acStep = 11 ifTrue: [
            (block280065acStack2) ifTrue: [block280065acPC := 14] ifFalse: [block280065acPC := 21].
        ].
        block280065acStep = 14 ifTrue: [
            block280065acPC := 15.
        ].
        block280065acStep = 15 ifTrue: [
            block280065acStack1 := block280065acArg1.
            block280065acPC := 16.
        ].
        block280065acStep = 16 ifTrue: [
            block280065acStack1 := (block280065acStack1) button.
            block280065acPC := 18.
        ].
        block280065acStep = 18 ifTrue: [
            block280065acStack2 := Button1.
            block280065acPC := 20.
        ].
        block280065acStep = 20 ifTrue: [
            block280065acStack1 := (block280065acStack1) == (block280065acStack2).
            block280065acPC := 21.
        ].
        block280065acStep = 21 ifTrue: [
            block280065acResult := block280065acStack1.
            block280065acDone := true.
        ].
    ].
    block280065acResult
].
            recoveredPC := 657.
        ].
        recoveredStep = 657 ifTrue: [
            recoveredPC := 678.
        ].
        recoveredStep = 678 ifTrue: [
            recoveredStack7 := [:block280065d0Arg1 :block280065d0Arg2 | 
    | block280065d0Stack0 block280065d0Stack1 block280065d0Stack2 block280065d0Stack3 block280065d0Stack4 block280065d0PC block280065d0Step block280065d0Done block280065d0Result |
    block280065d0Stack0 := self.
    block280065d0PC := 4.
    block280065d0Done := false.
    [block280065d0Done not] whileTrue: [
        block280065d0Step := block280065d0PC.
        block280065d0Step = 4 ifTrue: [
            block280065d0Stack1 := block280065d0Arg2.
            block280065d0PC := 5.
        ].
        block280065d0Step = 5 ifTrue: [
            block280065d0Stack2 := block280065d0Stack1.
            block280065d0PC := 6.
        ].
        block280065d0Step = 6 ifTrue: [
            block280065d0Stack3 := false.
            block280065d0PC := 7.
        ].
        block280065d0Step = 7 ifTrue: [
            (block280065d0Stack2) wantAllEvents: (block280065d0Stack3).
            block280065d0Stack2 := block280065d0Stack1.
            block280065d0PC := 10.
        ].
        block280065d0Step = 10 ifTrue: [
            block280065d0Stack3 := nil.
            block280065d0PC := 11.
        ].
        block280065d0Step = 11 ifTrue: [
            (block280065d0Stack2) wantsEventsFirst: (block280065d0Stack3).
            block280065d0PC := 13.
        ].
        block280065d0Step = 13 ifTrue: [
            (block280065d0Stack1) unlockNotification.
            block280065d0PC := 15.
        ].
        block280065d0Step = 15 ifTrue: [
            block280065d0Stack1 := nil.
            block280065d0PC := 16.
        ].
        block280065d0Step = 16 ifTrue: [
            block280065d0Stack2 := block280065d0Arg2.
            block280065d0PC := 17.
        ].
        block280065d0Step = 17 ifTrue: [
            block280065d0Stack2 := (block280065d0Stack2) isOkToNotify.
            block280065d0PC := 19.
        ].
        block280065d0Step = 19 ifTrue: [
            (block280065d0Stack2) ifTrue: [block280065d0PC := 22] ifFalse: [block280065d0PC := 27].
        ].
        block280065d0Step = 22 ifTrue: [
            block280065d0PC := 23.
        ].
        block280065d0Step = 23 ifTrue: [
            block280065d0Stack1 := block280065d0Arg2.
            block280065d0PC := 24.
        ].
        block280065d0Step = 24 ifTrue: [
            block280065d0Stack2 := block280065d0Arg1.
            block280065d0PC := 25.
        ].
        block280065d0Step = 25 ifTrue: [
            block280065d0Stack1 := (block280065d0Stack1) callLeaveNotifyCallback: (block280065d0Stack2).
            block280065d0PC := 27.
        ].
        block280065d0Step = 27 ifTrue: [
            block280065d0Result := block280065d0Stack1.
            block280065d0Done := true.
        ].
    ].
    block280065d0Result
].
            recoveredPC := 680.
        ].
        recoveredStep = 680 ifTrue: [
            recoveredPC := 708.
        ].
        recoveredStep = 708 ifTrue: [
            (recoveredStack2) addEdgeFrom: (recoveredStack3) to: (recoveredStack4) ref: (recoveredStack5) condition: (recoveredStack6) action: (recoveredStack7).
            recoveredPC := 711.
        ].
        recoveredStep = 711 ifTrue: [
            (recoveredStack0) fsm: (recoveredStack1).
            recoveredPC := 713.
        ].
        recoveredStep = 713 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 714.
        ].
        recoveredStep = 714 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

