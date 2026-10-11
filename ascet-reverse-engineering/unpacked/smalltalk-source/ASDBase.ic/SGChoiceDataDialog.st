"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x200389f4; bytecode file offset 0x935c54"
!SGChoiceDataDialog methodsFor: 'recovered'!
printName: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) key.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2004813c; bytecode file offset 0x9451f8"
!SGChoiceDataDialog methodsFor: 'recovered'!
widgetDataList
    | recoveredValue0 |
    recoveredValue0 := (self) widgetAt: ('dataList').
    ^recoveredValue0
! !

"ASDBase.ic method 0x2005aa7c; bytecode file offset 0x957a6c"
!SGChoiceDataDialog methodsFor: 'recovered'!
buttonCancelActivate: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    (self) close.
    ^self
! !

"ASDBase.ic method 0x20070090; bytecode file offset 0x96cb7c"
!SGChoiceDataDialog methodsFor: 'recovered'!
datas
    | recoveredValue0 |
    recoveredValue0 := datas.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200c6648; bytecode file offset 0x9c3164"
!SGChoiceDataDialog methodsFor: 'recovered'!
datas: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    datas := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c9ce4; bytecode file offset 0x9c65cc"
!SGChoiceDataDialog methodsFor: 'recovered'!
dataListVisual: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg3.
    recoveredValue1 := recoveredArg3.
    recoveredValue2 := (recoveredValue1) item.
    recoveredValue3 := (self) printName: (recoveredValue2).
    (recoveredValue0) label: (recoveredValue3).
    ^self
! !

"ASDBase.ic method 0x200e34ac; bytecode file offset 0x9dfda8"
!SGChoiceDataDialog methodsFor: 'recovered'!
initializeAfterCreate
    (self) setShellSize.
    (self) grayBackground.
    (self) updateFonts.
    ^self
! !

