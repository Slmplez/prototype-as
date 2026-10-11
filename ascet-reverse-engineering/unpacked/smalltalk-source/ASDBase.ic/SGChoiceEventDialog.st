"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2003879c; bytecode file offset 0x935c54"
!SGChoiceEventDialog methodsFor: 'recovered'!
printName: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) name.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20045bac; bytecode file offset 0x9451f8"
!SGChoiceEventDialog methodsFor: 'recovered'!
widgetEventList
    | recoveredValue0 |
    recoveredValue0 := (self) widgetAt: ('eventList').
    ^recoveredValue0
! !

"ASDBase.ic method 0x2005a9a4; bytecode file offset 0x957a6c"
!SGChoiceEventDialog methodsFor: 'recovered'!
buttonCancelActivate: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    (self) close.
    ^self
! !

"ASDBase.ic method 0x20070228; bytecode file offset 0x96cb7c"
!SGChoiceEventDialog methodsFor: 'recovered'!
events
    | recoveredValue0 |
    recoveredValue0 := events.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200a09b0; bytecode file offset 0x99d3ac"
!SGChoiceEventDialog methodsFor: 'recovered'!
initializeAfterCreate
    (self) setShellSize.
    (self) grayBackground.
    ^self
! !

"ASDBase.ic method 0x200c6778; bytecode file offset 0x9c3164"
!SGChoiceEventDialog methodsFor: 'recovered'!
events: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    events := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c9b90; bytecode file offset 0x9c65cc"
!SGChoiceEventDialog methodsFor: 'recovered'!
eventListVisual: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg3.
    recoveredValue1 := recoveredArg3.
    recoveredValue2 := (recoveredValue1) item.
    recoveredValue3 := (self) printName: (recoveredValue2).
    (recoveredValue0) label: (recoveredValue3).
    ^self
! !

"ASDBase.ic method 0x201e0754; bytecode file offset 0xadd018"
!SGChoiceEventDialog methodsFor: 'recovered'!
buttonOkActivate: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetEventList.
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
            recoveredPC := 23.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetEventList.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := (recoveredStack0) selectedItems.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            result := recoveredStack0.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            (recoveredStack0) close.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2063b560; bytecode file offset 0xf37f24"
