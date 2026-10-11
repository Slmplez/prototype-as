"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2005058c; bytecode file offset 0x94d048"
!RBGDUOfflineDynDisplaySetupDialog methodsFor: 'recovered'!
initializeFonts
    (self) updateFonts.
    ^self
! !

"ASDBase.ic method 0x20071174; bytecode file offset 0x96da70"
!RBGDUOfflineDynDisplaySetupDialog methodsFor: 'recovered'!
xMin
    | recoveredValue0 |
    recoveredValue0 := xMin.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200711e0; bytecode file offset 0x96db0c"
!RBGDUOfflineDynDisplaySetupDialog methodsFor: 'recovered'!
xMax
    | recoveredValue0 |
    recoveredValue0 := xMax.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2007e4b4; bytecode file offset 0x97c330"
!RBGDUOfflineDynDisplaySetupDialog methodsFor: 'recovered'!
xAxisIsHex
    ^false
! !

"ASDBase.ic method 0x2009df2c; bytecode file offset 0x99a800"
!RBGDUOfflineDynDisplaySetupDialog methodsFor: 'recovered'!
focusXMin
    | recoveredValue0 |
    recoveredValue0 := (self) widgetAt: ('xMinField').
    (recoveredValue0) setInputFocus.
    ^self
! !

"ASDBase.ic method 0x20107e54; bytecode file offset 0xa04710"
!RBGDUOfflineDynDisplaySetupDialog methodsFor: 'recovered'!
cancel
    xMax := nil.
    xMin := nil.
    super cancel.
    ^self
! !

"ASDBase.ic method 0x2019a04c; bytecode file offset 0xa96920"
!RBGDUOfflineDynDisplaySetupDialog methodsFor: 'recovered'!
installActionKeys
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    super installActionKeys.
    recoveredValue0 := (self) widgetKeyActions.
    recoveredValue1 := (self) shell.
    recoveredValue2 := (recoveredValue0) at: (recoveredValue1).
    recoveredLocal1 := recoveredValue2.
    recoveredValue3 := recoveredLocal1.
    recoveredValue4 := HKFrom2.
    (recoveredValue3) at: (recoveredValue4) put: ('focusXMin').
    ^self
! !

"ASDBase.ic method 0x2036b0c4; bytecode file offset 0xc679c0"
!RBGDUOfflineDynDisplaySetupDialog methodsFor: 'recovered'!
initializeAfterCreate
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 |
    recoveredValue0 := (self) xAxisIsHex.
    recoveredValue1 := owner.
    recoveredValue2 := (recoveredValue1) hexView.
    recoveredValue3 := (recoveredValue0) & (recoveredValue2).
    recoveredLocal1 := recoveredValue3.
    recoveredValue4 := (self) widgetAt: ('xMinField').
    recoveredValue5 := owner.
    recoveredValue6 := (recoveredValue5) xMin.
    recoveredValue7 := recoveredLocal1.
    recoveredValue8 := (self) stringFromNumber: (recoveredValue6) hex: (recoveredValue7).
    (recoveredValue4) value: (recoveredValue8).
    recoveredValue9 := (self) widgetAt: ('xMaxField').
    recoveredValue10 := owner.
    recoveredValue11 := (recoveredValue10) xMax.
    recoveredValue12 := recoveredLocal1.
    recoveredValue13 := (self) stringFromNumber: (recoveredValue11) hex: (recoveredValue12).
    (recoveredValue9) value: (recoveredValue13).
    recoveredValue14 := (self) widgetAt: ('fromXLabel').
    recoveredValue15 := LLFrom2.
    (recoveredValue14) labelString: (recoveredValue15).
    recoveredValue16 := (self) widgetAt: ('toXLabel').
    recoveredValue17 := LLTo2.
    (recoveredValue16) labelString: (recoveredValue17).
    super initializeAfterCreate.
    (self) initializeFonts.
    ^self
! !

