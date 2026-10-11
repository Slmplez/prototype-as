"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x200062bc; bytecode file offset 0x902de8"
!RBStartAddressDialog methodsFor: 'recovered'!
textModify: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    ^self
! !

"ASDBase.ic method 0x2005a548; bytecode file offset 0x957a6c"
!RBStartAddressDialog methodsFor: 'recovered'!
cancelButtonActivate: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    (self) cancel.
    ^self
! !

"ASDBase.ic method 0x2005aa58; bytecode file offset 0x957a6c"
!RBStartAddressDialog methodsFor: 'recovered'!
okButtonActivate: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    (self) ok.
    ^self
! !

"ASDBase.ic method 0x20070110; bytecode file offset 0x96cb7c"
!RBStartAddressDialog methodsFor: 'recovered'!
startAddress
    | recoveredValue0 |
    recoveredValue0 := startAddress.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2009e23c; bytecode file offset 0x99aaf4"
!RBStartAddressDialog methodsFor: 'recovered'!
cancel
    startAddress := nil.
    (self) close.
    ^self
! !

"ASDBase.ic method 0x200c6868; bytecode file offset 0x9c3164"
!RBStartAddressDialog methodsFor: 'recovered'!
startAddress: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    startAddress := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c6bd0; bytecode file offset 0x9c36ec"
!RBStartAddressDialog methodsFor: 'recovered'!
elements: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    elements := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x20148208; bytecode file offset 0xa44ac4"
!RBStartAddressDialog methodsFor: 'recovered'!
aForm1Destroy: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := smallFont.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := smallFont.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) fontStruct.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack1) freeFont.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            smallFont := recoveredStack1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2014e65c; bytecode file offset 0xa4af24"
!RBStartAddressDialog methodsFor: 'recovered'!
ok
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) widgetAt: ('startAddressText').
    recoveredValue1 := (recoveredValue0) getString.
    recoveredValue2 := (recoveredValue1) asIntegerFromHex.
    startAddress := recoveredValue2.
    recoveredValue3 := startAddress.
    result := recoveredValue3.
    (self) close.
    ^self
! !

"ASDBase.ic method 0x20320744; bytecode file offset 0xc1d060"
!RBStartAddressDialog methodsFor: 'recovered'!
installActionKeys
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 |
    recoveredValue0 := Dictionary.
    recoveredValue1 := (recoveredValue0) new.
    recoveredLocal2 := recoveredValue1.
    recoveredValue2 := Dictionary.
    recoveredValue3 := (recoveredValue2) new.
    recoveredLocal1 := recoveredValue3.
    recoveredValue4 := recoveredLocal1.
    recoveredValue5 := recoveredValue4.
    recoveredValue6 := XKCancel.
    (recoveredValue5) at: (recoveredValue6) put: ('cancel').
    recoveredValue7 := recoveredValue4.
    recoveredValue8 := Character.
    recoveredValue9 := (recoveredValue8) value: (13).
    (recoveredValue7) at: (recoveredValue9) put: ('ok').
    recoveredValue10 := recoveredValue4.
    recoveredValue11 := HKOk.
    (recoveredValue10) at: (recoveredValue11) put: ('ok').
    recoveredValue12 := recoveredValue4.
    recoveredValue13 := HKCancel.
    (recoveredValue12) at: (recoveredValue13) put: ('cancel').
    recoveredValue14 := recoveredLocal2.
    recoveredValue15 := (self) shell.
    recoveredValue16 := recoveredLocal1.
    (recoveredValue14) at: (recoveredValue15) put: (recoveredValue16).
    recoveredValue17 := recoveredLocal2.
    (self) widgetKeyActions: (recoveredValue17).
    ^self
! !

