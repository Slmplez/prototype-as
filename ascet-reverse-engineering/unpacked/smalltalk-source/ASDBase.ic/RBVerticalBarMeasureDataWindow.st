"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2001cc64; bytecode file offset 0x92209c"
!RBVerticalBarMeasureDataWindow methodsFor: 'recovered'!
subpaneOrientation
    ^'vertical'
! !

"ASDBase.ic method 0x20080894; bytecode file offset 0x97d158"
!RBVerticalBarMeasureDataWindow methodsFor: 'recovered'!
minSubpaneHeight
    ^200
! !

"ASDBase.ic method 0x20115464; bytecode file offset 0xa11d2c"
!RBVerticalBarMeasureDataWindow methodsFor: 'recovered'!
maxDataNumber
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := CgScreen.
    recoveredValue1 := (recoveredValue0) default.
    recoveredValue2 := (recoveredValue1) width.
    recoveredValue3 := (self) class.
    recoveredValue4 := (recoveredValue3) defaultSubWidgetWidth.
    recoveredValue5 := (recoveredValue4) + (4).
    recoveredValue6 := (recoveredValue2) // (recoveredValue5).
    ^recoveredValue6
! !

"ASDBase.ic method 0x202d320c; bytecode file offset 0xbcfaec"
!RBVerticalBarMeasureDataWindow methodsFor: 'recovered'!
createSubpaneFor: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := (self) form.
    recoveredValue1 := subWidgets.
    recoveredValue2 := (recoveredValue1) size.
    recoveredValue3 := (recoveredValue2) printString.
    recoveredValue4 := ('aSubPane') , (recoveredValue3).
    recoveredValue5 := [:recoveredBlock13Arg1 | 
    | recoveredBlock13Value0 recoveredBlock13Value1 recoveredBlock13Value2 recoveredBlock13Value3 recoveredBlock13Value4 recoveredBlock13Value5 recoveredBlock13Value6 recoveredBlock13Value7 |
    recoveredBlock13Value0 := recoveredBlock13Arg1.
    recoveredBlock13Value1 := recoveredBlock13Value0.
    (recoveredBlock13Value1) height: (200).
    recoveredBlock13Value2 := recoveredBlock13Value0.
    recoveredBlock13Value3 := (self) class.
    recoveredBlock13Value4 := (recoveredBlock13Value3) defaultSubWidgetWidth.
    recoveredBlock13Value5 := (recoveredBlock13Value4) - (10).
    (recoveredBlock13Value2) width: (recoveredBlock13Value5).
    recoveredBlock13Value6 := nameAlignment.
    recoveredBlock13Value7 := (recoveredBlock13Value0) nameAlignment: (recoveredBlock13Value6).
    recoveredBlock13Value7
].
    recoveredValue6 := (recoveredValue0) createASDVerBarMeasureDataWidget: (recoveredValue4) argBlock: (recoveredValue5).
    recoveredLocal1 := recoveredValue6.
    recoveredValue7 := recoveredLocal1.
    ^recoveredValue7
! !

