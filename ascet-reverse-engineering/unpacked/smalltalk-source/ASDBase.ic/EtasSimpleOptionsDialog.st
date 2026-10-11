"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2005a5b4; bytecode file offset 0x957a6c"
!EtasSimpleOptionsDialog methodsFor: 'recovered'!
okButtonActivate: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    (self) ok.
    ^self
! !

"ASDBase.ic method 0x2005aef0; bytecode file offset 0x957a6c"
!EtasSimpleOptionsDialog methodsFor: 'recovered'!
cancelButtonActivate: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    (self) cancel.
    ^self
! !

"ASDBase.ic method 0x20651f28; bytecode file offset 0xf4e8f4"
!EtasSimpleOptionsDialog methodsFor: 'recovered'!
createWidgetHierarchy: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredLocal6 recoveredLocal7 recoveredLocal8 recoveredLocal9 recoveredLocal10 recoveredLocal11 recoveredLocal12 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredPC recoveredStep |
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
            recoveredLocal12 := recoveredStack1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := 1.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredLocal11 := recoveredStack1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := 1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredLocal10 := recoveredStack1.
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
    recoveredBlock25Value3 := recoveredLocal10.
    recoveredBlock25Value4 := (300) * (recoveredBlock25Value3).
    recoveredBlock25Value5 := (recoveredBlock25Value4) rounded.
    (recoveredBlock25Value2) height: (recoveredBlock25Value5).
    recoveredBlock25Value6 := recoveredLocal11.
    recoveredBlock25Value7 := (400) * (recoveredBlock25Value6).
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
            recoveredLocal9 := recoveredStack1.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack1 := recoveredLocal12.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack2 := 'aDialogShell1'.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack3 := recoveredLocal9.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack1 := recoveredLocal9.
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
            recoveredLocal8 := recoveredStack1.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack1 := recoveredLocal12.
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack2 := 'aMainWindow1'.
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack3 := recoveredLocal8.
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            recoveredStack1 := recoveredLocal8.
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
            recoveredLocal7 := recoveredStack1.
            recoveredPC := 112.
        ].
        recoveredStep = 112 ifTrue: [
            recoveredStack1 := recoveredLocal12.
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            recoveredStack2 := 'aForm1'.
            recoveredPC := 117.
        ].
        recoveredStep = 117 ifTrue: [
            recoveredStack3 := recoveredLocal7.
            recoveredPC := 120.
        ].
        recoveredStep = 120 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 122.
        ].
        recoveredStep = 122 ifTrue: [
            recoveredStack1 := recoveredLocal7.
            recoveredPC := 125.
        ].
        recoveredStep = 125 ifTrue: [
            recoveredStack2 := 'optionsLabel'.
            recoveredPC := 127.
        ].
        recoveredStep = 127 ifTrue: [
            recoveredStack3 := [:recoveredBlock127Arg1 | 
    | recoveredBlock127Value0 recoveredBlock127Value1 recoveredBlock127Value2 recoveredBlock127Value3 recoveredBlock127Value4 recoveredBlock127Value5 recoveredBlock127Value6 recoveredBlock127Value7 recoveredBlock127Value8 recoveredBlock127Value9 recoveredBlock127Value10 recoveredBlock127Value11 recoveredBlock127Value12 recoveredBlock127Value13 recoveredBlock127Value14 recoveredBlock127Value15 recoveredBlock127Value16 recoveredBlock127Value17 recoveredBlock127Value18 recoveredBlock127Value19 recoveredBlock127Value20 recoveredBlock127Value21 recoveredBlock127Value22 recoveredBlock127Value23 recoveredBlock127Value24 recoveredBlock127Value25 |
    recoveredBlock127Value0 := recoveredBlock127Arg1.
    recoveredBlock127Value1 := recoveredBlock127Value0.
    recoveredBlock127Value2 := recoveredLocal11.
    recoveredBlock127Value3 := (7) * (recoveredBlock127Value2).
    recoveredBlock127Value4 := (recoveredBlock127Value3) rounded.
    (recoveredBlock127Value1) x: (recoveredBlock127Value4).
    recoveredBlock127Value5 := recoveredBlock127Value0.
    recoveredBlock127Value6 := XmALIGNMENTBEGINNING.
    (recoveredBlock127Value5) alignment: (recoveredBlock127Value6).
    recoveredBlock127Value7 := recoveredBlock127Value0.
    recoveredBlock127Value8 := recoveredLocal10.
    recoveredBlock127Value9 := (8) * (recoveredBlock127Value8).
    recoveredBlock127Value10 := (recoveredBlock127Value9) rounded.
    (recoveredBlock127Value7) y: (recoveredBlock127Value10).
    recoveredBlock127Value11 := recoveredBlock127Value0.
    recoveredBlock127Value12 := recoveredLocal10.
    recoveredBlock127Value13 := (20) * (recoveredBlock127Value12).
    recoveredBlock127Value14 := (recoveredBlock127Value13) rounded.
    (recoveredBlock127Value11) height: (recoveredBlock127Value14).
    recoveredBlock127Value15 := recoveredBlock127Value0.
    recoveredBlock127Value16 := recoveredLocal11.
    recoveredBlock127Value17 := (278) * (recoveredBlock127Value16).
    recoveredBlock127Value18 := (recoveredBlock127Value17) rounded.
    (recoveredBlock127Value15) width: (recoveredBlock127Value18).
    recoveredBlock127Value19 := recoveredBlock127Value0.
    (recoveredBlock127Value19) recomputeSize: (false).
    recoveredBlock127Value20 := CgRGBColor.
    recoveredBlock127Value21 := (recoveredBlock127Value20) basicNew.
    recoveredBlock127Value22 := recoveredBlock127Value21.
    (recoveredBlock127Value22) instVarAt: (1) put: (0).
    recoveredBlock127Value23 := recoveredBlock127Value21.
    (recoveredBlock127Value23) instVarAt: (2) put: (0).
    recoveredBlock127Value24 := recoveredBlock127Value21.
    (recoveredBlock127Value24) instVarAt: (3) put: (65535).
    recoveredBlock127Value25 := (recoveredBlock127Value0) foregroundColor: (recoveredBlock127Value21).
    recoveredBlock127Value25
].
            recoveredPC := 218.
        ].
        recoveredStep = 218 ifTrue: [
            recoveredStack1 := (recoveredStack1) createLabel: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 220.
        ].
        recoveredStep = 220 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 222.
        ].
        recoveredStep = 222 ifTrue: [
            recoveredLocal6 := recoveredStack1.
            recoveredPC := 225.
        ].
        recoveredStep = 225 ifTrue: [
            recoveredStack1 := recoveredLocal12.
            recoveredPC := 228.
        ].
        recoveredStep = 228 ifTrue: [
            recoveredStack2 := 'optionsLabel'.
            recoveredPC := 230.
        ].
        recoveredStep = 230 ifTrue: [
            recoveredStack3 := recoveredLocal6.
            recoveredPC := 233.
        ].
        recoveredStep = 233 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 235.
        ].
        recoveredStep = 235 ifTrue: [
            recoveredStack1 := recoveredLocal7.
            recoveredPC := 238.
        ].
        recoveredStep = 238 ifTrue: [
            recoveredStack2 := 'optionsList'.
            recoveredPC := 240.
        ].
        recoveredStep = 240 ifTrue: [
            recoveredStack3 := nil.
            recoveredPC := 241.
        ].
        recoveredStep = 241 ifTrue: [
            recoveredStack1 := (recoveredStack1) createScrolledTableList: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 243.
        ].
        recoveredStep = 243 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 245.
        ].
        recoveredStep = 245 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 248.
        ].
        recoveredStep = 248 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 251.
        ].
        recoveredStep = 251 ifTrue: [
            recoveredStack1 := (recoveredStack1) parent.
            recoveredPC := 253.
        ].
        recoveredStep = 253 ifTrue: [
            recoveredLocal5 := recoveredStack1.
            recoveredPC := 256.
        ].
        recoveredStep = 256 ifTrue: [
            recoveredStack1 := recoveredLocal12.
            recoveredPC := 259.
        ].
        recoveredStep = 259 ifTrue: [
            recoveredStack2 := 'aScrolledTableList1'.
            recoveredPC := 261.
        ].
        recoveredStep = 261 ifTrue: [
            recoveredStack3 := recoveredLocal5.
            recoveredPC := 264.
        ].
        recoveredStep = 264 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 266.
        ].
        recoveredStep = 266 ifTrue: [
            recoveredStack1 := recoveredLocal12.
            recoveredPC := 269.
        ].
        recoveredStep = 269 ifTrue: [
            recoveredStack2 := 'optionsList'.
            recoveredPC := 271.
        ].
        recoveredStep = 271 ifTrue: [
            recoveredStack3 := recoveredLocal4.
            recoveredPC := 274.
        ].
        recoveredStep = 274 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 276.
        ].
        recoveredStep = 276 ifTrue: [
            recoveredStack1 := recoveredLocal7.
            recoveredPC := 279.
        ].
        recoveredStep = 279 ifTrue: [
            recoveredStack2 := 'okButton'.
            recoveredPC := 281.
        ].
        recoveredStep = 281 ifTrue: [
            recoveredStack3 := [:recoveredBlock281Arg1 | 
    | recoveredBlock281Value0 recoveredBlock281Value1 recoveredBlock281Value2 recoveredBlock281Value3 recoveredBlock281Value4 recoveredBlock281Value5 recoveredBlock281Value6 recoveredBlock281Value7 recoveredBlock281Value8 recoveredBlock281Value9 recoveredBlock281Value10 recoveredBlock281Value11 recoveredBlock281Value12 recoveredBlock281Value13 recoveredBlock281Value14 recoveredBlock281Value15 recoveredBlock281Value16 recoveredBlock281Value17 |
    recoveredBlock281Value0 := recoveredBlock281Arg1.
    recoveredBlock281Value1 := recoveredBlock281Value0.
    recoveredBlock281Value2 := recoveredLocal11.
    recoveredBlock281Value3 := (296) * (recoveredBlock281Value2).
    recoveredBlock281Value4 := (recoveredBlock281Value3) rounded.
    (recoveredBlock281Value1) x: (recoveredBlock281Value4).
    recoveredBlock281Value5 := recoveredBlock281Value0.
    recoveredBlock281Value6 := recoveredLocal10.
    recoveredBlock281Value7 := (10) * (recoveredBlock281Value6).
    recoveredBlock281Value8 := (recoveredBlock281Value7) rounded.
    (recoveredBlock281Value5) y: (recoveredBlock281Value8).
    recoveredBlock281Value9 := recoveredBlock281Value0.
    recoveredBlock281Value10 := recoveredLocal10.
    recoveredBlock281Value11 := (30) * (recoveredBlock281Value10).
    recoveredBlock281Value12 := (recoveredBlock281Value11) rounded.
    (recoveredBlock281Value9) height: (recoveredBlock281Value12).
    recoveredBlock281Value13 := recoveredBlock281Value0.
    recoveredBlock281Value14 := recoveredLocal11.
    recoveredBlock281Value15 := (94) * (recoveredBlock281Value14).
    recoveredBlock281Value16 := (recoveredBlock281Value15) rounded.
    (recoveredBlock281Value13) width: (recoveredBlock281Value16).
    recoveredBlock281Value17 := (recoveredBlock281Value0) recomputeSize: (false).
    recoveredBlock281Value17
].
            recoveredPC := 340.
        ].
        recoveredStep = 340 ifTrue: [
            recoveredStack1 := (recoveredStack1) createPushButton: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 342.
        ].
        recoveredStep = 342 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 344.
        ].
        recoveredStep = 344 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 347.
        ].
        recoveredStep = 347 ifTrue: [
            recoveredStack1 := recoveredLocal12.
            recoveredPC := 350.
        ].
        recoveredStep = 350 ifTrue: [
            recoveredStack2 := 'okButton'.
            recoveredPC := 352.
        ].
        recoveredStep = 352 ifTrue: [
            recoveredStack3 := recoveredLocal3.
            recoveredPC := 355.
        ].
        recoveredStep = 355 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 357.
        ].
        recoveredStep = 357 ifTrue: [
            recoveredStack1 := recoveredLocal7.
            recoveredPC := 360.
        ].
        recoveredStep = 360 ifTrue: [
            recoveredStack2 := 'cancelButton'.
            recoveredPC := 362.
        ].
        recoveredStep = 362 ifTrue: [
            recoveredStack3 := [:recoveredBlock362Arg1 | 
    | recoveredBlock362Value0 recoveredBlock362Value1 recoveredBlock362Value2 recoveredBlock362Value3 recoveredBlock362Value4 recoveredBlock362Value5 recoveredBlock362Value6 recoveredBlock362Value7 recoveredBlock362Value8 recoveredBlock362Value9 recoveredBlock362Value10 recoveredBlock362Value11 recoveredBlock362Value12 recoveredBlock362Value13 |
    recoveredBlock362Value0 := recoveredBlock362Arg1.
    recoveredBlock362Value1 := recoveredBlock362Value0.
    recoveredBlock362Value2 := recoveredLocal11.
    recoveredBlock362Value3 := (296) * (recoveredBlock362Value2).
    recoveredBlock362Value4 := (recoveredBlock362Value3) rounded.
    (recoveredBlock362Value1) x: (recoveredBlock362Value4).
    recoveredBlock362Value5 := recoveredBlock362Value0.
    recoveredBlock362Value6 := recoveredLocal10.
    recoveredBlock362Value7 := (47) * (recoveredBlock362Value6).
    recoveredBlock362Value8 := (recoveredBlock362Value7) rounded.
    (recoveredBlock362Value5) y: (recoveredBlock362Value8).
    recoveredBlock362Value9 := recoveredBlock362Value0.
    recoveredBlock362Value10 := recoveredLocal10.
    recoveredBlock362Value11 := (30) * (recoveredBlock362Value10).
    recoveredBlock362Value12 := (recoveredBlock362Value11) rounded.
    (recoveredBlock362Value9) height: (recoveredBlock362Value12).
    recoveredBlock362Value13 := (recoveredBlock362Value0) recomputeSize: (false).
    recoveredBlock362Value13
].
            recoveredPC := 408.
        ].
        recoveredStep = 408 ifTrue: [
            recoveredStack1 := (recoveredStack1) createPushButton: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 410.
        ].
        recoveredStep = 410 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 412.
        ].
        recoveredStep = 412 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 415.
        ].
        recoveredStep = 415 ifTrue: [
            recoveredStack1 := recoveredLocal12.
            recoveredPC := 418.
        ].
        recoveredStep = 418 ifTrue: [
            recoveredStack2 := 'cancelButton'.
            recoveredPC := 420.
        ].
        recoveredStep = 420 ifTrue: [
            recoveredStack3 := recoveredLocal2.
            recoveredPC := 423.
        ].
        recoveredStep = 423 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 425.
        ].
        recoveredStep = 425 ifTrue: [
            recoveredStack1 := recoveredLocal7.
            recoveredPC := 428.
        ].
        recoveredStep = 428 ifTrue: [
            recoveredStack2 := 'aSeparator1'.
            recoveredPC := 430.
        ].
        recoveredStep = 430 ifTrue: [
            recoveredStack3 := [:recoveredBlock430Arg1 | 
    | recoveredBlock430Value0 recoveredBlock430Value1 recoveredBlock430Value2 recoveredBlock430Value3 recoveredBlock430Value4 recoveredBlock430Value5 recoveredBlock430Value6 recoveredBlock430Value7 recoveredBlock430Value8 recoveredBlock430Value9 recoveredBlock430Value10 recoveredBlock430Value11 recoveredBlock430Value12 recoveredBlock430Value13 recoveredBlock430Value14 |
    recoveredBlock430Value0 := recoveredBlock430Arg1.
    recoveredBlock430Value1 := recoveredBlock430Value0.
    recoveredBlock430Value2 := recoveredLocal11.
    recoveredBlock430Value3 := (254) * (recoveredBlock430Value2).
    recoveredBlock430Value4 := (recoveredBlock430Value3) rounded.
    (recoveredBlock430Value1) x: (recoveredBlock430Value4).
    recoveredBlock430Value5 := recoveredBlock430Value0.
    recoveredBlock430Value6 := XmVERTICAL.
    (recoveredBlock430Value5) orientation: (recoveredBlock430Value6).
    recoveredBlock430Value7 := recoveredBlock430Value0.
    recoveredBlock430Value8 := recoveredLocal10.
    recoveredBlock430Value9 := (300) * (recoveredBlock430Value8).
    recoveredBlock430Value10 := (recoveredBlock430Value9) rounded.
    (recoveredBlock430Value7) height: (recoveredBlock430Value10).
    recoveredBlock430Value11 := recoveredLocal11.
    recoveredBlock430Value12 := (11) * (recoveredBlock430Value11).
    recoveredBlock430Value13 := (recoveredBlock430Value12) rounded.
    recoveredBlock430Value14 := (recoveredBlock430Value0) width: (recoveredBlock430Value13).
    recoveredBlock430Value14
].
            recoveredPC := 479.
        ].
        recoveredStep = 479 ifTrue: [
            recoveredStack1 := (recoveredStack1) createSeparator: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 481.
        ].
        recoveredStep = 481 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 483.
        ].
        recoveredStep = 483 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 486.
        ].
        recoveredStep = 486 ifTrue: [
            recoveredStack1 := recoveredLocal12.
            recoveredPC := 489.
        ].
        recoveredStep = 489 ifTrue: [
            recoveredStack2 := 'aSeparator1'.
            recoveredPC := 491.
        ].
        recoveredStep = 491 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 494.
        ].
        recoveredStep = 494 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 496.
        ].
        recoveredStep = 496 ifTrue: [
            recoveredStack1 := recoveredLocal8.
            recoveredPC := 499.
        ].
        recoveredStep = 499 ifTrue: [
            recoveredStack2 := [:recoveredBlock499Arg1 | 
    | recoveredBlock499Value0 recoveredBlock499Value1 recoveredBlock499Value2 |
    recoveredBlock499Value0 := recoveredBlock499Arg1.
    recoveredBlock499Value1 := recoveredLocal7.
    recoveredBlock499Value2 := (recoveredBlock499Value0) workWindow: (recoveredBlock499Value1).
    recoveredBlock499Value2
].
            recoveredPC := 513.
        ].
        recoveredStep = 513 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 515.
        ].
        recoveredStep = 515 ifTrue: [
            recoveredStack1 := recoveredLocal6.
            recoveredPC := 518.
        ].
        recoveredStep = 518 ifTrue: [
            recoveredStack2 := [:block281231b4Arg1 | 
    | block281231b4Value0 block281231b4Value1 block281231b4Value2 block281231b4Value3 block281231b4Value4 block281231b4Value5 block281231b4Value6 |
    block281231b4Value0 := block281231b4Arg1.
    block281231b4Value1 := block281231b4Value0.
    block281231b4Value2 := XmATTACHFORM.
    (block281231b4Value1) topAttachment: (block281231b4Value2).
    block281231b4Value3 := block281231b4Value0.
    (block281231b4Value3) topOffset: (5).
    block281231b4Value4 := block281231b4Value0.
    block281231b4Value5 := XmATTACHFORM.
    (block281231b4Value4) leftAttachment: (block281231b4Value5).
    block281231b4Value6 := (block281231b4Value0) leftOffset: (5).
    block281231b4Value6
].
            recoveredPC := 520.
        ].
        recoveredStep = 520 ifTrue: [
            recoveredPC := 545.
        ].
        recoveredStep = 545 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 547.
        ].
        recoveredStep = 547 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 550.
        ].
        recoveredStep = 550 ifTrue: [
            recoveredStack2 := [:recoveredBlock550Arg1 | 
    | recoveredBlock550Value0 recoveredBlock550Value1 recoveredBlock550Value2 recoveredBlock550Value3 recoveredBlock550Value4 recoveredBlock550Value5 recoveredBlock550Value6 recoveredBlock550Value7 recoveredBlock550Value8 recoveredBlock550Value9 recoveredBlock550Value10 recoveredBlock550Value11 recoveredBlock550Value12 recoveredBlock550Value13 recoveredBlock550Value14 recoveredBlock550Value15 recoveredBlock550Value16 recoveredBlock550Value17 recoveredBlock550Value18 recoveredBlock550Value19 recoveredBlock550Value20 recoveredBlock550Value21 recoveredBlock550Value22 recoveredBlock550Value23 recoveredBlock550Value24 recoveredBlock550Value25 recoveredBlock550Value26 recoveredBlock550Value27 recoveredBlock550Value28 recoveredBlock550Value29 recoveredBlock550Value30 |
    recoveredBlock550Value0 := recoveredBlock550Arg1.
    recoveredBlock550Value1 := recoveredBlock550Value0.
    recoveredBlock550Value2 := XmATTACHFORM.
    (recoveredBlock550Value1) bottomAttachment: (recoveredBlock550Value2).
    recoveredBlock550Value3 := recoveredBlock550Value0.
    (recoveredBlock550Value3) bottomOffset: (5).
    recoveredBlock550Value4 := recoveredBlock550Value0.
    recoveredBlock550Value5 := XmATTACHWIDGET.
    (recoveredBlock550Value4) topAttachment: (recoveredBlock550Value5).
    recoveredBlock550Value6 := recoveredBlock550Value0.
    recoveredBlock550Value7 := recoveredLocal6.
    (recoveredBlock550Value6) topWidget: (recoveredBlock550Value7).
    recoveredBlock550Value8 := recoveredBlock550Value0.
    recoveredBlock550Value9 := XmATTACHFORM.
    (recoveredBlock550Value8) leftAttachment: (recoveredBlock550Value9).
    recoveredBlock550Value10 := recoveredBlock550Value0.
    (recoveredBlock550Value10) leftOffset: (5).
    recoveredBlock550Value11 := recoveredBlock550Value0.
    recoveredBlock550Value12 := XmATTACHWIDGET.
    (recoveredBlock550Value11) rightAttachment: (recoveredBlock550Value12).
    recoveredBlock550Value13 := recoveredBlock550Value0.
    recoveredBlock550Value14 := recoveredLocal1.
    (recoveredBlock550Value13) rightWidget: (recoveredBlock550Value14).
    recoveredBlock550Value15 := recoveredBlock550Value0.
    recoveredBlock550Value16 := recoveredLocal11.
    recoveredBlock550Value17 := (5) * (recoveredBlock550Value16).
    recoveredBlock550Value18 := (recoveredBlock550Value17) rounded.
    (recoveredBlock550Value15) x: (recoveredBlock550Value18).
    recoveredBlock550Value19 := recoveredBlock550Value0.
    recoveredBlock550Value20 := recoveredLocal10.
    recoveredBlock550Value21 := (40) * (recoveredBlock550Value20).
    recoveredBlock550Value22 := (recoveredBlock550Value21) rounded.
    (recoveredBlock550Value19) y: (recoveredBlock550Value22).
    recoveredBlock550Value23 := recoveredBlock550Value0.
    recoveredBlock550Value24 := recoveredLocal10.
    recoveredBlock550Value25 := (255) * (recoveredBlock550Value24).
    recoveredBlock550Value26 := (recoveredBlock550Value25) rounded.
    (recoveredBlock550Value23) height: (recoveredBlock550Value26).
    recoveredBlock550Value27 := recoveredLocal11.
    recoveredBlock550Value28 := (248) * (recoveredBlock550Value27).
    recoveredBlock550Value29 := (recoveredBlock550Value28) rounded.
    recoveredBlock550Value30 := (recoveredBlock550Value0) width: (recoveredBlock550Value29).
    recoveredBlock550Value30
].
            recoveredPC := 651.
        ].
        recoveredStep = 651 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 653.
        ].
        recoveredStep = 653 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 656.
        ].
        recoveredStep = 656 ifTrue: [
            recoveredStack2 := [:block281231d8Arg1 | 
    | block281231d8Value0 block281231d8Value1 block281231d8Value2 block281231d8Value3 block281231d8Value4 block281231d8Value5 block281231d8Value6 |
    block281231d8Value0 := block281231d8Arg1.
    block281231d8Value1 := block281231d8Value0.
    block281231d8Value2 := XmATTACHFORM.
    (block281231d8Value1) topAttachment: (block281231d8Value2).
    block281231d8Value3 := block281231d8Value0.
    (block281231d8Value3) topOffset: (10).
    block281231d8Value4 := block281231d8Value0.
    block281231d8Value5 := XmATTACHFORM.
    (block281231d8Value4) rightAttachment: (block281231d8Value5).
    block281231d8Value6 := (block281231d8Value0) rightOffset: (10).
    block281231d8Value6
].
            recoveredPC := 660.
        ].
        recoveredStep = 660 ifTrue: [
            recoveredPC := 690.
        ].
        recoveredStep = 690 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 692.
        ].
        recoveredStep = 692 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 695.
        ].
        recoveredStep = 695 ifTrue: [
            recoveredStack2 := [:recoveredBlock695Arg1 | 
    | recoveredBlock695Value0 recoveredBlock695Value1 recoveredBlock695Value2 recoveredBlock695Value3 recoveredBlock695Value4 recoveredBlock695Value5 recoveredBlock695Value6 recoveredBlock695Value7 |
    recoveredBlock695Value0 := recoveredBlock695Arg1.
    recoveredBlock695Value1 := recoveredBlock695Value0.
    recoveredBlock695Value2 := XmATTACHOPPOSITEWIDGET.
    (recoveredBlock695Value1) leftAttachment: (recoveredBlock695Value2).
    recoveredBlock695Value3 := recoveredBlock695Value0.
    recoveredBlock695Value4 := recoveredLocal3.
    (recoveredBlock695Value3) leftWidget: (recoveredBlock695Value4).
    recoveredBlock695Value5 := recoveredBlock695Value0.
    recoveredBlock695Value6 := XmATTACHFORM.
    (recoveredBlock695Value5) rightAttachment: (recoveredBlock695Value6).
    recoveredBlock695Value7 := (recoveredBlock695Value0) rightOffset: (10).
    recoveredBlock695Value7
].
            recoveredPC := 732.
        ].
        recoveredStep = 732 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 734.
        ].
        recoveredStep = 734 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 737.
        ].
        recoveredStep = 737 ifTrue: [
            recoveredStack2 := [:recoveredBlock737Arg1 | 
    | recoveredBlock737Value0 recoveredBlock737Value1 recoveredBlock737Value2 recoveredBlock737Value3 recoveredBlock737Value4 recoveredBlock737Value5 recoveredBlock737Value6 recoveredBlock737Value7 recoveredBlock737Value8 |
    recoveredBlock737Value0 := recoveredBlock737Arg1.
    recoveredBlock737Value1 := recoveredBlock737Value0.
    recoveredBlock737Value2 := XmATTACHFORM.
    (recoveredBlock737Value1) bottomAttachment: (recoveredBlock737Value2).
    recoveredBlock737Value3 := recoveredBlock737Value0.
    recoveredBlock737Value4 := XmATTACHFORM.
    (recoveredBlock737Value3) topAttachment: (recoveredBlock737Value4).
    recoveredBlock737Value5 := recoveredBlock737Value0.
    recoveredBlock737Value6 := XmATTACHWIDGET.
    (recoveredBlock737Value5) rightAttachment: (recoveredBlock737Value6).
    recoveredBlock737Value7 := recoveredLocal3.
    recoveredBlock737Value8 := (recoveredBlock737Value0) rightWidget: (recoveredBlock737Value7).
    recoveredBlock737Value8
].
            recoveredPC := 772.
        ].
        recoveredStep = 772 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 774.
        ].
        recoveredStep = 774 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 777.
        ].
        recoveredStep = 777 ifTrue: [
            recoveredStack2 := XmNactivateCallback.
            recoveredPC := 780.
        ].
        recoveredStep = 780 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 781.
        ].
        recoveredStep = 781 ifTrue: [
            recoveredStack4 := 'okButtonActivate:clientData:callData:'.
            recoveredPC := 784.
        ].
        recoveredStep = 784 ifTrue: [
            recoveredStack5 := nil.
            recoveredPC := 785.
        ].
        recoveredStep = 785 ifTrue: [
            (recoveredStack1) addCallback: (recoveredStack2) receiver: (recoveredStack3) selector: (recoveredStack4) clientData: (recoveredStack5).
            recoveredPC := 789.
        ].
        recoveredStep = 789 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 792.
        ].
        recoveredStep = 792 ifTrue: [
            recoveredStack2 := XmNactivateCallback.
            recoveredPC := 796.
        ].
        recoveredStep = 796 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 797.
        ].
        recoveredStep = 797 ifTrue: [
            recoveredStack4 := 'cancelButtonActivate:clientData:callData:'.
            recoveredPC := 800.
        ].
        recoveredStep = 800 ifTrue: [
            recoveredStack5 := nil.
            recoveredPC := 801.
        ].
        recoveredStep = 801 ifTrue: [
            (recoveredStack1) addCallback: (recoveredStack2) receiver: (recoveredStack3) selector: (recoveredStack4) clientData: (recoveredStack5).
            recoveredPC := 805.
        ].
        recoveredStep = 805 ifTrue: [
            recoveredStack1 := Array.
            recoveredPC := 808.
        ].
        recoveredStep = 808 ifTrue: [
            recoveredStack2 := recoveredLocal12.
            recoveredPC := 811.
        ].
        recoveredStep = 811 ifTrue: [
            recoveredStack3 := recoveredLocal8.
            recoveredPC := 814.
        ].
        recoveredStep = 814 ifTrue: [
            recoveredStack1 := (recoveredStack1) with: (recoveredStack2) with: (recoveredStack3).
            recoveredPC := 819.
        ].
        recoveredStep = 819 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