!SGChoiceEventDialog methodsFor: 'recovered'!
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
    | recoveredBlock25Value0 recoveredBlock25Value1 recoveredBlock25Value2 recoveredBlock25Value3 recoveredBlock25Value4 recoveredBlock25Value5 recoveredBlock25Value6 recoveredBlock25Value7 recoveredBlock25Value8 recoveredBlock25Value9 recoveredBlock25Value10 |
    recoveredBlock25Value0 := recoveredBlock25Arg1.
    recoveredBlock25Value1 := recoveredBlock25Value0.
    (recoveredBlock25Value1) allowShellResize: (true).
    recoveredBlock25Value2 := recoveredBlock25Value0.
    (recoveredBlock25Value2) title: ('Choice Event').
    recoveredBlock25Value3 := recoveredBlock25Value0.
    recoveredBlock25Value4 := recoveredLocal9.
    recoveredBlock25Value5 := (200) * (recoveredBlock25Value4).
    recoveredBlock25Value6 := (recoveredBlock25Value5) rounded.
    (recoveredBlock25Value3) height: (recoveredBlock25Value6).
    recoveredBlock25Value7 := recoveredLocal10.
    recoveredBlock25Value8 := (232) * (recoveredBlock25Value7).
    recoveredBlock25Value9 := (recoveredBlock25Value8) rounded.
    recoveredBlock25Value10 := (recoveredBlock25Value0) width: (recoveredBlock25Value9).
    recoveredBlock25Value10
].
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack1 := (recoveredStack1) createDialogShell: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredLocal8 := recoveredStack1.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack1 := recoveredLocal11.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack2 := 'aDialogShell1'.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack3 := recoveredLocal8.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack1 := recoveredLocal8.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack2 := 'aMainWindow1'.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredStack3 := nil.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack1 := (recoveredStack1) createMainWindow: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredLocal7 := recoveredStack1.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredStack1 := recoveredLocal11.
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack2 := 'aMainWindow1'.
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack3 := recoveredLocal7.
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            recoveredStack1 := recoveredLocal7.
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            recoveredStack2 := 'aForm1'.
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            recoveredStack3 := nil.
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            recoveredStack1 := (recoveredStack1) createForm: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            recoveredLocal6 := recoveredStack1.
            recoveredPC := 116.
        ].
        recoveredStep = 116 ifTrue: [
            recoveredStack1 := recoveredLocal11.
            recoveredPC := 119.
        ].
        recoveredStep = 119 ifTrue: [
            recoveredStack2 := 'aForm1'.
            recoveredPC := 121.
        ].
        recoveredStep = 121 ifTrue: [
            recoveredStack3 := recoveredLocal6.
            recoveredPC := 124.
        ].
        recoveredStep = 124 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 126.
        ].
        recoveredStep = 126 ifTrue: [
            recoveredStack1 := recoveredLocal6.
            recoveredPC := 129.
        ].
        recoveredStep = 129 ifTrue: [
            recoveredStack2 := 'buttonCancel'.
            recoveredPC := 131.
        ].
        recoveredStep = 131 ifTrue: [
            recoveredStack3 := [:recoveredBlock131Arg1 | 
    | recoveredBlock131Value0 recoveredBlock131Value1 recoveredBlock131Value2 recoveredBlock131Value3 recoveredBlock131Value4 recoveredBlock131Value5 recoveredBlock131Value6 recoveredBlock131Value7 recoveredBlock131Value8 recoveredBlock131Value9 recoveredBlock131Value10 recoveredBlock131Value11 recoveredBlock131Value12 recoveredBlock131Value13 recoveredBlock131Value14 recoveredBlock131Value15 recoveredBlock131Value16 recoveredBlock131Value17 |
    recoveredBlock131Value0 := recoveredBlock131Arg1.
    recoveredBlock131Value1 := recoveredBlock131Value0.
    recoveredBlock131Value2 := recoveredLocal10.
    recoveredBlock131Value3 := (131) * (recoveredBlock131Value2).
    recoveredBlock131Value4 := (recoveredBlock131Value3) rounded.
    (recoveredBlock131Value1) x: (recoveredBlock131Value4).
    recoveredBlock131Value5 := recoveredBlock131Value0.
    (recoveredBlock131Value5) labelString: ('Cancel').
    recoveredBlock131Value6 := recoveredBlock131Value0.
    recoveredBlock131Value7 := recoveredLocal9.
    recoveredBlock131Value8 := (169) * (recoveredBlock131Value7).
    recoveredBlock131Value9 := (recoveredBlock131Value8) rounded.
    (recoveredBlock131Value6) y: (recoveredBlock131Value9).
    recoveredBlock131Value10 := recoveredBlock131Value0.
    recoveredBlock131Value11 := recoveredLocal9.
    recoveredBlock131Value12 := (25) * (recoveredBlock131Value11).
    recoveredBlock131Value13 := (recoveredBlock131Value12) rounded.
    (recoveredBlock131Value10) height: (recoveredBlock131Value13).
    recoveredBlock131Value14 := recoveredLocal10.
    recoveredBlock131Value15 := (80) * (recoveredBlock131Value14).
    recoveredBlock131Value16 := (recoveredBlock131Value15) rounded.
    recoveredBlock131Value17 := (recoveredBlock131Value0) width: (recoveredBlock131Value16).
    recoveredBlock131Value17
].
            recoveredPC := 193.
        ].
        recoveredStep = 193 ifTrue: [
            recoveredStack1 := (recoveredStack1) createPushButton: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 195.
        ].
        recoveredStep = 195 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 197.
        ].
        recoveredStep = 197 ifTrue: [
            recoveredLocal5 := recoveredStack1.
            recoveredPC := 200.
        ].
        recoveredStep = 200 ifTrue: [
            recoveredStack1 := recoveredLocal11.
            recoveredPC := 203.
        ].
        recoveredStep = 203 ifTrue: [
            recoveredStack2 := 'buttonCancel'.
            recoveredPC := 205.
        ].
        recoveredStep = 205 ifTrue: [
            recoveredStack3 := recoveredLocal5.
            recoveredPC := 208.
        ].
        recoveredStep = 208 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 210.
        ].
        recoveredStep = 210 ifTrue: [
            recoveredStack1 := recoveredLocal6.
            recoveredPC := 213.
        ].
        recoveredStep = 213 ifTrue: [
            recoveredStack2 := 'buttonOk'.
            recoveredPC := 215.
        ].
        recoveredStep = 215 ifTrue: [
            recoveredStack3 := [:recoveredBlock215Arg1 | 
    | recoveredBlock215Value0 recoveredBlock215Value1 recoveredBlock215Value2 recoveredBlock215Value3 recoveredBlock215Value4 recoveredBlock215Value5 recoveredBlock215Value6 recoveredBlock215Value7 recoveredBlock215Value8 recoveredBlock215Value9 recoveredBlock215Value10 recoveredBlock215Value11 recoveredBlock215Value12 recoveredBlock215Value13 recoveredBlock215Value14 recoveredBlock215Value15 recoveredBlock215Value16 recoveredBlock215Value17 |
    recoveredBlock215Value0 := recoveredBlock215Arg1.
    recoveredBlock215Value1 := recoveredBlock215Value0.
    recoveredBlock215Value2 := recoveredLocal10.
    recoveredBlock215Value3 := (20) * (recoveredBlock215Value2).
    recoveredBlock215Value4 := (recoveredBlock215Value3) rounded.
    (recoveredBlock215Value1) x: (recoveredBlock215Value4).
    recoveredBlock215Value5 := recoveredBlock215Value0.
    (recoveredBlock215Value5) labelString: ('Ok').
    recoveredBlock215Value6 := recoveredBlock215Value0.
    recoveredBlock215Value7 := recoveredLocal9.
    recoveredBlock215Value8 := (169) * (recoveredBlock215Value7).
    recoveredBlock215Value9 := (recoveredBlock215Value8) rounded.
    (recoveredBlock215Value6) y: (recoveredBlock215Value9).
    recoveredBlock215Value10 := recoveredBlock215Value0.
    recoveredBlock215Value11 := recoveredLocal9.
    recoveredBlock215Value12 := (25) * (recoveredBlock215Value11).
    recoveredBlock215Value13 := (recoveredBlock215Value12) rounded.
    (recoveredBlock215Value10) height: (recoveredBlock215Value13).
    recoveredBlock215Value14 := recoveredLocal10.
    recoveredBlock215Value15 := (80) * (recoveredBlock215Value14).
    recoveredBlock215Value16 := (recoveredBlock215Value15) rounded.
    recoveredBlock215Value17 := (recoveredBlock215Value0) width: (recoveredBlock215Value16).
    recoveredBlock215Value17
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
            recoveredStack2 := 'buttonOk'.
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
            recoveredStack2 := 'aLabel1'.
            recoveredPC := 297.
        ].
        recoveredStep = 297 ifTrue: [
            recoveredStack3 := [:recoveredBlock297Arg1 | 
    | recoveredBlock297Value0 recoveredBlock297Value1 recoveredBlock297Value2 recoveredBlock297Value3 recoveredBlock297Value4 recoveredBlock297Value5 recoveredBlock297Value6 recoveredBlock297Value7 recoveredBlock297Value8 recoveredBlock297Value9 recoveredBlock297Value10 recoveredBlock297Value11 |
    recoveredBlock297Value0 := recoveredBlock297Arg1.
    recoveredBlock297Value1 := recoveredBlock297Value0.
    recoveredBlock297Value2 := recoveredLocal10.
    recoveredBlock297Value3 := (5) * (recoveredBlock297Value2).
    recoveredBlock297Value4 := (recoveredBlock297Value3) rounded.
    (recoveredBlock297Value1) x: (recoveredBlock297Value4).
    recoveredBlock297Value5 := recoveredBlock297Value0.
    (recoveredBlock297Value5) labelString: ('Events').
    recoveredBlock297Value6 := recoveredBlock297Value0.
    recoveredBlock297Value7 := recoveredLocal9.
    recoveredBlock297Value8 := (4) * (recoveredBlock297Value7).
    recoveredBlock297Value9 := (recoveredBlock297Value8) rounded.
    (recoveredBlock297Value6) y: (recoveredBlock297Value9).
    recoveredBlock297Value10 := recoveredBlock297Value0.
    recoveredBlock297Value11 := (self) defaultLabelBlue.
    (recoveredBlock297Value10) foregroundColor: (recoveredBlock297Value11).
    recoveredBlock297Value0
].
            recoveredPC := 339.
        ].
        recoveredStep = 339 ifTrue: [
            recoveredStack1 := (recoveredStack1) createLabel: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 341.
        ].
        recoveredStep = 341 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 343.
        ].
        recoveredStep = 343 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 346.
        ].
        recoveredStep = 346 ifTrue: [
            recoveredStack1 := recoveredLocal11.
            recoveredPC := 349.
        ].
        recoveredStep = 349 ifTrue: [
            recoveredStack2 := 'aLabel1'.
            recoveredPC := 351.
        ].
        recoveredStep = 351 ifTrue: [
            recoveredStack3 := recoveredLocal3.
            recoveredPC := 354.
        ].
        recoveredStep = 354 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 356.
        ].
        recoveredStep = 356 ifTrue: [
            recoveredStack1 := recoveredLocal6.
            recoveredPC := 359.
        ].
        recoveredStep = 359 ifTrue: [
            recoveredStack2 := 'eventList'.
            recoveredPC := 361.
        ].
        recoveredStep = 361 ifTrue: [
            recoveredStack3 := [:recoveredBlock361Arg1 | 
    | recoveredBlock361Value0 recoveredBlock361Value1 recoveredBlock361Value2 recoveredBlock361Value3 recoveredBlock361Value4 recoveredBlock361Value5 |
    recoveredBlock361Value0 := recoveredBlock361Arg1.
    recoveredBlock361Value1 := recoveredBlock361Value0.
    recoveredBlock361Value2 := (self) events.
    (recoveredBlock361Value1) items: (recoveredBlock361Value2).
    recoveredBlock361Value3 := recoveredBlock361Value0.
    recoveredBlock361Value4 := XmEXTENDEDSELECT.
    (recoveredBlock361Value3) selectionPolicy: (recoveredBlock361Value4).
    recoveredBlock361Value5 := (recoveredBlock361Value0) itemHeight: (15).
    recoveredBlock361Value5
].
            recoveredPC := 385.
        ].
        recoveredStep = 385 ifTrue: [
            recoveredStack1 := (recoveredStack1) createEtasScrolledIconTree: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 387.
        ].
        recoveredStep = 387 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 389.
        ].
        recoveredStep = 389 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 392.
        ].
        recoveredStep = 392 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 395.
        ].
        recoveredStep = 395 ifTrue: [
            recoveredStack1 := (recoveredStack1) parent.
            recoveredPC := 397.
        ].
        recoveredStep = 397 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 400.
        ].
        recoveredStep = 400 ifTrue: [
            recoveredStack1 := recoveredLocal11.
            recoveredPC := 403.
        ].
        recoveredStep = 403 ifTrue: [
            recoveredStack2 := 'aScrolled1'.
            recoveredPC := 405.
        ].
        recoveredStep = 405 ifTrue: [
            recoveredStack3 := recoveredLocal2.
            recoveredPC := 408.
        ].
        recoveredStep = 408 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 410.
        ].
        recoveredStep = 410 ifTrue: [
            recoveredStack1 := recoveredLocal11.
            recoveredPC := 413.
        ].
        recoveredStep = 413 ifTrue: [
            recoveredStack2 := 'eventList'.
            recoveredPC := 415.
        ].
        recoveredStep = 415 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 418.
        ].
        recoveredStep = 418 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 420.
        ].
        recoveredStep = 420 ifTrue: [
            recoveredStack1 := recoveredLocal7.
            recoveredPC := 423.
        ].
        recoveredStep = 423 ifTrue: [
            recoveredStack2 := [:recoveredBlock423Arg1 | 
    | recoveredBlock423Value0 recoveredBlock423Value1 recoveredBlock423Value2 |
    recoveredBlock423Value0 := recoveredBlock423Arg1.
    recoveredBlock423Value1 := recoveredLocal6.
    recoveredBlock423Value2 := (recoveredBlock423Value0) workWindow: (recoveredBlock423Value1).
    recoveredBlock423Value2
].
            recoveredPC := 437.
        ].
        recoveredStep = 437 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 439.
        ].
        recoveredStep = 439 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 442.
        ].
        recoveredStep = 442 ifTrue: [
            recoveredStack2 := [:block28121864Arg1 | 
    | block28121864Value0 block28121864Value1 block28121864Value2 block28121864Value3 block28121864Value4 block28121864Value5 block28121864Value6 |
    block28121864Value0 := block28121864Arg1.
    block28121864Value1 := block28121864Value0.
    block28121864Value2 := XmATTACHFORM.
    (block28121864Value1) bottomAttachment: (block28121864Value2).
    block28121864Value3 := block28121864Value0.
    (block28121864Value3) bottomOffset: (5).
    block28121864Value4 := block28121864Value0.
    block28121864Value5 := XmATTACHFORM.
    (block28121864Value4) rightAttachment: (block28121864Value5).
    block28121864Value6 := (block28121864Value0) rightOffset: (20).
    block28121864Value6
].
            recoveredPC := 444.
        ].
        recoveredStep = 444 ifTrue: [
            recoveredPC := 469.
        ].
        recoveredStep = 469 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 471.
        ].
        recoveredStep = 471 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 474.
        ].
        recoveredStep = 474 ifTrue: [
            recoveredStack2 := [:block28121888Arg1 | 
    | block28121888Value0 block28121888Value1 block28121888Value2 block28121888Value3 block28121888Value4 block28121888Value5 block28121888Value6 |
    block28121888Value0 := block28121888Arg1.
    block28121888Value1 := block28121888Value0.
    block28121888Value2 := XmATTACHFORM.
    (block28121888Value1) bottomAttachment: (block28121888Value2).
    block28121888Value3 := block28121888Value0.
    (block28121888Value3) bottomOffset: (5).
    block28121888Value4 := block28121888Value0.
    block28121888Value5 := XmATTACHFORM.
    (block28121888Value4) leftAttachment: (block28121888Value5).
    block28121888Value6 := (block28121888Value0) leftOffset: (20).
    block28121888Value6
].
            recoveredPC := 476.
        ].
        recoveredStep = 476 ifTrue: [
            recoveredPC := 501.
        ].
        recoveredStep = 501 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 503.
        ].
        recoveredStep = 503 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 506.
        ].
        recoveredStep = 506 ifTrue: [
            recoveredStack2 := [:recoveredBlock506Arg1 | 
    | recoveredBlock506Value0 recoveredBlock506Value1 recoveredBlock506Value2 recoveredBlock506Value3 recoveredBlock506Value4 recoveredBlock506Value5 recoveredBlock506Value6 recoveredBlock506Value7 recoveredBlock506Value8 recoveredBlock506Value9 recoveredBlock506Value10 recoveredBlock506Value11 recoveredBlock506Value12 recoveredBlock506Value13 recoveredBlock506Value14 recoveredBlock506Value15 recoveredBlock506Value16 recoveredBlock506Value17 recoveredBlock506Value18 recoveredBlock506Value19 recoveredBlock506Value20 recoveredBlock506Value21 recoveredBlock506Value22 recoveredBlock506Value23 recoveredBlock506Value24 recoveredBlock506Value25 recoveredBlock506Value26 recoveredBlock506Value27 recoveredBlock506Value28 recoveredBlock506Value29 recoveredBlock506Value30 |
    recoveredBlock506Value0 := recoveredBlock506Arg1.
    recoveredBlock506Value1 := recoveredBlock506Value0.
    recoveredBlock506Value2 := XmATTACHFORM.
    (recoveredBlock506Value1) bottomAttachment: (recoveredBlock506Value2).
    recoveredBlock506Value3 := recoveredBlock506Value0.
    (recoveredBlock506Value3) bottomOffset: (40).
    recoveredBlock506Value4 := recoveredBlock506Value0.
    recoveredBlock506Value5 := XmATTACHFORM.
    (recoveredBlock506Value4) topAttachment: (recoveredBlock506Value5).
    recoveredBlock506Value6 := recoveredBlock506Value0.
    (recoveredBlock506Value6) topOffset: (25).
    recoveredBlock506Value7 := recoveredBlock506Value0.
    recoveredBlock506Value8 := XmATTACHFORM.
    (recoveredBlock506Value7) leftAttachment: (recoveredBlock506Value8).
    recoveredBlock506Value9 := recoveredBlock506Value0.
    (recoveredBlock506Value9) leftOffset: (5).
    recoveredBlock506Value10 := recoveredBlock506Value0.
    recoveredBlock506Value11 := XmATTACHFORM.
    (recoveredBlock506Value10) rightAttachment: (recoveredBlock506Value11).
    recoveredBlock506Value12 := recoveredBlock506Value0.
    (recoveredBlock506Value12) rightOffset: (5).
    recoveredBlock506Value13 := recoveredBlock506Value0.
    recoveredBlock506Value14 := recoveredLocal10.
    recoveredBlock506Value15 := (5) * (recoveredBlock506Value14).
    recoveredBlock506Value16 := (recoveredBlock506Value15) rounded.
    (recoveredBlock506Value13) x: (recoveredBlock506Value16).
    recoveredBlock506Value17 := recoveredBlock506Value0.
    recoveredBlock506Value18 := recoveredLocal9.
    recoveredBlock506Value19 := (25) * (recoveredBlock506Value18).
    recoveredBlock506Value20 := (recoveredBlock506Value19) rounded.
    (recoveredBlock506Value17) y: (recoveredBlock506Value20).
    recoveredBlock506Value21 := recoveredBlock506Value0.
    recoveredBlock506Value22 := XmASNEEDED.
    (recoveredBlock506Value21) scrollBarDisplayPolicy: (recoveredBlock506Value22).
    recoveredBlock506Value23 := recoveredBlock506Value0.
    recoveredBlock506Value24 := recoveredLocal9.
    recoveredBlock506Value25 := (135) * (recoveredBlock506Value24).
    recoveredBlock506Value26 := (recoveredBlock506Value25) rounded.
    (recoveredBlock506Value23) height: (recoveredBlock506Value26).
    recoveredBlock506Value27 := recoveredLocal10.
    recoveredBlock506Value28 := (222) * (recoveredBlock506Value27).
    recoveredBlock506Value29 := (recoveredBlock506Value28) rounded.
    recoveredBlock506Value30 := (recoveredBlock506Value0) width: (recoveredBlock506Value29).
    recoveredBlock506Value30
].
            recoveredPC := 609.
        ].
        recoveredStep = 609 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 611.
        ].
        recoveredStep = 611 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 614.
        ].
        recoveredStep = 614 ifTrue: [
            recoveredStack2 := XmNactivateCallback.
            recoveredPC := 618.
        ].
        recoveredStep = 618 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 619.
        ].
        recoveredStep = 619 ifTrue: [
            recoveredStack4 := 'buttonCancelActivate:clientData:callData:'.
            recoveredPC := 622.
        ].
        recoveredStep = 622 ifTrue: [
            recoveredStack5 := nil.
            recoveredPC := 623.
        ].
        recoveredStep = 623 ifTrue: [
            (recoveredStack1) addCallback: (recoveredStack2) receiver: (recoveredStack3) selector: (recoveredStack4) clientData: (recoveredStack5).
            recoveredPC := 627.
        ].
        recoveredStep = 627 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 630.
        ].
        recoveredStep = 630 ifTrue: [
            recoveredStack2 := XmNactivateCallback.
            recoveredPC := 634.
        ].
        recoveredStep = 634 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 635.
        ].
        recoveredStep = 635 ifTrue: [
            recoveredStack4 := 'buttonOkActivate:clientData:callData:'.
            recoveredPC := 638.
        ].
        recoveredStep = 638 ifTrue: [
            recoveredStack5 := nil.
            recoveredPC := 639.
        ].
        recoveredStep = 639 ifTrue: [
            (recoveredStack1) addCallback: (recoveredStack2) receiver: (recoveredStack3) selector: (recoveredStack4) clientData: (recoveredStack5).
            recoveredPC := 643.
        ].
        recoveredStep = 643 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 646.
        ].
        recoveredStep = 646 ifTrue: [
            recoveredStack2 := XmNvisualInfoCallback.
            recoveredPC := 650.
        ].
        recoveredStep = 650 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 651.
        ].
        recoveredStep = 651 ifTrue: [
            recoveredStack4 := 'eventListVisual:clientData:callData:'.
            recoveredPC := 654.
        ].
        recoveredStep = 654 ifTrue: [
            recoveredStack5 := nil.
            recoveredPC := 655.
        ].
        recoveredStep = 655 ifTrue: [
            (recoveredStack1) addCallback: (recoveredStack2) receiver: (recoveredStack3) selector: (recoveredStack4) clientData: (recoveredStack5).
            recoveredPC := 659.
        ].
        recoveredStep = 659 ifTrue: [
            recoveredStack1 := Array.
            recoveredPC := 662.
        ].
        recoveredStep = 662 ifTrue: [
            recoveredStack2 := recoveredLocal11.
            recoveredPC := 665.
        ].
        recoveredStep = 665 ifTrue: [
            recoveredStack3 := recoveredLocal7.
            recoveredPC := 668.
        ].
        recoveredStep = 668 ifTrue: [
            recoveredStack1 := (recoveredStack1) with: (recoveredStack2) with: (recoveredStack3).
            recoveredPC := 673.
        ].
        recoveredStep = 673 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