"ASDBase.ic method 0x205b704c; bytecode file offset 0xeb39a4"
!RBVerticalBarMeasureDataWindow methodsFor: 'recovered'!
createWidgetHierarchy
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredLocal6 recoveredLocal7 recoveredLocal8 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
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
            recoveredLocal8 := recoveredStack1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := 1.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredLocal7 := recoveredStack1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := 1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredLocal6 := recoveredStack1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := CwTopLevelShell.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack2 := 'mainWindow'.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack3 := [:recoveredBlock24Arg1 | 
    | recoveredBlock24Value0 recoveredBlock24Value1 recoveredBlock24Value2 recoveredBlock24Value3 recoveredBlock24Value4 recoveredBlock24Value5 recoveredBlock24Value6 recoveredBlock24Value7 recoveredBlock24Value8 recoveredBlock24Value9 |
    recoveredBlock24Value0 := recoveredBlock24Arg1.
    recoveredBlock24Value1 := recoveredBlock24Value0.
    (recoveredBlock24Value1) title: ('Balkenanzeige').
    recoveredBlock24Value2 := recoveredBlock24Value0.
    recoveredBlock24Value3 := recoveredLocal6.
    recoveredBlock24Value4 := (250) * (recoveredBlock24Value3).
    recoveredBlock24Value5 := (recoveredBlock24Value4) rounded.
    (recoveredBlock24Value2) height: (recoveredBlock24Value5).
    recoveredBlock24Value6 := recoveredLocal7.
    recoveredBlock24Value7 := (90) * (recoveredBlock24Value6).
    recoveredBlock24Value8 := (recoveredBlock24Value7) rounded.
    recoveredBlock24Value9 := (recoveredBlock24Value0) width: (recoveredBlock24Value8).
    recoveredBlock24Value9
].
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack1 := (recoveredStack1) createApplicationShell: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredLocal5 := recoveredStack1.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack1 := recoveredLocal8.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack2 := 'mainWindow'.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack3 := recoveredLocal5.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack2 := 'aMainWindow1'.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack3 := nil.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack1 := (recoveredStack1) createMainWindow: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack1 := recoveredLocal8.
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack2 := 'aMainWindow1'.
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack3 := recoveredLocal4.
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            recoveredStack1 := recoveredLocal4.
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
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 112.
        ].
        recoveredStep = 112 ifTrue: [
            recoveredStack1 := recoveredLocal8.
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            recoveredStack2 := 'aForm1'.
            recoveredPC := 117.
        ].
        recoveredStep = 117 ifTrue: [
            recoveredStack3 := recoveredLocal3.
            recoveredPC := 120.
        ].
        recoveredStep = 120 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 122.
        ].
        recoveredStep = 122 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 125.
        ].
        recoveredStep = 125 ifTrue: [
            recoveredStack2 := 'scrolledWindow'.
            recoveredPC := 127.
        ].
        recoveredStep = 127 ifTrue: [
            recoveredStack3 := [:recoveredBlock127Arg1 | 
    | recoveredBlock127Value0 recoveredBlock127Value1 recoveredBlock127Value2 recoveredBlock127Value3 recoveredBlock127Value4 recoveredBlock127Value5 recoveredBlock127Value6 recoveredBlock127Value7 recoveredBlock127Value8 recoveredBlock127Value9 recoveredBlock127Value10 recoveredBlock127Value11 recoveredBlock127Value12 recoveredBlock127Value13 recoveredBlock127Value14 recoveredBlock127Value15 |
    recoveredBlock127Value0 := recoveredBlock127Arg1.
    recoveredBlock127Value1 := recoveredBlock127Value0.
    (recoveredBlock127Value1) borderWidth: (0).
    recoveredBlock127Value2 := recoveredBlock127Value0.
    recoveredBlock127Value3 := XmAUTOMATIC.
    (recoveredBlock127Value2) scrollingPolicy: (recoveredBlock127Value3).
    recoveredBlock127Value4 := recoveredBlock127Value0.
    recoveredBlock127Value5 := XmCONSTANT.
    (recoveredBlock127Value4) visualPolicy: (recoveredBlock127Value5).
    recoveredBlock127Value6 := recoveredBlock127Value0.
    recoveredBlock127Value7 := XmASNEEDED.
    (recoveredBlock127Value6) scrollBarDisplayPolicy: (recoveredBlock127Value7).
    recoveredBlock127Value8 := recoveredBlock127Value0.
    recoveredBlock127Value9 := recoveredLocal6.
    recoveredBlock127Value10 := (250) * (recoveredBlock127Value9).
    recoveredBlock127Value11 := (recoveredBlock127Value10) rounded.
    (recoveredBlock127Value8) height: (recoveredBlock127Value11).
    recoveredBlock127Value12 := recoveredLocal7.
    recoveredBlock127Value13 := (80) * (recoveredBlock127Value12).
    recoveredBlock127Value14 := (recoveredBlock127Value13) rounded.
    recoveredBlock127Value15 := (recoveredBlock127Value0) width: (recoveredBlock127Value14).
    recoveredBlock127Value15
].
            recoveredPC := 181.
        ].
        recoveredStep = 181 ifTrue: [
            recoveredStack1 := (recoveredStack1) createScrolledWindow: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 183.
        ].
        recoveredStep = 183 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 185.
        ].
        recoveredStep = 185 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 188.
        ].
        recoveredStep = 188 ifTrue: [
            recoveredStack1 := recoveredLocal8.
            recoveredPC := 191.
        ].
        recoveredStep = 191 ifTrue: [
            recoveredStack2 := 'scrolledWindow'.
            recoveredPC := 193.
        ].
        recoveredStep = 193 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 196.
        ].
        recoveredStep = 196 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 198.
        ].
        recoveredStep = 198 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 201.
        ].
        recoveredStep = 201 ifTrue: [
            recoveredStack2 := 'aForm2'.
            recoveredPC := 203.
        ].
        recoveredStep = 203 ifTrue: [
            recoveredStack3 := [:recoveredBlock203Arg1 | 
    | recoveredBlock203Value0 recoveredBlock203Value1 recoveredBlock203Value2 recoveredBlock203Value3 recoveredBlock203Value4 recoveredBlock203Value5 recoveredBlock203Value6 recoveredBlock203Value7 recoveredBlock203Value8 |
    recoveredBlock203Value0 := recoveredBlock203Arg1.
    recoveredBlock203Value1 := recoveredBlock203Value0.
    recoveredBlock203Value2 := recoveredLocal6.
    recoveredBlock203Value3 := (281) * (recoveredBlock203Value2).
    recoveredBlock203Value4 := (recoveredBlock203Value3) rounded.
    (recoveredBlock203Value1) height: (recoveredBlock203Value4).
    recoveredBlock203Value5 := recoveredLocal7.
    recoveredBlock203Value6 := (107) * (recoveredBlock203Value5).
    recoveredBlock203Value7 := (recoveredBlock203Value6) rounded.
    recoveredBlock203Value8 := (recoveredBlock203Value0) width: (recoveredBlock203Value7).
    recoveredBlock203Value8
].
            recoveredPC := 237.
        ].
        recoveredStep = 237 ifTrue: [
            recoveredStack1 := (recoveredStack1) createForm: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 239.
        ].
        recoveredStep = 239 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 241.
        ].
        recoveredStep = 241 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 244.
        ].
        recoveredStep = 244 ifTrue: [
            recoveredStack1 := recoveredLocal8.
            recoveredPC := 247.
        ].
        recoveredStep = 247 ifTrue: [
            recoveredStack2 := 'aForm2'.
            recoveredPC := 249.
        ].
        recoveredStep = 249 ifTrue: [
            recoveredStack3 := recoveredLocal2.
            recoveredPC := 252.
        ].
        recoveredStep = 252 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 254.
        ].
        recoveredStep = 254 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 257.
        ].
        recoveredStep = 257 ifTrue: [
            recoveredStack2 := [:recoveredBlock257Arg1 | 
    | recoveredBlock257Value0 recoveredBlock257Value1 recoveredBlock257Value2 |
    recoveredBlock257Value0 := recoveredBlock257Arg1.
    recoveredBlock257Value1 := recoveredLocal3.
    recoveredBlock257Value2 := (recoveredBlock257Value0) workWindow: (recoveredBlock257Value1).
    recoveredBlock257Value2
].
            recoveredPC := 271.
        ].
        recoveredStep = 271 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 273.
        ].
        recoveredStep = 273 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 276.
        ].
        recoveredStep = 276 ifTrue: [
            recoveredStack2 := [:block28117250Arg1 | 
    | block28117250Value0 block28117250Value1 block28117250Value2 block28117250Value3 block28117250Value4 block28117250Value5 block28117250Value6 block28117250Value7 block28117250Value8 |
    block28117250Value0 := block28117250Arg1.
    block28117250Value1 := block28117250Value0.
    block28117250Value2 := XmATTACHFORM.
    (block28117250Value1) bottomAttachment: (block28117250Value2).
    block28117250Value3 := block28117250Value0.
    block28117250Value4 := XmATTACHFORM.
    (block28117250Value3) topAttachment: (block28117250Value4).
    block28117250Value5 := block28117250Value0.
    block28117250Value6 := XmATTACHFORM.
    (block28117250Value5) leftAttachment: (block28117250Value6).
    block28117250Value7 := XmATTACHFORM.
    block28117250Value8 := (block28117250Value0) rightAttachment: (block28117250Value7).
    block28117250Value8
].
            recoveredPC := 278.
        ].
        recoveredStep = 278 ifTrue: [
            recoveredPC := 303.
        ].
        recoveredStep = 303 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 305.
        ].
        recoveredStep = 305 ifTrue: [
            recoveredStack1 := Array.
            recoveredPC := 307.
        ].
        recoveredStep = 307 ifTrue: [
            recoveredStack2 := recoveredLocal8.
            recoveredPC := 310.
        ].
        recoveredStep = 310 ifTrue: [
            recoveredStack3 := recoveredLocal4.
            recoveredPC := 313.
        ].
        recoveredStep = 313 ifTrue: [
            recoveredStack1 := (recoveredStack1) with: (recoveredStack2) with: (recoveredStack3).
            recoveredPC := 315.
        ].
        recoveredStep = 315 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

