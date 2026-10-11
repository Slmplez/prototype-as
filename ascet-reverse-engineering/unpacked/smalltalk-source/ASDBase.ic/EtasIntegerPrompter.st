"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2005a554; bytecode file offset 0x957a6c"
!EtasIntegerPrompter methodsFor: 'recovered'!
cancelButtonActivate: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    (self) cancel.
    ^self
! !

"ASDBase.ic method 0x2005a8cc; bytecode file offset 0x957a6c"
!EtasIntegerPrompter methodsFor: 'recovered'!
okButtonActivate: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    (self) ok.
    ^self
! !

"ASDBase.ic method 0x20070758; bytecode file offset 0x96d06c"
!EtasIntegerPrompter methodsFor: 'recovered'!
value
    | recoveredValue0 |
    recoveredValue0 := value.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2008a2b4; bytecode file offset 0x986c00"
!EtasIntegerPrompter methodsFor: 'recovered'!
label
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := widgetDictionary.
    recoveredValue1 := (recoveredValue0) at: ('aLabel').
    ^recoveredValue1
! !

"ASDBase.ic method 0x2008a2d4; bytecode file offset 0x986c00"
!EtasIntegerPrompter methodsFor: 'recovered'!
spinButton
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := widgetDictionary.
    recoveredValue1 := (recoveredValue0) at: ('spinButton').
    ^recoveredValue1
! !

"ASDBase.ic method 0x200c7004; bytecode file offset 0x9c38d8"
!EtasIntegerPrompter methodsFor: 'recovered'!
message: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    message := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200d2ad8; bytecode file offset 0x9cf398"
!EtasIntegerPrompter methodsFor: 'recovered'!
calculatePositions
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) label.
    recoveredValue1 := (self) label.
    recoveredValue2 := (recoveredValue1) width.
    (self) updateStringForLabel: (recoveredValue0) width: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x200d6298; bytecode file offset 0x9d3134"
!EtasIntegerPrompter methodsFor: 'recovered'!
initializeAfterOpen
    super initializeAfterOpen.
    (self) calculatePositions.
    ^self
! !

"ASDBase.ic method 0x20111a00; bytecode file offset 0xa0e324"
!EtasIntegerPrompter methodsFor: 'recovered'!
resizeSupervision: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := recoveredArg3.
    super resizeSupervision: (recoveredValue0) clientData: (recoveredValue1) callData: (recoveredValue2).
    (self) calculatePositions.
    ^self
! !

"ASDBase.ic method 0x2013d284; bytecode file offset 0xa39b4c"
!EtasIntegerPrompter methodsFor: 'recovered'!
ok
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) spinButton.
    recoveredValue1 := (recoveredValue0) value.
    (self) value: (recoveredValue1).
    recoveredValue2 := (self) value.
    (self) result: (recoveredValue2).
    (self) close.
    ^self
! !

"ASDBase.ic method 0x201654e8; bytecode file offset 0xa61da4"
!EtasIntegerPrompter methodsFor: 'recovered'!
min: recoveredArg1
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
            min := recoveredStack1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack0 := (recoveredStack0) value.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := min.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := (recoveredStack0) < (recoveredStack1).
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 19].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := min.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack0) value: (recoveredStack1).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20175014; bytecode file offset 0xa718d0"
!EtasIntegerPrompter methodsFor: 'recovered'!
max: recoveredArg1
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
            max := recoveredStack1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := max.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack2 := (recoveredStack2) value.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) < (recoveredStack2).
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 21].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := max.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            (recoveredStack1) value: (recoveredStack2).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201ffbe0; bytecode file offset 0xafc4a8"
!EtasIntegerPrompter methodsFor: 'recovered'!
initialize
    super initialize.
    windowTitle := 'New Value'.
    message := 'Enter integer value:'.
    min := 1.
    max := 10.
    (self) value: (1).
    ^self
! !