"ASDBase.ic method 0x203df53c; bytecode file offset 0xcdbe24"
!RBGDUOfflineDynDisplaySetupDialog methodsFor: 'recovered'!
ok
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) xAxisIsHex.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := owner.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) hexView.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := (recoveredStack0) & (recoveredStack1).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredLocal4 := recoveredStack0.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := 'xMinField'.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) widgetAt: (recoveredStack2).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) value.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack2 := recoveredLocal4.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := (recoveredStack0) numberFromString: (recoveredStack1) hex: (recoveredStack2).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack2 := 'xMaxField'.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := (recoveredStack1) widgetAt: (recoveredStack2).
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := (recoveredStack1) value.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack2 := recoveredLocal4.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack0 := (recoveredStack0) numberFromString: (recoveredStack1) hex: (recoveredStack2).
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 40] ifFalse: [recoveredPC := 46].
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack0 := RBError.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            (recoveredStack0) messageBeepQuestion.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack0 := (recoveredStack0) < (recoveredStack1).
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 52] ifFalse: [recoveredPC := 74].
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack0 := RBError.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack0 := (recoveredStack0) confirmExchangeInvalidBoundsMin: (recoveredStack1) max: (recoveredStack2).
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 62] ifFalse: [recoveredPC := 72].
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredPC := 74.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            xMin := recoveredStack0.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            xMax := recoveredStack0.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            super ok.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x206bdb40; bytecode file offset 0xfba624"
!RBGDUOfflineDynDisplaySetupDialog methodsFor: 'recovered'!
createWidgetHierarchy: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredLocal6 recoveredLocal7 recoveredLocal8 recoveredLocal9 recoveredLocal10 recoveredLocal11 recoveredLocal12 recoveredLocal13 recoveredLocal14 recoveredLocal15 recoveredLocal16 recoveredLocal17 recoveredLocal18 recoveredLocal19 recoveredLocal20 recoveredLocal21 recoveredLocal22 recoveredLocal23 recoveredLocal24 recoveredLocal25 recoveredLocal26 recoveredLocal27 recoveredLocal28 recoveredLocal29 recoveredLocal30 recoveredLocal31 recoveredLocal32 recoveredLocal33 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredPC recoveredStep |
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
            recoveredLocal33 := recoveredStack1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := 1.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredLocal32 := recoveredStack1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := 1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredLocal31 := recoveredStack1.
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
    | recoveredBlock25Value0 recoveredBlock25Value1 recoveredBlock25Value2 recoveredBlock25Value3 recoveredBlock25Value4 recoveredBlock25Value5 recoveredBlock25Value6 recoveredBlock25Value7 recoveredBlock25Value8 recoveredBlock25Value9 recoveredBlock25Value10 recoveredBlock25Value11 recoveredBlock25Value12 |
    recoveredBlock25Value0 := recoveredBlock25Arg1.
    recoveredBlock25Value1 := recoveredBlock25Value0.
    recoveredBlock25Value2 := MWMINPUTSYSTEMMODAL.
    (recoveredBlock25Value1) mwmInputMode: (recoveredBlock25Value2).
    recoveredBlock25Value3 := recoveredBlock25Value0.
    recoveredBlock25Value4 := (String new: 32) at: 1 put: (Character value: 68); at: 2 put: (Character value: 97); at: 3 put: (Character value: 114); at: 4 put: (Character value: 115); at: 5 put: (Character value: 116); at: 6 put: (Character value: 101); at: 7 put: (Character value: 108); at: 8 put: (Character value: 108); at: 9 put: (Character value: 117); at: 10 put: (Character value: 110); at: 11 put: (Character value: 103); at: 12 put: (Character value: 115); at: 13 put: (Character value: 45); at: 14 put: (Character value: 83); at: 15 put: (Character value: 101); at: 16 put: (Character value: 116); at: 17 put: (Character value: 117); at: 18 put: (Character value: 112); at: 19 put: (Character value: 32); at: 20 put: (Character value: 102); at: 21 put: (Character value: 252); at: 22 put: (Character value: 114); at: 23 put: (Character value: 32); at: 24 put: (Character value: 77); at: 25 put: (Character value: 101); at: 26 put: (Character value: 223); at: 27 put: (Character value: 103); at: 28 put: (Character value: 114); at: 29 put: (Character value: 246); at: 30 put: (Character value: 223); at: 31 put: (Character value: 101); at: 32 put: (Character value: 110); yourself.
    (recoveredBlock25Value3) title: (recoveredBlock25Value4).
    recoveredBlock25Value5 := recoveredBlock25Value0.
    recoveredBlock25Value6 := recoveredLocal31.
    recoveredBlock25Value7 := (319) * (recoveredBlock25Value6).
    recoveredBlock25Value8 := (recoveredBlock25Value7) rounded.
    (recoveredBlock25Value5) height: (recoveredBlock25Value8).
    recoveredBlock25Value9 := recoveredLocal32.
    recoveredBlock25Value10 := (415) * (recoveredBlock25Value9).
    recoveredBlock25Value11 := (recoveredBlock25Value10) rounded.
    recoveredBlock25Value12 := (recoveredBlock25Value0) width: (recoveredBlock25Value11).
    recoveredBlock25Value12
].
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack1 := (recoveredStack1) createDialogShell: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredLocal30 := recoveredStack1.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack1 := recoveredLocal33.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack2 := 'aDialogShell1'.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack3 := recoveredLocal30.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack1 := recoveredLocal30.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredStack2 := 'aMainWindow1'.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack3 := nil.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack1 := (recoveredStack1) createMainWindow: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredLocal29 := recoveredStack1.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredStack1 := recoveredLocal33.
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack2 := 'aMainWindow1'.
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack3 := recoveredLocal29.
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            recoveredStack1 := recoveredLocal29.
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            recoveredStack2 := 'aForm1'.
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            recoveredStack3 := nil.
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            recoveredStack1 := (recoveredStack1) createForm: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            recoveredLocal28 := recoveredStack1.
            recoveredPC := 118.
        ].
        recoveredStep = 118 ifTrue: [
            recoveredStack1 := recoveredLocal33.
            recoveredPC := 121.
        ].
        recoveredStep = 121 ifTrue: [
            recoveredStack2 := 'aForm1'.
            recoveredPC := 123.
        ].
        recoveredStep = 123 ifTrue: [
            recoveredStack3 := recoveredLocal28.
            recoveredPC := 126.
        ].
        recoveredStep = 126 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 128.
        ].
        recoveredStep = 128 ifTrue: [
            recoveredStack1 := recoveredLocal28.
            recoveredPC := 131.
        ].
        recoveredStep = 131 ifTrue: [
            recoveredStack2 := 'wMinField'.
            recoveredPC := 133.
        ].
        recoveredStep = 133 ifTrue: [
            recoveredStack3 := [:recoveredBlock133Arg1 | 
    | recoveredBlock133Value0 recoveredBlock133Value1 recoveredBlock133Value2 recoveredBlock133Value3 recoveredBlock133Value4 recoveredBlock133Value5 recoveredBlock133Value6 recoveredBlock133Value7 recoveredBlock133Value8 recoveredBlock133Value9 recoveredBlock133Value10 recoveredBlock133Value11 recoveredBlock133Value12 recoveredBlock133Value13 recoveredBlock133Value14 recoveredBlock133Value15 recoveredBlock133Value16 |
    recoveredBlock133Value0 := recoveredBlock133Arg1.
    recoveredBlock133Value1 := recoveredBlock133Value0.
    recoveredBlock133Value2 := recoveredLocal31.
    recoveredBlock133Value3 := (30) * (recoveredBlock133Value2).
    recoveredBlock133Value4 := (recoveredBlock133Value3) rounded.
    (recoveredBlock133Value1) y: (recoveredBlock133Value4).
    recoveredBlock133Value5 := recoveredBlock133Value0.
    recoveredBlock133Value6 := recoveredLocal32.
    recoveredBlock133Value7 := (70) * (recoveredBlock133Value6).
    recoveredBlock133Value8 := (recoveredBlock133Value7) rounded.
    (recoveredBlock133Value5) x: (recoveredBlock133Value8).
    recoveredBlock133Value9 := recoveredBlock133Value0.
    recoveredBlock133Value10 := recoveredLocal31.
    recoveredBlock133Value11 := (25) * (recoveredBlock133Value10).
    recoveredBlock133Value12 := (recoveredBlock133Value11) rounded.
    (recoveredBlock133Value9) height: (recoveredBlock133Value12).
    recoveredBlock133Value13 := recoveredLocal32.
    recoveredBlock133Value14 := (60) * (recoveredBlock133Value13).
    recoveredBlock133Value15 := (recoveredBlock133Value14) rounded.
    recoveredBlock133Value16 := (recoveredBlock133Value0) width: (recoveredBlock133Value15).
    recoveredBlock133Value16
].
            recoveredPC := 186.
        ].
        recoveredStep = 186 ifTrue: [
            recoveredStack1 := (recoveredStack1) createEnhancedText: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 188.
        ].
        recoveredStep = 188 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 190.
        ].
        recoveredStep = 190 ifTrue: [
            recoveredLocal27 := recoveredStack1.
            recoveredPC := 193.
        ].
        recoveredStep = 193 ifTrue: [
            recoveredStack1 := recoveredLocal33.
            recoveredPC := 196.
        ].
        recoveredStep = 196 ifTrue: [
            recoveredStack2 := 'wMinField'.
            recoveredPC := 198.
        ].
        recoveredStep = 198 ifTrue: [
            recoveredStack3 := recoveredLocal27.
            recoveredPC := 201.
        ].
        recoveredStep = 201 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 203.
        ].
        recoveredStep = 203 ifTrue: [
            recoveredStack1 := recoveredLocal28.
            recoveredPC := 206.
        ].
        recoveredStep = 206 ifTrue: [
            recoveredStack2 := 'wMaxField'.
            recoveredPC := 208.
        ].
        recoveredStep = 208 ifTrue: [
            recoveredStack3 := [:recoveredBlock208Arg1 | 
    | recoveredBlock208Value0 recoveredBlock208Value1 recoveredBlock208Value2 recoveredBlock208Value3 recoveredBlock208Value4 recoveredBlock208Value5 recoveredBlock208Value6 recoveredBlock208Value7 recoveredBlock208Value8 recoveredBlock208Value9 recoveredBlock208Value10 recoveredBlock208Value11 recoveredBlock208Value12 recoveredBlock208Value13 recoveredBlock208Value14 recoveredBlock208Value15 recoveredBlock208Value16 |
    recoveredBlock208Value0 := recoveredBlock208Arg1.
    recoveredBlock208Value1 := recoveredBlock208Value0.
    recoveredBlock208Value2 := recoveredLocal31.
    recoveredBlock208Value3 := (60) * (recoveredBlock208Value2).
    recoveredBlock208Value4 := (recoveredBlock208Value3) rounded.
    (recoveredBlock208Value1) y: (recoveredBlock208Value4).
    recoveredBlock208Value5 := recoveredBlock208Value0.
    recoveredBlock208Value6 := recoveredLocal32.
    recoveredBlock208Value7 := (70) * (recoveredBlock208Value6).
    recoveredBlock208Value8 := (recoveredBlock208Value7) rounded.
    (recoveredBlock208Value5) x: (recoveredBlock208Value8).
    recoveredBlock208Value9 := recoveredBlock208Value0.
    recoveredBlock208Value10 := recoveredLocal31.
    recoveredBlock208Value11 := (25) * (recoveredBlock208Value10).
    recoveredBlock208Value12 := (recoveredBlock208Value11) rounded.
    (recoveredBlock208Value9) height: (recoveredBlock208Value12).
    recoveredBlock208Value13 := recoveredLocal32.
    recoveredBlock208Value14 := (60) * (recoveredBlock208Value13).
    recoveredBlock208Value15 := (recoveredBlock208Value14) rounded.
    recoveredBlock208Value16 := (recoveredBlock208Value0) width: (recoveredBlock208Value15).
    recoveredBlock208Value16
].
            recoveredPC := 260.
        ].
        recoveredStep = 260 ifTrue: [
            recoveredStack1 := (recoveredStack1) createEnhancedText: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 262.
        ].
        recoveredStep = 262 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 264.
        ].
        recoveredStep = 264 ifTrue: [
            recoveredLocal26 := recoveredStack1.
            recoveredPC := 267.
        ].
        recoveredStep = 267 ifTrue: [
            recoveredStack1 := recoveredLocal33.
            recoveredPC := 270.
        ].
        recoveredStep = 270 ifTrue: [
            recoveredStack2 := 'wMaxField'.
            recoveredPC := 272.
        ].
        recoveredStep = 272 ifTrue: [
            recoveredStack3 := recoveredLocal26.
            recoveredPC := 275.
        ].
        recoveredStep = 275 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 277.
        ].
        recoveredStep = 277 ifTrue: [
            recoveredStack1 := recoveredLocal28.
            recoveredPC := 280.
        ].
        recoveredStep = 280 ifTrue: [
            recoveredStack2 := 'okButton'.
            recoveredPC := 282.
        ].
        recoveredStep = 282 ifTrue: [
            recoveredStack3 := [:recoveredBlock282Arg1 | 
    | recoveredBlock282Value0 recoveredBlock282Value1 recoveredBlock282Value2 recoveredBlock282Value3 recoveredBlock282Value4 recoveredBlock282Value5 recoveredBlock282Value6 recoveredBlock282Value7 recoveredBlock282Value8 recoveredBlock282Value9 recoveredBlock282Value10 recoveredBlock282Value11 recoveredBlock282Value12 recoveredBlock282Value13 recoveredBlock282Value14 recoveredBlock282Value15 recoveredBlock282Value16 recoveredBlock282Value17 recoveredBlock282Value18 |
    recoveredBlock282Value0 := recoveredBlock282Arg1.
    recoveredBlock282Value1 := recoveredBlock282Value0.
    recoveredBlock282Value2 := recoveredLocal32.
    recoveredBlock282Value3 := (295) * (recoveredBlock282Value2).
    recoveredBlock282Value4 := (recoveredBlock282Value3) rounded.
    (recoveredBlock282Value1) x: (recoveredBlock282Value4).
    recoveredBlock282Value5 := recoveredBlock282Value0.
    (recoveredBlock282Value5) showAsDefault: (1).
    recoveredBlock282Value6 := recoveredBlock282Value0.
    (recoveredBlock282Value6) labelString: ('Ok').
    recoveredBlock282Value7 := recoveredBlock282Value0.
    recoveredBlock282Value8 := recoveredLocal31.
    recoveredBlock282Value9 := (10) * (recoveredBlock282Value8).
    recoveredBlock282Value10 := (recoveredBlock282Value9) rounded.
    (recoveredBlock282Value7) y: (recoveredBlock282Value10).
    recoveredBlock282Value11 := recoveredBlock282Value0.
    recoveredBlock282Value12 := recoveredLocal31.
    recoveredBlock282Value13 := (30) * (recoveredBlock282Value12).
    recoveredBlock282Value14 := (recoveredBlock282Value13) rounded.
    (recoveredBlock282Value11) height: (recoveredBlock282Value14).
    recoveredBlock282Value15 := recoveredLocal32.
    recoveredBlock282Value16 := (110) * (recoveredBlock282Value15).
    recoveredBlock282Value17 := (recoveredBlock282Value16) rounded.
    recoveredBlock282Value18 := (recoveredBlock282Value0) width: (recoveredBlock282Value17).
    recoveredBlock282Value18
].
            recoveredPC := 347.
        ].
        recoveredStep = 347 ifTrue: [
            recoveredStack1 := (recoveredStack1) createPushButton: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 349.
        ].
        recoveredStep = 349 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 351.
        ].
        recoveredStep = 351 ifTrue: [
            recoveredLocal25 := recoveredStack1.
            recoveredPC := 354.
        ].
        recoveredStep = 354 ifTrue: [
            recoveredStack1 := recoveredLocal33.
            recoveredPC := 357.
        ].
        recoveredStep = 357 ifTrue: [
            recoveredStack2 := 'okButton'.
            recoveredPC := 359.
        ].
        recoveredStep = 359 ifTrue: [
            recoveredStack3 := recoveredLocal25.
            recoveredPC := 362.
        ].
        recoveredStep = 362 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 364.
        ].
        recoveredStep = 364 ifTrue: [
            recoveredStack1 := recoveredLocal28.
            recoveredPC := 367.
        ].
        recoveredStep = 367 ifTrue: [
            recoveredStack2 := 'cancelButton'.
            recoveredPC := 369.
        ].
        recoveredStep = 369 ifTrue: [
            recoveredStack3 := [:recoveredBlock369Arg1 | 
    | recoveredBlock369Value0 recoveredBlock369Value1 recoveredBlock369Value2 recoveredBlock369Value3 recoveredBlock369Value4 recoveredBlock369Value5 recoveredBlock369Value6 recoveredBlock369Value7 recoveredBlock369Value8 recoveredBlock369Value9 recoveredBlock369Value10 recoveredBlock369Value11 recoveredBlock369Value12 recoveredBlock369Value13 recoveredBlock369Value14 recoveredBlock369Value15 recoveredBlock369Value16 recoveredBlock369Value17 |
    recoveredBlock369Value0 := recoveredBlock369Arg1.
    recoveredBlock369Value1 := recoveredBlock369Value0.
    recoveredBlock369Value2 := recoveredLocal32.
    recoveredBlock369Value3 := (295) * (recoveredBlock369Value2).
    recoveredBlock369Value4 := (recoveredBlock369Value3) rounded.
    (recoveredBlock369Value1) x: (recoveredBlock369Value4).
    recoveredBlock369Value5 := recoveredBlock369Value0.
    (recoveredBlock369Value5) labelString: ('Abbruch').
    recoveredBlock369Value6 := recoveredBlock369Value0.
    recoveredBlock369Value7 := recoveredLocal31.
    recoveredBlock369Value8 := (45) * (recoveredBlock369Value7).
    recoveredBlock369Value9 := (recoveredBlock369Value8) rounded.
    (recoveredBlock369Value6) y: (recoveredBlock369Value9).
    recoveredBlock369Value10 := recoveredBlock369Value0.
    recoveredBlock369Value11 := recoveredLocal31.
    recoveredBlock369Value12 := (30) * (recoveredBlock369Value11).
    recoveredBlock369Value13 := (recoveredBlock369Value12) rounded.
    (recoveredBlock369Value10) height: (recoveredBlock369Value13).
    recoveredBlock369Value14 := recoveredLocal32.
    recoveredBlock369Value15 := (110) * (recoveredBlock369Value14).
    recoveredBlock369Value16 := (recoveredBlock369Value15) rounded.
    recoveredBlock369Value17 := (recoveredBlock369Value0) width: (recoveredBlock369Value16).
    recoveredBlock369Value17
].
            recoveredPC := 429.
        ].
        recoveredStep = 429 ifTrue: [
            recoveredStack1 := (recoveredStack1) createPushButton: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 431.
        ].
        recoveredStep = 431 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 433.
        ].
        recoveredStep = 433 ifTrue: [
            recoveredLocal24 := recoveredStack1.
            recoveredPC := 436.
        ].
        recoveredStep = 436 ifTrue: [
            recoveredStack1 := recoveredLocal33.
            recoveredPC := 439.
        ].
        recoveredStep = 439 ifTrue: [
            recoveredStack2 := 'cancelButton'.
            recoveredPC := 441.
        ].
        recoveredStep = 441 ifTrue: [
            recoveredStack3 := recoveredLocal24.
            recoveredPC := 444.
        ].
        recoveredStep = 444 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 446.
        ].
        recoveredStep = 446 ifTrue: [
            recoveredStack1 := recoveredLocal28.
            recoveredPC := 449.
        ].
        recoveredStep = 449 ifTrue: [
            recoveredStack2 := 'displayTypeListBox'.
            recoveredPC := 451.
        ].
        recoveredStep = 451 ifTrue: [
            recoveredStack3 := [:recoveredBlock451Arg1 | 
    | recoveredBlock451Value0 recoveredBlock451Value1 recoveredBlock451Value2 recoveredBlock451Value3 recoveredBlock451Value4 recoveredBlock451Value5 recoveredBlock451Value6 recoveredBlock451Value7 recoveredBlock451Value8 recoveredBlock451Value9 recoveredBlock451Value10 recoveredBlock451Value11 recoveredBlock451Value12 recoveredBlock451Value13 recoveredBlock451Value14 recoveredBlock451Value15 recoveredBlock451Value16 |
    recoveredBlock451Value0 := recoveredBlock451Arg1.
    recoveredBlock451Value1 := recoveredBlock451Value0.
    recoveredBlock451Value2 := recoveredLocal32.
    recoveredBlock451Value3 := (25) * (recoveredBlock451Value2).
    recoveredBlock451Value4 := (recoveredBlock451Value3) rounded.
    (recoveredBlock451Value1) x: (recoveredBlock451Value4).
    recoveredBlock451Value5 := recoveredBlock451Value0.
    recoveredBlock451Value6 := recoveredLocal31.
    recoveredBlock451Value7 := (125) * (recoveredBlock451Value6).
    recoveredBlock451Value8 := (recoveredBlock451Value7) rounded.
    (recoveredBlock451Value5) y: (recoveredBlock451Value8).
    recoveredBlock451Value9 := recoveredBlock451Value0.
    recoveredBlock451Value10 := recoveredLocal31.
    recoveredBlock451Value11 := (24) * (recoveredBlock451Value10).
    recoveredBlock451Value12 := (recoveredBlock451Value11) rounded.
    (recoveredBlock451Value9) height: (recoveredBlock451Value12).
    recoveredBlock451Value13 := recoveredLocal32.
    recoveredBlock451Value14 := (105) * (recoveredBlock451Value13).
    recoveredBlock451Value15 := (recoveredBlock451Value14) rounded.
    recoveredBlock451Value16 := (recoveredBlock451Value0) width: (recoveredBlock451Value15).
    recoveredBlock451Value16
].
            recoveredPC := 505.
        ].
        recoveredStep = 505 ifTrue: [
            recoveredStack1 := (recoveredStack1) createEtasComboBox: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 507.
        ].
        recoveredStep = 507 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 509.
        ].
        recoveredStep = 509 ifTrue: [
            recoveredLocal23 := recoveredStack1.
            recoveredPC := 512.
        ].
        recoveredStep = 512 ifTrue: [
            recoveredStack1 := recoveredLocal33.
            recoveredPC := 515.
        ].
        recoveredStep = 515 ifTrue: [
            recoveredStack2 := 'displayTypeListBox'.
            recoveredPC := 517.
        ].
        recoveredStep = 517 ifTrue: [
            recoveredStack3 := recoveredLocal23.
            recoveredPC := 520.
        ].
        recoveredStep = 520 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 522.
        ].
        recoveredStep = 522 ifTrue: [
            recoveredStack1 := recoveredLocal28.
            recoveredPC := 525.
        ].
        recoveredStep = 525 ifTrue: [
            recoveredStack2 := 'helpButton'.
            recoveredPC := 527.
        ].
        recoveredStep = 527 ifTrue: [
            recoveredStack3 := [:recoveredBlock527Arg1 | 
    | recoveredBlock527Value0 recoveredBlock527Value1 recoveredBlock527Value2 recoveredBlock527Value3 recoveredBlock527Value4 recoveredBlock527Value5 recoveredBlock527Value6 recoveredBlock527Value7 recoveredBlock527Value8 recoveredBlock527Value9 recoveredBlock527Value10 recoveredBlock527Value11 recoveredBlock527Value12 recoveredBlock527Value13 recoveredBlock527Value14 recoveredBlock527Value15 recoveredBlock527Value16 recoveredBlock527Value17 |
    recoveredBlock527Value0 := recoveredBlock527Arg1.
    recoveredBlock527Value1 := recoveredBlock527Value0.
    recoveredBlock527Value2 := recoveredLocal32.
    recoveredBlock527Value3 := (295) * (recoveredBlock527Value2).
    recoveredBlock527Value4 := (recoveredBlock527Value3) rounded.
    (recoveredBlock527Value1) x: (recoveredBlock527Value4).
    recoveredBlock527Value5 := recoveredBlock527Value0.
    (recoveredBlock527Value5) labelString: ('Hilfe').
    recoveredBlock527Value6 := recoveredBlock527Value0.
    recoveredBlock527Value7 := recoveredLocal31.
    recoveredBlock527Value8 := (80) * (recoveredBlock527Value7).
    recoveredBlock527Value9 := (recoveredBlock527Value8) rounded.
    (recoveredBlock527Value6) y: (recoveredBlock527Value9).
    recoveredBlock527Value10 := recoveredBlock527Value0.
    recoveredBlock527Value11 := recoveredLocal31.
    recoveredBlock527Value12 := (30) * (recoveredBlock527Value11).
    recoveredBlock527Value13 := (recoveredBlock527Value12) rounded.
    (recoveredBlock527Value10) height: (recoveredBlock527Value13).
    recoveredBlock527Value14 := recoveredLocal32.
    recoveredBlock527Value15 := (110) * (recoveredBlock527Value14).
    recoveredBlock527Value16 := (recoveredBlock527Value15) rounded.
    recoveredBlock527Value17 := (recoveredBlock527Value0) width: (recoveredBlock527Value16).
    recoveredBlock527Value17
].
            recoveredPC := 589.
        ].
        recoveredStep = 589 ifTrue: [
            recoveredStack1 := (recoveredStack1) createPushButton: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 591.
        ].
        recoveredStep = 591 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 593.
        ].
        recoveredStep = 593 ifTrue: [
            recoveredLocal22 := recoveredStack1.
            recoveredPC := 596.
        ].
        recoveredStep = 596 ifTrue: [
            recoveredStack1 := recoveredLocal33.
            recoveredPC := 599.
        ].
        recoveredStep = 599 ifTrue: [
            recoveredStack2 := 'helpButton'.
            recoveredPC := 601.
        ].
        recoveredStep = 601 ifTrue: [
            recoveredStack3 := recoveredLocal22.
            recoveredPC := 604.
        ].
        recoveredStep = 604 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 606.
        ].
        recoveredStep = 606 ifTrue: [
            recoveredStack1 := recoveredLocal28.
            recoveredPC := 609.
        ].
        recoveredStep = 609 ifTrue: [
            recoveredStack2 := 'gridButton'.
            recoveredPC := 611.
        ].
        recoveredStep = 611 ifTrue: [
            recoveredStack3 := [:recoveredBlock611Arg1 | 
    | recoveredBlock611Value0 recoveredBlock611Value1 recoveredBlock611Value2 recoveredBlock611Value3 recoveredBlock611Value4 recoveredBlock611Value5 recoveredBlock611Value6 recoveredBlock611Value7 recoveredBlock611Value8 recoveredBlock611Value9 recoveredBlock611Value10 recoveredBlock611Value11 recoveredBlock611Value12 recoveredBlock611Value13 recoveredBlock611Value14 recoveredBlock611Value15 recoveredBlock611Value16 recoveredBlock611Value17 recoveredBlock611Value18 recoveredBlock611Value19 recoveredBlock611Value20 recoveredBlock611Value21 |
    recoveredBlock611Value0 := recoveredBlock611Arg1.
    recoveredBlock611Value1 := recoveredBlock611Value0.
    (recoveredBlock611Value1) marginRight: (10).
    recoveredBlock611Value2 := recoveredBlock611Value0.
    (recoveredBlock611Value2) marginWidth: (0).
    recoveredBlock611Value3 := recoveredBlock611Value0.
    (recoveredBlock611Value3) marginHeight: (0).
    recoveredBlock611Value4 := recoveredBlock611Value0.
    recoveredBlock611Value5 := recoveredLocal31.
    recoveredBlock611Value6 := (285) * (recoveredBlock611Value5).
    recoveredBlock611Value7 := (recoveredBlock611Value6) rounded.
    (recoveredBlock611Value4) y: (recoveredBlock611Value7).
    recoveredBlock611Value8 := recoveredBlock611Value0.
    (recoveredBlock611Value8) marginBottom: (10).
    recoveredBlock611Value9 := recoveredBlock611Value0.
    recoveredBlock611Value10 := recoveredLocal32.
    recoveredBlock611Value11 := (15) * (recoveredBlock611Value10).
    recoveredBlock611Value12 := (recoveredBlock611Value11) rounded.
    (recoveredBlock611Value9) x: (recoveredBlock611Value12).
    recoveredBlock611Value13 := recoveredBlock611Value0.
    (recoveredBlock611Value13) labelString: ('Achsengitter').
    recoveredBlock611Value14 := recoveredBlock611Value0.
    recoveredBlock611Value15 := recoveredLocal31.
    recoveredBlock611Value16 := (20) * (recoveredBlock611Value15).
    recoveredBlock611Value17 := (recoveredBlock611Value16) rounded.
    (recoveredBlock611Value14) height: (recoveredBlock611Value17).
    recoveredBlock611Value18 := recoveredLocal32.
    recoveredBlock611Value19 := (104) * (recoveredBlock611Value18).
    recoveredBlock611Value20 := (recoveredBlock611Value19) rounded.
    recoveredBlock611Value21 := (recoveredBlock611Value0) width: (recoveredBlock611Value20).
    recoveredBlock611Value21
].
            recoveredPC := 691.
        ].
        recoveredStep = 691 ifTrue: [
            recoveredStack1 := (recoveredStack1) createToggleButton: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 693.
        ].
        recoveredStep = 693 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 695.
        ].
        recoveredStep = 695 ifTrue: [
            recoveredLocal21 := recoveredStack1.
            recoveredPC := 698.
        ].
        recoveredStep = 698 ifTrue: [
            recoveredStack1 := recoveredLocal33.
            recoveredPC := 701.
        ].
        recoveredStep = 701 ifTrue: [
            recoveredStack2 := 'gridButton'.
            recoveredPC := 703.
        ].
        recoveredStep = 703 ifTrue: [
            recoveredStack3 := recoveredLocal21.
            recoveredPC := 706.
        ].
        recoveredStep = 706 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 708.
        ].
        recoveredStep = 708 ifTrue: [
            recoveredStack1 := recoveredLocal28.
            recoveredPC := 711.
        ].
        recoveredStep = 711 ifTrue: [
            recoveredStack2 := 'xMinField'.
            recoveredPC := 713.
        ].
        recoveredStep = 713 ifTrue: [
            recoveredStack3 := [:recoveredBlock713Arg1 | 
    | recoveredBlock713Value0 recoveredBlock713Value1 recoveredBlock713Value2 recoveredBlock713Value3 recoveredBlock713Value4 recoveredBlock713Value5 recoveredBlock713Value6 recoveredBlock713Value7 recoveredBlock713Value8 recoveredBlock713Value9 recoveredBlock713Value10 recoveredBlock713Value11 recoveredBlock713Value12 recoveredBlock713Value13 recoveredBlock713Value14 recoveredBlock713Value15 recoveredBlock713Value16 recoveredBlock713Value17 |
    recoveredBlock713Value0 := recoveredBlock713Arg1.
    recoveredBlock713Value1 := recoveredBlock713Value0.
    (recoveredBlock713Value1) borderWidth: (1).
    recoveredBlock713Value2 := recoveredBlock713Value0.
    recoveredBlock713Value3 := recoveredLocal31.
    recoveredBlock713Value4 := (190) * (recoveredBlock713Value3).
    recoveredBlock713Value5 := (recoveredBlock713Value4) rounded.
    (recoveredBlock713Value2) y: (recoveredBlock713Value5).
    recoveredBlock713Value6 := recoveredBlock713Value0.
    recoveredBlock713Value7 := recoveredLocal32.
    recoveredBlock713Value8 := (70) * (recoveredBlock713Value7).
    recoveredBlock713Value9 := (recoveredBlock713Value8) rounded.
    (recoveredBlock713Value6) x: (recoveredBlock713Value9).
    recoveredBlock713Value10 := recoveredBlock713Value0.
    recoveredBlock713Value11 := recoveredLocal31.
    recoveredBlock713Value12 := (25) * (recoveredBlock713Value11).
    recoveredBlock713Value13 := (recoveredBlock713Value12) rounded.
    (recoveredBlock713Value10) height: (recoveredBlock713Value13).
    recoveredBlock713Value14 := recoveredLocal32.
    recoveredBlock713Value15 := (60) * (recoveredBlock713Value14).
    recoveredBlock713Value16 := (recoveredBlock713Value15) rounded.
    recoveredBlock713Value17 := (recoveredBlock713Value0) width: (recoveredBlock713Value16).
    recoveredBlock713Value17
].
            recoveredPC := 772.
        ].
        recoveredStep = 772 ifTrue: [
            recoveredStack1 := (recoveredStack1) createEnhancedText: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 774.
        ].
        recoveredStep = 774 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 776.
        ].
        recoveredStep = 776 ifTrue: [
            recoveredLocal20 := recoveredStack1.
            recoveredPC := 779.
        ].
        recoveredStep = 779 ifTrue: [
            recoveredStack1 := recoveredLocal33.
            recoveredPC := 782.
        ].
        recoveredStep = 782 ifTrue: [
            recoveredStack2 := 'xMinField'.
            recoveredPC := 784.
        ].
        recoveredStep = 784 ifTrue: [
            recoveredStack3 := recoveredLocal20.
            recoveredPC := 787.
        ].
        recoveredStep = 787 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 789.
        ].
        recoveredStep = 789 ifTrue: [
            recoveredStack1 := recoveredLocal28.
            recoveredPC := 792.
        ].
        recoveredStep = 792 ifTrue: [
            recoveredStack2 := 'foregroundColorArea'.
            recoveredPC := 794.
        ].
        recoveredStep = 794 ifTrue: [
            recoveredStack3 := [:recoveredBlock794Arg1 | 
    | recoveredBlock794Value0 recoveredBlock794Value1 recoveredBlock794Value2 recoveredBlock794Value3 recoveredBlock794Value4 recoveredBlock794Value5 recoveredBlock794Value6 recoveredBlock794Value7 recoveredBlock794Value8 recoveredBlock794Value9 recoveredBlock794Value10 recoveredBlock794Value11 recoveredBlock794Value12 recoveredBlock794Value13 recoveredBlock794Value14 recoveredBlock794Value15 recoveredBlock794Value16 recoveredBlock794Value17 |
    recoveredBlock794Value0 := recoveredBlock794Arg1.
    recoveredBlock794Value1 := recoveredBlock794Value0.
    recoveredBlock794Value2 := recoveredLocal32.
    recoveredBlock794Value3 := (155) * (recoveredBlock794Value2).
    recoveredBlock794Value4 := (recoveredBlock794Value3) rounded.
    (recoveredBlock794Value1) x: (recoveredBlock794Value4).
    recoveredBlock794Value5 := recoveredBlock794Value0.
    (recoveredBlock794Value5) borderWidth: (1).
    recoveredBlock794Value6 := recoveredBlock794Value0.
    recoveredBlock794Value7 := recoveredLocal31.
    recoveredBlock794Value8 := (125) * (recoveredBlock794Value7).
    recoveredBlock794Value9 := (recoveredBlock794Value8) rounded.
    (recoveredBlock794Value6) y: (recoveredBlock794Value9).
    recoveredBlock794Value10 := recoveredBlock794Value0.
    recoveredBlock794Value11 := recoveredLocal31.
    recoveredBlock794Value12 := (25) * (recoveredBlock794Value11).
    recoveredBlock794Value13 := (recoveredBlock794Value12) rounded.
    (recoveredBlock794Value10) height: (recoveredBlock794Value13).
    recoveredBlock794Value14 := recoveredLocal32.
    recoveredBlock794Value15 := (110) * (recoveredBlock794Value14).
    recoveredBlock794Value16 := (recoveredBlock794Value15) rounded.
    recoveredBlock794Value17 := (recoveredBlock794Value0) width: (recoveredBlock794Value16).
    recoveredBlock794Value17
].
            recoveredPC := 855.
        ].
        recoveredStep = 855 ifTrue: [
            recoveredStack1 := (recoveredStack1) createDrawingArea: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 857.
        ].
        recoveredStep = 857 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 859.
        ].
        recoveredStep = 859 ifTrue: [
            recoveredLocal19 := recoveredStack1.
            recoveredPC := 862.
        ].
        recoveredStep = 862 ifTrue: [
            recoveredStack1 := recoveredLocal33.
            recoveredPC := 865.
        ].
        recoveredStep = 865 ifTrue: [
            recoveredStack2 := 'foregroundColorArea'.
            recoveredPC := 867.
        ].
        recoveredStep = 867 ifTrue: [
            recoveredStack3 := recoveredLocal19.
            recoveredPC := 870.
        ].
        recoveredStep = 870 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 872.
        ].
        recoveredStep = 872 ifTrue: [
            recoveredStack1 := recoveredLocal28.
            recoveredPC := 875.
        ].
        recoveredStep = 875 ifTrue: [
            recoveredStack2 := 'backgroundColorArea'.
            recoveredPC := 877.
        ].
        recoveredStep = 877 ifTrue: [
            recoveredStack3 := [:recoveredBlock877Arg1 | 
    | recoveredBlock877Value0 recoveredBlock877Value1 recoveredBlock877Value2 recoveredBlock877Value3 recoveredBlock877Value4 recoveredBlock877Value5 recoveredBlock877Value6 recoveredBlock877Value7 recoveredBlock877Value8 recoveredBlock877Value9 recoveredBlock877Value10 recoveredBlock877Value11 recoveredBlock877Value12 recoveredBlock877Value13 recoveredBlock877Value14 recoveredBlock877Value15 recoveredBlock877Value16 recoveredBlock877Value17 |
    recoveredBlock877Value0 := recoveredBlock877Arg1.
    recoveredBlock877Value1 := recoveredBlock877Value0.
    recoveredBlock877Value2 := recoveredLocal32.
    recoveredBlock877Value3 := (155) * (recoveredBlock877Value2).
    recoveredBlock877Value4 := (recoveredBlock877Value3) rounded.
    (recoveredBlock877Value1) x: (recoveredBlock877Value4).
    recoveredBlock877Value5 := recoveredBlock877Value0.
    (recoveredBlock877Value5) borderWidth: (1).
    recoveredBlock877Value6 := recoveredBlock877Value0.
    recoveredBlock877Value7 := recoveredLocal31.
    recoveredBlock877Value8 := (285) * (recoveredBlock877Value7).
    recoveredBlock877Value9 := (recoveredBlock877Value8) rounded.
    (recoveredBlock877Value6) y: (recoveredBlock877Value9).
    recoveredBlock877Value10 := recoveredBlock877Value0.
    recoveredBlock877Value11 := recoveredLocal31.
    recoveredBlock877Value12 := (25) * (recoveredBlock877Value11).
    recoveredBlock877Value13 := (recoveredBlock877Value12) rounded.
    (recoveredBlock877Value10) height: (recoveredBlock877Value13).
    recoveredBlock877Value14 := recoveredLocal32.
    recoveredBlock877Value15 := (110) * (recoveredBlock877Value14).
    recoveredBlock877Value16 := (recoveredBlock877Value15) rounded.
    recoveredBlock877Value17 := (recoveredBlock877Value0) width: (recoveredBlock877Value16).
    recoveredBlock877Value17
].
            recoveredPC := 939.
        ].
        recoveredStep = 939 ifTrue: [
            recoveredStack1 := (recoveredStack1) createDrawingArea: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 941.
        ].
        recoveredStep = 941 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 943.
        ].
        recoveredStep = 943 ifTrue: [
            recoveredLocal18 := recoveredStack1.
            recoveredPC := 946.
        ].
        recoveredStep = 946 ifTrue: [
            recoveredStack1 := recoveredLocal33.
            recoveredPC := 949.
        ].
        recoveredStep = 949 ifTrue: [
            recoveredStack2 := 'backgroundColorArea'.
            recoveredPC := 952.
        ].
        recoveredStep = 952 ifTrue: [
            recoveredStack3 := recoveredLocal18.
            recoveredPC := 955.
        ].
        recoveredStep = 955 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 957.
        ].
        recoveredStep = 957 ifTrue: [
            recoveredStack1 := recoveredLocal28.
            recoveredPC := 960.
        ].
        recoveredStep = 960 ifTrue: [
            recoveredStack2 := 'backgroundColorLabel'.
            recoveredPC := 964.
        ].
        recoveredStep = 964 ifTrue: [
            recoveredStack3 := [:recoveredBlock964Arg1 | 
    | recoveredBlock964Value0 recoveredBlock964Value1 recoveredBlock964Value2 recoveredBlock964Value3 recoveredBlock964Value4 recoveredBlock964Value5 recoveredBlock964Value6 recoveredBlock964Value7 recoveredBlock964Value8 recoveredBlock964Value9 recoveredBlock964Value10 recoveredBlock964Value11 recoveredBlock964Value12 recoveredBlock964Value13 recoveredBlock964Value14 recoveredBlock964Value15 recoveredBlock964Value16 recoveredBlock964Value17 recoveredBlock964Value18 recoveredBlock964Value19 |
    recoveredBlock964Value0 := recoveredBlock964Arg1.
    recoveredBlock964Value1 := recoveredBlock964Value0.
    recoveredBlock964Value2 := recoveredLocal32.
    recoveredBlock964Value3 := (145) * (recoveredBlock964Value2).
    recoveredBlock964Value4 := (recoveredBlock964Value3) rounded.
    (recoveredBlock964Value1) x: (recoveredBlock964Value4).
    recoveredBlock964Value5 := recoveredBlock964Value0.
    recoveredBlock964Value6 := XmALIGNMENTBEGINNING.
    (recoveredBlock964Value5) alignment: (recoveredBlock964Value6).
    recoveredBlock964Value7 := recoveredBlock964Value0.
    (recoveredBlock964Value7) labelString: ('Hintergrundfarbe').
    recoveredBlock964Value8 := recoveredBlock964Value0.
    (recoveredBlock964Value8) marginWidth: (0).
    recoveredBlock964Value9 := recoveredBlock964Value0.
    (recoveredBlock964Value9) marginHeight: (0).
    recoveredBlock964Value10 := recoveredBlock964Value0.
    recoveredBlock964Value11 := recoveredLocal31.
    recoveredBlock964Value12 := (170) * (recoveredBlock964Value11).
    recoveredBlock964Value13 := (recoveredBlock964Value12) rounded.
    (recoveredBlock964Value10) y: (recoveredBlock964Value13).
    recoveredBlock964Value14 := recoveredBlock964Value0.
    recoveredBlock964Value15 := recoveredLocal31.
    recoveredBlock964Value16 := (20) * (recoveredBlock964Value15).
    recoveredBlock964Value17 := (recoveredBlock964Value16) rounded.
    (recoveredBlock964Value14) height: (recoveredBlock964Value17).
    recoveredBlock964Value18 := (self) defaultLabelBlue.
    recoveredBlock964Value19 := (recoveredBlock964Value0) foregroundColor: (recoveredBlock964Value18).
    recoveredBlock964Value19
].
            recoveredPC := 1042.
        ].
        recoveredStep = 1042 ifTrue: [
            recoveredStack1 := (recoveredStack1) createLabel: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 1047.
        ].
        recoveredStep = 1047 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 1049.
        ].
        recoveredStep = 1049 ifTrue: [
            recoveredLocal17 := recoveredStack1.
            recoveredPC := 1052.
        ].
        recoveredStep = 1052 ifTrue: [
            recoveredStack1 := recoveredLocal33.
            recoveredPC := 1055.
        ].
        recoveredStep = 1055 ifTrue: [
            recoveredStack2 := 'backgroundColorLabel'.
            recoveredPC := 1058.
        ].
        recoveredStep = 1058 ifTrue: [
            recoveredStack3 := recoveredLocal17.
            recoveredPC := 1061.
        ].
        recoveredStep = 1061 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 1063.
        ].
        recoveredStep = 1063 ifTrue: [
            recoveredStack1 := recoveredLocal28.
            recoveredPC := 1066.
        ].
        recoveredStep = 1066 ifTrue: [
            recoveredStack2 := 'aSeparator2'.
            recoveredPC := 1070.
        ].
        recoveredStep = 1070 ifTrue: [
            recoveredStack3 := [:recoveredBlock1070Arg1 | 
    | recoveredBlock1070Value0 recoveredBlock1070Value1 recoveredBlock1070Value2 recoveredBlock1070Value3 recoveredBlock1070Value4 recoveredBlock1070Value5 recoveredBlock1070Value6 recoveredBlock1070Value7 recoveredBlock1070Value8 recoveredBlock1070Value9 recoveredBlock1070Value10 recoveredBlock1070Value11 recoveredBlock1070Value12 |
    recoveredBlock1070Value0 := recoveredBlock1070Arg1.
    recoveredBlock1070Value1 := recoveredBlock1070Value0.
    recoveredBlock1070Value2 := recoveredLocal31.
    recoveredBlock1070Value3 := (160) * (recoveredBlock1070Value2).
    recoveredBlock1070Value4 := (recoveredBlock1070Value3) rounded.
    (recoveredBlock1070Value1) y: (recoveredBlock1070Value4).
    recoveredBlock1070Value5 := recoveredBlock1070Value0.
    recoveredBlock1070Value6 := recoveredLocal31.
    recoveredBlock1070Value7 := (4) * (recoveredBlock1070Value6).
    recoveredBlock1070Value8 := (recoveredBlock1070Value7) rounded.
    (recoveredBlock1070Value5) height: (recoveredBlock1070Value8).
    recoveredBlock1070Value9 := recoveredLocal32.
    recoveredBlock1070Value10 := (285) * (recoveredBlock1070Value9).
    recoveredBlock1070Value11 := (recoveredBlock1070Value10) rounded.
    recoveredBlock1070Value12 := (recoveredBlock1070Value0) width: (recoveredBlock1070Value11).
    recoveredBlock1070Value12
].
            recoveredPC := 1113.
        ].
        recoveredStep = 1113 ifTrue: [
            recoveredStack1 := (recoveredStack1) createSeparator: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 1117.
        ].
        recoveredStep = 1117 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 1119.
        ].
        recoveredStep = 1119 ifTrue: [
            recoveredLocal16 := recoveredStack1.
            recoveredPC := 1122.
        ].
        recoveredStep = 1122 ifTrue: [
            recoveredStack1 := recoveredLocal33.
            recoveredPC := 1125.
        ].
        recoveredStep = 1125 ifTrue: [
            recoveredStack2 := 'aSeparator2'.
            recoveredPC := 1128.
        ].
        recoveredStep = 1128 ifTrue: [
            recoveredStack3 := recoveredLocal16.
            recoveredPC := 1131.
        ].
        recoveredStep = 1131 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 1133.
        ].
        recoveredStep = 1133 ifTrue: [
            recoveredStack1 := recoveredLocal28.
            recoveredPC := 1136.
        ].
        recoveredStep = 1136 ifTrue: [
            recoveredStack2 := 'aSeparator1'.
            recoveredPC := 1140.
        ].
        recoveredStep = 1140 ifTrue: [
            recoveredStack3 := [:recoveredBlock1140Arg1 | 
    | recoveredBlock1140Value0 recoveredBlock1140Value1 recoveredBlock1140Value2 recoveredBlock1140Value3 recoveredBlock1140Value4 recoveredBlock1140Value5 recoveredBlock1140Value6 recoveredBlock1140Value7 recoveredBlock1140Value8 recoveredBlock1140Value9 recoveredBlock1140Value10 recoveredBlock1140Value11 recoveredBlock1140Value12 recoveredBlock1140Value13 recoveredBlock1140Value14 recoveredBlock1140Value15 recoveredBlock1140Value16 |
    recoveredBlock1140Value0 := recoveredBlock1140Arg1.
    recoveredBlock1140Value1 := recoveredBlock1140Value0.
    recoveredBlock1140Value2 := recoveredLocal32.
    recoveredBlock1140Value3 := (285) * (recoveredBlock1140Value2).
    recoveredBlock1140Value4 := (recoveredBlock1140Value3) rounded.
    (recoveredBlock1140Value1) x: (recoveredBlock1140Value4).
    recoveredBlock1140Value5 := recoveredBlock1140Value0.
    recoveredBlock1140Value6 := XmSINGLELINE.
    (recoveredBlock1140Value5) separatorType: (recoveredBlock1140Value6).
    recoveredBlock1140Value7 := recoveredBlock1140Value0.
    recoveredBlock1140Value8 := XmVERTICAL.
    (recoveredBlock1140Value7) orientation: (recoveredBlock1140Value8).
    recoveredBlock1140Value9 := recoveredBlock1140Value0.
    recoveredBlock1140Value10 := recoveredLocal31.
    recoveredBlock1140Value11 := (319) * (recoveredBlock1140Value10).
    recoveredBlock1140Value12 := (recoveredBlock1140Value11) rounded.
    (recoveredBlock1140Value9) height: (recoveredBlock1140Value12).
    recoveredBlock1140Value13 := recoveredLocal32.
    recoveredBlock1140Value14 := (3) * (recoveredBlock1140Value13).
    recoveredBlock1140Value15 := (recoveredBlock1140Value14) rounded.
    recoveredBlock1140Value16 := (recoveredBlock1140Value0) width: (recoveredBlock1140Value15).
    recoveredBlock1140Value16
].
            recoveredPC := 1199.
        ].
        recoveredStep = 1199 ifTrue: [
            recoveredStack1 := (recoveredStack1) createSeparator: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 1203.
        ].
        recoveredStep = 1203 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 1205.
        ].
        recoveredStep = 1205 ifTrue: [
            recoveredLocal15 := recoveredStack1.
            recoveredPC := 1208.
        ].
        recoveredStep = 1208 ifTrue: [
            recoveredStack1 := recoveredLocal33.
            recoveredPC := 1211.
        ].
        recoveredStep = 1211 ifTrue: [
            recoveredStack2 := 'aSeparator1'.
            recoveredPC := 1214.
        ].
        recoveredStep = 1214 ifTrue: [
            recoveredStack3 := recoveredLocal15.
            recoveredPC := 1217.
        ].
        recoveredStep = 1217 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 1219.
        ].
        recoveredStep = 1219 ifTrue: [
            recoveredStack1 := recoveredLocal28.
            recoveredPC := 1222.
        ].
        recoveredStep = 1222 ifTrue: [
            recoveredStack2 := 'foregroundColorLabel'.
            recoveredPC := 1226.
        ].
        recoveredStep = 1226 ifTrue: [
            recoveredStack3 := [:recoveredBlock1226Arg1 | 
    | recoveredBlock1226Value0 recoveredBlock1226Value1 recoveredBlock1226Value2 recoveredBlock1226Value3 recoveredBlock1226Value4 recoveredBlock1226Value5 recoveredBlock1226Value6 recoveredBlock1226Value7 recoveredBlock1226Value8 recoveredBlock1226Value9 recoveredBlock1226Value10 recoveredBlock1226Value11 recoveredBlock1226Value12 recoveredBlock1226Value13 recoveredBlock1226Value14 recoveredBlock1226Value15 recoveredBlock1226Value16 recoveredBlock1226Value17 recoveredBlock1226Value18 recoveredBlock1226Value19 |
    recoveredBlock1226Value0 := recoveredBlock1226Arg1.
    recoveredBlock1226Value1 := recoveredBlock1226Value0.
    recoveredBlock1226Value2 := recoveredLocal32.
    recoveredBlock1226Value3 := (145) * (recoveredBlock1226Value2).
    recoveredBlock1226Value4 := (recoveredBlock1226Value3) rounded.
    (recoveredBlock1226Value1) x: (recoveredBlock1226Value4).
    recoveredBlock1226Value5 := recoveredBlock1226Value0.
    recoveredBlock1226Value6 := XmALIGNMENTBEGINNING.
    (recoveredBlock1226Value5) alignment: (recoveredBlock1226Value6).
    recoveredBlock1226Value7 := recoveredBlock1226Value0.
    (recoveredBlock1226Value7) labelString: ('Linienfarbe').
    recoveredBlock1226Value8 := recoveredBlock1226Value0.
    (recoveredBlock1226Value8) marginWidth: (0).
    recoveredBlock1226Value9 := recoveredBlock1226Value0.
    (recoveredBlock1226Value9) marginHeight: (0).
    recoveredBlock1226Value10 := recoveredBlock1226Value0.
    recoveredBlock1226Value11 := recoveredLocal31.
    recoveredBlock1226Value12 := (10) * (recoveredBlock1226Value11).
    recoveredBlock1226Value13 := (recoveredBlock1226Value12) rounded.
    (recoveredBlock1226Value10) y: (recoveredBlock1226Value13).
    recoveredBlock1226Value14 := recoveredBlock1226Value0.
    recoveredBlock1226Value15 := recoveredLocal31.
    recoveredBlock1226Value16 := (20) * (recoveredBlock1226Value15).
    recoveredBlock1226Value17 := (recoveredBlock1226Value16) rounded.
    (recoveredBlock1226Value14) height: (recoveredBlock1226Value17).
    recoveredBlock1226Value18 := (self) defaultLabelBlue.
    recoveredBlock1226Value19 := (recoveredBlock1226Value0) foregroundColor: (recoveredBlock1226Value18).
    recoveredBlock1226Value19
].
            recoveredPC := 1302.
        ].
        recoveredStep = 1302 ifTrue: [
            recoveredStack1 := (recoveredStack1) createLabel: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 1307.
        ].
        recoveredStep = 1307 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 1309.
        ].
        recoveredStep = 1309 ifTrue: [
            recoveredLocal14 := recoveredStack1.
            recoveredPC := 1312.
        ].
        recoveredStep = 1312 ifTrue: [
            recoveredStack1 := recoveredLocal33.
            recoveredPC := 1315.
        ].
        recoveredStep = 1315 ifTrue: [
            recoveredStack2 := 'foregroundColorLabel'.
            recoveredPC := 1318.
        ].
        recoveredStep = 1318 ifTrue: [
            recoveredStack3 := recoveredLocal14.
            recoveredPC := 1321.
        ].
        recoveredStep = 1321 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 1323.
        ].
        recoveredStep = 1323 ifTrue: [
            recoveredStack1 := recoveredLocal28.
            recoveredPC := 1326.
        ].
        recoveredStep = 1326 ifTrue: [
            recoveredStack2 := 'optionsLabel'.
            recoveredPC := 1330.
        ].
        recoveredStep = 1330 ifTrue: [
            recoveredStack3 := [:recoveredBlock1330Arg1 | 
    | recoveredBlock1330Value0 recoveredBlock1330Value1 recoveredBlock1330Value2 recoveredBlock1330Value3 recoveredBlock1330Value4 recoveredBlock1330Value5 recoveredBlock1330Value6 recoveredBlock1330Value7 recoveredBlock1330Value8 recoveredBlock1330Value9 recoveredBlock1330Value10 recoveredBlock1330Value11 recoveredBlock1330Value12 recoveredBlock1330Value13 recoveredBlock1330Value14 recoveredBlock1330Value15 |
    recoveredBlock1330Value0 := recoveredBlock1330Arg1.
    recoveredBlock1330Value1 := recoveredBlock1330Value0.
    recoveredBlock1330Value2 := recoveredLocal32.
    recoveredBlock1330Value3 := (10) * (recoveredBlock1330Value2).
    recoveredBlock1330Value4 := (recoveredBlock1330Value3) rounded.
    (recoveredBlock1330Value1) x: (recoveredBlock1330Value4).
    recoveredBlock1330Value5 := recoveredBlock1330Value0.
    recoveredBlock1330Value6 := XmALIGNMENTBEGINNING.
    (recoveredBlock1330Value5) alignment: (recoveredBlock1330Value6).
    recoveredBlock1330Value7 := recoveredBlock1330Value0.
    (recoveredBlock1330Value7) labelString: ('Optionen').
    recoveredBlock1330Value8 := recoveredBlock1330Value0.
    (recoveredBlock1330Value8) marginWidth: (0).
    recoveredBlock1330Value9 := recoveredBlock1330Value0.
    (recoveredBlock1330Value9) marginHeight: (0).
    recoveredBlock1330Value10 := recoveredBlock1330Value0.
    recoveredBlock1330Value11 := recoveredLocal31.
    recoveredBlock1330Value12 := (265) * (recoveredBlock1330Value11).
    recoveredBlock1330Value13 := (recoveredBlock1330Value12) rounded.
    (recoveredBlock1330Value10) y: (recoveredBlock1330Value13).
    recoveredBlock1330Value14 := (self) defaultLabelBlue.
    recoveredBlock1330Value15 := (recoveredBlock1330Value0) foregroundColor: (recoveredBlock1330Value14).
    recoveredBlock1330Value15
].
            recoveredPC := 1394.
        ].
        recoveredStep = 1394 ifTrue: [
            recoveredStack1 := (recoveredStack1) createLabel: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 1399.
        ].
        recoveredStep = 1399 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 1401.
        ].
        recoveredStep = 1401 ifTrue: [
            recoveredLocal13 := recoveredStack1.
            recoveredPC := 1404.
        ].
        recoveredStep = 1404 ifTrue: [
            recoveredStack1 := recoveredLocal33.
            recoveredPC := 1407.
        ].
        recoveredStep = 1407 ifTrue: [
            recoveredStack2 := 'optionsLabel'.
            recoveredPC := 1410.
        ].
        recoveredStep = 1410 ifTrue: [
            recoveredStack3 := recoveredLocal13.
            recoveredPC := 1413.
        ].
        recoveredStep = 1413 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 1415.
        ].
        recoveredStep = 1415 ifTrue: [
            recoveredStack1 := recoveredLocal28.
            recoveredPC := 1418.
        ].
        recoveredStep = 1418 ifTrue: [
            recoveredStack2 := 'yScaleLabel'.
            recoveredPC := 1422.
        ].
        recoveredStep = 1422 ifTrue: [
            recoveredStack3 := [:recoveredBlock1422Arg1 | 
    | recoveredBlock1422Value0 recoveredBlock1422Value1 recoveredBlock1422Value2 recoveredBlock1422Value3 recoveredBlock1422Value4 recoveredBlock1422Value5 recoveredBlock1422Value6 recoveredBlock1422Value7 recoveredBlock1422Value8 recoveredBlock1422Value9 recoveredBlock1422Value10 recoveredBlock1422Value11 recoveredBlock1422Value12 recoveredBlock1422Value13 recoveredBlock1422Value14 recoveredBlock1422Value15 recoveredBlock1422Value16 recoveredBlock1422Value17 recoveredBlock1422Value18 recoveredBlock1422Value19 |
    recoveredBlock1422Value0 := recoveredBlock1422Arg1.
    recoveredBlock1422Value1 := recoveredBlock1422Value0.
    recoveredBlock1422Value2 := recoveredLocal32.
    recoveredBlock1422Value3 := (10) * (recoveredBlock1422Value2).
    recoveredBlock1422Value4 := (recoveredBlock1422Value3) rounded.
    (recoveredBlock1422Value1) x: (recoveredBlock1422Value4).
    recoveredBlock1422Value5 := recoveredBlock1422Value0.
    recoveredBlock1422Value6 := XmALIGNMENTBEGINNING.
    (recoveredBlock1422Value5) alignment: (recoveredBlock1422Value6).
    recoveredBlock1422Value7 := recoveredBlock1422Value0.
    (recoveredBlock1422Value7) labelString: ('y-Skalierung').
    recoveredBlock1422Value8 := recoveredBlock1422Value0.
    (recoveredBlock1422Value8) marginWidth: (0).
    recoveredBlock1422Value9 := recoveredBlock1422Value0.
    (recoveredBlock1422Value9) marginHeight: (0).
    recoveredBlock1422Value10 := recoveredBlock1422Value0.
    recoveredBlock1422Value11 := recoveredLocal31.
    recoveredBlock1422Value12 := (10) * (recoveredBlock1422Value11).
    recoveredBlock1422Value13 := (recoveredBlock1422Value12) rounded.
    (recoveredBlock1422Value10) y: (recoveredBlock1422Value13).
    recoveredBlock1422Value14 := recoveredBlock1422Value0.
    recoveredBlock1422Value15 := recoveredLocal31.
    recoveredBlock1422Value16 := (20) * (recoveredBlock1422Value15).
    recoveredBlock1422Value17 := (recoveredBlock1422Value16) rounded.
    (recoveredBlock1422Value14) height: (recoveredBlock1422Value17).
    recoveredBlock1422Value18 := (self) defaultLabelBlue.
    recoveredBlock1422Value19 := (recoveredBlock1422Value0) foregroundColor: (recoveredBlock1422Value18).
    recoveredBlock1422Value19
].
            recoveredPC := 1496.
        ].
        recoveredStep = 1496 ifTrue: [
            recoveredStack1 := (recoveredStack1) createLabel: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 1501.
        ].
        recoveredStep = 1501 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 1503.
        ].
        recoveredStep = 1503 ifTrue: [
            recoveredLocal12 := recoveredStack1.
            recoveredPC := 1506.
        ].
        recoveredStep = 1506 ifTrue: [
            recoveredStack1 := recoveredLocal33.
            recoveredPC := 1509.
        ].
        recoveredStep = 1509 ifTrue: [
            recoveredStack2 := 'yScaleLabel'.
            recoveredPC := 1512.
        ].
        recoveredStep = 1512 ifTrue: [
            recoveredStack3 := recoveredLocal12.
            recoveredPC := 1515.
        ].
        recoveredStep = 1515 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 1517.
        ].
        recoveredStep = 1517 ifTrue: [
            recoveredStack1 := recoveredLocal28.
            recoveredPC := 1520.
        ].
        recoveredStep = 1520 ifTrue: [
            recoveredStack2 := 'fromLabel'.
            recoveredPC := 1524.
        ].
        recoveredStep = 1524 ifTrue: [
            recoveredStack3 := [:recoveredBlock1524Arg1 | 
    | recoveredBlock1524Value0 recoveredBlock1524Value1 recoveredBlock1524Value2 recoveredBlock1524Value3 recoveredBlock1524Value4 recoveredBlock1524Value5 recoveredBlock1524Value6 recoveredBlock1524Value7 recoveredBlock1524Value8 recoveredBlock1524Value9 recoveredBlock1524Value10 recoveredBlock1524Value11 recoveredBlock1524Value12 recoveredBlock1524Value13 recoveredBlock1524Value14 recoveredBlock1524Value15 recoveredBlock1524Value16 recoveredBlock1524Value17 recoveredBlock1524Value18 |
    recoveredBlock1524Value0 := recoveredBlock1524Arg1.
    recoveredBlock1524Value1 := recoveredBlock1524Value0.
    recoveredBlock1524Value2 := recoveredLocal32.
    recoveredBlock1524Value3 := (20) * (recoveredBlock1524Value2).
    recoveredBlock1524Value4 := (recoveredBlock1524Value3) rounded.
    (recoveredBlock1524Value1) x: (recoveredBlock1524Value4).
    recoveredBlock1524Value5 := recoveredBlock1524Value0.
    recoveredBlock1524Value6 := XmALIGNMENTBEGINNING.
    (recoveredBlock1524Value5) alignment: (recoveredBlock1524Value6).
    recoveredBlock1524Value7 := recoveredBlock1524Value0.
    (recoveredBlock1524Value7) labelString: ('von').
    recoveredBlock1524Value8 := recoveredBlock1524Value0.
    (recoveredBlock1524Value8) marginWidth: (0).
    recoveredBlock1524Value9 := recoveredBlock1524Value0.
    (recoveredBlock1524Value9) marginHeight: (0).
    recoveredBlock1524Value10 := recoveredBlock1524Value0.
    recoveredBlock1524Value11 := recoveredLocal31.
    recoveredBlock1524Value12 := (35) * (recoveredBlock1524Value11).
    recoveredBlock1524Value13 := (recoveredBlock1524Value12) rounded.
    (recoveredBlock1524Value10) y: (recoveredBlock1524Value13).
    recoveredBlock1524Value14 := recoveredBlock1524Value0.
    recoveredBlock1524Value15 := recoveredLocal31.
    recoveredBlock1524Value16 := (20) * (recoveredBlock1524Value15).
    recoveredBlock1524Value17 := (recoveredBlock1524Value16) rounded.
    (recoveredBlock1524Value14) height: (recoveredBlock1524Value17).
    recoveredBlock1524Value18 := (recoveredBlock1524Value0) marginBottom: (10).
    recoveredBlock1524Value18
].
            recoveredPC := 1593.
        ].
        recoveredStep = 1593 ifTrue: [
            recoveredStack1 := (recoveredStack1) createLabel: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 1597.
        ].
        recoveredStep = 1597 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 1599.
        ].
        recoveredStep = 1599 ifTrue: [
            recoveredLocal11 := recoveredStack1.
            recoveredPC := 1602.
        ].
        recoveredStep = 1602 ifTrue: [
            recoveredStack1 := recoveredLocal33.
            recoveredPC := 1605.
        ].
        recoveredStep = 1605 ifTrue: [
            recoveredStack2 := 'fromLabel'.
            recoveredPC := 1608.
        ].
        recoveredStep = 1608 ifTrue: [
            recoveredStack3 := recoveredLocal11.
            recoveredPC := 1611.
        ].
        recoveredStep = 1611 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 1613.
        ].
        recoveredStep = 1613 ifTrue: [
            recoveredStack1 := recoveredLocal28.
            recoveredPC := 1616.
        ].
        recoveredStep = 1616 ifTrue: [
            recoveredStack2 := 'toLabel'.
            recoveredPC := 1620.
        ].
        recoveredStep = 1620 ifTrue: [
            recoveredStack3 := [:recoveredBlock1620Arg1 | 
    | recoveredBlock1620Value0 recoveredBlock1620Value1 recoveredBlock1620Value2 recoveredBlock1620Value3 recoveredBlock1620Value4 recoveredBlock1620Value5 recoveredBlock1620Value6 recoveredBlock1620Value7 recoveredBlock1620Value8 recoveredBlock1620Value9 recoveredBlock1620Value10 recoveredBlock1620Value11 recoveredBlock1620Value12 recoveredBlock1620Value13 recoveredBlock1620Value14 recoveredBlock1620Value15 recoveredBlock1620Value16 recoveredBlock1620Value17 recoveredBlock1620Value18 |
    recoveredBlock1620Value0 := recoveredBlock1620Arg1.
    recoveredBlock1620Value1 := recoveredBlock1620Value0.
    recoveredBlock1620Value2 := recoveredLocal32.
    recoveredBlock1620Value3 := (20) * (recoveredBlock1620Value2).
    recoveredBlock1620Value4 := (recoveredBlock1620Value3) rounded.
    (recoveredBlock1620Value1) x: (recoveredBlock1620Value4).
    recoveredBlock1620Value5 := recoveredBlock1620Value0.
    recoveredBlock1620Value6 := XmALIGNMENTBEGINNING.
    (recoveredBlock1620Value5) alignment: (recoveredBlock1620Value6).
    recoveredBlock1620Value7 := recoveredBlock1620Value0.
    (recoveredBlock1620Value7) labelString: ('bis').
    recoveredBlock1620Value8 := recoveredBlock1620Value0.
    (recoveredBlock1620Value8) marginWidth: (0).
    recoveredBlock1620Value9 := recoveredBlock1620Value0.
    (recoveredBlock1620Value9) marginHeight: (0).
    recoveredBlock1620Value10 := recoveredBlock1620Value0.
    recoveredBlock1620Value11 := recoveredLocal31.
    recoveredBlock1620Value12 := (65) * (recoveredBlock1620Value11).
    recoveredBlock1620Value13 := (recoveredBlock1620Value12) rounded.
    (recoveredBlock1620Value10) y: (recoveredBlock1620Value13).
    recoveredBlock1620Value14 := recoveredBlock1620Value0.
    recoveredBlock1620Value15 := recoveredLocal31.
    recoveredBlock1620Value16 := (20) * (recoveredBlock1620Value15).
    recoveredBlock1620Value17 := (recoveredBlock1620Value16) rounded.
    (recoveredBlock1620Value14) height: (recoveredBlock1620Value17).
    recoveredBlock1620Value18 := (recoveredBlock1620Value0) marginBottom: (10).
    recoveredBlock1620Value18
].
            recoveredPC := 1690.
        ].
        recoveredStep = 1690 ifTrue: [
            recoveredStack1 := (recoveredStack1) createLabel: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 1695.
        ].
        recoveredStep = 1695 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 1697.
        ].
        recoveredStep = 1697 ifTrue: [
            recoveredLocal10 := recoveredStack1.
            recoveredPC := 1700.
        ].
        recoveredStep = 1700 ifTrue: [
            recoveredStack1 := recoveredLocal33.
            recoveredPC := 1703.
        ].
        recoveredStep = 1703 ifTrue: [
            recoveredStack2 := 'toLabel'.
            recoveredPC := 1706.
        ].
        recoveredStep = 1706 ifTrue: [
            recoveredStack3 := recoveredLocal10.
            recoveredPC := 1709.
        ].
        recoveredStep = 1709 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 1711.
        ].
        recoveredStep = 1711 ifTrue: [
            recoveredStack1 := recoveredLocal28.
            recoveredPC := 1714.
        ].
        recoveredStep = 1714 ifTrue: [
            recoveredStack2 := 'displayTypeLabel'.
            recoveredPC := 1718.
        ].
        recoveredStep = 1718 ifTrue: [
            recoveredStack3 := [:recoveredBlock1718Arg1 | 
    | recoveredBlock1718Value0 recoveredBlock1718Value1 recoveredBlock1718Value2 recoveredBlock1718Value3 recoveredBlock1718Value4 recoveredBlock1718Value5 recoveredBlock1718Value6 recoveredBlock1718Value7 recoveredBlock1718Value8 recoveredBlock1718Value9 recoveredBlock1718Value10 recoveredBlock1718Value11 recoveredBlock1718Value12 recoveredBlock1718Value13 recoveredBlock1718Value14 recoveredBlock1718Value15 recoveredBlock1718Value16 recoveredBlock1718Value17 recoveredBlock1718Value18 recoveredBlock1718Value19 recoveredBlock1718Value20 |
    recoveredBlock1718Value0 := recoveredBlock1718Arg1.
    recoveredBlock1718Value1 := recoveredBlock1718Value0.
    recoveredBlock1718Value2 := recoveredLocal32.
    recoveredBlock1718Value3 := (10) * (recoveredBlock1718Value2).
    recoveredBlock1718Value4 := (recoveredBlock1718Value3) rounded.
    (recoveredBlock1718Value1) x: (recoveredBlock1718Value4).
    recoveredBlock1718Value5 := recoveredBlock1718Value0.
    recoveredBlock1718Value6 := XmALIGNMENTBEGINNING.
    (recoveredBlock1718Value5) alignment: (recoveredBlock1718Value6).
    recoveredBlock1718Value7 := recoveredBlock1718Value0.
    (recoveredBlock1718Value7) labelString: ('Darstellungsart').
    recoveredBlock1718Value8 := recoveredBlock1718Value0.
    (recoveredBlock1718Value8) marginWidth: (0).
    recoveredBlock1718Value9 := recoveredBlock1718Value0.
    (recoveredBlock1718Value9) marginHeight: (0).
    recoveredBlock1718Value10 := recoveredBlock1718Value0.
    recoveredBlock1718Value11 := recoveredLocal31.
    recoveredBlock1718Value12 := (105) * (recoveredBlock1718Value11).
    recoveredBlock1718Value13 := (recoveredBlock1718Value12) rounded.
    (recoveredBlock1718Value10) y: (recoveredBlock1718Value13).
    recoveredBlock1718Value14 := recoveredBlock1718Value0.
    recoveredBlock1718Value15 := recoveredLocal31.
    recoveredBlock1718Value16 := (20) * (recoveredBlock1718Value15).
    recoveredBlock1718Value17 := (recoveredBlock1718Value16) rounded.
    (recoveredBlock1718Value14) height: (recoveredBlock1718Value17).
    recoveredBlock1718Value18 := recoveredBlock1718Value0.
    (recoveredBlock1718Value18) marginBottom: (10).
    recoveredBlock1718Value19 := (self) defaultLabelBlue.
    recoveredBlock1718Value20 := (recoveredBlock1718Value0) foregroundColor: (recoveredBlock1718Value19).
    recoveredBlock1718Value20
].
            recoveredPC := 1798.
        ].
        recoveredStep = 1798 ifTrue: [
            recoveredStack1 := (recoveredStack1) createLabel: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 1803.
        ].
        recoveredStep = 1803 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 1805.
        ].
        recoveredStep = 1805 ifTrue: [
            recoveredLocal9 := recoveredStack1.
            recoveredPC := 1808.
        ].
        recoveredStep = 1808 ifTrue: [
            recoveredStack1 := recoveredLocal33.
            recoveredPC := 1811.
        ].
        recoveredStep = 1811 ifTrue: [
            recoveredStack2 := 'displayTypeLabel'.
            recoveredPC := 1814.
        ].
        recoveredStep = 1814 ifTrue: [
            recoveredStack3 := recoveredLocal9.
            recoveredPC := 1817.
        ].
        recoveredStep = 1817 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 1819.
        ].
        recoveredStep = 1819 ifTrue: [
            recoveredStack1 := recoveredLocal28.
            recoveredPC := 1822.
        ].
        recoveredStep = 1822 ifTrue: [
            recoveredStack2 := 'xScaleLabel'.
            recoveredPC := 1826.
        ].
        recoveredStep = 1826 ifTrue: [
            recoveredStack3 := [:recoveredBlock1826Arg1 | 
    | recoveredBlock1826Value0 recoveredBlock1826Value1 recoveredBlock1826Value2 recoveredBlock1826Value3 recoveredBlock1826Value4 recoveredBlock1826Value5 recoveredBlock1826Value6 recoveredBlock1826Value7 recoveredBlock1826Value8 recoveredBlock1826Value9 recoveredBlock1826Value10 recoveredBlock1826Value11 recoveredBlock1826Value12 recoveredBlock1826Value13 recoveredBlock1826Value14 recoveredBlock1826Value15 recoveredBlock1826Value16 recoveredBlock1826Value17 recoveredBlock1826Value18 recoveredBlock1826Value19 recoveredBlock1826Value20 recoveredBlock1826Value21 recoveredBlock1826Value22 recoveredBlock1826Value23 |
    recoveredBlock1826Value0 := recoveredBlock1826Arg1.
    recoveredBlock1826Value1 := recoveredBlock1826Value0.
    recoveredBlock1826Value2 := recoveredLocal32.
    recoveredBlock1826Value3 := (10) * (recoveredBlock1826Value2).
    recoveredBlock1826Value4 := (recoveredBlock1826Value3) rounded.
    (recoveredBlock1826Value1) x: (recoveredBlock1826Value4).
    recoveredBlock1826Value5 := recoveredBlock1826Value0.
    recoveredBlock1826Value6 := XmALIGNMENTBEGINNING.
    (recoveredBlock1826Value5) alignment: (recoveredBlock1826Value6).
    recoveredBlock1826Value7 := recoveredBlock1826Value0.
    (recoveredBlock1826Value7) labelString: ('x-Achse').
    recoveredBlock1826Value8 := recoveredBlock1826Value0.
    (recoveredBlock1826Value8) marginWidth: (0).
    recoveredBlock1826Value9 := recoveredBlock1826Value0.
    (recoveredBlock1826Value9) marginHeight: (0).
    recoveredBlock1826Value10 := recoveredBlock1826Value0.
    recoveredBlock1826Value11 := recoveredLocal31.
    recoveredBlock1826Value12 := (170) * (recoveredBlock1826Value11).
    recoveredBlock1826Value13 := (recoveredBlock1826Value12) rounded.
    (recoveredBlock1826Value10) y: (recoveredBlock1826Value13).
    recoveredBlock1826Value14 := recoveredBlock1826Value0.
    recoveredBlock1826Value15 := recoveredLocal31.
    recoveredBlock1826Value16 := (20) * (recoveredBlock1826Value15).
    recoveredBlock1826Value17 := (recoveredBlock1826Value16) rounded.
    (recoveredBlock1826Value14) height: (recoveredBlock1826Value17).
    recoveredBlock1826Value18 := recoveredBlock1826Value0.
    recoveredBlock1826Value19 := recoveredLocal32.
    recoveredBlock1826Value20 := (68) * (recoveredBlock1826Value19).
    recoveredBlock1826Value21 := (recoveredBlock1826Value20) rounded.
    (recoveredBlock1826Value18) width: (recoveredBlock1826Value21).
    recoveredBlock1826Value22 := (self) defaultLabelBlue.
    recoveredBlock1826Value23 := (recoveredBlock1826Value0) foregroundColor: (recoveredBlock1826Value22).
    recoveredBlock1826Value23
].
            recoveredPC := 1914.
        ].
        recoveredStep = 1914 ifTrue: [
            recoveredStack1 := (recoveredStack1) createLabel: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 1919.
        ].
        recoveredStep = 1919 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 1921.
        ].
        recoveredStep = 1921 ifTrue: [
            recoveredLocal8 := recoveredStack1.
            recoveredPC := 1924.
        ].
        recoveredStep = 1924 ifTrue: [
            recoveredStack1 := recoveredLocal33.
            recoveredPC := 1927.
        ].
        recoveredStep = 1927 ifTrue: [
            recoveredStack2 := 'xScaleLabel'.
            recoveredPC := 1930.
        ].
        recoveredStep = 1930 ifTrue: [
            recoveredStack3 := recoveredLocal8.
            recoveredPC := 1933.
        ].
        recoveredStep = 1933 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 1935.
        ].
        recoveredStep = 1935 ifTrue: [
            recoveredStack1 := recoveredLocal28.
            recoveredPC := 1938.
        ].
        recoveredStep = 1938 ifTrue: [
            recoveredStack2 := 'foregroundColorList'.
            recoveredPC := 1942.
        ].
        recoveredStep = 1942 ifTrue: [
            recoveredStack3 := [:block28132ef8Arg1 | 
    | block28132ef8Value0 block28132ef8Value1 block28132ef8Value2 block28132ef8Value3 block28132ef8Value4 |
    block28132ef8Value0 := block28132ef8Arg1.
    block28132ef8Value1 := block28132ef8Value0.
    (block28132ef8Value1) itemWidth: (20).
    block28132ef8Value2 := block28132ef8Value0.
    block28132ef8Value3 := XmTOGETHER.
    (block28132ef8Value2) emphasisPolicy: (block28132ef8Value3).
    block28132ef8Value4 := (block28132ef8Value0) itemHeight: (17).
    block28132ef8Value4
].
            recoveredPC := 1946.
        ].
        recoveredStep = 1946 ifTrue: [
            recoveredPC := 1974.
        ].
        recoveredStep = 1974 ifTrue: [
            recoveredStack1 := (recoveredStack1) createEtasScrolledIconList: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 1979.
        ].
        recoveredStep = 1979 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 1981.
        ].
        recoveredStep = 1981 ifTrue: [
            recoveredLocal6 := recoveredStack1.
            recoveredPC := 1984.
        ].
        recoveredStep = 1984 ifTrue: [
            recoveredStack1 := recoveredLocal6.
            recoveredPC := 1987.
        ].
        recoveredStep = 1987 ifTrue: [
            recoveredStack1 := (recoveredStack1) parent.
            recoveredPC := 1991.
        ].
        recoveredStep = 1991 ifTrue: [
            recoveredLocal7 := recoveredStack1.
            recoveredPC := 1994.
        ].
        recoveredStep = 1994 ifTrue: [
            recoveredStack1 := recoveredLocal33.
            recoveredPC := 1997.
        ].
        recoveredStep = 1997 ifTrue: [
            recoveredStack2 := 'aScrolledIconList1'.
            recoveredPC := 2000.
        ].
        recoveredStep = 2000 ifTrue: [
            recoveredStack3 := recoveredLocal7.
            recoveredPC := 2003.
        ].
        recoveredStep = 2003 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 2005.
        ].
        recoveredStep = 2005 ifTrue: [
            recoveredStack1 := recoveredLocal33.
            recoveredPC := 2008.
        ].
        recoveredStep = 2008 ifTrue: [
            recoveredStack2 := 'foregroundColorList'.
            recoveredPC := 2012.
        ].
        recoveredStep = 2012 ifTrue: [
            recoveredStack3 := recoveredLocal6.
            recoveredPC := 2015.
        ].
        recoveredStep = 2015 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 2017.
        ].
        recoveredStep = 2017 ifTrue: [
            recoveredStack1 := recoveredLocal28.
            recoveredPC := 2020.
        ].
        recoveredStep = 2020 ifTrue: [
            recoveredStack2 := 'backgroundColorList'.
            recoveredPC := 2024.
        ].
        recoveredStep = 2024 ifTrue: [
            recoveredStack3 := [:block28132f1cArg1 | 
    | block28132f1cValue0 block28132f1cValue1 block28132f1cValue2 block28132f1cValue3 |
    block28132f1cValue0 := block28132f1cArg1.
    block28132f1cValue1 := block28132f1cValue0.
    block28132f1cValue2 := XmTOGETHER.
    (block28132f1cValue1) emphasisPolicy: (block28132f1cValue2).
    block28132f1cValue3 := (block28132f1cValue0) itemHeight: (17).
    block28132f1cValue3
].
            recoveredPC := 2028.
        ].
        recoveredStep = 2028 ifTrue: [
            recoveredPC := 2050.
        ].
        recoveredStep = 2050 ifTrue: [
            recoveredStack1 := (recoveredStack1) createEtasScrolledIconList: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 2055.
        ].
        recoveredStep = 2055 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 2057.
        ].
        recoveredStep = 2057 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 2060.
        ].
        recoveredStep = 2060 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 2063.
        ].
        recoveredStep = 2063 ifTrue: [
            recoveredStack1 := (recoveredStack1) parent.
            recoveredPC := 2067.
        ].
        recoveredStep = 2067 ifTrue: [
            recoveredLocal5 := recoveredStack1.
            recoveredPC := 2070.
        ].
        recoveredStep = 2070 ifTrue: [
            recoveredStack1 := recoveredLocal33.
            recoveredPC := 2073.
        ].
        recoveredStep = 2073 ifTrue: [
            recoveredStack2 := 'aScrolledIconList2'.
            recoveredPC := 2076.
        ].
        recoveredStep = 2076 ifTrue: [
            recoveredStack3 := recoveredLocal5.
            recoveredPC := 2079.
        ].
        recoveredStep = 2079 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 2081.
        ].
        recoveredStep = 2081 ifTrue: [
            recoveredStack1 := recoveredLocal33.
            recoveredPC := 2084.
        ].
        recoveredStep = 2084 ifTrue: [
            recoveredStack2 := 'backgroundColorList'.
            recoveredPC := 2088.
        ].
        recoveredStep = 2088 ifTrue: [
            recoveredStack3 := recoveredLocal4.
            recoveredPC := 2091.
        ].
        recoveredStep = 2091 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 2093.
        ].
        recoveredStep = 2093 ifTrue: [
            recoveredStack1 := recoveredLocal28.
            recoveredPC := 2096.
        ].
        recoveredStep = 2096 ifTrue: [
            recoveredStack2 := 'fromXLabel'.
            recoveredPC := 2100.
        ].
        recoveredStep = 2100 ifTrue: [
            recoveredStack3 := [:recoveredBlock2100Arg1 | 
    | recoveredBlock2100Value0 recoveredBlock2100Value1 recoveredBlock2100Value2 recoveredBlock2100Value3 recoveredBlock2100Value4 recoveredBlock2100Value5 recoveredBlock2100Value6 recoveredBlock2100Value7 recoveredBlock2100Value8 recoveredBlock2100Value9 recoveredBlock2100Value10 recoveredBlock2100Value11 recoveredBlock2100Value12 recoveredBlock2100Value13 |
    recoveredBlock2100Value0 := recoveredBlock2100Arg1.
    recoveredBlock2100Value1 := recoveredBlock2100Value0.
    recoveredBlock2100Value2 := recoveredLocal32.
    recoveredBlock2100Value3 := (20) * (recoveredBlock2100Value2).
    recoveredBlock2100Value4 := (recoveredBlock2100Value3) rounded.
    (recoveredBlock2100Value1) x: (recoveredBlock2100Value4).
    recoveredBlock2100Value5 := recoveredBlock2100Value0.
    recoveredBlock2100Value6 := XmALIGNMENTBEGINNING.
    (recoveredBlock2100Value5) alignment: (recoveredBlock2100Value6).
    recoveredBlock2100Value7 := recoveredBlock2100Value0.
    (recoveredBlock2100Value7) labelString: ('von').
    recoveredBlock2100Value8 := recoveredBlock2100Value0.
    (recoveredBlock2100Value8) marginWidth: (0).
    recoveredBlock2100Value9 := recoveredBlock2100Value0.
    (recoveredBlock2100Value9) marginHeight: (0).
    recoveredBlock2100Value10 := recoveredLocal31.
    recoveredBlock2100Value11 := (195) * (recoveredBlock2100Value10).
    recoveredBlock2100Value12 := (recoveredBlock2100Value11) rounded.
    recoveredBlock2100Value13 := (recoveredBlock2100Value0) y: (recoveredBlock2100Value12).
    recoveredBlock2100Value13
].
            recoveredPC := 2155.
        ].
        recoveredStep = 2155 ifTrue: [
            recoveredStack1 := (recoveredStack1) createLabel: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 2159.
        ].
        recoveredStep = 2159 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 2161.
        ].
        recoveredStep = 2161 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 2164.
        ].
        recoveredStep = 2164 ifTrue: [
            recoveredStack1 := recoveredLocal33.
            recoveredPC := 2167.
        ].
        recoveredStep = 2167 ifTrue: [
            recoveredStack2 := 'fromXLabel'.
            recoveredPC := 2170.
        ].
        recoveredStep = 2170 ifTrue: [
            recoveredStack3 := recoveredLocal3.
            recoveredPC := 2173.
        ].
        recoveredStep = 2173 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 2175.
        ].
        recoveredStep = 2175 ifTrue: [
            recoveredStack1 := recoveredLocal28.
            recoveredPC := 2178.
        ].
        recoveredStep = 2178 ifTrue: [
            recoveredStack2 := 'toXLabel'.
            recoveredPC := 2182.
        ].
        recoveredStep = 2182 ifTrue: [
            recoveredStack3 := [:recoveredBlock2182Arg1 | 
    | recoveredBlock2182Value0 recoveredBlock2182Value1 recoveredBlock2182Value2 recoveredBlock2182Value3 recoveredBlock2182Value4 recoveredBlock2182Value5 recoveredBlock2182Value6 recoveredBlock2182Value7 recoveredBlock2182Value8 recoveredBlock2182Value9 recoveredBlock2182Value10 recoveredBlock2182Value11 recoveredBlock2182Value12 recoveredBlock2182Value13 recoveredBlock2182Value14 recoveredBlock2182Value15 recoveredBlock2182Value16 recoveredBlock2182Value17 recoveredBlock2182Value18 |
    recoveredBlock2182Value0 := recoveredBlock2182Arg1.
    recoveredBlock2182Value1 := recoveredBlock2182Value0.
    recoveredBlock2182Value2 := recoveredLocal32.
    recoveredBlock2182Value3 := (20) * (recoveredBlock2182Value2).
    recoveredBlock2182Value4 := (recoveredBlock2182Value3) rounded.
    (recoveredBlock2182Value1) x: (recoveredBlock2182Value4).
    recoveredBlock2182Value5 := recoveredBlock2182Value0.
    recoveredBlock2182Value6 := XmALIGNMENTBEGINNING.
    (recoveredBlock2182Value5) alignment: (recoveredBlock2182Value6).
    recoveredBlock2182Value7 := recoveredBlock2182Value0.
    (recoveredBlock2182Value7) labelString: ('bis').
    recoveredBlock2182Value8 := recoveredBlock2182Value0.
    (recoveredBlock2182Value8) marginWidth: (0).
    recoveredBlock2182Value9 := recoveredBlock2182Value0.
    (recoveredBlock2182Value9) marginHeight: (0).
    recoveredBlock2182Value10 := recoveredBlock2182Value0.
    recoveredBlock2182Value11 := recoveredLocal31.
    recoveredBlock2182Value12 := (225) * (recoveredBlock2182Value11).
    recoveredBlock2182Value13 := (recoveredBlock2182Value12) rounded.
    (recoveredBlock2182Value10) y: (recoveredBlock2182Value13).
    recoveredBlock2182Value14 := recoveredBlock2182Value0.
    recoveredBlock2182Value15 := recoveredLocal31.
    recoveredBlock2182Value16 := (20) * (recoveredBlock2182Value15).
    recoveredBlock2182Value17 := (recoveredBlock2182Value16) rounded.
    (recoveredBlock2182Value14) height: (recoveredBlock2182Value17).
    recoveredBlock2182Value18 := (recoveredBlock2182Value0) marginBottom: (10).
    recoveredBlock2182Value18
].
            recoveredPC := 2252.
        ].
        recoveredStep = 2252 ifTrue: [
            recoveredStack1 := (recoveredStack1) createLabel: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 2257.
        ].
        recoveredStep = 2257 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 2259.
        ].
        recoveredStep = 2259 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 2262.
        ].
        recoveredStep = 2262 ifTrue: [
            recoveredStack1 := recoveredLocal33.
            recoveredPC := 2265.
        ].
        recoveredStep = 2265 ifTrue: [
            recoveredStack2 := 'toXLabel'.
            recoveredPC := 2268.
        ].
        recoveredStep = 2268 ifTrue: [
            recoveredStack3 := recoveredLocal2.
            recoveredPC := 2271.
        ].
        recoveredStep = 2271 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 2273.
        ].
        recoveredStep = 2273 ifTrue: [
            recoveredStack1 := recoveredLocal28.
            recoveredPC := 2276.
        ].
        recoveredStep = 2276 ifTrue: [
            recoveredStack2 := 'xMaxField'.
            recoveredPC := 2280.
        ].
        recoveredStep = 2280 ifTrue: [
            recoveredStack3 := [:recoveredBlock2280Arg1 | 
    | recoveredBlock2280Value0 recoveredBlock2280Value1 recoveredBlock2280Value2 recoveredBlock2280Value3 recoveredBlock2280Value4 recoveredBlock2280Value5 recoveredBlock2280Value6 recoveredBlock2280Value7 recoveredBlock2280Value8 recoveredBlock2280Value9 recoveredBlock2280Value10 recoveredBlock2280Value11 recoveredBlock2280Value12 recoveredBlock2280Value13 recoveredBlock2280Value14 recoveredBlock2280Value15 recoveredBlock2280Value16 |
    recoveredBlock2280Value0 := recoveredBlock2280Arg1.
    recoveredBlock2280Value1 := recoveredBlock2280Value0.
    recoveredBlock2280Value2 := recoveredLocal31.
    recoveredBlock2280Value3 := (220) * (recoveredBlock2280Value2).
    recoveredBlock2280Value4 := (recoveredBlock2280Value3) rounded.
    (recoveredBlock2280Value1) y: (recoveredBlock2280Value4).
    recoveredBlock2280Value5 := recoveredBlock2280Value0.
    recoveredBlock2280Value6 := recoveredLocal32.
    recoveredBlock2280Value7 := (70) * (recoveredBlock2280Value6).
    recoveredBlock2280Value8 := (recoveredBlock2280Value7) rounded.
    (recoveredBlock2280Value5) x: (recoveredBlock2280Value8).
    recoveredBlock2280Value9 := recoveredBlock2280Value0.
    recoveredBlock2280Value10 := recoveredLocal31.
    recoveredBlock2280Value11 := (25) * (recoveredBlock2280Value10).
    recoveredBlock2280Value12 := (recoveredBlock2280Value11) rounded.
    (recoveredBlock2280Value9) height: (recoveredBlock2280Value12).
    recoveredBlock2280Value13 := recoveredLocal32.
    recoveredBlock2280Value14 := (60) * (recoveredBlock2280Value13).
    recoveredBlock2280Value15 := (recoveredBlock2280Value14) rounded.
    recoveredBlock2280Value16 := (recoveredBlock2280Value0) width: (recoveredBlock2280Value15).
    recoveredBlock2280Value16
].
            recoveredPC := 2334.
        ].
        recoveredStep = 2334 ifTrue: [
            recoveredStack1 := (recoveredStack1) createEnhancedText: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 2336.
        ].
        recoveredStep = 2336 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 2338.
        ].
        recoveredStep = 2338 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 2341.
        ].
        recoveredStep = 2341 ifTrue: [
            recoveredStack1 := recoveredLocal33.
            recoveredPC := 2344.
        ].
        recoveredStep = 2344 ifTrue: [
            recoveredStack2 := 'xMaxField'.
            recoveredPC := 2348.
        ].
        recoveredStep = 2348 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 2351.
        ].
        recoveredStep = 2351 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 2353.
        ].
        recoveredStep = 2353 ifTrue: [
            recoveredStack1 := recoveredLocal29.
            recoveredPC := 2356.
        ].
        recoveredStep = 2356 ifTrue: [
            recoveredStack2 := [:recoveredBlock2356Arg1 | 
    | recoveredBlock2356Value0 recoveredBlock2356Value1 recoveredBlock2356Value2 |
    recoveredBlock2356Value0 := recoveredBlock2356Arg1.
    recoveredBlock2356Value1 := recoveredLocal28.
    recoveredBlock2356Value2 := (recoveredBlock2356Value0) workWindow: (recoveredBlock2356Value1).
    recoveredBlock2356Value2
].
            recoveredPC := 2372.
        ].
        recoveredStep = 2372 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 2377.
        ].
        recoveredStep = 2377 ifTrue: [
            recoveredStack1 := recoveredLocal17.
            recoveredPC := 2380.
        ].
        recoveredStep = 2380 ifTrue: [
            recoveredStack2 := [:recoveredBlock2380Arg1 | 
    | recoveredBlock2380Value0 recoveredBlock2380Value1 recoveredBlock2380Value2 recoveredBlock2380Value3 recoveredBlock2380Value4 recoveredBlock2380Value5 recoveredBlock2380Value6 recoveredBlock2380Value7 recoveredBlock2380Value8 recoveredBlock2380Value9 |
    recoveredBlock2380Value0 := recoveredBlock2380Arg1.
    recoveredBlock2380Value1 := recoveredBlock2380Value0.
    recoveredBlock2380Value2 := XmATTACHOPPOSITEWIDGET.
    (recoveredBlock2380Value1) leftAttachment: (recoveredBlock2380Value2).
    recoveredBlock2380Value3 := recoveredBlock2380Value0.
    recoveredBlock2380Value4 := recoveredLocal5.
    (recoveredBlock2380Value3) leftWidget: (recoveredBlock2380Value4).
    recoveredBlock2380Value5 := recoveredBlock2380Value0.
    (recoveredBlock2380Value5) leftOffset: (-10).
    recoveredBlock2380Value6 := recoveredBlock2380Value0.
    recoveredBlock2380Value7 := XmATTACHOPPOSITEWIDGET.
    (recoveredBlock2380Value6) rightAttachment: (recoveredBlock2380Value7).
    recoveredBlock2380Value8 := recoveredLocal5.
    recoveredBlock2380Value9 := (recoveredBlock2380Value0) rightWidget: (recoveredBlock2380Value8).
    recoveredBlock2380Value9
].
            recoveredPC := 2428.
        ].
        recoveredStep = 2428 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 2433.
        ].
        recoveredStep = 2433 ifTrue: [
            recoveredStack1 := recoveredLocal14.
            recoveredPC := 2436.
        ].
        recoveredStep = 2436 ifTrue: [
            recoveredStack2 := [:recoveredBlock2436Arg1 | 
    | recoveredBlock2436Value0 recoveredBlock2436Value1 recoveredBlock2436Value2 recoveredBlock2436Value3 recoveredBlock2436Value4 recoveredBlock2436Value5 recoveredBlock2436Value6 recoveredBlock2436Value7 recoveredBlock2436Value8 recoveredBlock2436Value9 |
    recoveredBlock2436Value0 := recoveredBlock2436Arg1.
    recoveredBlock2436Value1 := recoveredBlock2436Value0.
    recoveredBlock2436Value2 := XmATTACHOPPOSITEWIDGET.
    (recoveredBlock2436Value1) leftAttachment: (recoveredBlock2436Value2).
    recoveredBlock2436Value3 := recoveredBlock2436Value0.
    recoveredBlock2436Value4 := recoveredLocal7.
    (recoveredBlock2436Value3) leftWidget: (recoveredBlock2436Value4).
    recoveredBlock2436Value5 := recoveredBlock2436Value0.
    (recoveredBlock2436Value5) leftOffset: (-10).
    recoveredBlock2436Value6 := recoveredBlock2436Value0.
    recoveredBlock2436Value7 := XmATTACHOPPOSITEWIDGET.
    (recoveredBlock2436Value6) rightAttachment: (recoveredBlock2436Value7).
    recoveredBlock2436Value8 := recoveredLocal7.
    recoveredBlock2436Value9 := (recoveredBlock2436Value0) rightWidget: (recoveredBlock2436Value8).
    recoveredBlock2436Value9
].
            recoveredPC := 2484.
        ].
        recoveredStep = 2484 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 2489.
        ].
        recoveredStep = 2489 ifTrue: [
            recoveredStack1 := recoveredLocal7.
            recoveredPC := 2492.
        ].
        recoveredStep = 2492 ifTrue: [
            recoveredStack2 := [:recoveredBlock2492Arg1 | 
    | recoveredBlock2492Value0 recoveredBlock2492Value1 recoveredBlock2492Value2 recoveredBlock2492Value3 recoveredBlock2492Value4 recoveredBlock2492Value5 recoveredBlock2492Value6 recoveredBlock2492Value7 recoveredBlock2492Value8 recoveredBlock2492Value9 recoveredBlock2492Value10 recoveredBlock2492Value11 recoveredBlock2492Value12 recoveredBlock2492Value13 recoveredBlock2492Value14 recoveredBlock2492Value15 recoveredBlock2492Value16 |
    recoveredBlock2492Value0 := recoveredBlock2492Arg1.
    recoveredBlock2492Value1 := recoveredBlock2492Value0.
    recoveredBlock2492Value2 := recoveredLocal32.
    recoveredBlock2492Value3 := (155) * (recoveredBlock2492Value2).
    recoveredBlock2492Value4 := (recoveredBlock2492Value3) rounded.
    (recoveredBlock2492Value1) x: (recoveredBlock2492Value4).
    recoveredBlock2492Value5 := recoveredBlock2492Value0.
    recoveredBlock2492Value6 := recoveredLocal31.
    recoveredBlock2492Value7 := (30) * (recoveredBlock2492Value6).
    recoveredBlock2492Value8 := (recoveredBlock2492Value7) rounded.
    (recoveredBlock2492Value5) y: (recoveredBlock2492Value8).
    recoveredBlock2492Value9 := recoveredBlock2492Value0.
    recoveredBlock2492Value10 := recoveredLocal31.
    recoveredBlock2492Value11 := (90) * (recoveredBlock2492Value10).
    recoveredBlock2492Value12 := (recoveredBlock2492Value11) rounded.
    (recoveredBlock2492Value9) height: (recoveredBlock2492Value12).
    recoveredBlock2492Value13 := recoveredLocal32.
    recoveredBlock2492Value14 := (110) * (recoveredBlock2492Value13).
    recoveredBlock2492Value15 := (recoveredBlock2492Value14) rounded.
    recoveredBlock2492Value16 := (recoveredBlock2492Value0) width: (recoveredBlock2492Value15).
    recoveredBlock2492Value16
].
            recoveredPC := 2549.
        ].
        recoveredStep = 2549 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 2553.
        ].
        recoveredStep = 2553 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 2556.
        ].
        recoveredStep = 2556 ifTrue: [
            recoveredStack2 := [:recoveredBlock2556Arg1 | 
    | recoveredBlock2556Value0 recoveredBlock2556Value1 recoveredBlock2556Value2 recoveredBlock2556Value3 recoveredBlock2556Value4 recoveredBlock2556Value5 recoveredBlock2556Value6 recoveredBlock2556Value7 recoveredBlock2556Value8 recoveredBlock2556Value9 recoveredBlock2556Value10 recoveredBlock2556Value11 recoveredBlock2556Value12 recoveredBlock2556Value13 recoveredBlock2556Value14 recoveredBlock2556Value15 recoveredBlock2556Value16 |
    recoveredBlock2556Value0 := recoveredBlock2556Arg1.
    recoveredBlock2556Value1 := recoveredBlock2556Value0.
    recoveredBlock2556Value2 := recoveredLocal32.
    recoveredBlock2556Value3 := (155) * (recoveredBlock2556Value2).
    recoveredBlock2556Value4 := (recoveredBlock2556Value3) rounded.
    (recoveredBlock2556Value1) x: (recoveredBlock2556Value4).
    recoveredBlock2556Value5 := recoveredBlock2556Value0.
    recoveredBlock2556Value6 := recoveredLocal31.
    recoveredBlock2556Value7 := (190) * (recoveredBlock2556Value6).
    recoveredBlock2556Value8 := (recoveredBlock2556Value7) rounded.
    (recoveredBlock2556Value5) y: (recoveredBlock2556Value8).
    recoveredBlock2556Value9 := recoveredBlock2556Value0.
    recoveredBlock2556Value10 := recoveredLocal31.
    recoveredBlock2556Value11 := (90) * (recoveredBlock2556Value10).
    recoveredBlock2556Value12 := (recoveredBlock2556Value11) rounded.
    (recoveredBlock2556Value9) height: (recoveredBlock2556Value12).
    recoveredBlock2556Value13 := recoveredLocal32.
    recoveredBlock2556Value14 := (110) * (recoveredBlock2556Value13).
    recoveredBlock2556Value15 := (recoveredBlock2556Value14) rounded.
    recoveredBlock2556Value16 := (recoveredBlock2556Value0) width: (recoveredBlock2556Value15).
    recoveredBlock2556Value16
].
            recoveredPC := 2613.
        ].
        recoveredStep = 2613 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 2617.
        ].
        recoveredStep = 2617 ifTrue: [
            recoveredStack1 := recoveredLocal28.
            recoveredPC := 2620.
        ].
        recoveredStep = 2620 ifTrue: [
            recoveredStack2 := XmNdestroyCallback.
            recoveredPC := 2624.
        ].
        recoveredStep = 2624 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 2625.
        ].
        recoveredStep = 2625 ifTrue: [
            recoveredStack4 := 'aForm1Destroy:clientData:callData:'.
            recoveredPC := 2628.
        ].
        recoveredStep = 2628 ifTrue: [
            recoveredStack5 := nil.
            recoveredPC := 2629.
        ].
        recoveredStep = 2629 ifTrue: [
            (recoveredStack1) addCallback: (recoveredStack2) receiver: (recoveredStack3) selector: (recoveredStack4) clientData: (recoveredStack5).
            recoveredPC := 2633.
        ].
        recoveredStep = 2633 ifTrue: [
            recoveredStack1 := recoveredLocal27.
            recoveredPC := 2636.
        ].
        recoveredStep = 2636 ifTrue: [
            recoveredStack2 := XmNlosingFocusCallback.
            recoveredPC := 2640.
        ].
        recoveredStep = 2640 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 2641.
        ].
        recoveredStep = 2641 ifTrue: [
            recoveredStack4 := 'textLosing:clientData:callData:'.
            recoveredPC := 2644.
        ].
        recoveredStep = 2644 ifTrue: [
            recoveredStack5 := nil.
            recoveredPC := 2645.
        ].
        recoveredStep = 2645 ifTrue: [
            (recoveredStack1) addCallback: (recoveredStack2) receiver: (recoveredStack3) selector: (recoveredStack4) clientData: (recoveredStack5).
            recoveredPC := 2649.
        ].
        recoveredStep = 2649 ifTrue: [
            recoveredStack1 := recoveredLocal27.
            recoveredPC := 2652.
        ].
        recoveredStep = 2652 ifTrue: [
            recoveredStack2 := XmNfocusCallback.
            recoveredPC := 2656.
        ].
        recoveredStep = 2656 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 2657.
        ].
        recoveredStep = 2657 ifTrue: [
            recoveredStack4 := 'textFocus:clientData:callData:'.
            recoveredPC := 2660.
        ].
        recoveredStep = 2660 ifTrue: [
            recoveredStack5 := nil.
            recoveredPC := 2661.
        ].
        recoveredStep = 2661 ifTrue: [
            (recoveredStack1) addCallback: (recoveredStack2) receiver: (recoveredStack3) selector: (recoveredStack4) clientData: (recoveredStack5).
            recoveredPC := 2665.
        ].
        recoveredStep = 2665 ifTrue: [
            recoveredStack1 := recoveredLocal26.
            recoveredPC := 2668.
        ].
        recoveredStep = 2668 ifTrue: [
            recoveredStack2 := XmNfocusCallback.
            recoveredPC := 2672.
        ].
        recoveredStep = 2672 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 2673.
        ].
        recoveredStep = 2673 ifTrue: [
            recoveredStack4 := 'textFocus:clientData:callData:'.
            recoveredPC := 2676.
        ].
        recoveredStep = 2676 ifTrue: [
            recoveredStack5 := nil.
            recoveredPC := 2677.
        ].
        recoveredStep = 2677 ifTrue: [
            (recoveredStack1) addCallback: (recoveredStack2) receiver: (recoveredStack3) selector: (recoveredStack4) clientData: (recoveredStack5).
            recoveredPC := 2681.
        ].
        recoveredStep = 2681 ifTrue: [
            recoveredStack1 := recoveredLocal26.
            recoveredPC := 2684.
        ].
        recoveredStep = 2684 ifTrue: [
            recoveredStack2 := XmNlosingFocusCallback.
            recoveredPC := 2688.
        ].
        recoveredStep = 2688 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 2689.
        ].
        recoveredStep = 2689 ifTrue: [
            recoveredStack4 := 'textLosing:clientData:callData:'.
            recoveredPC := 2692.
        ].
        recoveredStep = 2692 ifTrue: [
            recoveredStack5 := nil.
            recoveredPC := 2693.
        ].
        recoveredStep = 2693 ifTrue: [
            (recoveredStack1) addCallback: (recoveredStack2) receiver: (recoveredStack3) selector: (recoveredStack4) clientData: (recoveredStack5).
            recoveredPC := 2697.
        ].
        recoveredStep = 2697 ifTrue: [
            recoveredStack1 := recoveredLocal25.
            recoveredPC := 2700.
        ].
        recoveredStep = 2700 ifTrue: [
            recoveredStack2 := XmNactivateCallback.
            recoveredPC := 2704.
        ].
        recoveredStep = 2704 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 2705.
        ].
        recoveredStep = 2705 ifTrue: [
            recoveredStack4 := 'okButtonActivate:clientData:callData:'.
            recoveredPC := 2708.
        ].
        recoveredStep = 2708 ifTrue: [
            recoveredStack5 := nil.
            recoveredPC := 2709.
        ].
        recoveredStep = 2709 ifTrue: [
            (recoveredStack1) addCallback: (recoveredStack2) receiver: (recoveredStack3) selector: (recoveredStack4) clientData: (recoveredStack5).
            recoveredPC := 2713.
        ].
        recoveredStep = 2713 ifTrue: [
            recoveredStack1 := recoveredLocal24.
            recoveredPC := 2716.
        ].
        recoveredStep = 2716 ifTrue: [
            recoveredStack2 := XmNactivateCallback.
            recoveredPC := 2720.
        ].
        recoveredStep = 2720 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 2721.
        ].
        recoveredStep = 2721 ifTrue: [
            recoveredStack4 := 'cancelActivate:clientData:callData:'.
            recoveredPC := 2724.
        ].
        recoveredStep = 2724 ifTrue: [
            recoveredStack5 := nil.
            recoveredPC := 2725.
        ].
        recoveredStep = 2725 ifTrue: [
            (recoveredStack1) addCallback: (recoveredStack2) receiver: (recoveredStack3) selector: (recoveredStack4) clientData: (recoveredStack5).
            recoveredPC := 2729.
        ].
        recoveredStep = 2729 ifTrue: [
            recoveredStack1 := recoveredLocal20.
            recoveredPC := 2732.
        ].
        recoveredStep = 2732 ifTrue: [
            recoveredStack2 := XmNlosingFocusCallback.
            recoveredPC := 2736.
        ].
        recoveredStep = 2736 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 2737.
        ].
        recoveredStep = 2737 ifTrue: [
            recoveredStack4 := 'textLosing:clientData:callData:'.
            recoveredPC := 2740.
        ].
        recoveredStep = 2740 ifTrue: [
            recoveredStack5 := nil.
            recoveredPC := 2741.
        ].
        recoveredStep = 2741 ifTrue: [
            (recoveredStack1) addCallback: (recoveredStack2) receiver: (recoveredStack3) selector: (recoveredStack4) clientData: (recoveredStack5).
            recoveredPC := 2745.
        ].
        recoveredStep = 2745 ifTrue: [
            recoveredStack1 := recoveredLocal20.
            recoveredPC := 2748.
        ].
        recoveredStep = 2748 ifTrue: [
            recoveredStack2 := XmNfocusCallback.
            recoveredPC := 2752.
        ].
        recoveredStep = 2752 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 2753.
        ].
        recoveredStep = 2753 ifTrue: [
            recoveredStack4 := 'textFocus:clientData:callData:'.
            recoveredPC := 2756.
        ].
        recoveredStep = 2756 ifTrue: [
            recoveredStack5 := nil.
            recoveredPC := 2757.
        ].
        recoveredStep = 2757 ifTrue: [
            (recoveredStack1) addCallback: (recoveredStack2) receiver: (recoveredStack3) selector: (recoveredStack4) clientData: (recoveredStack5).
            recoveredPC := 2761.
        ].
        recoveredStep = 2761 ifTrue: [
            recoveredStack1 := recoveredLocal6.
            recoveredPC := 2764.
        ].
        recoveredStep = 2764 ifTrue: [
            recoveredStack2 := XmNbrowseSelectionCallback.
            recoveredPC := 2768.
        ].
        recoveredStep = 2768 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 2769.
        ].
        recoveredStep = 2769 ifTrue: [
            recoveredStack4 := 'anIconList1browseSelectionCallback:clientData:callData:'.
            recoveredPC := 2772.
        ].
        recoveredStep = 2772 ifTrue: [
            recoveredStack5 := nil.
            recoveredPC := 2773.
        ].
        recoveredStep = 2773 ifTrue: [
            (recoveredStack1) addCallback: (recoveredStack2) receiver: (recoveredStack3) selector: (recoveredStack4) clientData: (recoveredStack5).
            recoveredPC := 2777.
        ].
        recoveredStep = 2777 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 2780.
        ].
        recoveredStep = 2780 ifTrue: [
            recoveredStack2 := XmNbrowseSelectionCallback.
            recoveredPC := 2784.
        ].
        recoveredStep = 2784 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 2785.
        ].
        recoveredStep = 2785 ifTrue: [
            recoveredStack4 := 'anIconList2browseSelectionCallback:clientData:callData:'.
            recoveredPC := 2788.
        ].
        recoveredStep = 2788 ifTrue: [
            recoveredStack5 := nil.
            recoveredPC := 2789.
        ].
        recoveredStep = 2789 ifTrue: [
            (recoveredStack1) addCallback: (recoveredStack2) receiver: (recoveredStack3) selector: (recoveredStack4) clientData: (recoveredStack5).
            recoveredPC := 2793.
        ].
        recoveredStep = 2793 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 2796.
        ].
        recoveredStep = 2796 ifTrue: [
            recoveredStack2 := XmNfocusCallback.
            recoveredPC := 2800.
        ].
        recoveredStep = 2800 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 2801.
        ].
        recoveredStep = 2801 ifTrue: [
            recoveredStack4 := 'textFocus:clientData:callData:'.
            recoveredPC := 2804.
        ].
        recoveredStep = 2804 ifTrue: [
            recoveredStack5 := nil.
            recoveredPC := 2805.
        ].
        recoveredStep = 2805 ifTrue: [
            (recoveredStack1) addCallback: (recoveredStack2) receiver: (recoveredStack3) selector: (recoveredStack4) clientData: (recoveredStack5).
            recoveredPC := 2809.
        ].
        recoveredStep = 2809 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 2812.
        ].
        recoveredStep = 2812 ifTrue: [
            recoveredStack2 := XmNlosingFocusCallback.
            recoveredPC := 2816.
        ].
        recoveredStep = 2816 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 2817.
        ].
        recoveredStep = 2817 ifTrue: [
            recoveredStack4 := 'textLosing:clientData:callData:'.
            recoveredPC := 2820.
        ].
        recoveredStep = 2820 ifTrue: [
            recoveredStack5 := nil.
            recoveredPC := 2821.
        ].
        recoveredStep = 2821 ifTrue: [
            (recoveredStack1) addCallback: (recoveredStack2) receiver: (recoveredStack3) selector: (recoveredStack4) clientData: (recoveredStack5).
            recoveredPC := 2825.
        ].
        recoveredStep = 2825 ifTrue: [
            recoveredStack1 := recoveredLocal27.
            recoveredPC := 2828.
        ].
        recoveredStep = 2828 ifTrue: [
            (recoveredStack1) addTabGroup.
            recoveredPC := 2833.
        ].
        recoveredStep = 2833 ifTrue: [
            recoveredStack1 := recoveredLocal26.
            recoveredPC := 2836.
        ].
        recoveredStep = 2836 ifTrue: [
            (recoveredStack1) addTabGroup.
            recoveredPC := 2841.
        ].
        recoveredStep = 2841 ifTrue: [
            recoveredStack1 := recoveredLocal23.
            recoveredPC := 2844.
        ].
        recoveredStep = 2844 ifTrue: [
            (recoveredStack1) addTabGroup.
            recoveredPC := 2849.
        ].
        recoveredStep = 2849 ifTrue: [
            recoveredStack1 := recoveredLocal6.
            recoveredPC := 2852.
        ].
        recoveredStep = 2852 ifTrue: [
            (recoveredStack1) addTabGroup.
            recoveredPC := 2857.
        ].
        recoveredStep = 2857 ifTrue: [
            recoveredStack1 := recoveredLocal20.
            recoveredPC := 2860.
        ].
        recoveredStep = 2860 ifTrue: [
            (recoveredStack1) addTabGroup.
            recoveredPC := 2865.
        ].
        recoveredStep = 2865 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 2868.
        ].
        recoveredStep = 2868 ifTrue: [
            (recoveredStack1) addTabGroup.
            recoveredPC := 2873.
        ].
        recoveredStep = 2873 ifTrue: [
            recoveredStack1 := recoveredLocal21.
            recoveredPC := 2876.
        ].
        recoveredStep = 2876 ifTrue: [
            (recoveredStack1) addTabGroup.
            recoveredPC := 2881.
        ].
        recoveredStep = 2881 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 2884.
        ].
        recoveredStep = 2884 ifTrue: [
            (recoveredStack1) addTabGroup.
            recoveredPC := 2889.
        ].
        recoveredStep = 2889 ifTrue: [
            recoveredStack1 := recoveredLocal25.
            recoveredPC := 2892.
        ].
        recoveredStep = 2892 ifTrue: [
            (recoveredStack1) addTabGroup.
            recoveredPC := 2897.
        ].
        recoveredStep = 2897 ifTrue: [
            recoveredStack1 := recoveredLocal24.
            recoveredPC := 2900.
        ].
        recoveredStep = 2900 ifTrue: [
            (recoveredStack1) addTabGroup.
            recoveredPC := 2905.
        ].
        recoveredStep = 2905 ifTrue: [
            recoveredStack1 := recoveredLocal22.
            recoveredPC := 2908.
        ].
        recoveredStep = 2908 ifTrue: [
            (recoveredStack1) addTabGroup.
            recoveredPC := 2913.
        ].
        recoveredStep = 2913 ifTrue: [
            recoveredStack1 := Array.
            recoveredPC := 2916.
        ].
        recoveredStep = 2916 ifTrue: [
            recoveredStack2 := recoveredLocal33.
            recoveredPC := 2919.
        ].
        recoveredStep = 2919 ifTrue: [
            recoveredStack3 := recoveredLocal29.
            recoveredPC := 2922.
        ].
        recoveredStep = 2922 ifTrue: [
            recoveredStack1 := (recoveredStack1) with: (recoveredStack2) with: (recoveredStack3).
            recoveredPC := 2927.
        ].
        recoveredStep = 2927 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