"ASDBase.ic method 0x204d15a0; bytecode file offset 0xdcded0"
!RBStartAddressDialog methodsFor: 'recovered'!
initializeAfterCreate
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) shell.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack0) noResize: (recoveredStack1).
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := 'startAddressLabel'.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetAt: (recoveredStack1).
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := SCStartAddress.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack0) labelString: (recoveredStack1).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := 'hexLabel'.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetAt: (recoveredStack1).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := SCHex.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            (recoveredStack0) labelString: (recoveredStack1).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := 'cancelButton'.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetAt: (recoveredStack1).
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := SCCancel.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            (recoveredStack0) labelString: (recoveredStack1).
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := 'okButton'.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetAt: (recoveredStack1).
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := SCOk.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            (recoveredStack0) labelString: (recoveredStack1).
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack0 := (recoveredStack0) shell.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := SCChangeStartAddress.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            (recoveredStack0) title: (recoveredStack1).
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            (recoveredStack0) grayBackground.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack1 := 'startAddressText'.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetAt: (recoveredStack1).
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack2 := startAddress.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack2 := (recoveredStack2) asHexString.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            (recoveredStack1) setString: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack2 := 'checkHex:'.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            (recoveredStack1) characterMethod: (recoveredStack2).
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack2 := startAddress.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack2 := (recoveredStack2) asHexString.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack2 := (recoveredStack2) size.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack1 := (recoveredStack1) @ (recoveredStack2).
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            (recoveredStack0) setSelection: (recoveredStack1).
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            (recoveredStack0) installActionKeys.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack0 := RBFontGlobal.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack0 := (recoveredStack0) instance.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack0 := (recoveredStack0) fontTiny.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            smallFont := recoveredStack0.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack0 := smallFont.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack0 := (recoveredStack0) fontStruct.
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 102] ifFalse: [recoveredPC := 96].
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            smallFont := recoveredStack0.
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            recoveredPC := 154.
        ].
        recoveredStep = 102 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            recoveredStack1 := 'startAddressLabel'.
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetAt: (recoveredStack1).
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            recoveredStack1 := smallFont.
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            (recoveredStack0) fontList: (recoveredStack1).
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            recoveredStack1 := 'hexLabel'.
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetAt: (recoveredStack1).
            recoveredPC := 114.
        ].
        recoveredStep = 114 ifTrue: [
            recoveredStack1 := smallFont.
            recoveredPC := 116.
        ].
        recoveredStep = 116 ifTrue: [
            (recoveredStack0) fontList: (recoveredStack1).
            recoveredPC := 118.
        ].
        recoveredStep = 118 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 119.
        ].
        recoveredStep = 119 ifTrue: [
            recoveredStack1 := 'cancelButton'.
            recoveredPC := 121.
        ].
        recoveredStep = 121 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetAt: (recoveredStack1).
            recoveredPC := 122.
        ].
        recoveredStep = 122 ifTrue: [
            recoveredStack1 := smallFont.
            recoveredPC := 124.
        ].
        recoveredStep = 124 ifTrue: [
            (recoveredStack0) fontList: (recoveredStack1).
            recoveredPC := 126.
        ].
        recoveredStep = 126 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 127.
        ].
        recoveredStep = 127 ifTrue: [
            recoveredStack1 := 'okButton'.
            recoveredPC := 129.
        ].
        recoveredStep = 129 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetAt: (recoveredStack1).
            recoveredPC := 130.
        ].
        recoveredStep = 130 ifTrue: [
            recoveredStack1 := smallFont.
            recoveredPC := 132.
        ].
        recoveredStep = 132 ifTrue: [
            (recoveredStack0) fontList: (recoveredStack1).
            recoveredPC := 134.
        ].
        recoveredStep = 134 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 135.
        ].
        recoveredStep = 135 ifTrue: [
            recoveredStack1 := 'startAddressText'.
            recoveredPC := 137.
        ].
        recoveredStep = 137 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetAt: (recoveredStack1).
            recoveredPC := 138.
        ].
        recoveredStep = 138 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 139.
        ].
        recoveredStep = 139 ifTrue: [
            recoveredStack2 := smallFont.
            recoveredPC := 141.
        ].
        recoveredStep = 141 ifTrue: [
            (recoveredStack1) fontList: (recoveredStack2).
            recoveredPC := 143.
        ].
        recoveredStep = 143 ifTrue: [
            recoveredStack1 := smallFont.
            recoveredPC := 145.
        ].
        recoveredStep = 145 ifTrue: [
            recoveredStack1 := (recoveredStack1) fontStruct.
            recoveredPC := 147.
        ].
        recoveredStep = 147 ifTrue: [
            recoveredStack1 := (recoveredStack1) height.
            recoveredPC := 149.
        ].
        recoveredStep = 149 ifTrue: [
            recoveredStack2 := 6.
            recoveredPC := 151.
        ].
        recoveredStep = 151 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (recoveredStack2).
            recoveredPC := 152.
        ].
        recoveredStep = 152 ifTrue: [
            (recoveredStack0) height: (recoveredStack1).
            recoveredPC := 154.
        ].
        recoveredStep = 154 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 155.
        ].
        recoveredStep = 155 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20641318; bytecode file offset 0xf3dcc4"