"ASDBase.ic method 0x2021b1d4; bytecode file offset 0xb17a88"
!EtasIntegerPrompter methodsFor: 'recovered'!
value: recoveredArg1
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
            value := recoveredStack1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := value.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack2 := max.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) > (recoveredStack2).
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 20].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := max.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            value := recoveredStack1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := value.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack2 := min.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := (recoveredStack1) < (recoveredStack2).
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 28] ifFalse: [recoveredPC := 32].
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := min.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            value := recoveredStack1.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20249be8; bytecode file offset 0xb464c4"
!EtasIntegerPrompter methodsFor: 'recovered'!
initializeAfterCreate
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    super initializeAfterCreate.
    recoveredValue0 := (self) label.
    recoveredValue1 := message.
    (recoveredValue0) labelString: (recoveredValue1).
    recoveredValue2 := (self) spinButton.
    recoveredValue3 := recoveredValue2.
    recoveredValue4 := (self) value.
    (recoveredValue3) value: (recoveredValue4).
    recoveredValue5 := recoveredValue2.
    recoveredValue6 := min.
    (recoveredValue5) minimum: (recoveredValue6).
    recoveredValue7 := max.
    (recoveredValue2) maximum: (recoveredValue7).
    (self) updateFonts.
    ^self
! !

