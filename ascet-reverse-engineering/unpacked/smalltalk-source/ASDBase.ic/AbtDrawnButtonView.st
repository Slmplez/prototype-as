"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2005e47c; bytecode file offset 0x95ad30"
!AbtDrawnButtonView methodsFor: 'recovered'!
pushButton3DLookEnabled
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := pushButton3DLookEnabled.
    recoveredValue1 := (recoveredValue0) ~~ (false).
    ^recoveredValue1
! !

"ASDBase.ic method 0x2009a9f0; bytecode file offset 0x99735c"
!AbtDrawnButtonView methodsFor: 'recovered'!
userClicked: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    (self) signalEvent: ('clicked').
    ^self
! !

"ASDBase.ic method 0x2009d428; bytecode file offset 0x999ce4"
!AbtDrawnButtonView methodsFor: 'recovered'!
click
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := widget.
    recoveredValue1 := XmNactivateCallback.
    (recoveredValue0) callActivateCallback: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x200c9944; bytecode file offset 0x9c6210"
!AbtDrawnButtonView methodsFor: 'recovered'!
resized: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    | recoveredValue0 |
    recoveredValue0 := widget.
    (self) signalEvent: ('resized') with: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x200c9954; bytecode file offset 0x9c6210"
!AbtDrawnButtonView methodsFor: 'recovered'!
exposed: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    | recoveredValue0 |
    recoveredValue0 := widget.
    (self) signalEvent: ('exposed') with: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x201938bc; bytecode file offset 0xa9017c"
!AbtDrawnButtonView methodsFor: 'recovered'!
pushButton3DLookEnabled: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            pushButton3DLookEnabled := recoveredStack1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := widget.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 17] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := widget.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack1) pushButtonEnabled: (recoveredStack2).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := 'pushButton3DLookEnabledChanged'.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            (recoveredStack0) signalEvent: (recoveredStack1) with: (recoveredStack2).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20253864; bytecode file offset 0xb50130"
!AbtDrawnButtonView methodsFor: 'recovered'!
widgetCreationArgBlock
    | recoveredValue0 |
    recoveredValue0 := [:recoveredBlock4Arg1 | 
    | recoveredBlock4Stack0 recoveredBlock4Stack1 recoveredBlock4Stack2 recoveredBlock4PC recoveredBlock4Step recoveredBlock4Done recoveredBlock4Result |
    recoveredBlock4Stack0 := self.
    recoveredBlock4PC := 10.
    recoveredBlock4Done := false.
    [recoveredBlock4Done not] whileTrue: [
        recoveredBlock4Step := recoveredBlock4PC.
        recoveredBlock4Step = 10 ifTrue: [
            recoveredBlock4Stack0 := super widgetCreationArgBlock.
            recoveredBlock4PC := 14.
        ].
        recoveredBlock4Step = 14 ifTrue: [
            recoveredBlock4Stack1 := recoveredBlock4Arg1.
            recoveredBlock4PC := 15.
        ].
        recoveredBlock4Step = 15 ifTrue: [
            (recoveredBlock4Stack0) value: (recoveredBlock4Stack1).
            recoveredBlock4PC := 17.
        ].
        recoveredBlock4Step = 17 ifTrue: [
            recoveredBlock4Stack0 := 'PTR'.
            recoveredBlock4PC := 19.
        ].
        recoveredBlock4Step = 19 ifTrue: [
            recoveredBlock4Stack1 := 'PTR10527'.
            recoveredBlock4PC := 21.
        ].
        recoveredBlock4Step = 21 ifTrue: [
            recoveredBlock4Stack0 := (recoveredBlock4Stack0) = (recoveredBlock4Stack1).
            recoveredBlock4PC := 22.
        ].
        recoveredBlock4Step = 22 ifTrue: [
            recoveredBlock4PC := 23.
        ].
        recoveredBlock4Step = 23 ifTrue: [
            recoveredBlock4Stack0 := pushButton3DLookEnabled.
            recoveredBlock4PC := 25.
        ].
        recoveredBlock4Step = 25 ifTrue: [
            (recoveredBlock4Stack0 ~~ nil) ifTrue: [recoveredBlock4PC := 31] ifFalse: [recoveredBlock4PC := 28].
        ].
        recoveredBlock4Step = 28 ifTrue: [
            recoveredBlock4Stack0 := true.
            recoveredBlock4PC := 29.
        ].
        recoveredBlock4Step = 29 ifTrue: [
            pushButton3DLookEnabled := recoveredBlock4Stack0.
            recoveredBlock4PC := 31.
        ].
        recoveredBlock4Step = 31 ifTrue: [
            recoveredBlock4Stack0 := recoveredBlock4Arg1.
            recoveredBlock4PC := 32.
        ].
        recoveredBlock4Step = 32 ifTrue: [
            recoveredBlock4Stack1 := pushButton3DLookEnabled.
            recoveredBlock4PC := 34.
        ].
        recoveredBlock4Step = 34 ifTrue: [
            recoveredBlock4Stack0 := (recoveredBlock4Stack0) pushButtonEnabled: (recoveredBlock4Stack1).
            recoveredBlock4PC := 36.
        ].
        recoveredBlock4Step = 36 ifTrue: [
            recoveredBlock4Result := recoveredBlock4Stack0.
            recoveredBlock4Done := true.
        ].
    ].
    recoveredBlock4Result
].
    ^recoveredValue0
! !

"ASDBase.ic method 0x2026b700; bytecode file offset 0xb67fd8"
!AbtDrawnButtonView methodsFor: 'recovered'!
postCreationInitialization
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    super postCreationInitialization.
    recoveredValue0 := widget.
    recoveredValue1 := recoveredValue0.
    recoveredValue2 := XmNactivateCallback.
    (recoveredValue1) addCallback: (recoveredValue2) receiver: (self) selector: ('userClicked:clientData:callData:') clientData: (nil).
    recoveredValue3 := recoveredValue0.
    recoveredValue4 := XmNexposeCallback.
    (recoveredValue3) addCallback: (recoveredValue4) receiver: (self) selector: ('exposed:clientData:callData:') clientData: (nil).
    recoveredValue5 := XmNresizeCallback.
    (recoveredValue0) addCallback: (recoveredValue5) receiver: (self) selector: ('resized:clientData:callData:') clientData: (nil).
    ^self
! !