"ASDBase.ic method 0x201eef2c; bytecode file offset 0xaeb7f4"
!SGChoiceDataDialog methodsFor: 'recovered'!
buttonOkActivate: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetDataList.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) selectedItems.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := (recoveredStack0) isEmpty.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            result := recoveredStack0.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredPC := 24.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetDataList.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := (recoveredStack0) selectedItems.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := (recoveredStack0) first.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            result := recoveredStack0.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            (recoveredStack0) close.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2023bbac; bytecode file offset 0xb38488"
!SGChoiceDataDialog methodsFor: 'recovered'!
prompt
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0) shellIsClosed: (recoveredStack1).
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack0) open.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) shell.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) osWidget.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack0) setAppModal.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredPC := 22.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := OSWidget.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            (recoveredStack0) readAndDispatch.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := (recoveredStack0) shell.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := (recoveredStack0) isDestroyed.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := shellIsClosed.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := (recoveredStack0) | (recoveredStack1).
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 32] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack0 := (recoveredStack0) result.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2063f910; bytecode file offset 0xf3c2e4"
!SGChoiceDataDialog methodsFor: 'recovered'!
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
    | recoveredBlock25Value0 recoveredBlock25Value1 recoveredBlock25Value2 recoveredBlock25Value3 recoveredBlock25Value4 recoveredBlock25Value5 recoveredBlock25Value6 recoveredBlock25Value7 recoveredBlock25Value8 recoveredBlock25Value9 recoveredBlock25Value10 recoveredBlock25Value11 recoveredBlock25Value12 recoveredBlock25Value13 recoveredBlock25Value14 recoveredBlock25Value15 recoveredBlock25Value16 recoveredBlock25Value17 recoveredBlock25Value18 |
    recoveredBlock25Value0 := recoveredBlock25Arg1.
    recoveredBlock25Value1 := recoveredBlock25Value0.
    (recoveredBlock25Value1) allowShellResize: (true).
    recoveredBlock25Value2 := recoveredBlock25Value0.
    recoveredBlock25Value3 := MWMDECORALL.
    recoveredBlock25Value4 := MWMDECORMENU.
    recoveredBlock25Value5 := (recoveredBlock25Value3) | (recoveredBlock25Value4).
    recoveredBlock25Value6 := MWMDECORMINIMIZE.
    recoveredBlock25Value7 := (recoveredBlock25Value5) | (recoveredBlock25Value6).
    recoveredBlock25Value8 := MWMDECORMAXIMIZE.
    recoveredBlock25Value9 := (recoveredBlock25Value7) | (recoveredBlock25Value8).
    (recoveredBlock25Value2) mwmDecorations: (recoveredBlock25Value9).
    recoveredBlock25Value10 := recoveredBlock25Value0.
    (recoveredBlock25Value10) title: ('Choice Segmentvariable').
    recoveredBlock25Value11 := recoveredBlock25Value0.
    recoveredBlock25Value12 := recoveredLocal9.
    recoveredBlock25Value13 := (200) * (recoveredBlock25Value12).
    recoveredBlock25Value14 := (recoveredBlock25Value13) rounded.
    (recoveredBlock25Value11) height: (recoveredBlock25Value14).
    recoveredBlock25Value15 := recoveredLocal10.
    recoveredBlock25Value16 := (232) * (recoveredBlock25Value15).
    recoveredBlock25Value17 := (recoveredBlock25Value16) rounded.
    recoveredBlock25Value18 := (recoveredBlock25Value0) width: (recoveredBlock25Value17).
    recoveredBlock25Value18
].
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack1 := (recoveredStack1) createDialogShell: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredLocal8 := recoveredStack1.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack1 := recoveredLocal11.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredStack2 := 'aDialogShell1'.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredStack3 := recoveredLocal8.
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack1 := recoveredLocal8.
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            recoveredStack2 := 'aMainWindow1'.
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            recoveredStack3 := nil.
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            recoveredStack1 := (recoveredStack1) createMainWindow: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            recoveredLocal7 := recoveredStack1.
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            recoveredStack1 := recoveredLocal11.
            recoveredPC := 114.
        ].
        recoveredStep = 114 ifTrue: [
            recoveredStack2 := 'aMainWindow1'.
            recoveredPC := 116.
        ].
        recoveredStep = 116 ifTrue: [
            recoveredStack3 := recoveredLocal7.
            recoveredPC := 119.
        ].
        recoveredStep = 119 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 121.
        ].
        recoveredStep = 121 ifTrue: [
            recoveredStack1 := recoveredLocal7.
            recoveredPC := 124.
        ].
        recoveredStep = 124 ifTrue: [
            recoveredStack2 := 'aForm1'.
            recoveredPC := 126.
        ].
        recoveredStep = 126 ifTrue: [
            recoveredStack3 := nil.
            recoveredPC := 127.
        ].
        recoveredStep = 127 ifTrue: [
            recoveredStack1 := (recoveredStack1) createForm: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 129.
        ].
        recoveredStep = 129 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 131.
        ].
        recoveredStep = 131 ifTrue: [
            recoveredLocal6 := recoveredStack1.
            recoveredPC := 134.
        ].
        recoveredStep = 134 ifTrue: [
            recoveredStack1 := recoveredLocal11.
            recoveredPC := 137.
        ].
        recoveredStep = 137 ifTrue: [
            recoveredStack2 := 'aForm1'.
            recoveredPC := 139.
        ].
        recoveredStep = 139 ifTrue: [
            recoveredStack3 := recoveredLocal6.
            recoveredPC := 142.
        ].
        recoveredStep = 142 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 144.
        ].
        recoveredStep = 144 ifTrue: [
            recoveredStack1 := recoveredLocal6.
            recoveredPC := 147.
        ].
        recoveredStep = 147 ifTrue: [
            recoveredStack2 := 'aLabel1'.
            recoveredPC := 149.
        ].
        recoveredStep = 149 ifTrue: [
            recoveredStack3 := [:recoveredBlock149Arg1 | 
    | recoveredBlock149Value0 recoveredBlock149Value1 recoveredBlock149Value2 recoveredBlock149Value3 recoveredBlock149Value4 recoveredBlock149Value5 recoveredBlock149Value6 recoveredBlock149Value7 recoveredBlock149Value8 recoveredBlock149Value9 recoveredBlock149Value10 recoveredBlock149Value11 |
    recoveredBlock149Value0 := recoveredBlock149Arg1.
    recoveredBlock149Value1 := recoveredBlock149Value0.
    recoveredBlock149Value2 := recoveredLocal10.
    recoveredBlock149Value3 := (5) * (recoveredBlock149Value2).
    recoveredBlock149Value4 := (recoveredBlock149Value3) rounded.
    (recoveredBlock149Value1) x: (recoveredBlock149Value4).
    recoveredBlock149Value5 := recoveredBlock149Value0.
    (recoveredBlock149Value5) labelString: ('Variables').
    recoveredBlock149Value6 := recoveredBlock149Value0.
    recoveredBlock149Value7 := recoveredLocal9.
    recoveredBlock149Value8 := (4) * (recoveredBlock149Value7).
    recoveredBlock149Value9 := (recoveredBlock149Value8) rounded.
    (recoveredBlock149Value6) y: (recoveredBlock149Value9).
    recoveredBlock149Value10 := recoveredBlock149Value0.
    recoveredBlock149Value11 := (self) defaultLabelBlue.
    (recoveredBlock149Value10) foregroundColor: (recoveredBlock149Value11).
    recoveredBlock149Value0
].
            recoveredPC := 191.
        ].
        recoveredStep = 191 ifTrue: [
            recoveredStack1 := (recoveredStack1) createLabel: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 193.
        ].
        recoveredStep = 193 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 195.
        ].
        recoveredStep = 195 ifTrue: [
            recoveredLocal5 := recoveredStack1.
            recoveredPC := 198.
        ].
        recoveredStep = 198 ifTrue: [
            recoveredStack1 := recoveredLocal11.
            recoveredPC := 201.
        ].
        recoveredStep = 201 ifTrue: [
            recoveredStack2 := 'aLabel1'.
            recoveredPC := 203.
        ].
        recoveredStep = 203 ifTrue: [
            recoveredStack3 := recoveredLocal5.
            recoveredPC := 206.
        ].
        recoveredStep = 206 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 208.
        ].
        recoveredStep = 208 ifTrue: [
            recoveredStack1 := recoveredLocal6.
            recoveredPC := 211.
        ].
        recoveredStep = 211 ifTrue: [
            recoveredStack2 := 'buttonCancel'.
            recoveredPC := 213.
        ].
        recoveredStep = 213 ifTrue: [
            recoveredStack3 := [:recoveredBlock213Arg1 | 
    | recoveredBlock213Value0 recoveredBlock213Value1 recoveredBlock213Value2 recoveredBlock213Value3 recoveredBlock213Value4 recoveredBlock213Value5 recoveredBlock213Value6 recoveredBlock213Value7 recoveredBlock213Value8 recoveredBlock213Value9 recoveredBlock213Value10 recoveredBlock213Value11 recoveredBlock213Value12 recoveredBlock213Value13 recoveredBlock213Value14 recoveredBlock213Value15 recoveredBlock213Value16 recoveredBlock213Value17 |
    recoveredBlock213Value0 := recoveredBlock213Arg1.
    recoveredBlock213Value1 := recoveredBlock213Value0.
    recoveredBlock213Value2 := recoveredLocal10.
    recoveredBlock213Value3 := (131) * (recoveredBlock213Value2).
    recoveredBlock213Value4 := (recoveredBlock213Value3) rounded.
    (recoveredBlock213Value1) x: (recoveredBlock213Value4).
    recoveredBlock213Value5 := recoveredBlock213Value0.
    (recoveredBlock213Value5) labelString: ('Cancel').
    recoveredBlock213Value6 := recoveredBlock213Value0.
    recoveredBlock213Value7 := recoveredLocal9.
    recoveredBlock213Value8 := (169) * (recoveredBlock213Value7).
    recoveredBlock213Value9 := (recoveredBlock213Value8) rounded.
    (recoveredBlock213Value6) y: (recoveredBlock213Value9).
    recoveredBlock213Value10 := recoveredBlock213Value0.
    recoveredBlock213Value11 := recoveredLocal9.
    recoveredBlock213Value12 := (25) * (recoveredBlock213Value11).
    recoveredBlock213Value13 := (recoveredBlock213Value12) rounded.
    (recoveredBlock213Value10) height: (recoveredBlock213Value13).
    recoveredBlock213Value14 := recoveredLocal10.
    recoveredBlock213Value15 := (80) * (recoveredBlock213Value14).
    recoveredBlock213Value16 := (recoveredBlock213Value15) rounded.
    recoveredBlock213Value17 := (recoveredBlock213Value0) width: (recoveredBlock213Value16).
    recoveredBlock213Value17
].
            recoveredPC := 275.
        ].
        recoveredStep = 275 ifTrue: [
            recoveredStack1 := (recoveredStack1) createPushButton: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 277.
        ].
        recoveredStep = 277 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 279.
        ].
        recoveredStep = 279 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 282.
        ].
        recoveredStep = 282 ifTrue: [
            recoveredStack1 := recoveredLocal11.
            recoveredPC := 285.
        ].
        recoveredStep = 285 ifTrue: [
            recoveredStack2 := 'buttonCancel'.
            recoveredPC := 287.
        ].
        recoveredStep = 287 ifTrue: [
            recoveredStack3 := recoveredLocal4.
            recoveredPC := 290.
        ].
        recoveredStep = 290 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 292.
        ].
        recoveredStep = 292 ifTrue: [
            recoveredStack1 := recoveredLocal6.
            recoveredPC := 295.
        ].
        recoveredStep = 295 ifTrue: [
            recoveredStack2 := 'buttonOk'.
            recoveredPC := 297.
        ].
        recoveredStep = 297 ifTrue: [
            recoveredStack3 := [:recoveredBlock297Arg1 | 
    | recoveredBlock297Value0 recoveredBlock297Value1 recoveredBlock297Value2 recoveredBlock297Value3 recoveredBlock297Value4 recoveredBlock297Value5 recoveredBlock297Value6 recoveredBlock297Value7 recoveredBlock297Value8 recoveredBlock297Value9 recoveredBlock297Value10 recoveredBlock297Value11 recoveredBlock297Value12 recoveredBlock297Value13 recoveredBlock297Value14 recoveredBlock297Value15 recoveredBlock297Value16 recoveredBlock297Value17 |
    recoveredBlock297Value0 := recoveredBlock297Arg1.
    recoveredBlock297Value1 := recoveredBlock297Value0.
    recoveredBlock297Value2 := recoveredLocal10.
    recoveredBlock297Value3 := (20) * (recoveredBlock297Value2).
    recoveredBlock297Value4 := (recoveredBlock297Value3) rounded.
    (recoveredBlock297Value1) x: (recoveredBlock297Value4).
    recoveredBlock297Value5 := recoveredBlock297Value0.
    (recoveredBlock297Value5) labelString: ('Ok').
    recoveredBlock297Value6 := recoveredBlock297Value0.
    recoveredBlock297Value7 := recoveredLocal9.
    recoveredBlock297Value8 := (169) * (recoveredBlock297Value7).
    recoveredBlock297Value9 := (recoveredBlock297Value8) rounded.
    (recoveredBlock297Value6) y: (recoveredBlock297Value9).
    recoveredBlock297Value10 := recoveredBlock297Value0.
    recoveredBlock297Value11 := recoveredLocal9.
    recoveredBlock297Value12 := (25) * (recoveredBlock297Value11).
    recoveredBlock297Value13 := (recoveredBlock297Value12) rounded.
    (recoveredBlock297Value10) height: (recoveredBlock297Value13).
    recoveredBlock297Value14 := recoveredLocal10.
    recoveredBlock297Value15 := (80) * (recoveredBlock297Value14).
    recoveredBlock297Value16 := (recoveredBlock297Value15) rounded.
    recoveredBlock297Value17 := (recoveredBlock297Value0) width: (recoveredBlock297Value16).
    recoveredBlock297Value17
].
            recoveredPC := 357.
        ].
        recoveredStep = 357 ifTrue: [
            recoveredStack1 := (recoveredStack1) createPushButton: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 359.
        ].
        recoveredStep = 359 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 361.
        ].
        recoveredStep = 361 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 364.
        ].
        recoveredStep = 364 ifTrue: [
            recoveredStack1 := recoveredLocal11.
            recoveredPC := 367.
        ].
        recoveredStep = 367 ifTrue: [
            recoveredStack2 := 'buttonOk'.
            recoveredPC := 369.
        ].
        recoveredStep = 369 ifTrue: [
            recoveredStack3 := recoveredLocal3.
            recoveredPC := 372.
        ].
        recoveredStep = 372 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 374.
        ].
        recoveredStep = 374 ifTrue: [
            recoveredStack1 := recoveredLocal6.
            recoveredPC := 377.
        ].
        recoveredStep = 377 ifTrue: [
            recoveredStack2 := 'dataList'.
            recoveredPC := 379.
        ].
        recoveredStep = 379 ifTrue: [
            recoveredStack3 := [:recoveredBlock379Arg1 | 
    | recoveredBlock379Value0 recoveredBlock379Value1 recoveredBlock379Value2 recoveredBlock379Value3 |
    recoveredBlock379Value0 := recoveredBlock379Arg1.
    recoveredBlock379Value1 := recoveredBlock379Value0.
    recoveredBlock379Value2 := (self) datas.
    (recoveredBlock379Value1) items: (recoveredBlock379Value2).
    recoveredBlock379Value3 := (recoveredBlock379Value0) itemHeight: (15).
    recoveredBlock379Value3
].
            recoveredPC := 398.
        ].
        recoveredStep = 398 ifTrue: [
            recoveredStack1 := (recoveredStack1) createEtasScrolledIconTree: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 400.
        ].
        recoveredStep = 400 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 402.
        ].
        recoveredStep = 402 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 405.
        ].
        recoveredStep = 405 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 408.
        ].
        recoveredStep = 408 ifTrue: [
            recoveredStack1 := (recoveredStack1) parent.
            recoveredPC := 410.
        ].
        recoveredStep = 410 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 413.
        ].
        recoveredStep = 413 ifTrue: [
            recoveredStack1 := recoveredLocal11.
            recoveredPC := 416.
        ].
        recoveredStep = 416 ifTrue: [
            recoveredStack2 := 'aScrolled1'.
            recoveredPC := 418.
        ].
        recoveredStep = 418 ifTrue: [
            recoveredStack3 := recoveredLocal2.
            recoveredPC := 421.
        ].
        recoveredStep = 421 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 423.
        ].
        recoveredStep = 423 ifTrue: [
            recoveredStack1 := recoveredLocal11.
            recoveredPC := 426.
        ].
        recoveredStep = 426 ifTrue: [
            recoveredStack2 := 'dataList'.
            recoveredPC := 428.
        ].
        recoveredStep = 428 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 431.
        ].
        recoveredStep = 431 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 433.
        ].
        recoveredStep = 433 ifTrue: [
            recoveredStack1 := recoveredLocal7.
            recoveredPC := 436.
        ].
        recoveredStep = 436 ifTrue: [
            recoveredStack2 := [:recoveredBlock436Arg1 | 
    | recoveredBlock436Value0 recoveredBlock436Value1 recoveredBlock436Value2 |
    recoveredBlock436Value0 := recoveredBlock436Arg1.
    recoveredBlock436Value1 := recoveredLocal6.
    recoveredBlock436Value2 := (recoveredBlock436Value0) workWindow: (recoveredBlock436Value1).
    recoveredBlock436Value2
].
            recoveredPC := 449.
        ].
        recoveredStep = 449 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 451.
        ].
        recoveredStep = 451 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 454.
        ].
        recoveredStep = 454 ifTrue: [
            recoveredStack2 := [:block28121d2cArg1 | 
    | block28121d2cValue0 block28121d2cValue1 block28121d2cValue2 block28121d2cValue3 block28121d2cValue4 block28121d2cValue5 block28121d2cValue6 |
    block28121d2cValue0 := block28121d2cArg1.
    block28121d2cValue1 := block28121d2cValue0.
    block28121d2cValue2 := XmATTACHFORM.
    (block28121d2cValue1) bottomAttachment: (block28121d2cValue2).
    block28121d2cValue3 := block28121d2cValue0.
    (block28121d2cValue3) bottomOffset: (5).
    block28121d2cValue4 := block28121d2cValue0.
    block28121d2cValue5 := XmATTACHFORM.
    (block28121d2cValue4) rightAttachment: (block28121d2cValue5).
    block28121d2cValue6 := (block28121d2cValue0) rightOffset: (20).
    block28121d2cValue6
].
            recoveredPC := 456.
        ].
        recoveredStep = 456 ifTrue: [
            recoveredPC := 481.
        ].
        recoveredStep = 481 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 483.
        ].
        recoveredStep = 483 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 486.
        ].
        recoveredStep = 486 ifTrue: [
            recoveredStack2 := [:block28121d50Arg1 | 
    | block28121d50Value0 block28121d50Value1 block28121d50Value2 block28121d50Value3 block28121d50Value4 block28121d50Value5 block28121d50Value6 |
    block28121d50Value0 := block28121d50Arg1.
    block28121d50Value1 := block28121d50Value0.
    block28121d50Value2 := XmATTACHFORM.
    (block28121d50Value1) bottomAttachment: (block28121d50Value2).
    block28121d50Value3 := block28121d50Value0.
    (block28121d50Value3) bottomOffset: (5).
    block28121d50Value4 := block28121d50Value0.
    block28121d50Value5 := XmATTACHFORM.
    (block28121d50Value4) leftAttachment: (block28121d50Value5).
    block28121d50Value6 := (block28121d50Value0) leftOffset: (20).
    block28121d50Value6
].
            recoveredPC := 490.
        ].
        recoveredStep = 490 ifTrue: [
            recoveredPC := 520.
        ].
        recoveredStep = 520 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 522.
        ].
        recoveredStep = 522 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 525.
        ].
        recoveredStep = 525 ifTrue: [
            recoveredStack2 := [:recoveredBlock525Arg1 | 
    | recoveredBlock525Value0 recoveredBlock525Value1 recoveredBlock525Value2 recoveredBlock525Value3 recoveredBlock525Value4 recoveredBlock525Value5 recoveredBlock525Value6 recoveredBlock525Value7 recoveredBlock525Value8 recoveredBlock525Value9 recoveredBlock525Value10 recoveredBlock525Value11 recoveredBlock525Value12 recoveredBlock525Value13 recoveredBlock525Value14 recoveredBlock525Value15 recoveredBlock525Value16 recoveredBlock525Value17 recoveredBlock525Value18 recoveredBlock525Value19 recoveredBlock525Value20 recoveredBlock525Value21 recoveredBlock525Value22 recoveredBlock525Value23 recoveredBlock525Value24 recoveredBlock525Value25 recoveredBlock525Value26 recoveredBlock525Value27 recoveredBlock525Value28 recoveredBlock525Value29 recoveredBlock525Value30 |
    recoveredBlock525Value0 := recoveredBlock525Arg1.
    recoveredBlock525Value1 := recoveredBlock525Value0.
    recoveredBlock525Value2 := XmATTACHFORM.
    (recoveredBlock525Value1) bottomAttachment: (recoveredBlock525Value2).
    recoveredBlock525Value3 := recoveredBlock525Value0.
    (recoveredBlock525Value3) bottomOffset: (40).
    recoveredBlock525Value4 := recoveredBlock525Value0.
    recoveredBlock525Value5 := XmATTACHFORM.
    (recoveredBlock525Value4) topAttachment: (recoveredBlock525Value5).
    recoveredBlock525Value6 := recoveredBlock525Value0.
    (recoveredBlock525Value6) topOffset: (25).
    recoveredBlock525Value7 := recoveredBlock525Value0.
    recoveredBlock525Value8 := XmATTACHFORM.
    (recoveredBlock525Value7) leftAttachment: (recoveredBlock525Value8).
    recoveredBlock525Value9 := recoveredBlock525Value0.
    (recoveredBlock525Value9) leftOffset: (5).
    recoveredBlock525Value10 := recoveredBlock525Value0.
    recoveredBlock525Value11 := XmATTACHFORM.
    (recoveredBlock525Value10) rightAttachment: (recoveredBlock525Value11).
    recoveredBlock525Value12 := recoveredBlock525Value0.
    (recoveredBlock525Value12) rightOffset: (5).
    recoveredBlock525Value13 := recoveredBlock525Value0.
    recoveredBlock525Value14 := recoveredLocal10.
    recoveredBlock525Value15 := (5) * (recoveredBlock525Value14).
    recoveredBlock525Value16 := (recoveredBlock525Value15) rounded.
    (recoveredBlock525Value13) x: (recoveredBlock525Value16).
    recoveredBlock525Value17 := recoveredBlock525Value0.
    recoveredBlock525Value18 := recoveredLocal9.
    recoveredBlock525Value19 := (25) * (recoveredBlock525Value18).
    recoveredBlock525Value20 := (recoveredBlock525Value19) rounded.
    (recoveredBlock525Value17) y: (recoveredBlock525Value20).
    recoveredBlock525Value21 := recoveredBlock525Value0.
    recoveredBlock525Value22 := XmASNEEDED.
    (recoveredBlock525Value21) scrollBarDisplayPolicy: (recoveredBlock525Value22).
    recoveredBlock525Value23 := recoveredBlock525Value0.
    recoveredBlock525Value24 := recoveredLocal9.
    recoveredBlock525Value25 := (135) * (recoveredBlock525Value24).
    recoveredBlock525Value26 := (recoveredBlock525Value25) rounded.
    (recoveredBlock525Value23) height: (recoveredBlock525Value26).
    recoveredBlock525Value27 := recoveredLocal10.
    recoveredBlock525Value28 := (222) * (recoveredBlock525Value27).
    recoveredBlock525Value29 := (recoveredBlock525Value28) rounded.
    recoveredBlock525Value30 := (recoveredBlock525Value0) width: (recoveredBlock525Value29).
    recoveredBlock525Value30
].
            recoveredPC := 633.
        ].
        recoveredStep = 633 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 635.
        ].
        recoveredStep = 635 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 638.
        ].
        recoveredStep = 638 ifTrue: [
            recoveredStack2 := XmNactivateCallback.
            recoveredPC := 642.
        ].
        recoveredStep = 642 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 643.
        ].
        recoveredStep = 643 ifTrue: [
            recoveredStack4 := 'buttonCancelActivate:clientData:callData:'.
            recoveredPC := 646.
        ].
        recoveredStep = 646 ifTrue: [
            recoveredStack5 := nil.
            recoveredPC := 647.
        ].
        recoveredStep = 647 ifTrue: [
            (recoveredStack1) addCallback: (recoveredStack2) receiver: (recoveredStack3) selector: (recoveredStack4) clientData: (recoveredStack5).
            recoveredPC := 651.
        ].
        recoveredStep = 651 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 654.
        ].
        recoveredStep = 654 ifTrue: [
            recoveredStack2 := XmNactivateCallback.
            recoveredPC := 658.
        ].
        recoveredStep = 658 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 659.
        ].
        recoveredStep = 659 ifTrue: [
            recoveredStack4 := 'buttonOkActivate:clientData:callData:'.
            recoveredPC := 662.
        ].
        recoveredStep = 662 ifTrue: [
            recoveredStack5 := nil.
            recoveredPC := 663.
        ].
        recoveredStep = 663 ifTrue: [
            (recoveredStack1) addCallback: (recoveredStack2) receiver: (recoveredStack3) selector: (recoveredStack4) clientData: (recoveredStack5).
            recoveredPC := 667.
        ].
        recoveredStep = 667 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 670.
        ].
        recoveredStep = 670 ifTrue: [
            recoveredStack2 := XmNvisualInfoCallback.
            recoveredPC := 674.
        ].
        recoveredStep = 674 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 675.
        ].
        recoveredStep = 675 ifTrue: [
            recoveredStack4 := 'dataListVisual:clientData:callData:'.
            recoveredPC := 678.
        ].
        recoveredStep = 678 ifTrue: [
            recoveredStack5 := nil.
            recoveredPC := 679.
        ].
        recoveredStep = 679 ifTrue: [
            (recoveredStack1) addCallback: (recoveredStack2) receiver: (recoveredStack3) selector: (recoveredStack4) clientData: (recoveredStack5).
            recoveredPC := 683.
        ].
        recoveredStep = 683 ifTrue: [
            recoveredStack1 := Array.
            recoveredPC := 686.
        ].
        recoveredStep = 686 ifTrue: [
            recoveredStack2 := recoveredLocal11.
            recoveredPC := 689.
        ].
        recoveredStep = 689 ifTrue: [
            recoveredStack3 := recoveredLocal7.
            recoveredPC := 692.
        ].
        recoveredStep = 692 ifTrue: [
            recoveredStack1 := (recoveredStack1) with: (recoveredStack2) with: (recoveredStack3).
            recoveredPC := 697.
        ].
        recoveredStep = 697 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