"ASDBase.ic method 0x2063ade8; bytecode file offset 0xf377a0"
!EtasIntegerPrompter methodsFor: 'recovered'!
createWidgetHierarchy: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredLocal6 recoveredLocal7 recoveredLocal8 recoveredLocal9 recoveredLocal10 recoveredLocal11 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := Dictionary.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredLocal11 := recoveredStack1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := 1.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredLocal10 := recoveredStack1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := 1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredLocal9 := recoveredStack1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack2 := 'aDialogShell1'.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack3 := [:recoveredBlock25Arg1 | 
    | recoveredBlock25Value0 recoveredBlock25Value1 recoveredBlock25Value2 recoveredBlock25Value3 recoveredBlock25Value4 recoveredBlock25Value5 recoveredBlock25Value6 recoveredBlock25Value7 recoveredBlock25Value8 recoveredBlock25Value9 |
    recoveredBlock25Value0 := recoveredBlock25Arg1.
    recoveredBlock25Value1 := recoveredBlock25Value0.
    (recoveredBlock25Value1) title: ('Dialog').
    recoveredBlock25Value2 := recoveredBlock25Value0.
    recoveredBlock25Value3 := recoveredLocal9.
    recoveredBlock25Value4 := (87) * (recoveredBlock25Value3).
    recoveredBlock25Value5 := (recoveredBlock25Value4) rounded.
    (recoveredBlock25Value2) height: (recoveredBlock25Value5).
    recoveredBlock25Value6 := recoveredLocal10.
    recoveredBlock25Value7 := (355) * (recoveredBlock25Value6).
    recoveredBlock25Value8 := (recoveredBlock25Value7) rounded.
    recoveredBlock25Value9 := (recoveredBlock25Value0) width: (recoveredBlock25Value8).
    recoveredBlock25Value9
].
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack1 := (recoveredStack1) createDialogShell: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredLocal8 := recoveredStack1.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack1 := recoveredLocal11.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack2 := 'aDialogShell1'.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack3 := recoveredLocal8.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack1 := recoveredLocal8.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack2 := 'aMainWindow1'.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack3 := nil.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack1 := (recoveredStack1) createMainWindow: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredLocal7 := recoveredStack1.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack1 := recoveredLocal11.
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack2 := 'aMainWindow1'.
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack3 := recoveredLocal7.
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            recoveredStack1 := recoveredLocal7.
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            recoveredStack2 := 'aForm1'.
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            recoveredStack3 := nil.
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            recoveredStack1 := (recoveredStack1) createForm: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            recoveredLocal6 := recoveredStack1.
            recoveredPC := 112.
        ].
        recoveredStep = 112 ifTrue: [
            recoveredStack1 := recoveredLocal11.
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            recoveredStack2 := 'aForm1'.
            recoveredPC := 117.
        ].
        recoveredStep = 117 ifTrue: [
            recoveredStack3 := recoveredLocal6.
            recoveredPC := 120.
        ].
        recoveredStep = 120 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 122.
        ].
        recoveredStep = 122 ifTrue: [
            recoveredStack1 := recoveredLocal6.
            recoveredPC := 125.
        ].
        recoveredStep = 125 ifTrue: [
            recoveredStack2 := 'okButton'.
            recoveredPC := 127.
        ].
        recoveredStep = 127 ifTrue: [
            recoveredStack3 := [:recoveredBlock127Arg1 | 
    | recoveredBlock127Value0 recoveredBlock127Value1 recoveredBlock127Value2 recoveredBlock127Value3 recoveredBlock127Value4 recoveredBlock127Value5 recoveredBlock127Value6 recoveredBlock127Value7 recoveredBlock127Value8 recoveredBlock127Value9 recoveredBlock127Value10 recoveredBlock127Value11 recoveredBlock127Value12 recoveredBlock127Value13 |
    recoveredBlock127Value0 := recoveredBlock127Arg1.
    recoveredBlock127Value1 := recoveredBlock127Value0.
    recoveredBlock127Value2 := recoveredLocal10.
    recoveredBlock127Value3 := (271) * (recoveredBlock127Value2).
    recoveredBlock127Value4 := (recoveredBlock127Value3) rounded.
    (recoveredBlock127Value1) x: (recoveredBlock127Value4).
    recoveredBlock127Value5 := recoveredBlock127Value0.
    (recoveredBlock127Value5) labelString: ('&Ok').
    recoveredBlock127Value6 := recoveredBlock127Value0.
    recoveredBlock127Value7 := recoveredLocal9.
    recoveredBlock127Value8 := (10) * (recoveredBlock127Value7).
    recoveredBlock127Value9 := (recoveredBlock127Value8) rounded.
    (recoveredBlock127Value6) y: (recoveredBlock127Value9).
    recoveredBlock127Value10 := recoveredLocal10.
    recoveredBlock127Value11 := (110) * (recoveredBlock127Value10).
    recoveredBlock127Value12 := (recoveredBlock127Value11) rounded.
    recoveredBlock127Value13 := (recoveredBlock127Value0) width: (recoveredBlock127Value12).
    recoveredBlock127Value13
].
            recoveredPC := 177.
        ].
        recoveredStep = 177 ifTrue: [
            recoveredStack1 := (recoveredStack1) createPushButton: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 179.
        ].
        recoveredStep = 179 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 181.
        ].
        recoveredStep = 181 ifTrue: [
            recoveredLocal5 := recoveredStack1.
            recoveredPC := 184.
        ].
        recoveredStep = 184 ifTrue: [
            recoveredStack1 := recoveredLocal11.
            recoveredPC := 187.
        ].
        recoveredStep = 187 ifTrue: [
            recoveredStack2 := 'okButton'.
            recoveredPC := 189.
        ].
        recoveredStep = 189 ifTrue: [
            recoveredStack3 := recoveredLocal5.
            recoveredPC := 192.
        ].
        recoveredStep = 192 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 194.
        ].
        recoveredStep = 194 ifTrue: [
            recoveredStack1 := recoveredLocal6.
            recoveredPC := 197.
        ].
        recoveredStep = 197 ifTrue: [
            recoveredStack2 := 'aSeparator1'.
            recoveredPC := 199.
        ].
        recoveredStep = 199 ifTrue: [
            recoveredStack3 := [:recoveredBlock199Arg1 | 
    | recoveredBlock199Value0 recoveredBlock199Value1 recoveredBlock199Value2 recoveredBlock199Value3 recoveredBlock199Value4 recoveredBlock199Value5 recoveredBlock199Value6 recoveredBlock199Value7 recoveredBlock199Value8 recoveredBlock199Value9 recoveredBlock199Value10 recoveredBlock199Value11 recoveredBlock199Value12 recoveredBlock199Value13 recoveredBlock199Value14 |
    recoveredBlock199Value0 := recoveredBlock199Arg1.
    recoveredBlock199Value1 := recoveredBlock199Value0.
    recoveredBlock199Value2 := recoveredLocal10.
    recoveredBlock199Value3 := (283) * (recoveredBlock199Value2).
    recoveredBlock199Value4 := (recoveredBlock199Value3) rounded.
    (recoveredBlock199Value1) x: (recoveredBlock199Value4).
    recoveredBlock199Value5 := recoveredBlock199Value0.
    recoveredBlock199Value6 := XmVERTICAL.
    (recoveredBlock199Value5) orientation: (recoveredBlock199Value6).
    recoveredBlock199Value7 := recoveredBlock199Value0.
    recoveredBlock199Value8 := recoveredLocal9.
    recoveredBlock199Value9 := (50) * (recoveredBlock199Value8).
    recoveredBlock199Value10 := (recoveredBlock199Value9) rounded.
    (recoveredBlock199Value7) height: (recoveredBlock199Value10).
    recoveredBlock199Value11 := recoveredLocal10.
    recoveredBlock199Value12 := (12) * (recoveredBlock199Value11).
    recoveredBlock199Value13 := (recoveredBlock199Value12) rounded.
    recoveredBlock199Value14 := (recoveredBlock199Value0) width: (recoveredBlock199Value13).
    recoveredBlock199Value14
].
            recoveredPC := 247.
        ].
        recoveredStep = 247 ifTrue: [
            recoveredStack1 := (recoveredStack1) createSeparator: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 249.
        ].
        recoveredStep = 249 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 251.
        ].
        recoveredStep = 251 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 254.
        ].
        recoveredStep = 254 ifTrue: [
            recoveredStack1 := recoveredLocal11.
            recoveredPC := 257.
        ].
        recoveredStep = 257 ifTrue: [
            recoveredStack2 := 'aSeparator1'.
            recoveredPC := 259.
        ].
        recoveredStep = 259 ifTrue: [
            recoveredStack3 := recoveredLocal4.
            recoveredPC := 262.
        ].
        recoveredStep = 262 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 264.
        ].
        recoveredStep = 264 ifTrue: [
            recoveredStack1 := recoveredLocal6.
            recoveredPC := 267.
        ].
        recoveredStep = 267 ifTrue: [
            recoveredStack2 := 'cancelButton'.
            recoveredPC := 269.
        ].
        recoveredStep = 269 ifTrue: [
            recoveredStack3 := [:recoveredBlock269Arg1 | 
    | recoveredBlock269Value0 recoveredBlock269Value1 recoveredBlock269Value2 recoveredBlock269Value3 recoveredBlock269Value4 recoveredBlock269Value5 recoveredBlock269Value6 recoveredBlock269Value7 recoveredBlock269Value8 recoveredBlock269Value9 recoveredBlock269Value10 recoveredBlock269Value11 recoveredBlock269Value12 recoveredBlock269Value13 |
    recoveredBlock269Value0 := recoveredBlock269Arg1.
    recoveredBlock269Value1 := recoveredBlock269Value0.
    recoveredBlock269Value2 := recoveredLocal10.
    recoveredBlock269Value3 := (282) * (recoveredBlock269Value2).
    recoveredBlock269Value4 := (recoveredBlock269Value3) rounded.
    (recoveredBlock269Value1) x: (recoveredBlock269Value4).
    recoveredBlock269Value5 := recoveredBlock269Value0.
    (recoveredBlock269Value5) labelString: ('&Cancel').
    recoveredBlock269Value6 := recoveredBlock269Value0.
    recoveredBlock269Value7 := recoveredLocal9.
    recoveredBlock269Value8 := (51) * (recoveredBlock269Value7).
    recoveredBlock269Value9 := (recoveredBlock269Value8) rounded.
    (recoveredBlock269Value6) y: (recoveredBlock269Value9).
    recoveredBlock269Value10 := recoveredLocal10.
    recoveredBlock269Value11 := (110) * (recoveredBlock269Value10).
    recoveredBlock269Value12 := (recoveredBlock269Value11) rounded.
    recoveredBlock269Value13 := (recoveredBlock269Value0) width: (recoveredBlock269Value12).
    recoveredBlock269Value13
].
            recoveredPC := 319.
        ].
        recoveredStep = 319 ifTrue: [
            recoveredStack1 := (recoveredStack1) createPushButton: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 321.
        ].
        recoveredStep = 321 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 323.
        ].
        recoveredStep = 323 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 326.
        ].
        recoveredStep = 326 ifTrue: [
            recoveredStack1 := recoveredLocal11.
            recoveredPC := 329.
        ].
        recoveredStep = 329 ifTrue: [
            recoveredStack2 := 'cancelButton'.
            recoveredPC := 331.
        ].
        recoveredStep = 331 ifTrue: [
            recoveredStack3 := recoveredLocal3.
            recoveredPC := 334.
        ].
        recoveredStep = 334 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 336.
        ].
        recoveredStep = 336 ifTrue: [
            recoveredStack1 := recoveredLocal6.
            recoveredPC := 339.
        ].
        recoveredStep = 339 ifTrue: [
            recoveredStack2 := 'spinButton'.
            recoveredPC := 341.
        ].
        recoveredStep = 341 ifTrue: [
            recoveredStack3 := [:recoveredBlock341Arg1 | 
    | recoveredBlock341Value0 recoveredBlock341Value1 recoveredBlock341Value2 recoveredBlock341Value3 recoveredBlock341Value4 recoveredBlock341Value5 |
    recoveredBlock341Value0 := recoveredBlock341Arg1.
    recoveredBlock341Value1 := recoveredBlock341Value0.
    (recoveredBlock341Value1) editable: (true).
    recoveredBlock341Value2 := recoveredLocal9.
    recoveredBlock341Value3 := (32) * (recoveredBlock341Value2).
    recoveredBlock341Value4 := (recoveredBlock341Value3) rounded.
    recoveredBlock341Value5 := (recoveredBlock341Value0) height: (recoveredBlock341Value4).
    recoveredBlock341Value5
].
            recoveredPC := 364.
        ].
        recoveredStep = 364 ifTrue: [
            recoveredStack1 := (recoveredStack1) createSpinButton: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 366.
        ].
        recoveredStep = 366 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 368.
        ].
        recoveredStep = 368 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 371.
        ].
        recoveredStep = 371 ifTrue: [
            recoveredStack1 := recoveredLocal11.
            recoveredPC := 374.
        ].
        recoveredStep = 374 ifTrue: [
            recoveredStack2 := 'spinButton'.
            recoveredPC := 376.
        ].
        recoveredStep = 376 ifTrue: [
            recoveredStack3 := recoveredLocal2.
            recoveredPC := 379.
        ].
        recoveredStep = 379 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 381.
        ].
        recoveredStep = 381 ifTrue: [
            recoveredStack1 := recoveredLocal6.
            recoveredPC := 384.
        ].
        recoveredStep = 384 ifTrue: [
            recoveredStack2 := 'aLabel'.
            recoveredPC := 386.
        ].
        recoveredStep = 386 ifTrue: [
            recoveredStack3 := [:recoveredBlock386Arg1 | 
    | recoveredBlock386Value0 recoveredBlock386Value1 recoveredBlock386Value2 recoveredBlock386Value3 recoveredBlock386Value4 recoveredBlock386Value5 recoveredBlock386Value6 recoveredBlock386Value7 recoveredBlock386Value8 recoveredBlock386Value9 recoveredBlock386Value10 recoveredBlock386Value11 |
    recoveredBlock386Value0 := recoveredBlock386Arg1.
    recoveredBlock386Value1 := recoveredBlock386Value0.
    recoveredBlock386Value2 := recoveredLocal10.
    recoveredBlock386Value3 := (5) * (recoveredBlock386Value2).
    recoveredBlock386Value4 := (recoveredBlock386Value3) rounded.
    (recoveredBlock386Value1) x: (recoveredBlock386Value4).
    recoveredBlock386Value5 := recoveredBlock386Value0.
    recoveredBlock386Value6 := XmALIGNMENTBEGINNING.
    (recoveredBlock386Value5) alignment: (recoveredBlock386Value6).
    recoveredBlock386Value7 := recoveredBlock386Value0.
    (recoveredBlock386Value7) labelString: ('Message').
    recoveredBlock386Value8 := recoveredLocal9.
    recoveredBlock386Value9 := (5) * (recoveredBlock386Value8).
    recoveredBlock386Value10 := (recoveredBlock386Value9) rounded.
    recoveredBlock386Value11 := (recoveredBlock386Value0) y: (recoveredBlock386Value10).
    recoveredBlock386Value11
].
            recoveredPC := 425.
        ].
        recoveredStep = 425 ifTrue: [
            recoveredStack1 := (recoveredStack1) createLabel: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 427.
        ].
        recoveredStep = 427 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 429.
        ].
        recoveredStep = 429 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 432.
        ].
        recoveredStep = 432 ifTrue: [
            recoveredStack1 := recoveredLocal11.
            recoveredPC := 435.
        ].
        recoveredStep = 435 ifTrue: [
            recoveredStack2 := 'aLabel'.
            recoveredPC := 437.
        ].
        recoveredStep = 437 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 440.
        ].
        recoveredStep = 440 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 442.
        ].
        recoveredStep = 442 ifTrue: [
            recoveredStack1 := recoveredLocal7.
            recoveredPC := 445.
        ].
        recoveredStep = 445 ifTrue: [
            recoveredStack2 := [:recoveredBlock445Arg1 | 
    | recoveredBlock445Value0 recoveredBlock445Value1 recoveredBlock445Value2 |
    recoveredBlock445Value0 := recoveredBlock445Arg1.
    recoveredBlock445Value1 := recoveredLocal6.
    recoveredBlock445Value2 := (recoveredBlock445Value0) workWindow: (recoveredBlock445Value1).
    recoveredBlock445Value2
].
            recoveredPC := 459.
        ].
        recoveredStep = 459 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 461.
        ].
        recoveredStep = 461 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 464.
        ].
        recoveredStep = 464 ifTrue: [
            recoveredStack2 := [:block28121720Arg1 | 
    | block28121720Value0 block28121720Value1 block28121720Value2 block28121720Value3 |
    block28121720Value0 := block28121720Arg1.
    block28121720Value1 := block28121720Value0.
    block28121720Value2 := XmATTACHFORM.
    (block28121720Value1) rightAttachment: (block28121720Value2).
    block28121720Value3 := (block28121720Value0) rightOffset: (5).
    block28121720Value3
].
            recoveredPC := 466.
        ].
        recoveredStep = 466 ifTrue: [
            recoveredPC := 481.
        ].
        recoveredStep = 481 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 483.
        ].
        recoveredStep = 483 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 486.
        ].
        recoveredStep = 486 ifTrue: [
            recoveredStack2 := [:block28121744Arg1 | 
    | block28121744Value0 block28121744Value1 block28121744Value2 block28121744Value3 block28121744Value4 block28121744Value5 block28121744Value6 block28121744Value7 |
    block28121744Value0 := block28121744Arg1.
    block28121744Value1 := block28121744Value0.
    block28121744Value2 := XmATTACHFORM.
    (block28121744Value1) bottomAttachment: (block28121744Value2).
    block28121744Value3 := block28121744Value0.
    block28121744Value4 := XmATTACHFORM.
    (block28121744Value3) topAttachment: (block28121744Value4).
    block28121744Value5 := block28121744Value0.
    block28121744Value6 := XmATTACHFORM.
    (block28121744Value5) rightAttachment: (block28121744Value6).
    block28121744Value7 := (block28121744Value0) rightOffset: (120).
    block28121744Value7
].
            recoveredPC := 488.
        ].
        recoveredStep = 488 ifTrue: [
            recoveredPC := 515.
        ].
        recoveredStep = 515 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 517.
        ].
        recoveredStep = 517 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 520.
        ].
        recoveredStep = 520 ifTrue: [
            recoveredStack2 := [:block28121768Arg1 | 
    | block28121768Value0 block28121768Value1 block28121768Value2 block28121768Value3 |
    block28121768Value0 := block28121768Arg1.
    block28121768Value1 := block28121768Value0.
    block28121768Value2 := XmATTACHFORM.
    (block28121768Value1) rightAttachment: (block28121768Value2).
    block28121768Value3 := (block28121768Value0) rightOffset: (5).
    block28121768Value3
].
            recoveredPC := 522.
        ].
        recoveredStep = 522 ifTrue: [
            recoveredPC := 537.
        ].
        recoveredStep = 537 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 539.
        ].
        recoveredStep = 539 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 542.
        ].
        recoveredStep = 542 ifTrue: [
            recoveredStack2 := [:block2812178cArg1 | 
    | block2812178cValue0 block2812178cValue1 block2812178cValue2 block2812178cValue3 block2812178cValue4 block2812178cValue5 block2812178cValue6 |
    block2812178cValue0 := block2812178cArg1.
    block2812178cValue1 := block2812178cValue0.
    block2812178cValue2 := XmATTACHFORM.
    (block2812178cValue1) leftAttachment: (block2812178cValue2).
    block2812178cValue3 := block2812178cValue0.
    (block2812178cValue3) leftOffset: (5).
    block2812178cValue4 := block2812178cValue0.
    block2812178cValue5 := XmATTACHFORM.
    (block2812178cValue4) rightAttachment: (block2812178cValue5).
    block2812178cValue6 := (block2812178cValue0) rightOffset: (135).
    block2812178cValue6
].
            recoveredPC := 544.
        ].
        recoveredStep = 544 ifTrue: [
            recoveredPC := 571.
        ].
        recoveredStep = 571 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 573.
        ].
        recoveredStep = 573 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 576.
        ].
        recoveredStep = 576 ifTrue: [
            recoveredStack2 := [:recoveredBlock576Arg1 | 
    | recoveredBlock576Value0 recoveredBlock576Value1 recoveredBlock576Value2 recoveredBlock576Value3 recoveredBlock576Value4 recoveredBlock576Value5 recoveredBlock576Value6 recoveredBlock576Value7 recoveredBlock576Value8 recoveredBlock576Value9 recoveredBlock576Value10 recoveredBlock576Value11 |
    recoveredBlock576Value0 := recoveredBlock576Arg1.
    recoveredBlock576Value1 := recoveredBlock576Value0.
    recoveredBlock576Value2 := XmATTACHWIDGET.
    (recoveredBlock576Value1) topAttachment: (recoveredBlock576Value2).
    recoveredBlock576Value3 := recoveredBlock576Value0.
    recoveredBlock576Value4 := recoveredLocal1.
    (recoveredBlock576Value3) topWidget: (recoveredBlock576Value4).
    recoveredBlock576Value5 := recoveredBlock576Value0.
    (recoveredBlock576Value5) topOffset: (2).
    recoveredBlock576Value6 := recoveredBlock576Value0.
    recoveredBlock576Value7 := XmATTACHFORM.
    (recoveredBlock576Value6) leftAttachment: (recoveredBlock576Value7).
    recoveredBlock576Value8 := recoveredBlock576Value0.
    (recoveredBlock576Value8) leftOffset: (5).
    recoveredBlock576Value9 := recoveredBlock576Value0.
    recoveredBlock576Value10 := XmATTACHFORM.
    (recoveredBlock576Value9) rightAttachment: (recoveredBlock576Value10).
    recoveredBlock576Value11 := (recoveredBlock576Value0) rightOffset: (140).
    recoveredBlock576Value11
].
            recoveredPC := 623.
        ].
        recoveredStep = 623 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 625.
        ].
        recoveredStep = 625 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 628.
        ].
        recoveredStep = 628 ifTrue: [
            recoveredStack2 := XmNactivateCallback.
            recoveredPC := 632.
        ].
        recoveredStep = 632 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 633.
        ].
        recoveredStep = 633 ifTrue: [
            recoveredStack4 := 'okButtonActivate:clientData:callData:'.
            recoveredPC := 636.
        ].
        recoveredStep = 636 ifTrue: [
            recoveredStack5 := nil.
            recoveredPC := 637.
        ].
        recoveredStep = 637 ifTrue: [
            (recoveredStack1) addCallback: (recoveredStack2) receiver: (recoveredStack3) selector: (recoveredStack4) clientData: (recoveredStack5).
            recoveredPC := 641.
        ].
        recoveredStep = 641 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 644.
        ].
        recoveredStep = 644 ifTrue: [
            recoveredStack2 := XmNactivateCallback.
            recoveredPC := 648.
        ].
        recoveredStep = 648 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 649.
        ].
        recoveredStep = 649 ifTrue: [
            recoveredStack4 := 'cancelButtonActivate:clientData:callData:'.
            recoveredPC := 652.
        ].
        recoveredStep = 652 ifTrue: [
            recoveredStack5 := nil.
            recoveredPC := 653.
        ].
        recoveredStep = 653 ifTrue: [
            (recoveredStack1) addCallback: (recoveredStack2) receiver: (recoveredStack3) selector: (recoveredStack4) clientData: (recoveredStack5).
            recoveredPC := 657.
        ].
        recoveredStep = 657 ifTrue: [
            recoveredStack1 := Array.
            recoveredPC := 660.
        ].
        recoveredStep = 660 ifTrue: [
            recoveredStack2 := recoveredLocal11.
            recoveredPC := 663.
        ].
        recoveredStep = 663 ifTrue: [
            recoveredStack3 := recoveredLocal7.
            recoveredPC := 666.
        ].
        recoveredStep = 666 ifTrue: [
            recoveredStack1 := (recoveredStack1) with: (recoveredStack2) with: (recoveredStack3).
            recoveredPC := 671.
        ].
        recoveredStep = 671 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

