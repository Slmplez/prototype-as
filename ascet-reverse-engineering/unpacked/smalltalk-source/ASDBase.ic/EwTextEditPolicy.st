"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2000631c; bytecode file offset 0x902de8"
!EwTextEditPolicy methodsFor: 'recovered'!
anEnhancedTextModify: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    ^self
! !

"ASDBase.ic method 0x20095f10; bytecode file offset 0x992bec"
!EwTextEditPolicy methodsFor: 'recovered'!
abtValue: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) convertToDisplay.
    (self) value: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x203109fc; bytecode file offset 0xc0d2dc"
!EwTextEditPolicy methodsFor: 'recovered'!
createWidgetUnder: recoveredArg1 characterMethod: recoveredArg2
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := [:recoveredBlock9Arg1 | 
    | recoveredBlock9Value0 recoveredBlock9Value1 recoveredBlock9Value2 recoveredBlock9Value3 recoveredBlock9Value4 recoveredBlock9Value5 recoveredBlock9Value6 recoveredBlock9Value7 |
    recoveredBlock9Value0 := recoveredBlock9Arg1.
    recoveredBlock9Value1 := recoveredBlock9Value0.
    recoveredBlock9Value2 := (self) widget.
    recoveredBlock9Value3 := (recoveredBlock9Value2) fontList.
    (recoveredBlock9Value1) fontList: (recoveredBlock9Value3).
    recoveredBlock9Value4 := recoveredBlock9Value0.
    recoveredBlock9Value5 := (self) editMode.
    (recoveredBlock9Value4) editMode: (recoveredBlock9Value5).
    recoveredBlock9Value6 := recoveredArg2.
    recoveredBlock9Value7 := (recoveredBlock9Value0) characterMethod: (recoveredBlock9Value6).
    recoveredBlock9Value7
].
    recoveredValue2 := (recoveredValue0) createEnhancedText: ('text') argBlock: (recoveredValue1).
    recoveredLocal1 := recoveredValue2.
    recoveredValue3 := recoveredLocal1.
    recoveredValue4 := XmNmodifyVerifyCallback.
    (recoveredValue3) addCallback: (recoveredValue4) receiver: (self) selector: ('anEnhancedTextModify:clientData:callData:') clientData: (nil).
    recoveredValue5 := recoveredLocal1.
    ^recoveredValue5
! !

