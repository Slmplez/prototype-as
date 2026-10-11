"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20487d90; bytecode file offset 0xd84690"
!RB8BitMeasureDataWidget methodsFor: 'recovered'!
initializeTogglesAndLabels
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 recoveredValue21 recoveredValue22 recoveredValue23 recoveredValue24 recoveredValue25 recoveredValue26 recoveredValue27 recoveredValue28 recoveredValue29 |
    super initializeTogglesAndLabels.
    recoveredValue0 := labels.
    recoveredValue1 := (self) widgetAt: ('bit1Label').
    (recoveredValue0) add: (recoveredValue1).
    recoveredValue2 := toggles.
    recoveredValue3 := (self) widgetAt: ('bit2Toggle').
    (recoveredValue2) add: (recoveredValue3).
    recoveredValue4 := labels.
    recoveredValue5 := (self) widgetAt: ('bit2Label').
    (recoveredValue4) add: (recoveredValue5).
    recoveredValue6 := toggles.
    recoveredValue7 := (self) widgetAt: ('bit3Toggle').
    (recoveredValue6) add: (recoveredValue7).
    recoveredValue8 := labels.
    recoveredValue9 := (self) widgetAt: ('bit3Label').
    (recoveredValue8) add: (recoveredValue9).
    recoveredValue10 := toggles.
    recoveredValue11 := (self) widgetAt: ('bit4Toggle').
    (recoveredValue10) add: (recoveredValue11).
    recoveredValue12 := labels.
    recoveredValue13 := (self) widgetAt: ('bit4Label').
    (recoveredValue12) add: (recoveredValue13).
    recoveredValue14 := toggles.
    recoveredValue15 := (self) widgetAt: ('bit5Toggle').
    (recoveredValue14) add: (recoveredValue15).
    recoveredValue16 := labels.
    recoveredValue17 := (self) widgetAt: ('bit5Label').
    (recoveredValue16) add: (recoveredValue17).
    recoveredValue18 := toggles.
    recoveredValue19 := (self) widgetAt: ('bit6Toggle').
    (recoveredValue18) add: (recoveredValue19).
    recoveredValue20 := labels.
    recoveredValue21 := (self) widgetAt: ('bit6Label').
    (recoveredValue20) add: (recoveredValue21).
    recoveredValue22 := toggles.
    recoveredValue23 := (self) widgetAt: ('bit7Toggle').
    (recoveredValue22) add: (recoveredValue23).
    recoveredValue24 := labels.
    recoveredValue25 := (self) widgetAt: ('bit7Label').
    (recoveredValue24) add: (recoveredValue25).
    recoveredValue26 := toggles.
    recoveredValue27 := (self) widgetAt: ('bit8Toggle').
    (recoveredValue26) add: (recoveredValue27).
    recoveredValue28 := labels.
    recoveredValue29 := (self) widgetAt: ('bit8Label').
    (recoveredValue28) add: (recoveredValue29).
    ^self
! !