!RBStartAddressDialog methodsFor: 'recovered'!
createWidgetHierarchy: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredLocal6 recoveredLocal7 recoveredLocal8 recoveredLocal9 recoveredLocal10 recoveredLocal11 recoveredLocal12 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 recoveredValue21 recoveredValue22 recoveredValue23 recoveredValue24 recoveredValue25 recoveredValue26 recoveredValue27 recoveredValue28 recoveredValue29 recoveredValue30 recoveredValue31 recoveredValue32 recoveredValue33 recoveredValue34 recoveredValue35 recoveredValue36 recoveredValue37 recoveredValue38 recoveredValue39 recoveredValue40 recoveredValue41 recoveredValue42 recoveredValue43 recoveredValue44 recoveredValue45 recoveredValue46 recoveredValue47 recoveredValue48 recoveredValue49 recoveredValue50 recoveredValue51 recoveredValue52 recoveredValue53 recoveredValue54 recoveredValue55 recoveredValue56 recoveredValue57 recoveredValue58 recoveredValue59 recoveredValue60 recoveredValue61 recoveredValue62 recoveredValue63 recoveredValue64 recoveredValue65 recoveredValue66 recoveredValue67 recoveredValue68 |
    recoveredValue0 := Dictionary.
    recoveredValue1 := (recoveredValue0) new.
    recoveredLocal12 := recoveredValue1.
    recoveredLocal11 := 1.
    recoveredLocal10 := 1.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := [:recoveredBlock25Arg1 | 
    | recoveredBlock25Value0 recoveredBlock25Value1 recoveredBlock25Value2 recoveredBlock25Value3 recoveredBlock25Value4 recoveredBlock25Value5 recoveredBlock25Value6 recoveredBlock25Value7 recoveredBlock25Value8 recoveredBlock25Value9 |
    recoveredBlock25Value0 := recoveredBlock25Arg1.
    recoveredBlock25Value1 := recoveredBlock25Value0.
    (recoveredBlock25Value1) title: ('Einstellungen').
    recoveredBlock25Value2 := recoveredBlock25Value0.
    recoveredBlock25Value3 := recoveredLocal10.
    recoveredBlock25Value4 := (84) * (recoveredBlock25Value3).
    recoveredBlock25Value5 := (recoveredBlock25Value4) rounded.
    (recoveredBlock25Value2) height: (recoveredBlock25Value5).
    recoveredBlock25Value6 := recoveredLocal11.
    recoveredBlock25Value7 := (273) * (recoveredBlock25Value6).
    recoveredBlock25Value8 := (recoveredBlock25Value7) rounded.
    recoveredBlock25Value9 := (recoveredBlock25Value0) width: (recoveredBlock25Value8).
    recoveredBlock25Value9
].
    recoveredValue4 := (recoveredValue2) createDialogShell: ('aDialogShell1') argBlock: (recoveredValue3).
    recoveredLocal9 := recoveredValue4.
    recoveredValue5 := recoveredLocal12.
    recoveredValue6 := recoveredLocal9.
    (recoveredValue5) at: ('aDialogShell1') put: (recoveredValue6).
    recoveredValue7 := recoveredLocal9.
    recoveredValue8 := (recoveredValue7) createMainWindow: ('aMainWindow1') argBlock: (nil).
    recoveredLocal8 := recoveredValue8.
    recoveredValue9 := recoveredLocal12.
    recoveredValue10 := recoveredLocal8.
    (recoveredValue9) at: ('aMainWindow1') put: (recoveredValue10).
    recoveredValue11 := recoveredLocal8.
    recoveredValue12 := (recoveredValue11) createForm: ('aForm1') argBlock: (nil).
    recoveredValue13 := (recoveredValue12) manageChild.
    recoveredLocal7 := recoveredValue13.
    recoveredValue14 := recoveredLocal12.
    recoveredValue15 := recoveredLocal7.
    (recoveredValue14) at: ('aForm1') put: (recoveredValue15).
    recoveredValue16 := recoveredLocal7.
    recoveredValue17 := [:recoveredBlock127Arg1 | 
    | recoveredBlock127Value0 recoveredBlock127Value1 recoveredBlock127Value2 recoveredBlock127Value3 recoveredBlock127Value4 recoveredBlock127Value5 recoveredBlock127Value6 recoveredBlock127Value7 recoveredBlock127Value8 recoveredBlock127Value9 recoveredBlock127Value10 recoveredBlock127Value11 recoveredBlock127Value12 recoveredBlock127Value13 recoveredBlock127Value14 recoveredBlock127Value15 recoveredBlock127Value16 |
    recoveredBlock127Value0 := recoveredBlock127Arg1.
    recoveredBlock127Value1 := recoveredBlock127Value0.
    recoveredBlock127Value2 := recoveredLocal10.
    recoveredBlock127Value3 := (30) * (recoveredBlock127Value2).
    recoveredBlock127Value4 := (recoveredBlock127Value3) rounded.
    (recoveredBlock127Value1) y: (recoveredBlock127Value4).
    recoveredBlock127Value5 := recoveredBlock127Value0.
    recoveredBlock127Value6 := recoveredLocal11.
    recoveredBlock127Value7 := (25) * (recoveredBlock127Value6).
    recoveredBlock127Value8 := (recoveredBlock127Value7) rounded.
    (recoveredBlock127Value5) x: (recoveredBlock127Value8).
    recoveredBlock127Value9 := recoveredBlock127Value0.
    recoveredBlock127Value10 := recoveredLocal10.
    recoveredBlock127Value11 := (25) * (recoveredBlock127Value10).
    recoveredBlock127Value12 := (recoveredBlock127Value11) rounded.
    (recoveredBlock127Value9) height: (recoveredBlock127Value12).
    recoveredBlock127Value13 := recoveredLocal11.
    recoveredBlock127Value14 := (75) * (recoveredBlock127Value13).
    recoveredBlock127Value15 := (recoveredBlock127Value14) rounded.
    recoveredBlock127Value16 := (recoveredBlock127Value0) width: (recoveredBlock127Value15).
    recoveredBlock127Value16
].
    recoveredValue18 := (recoveredValue16) createEnhancedText: ('startAddressText') argBlock: (recoveredValue17).
    recoveredValue19 := (recoveredValue18) manageChild.
    recoveredLocal6 := recoveredValue19.
    recoveredValue20 := recoveredLocal12.
    recoveredValue21 := recoveredLocal6.
    (recoveredValue20) at: ('startAddressText') put: (recoveredValue21).
    recoveredValue22 := recoveredLocal7.
    recoveredValue23 := [:recoveredBlock203Arg1 | 
    | recoveredBlock203Value0 recoveredBlock203Value1 recoveredBlock203Value2 recoveredBlock203Value3 recoveredBlock203Value4 recoveredBlock203Value5 recoveredBlock203Value6 recoveredBlock203Value7 recoveredBlock203Value8 recoveredBlock203Value9 recoveredBlock203Value10 recoveredBlock203Value11 recoveredBlock203Value12 recoveredBlock203Value13 recoveredBlock203Value14 recoveredBlock203Value15 recoveredBlock203Value16 recoveredBlock203Value17 recoveredBlock203Value18 |
    recoveredBlock203Value0 := recoveredBlock203Arg1.
    recoveredBlock203Value1 := recoveredBlock203Value0.
    recoveredBlock203Value2 := recoveredLocal11.
    recoveredBlock203Value3 := (10) * (recoveredBlock203Value2).
    recoveredBlock203Value4 := (recoveredBlock203Value3) rounded.
    (recoveredBlock203Value1) x: (recoveredBlock203Value4).
    recoveredBlock203Value5 := recoveredBlock203Value0.
    recoveredBlock203Value6 := XmALIGNMENTBEGINNING.
    (recoveredBlock203Value5) alignment: (recoveredBlock203Value6).
    recoveredBlock203Value7 := recoveredBlock203Value0.
    (recoveredBlock203Value7) labelString: ('Startadresse').
    recoveredBlock203Value8 := recoveredBlock203Value0.
    (recoveredBlock203Value8) marginHeight: (0).
    recoveredBlock203Value9 := recoveredBlock203Value0.
    recoveredBlock203Value10 := recoveredLocal10.
    recoveredBlock203Value11 := (10) * (recoveredBlock203Value10).
    recoveredBlock203Value12 := (recoveredBlock203Value11) rounded.
    (recoveredBlock203Value9) y: (recoveredBlock203Value12).
    recoveredBlock203Value13 := recoveredBlock203Value0.
    recoveredBlock203Value14 := recoveredLocal10.
    recoveredBlock203Value15 := (16) * (recoveredBlock203Value14).
    recoveredBlock203Value16 := (recoveredBlock203Value15) rounded.
    (recoveredBlock203Value13) height: (recoveredBlock203Value16).
    recoveredBlock203Value17 := (self) defaultLabelBlue.
    recoveredBlock203Value18 := (recoveredBlock203Value0) foregroundColor: (recoveredBlock203Value17).
    recoveredBlock203Value18
].
    recoveredValue24 := (recoveredValue22) createLabel: ('startAddressLabel') argBlock: (recoveredValue23).
    recoveredValue25 := (recoveredValue24) manageChild.
    recoveredLocal5 := recoveredValue25.
    recoveredValue26 := recoveredLocal12.
    recoveredValue27 := recoveredLocal5.
    (recoveredValue26) at: ('startAddressLabel') put: (recoveredValue27).
    recoveredValue28 := recoveredLocal7.
    recoveredValue29 := [:recoveredBlock287Arg1 | 
    | recoveredBlock287Value0 recoveredBlock287Value1 recoveredBlock287Value2 recoveredBlock287Value3 recoveredBlock287Value4 recoveredBlock287Value5 recoveredBlock287Value6 recoveredBlock287Value7 recoveredBlock287Value8 recoveredBlock287Value9 recoveredBlock287Value10 recoveredBlock287Value11 recoveredBlock287Value12 recoveredBlock287Value13 recoveredBlock287Value14 recoveredBlock287Value15 recoveredBlock287Value16 recoveredBlock287Value17 |
    recoveredBlock287Value0 := recoveredBlock287Arg1.
    recoveredBlock287Value1 := recoveredBlock287Value0.
    recoveredBlock287Value2 := recoveredLocal11.
    recoveredBlock287Value3 := (105) * (recoveredBlock287Value2).
    recoveredBlock287Value4 := (recoveredBlock287Value3) rounded.
    (recoveredBlock287Value1) x: (recoveredBlock287Value4).
    recoveredBlock287Value5 := recoveredBlock287Value0.
    (recoveredBlock287Value5) labelString: ('hex').
    recoveredBlock287Value6 := recoveredBlock287Value0.
    recoveredBlock287Value7 := recoveredLocal10.
    recoveredBlock287Value8 := (35) * (recoveredBlock287Value7).
    recoveredBlock287Value9 := (recoveredBlock287Value8) rounded.
    (recoveredBlock287Value6) y: (recoveredBlock287Value9).
    recoveredBlock287Value10 := recoveredBlock287Value0.
    recoveredBlock287Value11 := recoveredLocal10.
    recoveredBlock287Value12 := (16) * (recoveredBlock287Value11).
    recoveredBlock287Value13 := (recoveredBlock287Value12) rounded.
    (recoveredBlock287Value10) height: (recoveredBlock287Value13).
    recoveredBlock287Value14 := recoveredLocal11.
    recoveredBlock287Value15 := (28) * (recoveredBlock287Value14).
    recoveredBlock287Value16 := (recoveredBlock287Value15) rounded.
    recoveredBlock287Value17 := (recoveredBlock287Value0) width: (recoveredBlock287Value16).
    recoveredBlock287Value17
].
    recoveredValue30 := (recoveredValue28) createLabel: ('hexLabel') argBlock: (recoveredValue29).
    recoveredValue31 := (recoveredValue30) manageChild.
    recoveredLocal4 := recoveredValue31.
    recoveredValue32 := recoveredLocal12.
    recoveredValue33 := recoveredLocal4.
    (recoveredValue32) at: ('hexLabel') put: (recoveredValue33).
    recoveredValue34 := recoveredLocal7.
    recoveredValue35 := [:recoveredBlock368Arg1 | 
    | recoveredBlock368Value0 recoveredBlock368Value1 recoveredBlock368Value2 recoveredBlock368Value3 recoveredBlock368Value4 recoveredBlock368Value5 recoveredBlock368Value6 recoveredBlock368Value7 recoveredBlock368Value8 recoveredBlock368Value9 recoveredBlock368Value10 recoveredBlock368Value11 recoveredBlock368Value12 recoveredBlock368Value13 recoveredBlock368Value14 recoveredBlock368Value15 recoveredBlock368Value16 recoveredBlock368Value17 |
    recoveredBlock368Value0 := recoveredBlock368Arg1.
    recoveredBlock368Value1 := recoveredBlock368Value0.
    recoveredBlock368Value2 := recoveredLocal11.
    recoveredBlock368Value3 := (155) * (recoveredBlock368Value2).
    recoveredBlock368Value4 := (recoveredBlock368Value3) rounded.
    (recoveredBlock368Value1) x: (recoveredBlock368Value4).
    recoveredBlock368Value5 := recoveredBlock368Value0.
    (recoveredBlock368Value5) labelString: ('Abbruch').
    recoveredBlock368Value6 := recoveredBlock368Value0.
    recoveredBlock368Value7 := recoveredLocal10.
    recoveredBlock368Value8 := (45) * (recoveredBlock368Value7).
    recoveredBlock368Value9 := (recoveredBlock368Value8) rounded.
    (recoveredBlock368Value6) y: (recoveredBlock368Value9).
    recoveredBlock368Value10 := recoveredBlock368Value0.
    recoveredBlock368Value11 := recoveredLocal10.
    recoveredBlock368Value12 := (30) * (recoveredBlock368Value11).
    recoveredBlock368Value13 := (recoveredBlock368Value12) rounded.
    (recoveredBlock368Value10) height: (recoveredBlock368Value13).
    recoveredBlock368Value14 := recoveredLocal11.
    recoveredBlock368Value15 := (110) * (recoveredBlock368Value14).
    recoveredBlock368Value16 := (recoveredBlock368Value15) rounded.
    recoveredBlock368Value17 := (recoveredBlock368Value0) width: (recoveredBlock368Value16).
    recoveredBlock368Value17
].
    recoveredValue36 := (recoveredValue34) createPushButton: ('cancelButton') argBlock: (recoveredValue35).
    recoveredValue37 := (recoveredValue36) manageChild.
    recoveredLocal3 := recoveredValue37.
    recoveredValue38 := recoveredLocal12.
    recoveredValue39 := recoveredLocal3.
    (recoveredValue38) at: ('cancelButton') put: (recoveredValue39).
    recoveredValue40 := recoveredLocal7.
    recoveredValue41 := [:recoveredBlock449Arg1 | 
    | recoveredBlock449Value0 recoveredBlock449Value1 recoveredBlock449Value2 recoveredBlock449Value3 recoveredBlock449Value4 recoveredBlock449Value5 recoveredBlock449Value6 recoveredBlock449Value7 recoveredBlock449Value8 recoveredBlock449Value9 recoveredBlock449Value10 recoveredBlock449Value11 recoveredBlock449Value12 recoveredBlock449Value13 recoveredBlock449Value14 recoveredBlock449Value15 recoveredBlock449Value16 recoveredBlock449Value17 recoveredBlock449Value18 |
    recoveredBlock449Value0 := recoveredBlock449Arg1.
    recoveredBlock449Value1 := recoveredBlock449Value0.
    recoveredBlock449Value2 := recoveredLocal11.
    recoveredBlock449Value3 := (155) * (recoveredBlock449Value2).
    recoveredBlock449Value4 := (recoveredBlock449Value3) rounded.
    (recoveredBlock449Value1) x: (recoveredBlock449Value4).
    recoveredBlock449Value5 := recoveredBlock449Value0.
    (recoveredBlock449Value5) showAsDefault: (1).
    recoveredBlock449Value6 := recoveredBlock449Value0.
    (recoveredBlock449Value6) labelString: ('Ok').
    recoveredBlock449Value7 := recoveredBlock449Value0.
    recoveredBlock449Value8 := recoveredLocal10.
    recoveredBlock449Value9 := (10) * (recoveredBlock449Value8).
    recoveredBlock449Value10 := (recoveredBlock449Value9) rounded.
    (recoveredBlock449Value7) y: (recoveredBlock449Value10).
    recoveredBlock449Value11 := recoveredBlock449Value0.
    recoveredBlock449Value12 := recoveredLocal10.
    recoveredBlock449Value13 := (30) * (recoveredBlock449Value12).
    recoveredBlock449Value14 := (recoveredBlock449Value13) rounded.
    (recoveredBlock449Value11) height: (recoveredBlock449Value14).
    recoveredBlock449Value15 := recoveredLocal11.
    recoveredBlock449Value16 := (110) * (recoveredBlock449Value15).
    recoveredBlock449Value17 := (recoveredBlock449Value16) rounded.
    recoveredBlock449Value18 := (recoveredBlock449Value0) width: (recoveredBlock449Value17).
    recoveredBlock449Value18
].
    recoveredValue42 := (recoveredValue40) createPushButton: ('okButton') argBlock: (recoveredValue41).
    recoveredValue43 := (recoveredValue42) manageChild.
    recoveredLocal2 := recoveredValue43.
    recoveredValue44 := recoveredLocal12.
    recoveredValue45 := recoveredLocal2.
    (recoveredValue44) at: ('okButton') put: (recoveredValue45).
    recoveredValue46 := recoveredLocal7.
    recoveredValue47 := [:recoveredBlock537Arg1 | 
    | recoveredBlock537Value0 recoveredBlock537Value1 recoveredBlock537Value2 recoveredBlock537Value3 recoveredBlock537Value4 recoveredBlock537Value5 recoveredBlock537Value6 recoveredBlock537Value7 recoveredBlock537Value8 recoveredBlock537Value9 recoveredBlock537Value10 recoveredBlock537Value11 recoveredBlock537Value12 recoveredBlock537Value13 recoveredBlock537Value14 |
    recoveredBlock537Value0 := recoveredBlock537Arg1.
    recoveredBlock537Value1 := recoveredBlock537Value0.
    recoveredBlock537Value2 := recoveredLocal11.
    recoveredBlock537Value3 := (145) * (recoveredBlock537Value2).
    recoveredBlock537Value4 := (recoveredBlock537Value3) rounded.
    (recoveredBlock537Value1) x: (recoveredBlock537Value4).
    recoveredBlock537Value5 := recoveredBlock537Value0.
    recoveredBlock537Value6 := XmVERTICAL.
    (recoveredBlock537Value5) orientation: (recoveredBlock537Value6).
    recoveredBlock537Value7 := recoveredBlock537Value0.
    recoveredBlock537Value8 := recoveredLocal10.
    recoveredBlock537Value9 := (84) * (recoveredBlock537Value8).
    recoveredBlock537Value10 := (recoveredBlock537Value9) rounded.
    (recoveredBlock537Value7) height: (recoveredBlock537Value10).
    recoveredBlock537Value11 := recoveredLocal11.
    recoveredBlock537Value12 := (3) * (recoveredBlock537Value11).
    recoveredBlock537Value13 := (recoveredBlock537Value12) rounded.
    recoveredBlock537Value14 := (recoveredBlock537Value0) width: (recoveredBlock537Value13).
    recoveredBlock537Value14
].
    recoveredValue48 := (recoveredValue46) createSeparator: ('aSeparator1') argBlock: (recoveredValue47).
    recoveredValue49 := (recoveredValue48) manageChild.
    recoveredLocal1 := recoveredValue49.
    recoveredValue50 := recoveredLocal12.
    recoveredValue51 := recoveredLocal1.
    (recoveredValue50) at: ('aSeparator1') put: (recoveredValue51).
    recoveredValue52 := recoveredLocal8.
    recoveredValue53 := [:recoveredBlock607Arg1 | 
    | recoveredBlock607Value0 recoveredBlock607Value1 recoveredBlock607Value2 |
    recoveredBlock607Value0 := recoveredBlock607Arg1.
    recoveredBlock607Value1 := recoveredLocal7.
    recoveredBlock607Value2 := (recoveredBlock607Value0) workWindow: (recoveredBlock607Value1).
    recoveredBlock607Value2
].
    (recoveredValue52) setValuesBlock: (recoveredValue53).
    recoveredValue54 := recoveredLocal7.
    recoveredValue55 := XmNdestroyCallback.
    (recoveredValue54) addCallback: (recoveredValue55) receiver: (self) selector: ('aForm1Destroy:clientData:callData:') clientData: (nil).
    recoveredValue56 := recoveredLocal6.
    recoveredValue57 := XmNmodifyVerifyCallback.
    (recoveredValue56) addCallback: (recoveredValue57) receiver: (self) selector: ('textModify:clientData:callData:') clientData: (nil).
    recoveredValue58 := recoveredLocal3.
    recoveredValue59 := XmNactivateCallback.
    (recoveredValue58) addCallback: (recoveredValue59) receiver: (self) selector: ('cancelButtonActivate:clientData:callData:') clientData: (nil).
    recoveredValue60 := recoveredLocal2.
    recoveredValue61 := XmNactivateCallback.
    (recoveredValue60) addCallback: (recoveredValue61) receiver: (self) selector: ('okButtonActivate:clientData:callData:') clientData: (nil).
    recoveredValue62 := recoveredLocal6.
    (recoveredValue62) addTabGroup.
    recoveredValue63 := recoveredLocal2.
    (recoveredValue63) addTabGroup.
    recoveredValue64 := recoveredLocal3.
    (recoveredValue64) addTabGroup.
    recoveredValue65 := Array.
    recoveredValue66 := recoveredLocal12.
    recoveredValue67 := recoveredLocal8.
    recoveredValue68 := (recoveredValue65) with: (recoveredValue66) with: (recoveredValue67).
    ^recoveredValue68
! !

