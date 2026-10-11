"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"extwid.ic method 0x200003c0; bytecode file offset 0x5132c"
!EwToggleButtonEditPolicy methodsFor: 'recovered'!
value
    | recoveredValue0 |
    recoveredValue0 := (self) set.
    ^recoveredValue0
! !

"extwid.ic method 0x2000075c; bytecode file offset 0x516bc"
!EwToggleButtonEditPolicy methodsFor: 'recovered'!
widgetType
    | recoveredValue0 |
    recoveredValue0 := XmTOGGLEBUTTON.
    ^recoveredValue0
! !

"extwid.ic method 0x200013e8; bytecode file offset 0x52228"
!EwToggleButtonEditPolicy methodsFor: 'recovered'!
widgetValueOn: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) set.
    ^recoveredValue1
! !

"extwid.ic method 0x20002894; bytecode file offset 0x53678"
!EwToggleButtonEditPolicy methodsFor: 'recovered'!
alignment
    | recoveredValue0 |
    recoveredValue0 := alignment.
    ^recoveredValue0
! !

"extwid.ic method 0x20002934; bytecode file offset 0x53810"
!EwToggleButtonEditPolicy methodsFor: 'recovered'!
labelString
    | recoveredValue0 |
    recoveredValue0 := labelString.
    ^recoveredValue0
! !

"extwid.ic method 0x20002b84; bytecode file offset 0x53998"
!EwToggleButtonEditPolicy methodsFor: 'recovered'!
set
    | recoveredValue0 |
    recoveredValue0 := set.
    ^recoveredValue0
! !

"extwid.ic method 0x20004670; bytecode file offset 0x55444"
!EwToggleButtonEditPolicy methodsFor: 'recovered'!
value: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) set: (recoveredValue0).
    ^self
! !

"extwid.ic method 0x20004754; bytecode file offset 0x5551c"
!EwToggleButtonEditPolicy methodsFor: 'recovered'!
buttonPress: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) toggleEditWidget: (recoveredValue0).
    ^self
! !

"extwid.ic method 0x200061a8; bytecode file offset 0x56f74"
!EwToggleButtonEditPolicy methodsFor: 'recovered'!
toggleEditWidget: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue1) set.
    recoveredValue3 := (recoveredValue2) not.
    (recoveredValue0) setState: (recoveredValue3) notify: (false).
    ^self
! !

"extwid.ic method 0x200064a0; bytecode file offset 0x57284"
!EwToggleButtonEditPolicy methodsFor: 'recovered'!
alignment: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    alignment := recoveredValue0.
    ^self
! !

"extwid.ic method 0x20006600; bytecode file offset 0x57404"
!EwToggleButtonEditPolicy methodsFor: 'recovered'!
labelString: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    labelString := recoveredValue0.
    ^self
! !

"extwid.ic method 0x20006664; bytecode file offset 0x57568"
!EwToggleButtonEditPolicy methodsFor: 'recovered'!
set: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    set := recoveredValue0.
    ^self
! !

"extwid.ic method 0x200095d4; bytecode file offset 0x5a3a0"
!EwToggleButtonEditPolicy methodsFor: 'recovered'!
initialize
    | recoveredValue0 |
    recoveredValue0 := XmALIGNMENTCENTER.
    alignment := recoveredValue0.
    labelString := ''.
    set := false.
    ^self
! !

"extwid.ic method 0x2000df88; bytecode file offset 0x5ed64"
!EwToggleButtonEditPolicy methodsFor: 'recovered'!
beginEditOn: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredValue0.
    recoveredValue2 := (self) set.
    (recoveredValue1) set: (recoveredValue2).
    recoveredValue3 := recoveredValue0.
    recoveredValue4 := (self) labelString.
    (recoveredValue3) labelString: (recoveredValue4).
    recoveredValue5 := (self) alignment.
    (recoveredValue0) alignment: (recoveredValue5).
    ^self
! !

"extwid.ic method 0x2000e074; bytecode file offset 0x5ee68"
!EwToggleButtonEditPolicy methodsFor: 'recovered'!
hookPermanentCallbacksOn: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    super hookPermanentCallbacksOn: (recoveredValue0).
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := ButtonPressMask.
    (recoveredValue1) addEventHandler: (recoveredValue2) receiver: (self) selector: ('buttonPress:clientData:callData:') clientData: (nil).
    ^self
! !

"extwid.ic method 0x2000e090; bytecode file offset 0x5ee68"
!EwToggleButtonEditPolicy methodsFor: 'recovered'!
unhookPermanentCallbacksOn: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    super unhookPermanentCallbacksOn: (recoveredValue0).
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := ButtonPressMask.
    (recoveredValue1) removeEventHandler: (recoveredValue2) receiver: (self) selector: ('buttonPress:clientData:callData:') clientData: (nil).
    ^self
! !

"extwid.ic method 0x2000f518; bytecode file offset 0x602f0"
!EwToggleButtonEditPolicy methodsFor: 'recovered'!
createWidgetUnder: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := [:recoveredBlock7Arg1 | 
    | recoveredBlock7Value0 recoveredBlock7Value1 recoveredBlock7Value2 recoveredBlock7Value3 |
    recoveredBlock7Value0 := recoveredBlock7Arg1.
    recoveredBlock7Value1 := (self) widget.
    recoveredBlock7Value2 := (recoveredBlock7Value1) fontList.
    recoveredBlock7Value3 := (recoveredBlock7Value0) fontList: (recoveredBlock7Value2).
    recoveredBlock7Value3
].
    recoveredValue2 := (recoveredValue0) createToggleButton: ('toggle') argBlock: (recoveredValue1).
    ^recoveredValue2
! !