"ASDBase.ic method 0x206abde4; bytecode file offset 0xfa87e0"
!RB8BitMeasureDataWidget methodsFor: 'recovered'!
createWidgetHierarchy
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredLocal6 recoveredLocal7 recoveredLocal8 recoveredLocal9 recoveredLocal10 recoveredLocal11 recoveredLocal12 recoveredLocal13 recoveredLocal14 recoveredLocal15 recoveredLocal16 recoveredLocal17 recoveredLocal18 recoveredLocal19 recoveredLocal20 recoveredLocal21 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := 1.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal20 := recoveredStack1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := 1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredLocal19 := recoveredStack1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := (recoveredStack0) primaryWidget.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredLocal21 := recoveredStack0.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := Dictionary.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := (recoveredStack0) new.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredLocal18 := recoveredStack0.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := recoveredLocal21.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := 'bit6Toggle'.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack2 := [:recoveredBlock29Arg1 | 
    | recoveredBlock29Value0 recoveredBlock29Value1 recoveredBlock29Value2 recoveredBlock29Value3 recoveredBlock29Value4 recoveredBlock29Value5 recoveredBlock29Value6 recoveredBlock29Value7 recoveredBlock29Value8 recoveredBlock29Value9 recoveredBlock29Value10 recoveredBlock29Value11 recoveredBlock29Value12 recoveredBlock29Value13 recoveredBlock29Value14 recoveredBlock29Value15 recoveredBlock29Value16 recoveredBlock29Value17 recoveredBlock29Value18 |
    recoveredBlock29Value0 := recoveredBlock29Arg1.
    recoveredBlock29Value1 := recoveredBlock29Value0.
    (recoveredBlock29Value1) sensitive: (false).
    recoveredBlock29Value2 := recoveredBlock29Value0.
    recoveredBlock29Value3 := recoveredLocal19.
    recoveredBlock29Value4 := (5) * (recoveredBlock29Value3).
    recoveredBlock29Value5 := (recoveredBlock29Value4) rounded.
    (recoveredBlock29Value2) y: (recoveredBlock29Value5).
    recoveredBlock29Value6 := recoveredBlock29Value0.
    (recoveredBlock29Value6) recomputeSize: (false).
    recoveredBlock29Value7 := recoveredBlock29Value0.
    recoveredBlock29Value8 := recoveredLocal20.
    recoveredBlock29Value9 := (235) * (recoveredBlock29Value8).
    recoveredBlock29Value10 := (recoveredBlock29Value9) rounded.
    (recoveredBlock29Value7) x: (recoveredBlock29Value10).
    recoveredBlock29Value11 := recoveredBlock29Value0.
    recoveredBlock29Value12 := recoveredLocal19.
    recoveredBlock29Value13 := (13) * (recoveredBlock29Value12).
    recoveredBlock29Value14 := (recoveredBlock29Value13) rounded.
    (recoveredBlock29Value11) height: (recoveredBlock29Value14).
    recoveredBlock29Value15 := recoveredLocal20.
    recoveredBlock29Value16 := (13) * (recoveredBlock29Value15).
    recoveredBlock29Value17 := (recoveredBlock29Value16) rounded.
    recoveredBlock29Value18 := (recoveredBlock29Value0) width: (recoveredBlock29Value17).
    recoveredBlock29Value18
].
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack0 := (recoveredStack0) createToggleButton: (recoveredStack1) argBlock: (recoveredStack2).
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack0 := (recoveredStack0) manageChild.
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredLocal6 := recoveredStack0.
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            recoveredStack0 := recoveredLocal18.
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack1 := 'bit6Toggle'.
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            recoveredStack2 := recoveredLocal6.
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            (recoveredStack0) at: (recoveredStack1) put: (recoveredStack2).
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            recoveredStack0 := recoveredLocal21.
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            recoveredStack1 := 'bit3Toggle'.
            recoveredPC := 112.
        ].
        recoveredStep = 112 ifTrue: [
            recoveredStack2 := [:recoveredBlock112Arg1 | 
    | recoveredBlock112Value0 recoveredBlock112Value1 recoveredBlock112Value2 recoveredBlock112Value3 recoveredBlock112Value4 recoveredBlock112Value5 recoveredBlock112Value6 recoveredBlock112Value7 recoveredBlock112Value8 recoveredBlock112Value9 recoveredBlock112Value10 recoveredBlock112Value11 recoveredBlock112Value12 recoveredBlock112Value13 recoveredBlock112Value14 recoveredBlock112Value15 recoveredBlock112Value16 recoveredBlock112Value17 recoveredBlock112Value18 |
    recoveredBlock112Value0 := recoveredBlock112Arg1.
    recoveredBlock112Value1 := recoveredBlock112Value0.
    (recoveredBlock112Value1) sensitive: (false).
    recoveredBlock112Value2 := recoveredBlock112Value0.
    recoveredBlock112Value3 := recoveredLocal19.
    recoveredBlock112Value4 := (5) * (recoveredBlock112Value3).
    recoveredBlock112Value5 := (recoveredBlock112Value4) rounded.
    (recoveredBlock112Value2) y: (recoveredBlock112Value5).
    recoveredBlock112Value6 := recoveredBlock112Value0.
    (recoveredBlock112Value6) recomputeSize: (false).
    recoveredBlock112Value7 := recoveredBlock112Value0.
    recoveredBlock112Value8 := recoveredLocal20.
    recoveredBlock112Value9 := (280) * (recoveredBlock112Value8).
    recoveredBlock112Value10 := (recoveredBlock112Value9) rounded.
    (recoveredBlock112Value7) x: (recoveredBlock112Value10).
    recoveredBlock112Value11 := recoveredBlock112Value0.
    recoveredBlock112Value12 := recoveredLocal19.
    recoveredBlock112Value13 := (13) * (recoveredBlock112Value12).
    recoveredBlock112Value14 := (recoveredBlock112Value13) rounded.
    (recoveredBlock112Value11) height: (recoveredBlock112Value14).
    recoveredBlock112Value15 := recoveredLocal20.
    recoveredBlock112Value16 := (13) * (recoveredBlock112Value15).
    recoveredBlock112Value17 := (recoveredBlock112Value16) rounded.
    recoveredBlock112Value18 := (recoveredBlock112Value0) width: (recoveredBlock112Value17).
    recoveredBlock112Value18
].
            recoveredPC := 172.
        ].
        recoveredStep = 172 ifTrue: [
            recoveredStack0 := (recoveredStack0) createToggleButton: (recoveredStack1) argBlock: (recoveredStack2).
            recoveredPC := 174.
        ].
        recoveredStep = 174 ifTrue: [
            recoveredStack0 := (recoveredStack0) manageChild.
            recoveredPC := 176.
        ].
        recoveredStep = 176 ifTrue: [
            recoveredLocal12 := recoveredStack0.
            recoveredPC := 179.
        ].
        recoveredStep = 179 ifTrue: [
            recoveredStack0 := recoveredLocal18.
            recoveredPC := 182.
        ].
        recoveredStep = 182 ifTrue: [
            recoveredStack1 := 'bit3Toggle'.
            recoveredPC := 184.
        ].
        recoveredStep = 184 ifTrue: [
            recoveredStack2 := recoveredLocal12.
            recoveredPC := 187.
        ].
        recoveredStep = 187 ifTrue: [
            (recoveredStack0) at: (recoveredStack1) put: (recoveredStack2).
            recoveredPC := 189.
        ].
        recoveredStep = 189 ifTrue: [
            recoveredStack0 := recoveredLocal21.
            recoveredPC := 192.
        ].
        recoveredStep = 192 ifTrue: [
            recoveredStack1 := 'bit8Toggle'.
            recoveredPC := 194.
        ].
        recoveredStep = 194 ifTrue: [
            recoveredStack2 := [:recoveredBlock194Arg1 | 
    | recoveredBlock194Value0 recoveredBlock194Value1 recoveredBlock194Value2 recoveredBlock194Value3 recoveredBlock194Value4 recoveredBlock194Value5 recoveredBlock194Value6 recoveredBlock194Value7 recoveredBlock194Value8 recoveredBlock194Value9 recoveredBlock194Value10 recoveredBlock194Value11 recoveredBlock194Value12 recoveredBlock194Value13 recoveredBlock194Value14 recoveredBlock194Value15 recoveredBlock194Value16 recoveredBlock194Value17 recoveredBlock194Value18 |
    recoveredBlock194Value0 := recoveredBlock194Arg1.
    recoveredBlock194Value1 := recoveredBlock194Value0.
    (recoveredBlock194Value1) sensitive: (false).
    recoveredBlock194Value2 := recoveredBlock194Value0.
    recoveredBlock194Value3 := recoveredLocal19.
    recoveredBlock194Value4 := (5) * (recoveredBlock194Value3).
    recoveredBlock194Value5 := (recoveredBlock194Value4) rounded.
    (recoveredBlock194Value2) y: (recoveredBlock194Value5).
    recoveredBlock194Value6 := recoveredBlock194Value0.
    (recoveredBlock194Value6) recomputeSize: (false).
    recoveredBlock194Value7 := recoveredBlock194Value0.
    recoveredBlock194Value8 := recoveredLocal20.
    recoveredBlock194Value9 := (205) * (recoveredBlock194Value8).
    recoveredBlock194Value10 := (recoveredBlock194Value9) rounded.
    (recoveredBlock194Value7) x: (recoveredBlock194Value10).
    recoveredBlock194Value11 := recoveredBlock194Value0.
    recoveredBlock194Value12 := recoveredLocal19.
    recoveredBlock194Value13 := (13) * (recoveredBlock194Value12).
    recoveredBlock194Value14 := (recoveredBlock194Value13) rounded.
    (recoveredBlock194Value11) height: (recoveredBlock194Value14).
    recoveredBlock194Value15 := recoveredLocal20.
    recoveredBlock194Value16 := (13) * (recoveredBlock194Value15).
    recoveredBlock194Value17 := (recoveredBlock194Value16) rounded.
    recoveredBlock194Value18 := (recoveredBlock194Value0) width: (recoveredBlock194Value17).
    recoveredBlock194Value18
].
            recoveredPC := 254.
        ].
        recoveredStep = 254 ifTrue: [
            recoveredStack0 := (recoveredStack0) createToggleButton: (recoveredStack1) argBlock: (recoveredStack2).
            recoveredPC := 256.
        ].
        recoveredStep = 256 ifTrue: [
            recoveredStack0 := (recoveredStack0) manageChild.
            recoveredPC := 258.
        ].
        recoveredStep = 258 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 261.
        ].
        recoveredStep = 261 ifTrue: [
            recoveredStack0 := recoveredLocal18.
            recoveredPC := 264.
        ].
        recoveredStep = 264 ifTrue: [
            recoveredStack1 := 'bit8Toggle'.
            recoveredPC := 266.
        ].
        recoveredStep = 266 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 269.
        ].
        recoveredStep = 269 ifTrue: [
            (recoveredStack0) at: (recoveredStack1) put: (recoveredStack2).
            recoveredPC := 271.
        ].
        recoveredStep = 271 ifTrue: [
            recoveredStack0 := recoveredLocal21.
            recoveredPC := 274.
        ].
        recoveredStep = 274 ifTrue: [
            recoveredStack1 := 'bit5Toggle'.
            recoveredPC := 276.
        ].
        recoveredStep = 276 ifTrue: [
            recoveredStack2 := [:recoveredBlock276Arg1 | 
    | recoveredBlock276Value0 recoveredBlock276Value1 recoveredBlock276Value2 recoveredBlock276Value3 recoveredBlock276Value4 recoveredBlock276Value5 recoveredBlock276Value6 recoveredBlock276Value7 recoveredBlock276Value8 recoveredBlock276Value9 recoveredBlock276Value10 recoveredBlock276Value11 recoveredBlock276Value12 recoveredBlock276Value13 recoveredBlock276Value14 recoveredBlock276Value15 recoveredBlock276Value16 recoveredBlock276Value17 recoveredBlock276Value18 |
    recoveredBlock276Value0 := recoveredBlock276Arg1.
    recoveredBlock276Value1 := recoveredBlock276Value0.
    (recoveredBlock276Value1) sensitive: (false).
    recoveredBlock276Value2 := recoveredBlock276Value0.
    recoveredBlock276Value3 := recoveredLocal19.
    recoveredBlock276Value4 := (5) * (recoveredBlock276Value3).
    recoveredBlock276Value5 := (recoveredBlock276Value4) rounded.
    (recoveredBlock276Value2) y: (recoveredBlock276Value5).
    recoveredBlock276Value6 := recoveredBlock276Value0.
    (recoveredBlock276Value6) recomputeSize: (false).
    recoveredBlock276Value7 := recoveredBlock276Value0.
    recoveredBlock276Value8 := recoveredLocal20.
    recoveredBlock276Value9 := (250) * (recoveredBlock276Value8).
    recoveredBlock276Value10 := (recoveredBlock276Value9) rounded.
    (recoveredBlock276Value7) x: (recoveredBlock276Value10).
    recoveredBlock276Value11 := recoveredBlock276Value0.
    recoveredBlock276Value12 := recoveredLocal19.
    recoveredBlock276Value13 := (13) * (recoveredBlock276Value12).
    recoveredBlock276Value14 := (recoveredBlock276Value13) rounded.
    (recoveredBlock276Value11) height: (recoveredBlock276Value14).
    recoveredBlock276Value15 := recoveredLocal20.
    recoveredBlock276Value16 := (13) * (recoveredBlock276Value15).
    recoveredBlock276Value17 := (recoveredBlock276Value16) rounded.
    recoveredBlock276Value18 := (recoveredBlock276Value0) width: (recoveredBlock276Value17).
    recoveredBlock276Value18
].
            recoveredPC := 336.
        ].
        recoveredStep = 336 ifTrue: [
            recoveredStack0 := (recoveredStack0) createToggleButton: (recoveredStack1) argBlock: (recoveredStack2).
            recoveredPC := 338.
        ].
        recoveredStep = 338 ifTrue: [
            recoveredStack0 := (recoveredStack0) manageChild.
            recoveredPC := 340.
        ].
        recoveredStep = 340 ifTrue: [
            recoveredLocal8 := recoveredStack0.
            recoveredPC := 343.
        ].
        recoveredStep = 343 ifTrue: [
            recoveredStack0 := recoveredLocal18.
            recoveredPC := 346.
        ].
        recoveredStep = 346 ifTrue: [
            recoveredStack1 := 'bit5Toggle'.
            recoveredPC := 348.
        ].
        recoveredStep = 348 ifTrue: [
            recoveredStack2 := recoveredLocal8.
            recoveredPC := 351.
        ].
        recoveredStep = 351 ifTrue: [
            (recoveredStack0) at: (recoveredStack1) put: (recoveredStack2).
            recoveredPC := 353.
        ].
        recoveredStep = 353 ifTrue: [
            recoveredStack0 := recoveredLocal21.
            recoveredPC := 356.
        ].
        recoveredStep = 356 ifTrue: [
            recoveredStack1 := 'bit2Toggle'.
            recoveredPC := 358.
        ].
        recoveredStep = 358 ifTrue: [
            recoveredStack2 := [:recoveredBlock358Arg1 | 
    | recoveredBlock358Value0 recoveredBlock358Value1 recoveredBlock358Value2 recoveredBlock358Value3 recoveredBlock358Value4 recoveredBlock358Value5 recoveredBlock358Value6 recoveredBlock358Value7 recoveredBlock358Value8 recoveredBlock358Value9 recoveredBlock358Value10 recoveredBlock358Value11 recoveredBlock358Value12 recoveredBlock358Value13 recoveredBlock358Value14 recoveredBlock358Value15 recoveredBlock358Value16 recoveredBlock358Value17 recoveredBlock358Value18 |
    recoveredBlock358Value0 := recoveredBlock358Arg1.
    recoveredBlock358Value1 := recoveredBlock358Value0.
    (recoveredBlock358Value1) sensitive: (false).
    recoveredBlock358Value2 := recoveredBlock358Value0.
    recoveredBlock358Value3 := recoveredLocal19.
    recoveredBlock358Value4 := (5) * (recoveredBlock358Value3).
    recoveredBlock358Value5 := (recoveredBlock358Value4) rounded.
    (recoveredBlock358Value2) y: (recoveredBlock358Value5).
    recoveredBlock358Value6 := recoveredBlock358Value0.
    (recoveredBlock358Value6) recomputeSize: (false).
    recoveredBlock358Value7 := recoveredBlock358Value0.
    recoveredBlock358Value8 := recoveredLocal20.
    recoveredBlock358Value9 := (295) * (recoveredBlock358Value8).
    recoveredBlock358Value10 := (recoveredBlock358Value9) rounded.
    (recoveredBlock358Value7) x: (recoveredBlock358Value10).
    recoveredBlock358Value11 := recoveredBlock358Value0.
    recoveredBlock358Value12 := recoveredLocal19.
    recoveredBlock358Value13 := (13) * (recoveredBlock358Value12).
    recoveredBlock358Value14 := (recoveredBlock358Value13) rounded.
    (recoveredBlock358Value11) height: (recoveredBlock358Value14).
    recoveredBlock358Value15 := recoveredLocal20.
    recoveredBlock358Value16 := (13) * (recoveredBlock358Value15).
    recoveredBlock358Value17 := (recoveredBlock358Value16) rounded.
    recoveredBlock358Value18 := (recoveredBlock358Value0) width: (recoveredBlock358Value17).
    recoveredBlock358Value18
].
            recoveredPC := 418.
        ].
        recoveredStep = 418 ifTrue: [
            recoveredStack0 := (recoveredStack0) createToggleButton: (recoveredStack1) argBlock: (recoveredStack2).
            recoveredPC := 420.
        ].
        recoveredStep = 420 ifTrue: [
            recoveredStack0 := (recoveredStack0) manageChild.
            recoveredPC := 422.
        ].
        recoveredStep = 422 ifTrue: [
            recoveredLocal14 := recoveredStack0.
            recoveredPC := 425.
        ].
        recoveredStep = 425 ifTrue: [
            recoveredStack0 := recoveredLocal18.
            recoveredPC := 428.
        ].
        recoveredStep = 428 ifTrue: [
            recoveredStack1 := 'bit2Toggle'.
            recoveredPC := 430.
        ].
        recoveredStep = 430 ifTrue: [
            recoveredStack2 := recoveredLocal14.
            recoveredPC := 433.
        ].
        recoveredStep = 433 ifTrue: [
            (recoveredStack0) at: (recoveredStack1) put: (recoveredStack2).
            recoveredPC := 435.
        ].
        recoveredStep = 435 ifTrue: [
            recoveredStack0 := recoveredLocal21.
            recoveredPC := 438.
        ].
        recoveredStep = 438 ifTrue: [
            recoveredStack1 := 'bit1Toggle'.
            recoveredPC := 440.
        ].
        recoveredStep = 440 ifTrue: [
            recoveredStack2 := [:recoveredBlock440Arg1 | 
    | recoveredBlock440Value0 recoveredBlock440Value1 recoveredBlock440Value2 recoveredBlock440Value3 recoveredBlock440Value4 recoveredBlock440Value5 recoveredBlock440Value6 recoveredBlock440Value7 recoveredBlock440Value8 recoveredBlock440Value9 recoveredBlock440Value10 recoveredBlock440Value11 recoveredBlock440Value12 recoveredBlock440Value13 recoveredBlock440Value14 recoveredBlock440Value15 recoveredBlock440Value16 recoveredBlock440Value17 |
    recoveredBlock440Value0 := recoveredBlock440Arg1.
    recoveredBlock440Value1 := recoveredBlock440Value0.
    recoveredBlock440Value2 := recoveredLocal19.
    recoveredBlock440Value3 := (5) * (recoveredBlock440Value2).
    recoveredBlock440Value4 := (recoveredBlock440Value3) rounded.
    (recoveredBlock440Value1) y: (recoveredBlock440Value4).
    recoveredBlock440Value5 := recoveredBlock440Value0.
    (recoveredBlock440Value5) recomputeSize: (false).
    recoveredBlock440Value6 := recoveredBlock440Value0.
    recoveredBlock440Value7 := recoveredLocal20.
    recoveredBlock440Value8 := (310) * (recoveredBlock440Value7).
    recoveredBlock440Value9 := (recoveredBlock440Value8) rounded.
    (recoveredBlock440Value6) x: (recoveredBlock440Value9).
    recoveredBlock440Value10 := recoveredBlock440Value0.
    recoveredBlock440Value11 := recoveredLocal19.
    recoveredBlock440Value12 := (13) * (recoveredBlock440Value11).
    recoveredBlock440Value13 := (recoveredBlock440Value12) rounded.
    (recoveredBlock440Value10) height: (recoveredBlock440Value13).
    recoveredBlock440Value14 := recoveredLocal20.
    recoveredBlock440Value15 := (13) * (recoveredBlock440Value14).
    recoveredBlock440Value16 := (recoveredBlock440Value15) rounded.
    recoveredBlock440Value17 := (recoveredBlock440Value0) width: (recoveredBlock440Value16).
    recoveredBlock440Value17
].
            recoveredPC := 496.
        ].
        recoveredStep = 496 ifTrue: [
            recoveredStack0 := (recoveredStack0) createToggleButton: (recoveredStack1) argBlock: (recoveredStack2).
            recoveredPC := 498.
        ].
        recoveredStep = 498 ifTrue: [
            recoveredStack0 := (recoveredStack0) manageChild.
            recoveredPC := 500.
        ].
        recoveredStep = 500 ifTrue: [
            recoveredLocal17 := recoveredStack0.
            recoveredPC := 503.
        ].
        recoveredStep = 503 ifTrue: [
            recoveredStack0 := recoveredLocal18.
            recoveredPC := 506.
        ].
        recoveredStep = 506 ifTrue: [
            recoveredStack1 := 'bit1Toggle'.
            recoveredPC := 508.
        ].
        recoveredStep = 508 ifTrue: [
            recoveredStack2 := recoveredLocal17.
            recoveredPC := 511.
        ].
        recoveredStep = 511 ifTrue: [
            (recoveredStack0) at: (recoveredStack1) put: (recoveredStack2).
            recoveredPC := 513.
        ].
        recoveredStep = 513 ifTrue: [
            recoveredStack0 := recoveredLocal21.
            recoveredPC := 516.
        ].
        recoveredStep = 516 ifTrue: [
            recoveredStack1 := 'bit4Toggle'.
            recoveredPC := 518.
        ].
        recoveredStep = 518 ifTrue: [
            recoveredStack2 := [:recoveredBlock518Arg1 | 
    | recoveredBlock518Value0 recoveredBlock518Value1 recoveredBlock518Value2 recoveredBlock518Value3 recoveredBlock518Value4 recoveredBlock518Value5 recoveredBlock518Value6 recoveredBlock518Value7 recoveredBlock518Value8 recoveredBlock518Value9 recoveredBlock518Value10 recoveredBlock518Value11 recoveredBlock518Value12 recoveredBlock518Value13 recoveredBlock518Value14 recoveredBlock518Value15 recoveredBlock518Value16 recoveredBlock518Value17 recoveredBlock518Value18 |
    recoveredBlock518Value0 := recoveredBlock518Arg1.
    recoveredBlock518Value1 := recoveredBlock518Value0.
    (recoveredBlock518Value1) sensitive: (false).
    recoveredBlock518Value2 := recoveredBlock518Value0.
    recoveredBlock518Value3 := recoveredLocal19.
    recoveredBlock518Value4 := (5) * (recoveredBlock518Value3).
    recoveredBlock518Value5 := (recoveredBlock518Value4) rounded.
    (recoveredBlock518Value2) y: (recoveredBlock518Value5).
    recoveredBlock518Value6 := recoveredBlock518Value0.
    (recoveredBlock518Value6) recomputeSize: (false).
    recoveredBlock518Value7 := recoveredBlock518Value0.
    recoveredBlock518Value8 := recoveredLocal20.
    recoveredBlock518Value9 := (265) * (recoveredBlock518Value8).
    recoveredBlock518Value10 := (recoveredBlock518Value9) rounded.
    (recoveredBlock518Value7) x: (recoveredBlock518Value10).
    recoveredBlock518Value11 := recoveredBlock518Value0.
    recoveredBlock518Value12 := recoveredLocal19.
    recoveredBlock518Value13 := (13) * (recoveredBlock518Value12).
    recoveredBlock518Value14 := (recoveredBlock518Value13) rounded.
    (recoveredBlock518Value11) height: (recoveredBlock518Value14).
    recoveredBlock518Value15 := recoveredLocal20.
    recoveredBlock518Value16 := (13) * (recoveredBlock518Value15).
    recoveredBlock518Value17 := (recoveredBlock518Value16) rounded.
    recoveredBlock518Value18 := (recoveredBlock518Value0) width: (recoveredBlock518Value17).
    recoveredBlock518Value18
].
            recoveredPC := 578.
        ].
        recoveredStep = 578 ifTrue: [
            recoveredStack0 := (recoveredStack0) createToggleButton: (recoveredStack1) argBlock: (recoveredStack2).
            recoveredPC := 580.
        ].
        recoveredStep = 580 ifTrue: [
            recoveredStack0 := (recoveredStack0) manageChild.
            recoveredPC := 582.
        ].
        recoveredStep = 582 ifTrue: [
            recoveredLocal10 := recoveredStack0.
            recoveredPC := 585.
        ].
        recoveredStep = 585 ifTrue: [
            recoveredStack0 := recoveredLocal18.
            recoveredPC := 588.
        ].
        recoveredStep = 588 ifTrue: [
            recoveredStack1 := 'bit4Toggle'.
            recoveredPC := 590.
        ].
        recoveredStep = 590 ifTrue: [
            recoveredStack2 := recoveredLocal10.
            recoveredPC := 593.
        ].
        recoveredStep = 593 ifTrue: [
            (recoveredStack0) at: (recoveredStack1) put: (recoveredStack2).
            recoveredPC := 595.
        ].
        recoveredStep = 595 ifTrue: [
            recoveredStack0 := recoveredLocal21.
            recoveredPC := 598.
        ].
        recoveredStep = 598 ifTrue: [
            recoveredStack1 := 'bit7Toggle'.
            recoveredPC := 600.
        ].
        recoveredStep = 600 ifTrue: [
            recoveredStack2 := [:recoveredBlock600Arg1 | 
    | recoveredBlock600Value0 recoveredBlock600Value1 recoveredBlock600Value2 recoveredBlock600Value3 recoveredBlock600Value4 recoveredBlock600Value5 recoveredBlock600Value6 recoveredBlock600Value7 recoveredBlock600Value8 recoveredBlock600Value9 recoveredBlock600Value10 recoveredBlock600Value11 recoveredBlock600Value12 recoveredBlock600Value13 recoveredBlock600Value14 recoveredBlock600Value15 recoveredBlock600Value16 recoveredBlock600Value17 recoveredBlock600Value18 |
    recoveredBlock600Value0 := recoveredBlock600Arg1.
    recoveredBlock600Value1 := recoveredBlock600Value0.
    (recoveredBlock600Value1) sensitive: (false).
    recoveredBlock600Value2 := recoveredBlock600Value0.
    recoveredBlock600Value3 := recoveredLocal19.
    recoveredBlock600Value4 := (5) * (recoveredBlock600Value3).
    recoveredBlock600Value5 := (recoveredBlock600Value4) rounded.
    (recoveredBlock600Value2) y: (recoveredBlock600Value5).
    recoveredBlock600Value6 := recoveredBlock600Value0.
    (recoveredBlock600Value6) recomputeSize: (false).
    recoveredBlock600Value7 := recoveredBlock600Value0.
    recoveredBlock600Value8 := recoveredLocal20.
    recoveredBlock600Value9 := (220) * (recoveredBlock600Value8).
    recoveredBlock600Value10 := (recoveredBlock600Value9) rounded.
    (recoveredBlock600Value7) x: (recoveredBlock600Value10).
    recoveredBlock600Value11 := recoveredBlock600Value0.
    recoveredBlock600Value12 := recoveredLocal19.
    recoveredBlock600Value13 := (13) * (recoveredBlock600Value12).
    recoveredBlock600Value14 := (recoveredBlock600Value13) rounded.
    (recoveredBlock600Value11) height: (recoveredBlock600Value14).
    recoveredBlock600Value15 := recoveredLocal20.
    recoveredBlock600Value16 := (13) * (recoveredBlock600Value15).
    recoveredBlock600Value17 := (recoveredBlock600Value16) rounded.
    recoveredBlock600Value18 := (recoveredBlock600Value0) width: (recoveredBlock600Value17).
    recoveredBlock600Value18
].
            recoveredPC := 660.
        ].
        recoveredStep = 660 ifTrue: [
            recoveredStack0 := (recoveredStack0) createToggleButton: (recoveredStack1) argBlock: (recoveredStack2).
            recoveredPC := 662.
        ].
        recoveredStep = 662 ifTrue: [
            recoveredStack0 := (recoveredStack0) manageChild.
            recoveredPC := 664.
        ].
        recoveredStep = 664 ifTrue: [
            recoveredLocal4 := recoveredStack0.
            recoveredPC := 667.
        ].
        recoveredStep = 667 ifTrue: [
            recoveredStack0 := recoveredLocal18.
            recoveredPC := 670.
        ].
        recoveredStep = 670 ifTrue: [
            recoveredStack1 := 'bit7Toggle'.
            recoveredPC := 672.
        ].
        recoveredStep = 672 ifTrue: [
            recoveredStack2 := recoveredLocal4.
            recoveredPC := 675.
        ].
        recoveredStep = 675 ifTrue: [
            (recoveredStack0) at: (recoveredStack1) put: (recoveredStack2).
            recoveredPC := 677.
        ].
        recoveredStep = 677 ifTrue: [
            recoveredStack0 := recoveredLocal21.
            recoveredPC := 680.
        ].
        recoveredStep = 680 ifTrue: [
            recoveredStack1 := 'bit7Label'.
            recoveredPC := 682.
        ].
        recoveredStep = 682 ifTrue: [
            recoveredStack2 := [:recoveredBlock682Arg1 | 
    | recoveredBlock682Value0 recoveredBlock682Value1 recoveredBlock682Value2 recoveredBlock682Value3 recoveredBlock682Value4 recoveredBlock682Value5 recoveredBlock682Value6 recoveredBlock682Value7 recoveredBlock682Value8 recoveredBlock682Value9 recoveredBlock682Value10 recoveredBlock682Value11 recoveredBlock682Value12 recoveredBlock682Value13 recoveredBlock682Value14 recoveredBlock682Value15 recoveredBlock682Value16 recoveredBlock682Value17 recoveredBlock682Value18 recoveredBlock682Value19 |
    recoveredBlock682Value0 := recoveredBlock682Arg1.
    recoveredBlock682Value1 := recoveredBlock682Value0.
    recoveredBlock682Value2 := recoveredLocal20.
    recoveredBlock682Value3 := (220) * (recoveredBlock682Value2).
    recoveredBlock682Value4 := (recoveredBlock682Value3) rounded.
    (recoveredBlock682Value1) x: (recoveredBlock682Value4).
    recoveredBlock682Value5 := recoveredBlock682Value0.
    (recoveredBlock682Value5) labelString: ('7').
    recoveredBlock682Value6 := recoveredBlock682Value0.
    (recoveredBlock682Value6) marginHeight: (0).
    recoveredBlock682Value7 := recoveredBlock682Value0.
    recoveredBlock682Value8 := recoveredLocal19.
    recoveredBlock682Value9 := (18) * (recoveredBlock682Value8).
    recoveredBlock682Value10 := (recoveredBlock682Value9) rounded.
    (recoveredBlock682Value7) y: (recoveredBlock682Value10).
    recoveredBlock682Value11 := recoveredBlock682Value0.
    recoveredBlock682Value12 := recoveredLocal19.
    recoveredBlock682Value13 := (11) * (recoveredBlock682Value12).
    recoveredBlock682Value14 := (recoveredBlock682Value13) rounded.
    (recoveredBlock682Value11) height: (recoveredBlock682Value14).
    recoveredBlock682Value15 := recoveredBlock682Value0.
    recoveredBlock682Value16 := recoveredLocal20.
    recoveredBlock682Value17 := (13) * (recoveredBlock682Value16).
    recoveredBlock682Value18 := (recoveredBlock682Value17) rounded.
    (recoveredBlock682Value15) width: (recoveredBlock682Value18).
    recoveredBlock682Value19 := (recoveredBlock682Value0) recomputeSize: (false).
    recoveredBlock682Value19
].
            recoveredPC := 749.
        ].
        recoveredStep = 749 ifTrue: [
            recoveredStack0 := (recoveredStack0) createLabel: (recoveredStack1) argBlock: (recoveredStack2).
            recoveredPC := 751.
        ].
        recoveredStep = 751 ifTrue: [
            recoveredStack0 := (recoveredStack0) manageChild.
            recoveredPC := 753.
        ].
        recoveredStep = 753 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 756.
        ].
        recoveredStep = 756 ifTrue: [
            recoveredStack0 := recoveredLocal18.
            recoveredPC := 759.
        ].
        recoveredStep = 759 ifTrue: [
            recoveredStack1 := 'bit7Label'.
            recoveredPC := 761.
        ].
        recoveredStep = 761 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 764.
        ].
        recoveredStep = 764 ifTrue: [
            (recoveredStack0) at: (recoveredStack1) put: (recoveredStack2).
            recoveredPC := 766.
        ].
        recoveredStep = 766 ifTrue: [
            recoveredStack0 := recoveredLocal21.
            recoveredPC := 769.
        ].
        recoveredStep = 769 ifTrue: [
            recoveredStack1 := 'bit8Label'.
            recoveredPC := 771.
        ].
        recoveredStep = 771 ifTrue: [
            recoveredStack2 := [:recoveredBlock771Arg1 | 
    | recoveredBlock771Value0 recoveredBlock771Value1 recoveredBlock771Value2 recoveredBlock771Value3 recoveredBlock771Value4 recoveredBlock771Value5 recoveredBlock771Value6 recoveredBlock771Value7 recoveredBlock771Value8 recoveredBlock771Value9 recoveredBlock771Value10 recoveredBlock771Value11 recoveredBlock771Value12 recoveredBlock771Value13 recoveredBlock771Value14 recoveredBlock771Value15 recoveredBlock771Value16 recoveredBlock771Value17 recoveredBlock771Value18 recoveredBlock771Value19 |
    recoveredBlock771Value0 := recoveredBlock771Arg1.
    recoveredBlock771Value1 := recoveredBlock771Value0.
    recoveredBlock771Value2 := recoveredLocal20.
    recoveredBlock771Value3 := (205) * (recoveredBlock771Value2).
    recoveredBlock771Value4 := (recoveredBlock771Value3) rounded.
    (recoveredBlock771Value1) x: (recoveredBlock771Value4).
    recoveredBlock771Value5 := recoveredBlock771Value0.
    (recoveredBlock771Value5) labelString: ('8').
    recoveredBlock771Value6 := recoveredBlock771Value0.
    recoveredBlock771Value7 := recoveredLocal19.
    recoveredBlock771Value8 := (18) * (recoveredBlock771Value7).
    recoveredBlock771Value9 := (recoveredBlock771Value8) rounded.
    (recoveredBlock771Value6) y: (recoveredBlock771Value9).
    recoveredBlock771Value10 := recoveredBlock771Value0.
    (recoveredBlock771Value10) marginHeight: (0).
    recoveredBlock771Value11 := recoveredBlock771Value0.
    recoveredBlock771Value12 := recoveredLocal19.
    recoveredBlock771Value13 := (11) * (recoveredBlock771Value12).
    recoveredBlock771Value14 := (recoveredBlock771Value13) rounded.
    (recoveredBlock771Value11) height: (recoveredBlock771Value14).
    recoveredBlock771Value15 := recoveredBlock771Value0.
    recoveredBlock771Value16 := recoveredLocal20.
    recoveredBlock771Value17 := (13) * (recoveredBlock771Value16).
    recoveredBlock771Value18 := (recoveredBlock771Value17) rounded.
    (recoveredBlock771Value15) width: (recoveredBlock771Value18).
    recoveredBlock771Value19 := (recoveredBlock771Value0) recomputeSize: (false).
    recoveredBlock771Value19
].
            recoveredPC := 839.
        ].
        recoveredStep = 839 ifTrue: [
            recoveredStack0 := (recoveredStack0) createLabel: (recoveredStack1) argBlock: (recoveredStack2).
            recoveredPC := 841.
        ].
        recoveredStep = 841 ifTrue: [
            recoveredStack0 := (recoveredStack0) manageChild.
            recoveredPC := 843.
        ].
        recoveredStep = 843 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 846.
        ].
        recoveredStep = 846 ifTrue: [
            recoveredStack0 := recoveredLocal18.
            recoveredPC := 849.
        ].
        recoveredStep = 849 ifTrue: [
            recoveredStack1 := 'bit8Label'.
            recoveredPC := 851.
        ].
        recoveredStep = 851 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 854.
        ].
        recoveredStep = 854 ifTrue: [
            (recoveredStack0) at: (recoveredStack1) put: (recoveredStack2).
            recoveredPC := 856.
        ].
        recoveredStep = 856 ifTrue: [
            recoveredStack0 := recoveredLocal21.
            recoveredPC := 859.
        ].
        recoveredStep = 859 ifTrue: [
            recoveredStack1 := 'bit1Label'.
            recoveredPC := 861.
        ].
        recoveredStep = 861 ifTrue: [
            recoveredStack2 := [:recoveredBlock861Arg1 | 
    | recoveredBlock861Value0 recoveredBlock861Value1 recoveredBlock861Value2 recoveredBlock861Value3 recoveredBlock861Value4 recoveredBlock861Value5 recoveredBlock861Value6 recoveredBlock861Value7 recoveredBlock861Value8 recoveredBlock861Value9 recoveredBlock861Value10 recoveredBlock861Value11 recoveredBlock861Value12 recoveredBlock861Value13 recoveredBlock861Value14 recoveredBlock861Value15 recoveredBlock861Value16 recoveredBlock861Value17 recoveredBlock861Value18 recoveredBlock861Value19 |
    recoveredBlock861Value0 := recoveredBlock861Arg1.
    recoveredBlock861Value1 := recoveredBlock861Value0.
    recoveredBlock861Value2 := recoveredLocal20.
    recoveredBlock861Value3 := (310) * (recoveredBlock861Value2).
    recoveredBlock861Value4 := (recoveredBlock861Value3) rounded.
    (recoveredBlock861Value1) x: (recoveredBlock861Value4).
    recoveredBlock861Value5 := recoveredBlock861Value0.
    (recoveredBlock861Value5) labelString: ('1').
    recoveredBlock861Value6 := recoveredBlock861Value0.
    recoveredBlock861Value7 := recoveredLocal19.
    recoveredBlock861Value8 := (18) * (recoveredBlock861Value7).
    recoveredBlock861Value9 := (recoveredBlock861Value8) rounded.
    (recoveredBlock861Value6) y: (recoveredBlock861Value9).
    recoveredBlock861Value10 := recoveredBlock861Value0.
    (recoveredBlock861Value10) marginHeight: (0).
    recoveredBlock861Value11 := recoveredBlock861Value0.
    recoveredBlock861Value12 := recoveredLocal19.
    recoveredBlock861Value13 := (11) * (recoveredBlock861Value12).
    recoveredBlock861Value14 := (recoveredBlock861Value13) rounded.
    (recoveredBlock861Value11) height: (recoveredBlock861Value14).
    recoveredBlock861Value15 := recoveredBlock861Value0.
    recoveredBlock861Value16 := recoveredLocal20.
    recoveredBlock861Value17 := (13) * (recoveredBlock861Value16).
    recoveredBlock861Value18 := (recoveredBlock861Value17) rounded.
    (recoveredBlock861Value15) width: (recoveredBlock861Value18).
    recoveredBlock861Value19 := (recoveredBlock861Value0) recomputeSize: (false).
    recoveredBlock861Value19
].
            recoveredPC := 929.
        ].
        recoveredStep = 929 ifTrue: [
            recoveredStack0 := (recoveredStack0) createLabel: (recoveredStack1) argBlock: (recoveredStack2).
            recoveredPC := 931.
        ].
        recoveredStep = 931 ifTrue: [
            recoveredStack0 := (recoveredStack0) manageChild.
            recoveredPC := 933.
        ].
        recoveredStep = 933 ifTrue: [
            recoveredLocal16 := recoveredStack0.
            recoveredPC := 936.
        ].
        recoveredStep = 936 ifTrue: [
            recoveredStack0 := recoveredLocal18.
            recoveredPC := 939.
        ].
        recoveredStep = 939 ifTrue: [
            recoveredStack1 := 'bit1Label'.
            recoveredPC := 941.
        ].
        recoveredStep = 941 ifTrue: [
            recoveredStack2 := recoveredLocal16.
            recoveredPC := 944.
        ].
        recoveredStep = 944 ifTrue: [
            (recoveredStack0) at: (recoveredStack1) put: (recoveredStack2).
            recoveredPC := 946.
        ].
        recoveredStep = 946 ifTrue: [
            recoveredStack0 := recoveredLocal21.
            recoveredPC := 949.
        ].
        recoveredStep = 949 ifTrue: [
            recoveredStack1 := 'bit5Label'.
            recoveredPC := 951.
        ].
        recoveredStep = 951 ifTrue: [
            recoveredStack2 := [:recoveredBlock951Arg1 | 
    | recoveredBlock951Value0 recoveredBlock951Value1 recoveredBlock951Value2 recoveredBlock951Value3 recoveredBlock951Value4 recoveredBlock951Value5 recoveredBlock951Value6 recoveredBlock951Value7 recoveredBlock951Value8 recoveredBlock951Value9 recoveredBlock951Value10 recoveredBlock951Value11 recoveredBlock951Value12 recoveredBlock951Value13 recoveredBlock951Value14 recoveredBlock951Value15 recoveredBlock951Value16 recoveredBlock951Value17 recoveredBlock951Value18 recoveredBlock951Value19 |
    recoveredBlock951Value0 := recoveredBlock951Arg1.
    recoveredBlock951Value1 := recoveredBlock951Value0.
    recoveredBlock951Value2 := recoveredLocal20.
    recoveredBlock951Value3 := (250) * (recoveredBlock951Value2).
    recoveredBlock951Value4 := (recoveredBlock951Value3) rounded.
    (recoveredBlock951Value1) x: (recoveredBlock951Value4).
    recoveredBlock951Value5 := recoveredBlock951Value0.
    (recoveredBlock951Value5) labelString: ('5').
    recoveredBlock951Value6 := recoveredBlock951Value0.
    (recoveredBlock951Value6) marginHeight: (0).
    recoveredBlock951Value7 := recoveredBlock951Value0.
    recoveredBlock951Value8 := recoveredLocal19.
    recoveredBlock951Value9 := (18) * (recoveredBlock951Value8).
    recoveredBlock951Value10 := (recoveredBlock951Value9) rounded.
    (recoveredBlock951Value7) y: (recoveredBlock951Value10).
    recoveredBlock951Value11 := recoveredBlock951Value0.
    recoveredBlock951Value12 := recoveredLocal19.
    recoveredBlock951Value13 := (11) * (recoveredBlock951Value12).
    recoveredBlock951Value14 := (recoveredBlock951Value13) rounded.
    (recoveredBlock951Value11) height: (recoveredBlock951Value14).
    recoveredBlock951Value15 := recoveredBlock951Value0.
    recoveredBlock951Value16 := recoveredLocal20.
    recoveredBlock951Value17 := (13) * (recoveredBlock951Value16).
    recoveredBlock951Value18 := (recoveredBlock951Value17) rounded.
    (recoveredBlock951Value15) width: (recoveredBlock951Value18).
    recoveredBlock951Value19 := (recoveredBlock951Value0) recomputeSize: (false).
    recoveredBlock951Value19
].
            recoveredPC := 1019.
        ].
        recoveredStep = 1019 ifTrue: [
            recoveredStack0 := (recoveredStack0) createLabel: (recoveredStack1) argBlock: (recoveredStack2).
            recoveredPC := 1021.
        ].
        recoveredStep = 1021 ifTrue: [
            recoveredStack0 := (recoveredStack0) manageChild.
            recoveredPC := 1023.
        ].
        recoveredStep = 1023 ifTrue: [
            recoveredLocal7 := recoveredStack0.
            recoveredPC := 1026.
        ].
        recoveredStep = 1026 ifTrue: [
            recoveredStack0 := recoveredLocal18.
            recoveredPC := 1029.
        ].
        recoveredStep = 1029 ifTrue: [
            recoveredStack1 := 'bit5Label'.
            recoveredPC := 1031.
        ].
        recoveredStep = 1031 ifTrue: [
            recoveredStack2 := recoveredLocal7.
            recoveredPC := 1034.
        ].
        recoveredStep = 1034 ifTrue: [
            (recoveredStack0) at: (recoveredStack1) put: (recoveredStack2).
            recoveredPC := 1036.
        ].
        recoveredStep = 1036 ifTrue: [
            recoveredStack0 := recoveredLocal21.
            recoveredPC := 1039.
        ].
        recoveredStep = 1039 ifTrue: [
            recoveredStack1 := 'bit3Label'.
            recoveredPC := 1041.
        ].
        recoveredStep = 1041 ifTrue: [
            recoveredStack2 := [:recoveredBlock1041Arg1 | 
    | recoveredBlock1041Value0 recoveredBlock1041Value1 recoveredBlock1041Value2 recoveredBlock1041Value3 recoveredBlock1041Value4 recoveredBlock1041Value5 recoveredBlock1041Value6 recoveredBlock1041Value7 recoveredBlock1041Value8 recoveredBlock1041Value9 recoveredBlock1041Value10 recoveredBlock1041Value11 recoveredBlock1041Value12 recoveredBlock1041Value13 recoveredBlock1041Value14 recoveredBlock1041Value15 recoveredBlock1041Value16 recoveredBlock1041Value17 recoveredBlock1041Value18 recoveredBlock1041Value19 |
    recoveredBlock1041Value0 := recoveredBlock1041Arg1.
    recoveredBlock1041Value1 := recoveredBlock1041Value0.
    recoveredBlock1041Value2 := recoveredLocal20.
    recoveredBlock1041Value3 := (280) * (recoveredBlock1041Value2).
    recoveredBlock1041Value4 := (recoveredBlock1041Value3) rounded.
    (recoveredBlock1041Value1) x: (recoveredBlock1041Value4).
    recoveredBlock1041Value5 := recoveredBlock1041Value0.
    (recoveredBlock1041Value5) labelString: ('3').
    recoveredBlock1041Value6 := recoveredBlock1041Value0.
    recoveredBlock1041Value7 := recoveredLocal19.
    recoveredBlock1041Value8 := (18) * (recoveredBlock1041Value7).
    recoveredBlock1041Value9 := (recoveredBlock1041Value8) rounded.
    (recoveredBlock1041Value6) y: (recoveredBlock1041Value9).
    recoveredBlock1041Value10 := recoveredBlock1041Value0.
    (recoveredBlock1041Value10) marginHeight: (0).
    recoveredBlock1041Value11 := recoveredBlock1041Value0.
    recoveredBlock1041Value12 := recoveredLocal19.
    recoveredBlock1041Value13 := (11) * (recoveredBlock1041Value12).
    recoveredBlock1041Value14 := (recoveredBlock1041Value13) rounded.
    (recoveredBlock1041Value11) height: (recoveredBlock1041Value14).
    recoveredBlock1041Value15 := recoveredBlock1041Value0.
    recoveredBlock1041Value16 := recoveredLocal20.
    recoveredBlock1041Value17 := (13) * (recoveredBlock1041Value16).
    recoveredBlock1041Value18 := (recoveredBlock1041Value17) rounded.
    (recoveredBlock1041Value15) width: (recoveredBlock1041Value18).
    recoveredBlock1041Value19 := (recoveredBlock1041Value0) recomputeSize: (false).
    recoveredBlock1041Value19
].
            recoveredPC := 1109.
        ].
        recoveredStep = 1109 ifTrue: [
            recoveredStack0 := (recoveredStack0) createLabel: (recoveredStack1) argBlock: (recoveredStack2).
            recoveredPC := 1111.
        ].
        recoveredStep = 1111 ifTrue: [
            recoveredStack0 := (recoveredStack0) manageChild.
            recoveredPC := 1113.
        ].
        recoveredStep = 1113 ifTrue: [
            recoveredLocal11 := recoveredStack0.
            recoveredPC := 1116.
        ].
        recoveredStep = 1116 ifTrue: [
            recoveredStack0 := recoveredLocal18.
            recoveredPC := 1119.
        ].
        recoveredStep = 1119 ifTrue: [
            recoveredStack1 := 'bit3Label'.
            recoveredPC := 1121.
        ].
        recoveredStep = 1121 ifTrue: [
            recoveredStack2 := recoveredLocal11.
            recoveredPC := 1124.
        ].
        recoveredStep = 1124 ifTrue: [
            (recoveredStack0) at: (recoveredStack1) put: (recoveredStack2).
            recoveredPC := 1126.
        ].
        recoveredStep = 1126 ifTrue: [
            recoveredStack0 := recoveredLocal21.
            recoveredPC := 1129.
        ].
        recoveredStep = 1129 ifTrue: [
            recoveredStack1 := 'bit6Label'.
            recoveredPC := 1131.
        ].
        recoveredStep = 1131 ifTrue: [
            recoveredStack2 := [:recoveredBlock1131Arg1 | 
    | recoveredBlock1131Value0 recoveredBlock1131Value1 recoveredBlock1131Value2 recoveredBlock1131Value3 recoveredBlock1131Value4 recoveredBlock1131Value5 recoveredBlock1131Value6 recoveredBlock1131Value7 recoveredBlock1131Value8 recoveredBlock1131Value9 recoveredBlock1131Value10 recoveredBlock1131Value11 recoveredBlock1131Value12 recoveredBlock1131Value13 recoveredBlock1131Value14 recoveredBlock1131Value15 recoveredBlock1131Value16 recoveredBlock1131Value17 recoveredBlock1131Value18 recoveredBlock1131Value19 |
    recoveredBlock1131Value0 := recoveredBlock1131Arg1.
    recoveredBlock1131Value1 := recoveredBlock1131Value0.
    recoveredBlock1131Value2 := recoveredLocal20.
    recoveredBlock1131Value3 := (235) * (recoveredBlock1131Value2).
    recoveredBlock1131Value4 := (recoveredBlock1131Value3) rounded.
    (recoveredBlock1131Value1) x: (recoveredBlock1131Value4).
    recoveredBlock1131Value5 := recoveredBlock1131Value0.
    (recoveredBlock1131Value5) labelString: ('6').
    recoveredBlock1131Value6 := recoveredBlock1131Value0.
    recoveredBlock1131Value7 := recoveredLocal19.
    recoveredBlock1131Value8 := (18) * (recoveredBlock1131Value7).
    recoveredBlock1131Value9 := (recoveredBlock1131Value8) rounded.
    (recoveredBlock1131Value6) y: (recoveredBlock1131Value9).
    recoveredBlock1131Value10 := recoveredBlock1131Value0.
    (recoveredBlock1131Value10) marginHeight: (0).
    recoveredBlock1131Value11 := recoveredBlock1131Value0.
    recoveredBlock1131Value12 := recoveredLocal19.
    recoveredBlock1131Value13 := (11) * (recoveredBlock1131Value12).
    recoveredBlock1131Value14 := (recoveredBlock1131Value13) rounded.
    (recoveredBlock1131Value11) height: (recoveredBlock1131Value14).
    recoveredBlock1131Value15 := recoveredBlock1131Value0.
    recoveredBlock1131Value16 := recoveredLocal20.
    recoveredBlock1131Value17 := (13) * (recoveredBlock1131Value16).
    recoveredBlock1131Value18 := (recoveredBlock1131Value17) rounded.
    (recoveredBlock1131Value15) width: (recoveredBlock1131Value18).
    recoveredBlock1131Value19 := (recoveredBlock1131Value0) recomputeSize: (false).
    recoveredBlock1131Value19
].
            recoveredPC := 1199.
        ].
        recoveredStep = 1199 ifTrue: [
            recoveredStack0 := (recoveredStack0) createLabel: (recoveredStack1) argBlock: (recoveredStack2).
            recoveredPC := 1201.
        ].
        recoveredStep = 1201 ifTrue: [
            recoveredStack0 := (recoveredStack0) manageChild.
            recoveredPC := 1203.
        ].
        recoveredStep = 1203 ifTrue: [
            recoveredLocal5 := recoveredStack0.
            recoveredPC := 1206.
        ].
        recoveredStep = 1206 ifTrue: [
            recoveredStack0 := recoveredLocal18.
            recoveredPC := 1209.
        ].
        recoveredStep = 1209 ifTrue: [
            recoveredStack1 := 'bit6Label'.
            recoveredPC := 1211.
        ].
        recoveredStep = 1211 ifTrue: [
            recoveredStack2 := recoveredLocal5.
            recoveredPC := 1214.
        ].
        recoveredStep = 1214 ifTrue: [
            (recoveredStack0) at: (recoveredStack1) put: (recoveredStack2).
            recoveredPC := 1216.
        ].
        recoveredStep = 1216 ifTrue: [
            recoveredStack0 := recoveredLocal21.
            recoveredPC := 1219.
        ].
        recoveredStep = 1219 ifTrue: [
            recoveredStack1 := 'bit4Label'.
            recoveredPC := 1221.
        ].
        recoveredStep = 1221 ifTrue: [
            recoveredStack2 := [:recoveredBlock1221Arg1 | 
    | recoveredBlock1221Value0 recoveredBlock1221Value1 recoveredBlock1221Value2 recoveredBlock1221Value3 recoveredBlock1221Value4 recoveredBlock1221Value5 recoveredBlock1221Value6 recoveredBlock1221Value7 recoveredBlock1221Value8 recoveredBlock1221Value9 recoveredBlock1221Value10 recoveredBlock1221Value11 recoveredBlock1221Value12 recoveredBlock1221Value13 recoveredBlock1221Value14 recoveredBlock1221Value15 recoveredBlock1221Value16 recoveredBlock1221Value17 recoveredBlock1221Value18 recoveredBlock1221Value19 |
    recoveredBlock1221Value0 := recoveredBlock1221Arg1.
    recoveredBlock1221Value1 := recoveredBlock1221Value0.
    recoveredBlock1221Value2 := recoveredLocal20.
    recoveredBlock1221Value3 := (265) * (recoveredBlock1221Value2).
    recoveredBlock1221Value4 := (recoveredBlock1221Value3) rounded.
    (recoveredBlock1221Value1) x: (recoveredBlock1221Value4).
    recoveredBlock1221Value5 := recoveredBlock1221Value0.
    (recoveredBlock1221Value5) labelString: ('4').
    recoveredBlock1221Value6 := recoveredBlock1221Value0.
    (recoveredBlock1221Value6) marginHeight: (0).
    recoveredBlock1221Value7 := recoveredBlock1221Value0.
    recoveredBlock1221Value8 := recoveredLocal19.
    recoveredBlock1221Value9 := (18) * (recoveredBlock1221Value8).
    recoveredBlock1221Value10 := (recoveredBlock1221Value9) rounded.
    (recoveredBlock1221Value7) y: (recoveredBlock1221Value10).
    recoveredBlock1221Value11 := recoveredBlock1221Value0.
    recoveredBlock1221Value12 := recoveredLocal19.
    recoveredBlock1221Value13 := (11) * (recoveredBlock1221Value12).
    recoveredBlock1221Value14 := (recoveredBlock1221Value13) rounded.
    (recoveredBlock1221Value11) height: (recoveredBlock1221Value14).
    recoveredBlock1221Value15 := recoveredBlock1221Value0.
    recoveredBlock1221Value16 := recoveredLocal20.
    recoveredBlock1221Value17 := (13) * (recoveredBlock1221Value16).
    recoveredBlock1221Value18 := (recoveredBlock1221Value17) rounded.
    (recoveredBlock1221Value15) width: (recoveredBlock1221Value18).
    recoveredBlock1221Value19 := (recoveredBlock1221Value0) recomputeSize: (false).
    recoveredBlock1221Value19
].
            recoveredPC := 1289.
        ].
        recoveredStep = 1289 ifTrue: [
            recoveredStack0 := (recoveredStack0) createLabel: (recoveredStack1) argBlock: (recoveredStack2).
            recoveredPC := 1291.
        ].
        recoveredStep = 1291 ifTrue: [
            recoveredStack0 := (recoveredStack0) manageChild.
            recoveredPC := 1293.
        ].
        recoveredStep = 1293 ifTrue: [
            recoveredLocal9 := recoveredStack0.
            recoveredPC := 1296.
        ].
        recoveredStep = 1296 ifTrue: [
            recoveredStack0 := recoveredLocal18.
            recoveredPC := 1299.
        ].
        recoveredStep = 1299 ifTrue: [
            recoveredStack1 := 'bit4Label'.
            recoveredPC := 1301.
        ].
        recoveredStep = 1301 ifTrue: [
            recoveredStack2 := recoveredLocal9.
            recoveredPC := 1304.
        ].
        recoveredStep = 1304 ifTrue: [
            (recoveredStack0) at: (recoveredStack1) put: (recoveredStack2).
            recoveredPC := 1306.
        ].
        recoveredStep = 1306 ifTrue: [
            recoveredStack0 := recoveredLocal21.
            recoveredPC := 1309.
        ].
        recoveredStep = 1309 ifTrue: [
            recoveredStack1 := 'bit2Label'.
            recoveredPC := 1311.
        ].
        recoveredStep = 1311 ifTrue: [
            recoveredStack2 := [:recoveredBlock1311Arg1 | 
    | recoveredBlock1311Value0 recoveredBlock1311Value1 recoveredBlock1311Value2 recoveredBlock1311Value3 recoveredBlock1311Value4 recoveredBlock1311Value5 recoveredBlock1311Value6 recoveredBlock1311Value7 recoveredBlock1311Value8 recoveredBlock1311Value9 recoveredBlock1311Value10 recoveredBlock1311Value11 recoveredBlock1311Value12 recoveredBlock1311Value13 recoveredBlock1311Value14 recoveredBlock1311Value15 recoveredBlock1311Value16 recoveredBlock1311Value17 recoveredBlock1311Value18 recoveredBlock1311Value19 |
    recoveredBlock1311Value0 := recoveredBlock1311Arg1.
    recoveredBlock1311Value1 := recoveredBlock1311Value0.
    recoveredBlock1311Value2 := recoveredLocal20.
    recoveredBlock1311Value3 := (295) * (recoveredBlock1311Value2).
    recoveredBlock1311Value4 := (recoveredBlock1311Value3) rounded.
    (recoveredBlock1311Value1) x: (recoveredBlock1311Value4).
    recoveredBlock1311Value5 := recoveredBlock1311Value0.
    (recoveredBlock1311Value5) labelString: ('2').
    recoveredBlock1311Value6 := recoveredBlock1311Value0.
    recoveredBlock1311Value7 := recoveredLocal19.
    recoveredBlock1311Value8 := (18) * (recoveredBlock1311Value7).
    recoveredBlock1311Value9 := (recoveredBlock1311Value8) rounded.
    (recoveredBlock1311Value6) y: (recoveredBlock1311Value9).
    recoveredBlock1311Value10 := recoveredBlock1311Value0.
    (recoveredBlock1311Value10) marginHeight: (0).
    recoveredBlock1311Value11 := recoveredBlock1311Value0.
    recoveredBlock1311Value12 := recoveredLocal19.
    recoveredBlock1311Value13 := (11) * (recoveredBlock1311Value12).
    recoveredBlock1311Value14 := (recoveredBlock1311Value13) rounded.
    (recoveredBlock1311Value11) height: (recoveredBlock1311Value14).
    recoveredBlock1311Value15 := recoveredBlock1311Value0.
    recoveredBlock1311Value16 := recoveredLocal20.
    recoveredBlock1311Value17 := (13) * (recoveredBlock1311Value16).
    recoveredBlock1311Value18 := (recoveredBlock1311Value17) rounded.
    (recoveredBlock1311Value15) width: (recoveredBlock1311Value18).
    recoveredBlock1311Value19 := (recoveredBlock1311Value0) recomputeSize: (false).
    recoveredBlock1311Value19
].
            recoveredPC := 1379.
        ].
        recoveredStep = 1379 ifTrue: [
            recoveredStack0 := (recoveredStack0) createLabel: (recoveredStack1) argBlock: (recoveredStack2).
            recoveredPC := 1381.
        ].
        recoveredStep = 1381 ifTrue: [
            recoveredStack0 := (recoveredStack0) manageChild.
            recoveredPC := 1383.
        ].
        recoveredStep = 1383 ifTrue: [
            recoveredLocal13 := recoveredStack0.
            recoveredPC := 1386.
        ].
        recoveredStep = 1386 ifTrue: [
            recoveredStack0 := recoveredLocal18.
            recoveredPC := 1389.
        ].
        recoveredStep = 1389 ifTrue: [
            recoveredStack1 := 'bit2Label'.
            recoveredPC := 1391.
        ].
        recoveredStep = 1391 ifTrue: [
            recoveredStack2 := recoveredLocal13.
            recoveredPC := 1394.
        ].
        recoveredStep = 1394 ifTrue: [
            (recoveredStack0) at: (recoveredStack1) put: (recoveredStack2).
            recoveredPC := 1396.
        ].
        recoveredStep = 1396 ifTrue: [
            recoveredStack0 := recoveredLocal21.
            recoveredPC := 1399.
        ].
        recoveredStep = 1399 ifTrue: [
            recoveredStack1 := 'nameLabel'.
            recoveredPC := 1401.
        ].
        recoveredStep = 1401 ifTrue: [
            recoveredStack2 := [:recoveredBlock1401Arg1 | 
    | recoveredBlock1401Value0 recoveredBlock1401Value1 recoveredBlock1401Value2 recoveredBlock1401Value3 recoveredBlock1401Value4 recoveredBlock1401Value5 recoveredBlock1401Value6 recoveredBlock1401Value7 recoveredBlock1401Value8 recoveredBlock1401Value9 recoveredBlock1401Value10 recoveredBlock1401Value11 recoveredBlock1401Value12 recoveredBlock1401Value13 recoveredBlock1401Value14 recoveredBlock1401Value15 |
    recoveredBlock1401Value0 := recoveredBlock1401Arg1.
    recoveredBlock1401Value1 := recoveredBlock1401Value0.
    recoveredBlock1401Value2 := recoveredLocal20.
    recoveredBlock1401Value3 := (5) * (recoveredBlock1401Value2).
    recoveredBlock1401Value4 := (recoveredBlock1401Value3) rounded.
    (recoveredBlock1401Value1) x: (recoveredBlock1401Value4).
    recoveredBlock1401Value5 := recoveredBlock1401Value0.
    recoveredBlock1401Value6 := XmALIGNMENTBEGINNING.
    (recoveredBlock1401Value5) alignment: (recoveredBlock1401Value6).
    recoveredBlock1401Value7 := recoveredBlock1401Value0.
    (recoveredBlock1401Value7) labelString: ('<Name>').
    recoveredBlock1401Value8 := recoveredBlock1401Value0.
    recoveredBlock1401Value9 := recoveredLocal19.
    recoveredBlock1401Value10 := (5) * (recoveredBlock1401Value9).
    recoveredBlock1401Value11 := (recoveredBlock1401Value10) rounded.
    (recoveredBlock1401Value8) y: (recoveredBlock1401Value11).
    recoveredBlock1401Value12 := recoveredLocal19.
    recoveredBlock1401Value13 := (16) * (recoveredBlock1401Value12).
    recoveredBlock1401Value14 := (recoveredBlock1401Value13) rounded.
    recoveredBlock1401Value15 := (recoveredBlock1401Value0) height: (recoveredBlock1401Value14).
    recoveredBlock1401Value15
].
            recoveredPC := 1456.
        ].
        recoveredStep = 1456 ifTrue: [
            recoveredStack0 := (recoveredStack0) createLabel: (recoveredStack1) argBlock: (recoveredStack2).
            recoveredPC := 1458.
        ].
        recoveredStep = 1458 ifTrue: [
            recoveredStack0 := (recoveredStack0) manageChild.
            recoveredPC := 1460.
        ].
        recoveredStep = 1460 ifTrue: [
            recoveredLocal15 := recoveredStack0.
            recoveredPC := 1463.
        ].
        recoveredStep = 1463 ifTrue: [
            recoveredStack0 := recoveredLocal18.
            recoveredPC := 1466.
        ].
        recoveredStep = 1466 ifTrue: [
            recoveredStack1 := 'nameLabel'.
            recoveredPC := 1470.
        ].
        recoveredStep = 1470 ifTrue: [
            recoveredStack2 := recoveredLocal15.
            recoveredPC := 1473.
        ].
        recoveredStep = 1473 ifTrue: [
            (recoveredStack0) at: (recoveredStack1) put: (recoveredStack2).
            recoveredPC := 1475.
        ].
        recoveredStep = 1475 ifTrue: [
            recoveredStack0 := recoveredLocal6.
            recoveredPC := 1478.
        ].
        recoveredStep = 1478 ifTrue: [
            recoveredStack1 := [:recoveredBlock1478Arg1 | 
    | recoveredBlock1478Value0 recoveredBlock1478Value1 recoveredBlock1478Value2 recoveredBlock1478Value3 recoveredBlock1478Value4 recoveredBlock1478Value5 |
    recoveredBlock1478Value0 := recoveredBlock1478Arg1.
    recoveredBlock1478Value1 := recoveredBlock1478Value0.
    recoveredBlock1478Value2 := XmATTACHWIDGET.
    (recoveredBlock1478Value1) rightAttachment: (recoveredBlock1478Value2).
    recoveredBlock1478Value3 := recoveredBlock1478Value0.
    recoveredBlock1478Value4 := recoveredLocal8.
    (recoveredBlock1478Value3) rightWidget: (recoveredBlock1478Value4).
    recoveredBlock1478Value5 := (recoveredBlock1478Value0) rightOffset: (0).
    recoveredBlock1478Value5
].
            recoveredPC := 1510.
        ].
        recoveredStep = 1510 ifTrue: [
            (recoveredStack0) setValuesBlock: (recoveredStack1).
            recoveredPC := 1515.
        ].
        recoveredStep = 1515 ifTrue: [
            recoveredStack0 := recoveredLocal12.
            recoveredPC := 1518.
        ].
        recoveredStep = 1518 ifTrue: [
            recoveredStack1 := [:recoveredBlock1518Arg1 | 
    | recoveredBlock1518Value0 recoveredBlock1518Value1 recoveredBlock1518Value2 recoveredBlock1518Value3 recoveredBlock1518Value4 recoveredBlock1518Value5 |
    recoveredBlock1518Value0 := recoveredBlock1518Arg1.
    recoveredBlock1518Value1 := recoveredBlock1518Value0.
    recoveredBlock1518Value2 := XmATTACHWIDGET.
    (recoveredBlock1518Value1) rightAttachment: (recoveredBlock1518Value2).
    recoveredBlock1518Value3 := recoveredBlock1518Value0.
    recoveredBlock1518Value4 := recoveredLocal14.
    (recoveredBlock1518Value3) rightWidget: (recoveredBlock1518Value4).
    recoveredBlock1518Value5 := (recoveredBlock1518Value0) rightOffset: (0).
    recoveredBlock1518Value5
].
            recoveredPC := 1550.
        ].
        recoveredStep = 1550 ifTrue: [
            (recoveredStack0) setValuesBlock: (recoveredStack1).
            recoveredPC := 1555.
        ].
        recoveredStep = 1555 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 1558.
        ].
        recoveredStep = 1558 ifTrue: [
            recoveredStack1 := [:recoveredBlock1558Arg1 | 
    | recoveredBlock1558Value0 recoveredBlock1558Value1 recoveredBlock1558Value2 recoveredBlock1558Value3 recoveredBlock1558Value4 recoveredBlock1558Value5 |
    recoveredBlock1558Value0 := recoveredBlock1558Arg1.
    recoveredBlock1558Value1 := recoveredBlock1558Value0.
    recoveredBlock1558Value2 := XmATTACHWIDGET.
    (recoveredBlock1558Value1) rightAttachment: (recoveredBlock1558Value2).
    recoveredBlock1558Value3 := recoveredBlock1558Value0.
    recoveredBlock1558Value4 := recoveredLocal4.
    (recoveredBlock1558Value3) rightWidget: (recoveredBlock1558Value4).
    recoveredBlock1558Value5 := (recoveredBlock1558Value0) rightOffset: (0).
    recoveredBlock1558Value5
].
            recoveredPC := 1590.
        ].
        recoveredStep = 1590 ifTrue: [
            (recoveredStack0) setValuesBlock: (recoveredStack1).
            recoveredPC := 1595.
        ].
        recoveredStep = 1595 ifTrue: [
            recoveredStack0 := recoveredLocal8.
            recoveredPC := 1598.
        ].
        recoveredStep = 1598 ifTrue: [
            recoveredStack1 := [:recoveredBlock1598Arg1 | 
    | recoveredBlock1598Value0 recoveredBlock1598Value1 recoveredBlock1598Value2 recoveredBlock1598Value3 recoveredBlock1598Value4 recoveredBlock1598Value5 |
    recoveredBlock1598Value0 := recoveredBlock1598Arg1.
    recoveredBlock1598Value1 := recoveredBlock1598Value0.
    recoveredBlock1598Value2 := XmATTACHWIDGET.
    (recoveredBlock1598Value1) rightAttachment: (recoveredBlock1598Value2).
    recoveredBlock1598Value3 := recoveredBlock1598Value0.
    recoveredBlock1598Value4 := recoveredLocal10.
    (recoveredBlock1598Value3) rightWidget: (recoveredBlock1598Value4).
    recoveredBlock1598Value5 := (recoveredBlock1598Value0) rightOffset: (0).
    recoveredBlock1598Value5
].
            recoveredPC := 1630.
        ].
        recoveredStep = 1630 ifTrue: [
            (recoveredStack0) setValuesBlock: (recoveredStack1).
            recoveredPC := 1635.
        ].
        recoveredStep = 1635 ifTrue: [
            recoveredStack0 := recoveredLocal14.
            recoveredPC := 1638.
        ].
        recoveredStep = 1638 ifTrue: [
            recoveredStack1 := [:recoveredBlock1638Arg1 | 
    | recoveredBlock1638Value0 recoveredBlock1638Value1 recoveredBlock1638Value2 recoveredBlock1638Value3 recoveredBlock1638Value4 recoveredBlock1638Value5 |
    recoveredBlock1638Value0 := recoveredBlock1638Arg1.
    recoveredBlock1638Value1 := recoveredBlock1638Value0.
    recoveredBlock1638Value2 := XmATTACHWIDGET.
    (recoveredBlock1638Value1) rightAttachment: (recoveredBlock1638Value2).
    recoveredBlock1638Value3 := recoveredBlock1638Value0.
    recoveredBlock1638Value4 := recoveredLocal17.
    (recoveredBlock1638Value3) rightWidget: (recoveredBlock1638Value4).
    recoveredBlock1638Value5 := (recoveredBlock1638Value0) rightOffset: (0).
    recoveredBlock1638Value5
].
            recoveredPC := 1670.
        ].
        recoveredStep = 1670 ifTrue: [
            (recoveredStack0) setValuesBlock: (recoveredStack1).
            recoveredPC := 1675.
        ].
        recoveredStep = 1675 ifTrue: [
            recoveredStack0 := recoveredLocal17.
            recoveredPC := 1678.
        ].
        recoveredStep = 1678 ifTrue: [
            recoveredStack1 := [:block281304a4Arg1 | 
    | block281304a4Value0 block281304a4Value1 block281304a4Value2 block281304a4Value3 |
    block281304a4Value0 := block281304a4Arg1.
    block281304a4Value1 := block281304a4Value0.
    block281304a4Value2 := XmATTACHFORM.
    (block281304a4Value1) rightAttachment: (block281304a4Value2).
    block281304a4Value3 := (block281304a4Value0) rightOffset: (3).
    block281304a4Value3
].
            recoveredPC := 1682.
        ].
        recoveredStep = 1682 ifTrue: [
            recoveredPC := 1704.
        ].
        recoveredStep = 1704 ifTrue: [
            (recoveredStack0) setValuesBlock: (recoveredStack1).
            recoveredPC := 1709.
        ].
        recoveredStep = 1709 ifTrue: [
            recoveredStack0 := recoveredLocal10.
            recoveredPC := 1712.
        ].
        recoveredStep = 1712 ifTrue: [
            recoveredStack1 := [:recoveredBlock1712Arg1 | 
    | recoveredBlock1712Value0 recoveredBlock1712Value1 recoveredBlock1712Value2 recoveredBlock1712Value3 recoveredBlock1712Value4 recoveredBlock1712Value5 |
    recoveredBlock1712Value0 := recoveredBlock1712Arg1.
    recoveredBlock1712Value1 := recoveredBlock1712Value0.
    recoveredBlock1712Value2 := XmATTACHWIDGET.
    (recoveredBlock1712Value1) rightAttachment: (recoveredBlock1712Value2).
    recoveredBlock1712Value3 := recoveredBlock1712Value0.
    recoveredBlock1712Value4 := recoveredLocal12.
    (recoveredBlock1712Value3) rightWidget: (recoveredBlock1712Value4).
    recoveredBlock1712Value5 := (recoveredBlock1712Value0) rightOffset: (0).
    recoveredBlock1712Value5
].
            recoveredPC := 1744.
        ].
        recoveredStep = 1744 ifTrue: [
            (recoveredStack0) setValuesBlock: (recoveredStack1).
            recoveredPC := 1749.
        ].
        recoveredStep = 1749 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 1752.
        ].
        recoveredStep = 1752 ifTrue: [
            recoveredStack1 := [:recoveredBlock1752Arg1 | 
    | recoveredBlock1752Value0 recoveredBlock1752Value1 recoveredBlock1752Value2 recoveredBlock1752Value3 recoveredBlock1752Value4 recoveredBlock1752Value5 |
    recoveredBlock1752Value0 := recoveredBlock1752Arg1.
    recoveredBlock1752Value1 := recoveredBlock1752Value0.
    recoveredBlock1752Value2 := XmATTACHWIDGET.
    (recoveredBlock1752Value1) rightAttachment: (recoveredBlock1752Value2).
    recoveredBlock1752Value3 := recoveredBlock1752Value0.
    recoveredBlock1752Value4 := recoveredLocal6.
    (recoveredBlock1752Value3) rightWidget: (recoveredBlock1752Value4).
    recoveredBlock1752Value5 := (recoveredBlock1752Value0) rightOffset: (0).
    recoveredBlock1752Value5
].
            recoveredPC := 1784.
        ].
        recoveredStep = 1784 ifTrue: [
            (recoveredStack0) setValuesBlock: (recoveredStack1).
            recoveredPC := 1789.
        ].
        recoveredStep = 1789 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 1792.
        ].
        recoveredStep = 1792 ifTrue: [
            recoveredStack1 := [:recoveredBlock1792Arg1 | 
    | recoveredBlock1792Value0 recoveredBlock1792Value1 recoveredBlock1792Value2 recoveredBlock1792Value3 recoveredBlock1792Value4 recoveredBlock1792Value5 |
    recoveredBlock1792Value0 := recoveredBlock1792Arg1.
    recoveredBlock1792Value1 := recoveredBlock1792Value0.
    recoveredBlock1792Value2 := XmATTACHWIDGET.
    (recoveredBlock1792Value1) rightAttachment: (recoveredBlock1792Value2).
    recoveredBlock1792Value3 := recoveredBlock1792Value0.
    recoveredBlock1792Value4 := recoveredLocal5.
    (recoveredBlock1792Value3) rightWidget: (recoveredBlock1792Value4).
    recoveredBlock1792Value5 := (recoveredBlock1792Value0) rightOffset: (0).
    recoveredBlock1792Value5
].
            recoveredPC := 1824.
        ].
        recoveredStep = 1824 ifTrue: [
            (recoveredStack0) setValuesBlock: (recoveredStack1).
            recoveredPC := 1829.
        ].
        recoveredStep = 1829 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 1832.
        ].
        recoveredStep = 1832 ifTrue: [
            recoveredStack1 := [:recoveredBlock1832Arg1 | 
    | recoveredBlock1832Value0 recoveredBlock1832Value1 recoveredBlock1832Value2 recoveredBlock1832Value3 recoveredBlock1832Value4 recoveredBlock1832Value5 |
    recoveredBlock1832Value0 := recoveredBlock1832Arg1.
    recoveredBlock1832Value1 := recoveredBlock1832Value0.
    recoveredBlock1832Value2 := XmATTACHWIDGET.
    (recoveredBlock1832Value1) rightAttachment: (recoveredBlock1832Value2).
    recoveredBlock1832Value3 := recoveredBlock1832Value0.
    recoveredBlock1832Value4 := recoveredLocal3.
    (recoveredBlock1832Value3) rightWidget: (recoveredBlock1832Value4).
    recoveredBlock1832Value5 := (recoveredBlock1832Value0) rightOffset: (0).
    recoveredBlock1832Value5
].
            recoveredPC := 1864.
        ].
        recoveredStep = 1864 ifTrue: [
            (recoveredStack0) setValuesBlock: (recoveredStack1).
            recoveredPC := 1869.
        ].
        recoveredStep = 1869 ifTrue: [
            recoveredStack0 := recoveredLocal16.
            recoveredPC := 1872.
        ].
        recoveredStep = 1872 ifTrue: [
            recoveredStack1 := [:block281304c8Arg1 | 
    | block281304c8Value0 block281304c8Value1 block281304c8Value2 block281304c8Value3 |
    block281304c8Value0 := block281304c8Arg1.
    block281304c8Value1 := block281304c8Value0.
    block281304c8Value2 := XmATTACHFORM.
    (block281304c8Value1) rightAttachment: (block281304c8Value2).
    block281304c8Value3 := (block281304c8Value0) rightOffset: (0).
    block281304c8Value3
].
            recoveredPC := 1876.
        ].
        recoveredStep = 1876 ifTrue: [
            recoveredPC := 1898.
        ].
        recoveredStep = 1898 ifTrue: [
            (recoveredStack0) setValuesBlock: (recoveredStack1).
            recoveredPC := 1903.
        ].
        recoveredStep = 1903 ifTrue: [
            recoveredStack0 := recoveredLocal7.
            recoveredPC := 1906.
        ].
        recoveredStep = 1906 ifTrue: [
            recoveredStack1 := [:recoveredBlock1906Arg1 | 
    | recoveredBlock1906Value0 recoveredBlock1906Value1 recoveredBlock1906Value2 recoveredBlock1906Value3 recoveredBlock1906Value4 recoveredBlock1906Value5 |
    recoveredBlock1906Value0 := recoveredBlock1906Arg1.
    recoveredBlock1906Value1 := recoveredBlock1906Value0.
    recoveredBlock1906Value2 := XmATTACHWIDGET.
    (recoveredBlock1906Value1) rightAttachment: (recoveredBlock1906Value2).
    recoveredBlock1906Value3 := recoveredBlock1906Value0.
    recoveredBlock1906Value4 := recoveredLocal9.
    (recoveredBlock1906Value3) rightWidget: (recoveredBlock1906Value4).
    recoveredBlock1906Value5 := (recoveredBlock1906Value0) rightOffset: (0).
    recoveredBlock1906Value5
].
            recoveredPC := 1938.
        ].
        recoveredStep = 1938 ifTrue: [
            (recoveredStack0) setValuesBlock: (recoveredStack1).
            recoveredPC := 1943.
        ].
        recoveredStep = 1943 ifTrue: [
            recoveredStack0 := recoveredLocal11.
            recoveredPC := 1946.
        ].
        recoveredStep = 1946 ifTrue: [
            recoveredStack1 := [:recoveredBlock1946Arg1 | 
    | recoveredBlock1946Value0 recoveredBlock1946Value1 recoveredBlock1946Value2 recoveredBlock1946Value3 recoveredBlock1946Value4 recoveredBlock1946Value5 |
    recoveredBlock1946Value0 := recoveredBlock1946Arg1.
    recoveredBlock1946Value1 := recoveredBlock1946Value0.
    recoveredBlock1946Value2 := XmATTACHWIDGET.
    (recoveredBlock1946Value1) rightAttachment: (recoveredBlock1946Value2).
    recoveredBlock1946Value3 := recoveredBlock1946Value0.
    recoveredBlock1946Value4 := recoveredLocal13.
    (recoveredBlock1946Value3) rightWidget: (recoveredBlock1946Value4).
    recoveredBlock1946Value5 := (recoveredBlock1946Value0) rightOffset: (0).
    recoveredBlock1946Value5
].
            recoveredPC := 1978.
        ].
        recoveredStep = 1978 ifTrue: [
            (recoveredStack0) setValuesBlock: (recoveredStack1).
            recoveredPC := 1983.
        ].
        recoveredStep = 1983 ifTrue: [
            recoveredStack0 := recoveredLocal5.
            recoveredPC := 1986.
        ].
        recoveredStep = 1986 ifTrue: [
            recoveredStack1 := [:recoveredBlock1986Arg1 | 
    | recoveredBlock1986Value0 recoveredBlock1986Value1 recoveredBlock1986Value2 recoveredBlock1986Value3 recoveredBlock1986Value4 recoveredBlock1986Value5 |
    recoveredBlock1986Value0 := recoveredBlock1986Arg1.
    recoveredBlock1986Value1 := recoveredBlock1986Value0.
    recoveredBlock1986Value2 := XmATTACHWIDGET.
    (recoveredBlock1986Value1) rightAttachment: (recoveredBlock1986Value2).
    recoveredBlock1986Value3 := recoveredBlock1986Value0.
    recoveredBlock1986Value4 := recoveredLocal7.
    (recoveredBlock1986Value3) rightWidget: (recoveredBlock1986Value4).
    recoveredBlock1986Value5 := (recoveredBlock1986Value0) rightOffset: (0).
    recoveredBlock1986Value5
].
            recoveredPC := 2018.
        ].
        recoveredStep = 2018 ifTrue: [
            (recoveredStack0) setValuesBlock: (recoveredStack1).
            recoveredPC := 2023.
        ].
        recoveredStep = 2023 ifTrue: [
            recoveredStack0 := recoveredLocal9.
            recoveredPC := 2026.
        ].
        recoveredStep = 2026 ifTrue: [
            recoveredStack1 := [:recoveredBlock2026Arg1 | 
    | recoveredBlock2026Value0 recoveredBlock2026Value1 recoveredBlock2026Value2 recoveredBlock2026Value3 recoveredBlock2026Value4 recoveredBlock2026Value5 |
    recoveredBlock2026Value0 := recoveredBlock2026Arg1.
    recoveredBlock2026Value1 := recoveredBlock2026Value0.
    recoveredBlock2026Value2 := XmATTACHWIDGET.
    (recoveredBlock2026Value1) rightAttachment: (recoveredBlock2026Value2).
    recoveredBlock2026Value3 := recoveredBlock2026Value0.
    recoveredBlock2026Value4 := recoveredLocal11.
    (recoveredBlock2026Value3) rightWidget: (recoveredBlock2026Value4).
    recoveredBlock2026Value5 := (recoveredBlock2026Value0) rightOffset: (0).
    recoveredBlock2026Value5
].
            recoveredPC := 2058.
        ].
        recoveredStep = 2058 ifTrue: [
            (recoveredStack0) setValuesBlock: (recoveredStack1).
            recoveredPC := 2063.
        ].
        recoveredStep = 2063 ifTrue: [
            recoveredStack0 := recoveredLocal13.
            recoveredPC := 2066.
        ].
        recoveredStep = 2066 ifTrue: [
            recoveredStack1 := [:recoveredBlock2066Arg1 | 
    | recoveredBlock2066Value0 recoveredBlock2066Value1 recoveredBlock2066Value2 recoveredBlock2066Value3 recoveredBlock2066Value4 recoveredBlock2066Value5 |
    recoveredBlock2066Value0 := recoveredBlock2066Arg1.
    recoveredBlock2066Value1 := recoveredBlock2066Value0.
    recoveredBlock2066Value2 := XmATTACHWIDGET.
    (recoveredBlock2066Value1) rightAttachment: (recoveredBlock2066Value2).
    recoveredBlock2066Value3 := recoveredBlock2066Value0.
    recoveredBlock2066Value4 := recoveredLocal16.
    (recoveredBlock2066Value3) rightWidget: (recoveredBlock2066Value4).
    recoveredBlock2066Value5 := (recoveredBlock2066Value0) rightOffset: (0).
    recoveredBlock2066Value5
].
            recoveredPC := 2098.
        ].
        recoveredStep = 2098 ifTrue: [
            (recoveredStack0) setValuesBlock: (recoveredStack1).
            recoveredPC := 2103.
        ].
        recoveredStep = 2103 ifTrue: [
            recoveredStack0 := recoveredLocal15.
            recoveredPC := 2106.
        ].
        recoveredStep = 2106 ifTrue: [
            recoveredStack1 := [:recoveredBlock2106Arg1 | 
    | recoveredBlock2106Value0 recoveredBlock2106Value1 recoveredBlock2106Value2 recoveredBlock2106Value3 recoveredBlock2106Value4 recoveredBlock2106Value5 recoveredBlock2106Value6 recoveredBlock2106Value7 recoveredBlock2106Value8 recoveredBlock2106Value9 recoveredBlock2106Value10 recoveredBlock2106Value11 recoveredBlock2106Value12 recoveredBlock2106Value13 recoveredBlock2106Value14 |
    recoveredBlock2106Value0 := recoveredBlock2106Arg1.
    recoveredBlock2106Value1 := recoveredBlock2106Value0.
    recoveredBlock2106Value2 := XmATTACHFORM.
    (recoveredBlock2106Value1) topAttachment: (recoveredBlock2106Value2).
    recoveredBlock2106Value3 := recoveredBlock2106Value0.
    (recoveredBlock2106Value3) topOffset: (5).
    recoveredBlock2106Value4 := recoveredBlock2106Value0.
    recoveredBlock2106Value5 := XmATTACHFORM.
    (recoveredBlock2106Value4) bottomAttachment: (recoveredBlock2106Value5).
    recoveredBlock2106Value6 := recoveredBlock2106Value0.
    (recoveredBlock2106Value6) bottomOffset: (5).
    recoveredBlock2106Value7 := recoveredBlock2106Value0.
    recoveredBlock2106Value8 := XmATTACHFORM.
    (recoveredBlock2106Value7) leftAttachment: (recoveredBlock2106Value8).
    recoveredBlock2106Value9 := recoveredBlock2106Value0.
    (recoveredBlock2106Value9) leftOffset: (3).
    recoveredBlock2106Value10 := recoveredBlock2106Value0.
    recoveredBlock2106Value11 := XmATTACHWIDGET.
    (recoveredBlock2106Value10) rightAttachment: (recoveredBlock2106Value11).
    recoveredBlock2106Value12 := recoveredBlock2106Value0.
    recoveredBlock2106Value13 := recoveredLocal2.
    (recoveredBlock2106Value12) rightWidget: (recoveredBlock2106Value13).
    recoveredBlock2106Value14 := (recoveredBlock2106Value0) rightOffset: (3).
    recoveredBlock2106Value14
].
            recoveredPC := 2180.
        ].
        recoveredStep = 2180 ifTrue: [
            (recoveredStack0) setValuesBlock: (recoveredStack1).
            recoveredPC := 2185.
        ].
        recoveredStep = 2185 ifTrue: [
            recoveredStack0 := recoveredLocal21.
            recoveredPC := 2188.
        ].
        recoveredStep = 2188 ifTrue: [
            recoveredStack1 := XmNexposeCallback.
            recoveredPC := 2192.
        ].
        recoveredStep = 2192 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 2193.
        ].
        recoveredStep = 2193 ifTrue: [
            recoveredStack3 := 'aForm1Expose:clientData:callData:'.
            recoveredPC := 2196.
        ].
        recoveredStep = 2196 ifTrue: [
            recoveredStack4 := nil.
            recoveredPC := 2197.
        ].
        recoveredStep = 2197 ifTrue: [
            (recoveredStack0) addCallback: (recoveredStack1) receiver: (recoveredStack2) selector: (recoveredStack3) clientData: (recoveredStack4).
            recoveredPC := 2201.
        ].
        recoveredStep = 2201 ifTrue: [
            recoveredStack0 := recoveredLocal21.
            recoveredPC := 2204.
        ].
        recoveredStep = 2204 ifTrue: [
            recoveredStack1 := XmNdestroyCallback.
            recoveredPC := 2208.
        ].
        recoveredStep = 2208 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 2209.
        ].
        recoveredStep = 2209 ifTrue: [
            recoveredStack3 := 'aForm1Destroy:clientData:callData:'.
            recoveredPC := 2212.
        ].
        recoveredStep = 2212 ifTrue: [
            recoveredStack4 := nil.
            recoveredPC := 2213.
        ].
        recoveredStep = 2213 ifTrue: [
            (recoveredStack0) addCallback: (recoveredStack1) receiver: (recoveredStack2) selector: (recoveredStack3) clientData: (recoveredStack4).
            recoveredPC := 2217.
        ].
        recoveredStep = 2217 ifTrue: [
            recoveredStack0 := recoveredLocal17.
            recoveredPC := 2220.
        ].
        recoveredStep = 2220 ifTrue: [
            recoveredStack1 := XmNvalueChangedCallback.
            recoveredPC := 2224.
        ].
        recoveredStep = 2224 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 2225.
        ].
        recoveredStep = 2225 ifTrue: [
            recoveredStack3 := 'toggleButtonValue:clientData:callData:'.
            recoveredPC := 2228.
        ].
        recoveredStep = 2228 ifTrue: [
            recoveredStack4 := nil.
            recoveredPC := 2229.
        ].
        recoveredStep = 2229 ifTrue: [
            (recoveredStack0) addCallback: (recoveredStack1) receiver: (recoveredStack2) selector: (recoveredStack3) clientData: (recoveredStack4).
            recoveredPC := 2233.
        ].
        recoveredStep = 2233 ifTrue: [
            recoveredStack0 := recoveredLocal18.
            recoveredPC := 2236.
        ].
        recoveredStep = 2236 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

