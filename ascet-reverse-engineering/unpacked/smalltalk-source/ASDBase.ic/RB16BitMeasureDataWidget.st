"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x204a1110; bytecode file offset 0xd9da14"
!RB16BitMeasureDataWidget methodsFor: 'recovered'!
initializeTogglesAndLabels
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 recoveredValue21 recoveredValue22 recoveredValue23 recoveredValue24 recoveredValue25 recoveredValue26 recoveredValue27 recoveredValue28 recoveredValue29 recoveredValue30 recoveredValue31 |
    super initializeTogglesAndLabels.
    recoveredValue0 := toggles.
    recoveredValue1 := (self) widgetAt: ('bit9Toggle').
    (recoveredValue0) add: (recoveredValue1).
    recoveredValue2 := labels.
    recoveredValue3 := (self) widgetAt: ('bit9Label').
    (recoveredValue2) add: (recoveredValue3).
    recoveredValue4 := toggles.
    recoveredValue5 := (self) widgetAt: ('bit10Toggle').
    (recoveredValue4) add: (recoveredValue5).
    recoveredValue6 := labels.
    recoveredValue7 := (self) widgetAt: ('bit10Label').
    (recoveredValue6) add: (recoveredValue7).
    recoveredValue8 := toggles.
    recoveredValue9 := (self) widgetAt: ('bit11Toggle').
    (recoveredValue8) add: (recoveredValue9).
    recoveredValue10 := labels.
    recoveredValue11 := (self) widgetAt: ('bit11Label').
    (recoveredValue10) add: (recoveredValue11).
    recoveredValue12 := toggles.
    recoveredValue13 := (self) widgetAt: ('bit12Toggle').
    (recoveredValue12) add: (recoveredValue13).
    recoveredValue14 := labels.
    recoveredValue15 := (self) widgetAt: ('bit12Label').
    (recoveredValue14) add: (recoveredValue15).
    recoveredValue16 := toggles.
    recoveredValue17 := (self) widgetAt: ('bit13Toggle').
    (recoveredValue16) add: (recoveredValue17).
    recoveredValue18 := labels.
    recoveredValue19 := (self) widgetAt: ('bit13Label').
    (recoveredValue18) add: (recoveredValue19).
    recoveredValue20 := toggles.
    recoveredValue21 := (self) widgetAt: ('bit14Toggle').
    (recoveredValue20) add: (recoveredValue21).
    recoveredValue22 := labels.
    recoveredValue23 := (self) widgetAt: ('bit14Label').
    (recoveredValue22) add: (recoveredValue23).
    recoveredValue24 := toggles.
    recoveredValue25 := (self) widgetAt: ('bit15Toggle').
    (recoveredValue24) add: (recoveredValue25).
    recoveredValue26 := labels.
    recoveredValue27 := (self) widgetAt: ('bit15Label').
    (recoveredValue26) add: (recoveredValue27).
    recoveredValue28 := toggles.
    recoveredValue29 := (self) widgetAt: ('bit16Toggle').
    (recoveredValue28) add: (recoveredValue29).
    recoveredValue30 := labels.
    recoveredValue31 := (self) widgetAt: ('bit16Label').
    (recoveredValue30) add: (recoveredValue31).
    ^self
! !

"ASDBase.ic method 0x206c6918; bytecode file offset 0xfc3398"
!RB16BitMeasureDataWidget methodsFor: 'recovered'!
createWidgetHierarchy
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredLocal6 recoveredLocal7 recoveredLocal8 recoveredLocal9 recoveredLocal10 recoveredLocal11 recoveredLocal12 recoveredLocal13 recoveredLocal14 recoveredLocal15 recoveredLocal16 recoveredLocal17 recoveredLocal18 recoveredLocal19 recoveredLocal20 recoveredLocal21 recoveredLocal22 recoveredLocal23 recoveredLocal24 recoveredLocal25 recoveredLocal26 recoveredLocal27 recoveredLocal28 recoveredLocal29 recoveredLocal30 recoveredLocal31 recoveredLocal32 recoveredLocal33 recoveredLocal34 recoveredLocal35 recoveredLocal36 recoveredLocal37 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := 1.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal36 := recoveredStack1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := 1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredLocal35 := recoveredStack1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := (recoveredStack0) primaryWidget.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredLocal37 := recoveredStack0.
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
            recoveredLocal34 := recoveredStack0.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := recoveredLocal37.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := 'bit3Toggle'.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack2 := [:recoveredBlock29Arg1 | 
    | recoveredBlock29Value0 recoveredBlock29Value1 recoveredBlock29Value2 recoveredBlock29Value3 recoveredBlock29Value4 recoveredBlock29Value5 recoveredBlock29Value6 recoveredBlock29Value7 recoveredBlock29Value8 recoveredBlock29Value9 recoveredBlock29Value10 recoveredBlock29Value11 recoveredBlock29Value12 recoveredBlock29Value13 recoveredBlock29Value14 recoveredBlock29Value15 recoveredBlock29Value16 recoveredBlock29Value17 recoveredBlock29Value18 |
    recoveredBlock29Value0 := recoveredBlock29Arg1.
    recoveredBlock29Value1 := recoveredBlock29Value0.
    (recoveredBlock29Value1) sensitive: (false).
    recoveredBlock29Value2 := recoveredBlock29Value0.
    recoveredBlock29Value3 := recoveredLocal35.
    recoveredBlock29Value4 := (5) * (recoveredBlock29Value3).
    recoveredBlock29Value5 := (recoveredBlock29Value4) rounded.
    (recoveredBlock29Value2) y: (recoveredBlock29Value5).
    recoveredBlock29Value6 := recoveredBlock29Value0.
    (recoveredBlock29Value6) recomputeSize: (false).
    recoveredBlock29Value7 := recoveredBlock29Value0.
    recoveredBlock29Value8 := recoveredLocal36.
    recoveredBlock29Value9 := (410) * (recoveredBlock29Value8).
    recoveredBlock29Value10 := (recoveredBlock29Value9) rounded.
    (recoveredBlock29Value7) x: (recoveredBlock29Value10).
    recoveredBlock29Value11 := recoveredBlock29Value0.
    recoveredBlock29Value12 := recoveredLocal35.
    recoveredBlock29Value13 := (13) * (recoveredBlock29Value12).
    recoveredBlock29Value14 := (recoveredBlock29Value13) rounded.
    (recoveredBlock29Value11) height: (recoveredBlock29Value14).
    recoveredBlock29Value15 := recoveredLocal36.
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
            recoveredLocal28 := recoveredStack0.
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            recoveredStack0 := recoveredLocal34.
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack1 := 'bit3Toggle'.
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            recoveredStack2 := recoveredLocal28.
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            (recoveredStack0) at: (recoveredStack1) put: (recoveredStack2).
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            recoveredStack0 := recoveredLocal37.
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            recoveredStack1 := 'bit2Toggle'.
            recoveredPC := 112.
        ].
        recoveredStep = 112 ifTrue: [
            recoveredStack2 := [:recoveredBlock112Arg1 | 
    | recoveredBlock112Value0 recoveredBlock112Value1 recoveredBlock112Value2 recoveredBlock112Value3 recoveredBlock112Value4 recoveredBlock112Value5 recoveredBlock112Value6 recoveredBlock112Value7 recoveredBlock112Value8 recoveredBlock112Value9 recoveredBlock112Value10 recoveredBlock112Value11 recoveredBlock112Value12 recoveredBlock112Value13 recoveredBlock112Value14 recoveredBlock112Value15 recoveredBlock112Value16 recoveredBlock112Value17 recoveredBlock112Value18 |
    recoveredBlock112Value0 := recoveredBlock112Arg1.
    recoveredBlock112Value1 := recoveredBlock112Value0.
    (recoveredBlock112Value1) sensitive: (false).
    recoveredBlock112Value2 := recoveredBlock112Value0.
    recoveredBlock112Value3 := recoveredLocal35.
    recoveredBlock112Value4 := (5) * (recoveredBlock112Value3).
    recoveredBlock112Value5 := (recoveredBlock112Value4) rounded.
    (recoveredBlock112Value2) y: (recoveredBlock112Value5).
    recoveredBlock112Value6 := recoveredBlock112Value0.
    (recoveredBlock112Value6) recomputeSize: (false).
    recoveredBlock112Value7 := recoveredBlock112Value0.
    recoveredBlock112Value8 := recoveredLocal36.
    recoveredBlock112Value9 := (425) * (recoveredBlock112Value8).
    recoveredBlock112Value10 := (recoveredBlock112Value9) rounded.
    (recoveredBlock112Value7) x: (recoveredBlock112Value10).
    recoveredBlock112Value11 := recoveredBlock112Value0.
    recoveredBlock112Value12 := recoveredLocal35.
    recoveredBlock112Value13 := (13) * (recoveredBlock112Value12).
    recoveredBlock112Value14 := (recoveredBlock112Value13) rounded.
    (recoveredBlock112Value11) height: (recoveredBlock112Value14).
    recoveredBlock112Value15 := recoveredLocal36.
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
            recoveredLocal30 := recoveredStack0.
            recoveredPC := 179.
        ].
        recoveredStep = 179 ifTrue: [
            recoveredStack0 := recoveredLocal34.
            recoveredPC := 182.
        ].
        recoveredStep = 182 ifTrue: [
            recoveredStack1 := 'bit2Toggle'.
            recoveredPC := 184.
        ].
        recoveredStep = 184 ifTrue: [
            recoveredStack2 := recoveredLocal30.
            recoveredPC := 187.
        ].
        recoveredStep = 187 ifTrue: [
            (recoveredStack0) at: (recoveredStack1) put: (recoveredStack2).
            recoveredPC := 189.
        ].
        recoveredStep = 189 ifTrue: [
            recoveredStack0 := recoveredLocal37.
            recoveredPC := 192.
        ].
        recoveredStep = 192 ifTrue: [
            recoveredStack1 := 'bit1Toggle'.
            recoveredPC := 194.
        ].
        recoveredStep = 194 ifTrue: [
            recoveredStack2 := [:recoveredBlock194Arg1 | 
    | recoveredBlock194Value0 recoveredBlock194Value1 recoveredBlock194Value2 recoveredBlock194Value3 recoveredBlock194Value4 recoveredBlock194Value5 recoveredBlock194Value6 recoveredBlock194Value7 recoveredBlock194Value8 recoveredBlock194Value9 recoveredBlock194Value10 recoveredBlock194Value11 recoveredBlock194Value12 recoveredBlock194Value13 recoveredBlock194Value14 recoveredBlock194Value15 recoveredBlock194Value16 recoveredBlock194Value17 |
    recoveredBlock194Value0 := recoveredBlock194Arg1.
    recoveredBlock194Value1 := recoveredBlock194Value0.
    recoveredBlock194Value2 := recoveredLocal35.
    recoveredBlock194Value3 := (5) * (recoveredBlock194Value2).
    recoveredBlock194Value4 := (recoveredBlock194Value3) rounded.
    (recoveredBlock194Value1) y: (recoveredBlock194Value4).
    recoveredBlock194Value5 := recoveredBlock194Value0.
    (recoveredBlock194Value5) recomputeSize: (false).
    recoveredBlock194Value6 := recoveredBlock194Value0.
    recoveredBlock194Value7 := recoveredLocal36.
    recoveredBlock194Value8 := (440) * (recoveredBlock194Value7).
    recoveredBlock194Value9 := (recoveredBlock194Value8) rounded.
    (recoveredBlock194Value6) x: (recoveredBlock194Value9).
    recoveredBlock194Value10 := recoveredBlock194Value0.
    recoveredBlock194Value11 := recoveredLocal35.
    recoveredBlock194Value12 := (13) * (recoveredBlock194Value11).
    recoveredBlock194Value13 := (recoveredBlock194Value12) rounded.
    (recoveredBlock194Value10) height: (recoveredBlock194Value13).
    recoveredBlock194Value14 := recoveredLocal36.
    recoveredBlock194Value15 := (13) * (recoveredBlock194Value14).
    recoveredBlock194Value16 := (recoveredBlock194Value15) rounded.
    recoveredBlock194Value17 := (recoveredBlock194Value0) width: (recoveredBlock194Value16).
    recoveredBlock194Value17
].
            recoveredPC := 250.
        ].
        recoveredStep = 250 ifTrue: [
            recoveredStack0 := (recoveredStack0) createToggleButton: (recoveredStack1) argBlock: (recoveredStack2).
            recoveredPC := 252.
        ].
        recoveredStep = 252 ifTrue: [
            recoveredStack0 := (recoveredStack0) manageChild.
            recoveredPC := 254.
        ].
        recoveredStep = 254 ifTrue: [
            recoveredLocal33 := recoveredStack0.
            recoveredPC := 257.
        ].
        recoveredStep = 257 ifTrue: [
            recoveredStack0 := recoveredLocal34.
            recoveredPC := 260.
        ].
        recoveredStep = 260 ifTrue: [
            recoveredStack1 := 'bit1Toggle'.
            recoveredPC := 262.
        ].
        recoveredStep = 262 ifTrue: [
            recoveredStack2 := recoveredLocal33.
            recoveredPC := 265.
        ].
        recoveredStep = 265 ifTrue: [
            (recoveredStack0) at: (recoveredStack1) put: (recoveredStack2).
            recoveredPC := 267.
        ].
        recoveredStep = 267 ifTrue: [
            recoveredStack0 := recoveredLocal37.
            recoveredPC := 270.
        ].
        recoveredStep = 270 ifTrue: [
            recoveredStack1 := 'bit7Label'.
            recoveredPC := 272.
        ].
        recoveredStep = 272 ifTrue: [
            recoveredStack2 := [:recoveredBlock272Arg1 | 
    | recoveredBlock272Value0 recoveredBlock272Value1 recoveredBlock272Value2 recoveredBlock272Value3 recoveredBlock272Value4 recoveredBlock272Value5 recoveredBlock272Value6 recoveredBlock272Value7 recoveredBlock272Value8 recoveredBlock272Value9 recoveredBlock272Value10 recoveredBlock272Value11 recoveredBlock272Value12 recoveredBlock272Value13 recoveredBlock272Value14 recoveredBlock272Value15 recoveredBlock272Value16 recoveredBlock272Value17 recoveredBlock272Value18 recoveredBlock272Value19 |
    recoveredBlock272Value0 := recoveredBlock272Arg1.
    recoveredBlock272Value1 := recoveredBlock272Value0.
    recoveredBlock272Value2 := recoveredLocal36.
    recoveredBlock272Value3 := (350) * (recoveredBlock272Value2).
    recoveredBlock272Value4 := (recoveredBlock272Value3) rounded.
    (recoveredBlock272Value1) x: (recoveredBlock272Value4).
    recoveredBlock272Value5 := recoveredBlock272Value0.
    (recoveredBlock272Value5) labelString: ('7').
    recoveredBlock272Value6 := recoveredBlock272Value0.
    recoveredBlock272Value7 := recoveredLocal35.
    recoveredBlock272Value8 := (18) * (recoveredBlock272Value7).
    recoveredBlock272Value9 := (recoveredBlock272Value8) rounded.
    (recoveredBlock272Value6) y: (recoveredBlock272Value9).
    recoveredBlock272Value10 := recoveredBlock272Value0.
    (recoveredBlock272Value10) marginHeight: (0).
    recoveredBlock272Value11 := recoveredBlock272Value0.
    recoveredBlock272Value12 := recoveredLocal35.
    recoveredBlock272Value13 := (11) * (recoveredBlock272Value12).
    recoveredBlock272Value14 := (recoveredBlock272Value13) rounded.
    (recoveredBlock272Value11) height: (recoveredBlock272Value14).
    recoveredBlock272Value15 := recoveredBlock272Value0.
    recoveredBlock272Value16 := recoveredLocal36.
    recoveredBlock272Value17 := (13) * (recoveredBlock272Value16).
    recoveredBlock272Value18 := (recoveredBlock272Value17) rounded.
    (recoveredBlock272Value15) width: (recoveredBlock272Value18).
    recoveredBlock272Value19 := (recoveredBlock272Value0) recomputeSize: (false).
    recoveredBlock272Value19
].
            recoveredPC := 339.
        ].
        recoveredStep = 339 ifTrue: [
            recoveredStack0 := (recoveredStack0) createLabel: (recoveredStack1) argBlock: (recoveredStack2).
            recoveredPC := 341.
        ].
        recoveredStep = 341 ifTrue: [
            recoveredStack0 := (recoveredStack0) manageChild.
            recoveredPC := 343.
        ].
        recoveredStep = 343 ifTrue: [
            recoveredLocal19 := recoveredStack0.
            recoveredPC := 346.
        ].
        recoveredStep = 346 ifTrue: [
            recoveredStack0 := recoveredLocal34.
            recoveredPC := 349.
        ].
        recoveredStep = 349 ifTrue: [
            recoveredStack1 := 'bit7Label'.
            recoveredPC := 351.
        ].
        recoveredStep = 351 ifTrue: [
            recoveredStack2 := recoveredLocal19.
            recoveredPC := 354.
        ].
        recoveredStep = 354 ifTrue: [
            (recoveredStack0) at: (recoveredStack1) put: (recoveredStack2).
            recoveredPC := 356.
        ].
        recoveredStep = 356 ifTrue: [
            recoveredStack0 := recoveredLocal37.
            recoveredPC := 359.
        ].
        recoveredStep = 359 ifTrue: [
            recoveredStack1 := 'bit8Label'.
            recoveredPC := 361.
        ].
        recoveredStep = 361 ifTrue: [
            recoveredStack2 := [:recoveredBlock361Arg1 | 
    | recoveredBlock361Value0 recoveredBlock361Value1 recoveredBlock361Value2 recoveredBlock361Value3 recoveredBlock361Value4 recoveredBlock361Value5 recoveredBlock361Value6 recoveredBlock361Value7 recoveredBlock361Value8 recoveredBlock361Value9 recoveredBlock361Value10 recoveredBlock361Value11 recoveredBlock361Value12 recoveredBlock361Value13 recoveredBlock361Value14 recoveredBlock361Value15 recoveredBlock361Value16 recoveredBlock361Value17 recoveredBlock361Value18 recoveredBlock361Value19 |
    recoveredBlock361Value0 := recoveredBlock361Arg1.
    recoveredBlock361Value1 := recoveredBlock361Value0.
    recoveredBlock361Value2 := recoveredLocal36.
    recoveredBlock361Value3 := (205) * (recoveredBlock361Value2).
    recoveredBlock361Value4 := (recoveredBlock361Value3) rounded.
    (recoveredBlock361Value1) x: (recoveredBlock361Value4).
    recoveredBlock361Value5 := recoveredBlock361Value0.
    (recoveredBlock361Value5) labelString: ('8').
    recoveredBlock361Value6 := recoveredBlock361Value0.
    (recoveredBlock361Value6) marginHeight: (0).
    recoveredBlock361Value7 := recoveredBlock361Value0.
    recoveredBlock361Value8 := recoveredLocal35.
    recoveredBlock361Value9 := (18) * (recoveredBlock361Value8).
    recoveredBlock361Value10 := (recoveredBlock361Value9) rounded.
    (recoveredBlock361Value7) y: (recoveredBlock361Value10).
    recoveredBlock361Value11 := recoveredBlock361Value0.
    recoveredBlock361Value12 := recoveredLocal35.
    recoveredBlock361Value13 := (11) * (recoveredBlock361Value12).
    recoveredBlock361Value14 := (recoveredBlock361Value13) rounded.
    (recoveredBlock361Value11) height: (recoveredBlock361Value14).
    recoveredBlock361Value15 := recoveredBlock361Value0.
    recoveredBlock361Value16 := recoveredLocal36.
    recoveredBlock361Value17 := (13) * (recoveredBlock361Value16).
    recoveredBlock361Value18 := (recoveredBlock361Value17) rounded.
    (recoveredBlock361Value15) width: (recoveredBlock361Value18).
    recoveredBlock361Value19 := (recoveredBlock361Value0) recomputeSize: (false).
    recoveredBlock361Value19
].
            recoveredPC := 429.
        ].
        recoveredStep = 429 ifTrue: [
            recoveredStack0 := (recoveredStack0) createLabel: (recoveredStack1) argBlock: (recoveredStack2).
            recoveredPC := 431.
        ].
        recoveredStep = 431 ifTrue: [
            recoveredStack0 := (recoveredStack0) manageChild.
            recoveredPC := 433.
        ].
        recoveredStep = 433 ifTrue: [
            recoveredLocal17 := recoveredStack0.
            recoveredPC := 436.
        ].
        recoveredStep = 436 ifTrue: [
            recoveredStack0 := recoveredLocal34.
            recoveredPC := 439.
        ].
        recoveredStep = 439 ifTrue: [
            recoveredStack1 := 'bit8Label'.
            recoveredPC := 441.
        ].
        recoveredStep = 441 ifTrue: [
            recoveredStack2 := recoveredLocal17.
            recoveredPC := 444.
        ].
        recoveredStep = 444 ifTrue: [
            (recoveredStack0) at: (recoveredStack1) put: (recoveredStack2).
            recoveredPC := 446.
        ].
        recoveredStep = 446 ifTrue: [
            recoveredStack0 := recoveredLocal37.
            recoveredPC := 449.
        ].
        recoveredStep = 449 ifTrue: [
            recoveredStack1 := 'bit1Label'.
            recoveredPC := 451.
        ].
        recoveredStep = 451 ifTrue: [
            recoveredStack2 := [:recoveredBlock451Arg1 | 
    | recoveredBlock451Value0 recoveredBlock451Value1 recoveredBlock451Value2 recoveredBlock451Value3 recoveredBlock451Value4 recoveredBlock451Value5 recoveredBlock451Value6 recoveredBlock451Value7 recoveredBlock451Value8 recoveredBlock451Value9 recoveredBlock451Value10 recoveredBlock451Value11 recoveredBlock451Value12 recoveredBlock451Value13 recoveredBlock451Value14 recoveredBlock451Value15 recoveredBlock451Value16 recoveredBlock451Value17 recoveredBlock451Value18 recoveredBlock451Value19 |
    recoveredBlock451Value0 := recoveredBlock451Arg1.
    recoveredBlock451Value1 := recoveredBlock451Value0.
    recoveredBlock451Value2 := recoveredLocal36.
    recoveredBlock451Value3 := (440) * (recoveredBlock451Value2).
    recoveredBlock451Value4 := (recoveredBlock451Value3) rounded.
    (recoveredBlock451Value1) x: (recoveredBlock451Value4).
    recoveredBlock451Value5 := recoveredBlock451Value0.
    (recoveredBlock451Value5) labelString: ('1').
    recoveredBlock451Value6 := recoveredBlock451Value0.
    recoveredBlock451Value7 := recoveredLocal35.
    recoveredBlock451Value8 := (18) * (recoveredBlock451Value7).
    recoveredBlock451Value9 := (recoveredBlock451Value8) rounded.
    (recoveredBlock451Value6) y: (recoveredBlock451Value9).
    recoveredBlock451Value10 := recoveredBlock451Value0.
    (recoveredBlock451Value10) marginHeight: (0).
    recoveredBlock451Value11 := recoveredBlock451Value0.
    recoveredBlock451Value12 := recoveredLocal35.
    recoveredBlock451Value13 := (11) * (recoveredBlock451Value12).
    recoveredBlock451Value14 := (recoveredBlock451Value13) rounded.
    (recoveredBlock451Value11) height: (recoveredBlock451Value14).
    recoveredBlock451Value15 := recoveredBlock451Value0.
    recoveredBlock451Value16 := recoveredLocal36.
    recoveredBlock451Value17 := (13) * (recoveredBlock451Value16).
    recoveredBlock451Value18 := (recoveredBlock451Value17) rounded.
    (recoveredBlock451Value15) width: (recoveredBlock451Value18).
    recoveredBlock451Value19 := (recoveredBlock451Value0) recomputeSize: (false).
    recoveredBlock451Value19
].
            recoveredPC := 519.
        ].
        recoveredStep = 519 ifTrue: [
            recoveredStack0 := (recoveredStack0) createLabel: (recoveredStack1) argBlock: (recoveredStack2).
            recoveredPC := 521.
        ].
        recoveredStep = 521 ifTrue: [
            recoveredStack0 := (recoveredStack0) manageChild.
            recoveredPC := 523.
        ].
        recoveredStep = 523 ifTrue: [
            recoveredLocal32 := recoveredStack0.
            recoveredPC := 526.
        ].
        recoveredStep = 526 ifTrue: [
            recoveredStack0 := recoveredLocal34.
            recoveredPC := 529.
        ].
        recoveredStep = 529 ifTrue: [
            recoveredStack1 := 'bit1Label'.
            recoveredPC := 531.
        ].
        recoveredStep = 531 ifTrue: [
            recoveredStack2 := recoveredLocal32.
            recoveredPC := 534.
        ].
        recoveredStep = 534 ifTrue: [
            (recoveredStack0) at: (recoveredStack1) put: (recoveredStack2).
            recoveredPC := 536.
        ].
        recoveredStep = 536 ifTrue: [
            recoveredStack0 := recoveredLocal37.
            recoveredPC := 539.
        ].
        recoveredStep = 539 ifTrue: [
            recoveredStack1 := 'bit5Label'.
            recoveredPC := 541.
        ].
        recoveredStep = 541 ifTrue: [
            recoveredStack2 := [:recoveredBlock541Arg1 | 
    | recoveredBlock541Value0 recoveredBlock541Value1 recoveredBlock541Value2 recoveredBlock541Value3 recoveredBlock541Value4 recoveredBlock541Value5 recoveredBlock541Value6 recoveredBlock541Value7 recoveredBlock541Value8 recoveredBlock541Value9 recoveredBlock541Value10 recoveredBlock541Value11 recoveredBlock541Value12 recoveredBlock541Value13 recoveredBlock541Value14 recoveredBlock541Value15 recoveredBlock541Value16 recoveredBlock541Value17 recoveredBlock541Value18 recoveredBlock541Value19 |
    recoveredBlock541Value0 := recoveredBlock541Arg1.
    recoveredBlock541Value1 := recoveredBlock541Value0.
    recoveredBlock541Value2 := recoveredLocal36.
    recoveredBlock541Value3 := (380) * (recoveredBlock541Value2).
    recoveredBlock541Value4 := (recoveredBlock541Value3) rounded.
    (recoveredBlock541Value1) x: (recoveredBlock541Value4).
    recoveredBlock541Value5 := recoveredBlock541Value0.
    (recoveredBlock541Value5) labelString: ('5').
    recoveredBlock541Value6 := recoveredBlock541Value0.
    (recoveredBlock541Value6) marginHeight: (0).
    recoveredBlock541Value7 := recoveredBlock541Value0.
    recoveredBlock541Value8 := recoveredLocal35.
    recoveredBlock541Value9 := (18) * (recoveredBlock541Value8).
    recoveredBlock541Value10 := (recoveredBlock541Value9) rounded.
    (recoveredBlock541Value7) y: (recoveredBlock541Value10).
    recoveredBlock541Value11 := recoveredBlock541Value0.
    recoveredBlock541Value12 := recoveredLocal35.
    recoveredBlock541Value13 := (11) * (recoveredBlock541Value12).
    recoveredBlock541Value14 := (recoveredBlock541Value13) rounded.
    (recoveredBlock541Value11) height: (recoveredBlock541Value14).
    recoveredBlock541Value15 := recoveredBlock541Value0.
    recoveredBlock541Value16 := recoveredLocal36.
    recoveredBlock541Value17 := (13) * (recoveredBlock541Value16).
    recoveredBlock541Value18 := (recoveredBlock541Value17) rounded.
    (recoveredBlock541Value15) width: (recoveredBlock541Value18).
    recoveredBlock541Value19 := (recoveredBlock541Value0) recomputeSize: (false).
    recoveredBlock541Value19
].
            recoveredPC := 609.
        ].
        recoveredStep = 609 ifTrue: [
            recoveredStack0 := (recoveredStack0) createLabel: (recoveredStack1) argBlock: (recoveredStack2).
            recoveredPC := 611.
        ].
        recoveredStep = 611 ifTrue: [
            recoveredStack0 := (recoveredStack0) manageChild.
            recoveredPC := 613.
        ].
        recoveredStep = 613 ifTrue: [
            recoveredLocal23 := recoveredStack0.
            recoveredPC := 616.
        ].
        recoveredStep = 616 ifTrue: [
            recoveredStack0 := recoveredLocal34.
            recoveredPC := 619.
        ].
        recoveredStep = 619 ifTrue: [
            recoveredStack1 := 'bit5Label'.
            recoveredPC := 621.
        ].
        recoveredStep = 621 ifTrue: [
            recoveredStack2 := recoveredLocal23.
            recoveredPC := 624.
        ].
        recoveredStep = 624 ifTrue: [
            (recoveredStack0) at: (recoveredStack1) put: (recoveredStack2).
            recoveredPC := 626.
        ].
        recoveredStep = 626 ifTrue: [
            recoveredStack0 := recoveredLocal37.
            recoveredPC := 629.
        ].
        recoveredStep = 629 ifTrue: [
            recoveredStack1 := 'bit3Label'.
            recoveredPC := 631.
        ].
        recoveredStep = 631 ifTrue: [
            recoveredStack2 := [:recoveredBlock631Arg1 | 
    | recoveredBlock631Value0 recoveredBlock631Value1 recoveredBlock631Value2 recoveredBlock631Value3 recoveredBlock631Value4 recoveredBlock631Value5 recoveredBlock631Value6 recoveredBlock631Value7 recoveredBlock631Value8 recoveredBlock631Value9 recoveredBlock631Value10 recoveredBlock631Value11 recoveredBlock631Value12 recoveredBlock631Value13 recoveredBlock631Value14 recoveredBlock631Value15 recoveredBlock631Value16 recoveredBlock631Value17 recoveredBlock631Value18 recoveredBlock631Value19 |
    recoveredBlock631Value0 := recoveredBlock631Arg1.
    recoveredBlock631Value1 := recoveredBlock631Value0.
    recoveredBlock631Value2 := recoveredLocal36.
    recoveredBlock631Value3 := (280) * (recoveredBlock631Value2).
    recoveredBlock631Value4 := (recoveredBlock631Value3) rounded.
    (recoveredBlock631Value1) x: (recoveredBlock631Value4).
    recoveredBlock631Value5 := recoveredBlock631Value0.
    (recoveredBlock631Value5) labelString: ('3').
    recoveredBlock631Value6 := recoveredBlock631Value0.
    recoveredBlock631Value7 := recoveredLocal35.
    recoveredBlock631Value8 := (18) * (recoveredBlock631Value7).
    recoveredBlock631Value9 := (recoveredBlock631Value8) rounded.
    (recoveredBlock631Value6) y: (recoveredBlock631Value9).
    recoveredBlock631Value10 := recoveredBlock631Value0.
    (recoveredBlock631Value10) marginHeight: (0).
    recoveredBlock631Value11 := recoveredBlock631Value0.
    recoveredBlock631Value12 := recoveredLocal35.
    recoveredBlock631Value13 := (11) * (recoveredBlock631Value12).
    recoveredBlock631Value14 := (recoveredBlock631Value13) rounded.
    (recoveredBlock631Value11) height: (recoveredBlock631Value14).
    recoveredBlock631Value15 := recoveredBlock631Value0.
    recoveredBlock631Value16 := recoveredLocal36.
    recoveredBlock631Value17 := (13) * (recoveredBlock631Value16).
    recoveredBlock631Value18 := (recoveredBlock631Value17) rounded.
    (recoveredBlock631Value15) width: (recoveredBlock631Value18).
    recoveredBlock631Value19 := (recoveredBlock631Value0) recomputeSize: (false).
    recoveredBlock631Value19
].
            recoveredPC := 699.
        ].
        recoveredStep = 699 ifTrue: [
            recoveredStack0 := (recoveredStack0) createLabel: (recoveredStack1) argBlock: (recoveredStack2).
            recoveredPC := 701.
        ].
        recoveredStep = 701 ifTrue: [
            recoveredStack0 := (recoveredStack0) manageChild.
            recoveredPC := 703.
        ].
        recoveredStep = 703 ifTrue: [
            recoveredLocal27 := recoveredStack0.
            recoveredPC := 706.
        ].
        recoveredStep = 706 ifTrue: [
            recoveredStack0 := recoveredLocal34.
            recoveredPC := 709.
        ].
        recoveredStep = 709 ifTrue: [
            recoveredStack1 := 'bit3Label'.
            recoveredPC := 711.
        ].
        recoveredStep = 711 ifTrue: [
            recoveredStack2 := recoveredLocal27.
            recoveredPC := 714.
        ].
        recoveredStep = 714 ifTrue: [
            (recoveredStack0) at: (recoveredStack1) put: (recoveredStack2).
            recoveredPC := 716.
        ].
        recoveredStep = 716 ifTrue: [
            recoveredStack0 := recoveredLocal37.
            recoveredPC := 719.
        ].
        recoveredStep = 719 ifTrue: [
            recoveredStack1 := 'bit6Label'.
            recoveredPC := 721.
        ].
        recoveredStep = 721 ifTrue: [
            recoveredStack2 := [:recoveredBlock721Arg1 | 
    | recoveredBlock721Value0 recoveredBlock721Value1 recoveredBlock721Value2 recoveredBlock721Value3 recoveredBlock721Value4 recoveredBlock721Value5 recoveredBlock721Value6 recoveredBlock721Value7 recoveredBlock721Value8 recoveredBlock721Value9 recoveredBlock721Value10 recoveredBlock721Value11 recoveredBlock721Value12 recoveredBlock721Value13 recoveredBlock721Value14 recoveredBlock721Value15 recoveredBlock721Value16 recoveredBlock721Value17 recoveredBlock721Value18 recoveredBlock721Value19 |
    recoveredBlock721Value0 := recoveredBlock721Arg1.
    recoveredBlock721Value1 := recoveredBlock721Value0.
    recoveredBlock721Value2 := recoveredLocal36.
    recoveredBlock721Value3 := (365) * (recoveredBlock721Value2).
    recoveredBlock721Value4 := (recoveredBlock721Value3) rounded.
    (recoveredBlock721Value1) x: (recoveredBlock721Value4).
    recoveredBlock721Value5 := recoveredBlock721Value0.
    (recoveredBlock721Value5) labelString: ('6').
    recoveredBlock721Value6 := recoveredBlock721Value0.
    recoveredBlock721Value7 := recoveredLocal35.
    recoveredBlock721Value8 := (18) * (recoveredBlock721Value7).
    recoveredBlock721Value9 := (recoveredBlock721Value8) rounded.
    (recoveredBlock721Value6) y: (recoveredBlock721Value9).
    recoveredBlock721Value10 := recoveredBlock721Value0.
    (recoveredBlock721Value10) marginHeight: (0).
    recoveredBlock721Value11 := recoveredBlock721Value0.
    recoveredBlock721Value12 := recoveredLocal35.
    recoveredBlock721Value13 := (11) * (recoveredBlock721Value12).
    recoveredBlock721Value14 := (recoveredBlock721Value13) rounded.
    (recoveredBlock721Value11) height: (recoveredBlock721Value14).
    recoveredBlock721Value15 := recoveredBlock721Value0.
    recoveredBlock721Value16 := recoveredLocal36.
    recoveredBlock721Value17 := (13) * (recoveredBlock721Value16).
    recoveredBlock721Value18 := (recoveredBlock721Value17) rounded.
    (recoveredBlock721Value15) width: (recoveredBlock721Value18).
    recoveredBlock721Value19 := (recoveredBlock721Value0) recomputeSize: (false).
    recoveredBlock721Value19
].
            recoveredPC := 789.
        ].
        recoveredStep = 789 ifTrue: [
            recoveredStack0 := (recoveredStack0) createLabel: (recoveredStack1) argBlock: (recoveredStack2).
            recoveredPC := 791.
        ].
        recoveredStep = 791 ifTrue: [
            recoveredStack0 := (recoveredStack0) manageChild.
            recoveredPC := 793.
        ].
        recoveredStep = 793 ifTrue: [
            recoveredLocal21 := recoveredStack0.
            recoveredPC := 796.
        ].
        recoveredStep = 796 ifTrue: [
            recoveredStack0 := recoveredLocal34.
            recoveredPC := 799.
        ].
        recoveredStep = 799 ifTrue: [
            recoveredStack1 := 'bit6Label'.
            recoveredPC := 801.
        ].
        recoveredStep = 801 ifTrue: [
            recoveredStack2 := recoveredLocal21.
            recoveredPC := 804.
        ].
        recoveredStep = 804 ifTrue: [
            (recoveredStack0) at: (recoveredStack1) put: (recoveredStack2).
            recoveredPC := 806.
        ].
        recoveredStep = 806 ifTrue: [
            recoveredStack0 := recoveredLocal37.
            recoveredPC := 809.
        ].
        recoveredStep = 809 ifTrue: [
            recoveredStack1 := 'bit4Label'.
            recoveredPC := 811.
        ].
        recoveredStep = 811 ifTrue: [
            recoveredStack2 := [:recoveredBlock811Arg1 | 
    | recoveredBlock811Value0 recoveredBlock811Value1 recoveredBlock811Value2 recoveredBlock811Value3 recoveredBlock811Value4 recoveredBlock811Value5 recoveredBlock811Value6 recoveredBlock811Value7 recoveredBlock811Value8 recoveredBlock811Value9 recoveredBlock811Value10 recoveredBlock811Value11 recoveredBlock811Value12 recoveredBlock811Value13 recoveredBlock811Value14 recoveredBlock811Value15 recoveredBlock811Value16 recoveredBlock811Value17 recoveredBlock811Value18 recoveredBlock811Value19 |
    recoveredBlock811Value0 := recoveredBlock811Arg1.
    recoveredBlock811Value1 := recoveredBlock811Value0.
    recoveredBlock811Value2 := recoveredLocal36.
    recoveredBlock811Value3 := (395) * (recoveredBlock811Value2).
    recoveredBlock811Value4 := (recoveredBlock811Value3) rounded.
    (recoveredBlock811Value1) x: (recoveredBlock811Value4).
    recoveredBlock811Value5 := recoveredBlock811Value0.
    (recoveredBlock811Value5) labelString: ('4').
    recoveredBlock811Value6 := recoveredBlock811Value0.
    recoveredBlock811Value7 := recoveredLocal35.
    recoveredBlock811Value8 := (18) * (recoveredBlock811Value7).
    recoveredBlock811Value9 := (recoveredBlock811Value8) rounded.
    (recoveredBlock811Value6) y: (recoveredBlock811Value9).
    recoveredBlock811Value10 := recoveredBlock811Value0.
    (recoveredBlock811Value10) marginHeight: (0).
    recoveredBlock811Value11 := recoveredBlock811Value0.
    recoveredBlock811Value12 := recoveredLocal35.
    recoveredBlock811Value13 := (11) * (recoveredBlock811Value12).
    recoveredBlock811Value14 := (recoveredBlock811Value13) rounded.
    (recoveredBlock811Value11) height: (recoveredBlock811Value14).
    recoveredBlock811Value15 := recoveredBlock811Value0.
    recoveredBlock811Value16 := recoveredLocal36.
    recoveredBlock811Value17 := (13) * (recoveredBlock811Value16).
    recoveredBlock811Value18 := (recoveredBlock811Value17) rounded.
    (recoveredBlock811Value15) width: (recoveredBlock811Value18).
    recoveredBlock811Value19 := (recoveredBlock811Value0) recomputeSize: (false).
    recoveredBlock811Value19
].
            recoveredPC := 879.
        ].
        recoveredStep = 879 ifTrue: [
            recoveredStack0 := (recoveredStack0) createLabel: (recoveredStack1) argBlock: (recoveredStack2).
            recoveredPC := 881.
        ].
        recoveredStep = 881 ifTrue: [
            recoveredStack0 := (recoveredStack0) manageChild.
            recoveredPC := 883.
        ].
        recoveredStep = 883 ifTrue: [
            recoveredLocal25 := recoveredStack0.
            recoveredPC := 886.
        ].
        recoveredStep = 886 ifTrue: [
            recoveredStack0 := recoveredLocal34.
            recoveredPC := 889.
        ].
        recoveredStep = 889 ifTrue: [
            recoveredStack1 := 'bit4Label'.
            recoveredPC := 891.
        ].
        recoveredStep = 891 ifTrue: [
            recoveredStack2 := recoveredLocal25.
            recoveredPC := 894.
        ].
        recoveredStep = 894 ifTrue: [
            (recoveredStack0) at: (recoveredStack1) put: (recoveredStack2).
            recoveredPC := 896.
        ].
        recoveredStep = 896 ifTrue: [
            recoveredStack0 := recoveredLocal37.
            recoveredPC := 899.
        ].
        recoveredStep = 899 ifTrue: [
            recoveredStack1 := 'bit2Label'.
            recoveredPC := 901.
        ].
        recoveredStep = 901 ifTrue: [
            recoveredStack2 := [:recoveredBlock901Arg1 | 
    | recoveredBlock901Value0 recoveredBlock901Value1 recoveredBlock901Value2 recoveredBlock901Value3 recoveredBlock901Value4 recoveredBlock901Value5 recoveredBlock901Value6 recoveredBlock901Value7 recoveredBlock901Value8 recoveredBlock901Value9 recoveredBlock901Value10 recoveredBlock901Value11 recoveredBlock901Value12 recoveredBlock901Value13 recoveredBlock901Value14 recoveredBlock901Value15 recoveredBlock901Value16 recoveredBlock901Value17 recoveredBlock901Value18 recoveredBlock901Value19 |
    recoveredBlock901Value0 := recoveredBlock901Arg1.
    recoveredBlock901Value1 := recoveredBlock901Value0.
    recoveredBlock901Value2 := recoveredLocal36.
    recoveredBlock901Value3 := (295) * (recoveredBlock901Value2).
    recoveredBlock901Value4 := (recoveredBlock901Value3) rounded.
    (recoveredBlock901Value1) x: (recoveredBlock901Value4).
    recoveredBlock901Value5 := recoveredBlock901Value0.
    (recoveredBlock901Value5) labelString: ('2').
    recoveredBlock901Value6 := recoveredBlock901Value0.
    recoveredBlock901Value7 := recoveredLocal35.
    recoveredBlock901Value8 := (18) * (recoveredBlock901Value7).
    recoveredBlock901Value9 := (recoveredBlock901Value8) rounded.
    (recoveredBlock901Value6) y: (recoveredBlock901Value9).
    recoveredBlock901Value10 := recoveredBlock901Value0.
    (recoveredBlock901Value10) marginHeight: (0).
    recoveredBlock901Value11 := recoveredBlock901Value0.
    recoveredBlock901Value12 := recoveredLocal35.
    recoveredBlock901Value13 := (11) * (recoveredBlock901Value12).
    recoveredBlock901Value14 := (recoveredBlock901Value13) rounded.
    (recoveredBlock901Value11) height: (recoveredBlock901Value14).
    recoveredBlock901Value15 := recoveredBlock901Value0.
    recoveredBlock901Value16 := recoveredLocal36.
    recoveredBlock901Value17 := (13) * (recoveredBlock901Value16).
    recoveredBlock901Value18 := (recoveredBlock901Value17) rounded.
    (recoveredBlock901Value15) width: (recoveredBlock901Value18).
    recoveredBlock901Value19 := (recoveredBlock901Value0) recomputeSize: (false).
    recoveredBlock901Value19
].
            recoveredPC := 969.
        ].
        recoveredStep = 969 ifTrue: [
            recoveredStack0 := (recoveredStack0) createLabel: (recoveredStack1) argBlock: (recoveredStack2).
            recoveredPC := 971.
        ].
        recoveredStep = 971 ifTrue: [
            recoveredStack0 := (recoveredStack0) manageChild.
            recoveredPC := 973.
        ].
        recoveredStep = 973 ifTrue: [
            recoveredLocal29 := recoveredStack0.
            recoveredPC := 976.
        ].
        recoveredStep = 976 ifTrue: [
            recoveredStack0 := recoveredLocal34.
            recoveredPC := 979.
        ].
        recoveredStep = 979 ifTrue: [
            recoveredStack1 := 'bit2Label'.
            recoveredPC := 981.
        ].
        recoveredStep = 981 ifTrue: [
            recoveredStack2 := recoveredLocal29.
            recoveredPC := 984.
        ].
        recoveredStep = 984 ifTrue: [
            (recoveredStack0) at: (recoveredStack1) put: (recoveredStack2).
            recoveredPC := 986.
        ].
        recoveredStep = 986 ifTrue: [
            recoveredStack0 := recoveredLocal37.
            recoveredPC := 989.
        ].
        recoveredStep = 989 ifTrue: [
            recoveredStack1 := 'nameLabel'.
            recoveredPC := 991.
        ].
        recoveredStep = 991 ifTrue: [
            recoveredStack2 := [:recoveredBlock991Arg1 | 
    | recoveredBlock991Value0 recoveredBlock991Value1 recoveredBlock991Value2 recoveredBlock991Value3 recoveredBlock991Value4 recoveredBlock991Value5 recoveredBlock991Value6 recoveredBlock991Value7 recoveredBlock991Value8 recoveredBlock991Value9 recoveredBlock991Value10 recoveredBlock991Value11 recoveredBlock991Value12 recoveredBlock991Value13 recoveredBlock991Value14 recoveredBlock991Value15 |
    recoveredBlock991Value0 := recoveredBlock991Arg1.
    recoveredBlock991Value1 := recoveredBlock991Value0.
    recoveredBlock991Value2 := recoveredLocal36.
    recoveredBlock991Value3 := (5) * (recoveredBlock991Value2).
    recoveredBlock991Value4 := (recoveredBlock991Value3) rounded.
    (recoveredBlock991Value1) x: (recoveredBlock991Value4).
    recoveredBlock991Value5 := recoveredBlock991Value0.
    recoveredBlock991Value6 := XmALIGNMENTBEGINNING.
    (recoveredBlock991Value5) alignment: (recoveredBlock991Value6).
    recoveredBlock991Value7 := recoveredBlock991Value0.
    (recoveredBlock991Value7) labelString: ('<Name>').
    recoveredBlock991Value8 := recoveredBlock991Value0.
    recoveredBlock991Value9 := recoveredLocal35.
    recoveredBlock991Value10 := (5) * (recoveredBlock991Value9).
    recoveredBlock991Value11 := (recoveredBlock991Value10) rounded.
    (recoveredBlock991Value8) y: (recoveredBlock991Value11).
    recoveredBlock991Value12 := recoveredLocal35.
    recoveredBlock991Value13 := (16) * (recoveredBlock991Value12).
    recoveredBlock991Value14 := (recoveredBlock991Value13) rounded.
    recoveredBlock991Value15 := (recoveredBlock991Value0) height: (recoveredBlock991Value14).
    recoveredBlock991Value15
].
            recoveredPC := 1042.
        ].
        recoveredStep = 1042 ifTrue: [
            recoveredStack0 := (recoveredStack0) createLabel: (recoveredStack1) argBlock: (recoveredStack2).
            recoveredPC := 1044.
        ].
        recoveredStep = 1044 ifTrue: [
            recoveredStack0 := (recoveredStack0) manageChild.
            recoveredPC := 1046.
        ].
        recoveredStep = 1046 ifTrue: [
            recoveredLocal31 := recoveredStack0.
            recoveredPC := 1049.
        ].
        recoveredStep = 1049 ifTrue: [
            recoveredStack0 := recoveredLocal34.
            recoveredPC := 1052.
        ].
        recoveredStep = 1052 ifTrue: [
            recoveredStack1 := 'nameLabel'.
            recoveredPC := 1054.
        ].
        recoveredStep = 1054 ifTrue: [
            recoveredStack2 := recoveredLocal31.
            recoveredPC := 1057.
        ].
        recoveredStep = 1057 ifTrue: [
            (recoveredStack0) at: (recoveredStack1) put: (recoveredStack2).
            recoveredPC := 1059.
        ].
        recoveredStep = 1059 ifTrue: [
            recoveredStack0 := recoveredLocal37.
            recoveredPC := 1062.
        ].
        recoveredStep = 1062 ifTrue: [
            recoveredStack1 := 'bit9Toggle'.
            recoveredPC := 1064.
        ].
        recoveredStep = 1064 ifTrue: [
            recoveredStack2 := [:recoveredBlock1064Arg1 | 
    | recoveredBlock1064Value0 recoveredBlock1064Value1 recoveredBlock1064Value2 recoveredBlock1064Value3 recoveredBlock1064Value4 recoveredBlock1064Value5 recoveredBlock1064Value6 recoveredBlock1064Value7 recoveredBlock1064Value8 recoveredBlock1064Value9 recoveredBlock1064Value10 recoveredBlock1064Value11 recoveredBlock1064Value12 recoveredBlock1064Value13 recoveredBlock1064Value14 recoveredBlock1064Value15 recoveredBlock1064Value16 recoveredBlock1064Value17 recoveredBlock1064Value18 |
    recoveredBlock1064Value0 := recoveredBlock1064Arg1.
    recoveredBlock1064Value1 := recoveredBlock1064Value0.
    (recoveredBlock1064Value1) sensitive: (false).
    recoveredBlock1064Value2 := recoveredBlock1064Value0.
    recoveredBlock1064Value3 := recoveredLocal35.
    recoveredBlock1064Value4 := (5) * (recoveredBlock1064Value3).
    recoveredBlock1064Value5 := (recoveredBlock1064Value4) rounded.
    (recoveredBlock1064Value2) y: (recoveredBlock1064Value5).
    recoveredBlock1064Value6 := recoveredBlock1064Value0.
    (recoveredBlock1064Value6) recomputeSize: (false).
    recoveredBlock1064Value7 := recoveredBlock1064Value0.
    recoveredBlock1064Value8 := recoveredLocal36.
    recoveredBlock1064Value9 := (315) * (recoveredBlock1064Value8).
    recoveredBlock1064Value10 := (recoveredBlock1064Value9) rounded.
    (recoveredBlock1064Value7) x: (recoveredBlock1064Value10).
    recoveredBlock1064Value11 := recoveredBlock1064Value0.
    recoveredBlock1064Value12 := recoveredLocal35.
    recoveredBlock1064Value13 := (13) * (recoveredBlock1064Value12).
    recoveredBlock1064Value14 := (recoveredBlock1064Value13) rounded.
    (recoveredBlock1064Value11) height: (recoveredBlock1064Value14).
    recoveredBlock1064Value15 := recoveredLocal36.
    recoveredBlock1064Value16 := (13) * (recoveredBlock1064Value15).
    recoveredBlock1064Value17 := (recoveredBlock1064Value16) rounded.
    recoveredBlock1064Value18 := (recoveredBlock1064Value0) width: (recoveredBlock1064Value17).
    recoveredBlock1064Value18
].
            recoveredPC := 1124.
        ].
        recoveredStep = 1124 ifTrue: [
            recoveredStack0 := (recoveredStack0) createToggleButton: (recoveredStack1) argBlock: (recoveredStack2).
            recoveredPC := 1126.
        ].
        recoveredStep = 1126 ifTrue: [
            recoveredStack0 := (recoveredStack0) manageChild.
            recoveredPC := 1128.
        ].
        recoveredStep = 1128 ifTrue: [
            recoveredLocal16 := recoveredStack0.
            recoveredPC := 1131.
        ].
        recoveredStep = 1131 ifTrue: [
            recoveredStack0 := recoveredLocal34.
            recoveredPC := 1134.
        ].
        recoveredStep = 1134 ifTrue: [
            recoveredStack1 := 'bit9Toggle'.
            recoveredPC := 1136.
        ].
        recoveredStep = 1136 ifTrue: [
            recoveredStack2 := recoveredLocal16.
            recoveredPC := 1139.
        ].
        recoveredStep = 1139 ifTrue: [
            (recoveredStack0) at: (recoveredStack1) put: (recoveredStack2).
            recoveredPC := 1141.
        ].
        recoveredStep = 1141 ifTrue: [
            recoveredStack0 := recoveredLocal37.
            recoveredPC := 1144.
        ].
        recoveredStep = 1144 ifTrue: [
            recoveredStack1 := 'bit10Toggle'.
            recoveredPC := 1146.
        ].
        recoveredStep = 1146 ifTrue: [
            recoveredStack2 := [:recoveredBlock1146Arg1 | 
    | recoveredBlock1146Value0 recoveredBlock1146Value1 recoveredBlock1146Value2 recoveredBlock1146Value3 recoveredBlock1146Value4 recoveredBlock1146Value5 recoveredBlock1146Value6 recoveredBlock1146Value7 recoveredBlock1146Value8 recoveredBlock1146Value9 recoveredBlock1146Value10 recoveredBlock1146Value11 recoveredBlock1146Value12 recoveredBlock1146Value13 recoveredBlock1146Value14 recoveredBlock1146Value15 recoveredBlock1146Value16 recoveredBlock1146Value17 recoveredBlock1146Value18 |
    recoveredBlock1146Value0 := recoveredBlock1146Arg1.
    recoveredBlock1146Value1 := recoveredBlock1146Value0.
    (recoveredBlock1146Value1) sensitive: (false).
    recoveredBlock1146Value2 := recoveredBlock1146Value0.
    recoveredBlock1146Value3 := recoveredLocal35.
    recoveredBlock1146Value4 := (5) * (recoveredBlock1146Value3).
    recoveredBlock1146Value5 := (recoveredBlock1146Value4) rounded.
    (recoveredBlock1146Value2) y: (recoveredBlock1146Value5).
    recoveredBlock1146Value6 := recoveredBlock1146Value0.
    (recoveredBlock1146Value6) recomputeSize: (false).
    recoveredBlock1146Value7 := recoveredBlock1146Value0.
    recoveredBlock1146Value8 := recoveredLocal36.
    recoveredBlock1146Value9 := (300) * (recoveredBlock1146Value8).
    recoveredBlock1146Value10 := (recoveredBlock1146Value9) rounded.
    (recoveredBlock1146Value7) x: (recoveredBlock1146Value10).
    recoveredBlock1146Value11 := recoveredBlock1146Value0.
    recoveredBlock1146Value12 := recoveredLocal35.
    recoveredBlock1146Value13 := (13) * (recoveredBlock1146Value12).
    recoveredBlock1146Value14 := (recoveredBlock1146Value13) rounded.
    (recoveredBlock1146Value11) height: (recoveredBlock1146Value14).
    recoveredBlock1146Value15 := recoveredLocal36.
    recoveredBlock1146Value16 := (13) * (recoveredBlock1146Value15).
    recoveredBlock1146Value17 := (recoveredBlock1146Value16) rounded.
    recoveredBlock1146Value18 := (recoveredBlock1146Value0) width: (recoveredBlock1146Value17).
    recoveredBlock1146Value18
].
            recoveredPC := 1206.
        ].
        recoveredStep = 1206 ifTrue: [
            recoveredStack0 := (recoveredStack0) createToggleButton: (recoveredStack1) argBlock: (recoveredStack2).
            recoveredPC := 1208.
        ].
        recoveredStep = 1208 ifTrue: [
            recoveredStack0 := (recoveredStack0) manageChild.
            recoveredPC := 1210.
        ].
        recoveredStep = 1210 ifTrue: [
            recoveredLocal14 := recoveredStack0.
            recoveredPC := 1213.
        ].
        recoveredStep = 1213 ifTrue: [
            recoveredStack0 := recoveredLocal34.
            recoveredPC := 1216.
        ].
        recoveredStep = 1216 ifTrue: [
            recoveredStack1 := 'bit10Toggle'.
            recoveredPC := 1218.
        ].
        recoveredStep = 1218 ifTrue: [
            recoveredStack2 := recoveredLocal14.
            recoveredPC := 1221.
        ].
        recoveredStep = 1221 ifTrue: [
            (recoveredStack0) at: (recoveredStack1) put: (recoveredStack2).
            recoveredPC := 1223.
        ].
        recoveredStep = 1223 ifTrue: [
            recoveredStack0 := recoveredLocal37.
            recoveredPC := 1226.
        ].
        recoveredStep = 1226 ifTrue: [
            recoveredStack1 := 'bit11Toggle'.
            recoveredPC := 1228.
        ].
        recoveredStep = 1228 ifTrue: [
            recoveredStack2 := [:recoveredBlock1228Arg1 | 
    | recoveredBlock1228Value0 recoveredBlock1228Value1 recoveredBlock1228Value2 recoveredBlock1228Value3 recoveredBlock1228Value4 recoveredBlock1228Value5 recoveredBlock1228Value6 recoveredBlock1228Value7 recoveredBlock1228Value8 recoveredBlock1228Value9 recoveredBlock1228Value10 recoveredBlock1228Value11 recoveredBlock1228Value12 recoveredBlock1228Value13 recoveredBlock1228Value14 recoveredBlock1228Value15 recoveredBlock1228Value16 recoveredBlock1228Value17 recoveredBlock1228Value18 |
    recoveredBlock1228Value0 := recoveredBlock1228Arg1.
    recoveredBlock1228Value1 := recoveredBlock1228Value0.
    (recoveredBlock1228Value1) sensitive: (false).
    recoveredBlock1228Value2 := recoveredBlock1228Value0.
    recoveredBlock1228Value3 := recoveredLocal35.
    recoveredBlock1228Value4 := (5) * (recoveredBlock1228Value3).
    recoveredBlock1228Value5 := (recoveredBlock1228Value4) rounded.
    (recoveredBlock1228Value2) y: (recoveredBlock1228Value5).
    recoveredBlock1228Value6 := recoveredBlock1228Value0.
    (recoveredBlock1228Value6) recomputeSize: (false).
    recoveredBlock1228Value7 := recoveredBlock1228Value0.
    recoveredBlock1228Value8 := recoveredLocal36.
    recoveredBlock1228Value9 := (285) * (recoveredBlock1228Value8).
    recoveredBlock1228Value10 := (recoveredBlock1228Value9) rounded.
    (recoveredBlock1228Value7) x: (recoveredBlock1228Value10).
    recoveredBlock1228Value11 := recoveredBlock1228Value0.
    recoveredBlock1228Value12 := recoveredLocal35.
    recoveredBlock1228Value13 := (13) * (recoveredBlock1228Value12).
    recoveredBlock1228Value14 := (recoveredBlock1228Value13) rounded.
    (recoveredBlock1228Value11) height: (recoveredBlock1228Value14).
    recoveredBlock1228Value15 := recoveredLocal36.
    recoveredBlock1228Value16 := (13) * (recoveredBlock1228Value15).
    recoveredBlock1228Value17 := (recoveredBlock1228Value16) rounded.
    recoveredBlock1228Value18 := (recoveredBlock1228Value0) width: (recoveredBlock1228Value17).
    recoveredBlock1228Value18
].
            recoveredPC := 1288.
        ].
        recoveredStep = 1288 ifTrue: [
            recoveredStack0 := (recoveredStack0) createToggleButton: (recoveredStack1) argBlock: (recoveredStack2).
            recoveredPC := 1290.
        ].
        recoveredStep = 1290 ifTrue: [
            recoveredStack0 := (recoveredStack0) manageChild.
            recoveredPC := 1292.
        ].
        recoveredStep = 1292 ifTrue: [
            recoveredLocal12 := recoveredStack0.
            recoveredPC := 1295.
        ].
        recoveredStep = 1295 ifTrue: [
            recoveredStack0 := recoveredLocal34.
            recoveredPC := 1298.
        ].
        recoveredStep = 1298 ifTrue: [
            recoveredStack1 := 'bit11Toggle'.
            recoveredPC := 1300.
        ].
        recoveredStep = 1300 ifTrue: [
            recoveredStack2 := recoveredLocal12.
            recoveredPC := 1303.
        ].
        recoveredStep = 1303 ifTrue: [
            (recoveredStack0) at: (recoveredStack1) put: (recoveredStack2).
            recoveredPC := 1305.
        ].
        recoveredStep = 1305 ifTrue: [
            recoveredStack0 := recoveredLocal37.
            recoveredPC := 1308.
        ].
        recoveredStep = 1308 ifTrue: [
            recoveredStack1 := 'bit12Toggle'.
            recoveredPC := 1312.
        ].
        recoveredStep = 1312 ifTrue: [
            recoveredStack2 := [:recoveredBlock1312Arg1 | 
    | recoveredBlock1312Value0 recoveredBlock1312Value1 recoveredBlock1312Value2 recoveredBlock1312Value3 recoveredBlock1312Value4 recoveredBlock1312Value5 recoveredBlock1312Value6 recoveredBlock1312Value7 recoveredBlock1312Value8 recoveredBlock1312Value9 recoveredBlock1312Value10 recoveredBlock1312Value11 recoveredBlock1312Value12 recoveredBlock1312Value13 recoveredBlock1312Value14 recoveredBlock1312Value15 recoveredBlock1312Value16 recoveredBlock1312Value17 recoveredBlock1312Value18 |
    recoveredBlock1312Value0 := recoveredBlock1312Arg1.
    recoveredBlock1312Value1 := recoveredBlock1312Value0.
    (recoveredBlock1312Value1) sensitive: (false).
    recoveredBlock1312Value2 := recoveredBlock1312Value0.
    recoveredBlock1312Value3 := recoveredLocal35.
    recoveredBlock1312Value4 := (5) * (recoveredBlock1312Value3).
    recoveredBlock1312Value5 := (recoveredBlock1312Value4) rounded.
    (recoveredBlock1312Value2) y: (recoveredBlock1312Value5).
    recoveredBlock1312Value6 := recoveredBlock1312Value0.
    (recoveredBlock1312Value6) recomputeSize: (false).
    recoveredBlock1312Value7 := recoveredBlock1312Value0.
    recoveredBlock1312Value8 := recoveredLocal36.
    recoveredBlock1312Value9 := (270) * (recoveredBlock1312Value8).
    recoveredBlock1312Value10 := (recoveredBlock1312Value9) rounded.
    (recoveredBlock1312Value7) x: (recoveredBlock1312Value10).
    recoveredBlock1312Value11 := recoveredBlock1312Value0.
    recoveredBlock1312Value12 := recoveredLocal35.
    recoveredBlock1312Value13 := (13) * (recoveredBlock1312Value12).
    recoveredBlock1312Value14 := (recoveredBlock1312Value13) rounded.
    (recoveredBlock1312Value11) height: (recoveredBlock1312Value14).
    recoveredBlock1312Value15 := recoveredLocal36.
    recoveredBlock1312Value16 := (13) * (recoveredBlock1312Value15).
    recoveredBlock1312Value17 := (recoveredBlock1312Value16) rounded.
    recoveredBlock1312Value18 := (recoveredBlock1312Value0) width: (recoveredBlock1312Value17).
    recoveredBlock1312Value18
].
            recoveredPC := 1372.
        ].
        recoveredStep = 1372 ifTrue: [
            recoveredStack0 := (recoveredStack0) createToggleButton: (recoveredStack1) argBlock: (recoveredStack2).
            recoveredPC := 1374.
        ].
        recoveredStep = 1374 ifTrue: [
            recoveredStack0 := (recoveredStack0) manageChild.
            recoveredPC := 1376.
        ].
        recoveredStep = 1376 ifTrue: [
            recoveredLocal10 := recoveredStack0.
            recoveredPC := 1379.
        ].
        recoveredStep = 1379 ifTrue: [
            recoveredStack0 := recoveredLocal34.
            recoveredPC := 1382.
        ].
        recoveredStep = 1382 ifTrue: [
            recoveredStack1 := 'bit12Toggle'.
            recoveredPC := 1386.
        ].
        recoveredStep = 1386 ifTrue: [
            recoveredStack2 := recoveredLocal10.
            recoveredPC := 1389.
        ].
        recoveredStep = 1389 ifTrue: [
            (recoveredStack0) at: (recoveredStack1) put: (recoveredStack2).
            recoveredPC := 1391.
        ].
        recoveredStep = 1391 ifTrue: [
            recoveredStack0 := recoveredLocal37.
            recoveredPC := 1394.
        ].
        recoveredStep = 1394 ifTrue: [
            recoveredStack1 := 'bit13Toggle'.
            recoveredPC := 1398.
        ].
        recoveredStep = 1398 ifTrue: [
            recoveredStack2 := [:recoveredBlock1398Arg1 | 
    | recoveredBlock1398Value0 recoveredBlock1398Value1 recoveredBlock1398Value2 recoveredBlock1398Value3 recoveredBlock1398Value4 recoveredBlock1398Value5 recoveredBlock1398Value6 recoveredBlock1398Value7 recoveredBlock1398Value8 recoveredBlock1398Value9 recoveredBlock1398Value10 recoveredBlock1398Value11 recoveredBlock1398Value12 recoveredBlock1398Value13 recoveredBlock1398Value14 recoveredBlock1398Value15 recoveredBlock1398Value16 recoveredBlock1398Value17 recoveredBlock1398Value18 |
    recoveredBlock1398Value0 := recoveredBlock1398Arg1.
    recoveredBlock1398Value1 := recoveredBlock1398Value0.
    (recoveredBlock1398Value1) sensitive: (false).
    recoveredBlock1398Value2 := recoveredBlock1398Value0.
    recoveredBlock1398Value3 := recoveredLocal35.
    recoveredBlock1398Value4 := (5) * (recoveredBlock1398Value3).
    recoveredBlock1398Value5 := (recoveredBlock1398Value4) rounded.
    (recoveredBlock1398Value2) y: (recoveredBlock1398Value5).
    recoveredBlock1398Value6 := recoveredBlock1398Value0.
    (recoveredBlock1398Value6) recomputeSize: (false).
    recoveredBlock1398Value7 := recoveredBlock1398Value0.
    recoveredBlock1398Value8 := recoveredLocal36.
    recoveredBlock1398Value9 := (255) * (recoveredBlock1398Value8).
    recoveredBlock1398Value10 := (recoveredBlock1398Value9) rounded.
    (recoveredBlock1398Value7) x: (recoveredBlock1398Value10).
    recoveredBlock1398Value11 := recoveredBlock1398Value0.
    recoveredBlock1398Value12 := recoveredLocal35.
    recoveredBlock1398Value13 := (13) * (recoveredBlock1398Value12).
    recoveredBlock1398Value14 := (recoveredBlock1398Value13) rounded.
    (recoveredBlock1398Value11) height: (recoveredBlock1398Value14).
    recoveredBlock1398Value15 := recoveredLocal36.
    recoveredBlock1398Value16 := (13) * (recoveredBlock1398Value15).
    recoveredBlock1398Value17 := (recoveredBlock1398Value16) rounded.
    recoveredBlock1398Value18 := (recoveredBlock1398Value0) width: (recoveredBlock1398Value17).
    recoveredBlock1398Value18
].
            recoveredPC := 1458.
        ].
        recoveredStep = 1458 ifTrue: [
            recoveredStack0 := (recoveredStack0) createToggleButton: (recoveredStack1) argBlock: (recoveredStack2).
            recoveredPC := 1460.
        ].
        recoveredStep = 1460 ifTrue: [
            recoveredStack0 := (recoveredStack0) manageChild.
            recoveredPC := 1462.
        ].
        recoveredStep = 1462 ifTrue: [
            recoveredLocal8 := recoveredStack0.
            recoveredPC := 1465.
        ].
        recoveredStep = 1465 ifTrue: [
            recoveredStack0 := recoveredLocal34.
            recoveredPC := 1468.
        ].
        recoveredStep = 1468 ifTrue: [
            recoveredStack1 := 'bit13Toggle'.
            recoveredPC := 1472.
        ].
        recoveredStep = 1472 ifTrue: [
            recoveredStack2 := recoveredLocal8.
            recoveredPC := 1475.
        ].
        recoveredStep = 1475 ifTrue: [
            (recoveredStack0) at: (recoveredStack1) put: (recoveredStack2).
            recoveredPC := 1477.
        ].
        recoveredStep = 1477 ifTrue: [
            recoveredStack0 := recoveredLocal37.
            recoveredPC := 1480.
        ].
        recoveredStep = 1480 ifTrue: [
            recoveredStack1 := 'bit14Toggle'.
            recoveredPC := 1484.
        ].
        recoveredStep = 1484 ifTrue: [
            recoveredStack2 := [:recoveredBlock1484Arg1 | 
    | recoveredBlock1484Value0 recoveredBlock1484Value1 recoveredBlock1484Value2 recoveredBlock1484Value3 recoveredBlock1484Value4 recoveredBlock1484Value5 recoveredBlock1484Value6 recoveredBlock1484Value7 recoveredBlock1484Value8 recoveredBlock1484Value9 recoveredBlock1484Value10 recoveredBlock1484Value11 recoveredBlock1484Value12 recoveredBlock1484Value13 recoveredBlock1484Value14 recoveredBlock1484Value15 recoveredBlock1484Value16 recoveredBlock1484Value17 recoveredBlock1484Value18 |
    recoveredBlock1484Value0 := recoveredBlock1484Arg1.
    recoveredBlock1484Value1 := recoveredBlock1484Value0.
    (recoveredBlock1484Value1) sensitive: (false).
    recoveredBlock1484Value2 := recoveredBlock1484Value0.
    recoveredBlock1484Value3 := recoveredLocal35.
    recoveredBlock1484Value4 := (5) * (recoveredBlock1484Value3).
    recoveredBlock1484Value5 := (recoveredBlock1484Value4) rounded.
    (recoveredBlock1484Value2) y: (recoveredBlock1484Value5).
    recoveredBlock1484Value6 := recoveredBlock1484Value0.
    (recoveredBlock1484Value6) recomputeSize: (false).
    recoveredBlock1484Value7 := recoveredBlock1484Value0.
    recoveredBlock1484Value8 := recoveredLocal36.
    recoveredBlock1484Value9 := (240) * (recoveredBlock1484Value8).
    recoveredBlock1484Value10 := (recoveredBlock1484Value9) rounded.
    (recoveredBlock1484Value7) x: (recoveredBlock1484Value10).
    recoveredBlock1484Value11 := recoveredBlock1484Value0.
    recoveredBlock1484Value12 := recoveredLocal35.
    recoveredBlock1484Value13 := (13) * (recoveredBlock1484Value12).
    recoveredBlock1484Value14 := (recoveredBlock1484Value13) rounded.
    (recoveredBlock1484Value11) height: (recoveredBlock1484Value14).
    recoveredBlock1484Value15 := recoveredLocal36.
    recoveredBlock1484Value16 := (13) * (recoveredBlock1484Value15).
    recoveredBlock1484Value17 := (recoveredBlock1484Value16) rounded.
    recoveredBlock1484Value18 := (recoveredBlock1484Value0) width: (recoveredBlock1484Value17).
    recoveredBlock1484Value18
].
            recoveredPC := 1544.
        ].
        recoveredStep = 1544 ifTrue: [
            recoveredStack0 := (recoveredStack0) createToggleButton: (recoveredStack1) argBlock: (recoveredStack2).
            recoveredPC := 1546.
        ].
        recoveredStep = 1546 ifTrue: [
            recoveredStack0 := (recoveredStack0) manageChild.
            recoveredPC := 1548.
        ].
        recoveredStep = 1548 ifTrue: [
            recoveredLocal6 := recoveredStack0.
            recoveredPC := 1551.
        ].
        recoveredStep = 1551 ifTrue: [
            recoveredStack0 := recoveredLocal34.
            recoveredPC := 1554.
        ].
        recoveredStep = 1554 ifTrue: [
            recoveredStack1 := 'bit14Toggle'.
            recoveredPC := 1558.
        ].
        recoveredStep = 1558 ifTrue: [
            recoveredStack2 := recoveredLocal6.
            recoveredPC := 1561.
        ].
        recoveredStep = 1561 ifTrue: [
            (recoveredStack0) at: (recoveredStack1) put: (recoveredStack2).
            recoveredPC := 1563.
        ].
        recoveredStep = 1563 ifTrue: [
            recoveredStack0 := recoveredLocal37.
            recoveredPC := 1566.
        ].
        recoveredStep = 1566 ifTrue: [
            recoveredStack1 := 'bit15Toggle'.
            recoveredPC := 1570.
        ].
        recoveredStep = 1570 ifTrue: [
            recoveredStack2 := [:recoveredBlock1570Arg1 | 
    | recoveredBlock1570Value0 recoveredBlock1570Value1 recoveredBlock1570Value2 recoveredBlock1570Value3 recoveredBlock1570Value4 recoveredBlock1570Value5 recoveredBlock1570Value6 recoveredBlock1570Value7 recoveredBlock1570Value8 recoveredBlock1570Value9 recoveredBlock1570Value10 recoveredBlock1570Value11 recoveredBlock1570Value12 recoveredBlock1570Value13 recoveredBlock1570Value14 recoveredBlock1570Value15 recoveredBlock1570Value16 recoveredBlock1570Value17 recoveredBlock1570Value18 |
    recoveredBlock1570Value0 := recoveredBlock1570Arg1.
    recoveredBlock1570Value1 := recoveredBlock1570Value0.
    (recoveredBlock1570Value1) sensitive: (false).
    recoveredBlock1570Value2 := recoveredBlock1570Value0.
    recoveredBlock1570Value3 := recoveredLocal35.
    recoveredBlock1570Value4 := (5) * (recoveredBlock1570Value3).
    recoveredBlock1570Value5 := (recoveredBlock1570Value4) rounded.
    (recoveredBlock1570Value2) y: (recoveredBlock1570Value5).
    recoveredBlock1570Value6 := recoveredBlock1570Value0.
    (recoveredBlock1570Value6) recomputeSize: (false).
    recoveredBlock1570Value7 := recoveredBlock1570Value0.
    recoveredBlock1570Value8 := recoveredLocal36.
    recoveredBlock1570Value9 := (225) * (recoveredBlock1570Value8).
    recoveredBlock1570Value10 := (recoveredBlock1570Value9) rounded.
    (recoveredBlock1570Value7) x: (recoveredBlock1570Value10).
    recoveredBlock1570Value11 := recoveredBlock1570Value0.
    recoveredBlock1570Value12 := recoveredLocal35.
    recoveredBlock1570Value13 := (13) * (recoveredBlock1570Value12).
    recoveredBlock1570Value14 := (recoveredBlock1570Value13) rounded.
    (recoveredBlock1570Value11) height: (recoveredBlock1570Value14).
    recoveredBlock1570Value15 := recoveredLocal36.
    recoveredBlock1570Value16 := (13) * (recoveredBlock1570Value15).
    recoveredBlock1570Value17 := (recoveredBlock1570Value16) rounded.
    recoveredBlock1570Value18 := (recoveredBlock1570Value0) width: (recoveredBlock1570Value17).
    recoveredBlock1570Value18
].
            recoveredPC := 1630.
        ].
        recoveredStep = 1630 ifTrue: [
            recoveredStack0 := (recoveredStack0) createToggleButton: (recoveredStack1) argBlock: (recoveredStack2).
            recoveredPC := 1632.
        ].
        recoveredStep = 1632 ifTrue: [
            recoveredStack0 := (recoveredStack0) manageChild.
            recoveredPC := 1634.
        ].
        recoveredStep = 1634 ifTrue: [
            recoveredLocal4 := recoveredStack0.
            recoveredPC := 1637.
        ].
        recoveredStep = 1637 ifTrue: [
            recoveredStack0 := recoveredLocal34.
            recoveredPC := 1640.
        ].
        recoveredStep = 1640 ifTrue: [
            recoveredStack1 := 'bit15Toggle'.
            recoveredPC := 1644.
        ].
        recoveredStep = 1644 ifTrue: [
            recoveredStack2 := recoveredLocal4.
            recoveredPC := 1647.
        ].
        recoveredStep = 1647 ifTrue: [
            (recoveredStack0) at: (recoveredStack1) put: (recoveredStack2).
            recoveredPC := 1649.
        ].
        recoveredStep = 1649 ifTrue: [
            recoveredStack0 := recoveredLocal37.
            recoveredPC := 1652.
        ].
        recoveredStep = 1652 ifTrue: [
            recoveredStack1 := 'bit16Toggle'.
            recoveredPC := 1656.
        ].
        recoveredStep = 1656 ifTrue: [
            recoveredStack2 := [:recoveredBlock1656Arg1 | 
    | recoveredBlock1656Value0 recoveredBlock1656Value1 recoveredBlock1656Value2 recoveredBlock1656Value3 recoveredBlock1656Value4 recoveredBlock1656Value5 recoveredBlock1656Value6 recoveredBlock1656Value7 recoveredBlock1656Value8 recoveredBlock1656Value9 recoveredBlock1656Value10 recoveredBlock1656Value11 recoveredBlock1656Value12 recoveredBlock1656Value13 recoveredBlock1656Value14 recoveredBlock1656Value15 recoveredBlock1656Value16 recoveredBlock1656Value17 recoveredBlock1656Value18 |
    recoveredBlock1656Value0 := recoveredBlock1656Arg1.
    recoveredBlock1656Value1 := recoveredBlock1656Value0.
    (recoveredBlock1656Value1) sensitive: (false).
    recoveredBlock1656Value2 := recoveredBlock1656Value0.
    recoveredBlock1656Value3 := recoveredLocal35.
    recoveredBlock1656Value4 := (5) * (recoveredBlock1656Value3).
    recoveredBlock1656Value5 := (recoveredBlock1656Value4) rounded.
    (recoveredBlock1656Value2) y: (recoveredBlock1656Value5).
    recoveredBlock1656Value6 := recoveredBlock1656Value0.
    (recoveredBlock1656Value6) recomputeSize: (false).
    recoveredBlock1656Value7 := recoveredBlock1656Value0.
    recoveredBlock1656Value8 := recoveredLocal36.
    recoveredBlock1656Value9 := (210) * (recoveredBlock1656Value8).
    recoveredBlock1656Value10 := (recoveredBlock1656Value9) rounded.
    (recoveredBlock1656Value7) x: (recoveredBlock1656Value10).
    recoveredBlock1656Value11 := recoveredBlock1656Value0.
    recoveredBlock1656Value12 := recoveredLocal35.
    recoveredBlock1656Value13 := (13) * (recoveredBlock1656Value12).
    recoveredBlock1656Value14 := (recoveredBlock1656Value13) rounded.
    (recoveredBlock1656Value11) height: (recoveredBlock1656Value14).
    recoveredBlock1656Value15 := recoveredLocal36.
    recoveredBlock1656Value16 := (13) * (recoveredBlock1656Value15).
    recoveredBlock1656Value17 := (recoveredBlock1656Value16) rounded.
    recoveredBlock1656Value18 := (recoveredBlock1656Value0) width: (recoveredBlock1656Value17).
    recoveredBlock1656Value18
].
            recoveredPC := 1716.
        ].
        recoveredStep = 1716 ifTrue: [
            recoveredStack0 := (recoveredStack0) createToggleButton: (recoveredStack1) argBlock: (recoveredStack2).
            recoveredPC := 1718.
        ].
        recoveredStep = 1718 ifTrue: [
            recoveredStack0 := (recoveredStack0) manageChild.
            recoveredPC := 1720.
        ].
        recoveredStep = 1720 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 1723.
        ].
        recoveredStep = 1723 ifTrue: [
            recoveredStack0 := recoveredLocal34.
            recoveredPC := 1726.
        ].
        recoveredStep = 1726 ifTrue: [
            recoveredStack1 := 'bit16Toggle'.
            recoveredPC := 1730.
        ].
        recoveredStep = 1730 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 1733.
        ].
        recoveredStep = 1733 ifTrue: [
            (recoveredStack0) at: (recoveredStack1) put: (recoveredStack2).
            recoveredPC := 1735.
        ].
        recoveredStep = 1735 ifTrue: [
            recoveredStack0 := recoveredLocal37.
            recoveredPC := 1738.
        ].
        recoveredStep = 1738 ifTrue: [
            recoveredStack1 := 'bit9Label'.
            recoveredPC := 1742.
        ].
        recoveredStep = 1742 ifTrue: [
            recoveredStack2 := [:recoveredBlock1742Arg1 | 
    | recoveredBlock1742Value0 recoveredBlock1742Value1 recoveredBlock1742Value2 recoveredBlock1742Value3 recoveredBlock1742Value4 recoveredBlock1742Value5 recoveredBlock1742Value6 recoveredBlock1742Value7 recoveredBlock1742Value8 recoveredBlock1742Value9 recoveredBlock1742Value10 recoveredBlock1742Value11 recoveredBlock1742Value12 recoveredBlock1742Value13 recoveredBlock1742Value14 recoveredBlock1742Value15 recoveredBlock1742Value16 recoveredBlock1742Value17 recoveredBlock1742Value18 recoveredBlock1742Value19 recoveredBlock1742Value20 |
    recoveredBlock1742Value0 := recoveredBlock1742Arg1.
    recoveredBlock1742Value1 := recoveredBlock1742Value0.
    recoveredBlock1742Value2 := recoveredLocal36.
    recoveredBlock1742Value3 := (315) * (recoveredBlock1742Value2).
    recoveredBlock1742Value4 := (recoveredBlock1742Value3) rounded.
    (recoveredBlock1742Value1) x: (recoveredBlock1742Value4).
    recoveredBlock1742Value5 := recoveredBlock1742Value0.
    (recoveredBlock1742Value5) labelString: ('1').
    recoveredBlock1742Value6 := recoveredBlock1742Value0.
    recoveredBlock1742Value7 := recoveredLocal35.
    recoveredBlock1742Value8 := (18) * (recoveredBlock1742Value7).
    recoveredBlock1742Value9 := (recoveredBlock1742Value8) rounded.
    (recoveredBlock1742Value6) y: (recoveredBlock1742Value9).
    recoveredBlock1742Value10 := recoveredBlock1742Value0.
    (recoveredBlock1742Value10) marginHeight: (0).
    recoveredBlock1742Value11 := recoveredBlock1742Value0.
    (recoveredBlock1742Value11) marginWidth: (0).
    recoveredBlock1742Value12 := recoveredBlock1742Value0.
    recoveredBlock1742Value13 := recoveredLocal35.
    recoveredBlock1742Value14 := (11) * (recoveredBlock1742Value13).
    recoveredBlock1742Value15 := (recoveredBlock1742Value14) rounded.
    (recoveredBlock1742Value12) height: (recoveredBlock1742Value15).
    recoveredBlock1742Value16 := recoveredBlock1742Value0.
    recoveredBlock1742Value17 := recoveredLocal36.
    recoveredBlock1742Value18 := (12) * (recoveredBlock1742Value17).
    recoveredBlock1742Value19 := (recoveredBlock1742Value18) rounded.
    (recoveredBlock1742Value16) width: (recoveredBlock1742Value19).
    recoveredBlock1742Value20 := (recoveredBlock1742Value0) recomputeSize: (false).
    recoveredBlock1742Value20
].
            recoveredPC := 1816.
        ].
        recoveredStep = 1816 ifTrue: [
            recoveredStack0 := (recoveredStack0) createLabel: (recoveredStack1) argBlock: (recoveredStack2).
            recoveredPC := 1818.
        ].
        recoveredStep = 1818 ifTrue: [
            recoveredStack0 := (recoveredStack0) manageChild.
            recoveredPC := 1820.
        ].
        recoveredStep = 1820 ifTrue: [
            recoveredLocal15 := recoveredStack0.
            recoveredPC := 1823.
        ].
        recoveredStep = 1823 ifTrue: [
            recoveredStack0 := recoveredLocal34.
            recoveredPC := 1826.
        ].
        recoveredStep = 1826 ifTrue: [
            recoveredStack1 := 'bit9Label'.
            recoveredPC := 1830.
        ].
        recoveredStep = 1830 ifTrue: [
            recoveredStack2 := recoveredLocal15.
            recoveredPC := 1833.
        ].
        recoveredStep = 1833 ifTrue: [
            (recoveredStack0) at: (recoveredStack1) put: (recoveredStack2).
            recoveredPC := 1835.
        ].
        recoveredStep = 1835 ifTrue: [
            recoveredStack0 := recoveredLocal37.
            recoveredPC := 1838.
        ].
        recoveredStep = 1838 ifTrue: [
            recoveredStack1 := 'bit10Label'.
            recoveredPC := 1842.
        ].
        recoveredStep = 1842 ifTrue: [
            recoveredStack2 := [:recoveredBlock1842Arg1 | 
    | recoveredBlock1842Value0 recoveredBlock1842Value1 recoveredBlock1842Value2 recoveredBlock1842Value3 recoveredBlock1842Value4 recoveredBlock1842Value5 recoveredBlock1842Value6 recoveredBlock1842Value7 recoveredBlock1842Value8 recoveredBlock1842Value9 recoveredBlock1842Value10 recoveredBlock1842Value11 recoveredBlock1842Value12 recoveredBlock1842Value13 recoveredBlock1842Value14 recoveredBlock1842Value15 recoveredBlock1842Value16 recoveredBlock1842Value17 recoveredBlock1842Value18 recoveredBlock1842Value19 recoveredBlock1842Value20 |
    recoveredBlock1842Value0 := recoveredBlock1842Arg1.
    recoveredBlock1842Value1 := recoveredBlock1842Value0.
    recoveredBlock1842Value2 := recoveredLocal36.
    recoveredBlock1842Value3 := (300) * (recoveredBlock1842Value2).
    recoveredBlock1842Value4 := (recoveredBlock1842Value3) rounded.
    (recoveredBlock1842Value1) x: (recoveredBlock1842Value4).
    recoveredBlock1842Value5 := recoveredBlock1842Value0.
    (recoveredBlock1842Value5) labelString: ('2').
    recoveredBlock1842Value6 := recoveredBlock1842Value0.
    (recoveredBlock1842Value6) marginHeight: (0).
    recoveredBlock1842Value7 := recoveredBlock1842Value0.
    (recoveredBlock1842Value7) marginWidth: (0).
    recoveredBlock1842Value8 := recoveredBlock1842Value0.
    recoveredBlock1842Value9 := recoveredLocal35.
    recoveredBlock1842Value10 := (18) * (recoveredBlock1842Value9).
    recoveredBlock1842Value11 := (recoveredBlock1842Value10) rounded.
    (recoveredBlock1842Value8) y: (recoveredBlock1842Value11).
    recoveredBlock1842Value12 := recoveredBlock1842Value0.
    recoveredBlock1842Value13 := recoveredLocal35.
    recoveredBlock1842Value14 := (11) * (recoveredBlock1842Value13).
    recoveredBlock1842Value15 := (recoveredBlock1842Value14) rounded.
    (recoveredBlock1842Value12) height: (recoveredBlock1842Value15).
    recoveredBlock1842Value16 := recoveredBlock1842Value0.
    recoveredBlock1842Value17 := recoveredLocal36.
    recoveredBlock1842Value18 := (12) * (recoveredBlock1842Value17).
    recoveredBlock1842Value19 := (recoveredBlock1842Value18) rounded.
    (recoveredBlock1842Value16) width: (recoveredBlock1842Value19).
    recoveredBlock1842Value20 := (recoveredBlock1842Value0) recomputeSize: (false).
    recoveredBlock1842Value20
].
            recoveredPC := 1915.
        ].
        recoveredStep = 1915 ifTrue: [
            recoveredStack0 := (recoveredStack0) createLabel: (recoveredStack1) argBlock: (recoveredStack2).
            recoveredPC := 1917.
        ].
        recoveredStep = 1917 ifTrue: [
            recoveredStack0 := (recoveredStack0) manageChild.
            recoveredPC := 1919.
        ].
        recoveredStep = 1919 ifTrue: [
            recoveredLocal13 := recoveredStack0.
            recoveredPC := 1922.
        ].
        recoveredStep = 1922 ifTrue: [
            recoveredStack0 := recoveredLocal34.
            recoveredPC := 1925.
        ].
        recoveredStep = 1925 ifTrue: [
            recoveredStack1 := 'bit10Label'.
            recoveredPC := 1928.
        ].
        recoveredStep = 1928 ifTrue: [
            recoveredStack2 := recoveredLocal13.
            recoveredPC := 1931.
        ].
        recoveredStep = 1931 ifTrue: [
            (recoveredStack0) at: (recoveredStack1) put: (recoveredStack2).
            recoveredPC := 1933.
        ].
        recoveredStep = 1933 ifTrue: [
            recoveredStack0 := recoveredLocal37.
            recoveredPC := 1936.
        ].
        recoveredStep = 1936 ifTrue: [
            recoveredStack1 := 'bit11Label'.
            recoveredPC := 1940.
        ].
        recoveredStep = 1940 ifTrue: [
            recoveredStack2 := [:recoveredBlock1940Arg1 | 
    | recoveredBlock1940Value0 recoveredBlock1940Value1 recoveredBlock1940Value2 recoveredBlock1940Value3 recoveredBlock1940Value4 recoveredBlock1940Value5 recoveredBlock1940Value6 recoveredBlock1940Value7 recoveredBlock1940Value8 recoveredBlock1940Value9 recoveredBlock1940Value10 recoveredBlock1940Value11 recoveredBlock1940Value12 recoveredBlock1940Value13 recoveredBlock1940Value14 recoveredBlock1940Value15 recoveredBlock1940Value16 recoveredBlock1940Value17 recoveredBlock1940Value18 recoveredBlock1940Value19 recoveredBlock1940Value20 |
    recoveredBlock1940Value0 := recoveredBlock1940Arg1.
    recoveredBlock1940Value1 := recoveredBlock1940Value0.
    recoveredBlock1940Value2 := recoveredLocal36.
    recoveredBlock1940Value3 := (285) * (recoveredBlock1940Value2).
    recoveredBlock1940Value4 := (recoveredBlock1940Value3) rounded.
    (recoveredBlock1940Value1) x: (recoveredBlock1940Value4).
    recoveredBlock1940Value5 := recoveredBlock1940Value0.
    (recoveredBlock1940Value5) labelString: ('3').
    recoveredBlock1940Value6 := recoveredBlock1940Value0.
    recoveredBlock1940Value7 := recoveredLocal35.
    recoveredBlock1940Value8 := (18) * (recoveredBlock1940Value7).
    recoveredBlock1940Value9 := (recoveredBlock1940Value8) rounded.
    (recoveredBlock1940Value6) y: (recoveredBlock1940Value9).
    recoveredBlock1940Value10 := recoveredBlock1940Value0.
    (recoveredBlock1940Value10) marginHeight: (0).
    recoveredBlock1940Value11 := recoveredBlock1940Value0.
    (recoveredBlock1940Value11) marginWidth: (0).
    recoveredBlock1940Value12 := recoveredBlock1940Value0.
    recoveredBlock1940Value13 := recoveredLocal35.
    recoveredBlock1940Value14 := (11) * (recoveredBlock1940Value13).
    recoveredBlock1940Value15 := (recoveredBlock1940Value14) rounded.
    (recoveredBlock1940Value12) height: (recoveredBlock1940Value15).
    recoveredBlock1940Value16 := recoveredBlock1940Value0.
    recoveredBlock1940Value17 := recoveredLocal36.
    recoveredBlock1940Value18 := (12) * (recoveredBlock1940Value17).
    recoveredBlock1940Value19 := (recoveredBlock1940Value18) rounded.
    (recoveredBlock1940Value16) width: (recoveredBlock1940Value19).
    recoveredBlock1940Value20 := (recoveredBlock1940Value0) recomputeSize: (false).
    recoveredBlock1940Value20
].
            recoveredPC := 2014.
        ].
        recoveredStep = 2014 ifTrue: [
            recoveredStack0 := (recoveredStack0) createLabel: (recoveredStack1) argBlock: (recoveredStack2).
            recoveredPC := 2016.
        ].
        recoveredStep = 2016 ifTrue: [
            recoveredStack0 := (recoveredStack0) manageChild.
            recoveredPC := 2018.
        ].
        recoveredStep = 2018 ifTrue: [
            recoveredLocal11 := recoveredStack0.
            recoveredPC := 2021.
        ].
        recoveredStep = 2021 ifTrue: [
            recoveredStack0 := recoveredLocal34.
            recoveredPC := 2024.
        ].
        recoveredStep = 2024 ifTrue: [
            recoveredStack1 := 'bit11Label'.
            recoveredPC := 2028.
        ].
        recoveredStep = 2028 ifTrue: [
            recoveredStack2 := recoveredLocal11.
            recoveredPC := 2031.
        ].
        recoveredStep = 2031 ifTrue: [
            (recoveredStack0) at: (recoveredStack1) put: (recoveredStack2).
            recoveredPC := 2033.
        ].
        recoveredStep = 2033 ifTrue: [
            recoveredStack0 := recoveredLocal37.
            recoveredPC := 2036.
        ].
        recoveredStep = 2036 ifTrue: [
            recoveredStack1 := 'bit12Label'.
            recoveredPC := 2040.
        ].
        recoveredStep = 2040 ifTrue: [
            recoveredStack2 := [:recoveredBlock2040Arg1 | 
    | recoveredBlock2040Value0 recoveredBlock2040Value1 recoveredBlock2040Value2 recoveredBlock2040Value3 recoveredBlock2040Value4 recoveredBlock2040Value5 recoveredBlock2040Value6 recoveredBlock2040Value7 recoveredBlock2040Value8 recoveredBlock2040Value9 recoveredBlock2040Value10 recoveredBlock2040Value11 recoveredBlock2040Value12 recoveredBlock2040Value13 recoveredBlock2040Value14 recoveredBlock2040Value15 recoveredBlock2040Value16 recoveredBlock2040Value17 recoveredBlock2040Value18 recoveredBlock2040Value19 recoveredBlock2040Value20 |
    recoveredBlock2040Value0 := recoveredBlock2040Arg1.
    recoveredBlock2040Value1 := recoveredBlock2040Value0.
    recoveredBlock2040Value2 := recoveredLocal36.
    recoveredBlock2040Value3 := (270) * (recoveredBlock2040Value2).
    recoveredBlock2040Value4 := (recoveredBlock2040Value3) rounded.
    (recoveredBlock2040Value1) x: (recoveredBlock2040Value4).
    recoveredBlock2040Value5 := recoveredBlock2040Value0.
    (recoveredBlock2040Value5) labelString: ('4').
    recoveredBlock2040Value6 := recoveredBlock2040Value0.
    recoveredBlock2040Value7 := recoveredLocal35.
    recoveredBlock2040Value8 := (18) * (recoveredBlock2040Value7).
    recoveredBlock2040Value9 := (recoveredBlock2040Value8) rounded.
    (recoveredBlock2040Value6) y: (recoveredBlock2040Value9).
    recoveredBlock2040Value10 := recoveredBlock2040Value0.
    (recoveredBlock2040Value10) marginHeight: (0).
    recoveredBlock2040Value11 := recoveredBlock2040Value0.
    (recoveredBlock2040Value11) marginWidth: (0).
    recoveredBlock2040Value12 := recoveredBlock2040Value0.
    recoveredBlock2040Value13 := recoveredLocal35.
    recoveredBlock2040Value14 := (11) * (recoveredBlock2040Value13).
    recoveredBlock2040Value15 := (recoveredBlock2040Value14) rounded.
    (recoveredBlock2040Value12) height: (recoveredBlock2040Value15).
    recoveredBlock2040Value16 := recoveredBlock2040Value0.
    recoveredBlock2040Value17 := recoveredLocal36.
    recoveredBlock2040Value18 := (12) * (recoveredBlock2040Value17).
    recoveredBlock2040Value19 := (recoveredBlock2040Value18) rounded.
    (recoveredBlock2040Value16) width: (recoveredBlock2040Value19).
    recoveredBlock2040Value20 := (recoveredBlock2040Value0) recomputeSize: (false).
    recoveredBlock2040Value20
].
            recoveredPC := 2114.
        ].
        recoveredStep = 2114 ifTrue: [
            recoveredStack0 := (recoveredStack0) createLabel: (recoveredStack1) argBlock: (recoveredStack2).
            recoveredPC := 2116.
        ].
        recoveredStep = 2116 ifTrue: [
            recoveredStack0 := (recoveredStack0) manageChild.
            recoveredPC := 2118.
        ].
        recoveredStep = 2118 ifTrue: [
            recoveredLocal9 := recoveredStack0.
            recoveredPC := 2121.
        ].
        recoveredStep = 2121 ifTrue: [
            recoveredStack0 := recoveredLocal34.
            recoveredPC := 2124.
        ].
        recoveredStep = 2124 ifTrue: [
            recoveredStack1 := 'bit12Label'.
            recoveredPC := 2128.
        ].
        recoveredStep = 2128 ifTrue: [
            recoveredStack2 := recoveredLocal9.
            recoveredPC := 2131.
        ].
        recoveredStep = 2131 ifTrue: [
            (recoveredStack0) at: (recoveredStack1) put: (recoveredStack2).
            recoveredPC := 2133.
        ].
        recoveredStep = 2133 ifTrue: [
            recoveredStack0 := recoveredLocal37.
            recoveredPC := 2136.
        ].
        recoveredStep = 2136 ifTrue: [
            recoveredStack1 := 'bit13Label'.
            recoveredPC := 2140.
        ].
        recoveredStep = 2140 ifTrue: [
            recoveredStack2 := [:recoveredBlock2140Arg1 | 
    | recoveredBlock2140Value0 recoveredBlock2140Value1 recoveredBlock2140Value2 recoveredBlock2140Value3 recoveredBlock2140Value4 recoveredBlock2140Value5 recoveredBlock2140Value6 recoveredBlock2140Value7 recoveredBlock2140Value8 recoveredBlock2140Value9 recoveredBlock2140Value10 recoveredBlock2140Value11 recoveredBlock2140Value12 recoveredBlock2140Value13 recoveredBlock2140Value14 recoveredBlock2140Value15 recoveredBlock2140Value16 recoveredBlock2140Value17 recoveredBlock2140Value18 recoveredBlock2140Value19 recoveredBlock2140Value20 |
    recoveredBlock2140Value0 := recoveredBlock2140Arg1.
    recoveredBlock2140Value1 := recoveredBlock2140Value0.
    recoveredBlock2140Value2 := recoveredLocal36.
    recoveredBlock2140Value3 := (255) * (recoveredBlock2140Value2).
    recoveredBlock2140Value4 := (recoveredBlock2140Value3) rounded.
    (recoveredBlock2140Value1) x: (recoveredBlock2140Value4).
    recoveredBlock2140Value5 := recoveredBlock2140Value0.
    (recoveredBlock2140Value5) labelString: ('5').
    recoveredBlock2140Value6 := recoveredBlock2140Value0.
    recoveredBlock2140Value7 := recoveredLocal35.
    recoveredBlock2140Value8 := (18) * (recoveredBlock2140Value7).
    recoveredBlock2140Value9 := (recoveredBlock2140Value8) rounded.
    (recoveredBlock2140Value6) y: (recoveredBlock2140Value9).
    recoveredBlock2140Value10 := recoveredBlock2140Value0.
    (recoveredBlock2140Value10) marginHeight: (0).
    recoveredBlock2140Value11 := recoveredBlock2140Value0.
    (recoveredBlock2140Value11) marginWidth: (0).
    recoveredBlock2140Value12 := recoveredBlock2140Value0.
    recoveredBlock2140Value13 := recoveredLocal35.
    recoveredBlock2140Value14 := (11) * (recoveredBlock2140Value13).
    recoveredBlock2140Value15 := (recoveredBlock2140Value14) rounded.
    (recoveredBlock2140Value12) height: (recoveredBlock2140Value15).
    recoveredBlock2140Value16 := recoveredBlock2140Value0.
    recoveredBlock2140Value17 := recoveredLocal36.
    recoveredBlock2140Value18 := (12) * (recoveredBlock2140Value17).
    recoveredBlock2140Value19 := (recoveredBlock2140Value18) rounded.
    (recoveredBlock2140Value16) width: (recoveredBlock2140Value19).
    recoveredBlock2140Value20 := (recoveredBlock2140Value0) recomputeSize: (false).
    recoveredBlock2140Value20
].
            recoveredPC := 2214.
        ].
        recoveredStep = 2214 ifTrue: [
            recoveredStack0 := (recoveredStack0) createLabel: (recoveredStack1) argBlock: (recoveredStack2).
            recoveredPC := 2216.
        ].
        recoveredStep = 2216 ifTrue: [
            recoveredStack0 := (recoveredStack0) manageChild.
            recoveredPC := 2218.
        ].
        recoveredStep = 2218 ifTrue: [
            recoveredLocal7 := recoveredStack0.
            recoveredPC := 2221.
        ].
        recoveredStep = 2221 ifTrue: [
            recoveredStack0 := recoveredLocal34.
            recoveredPC := 2224.
        ].
        recoveredStep = 2224 ifTrue: [
            recoveredStack1 := 'bit13Label'.
            recoveredPC := 2228.
        ].
        recoveredStep = 2228 ifTrue: [
            recoveredStack2 := recoveredLocal7.
            recoveredPC := 2231.
        ].
        recoveredStep = 2231 ifTrue: [
            (recoveredStack0) at: (recoveredStack1) put: (recoveredStack2).
            recoveredPC := 2233.
        ].
        recoveredStep = 2233 ifTrue: [
            recoveredStack0 := recoveredLocal37.
            recoveredPC := 2236.
        ].
        recoveredStep = 2236 ifTrue: [
            recoveredStack1 := 'bit14Label'.
            recoveredPC := 2240.
        ].
        recoveredStep = 2240 ifTrue: [
            recoveredStack2 := [:recoveredBlock2240Arg1 | 
    | recoveredBlock2240Value0 recoveredBlock2240Value1 recoveredBlock2240Value2 recoveredBlock2240Value3 recoveredBlock2240Value4 recoveredBlock2240Value5 recoveredBlock2240Value6 recoveredBlock2240Value7 recoveredBlock2240Value8 recoveredBlock2240Value9 recoveredBlock2240Value10 recoveredBlock2240Value11 recoveredBlock2240Value12 recoveredBlock2240Value13 recoveredBlock2240Value14 recoveredBlock2240Value15 recoveredBlock2240Value16 recoveredBlock2240Value17 recoveredBlock2240Value18 recoveredBlock2240Value19 recoveredBlock2240Value20 |
    recoveredBlock2240Value0 := recoveredBlock2240Arg1.
    recoveredBlock2240Value1 := recoveredBlock2240Value0.
    recoveredBlock2240Value2 := recoveredLocal36.
    recoveredBlock2240Value3 := (240) * (recoveredBlock2240Value2).
    recoveredBlock2240Value4 := (recoveredBlock2240Value3) rounded.
    (recoveredBlock2240Value1) x: (recoveredBlock2240Value4).
    recoveredBlock2240Value5 := recoveredBlock2240Value0.
    (recoveredBlock2240Value5) labelString: ('6').
    recoveredBlock2240Value6 := recoveredBlock2240Value0.
    recoveredBlock2240Value7 := recoveredLocal35.
    recoveredBlock2240Value8 := (18) * (recoveredBlock2240Value7).
    recoveredBlock2240Value9 := (recoveredBlock2240Value8) rounded.
    (recoveredBlock2240Value6) y: (recoveredBlock2240Value9).
    recoveredBlock2240Value10 := recoveredBlock2240Value0.
    (recoveredBlock2240Value10) marginHeight: (0).
    recoveredBlock2240Value11 := recoveredBlock2240Value0.
    (recoveredBlock2240Value11) marginWidth: (0).
    recoveredBlock2240Value12 := recoveredBlock2240Value0.
    recoveredBlock2240Value13 := recoveredLocal35.
    recoveredBlock2240Value14 := (11) * (recoveredBlock2240Value13).
    recoveredBlock2240Value15 := (recoveredBlock2240Value14) rounded.
    (recoveredBlock2240Value12) height: (recoveredBlock2240Value15).
    recoveredBlock2240Value16 := recoveredBlock2240Value0.
    recoveredBlock2240Value17 := recoveredLocal36.
    recoveredBlock2240Value18 := (12) * (recoveredBlock2240Value17).
    recoveredBlock2240Value19 := (recoveredBlock2240Value18) rounded.
    (recoveredBlock2240Value16) width: (recoveredBlock2240Value19).
    recoveredBlock2240Value20 := (recoveredBlock2240Value0) recomputeSize: (false).
    recoveredBlock2240Value20
].
            recoveredPC := 2314.
        ].
        recoveredStep = 2314 ifTrue: [
            recoveredStack0 := (recoveredStack0) createLabel: (recoveredStack1) argBlock: (recoveredStack2).
            recoveredPC := 2316.
        ].
        recoveredStep = 2316 ifTrue: [
            recoveredStack0 := (recoveredStack0) manageChild.
            recoveredPC := 2318.
        ].
        recoveredStep = 2318 ifTrue: [
            recoveredLocal5 := recoveredStack0.
            recoveredPC := 2321.
        ].
        recoveredStep = 2321 ifTrue: [
            recoveredStack0 := recoveredLocal34.
            recoveredPC := 2324.
        ].
        recoveredStep = 2324 ifTrue: [
            recoveredStack1 := 'bit14Label'.
            recoveredPC := 2328.
        ].
        recoveredStep = 2328 ifTrue: [
            recoveredStack2 := recoveredLocal5.
            recoveredPC := 2331.
        ].
        recoveredStep = 2331 ifTrue: [
            (recoveredStack0) at: (recoveredStack1) put: (recoveredStack2).
            recoveredPC := 2333.
        ].
        recoveredStep = 2333 ifTrue: [
            recoveredStack0 := recoveredLocal37.
            recoveredPC := 2336.
        ].
        recoveredStep = 2336 ifTrue: [
            recoveredStack1 := 'bit15Label'.
            recoveredPC := 2340.
        ].
        recoveredStep = 2340 ifTrue: [
            recoveredStack2 := [:recoveredBlock2340Arg1 | 
    | recoveredBlock2340Value0 recoveredBlock2340Value1 recoveredBlock2340Value2 recoveredBlock2340Value3 recoveredBlock2340Value4 recoveredBlock2340Value5 recoveredBlock2340Value6 recoveredBlock2340Value7 recoveredBlock2340Value8 recoveredBlock2340Value9 recoveredBlock2340Value10 recoveredBlock2340Value11 recoveredBlock2340Value12 recoveredBlock2340Value13 recoveredBlock2340Value14 recoveredBlock2340Value15 recoveredBlock2340Value16 recoveredBlock2340Value17 recoveredBlock2340Value18 recoveredBlock2340Value19 recoveredBlock2340Value20 |
    recoveredBlock2340Value0 := recoveredBlock2340Arg1.
    recoveredBlock2340Value1 := recoveredBlock2340Value0.
    recoveredBlock2340Value2 := recoveredLocal36.
    recoveredBlock2340Value3 := (225) * (recoveredBlock2340Value2).
    recoveredBlock2340Value4 := (recoveredBlock2340Value3) rounded.
    (recoveredBlock2340Value1) x: (recoveredBlock2340Value4).
    recoveredBlock2340Value5 := recoveredBlock2340Value0.
    (recoveredBlock2340Value5) labelString: ('7').
    recoveredBlock2340Value6 := recoveredBlock2340Value0.
    recoveredBlock2340Value7 := recoveredLocal35.
    recoveredBlock2340Value8 := (18) * (recoveredBlock2340Value7).
    recoveredBlock2340Value9 := (recoveredBlock2340Value8) rounded.
    (recoveredBlock2340Value6) y: (recoveredBlock2340Value9).
    recoveredBlock2340Value10 := recoveredBlock2340Value0.
    (recoveredBlock2340Value10) marginHeight: (0).
    recoveredBlock2340Value11 := recoveredBlock2340Value0.
    (recoveredBlock2340Value11) marginWidth: (0).
    recoveredBlock2340Value12 := recoveredBlock2340Value0.
    recoveredBlock2340Value13 := recoveredLocal35.
    recoveredBlock2340Value14 := (11) * (recoveredBlock2340Value13).
    recoveredBlock2340Value15 := (recoveredBlock2340Value14) rounded.
    (recoveredBlock2340Value12) height: (recoveredBlock2340Value15).
    recoveredBlock2340Value16 := recoveredBlock2340Value0.
    recoveredBlock2340Value17 := recoveredLocal36.
    recoveredBlock2340Value18 := (12) * (recoveredBlock2340Value17).
    recoveredBlock2340Value19 := (recoveredBlock2340Value18) rounded.
    (recoveredBlock2340Value16) width: (recoveredBlock2340Value19).
    recoveredBlock2340Value20 := (recoveredBlock2340Value0) recomputeSize: (false).
    recoveredBlock2340Value20
].
            recoveredPC := 2414.
        ].
        recoveredStep = 2414 ifTrue: [
            recoveredStack0 := (recoveredStack0) createLabel: (recoveredStack1) argBlock: (recoveredStack2).
            recoveredPC := 2416.
        ].
        recoveredStep = 2416 ifTrue: [
            recoveredStack0 := (recoveredStack0) manageChild.
            recoveredPC := 2418.
        ].
        recoveredStep = 2418 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 2421.
        ].
        recoveredStep = 2421 ifTrue: [
            recoveredStack0 := recoveredLocal34.
            recoveredPC := 2424.
        ].
        recoveredStep = 2424 ifTrue: [
            recoveredStack1 := 'bit15Label'.
            recoveredPC := 2428.
        ].
        recoveredStep = 2428 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 2431.
        ].
        recoveredStep = 2431 ifTrue: [
            (recoveredStack0) at: (recoveredStack1) put: (recoveredStack2).
            recoveredPC := 2433.
        ].
        recoveredStep = 2433 ifTrue: [
            recoveredStack0 := recoveredLocal37.
            recoveredPC := 2436.
        ].
        recoveredStep = 2436 ifTrue: [
            recoveredStack1 := 'bit16Label'.
            recoveredPC := 2440.
        ].
        recoveredStep = 2440 ifTrue: [
            recoveredStack2 := [:recoveredBlock2440Arg1 | 
    | recoveredBlock2440Value0 recoveredBlock2440Value1 recoveredBlock2440Value2 recoveredBlock2440Value3 recoveredBlock2440Value4 recoveredBlock2440Value5 recoveredBlock2440Value6 recoveredBlock2440Value7 recoveredBlock2440Value8 recoveredBlock2440Value9 recoveredBlock2440Value10 recoveredBlock2440Value11 recoveredBlock2440Value12 recoveredBlock2440Value13 recoveredBlock2440Value14 recoveredBlock2440Value15 recoveredBlock2440Value16 recoveredBlock2440Value17 recoveredBlock2440Value18 recoveredBlock2440Value19 recoveredBlock2440Value20 |
    recoveredBlock2440Value0 := recoveredBlock2440Arg1.
    recoveredBlock2440Value1 := recoveredBlock2440Value0.
    recoveredBlock2440Value2 := recoveredLocal36.
    recoveredBlock2440Value3 := (210) * (recoveredBlock2440Value2).
    recoveredBlock2440Value4 := (recoveredBlock2440Value3) rounded.
    (recoveredBlock2440Value1) x: (recoveredBlock2440Value4).
    recoveredBlock2440Value5 := recoveredBlock2440Value0.
    (recoveredBlock2440Value5) labelString: ('8').
    recoveredBlock2440Value6 := recoveredBlock2440Value0.
    recoveredBlock2440Value7 := recoveredLocal35.
    recoveredBlock2440Value8 := (18) * (recoveredBlock2440Value7).
    recoveredBlock2440Value9 := (recoveredBlock2440Value8) rounded.
    (recoveredBlock2440Value6) y: (recoveredBlock2440Value9).
    recoveredBlock2440Value10 := recoveredBlock2440Value0.
    (recoveredBlock2440Value10) marginHeight: (0).
    recoveredBlock2440Value11 := recoveredBlock2440Value0.
    (recoveredBlock2440Value11) marginWidth: (0).
    recoveredBlock2440Value12 := recoveredBlock2440Value0.
    recoveredBlock2440Value13 := recoveredLocal35.
    recoveredBlock2440Value14 := (11) * (recoveredBlock2440Value13).
    recoveredBlock2440Value15 := (recoveredBlock2440Value14) rounded.
    (recoveredBlock2440Value12) height: (recoveredBlock2440Value15).
    recoveredBlock2440Value16 := recoveredBlock2440Value0.
    recoveredBlock2440Value17 := recoveredLocal36.
    recoveredBlock2440Value18 := (12) * (recoveredBlock2440Value17).
    recoveredBlock2440Value19 := (recoveredBlock2440Value18) rounded.
    (recoveredBlock2440Value16) width: (recoveredBlock2440Value19).
    recoveredBlock2440Value20 := (recoveredBlock2440Value0) recomputeSize: (false).
    recoveredBlock2440Value20
].
            recoveredPC := 2514.
        ].
        recoveredStep = 2514 ifTrue: [
            recoveredStack0 := (recoveredStack0) createLabel: (recoveredStack1) argBlock: (recoveredStack2).
            recoveredPC := 2516.
        ].
        recoveredStep = 2516 ifTrue: [
            recoveredStack0 := (recoveredStack0) manageChild.
            recoveredPC := 2518.
        ].
        recoveredStep = 2518 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 2521.
        ].
        recoveredStep = 2521 ifTrue: [
            recoveredStack0 := recoveredLocal34.
            recoveredPC := 2524.
        ].
        recoveredStep = 2524 ifTrue: [
            recoveredStack1 := 'bit16Label'.
            recoveredPC := 2528.
        ].
        recoveredStep = 2528 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 2531.
        ].
        recoveredStep = 2531 ifTrue: [
            (recoveredStack0) at: (recoveredStack1) put: (recoveredStack2).
            recoveredPC := 2533.
        ].
        recoveredStep = 2533 ifTrue: [
            recoveredStack0 := recoveredLocal37.
            recoveredPC := 2536.
        ].
        recoveredStep = 2536 ifTrue: [
            recoveredStack1 := 'bit4Toggle'.
            recoveredPC := 2540.
        ].
        recoveredStep = 2540 ifTrue: [
            recoveredStack2 := [:recoveredBlock2540Arg1 | 
    | recoveredBlock2540Value0 recoveredBlock2540Value1 recoveredBlock2540Value2 recoveredBlock2540Value3 recoveredBlock2540Value4 recoveredBlock2540Value5 recoveredBlock2540Value6 recoveredBlock2540Value7 recoveredBlock2540Value8 recoveredBlock2540Value9 recoveredBlock2540Value10 recoveredBlock2540Value11 recoveredBlock2540Value12 recoveredBlock2540Value13 recoveredBlock2540Value14 recoveredBlock2540Value15 recoveredBlock2540Value16 recoveredBlock2540Value17 recoveredBlock2540Value18 |
    recoveredBlock2540Value0 := recoveredBlock2540Arg1.
    recoveredBlock2540Value1 := recoveredBlock2540Value0.
    (recoveredBlock2540Value1) sensitive: (false).
    recoveredBlock2540Value2 := recoveredBlock2540Value0.
    recoveredBlock2540Value3 := recoveredLocal35.
    recoveredBlock2540Value4 := (5) * (recoveredBlock2540Value3).
    recoveredBlock2540Value5 := (recoveredBlock2540Value4) rounded.
    (recoveredBlock2540Value2) y: (recoveredBlock2540Value5).
    recoveredBlock2540Value6 := recoveredBlock2540Value0.
    (recoveredBlock2540Value6) recomputeSize: (false).
    recoveredBlock2540Value7 := recoveredBlock2540Value0.
    recoveredBlock2540Value8 := recoveredLocal36.
    recoveredBlock2540Value9 := (395) * (recoveredBlock2540Value8).
    recoveredBlock2540Value10 := (recoveredBlock2540Value9) rounded.
    (recoveredBlock2540Value7) x: (recoveredBlock2540Value10).
    recoveredBlock2540Value11 := recoveredBlock2540Value0.
    recoveredBlock2540Value12 := recoveredLocal35.
    recoveredBlock2540Value13 := (13) * (recoveredBlock2540Value12).
    recoveredBlock2540Value14 := (recoveredBlock2540Value13) rounded.
    (recoveredBlock2540Value11) height: (recoveredBlock2540Value14).
    recoveredBlock2540Value15 := recoveredLocal36.
    recoveredBlock2540Value16 := (13) * (recoveredBlock2540Value15).
    recoveredBlock2540Value17 := (recoveredBlock2540Value16) rounded.
    recoveredBlock2540Value18 := (recoveredBlock2540Value0) width: (recoveredBlock2540Value17).
    recoveredBlock2540Value18
].
            recoveredPC := 2600.
        ].
        recoveredStep = 2600 ifTrue: [
            recoveredStack0 := (recoveredStack0) createToggleButton: (recoveredStack1) argBlock: (recoveredStack2).
            recoveredPC := 2602.
        ].
        recoveredStep = 2602 ifTrue: [
            recoveredStack0 := (recoveredStack0) manageChild.
            recoveredPC := 2604.
        ].
        recoveredStep = 2604 ifTrue: [
            recoveredLocal26 := recoveredStack0.
            recoveredPC := 2607.
        ].
        recoveredStep = 2607 ifTrue: [
            recoveredStack0 := recoveredLocal34.
            recoveredPC := 2610.
        ].
        recoveredStep = 2610 ifTrue: [
            recoveredStack1 := 'bit4Toggle'.
            recoveredPC := 2614.
        ].
        recoveredStep = 2614 ifTrue: [
            recoveredStack2 := recoveredLocal26.
            recoveredPC := 2617.
        ].
        recoveredStep = 2617 ifTrue: [
            (recoveredStack0) at: (recoveredStack1) put: (recoveredStack2).
            recoveredPC := 2619.
        ].
        recoveredStep = 2619 ifTrue: [
            recoveredStack0 := recoveredLocal37.
            recoveredPC := 2622.
        ].
        recoveredStep = 2622 ifTrue: [
            recoveredStack1 := 'bit5Toggle'.
            recoveredPC := 2626.
        ].
        recoveredStep = 2626 ifTrue: [
            recoveredStack2 := [:recoveredBlock2626Arg1 | 
    | recoveredBlock2626Value0 recoveredBlock2626Value1 recoveredBlock2626Value2 recoveredBlock2626Value3 recoveredBlock2626Value4 recoveredBlock2626Value5 recoveredBlock2626Value6 recoveredBlock2626Value7 recoveredBlock2626Value8 recoveredBlock2626Value9 recoveredBlock2626Value10 recoveredBlock2626Value11 recoveredBlock2626Value12 recoveredBlock2626Value13 recoveredBlock2626Value14 recoveredBlock2626Value15 recoveredBlock2626Value16 recoveredBlock2626Value17 recoveredBlock2626Value18 |
    recoveredBlock2626Value0 := recoveredBlock2626Arg1.
    recoveredBlock2626Value1 := recoveredBlock2626Value0.
    (recoveredBlock2626Value1) sensitive: (false).
    recoveredBlock2626Value2 := recoveredBlock2626Value0.
    recoveredBlock2626Value3 := recoveredLocal35.
    recoveredBlock2626Value4 := (5) * (recoveredBlock2626Value3).
    recoveredBlock2626Value5 := (recoveredBlock2626Value4) rounded.
    (recoveredBlock2626Value2) y: (recoveredBlock2626Value5).
    recoveredBlock2626Value6 := recoveredBlock2626Value0.
    (recoveredBlock2626Value6) recomputeSize: (false).
    recoveredBlock2626Value7 := recoveredBlock2626Value0.
    recoveredBlock2626Value8 := recoveredLocal36.
    recoveredBlock2626Value9 := (380) * (recoveredBlock2626Value8).
    recoveredBlock2626Value10 := (recoveredBlock2626Value9) rounded.
    (recoveredBlock2626Value7) x: (recoveredBlock2626Value10).
    recoveredBlock2626Value11 := recoveredBlock2626Value0.
    recoveredBlock2626Value12 := recoveredLocal35.
    recoveredBlock2626Value13 := (13) * (recoveredBlock2626Value12).
    recoveredBlock2626Value14 := (recoveredBlock2626Value13) rounded.
    (recoveredBlock2626Value11) height: (recoveredBlock2626Value14).
    recoveredBlock2626Value15 := recoveredLocal36.
    recoveredBlock2626Value16 := (13) * (recoveredBlock2626Value15).
    recoveredBlock2626Value17 := (recoveredBlock2626Value16) rounded.
    recoveredBlock2626Value18 := (recoveredBlock2626Value0) width: (recoveredBlock2626Value17).
    recoveredBlock2626Value18
].
            recoveredPC := 2686.
        ].
        recoveredStep = 2686 ifTrue: [
            recoveredStack0 := (recoveredStack0) createToggleButton: (recoveredStack1) argBlock: (recoveredStack2).
            recoveredPC := 2688.
        ].
        recoveredStep = 2688 ifTrue: [
            recoveredStack0 := (recoveredStack0) manageChild.
            recoveredPC := 2690.
        ].
        recoveredStep = 2690 ifTrue: [
            recoveredLocal24 := recoveredStack0.
            recoveredPC := 2693.
        ].
        recoveredStep = 2693 ifTrue: [
            recoveredStack0 := recoveredLocal34.
            recoveredPC := 2696.
        ].
        recoveredStep = 2696 ifTrue: [
            recoveredStack1 := 'bit5Toggle'.
            recoveredPC := 2700.
        ].
        recoveredStep = 2700 ifTrue: [
            recoveredStack2 := recoveredLocal24.
            recoveredPC := 2703.
        ].
        recoveredStep = 2703 ifTrue: [
            (recoveredStack0) at: (recoveredStack1) put: (recoveredStack2).
            recoveredPC := 2705.
        ].
        recoveredStep = 2705 ifTrue: [
            recoveredStack0 := recoveredLocal37.
            recoveredPC := 2708.
        ].
        recoveredStep = 2708 ifTrue: [
            recoveredStack1 := 'bit6Toggle'.
            recoveredPC := 2712.
        ].
        recoveredStep = 2712 ifTrue: [
            recoveredStack2 := [:recoveredBlock2712Arg1 | 
    | recoveredBlock2712Value0 recoveredBlock2712Value1 recoveredBlock2712Value2 recoveredBlock2712Value3 recoveredBlock2712Value4 recoveredBlock2712Value5 recoveredBlock2712Value6 recoveredBlock2712Value7 recoveredBlock2712Value8 recoveredBlock2712Value9 recoveredBlock2712Value10 recoveredBlock2712Value11 recoveredBlock2712Value12 recoveredBlock2712Value13 recoveredBlock2712Value14 recoveredBlock2712Value15 recoveredBlock2712Value16 recoveredBlock2712Value17 recoveredBlock2712Value18 |
    recoveredBlock2712Value0 := recoveredBlock2712Arg1.
    recoveredBlock2712Value1 := recoveredBlock2712Value0.
    (recoveredBlock2712Value1) sensitive: (false).
    recoveredBlock2712Value2 := recoveredBlock2712Value0.
    recoveredBlock2712Value3 := recoveredLocal35.
    recoveredBlock2712Value4 := (5) * (recoveredBlock2712Value3).
    recoveredBlock2712Value5 := (recoveredBlock2712Value4) rounded.
    (recoveredBlock2712Value2) y: (recoveredBlock2712Value5).
    recoveredBlock2712Value6 := recoveredBlock2712Value0.
    (recoveredBlock2712Value6) recomputeSize: (false).
    recoveredBlock2712Value7 := recoveredBlock2712Value0.
    recoveredBlock2712Value8 := recoveredLocal36.
    recoveredBlock2712Value9 := (365) * (recoveredBlock2712Value8).
    recoveredBlock2712Value10 := (recoveredBlock2712Value9) rounded.
    (recoveredBlock2712Value7) x: (recoveredBlock2712Value10).
    recoveredBlock2712Value11 := recoveredBlock2712Value0.
    recoveredBlock2712Value12 := recoveredLocal35.
    recoveredBlock2712Value13 := (13) * (recoveredBlock2712Value12).
    recoveredBlock2712Value14 := (recoveredBlock2712Value13) rounded.
    (recoveredBlock2712Value11) height: (recoveredBlock2712Value14).
    recoveredBlock2712Value15 := recoveredLocal36.
    recoveredBlock2712Value16 := (13) * (recoveredBlock2712Value15).
    recoveredBlock2712Value17 := (recoveredBlock2712Value16) rounded.
    recoveredBlock2712Value18 := (recoveredBlock2712Value0) width: (recoveredBlock2712Value17).
    recoveredBlock2712Value18
].
            recoveredPC := 2772.
        ].
        recoveredStep = 2772 ifTrue: [
            recoveredStack0 := (recoveredStack0) createToggleButton: (recoveredStack1) argBlock: (recoveredStack2).
            recoveredPC := 2774.
        ].
        recoveredStep = 2774 ifTrue: [
            recoveredStack0 := (recoveredStack0) manageChild.
            recoveredPC := 2776.
        ].
        recoveredStep = 2776 ifTrue: [
            recoveredLocal22 := recoveredStack0.
            recoveredPC := 2779.
        ].
        recoveredStep = 2779 ifTrue: [
            recoveredStack0 := recoveredLocal34.
            recoveredPC := 2782.
        ].
        recoveredStep = 2782 ifTrue: [
            recoveredStack1 := 'bit6Toggle'.
            recoveredPC := 2786.
        ].
        recoveredStep = 2786 ifTrue: [
            recoveredStack2 := recoveredLocal22.
            recoveredPC := 2789.
        ].
        recoveredStep = 2789 ifTrue: [
            (recoveredStack0) at: (recoveredStack1) put: (recoveredStack2).
            recoveredPC := 2791.
        ].
        recoveredStep = 2791 ifTrue: [
            recoveredStack0 := recoveredLocal37.
            recoveredPC := 2794.
        ].
        recoveredStep = 2794 ifTrue: [
            recoveredStack1 := 'bit7Toggle'.
            recoveredPC := 2798.
        ].
        recoveredStep = 2798 ifTrue: [
            recoveredStack2 := [:recoveredBlock2798Arg1 | 
    | recoveredBlock2798Value0 recoveredBlock2798Value1 recoveredBlock2798Value2 recoveredBlock2798Value3 recoveredBlock2798Value4 recoveredBlock2798Value5 recoveredBlock2798Value6 recoveredBlock2798Value7 recoveredBlock2798Value8 recoveredBlock2798Value9 recoveredBlock2798Value10 recoveredBlock2798Value11 recoveredBlock2798Value12 recoveredBlock2798Value13 recoveredBlock2798Value14 recoveredBlock2798Value15 recoveredBlock2798Value16 recoveredBlock2798Value17 recoveredBlock2798Value18 |
    recoveredBlock2798Value0 := recoveredBlock2798Arg1.
    recoveredBlock2798Value1 := recoveredBlock2798Value0.
    (recoveredBlock2798Value1) sensitive: (false).
    recoveredBlock2798Value2 := recoveredBlock2798Value0.
    recoveredBlock2798Value3 := recoveredLocal35.
    recoveredBlock2798Value4 := (5) * (recoveredBlock2798Value3).
    recoveredBlock2798Value5 := (recoveredBlock2798Value4) rounded.
    (recoveredBlock2798Value2) y: (recoveredBlock2798Value5).
    recoveredBlock2798Value6 := recoveredBlock2798Value0.
    (recoveredBlock2798Value6) recomputeSize: (false).
    recoveredBlock2798Value7 := recoveredBlock2798Value0.
    recoveredBlock2798Value8 := recoveredLocal36.
    recoveredBlock2798Value9 := (350) * (recoveredBlock2798Value8).
    recoveredBlock2798Value10 := (recoveredBlock2798Value9) rounded.
    (recoveredBlock2798Value7) x: (recoveredBlock2798Value10).
    recoveredBlock2798Value11 := recoveredBlock2798Value0.
    recoveredBlock2798Value12 := recoveredLocal35.
    recoveredBlock2798Value13 := (13) * (recoveredBlock2798Value12).
    recoveredBlock2798Value14 := (recoveredBlock2798Value13) rounded.
    (recoveredBlock2798Value11) height: (recoveredBlock2798Value14).
    recoveredBlock2798Value15 := recoveredLocal36.
    recoveredBlock2798Value16 := (13) * (recoveredBlock2798Value15).
    recoveredBlock2798Value17 := (recoveredBlock2798Value16) rounded.
    recoveredBlock2798Value18 := (recoveredBlock2798Value0) width: (recoveredBlock2798Value17).
    recoveredBlock2798Value18
].
            recoveredPC := 2858.
        ].
        recoveredStep = 2858 ifTrue: [
            recoveredStack0 := (recoveredStack0) createToggleButton: (recoveredStack1) argBlock: (recoveredStack2).
            recoveredPC := 2860.
        ].
        recoveredStep = 2860 ifTrue: [
            recoveredStack0 := (recoveredStack0) manageChild.
            recoveredPC := 2862.
        ].
        recoveredStep = 2862 ifTrue: [
            recoveredLocal20 := recoveredStack0.
            recoveredPC := 2865.
        ].
        recoveredStep = 2865 ifTrue: [
            recoveredStack0 := recoveredLocal34.
            recoveredPC := 2868.
        ].
        recoveredStep = 2868 ifTrue: [
            recoveredStack1 := 'bit7Toggle'.
            recoveredPC := 2872.
        ].
        recoveredStep = 2872 ifTrue: [
            recoveredStack2 := recoveredLocal20.
            recoveredPC := 2875.
        ].
        recoveredStep = 2875 ifTrue: [
            (recoveredStack0) at: (recoveredStack1) put: (recoveredStack2).
            recoveredPC := 2877.
        ].
        recoveredStep = 2877 ifTrue: [
            recoveredStack0 := recoveredLocal37.
            recoveredPC := 2880.
        ].
        recoveredStep = 2880 ifTrue: [
            recoveredStack1 := 'bit8Toggle'.
            recoveredPC := 2884.
        ].
        recoveredStep = 2884 ifTrue: [
            recoveredStack2 := [:recoveredBlock2884Arg1 | 
    | recoveredBlock2884Value0 recoveredBlock2884Value1 recoveredBlock2884Value2 recoveredBlock2884Value3 recoveredBlock2884Value4 recoveredBlock2884Value5 recoveredBlock2884Value6 recoveredBlock2884Value7 recoveredBlock2884Value8 recoveredBlock2884Value9 recoveredBlock2884Value10 recoveredBlock2884Value11 recoveredBlock2884Value12 recoveredBlock2884Value13 recoveredBlock2884Value14 recoveredBlock2884Value15 recoveredBlock2884Value16 recoveredBlock2884Value17 recoveredBlock2884Value18 |
    recoveredBlock2884Value0 := recoveredBlock2884Arg1.
    recoveredBlock2884Value1 := recoveredBlock2884Value0.
    (recoveredBlock2884Value1) sensitive: (false).
    recoveredBlock2884Value2 := recoveredBlock2884Value0.
    recoveredBlock2884Value3 := recoveredLocal35.
    recoveredBlock2884Value4 := (5) * (recoveredBlock2884Value3).
    recoveredBlock2884Value5 := (recoveredBlock2884Value4) rounded.
    (recoveredBlock2884Value2) y: (recoveredBlock2884Value5).
    recoveredBlock2884Value6 := recoveredBlock2884Value0.
    (recoveredBlock2884Value6) recomputeSize: (false).
    recoveredBlock2884Value7 := recoveredBlock2884Value0.
    recoveredBlock2884Value8 := recoveredLocal36.
    recoveredBlock2884Value9 := (335) * (recoveredBlock2884Value8).
    recoveredBlock2884Value10 := (recoveredBlock2884Value9) rounded.
    (recoveredBlock2884Value7) x: (recoveredBlock2884Value10).
    recoveredBlock2884Value11 := recoveredBlock2884Value0.
    recoveredBlock2884Value12 := recoveredLocal35.
    recoveredBlock2884Value13 := (13) * (recoveredBlock2884Value12).
    recoveredBlock2884Value14 := (recoveredBlock2884Value13) rounded.
    (recoveredBlock2884Value11) height: (recoveredBlock2884Value14).
    recoveredBlock2884Value15 := recoveredLocal36.
    recoveredBlock2884Value16 := (13) * (recoveredBlock2884Value15).
    recoveredBlock2884Value17 := (recoveredBlock2884Value16) rounded.
    recoveredBlock2884Value18 := (recoveredBlock2884Value0) width: (recoveredBlock2884Value17).
    recoveredBlock2884Value18
].
            recoveredPC := 2944.
        ].
        recoveredStep = 2944 ifTrue: [
            recoveredStack0 := (recoveredStack0) createToggleButton: (recoveredStack1) argBlock: (recoveredStack2).
            recoveredPC := 2946.
        ].
        recoveredStep = 2946 ifTrue: [
            recoveredStack0 := (recoveredStack0) manageChild.
            recoveredPC := 2948.
        ].
        recoveredStep = 2948 ifTrue: [
            recoveredLocal18 := recoveredStack0.
            recoveredPC := 2951.
        ].
        recoveredStep = 2951 ifTrue: [
            recoveredStack0 := recoveredLocal34.
            recoveredPC := 2954.
        ].
        recoveredStep = 2954 ifTrue: [
            recoveredStack1 := 'bit8Toggle'.
            recoveredPC := 2958.
        ].
        recoveredStep = 2958 ifTrue: [
            recoveredStack2 := recoveredLocal18.
            recoveredPC := 2961.
        ].
        recoveredStep = 2961 ifTrue: [
            (recoveredStack0) at: (recoveredStack1) put: (recoveredStack2).
            recoveredPC := 2963.
        ].
        recoveredStep = 2963 ifTrue: [
            recoveredStack0 := recoveredLocal28.
            recoveredPC := 2966.
        ].
        recoveredStep = 2966 ifTrue: [
            recoveredStack1 := [:recoveredBlock2966Arg1 | 
    | recoveredBlock2966Value0 recoveredBlock2966Value1 recoveredBlock2966Value2 recoveredBlock2966Value3 recoveredBlock2966Value4 |
    recoveredBlock2966Value0 := recoveredBlock2966Arg1.
    recoveredBlock2966Value1 := recoveredBlock2966Value0.
    recoveredBlock2966Value2 := XmATTACHWIDGET.
    (recoveredBlock2966Value1) rightAttachment: (recoveredBlock2966Value2).
    recoveredBlock2966Value3 := recoveredLocal30.
    recoveredBlock2966Value4 := (recoveredBlock2966Value0) rightWidget: (recoveredBlock2966Value3).
    recoveredBlock2966Value4
].
            recoveredPC := 2992.
        ].
        recoveredStep = 2992 ifTrue: [
            (recoveredStack0) setValuesBlock: (recoveredStack1).
            recoveredPC := 2997.
        ].
        recoveredStep = 2997 ifTrue: [
            recoveredStack0 := recoveredLocal30.
            recoveredPC := 3000.
        ].
        recoveredStep = 3000 ifTrue: [
            recoveredStack1 := [:recoveredBlock3000Arg1 | 
    | recoveredBlock3000Value0 recoveredBlock3000Value1 recoveredBlock3000Value2 recoveredBlock3000Value3 recoveredBlock3000Value4 recoveredBlock3000Value5 |
    recoveredBlock3000Value0 := recoveredBlock3000Arg1.
    recoveredBlock3000Value1 := recoveredBlock3000Value0.
    recoveredBlock3000Value2 := XmATTACHWIDGET.
    (recoveredBlock3000Value1) rightAttachment: (recoveredBlock3000Value2).
    recoveredBlock3000Value3 := recoveredBlock3000Value0.
    recoveredBlock3000Value4 := recoveredLocal33.
    (recoveredBlock3000Value3) rightWidget: (recoveredBlock3000Value4).
    recoveredBlock3000Value5 := (recoveredBlock3000Value0) rightOffset: (0).
    recoveredBlock3000Value5
].
            recoveredPC := 3032.
        ].
        recoveredStep = 3032 ifTrue: [
            (recoveredStack0) setValuesBlock: (recoveredStack1).
            recoveredPC := 3037.
        ].
        recoveredStep = 3037 ifTrue: [
            recoveredStack0 := recoveredLocal33.
            recoveredPC := 3040.
        ].
        recoveredStep = 3040 ifTrue: [
            recoveredStack1 := [:block281338f4Arg1 | 
    | block281338f4Value0 block281338f4Value1 block281338f4Value2 block281338f4Value3 |
    block281338f4Value0 := block281338f4Arg1.
    block281338f4Value1 := block281338f4Value0.
    block281338f4Value2 := XmATTACHFORM.
    (block281338f4Value1) rightAttachment: (block281338f4Value2).
    block281338f4Value3 := (block281338f4Value0) rightOffset: (3).
    block281338f4Value3
].
            recoveredPC := 3044.
        ].
        recoveredStep = 3044 ifTrue: [
            recoveredPC := 3066.
        ].
        recoveredStep = 3066 ifTrue: [
            (recoveredStack0) setValuesBlock: (recoveredStack1).
            recoveredPC := 3071.
        ].
        recoveredStep = 3071 ifTrue: [
            recoveredStack0 := recoveredLocal32.
            recoveredPC := 3074.
        ].
        recoveredStep = 3074 ifTrue: [
            recoveredStack1 := [:block28133918Arg1 | 
    | block28133918Value0 block28133918Value1 block28133918Value2 block28133918Value3 |
    block28133918Value0 := block28133918Arg1.
    block28133918Value1 := block28133918Value0.
    block28133918Value2 := XmATTACHFORM.
    (block28133918Value1) rightAttachment: (block28133918Value2).
    block28133918Value3 := (block28133918Value0) rightOffset: (0).
    block28133918Value3
].
            recoveredPC := 3078.
        ].
        recoveredStep = 3078 ifTrue: [
            recoveredPC := 3100.
        ].
        recoveredStep = 3100 ifTrue: [
            (recoveredStack0) setValuesBlock: (recoveredStack1).
            recoveredPC := 3105.
        ].
        recoveredStep = 3105 ifTrue: [
            recoveredStack0 := recoveredLocal27.
            recoveredPC := 3108.
        ].
        recoveredStep = 3108 ifTrue: [
            recoveredStack1 := [:recoveredBlock3108Arg1 | 
    | recoveredBlock3108Value0 recoveredBlock3108Value1 recoveredBlock3108Value2 recoveredBlock3108Value3 recoveredBlock3108Value4 |
    recoveredBlock3108Value0 := recoveredBlock3108Arg1.
    recoveredBlock3108Value1 := recoveredBlock3108Value0.
    recoveredBlock3108Value2 := XmATTACHWIDGET.
    (recoveredBlock3108Value1) rightAttachment: (recoveredBlock3108Value2).
    recoveredBlock3108Value3 := recoveredLocal29.
    recoveredBlock3108Value4 := (recoveredBlock3108Value0) rightWidget: (recoveredBlock3108Value3).
    recoveredBlock3108Value4
].
            recoveredPC := 3134.
        ].
        recoveredStep = 3134 ifTrue: [
            (recoveredStack0) setValuesBlock: (recoveredStack1).
            recoveredPC := 3139.
        ].
        recoveredStep = 3139 ifTrue: [
            recoveredStack0 := recoveredLocal29.
            recoveredPC := 3142.
        ].
        recoveredStep = 3142 ifTrue: [
            recoveredStack1 := [:recoveredBlock3142Arg1 | 
    | recoveredBlock3142Value0 recoveredBlock3142Value1 recoveredBlock3142Value2 recoveredBlock3142Value3 recoveredBlock3142Value4 |
    recoveredBlock3142Value0 := recoveredBlock3142Arg1.
    recoveredBlock3142Value1 := recoveredBlock3142Value0.
    recoveredBlock3142Value2 := XmATTACHWIDGET.
    (recoveredBlock3142Value1) rightAttachment: (recoveredBlock3142Value2).
    recoveredBlock3142Value3 := recoveredLocal32.
    recoveredBlock3142Value4 := (recoveredBlock3142Value0) rightWidget: (recoveredBlock3142Value3).
    recoveredBlock3142Value4
].
            recoveredPC := 3168.
        ].
        recoveredStep = 3168 ifTrue: [
            (recoveredStack0) setValuesBlock: (recoveredStack1).
            recoveredPC := 3173.
        ].
        recoveredStep = 3173 ifTrue: [
            recoveredStack0 := recoveredLocal25.
            recoveredPC := 3176.
        ].
        recoveredStep = 3176 ifTrue: [
            recoveredStack1 := [:recoveredBlock3176Arg1 | 
    | recoveredBlock3176Value0 recoveredBlock3176Value1 recoveredBlock3176Value2 recoveredBlock3176Value3 recoveredBlock3176Value4 |
    recoveredBlock3176Value0 := recoveredBlock3176Arg1.
    recoveredBlock3176Value1 := recoveredBlock3176Value0.
    recoveredBlock3176Value2 := XmATTACHWIDGET.
    (recoveredBlock3176Value1) rightAttachment: (recoveredBlock3176Value2).
    recoveredBlock3176Value3 := recoveredLocal27.
    recoveredBlock3176Value4 := (recoveredBlock3176Value0) rightWidget: (recoveredBlock3176Value3).
    recoveredBlock3176Value4
].
            recoveredPC := 3202.
        ].
        recoveredStep = 3202 ifTrue: [
            (recoveredStack0) setValuesBlock: (recoveredStack1).
            recoveredPC := 3207.
        ].
        recoveredStep = 3207 ifTrue: [
            recoveredStack0 := recoveredLocal23.
            recoveredPC := 3210.
        ].
        recoveredStep = 3210 ifTrue: [
            recoveredStack1 := [:recoveredBlock3210Arg1 | 
    | recoveredBlock3210Value0 recoveredBlock3210Value1 recoveredBlock3210Value2 recoveredBlock3210Value3 recoveredBlock3210Value4 |
    recoveredBlock3210Value0 := recoveredBlock3210Arg1.
    recoveredBlock3210Value1 := recoveredBlock3210Value0.
    recoveredBlock3210Value2 := XmATTACHWIDGET.
    (recoveredBlock3210Value1) rightAttachment: (recoveredBlock3210Value2).
    recoveredBlock3210Value3 := recoveredLocal25.
    recoveredBlock3210Value4 := (recoveredBlock3210Value0) rightWidget: (recoveredBlock3210Value3).
    recoveredBlock3210Value4
].
            recoveredPC := 3236.
        ].
        recoveredStep = 3236 ifTrue: [
            (recoveredStack0) setValuesBlock: (recoveredStack1).
            recoveredPC := 3241.
        ].
        recoveredStep = 3241 ifTrue: [
            recoveredStack0 := recoveredLocal21.
            recoveredPC := 3244.
        ].
        recoveredStep = 3244 ifTrue: [
            recoveredStack1 := [:recoveredBlock3244Arg1 | 
    | recoveredBlock3244Value0 recoveredBlock3244Value1 recoveredBlock3244Value2 recoveredBlock3244Value3 recoveredBlock3244Value4 |
    recoveredBlock3244Value0 := recoveredBlock3244Arg1.
    recoveredBlock3244Value1 := recoveredBlock3244Value0.
    recoveredBlock3244Value2 := XmATTACHWIDGET.
    (recoveredBlock3244Value1) rightAttachment: (recoveredBlock3244Value2).
    recoveredBlock3244Value3 := recoveredLocal23.
    recoveredBlock3244Value4 := (recoveredBlock3244Value0) rightWidget: (recoveredBlock3244Value3).
    recoveredBlock3244Value4
].
            recoveredPC := 3270.
        ].
        recoveredStep = 3270 ifTrue: [
            (recoveredStack0) setValuesBlock: (recoveredStack1).
            recoveredPC := 3275.
        ].
        recoveredStep = 3275 ifTrue: [
            recoveredStack0 := recoveredLocal19.
            recoveredPC := 3278.
        ].
        recoveredStep = 3278 ifTrue: [
            recoveredStack1 := [:recoveredBlock3278Arg1 | 
    | recoveredBlock3278Value0 recoveredBlock3278Value1 recoveredBlock3278Value2 recoveredBlock3278Value3 recoveredBlock3278Value4 |
    recoveredBlock3278Value0 := recoveredBlock3278Arg1.
    recoveredBlock3278Value1 := recoveredBlock3278Value0.
    recoveredBlock3278Value2 := XmATTACHWIDGET.
    (recoveredBlock3278Value1) rightAttachment: (recoveredBlock3278Value2).
    recoveredBlock3278Value3 := recoveredLocal21.
    recoveredBlock3278Value4 := (recoveredBlock3278Value0) rightWidget: (recoveredBlock3278Value3).
    recoveredBlock3278Value4
].
            recoveredPC := 3304.
        ].
        recoveredStep = 3304 ifTrue: [
            (recoveredStack0) setValuesBlock: (recoveredStack1).
            recoveredPC := 3309.
        ].
        recoveredStep = 3309 ifTrue: [
            recoveredStack0 := recoveredLocal17.
            recoveredPC := 3312.
        ].
        recoveredStep = 3312 ifTrue: [
            recoveredStack1 := [:recoveredBlock3312Arg1 | 
    | recoveredBlock3312Value0 recoveredBlock3312Value1 recoveredBlock3312Value2 recoveredBlock3312Value3 recoveredBlock3312Value4 |
    recoveredBlock3312Value0 := recoveredBlock3312Arg1.
    recoveredBlock3312Value1 := recoveredBlock3312Value0.
    recoveredBlock3312Value2 := XmATTACHWIDGET.
    (recoveredBlock3312Value1) rightAttachment: (recoveredBlock3312Value2).
    recoveredBlock3312Value3 := recoveredLocal19.
    recoveredBlock3312Value4 := (recoveredBlock3312Value0) rightWidget: (recoveredBlock3312Value3).
    recoveredBlock3312Value4
].
            recoveredPC := 3338.
        ].
        recoveredStep = 3338 ifTrue: [
            (recoveredStack0) setValuesBlock: (recoveredStack1).
            recoveredPC := 3343.
        ].
        recoveredStep = 3343 ifTrue: [
            recoveredStack0 := recoveredLocal15.
            recoveredPC := 3346.
        ].
        recoveredStep = 3346 ifTrue: [
            recoveredStack1 := [:recoveredBlock3346Arg1 | 
    | recoveredBlock3346Value0 recoveredBlock3346Value1 recoveredBlock3346Value2 recoveredBlock3346Value3 recoveredBlock3346Value4 recoveredBlock3346Value5 |
    recoveredBlock3346Value0 := recoveredBlock3346Arg1.
    recoveredBlock3346Value1 := recoveredBlock3346Value0.
    recoveredBlock3346Value2 := XmATTACHWIDGET.
    (recoveredBlock3346Value1) rightAttachment: (recoveredBlock3346Value2).
    recoveredBlock3346Value3 := recoveredBlock3346Value0.
    recoveredBlock3346Value4 := recoveredLocal17.
    (recoveredBlock3346Value3) rightWidget: (recoveredBlock3346Value4).
    recoveredBlock3346Value5 := (recoveredBlock3346Value0) rightOffset: (4).
    recoveredBlock3346Value5
].
            recoveredPC := 3378.
        ].
        recoveredStep = 3378 ifTrue: [
            (recoveredStack0) setValuesBlock: (recoveredStack1).
            recoveredPC := 3383.
        ].
        recoveredStep = 3383 ifTrue: [
            recoveredStack0 := recoveredLocal13.
            recoveredPC := 3386.
        ].
        recoveredStep = 3386 ifTrue: [
            recoveredStack1 := [:recoveredBlock3386Arg1 | 
    | recoveredBlock3386Value0 recoveredBlock3386Value1 recoveredBlock3386Value2 recoveredBlock3386Value3 recoveredBlock3386Value4 recoveredBlock3386Value5 |
    recoveredBlock3386Value0 := recoveredBlock3386Arg1.
    recoveredBlock3386Value1 := recoveredBlock3386Value0.
    recoveredBlock3386Value2 := XmATTACHWIDGET.
    (recoveredBlock3386Value1) rightAttachment: (recoveredBlock3386Value2).
    recoveredBlock3386Value3 := recoveredBlock3386Value0.
    recoveredBlock3386Value4 := recoveredLocal15.
    (recoveredBlock3386Value3) rightWidget: (recoveredBlock3386Value4).
    recoveredBlock3386Value5 := (recoveredBlock3386Value0) rightOffset: (1).
    recoveredBlock3386Value5
].
            recoveredPC := 3418.
        ].
        recoveredStep = 3418 ifTrue: [
            (recoveredStack0) setValuesBlock: (recoveredStack1).
            recoveredPC := 3423.
        ].
        recoveredStep = 3423 ifTrue: [
            recoveredStack0 := recoveredLocal11.
            recoveredPC := 3426.
        ].
        recoveredStep = 3426 ifTrue: [
            recoveredStack1 := [:recoveredBlock3426Arg1 | 
    | recoveredBlock3426Value0 recoveredBlock3426Value1 recoveredBlock3426Value2 recoveredBlock3426Value3 recoveredBlock3426Value4 recoveredBlock3426Value5 |
    recoveredBlock3426Value0 := recoveredBlock3426Arg1.
    recoveredBlock3426Value1 := recoveredBlock3426Value0.
    recoveredBlock3426Value2 := XmATTACHWIDGET.
    (recoveredBlock3426Value1) rightAttachment: (recoveredBlock3426Value2).
    recoveredBlock3426Value3 := recoveredBlock3426Value0.
    recoveredBlock3426Value4 := recoveredLocal13.
    (recoveredBlock3426Value3) rightWidget: (recoveredBlock3426Value4).
    recoveredBlock3426Value5 := (recoveredBlock3426Value0) rightOffset: (1).
    recoveredBlock3426Value5
].
            recoveredPC := 3458.
        ].
        recoveredStep = 3458 ifTrue: [
            (recoveredStack0) setValuesBlock: (recoveredStack1).
            recoveredPC := 3463.
        ].
        recoveredStep = 3463 ifTrue: [
            recoveredStack0 := recoveredLocal9.
            recoveredPC := 3466.
        ].
        recoveredStep = 3466 ifTrue: [
            recoveredStack1 := [:recoveredBlock3466Arg1 | 
    | recoveredBlock3466Value0 recoveredBlock3466Value1 recoveredBlock3466Value2 recoveredBlock3466Value3 recoveredBlock3466Value4 recoveredBlock3466Value5 |
    recoveredBlock3466Value0 := recoveredBlock3466Arg1.
    recoveredBlock3466Value1 := recoveredBlock3466Value0.
    recoveredBlock3466Value2 := XmATTACHWIDGET.
    (recoveredBlock3466Value1) rightAttachment: (recoveredBlock3466Value2).
    recoveredBlock3466Value3 := recoveredBlock3466Value0.
    recoveredBlock3466Value4 := recoveredLocal11.
    (recoveredBlock3466Value3) rightWidget: (recoveredBlock3466Value4).
    recoveredBlock3466Value5 := (recoveredBlock3466Value0) rightOffset: (1).
    recoveredBlock3466Value5
].
            recoveredPC := 3498.
        ].
        recoveredStep = 3498 ifTrue: [
            (recoveredStack0) setValuesBlock: (recoveredStack1).
            recoveredPC := 3503.
        ].
        recoveredStep = 3503 ifTrue: [
            recoveredStack0 := recoveredLocal7.
            recoveredPC := 3506.
        ].
        recoveredStep = 3506 ifTrue: [
            recoveredStack1 := [:recoveredBlock3506Arg1 | 
    | recoveredBlock3506Value0 recoveredBlock3506Value1 recoveredBlock3506Value2 recoveredBlock3506Value3 recoveredBlock3506Value4 recoveredBlock3506Value5 |
    recoveredBlock3506Value0 := recoveredBlock3506Arg1.
    recoveredBlock3506Value1 := recoveredBlock3506Value0.
    recoveredBlock3506Value2 := XmATTACHWIDGET.
    (recoveredBlock3506Value1) rightAttachment: (recoveredBlock3506Value2).
    recoveredBlock3506Value3 := recoveredBlock3506Value0.
    recoveredBlock3506Value4 := recoveredLocal9.
    (recoveredBlock3506Value3) rightWidget: (recoveredBlock3506Value4).
    recoveredBlock3506Value5 := (recoveredBlock3506Value0) rightOffset: (1).
    recoveredBlock3506Value5
].
            recoveredPC := 3538.
        ].
        recoveredStep = 3538 ifTrue: [
            (recoveredStack0) setValuesBlock: (recoveredStack1).
            recoveredPC := 3543.
        ].
        recoveredStep = 3543 ifTrue: [
            recoveredStack0 := recoveredLocal5.
            recoveredPC := 3546.
        ].
        recoveredStep = 3546 ifTrue: [
            recoveredStack1 := [:recoveredBlock3546Arg1 | 
    | recoveredBlock3546Value0 recoveredBlock3546Value1 recoveredBlock3546Value2 recoveredBlock3546Value3 recoveredBlock3546Value4 recoveredBlock3546Value5 |
    recoveredBlock3546Value0 := recoveredBlock3546Arg1.
    recoveredBlock3546Value1 := recoveredBlock3546Value0.
    recoveredBlock3546Value2 := XmATTACHWIDGET.
    (recoveredBlock3546Value1) rightAttachment: (recoveredBlock3546Value2).
    recoveredBlock3546Value3 := recoveredBlock3546Value0.
    recoveredBlock3546Value4 := recoveredLocal7.
    (recoveredBlock3546Value3) rightWidget: (recoveredBlock3546Value4).
    recoveredBlock3546Value5 := (recoveredBlock3546Value0) rightOffset: (1).
    recoveredBlock3546Value5
].
            recoveredPC := 3578.
        ].
        recoveredStep = 3578 ifTrue: [
            (recoveredStack0) setValuesBlock: (recoveredStack1).
            recoveredPC := 3583.
        ].
        recoveredStep = 3583 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 3586.
        ].
        recoveredStep = 3586 ifTrue: [
            recoveredStack1 := [:recoveredBlock3586Arg1 | 
    | recoveredBlock3586Value0 recoveredBlock3586Value1 recoveredBlock3586Value2 recoveredBlock3586Value3 recoveredBlock3586Value4 recoveredBlock3586Value5 |
    recoveredBlock3586Value0 := recoveredBlock3586Arg1.
    recoveredBlock3586Value1 := recoveredBlock3586Value0.
    recoveredBlock3586Value2 := XmATTACHWIDGET.
    (recoveredBlock3586Value1) rightAttachment: (recoveredBlock3586Value2).
    recoveredBlock3586Value3 := recoveredBlock3586Value0.
    recoveredBlock3586Value4 := recoveredLocal5.
    (recoveredBlock3586Value3) rightWidget: (recoveredBlock3586Value4).
    recoveredBlock3586Value5 := (recoveredBlock3586Value0) rightOffset: (1).
    recoveredBlock3586Value5
].
            recoveredPC := 3618.
        ].
        recoveredStep = 3618 ifTrue: [
            (recoveredStack0) setValuesBlock: (recoveredStack1).
            recoveredPC := 3623.
        ].
        recoveredStep = 3623 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 3626.
        ].
        recoveredStep = 3626 ifTrue: [
            recoveredStack1 := [:recoveredBlock3626Arg1 | 
    | recoveredBlock3626Value0 recoveredBlock3626Value1 recoveredBlock3626Value2 recoveredBlock3626Value3 recoveredBlock3626Value4 recoveredBlock3626Value5 |
    recoveredBlock3626Value0 := recoveredBlock3626Arg1.
    recoveredBlock3626Value1 := recoveredBlock3626Value0.
    recoveredBlock3626Value2 := XmATTACHWIDGET.
    (recoveredBlock3626Value1) rightAttachment: (recoveredBlock3626Value2).
    recoveredBlock3626Value3 := recoveredBlock3626Value0.
    recoveredBlock3626Value4 := recoveredLocal3.
    (recoveredBlock3626Value3) rightWidget: (recoveredBlock3626Value4).
    recoveredBlock3626Value5 := (recoveredBlock3626Value0) rightOffset: (1).
    recoveredBlock3626Value5
].
            recoveredPC := 3658.
        ].
        recoveredStep = 3658 ifTrue: [
            (recoveredStack0) setValuesBlock: (recoveredStack1).
            recoveredPC := 3663.
        ].
        recoveredStep = 3663 ifTrue: [
            recoveredStack0 := recoveredLocal31.
            recoveredPC := 3666.
        ].
        recoveredStep = 3666 ifTrue: [
            recoveredStack1 := [:recoveredBlock3666Arg1 | 
    | recoveredBlock3666Value0 recoveredBlock3666Value1 recoveredBlock3666Value2 recoveredBlock3666Value3 recoveredBlock3666Value4 recoveredBlock3666Value5 recoveredBlock3666Value6 recoveredBlock3666Value7 recoveredBlock3666Value8 recoveredBlock3666Value9 recoveredBlock3666Value10 recoveredBlock3666Value11 recoveredBlock3666Value12 recoveredBlock3666Value13 recoveredBlock3666Value14 |
    recoveredBlock3666Value0 := recoveredBlock3666Arg1.
    recoveredBlock3666Value1 := recoveredBlock3666Value0.
    recoveredBlock3666Value2 := XmATTACHFORM.
    (recoveredBlock3666Value1) topAttachment: (recoveredBlock3666Value2).
    recoveredBlock3666Value3 := recoveredBlock3666Value0.
    (recoveredBlock3666Value3) topOffset: (5).
    recoveredBlock3666Value4 := recoveredBlock3666Value0.
    recoveredBlock3666Value5 := XmATTACHFORM.
    (recoveredBlock3666Value4) bottomAttachment: (recoveredBlock3666Value5).
    recoveredBlock3666Value6 := recoveredBlock3666Value0.
    (recoveredBlock3666Value6) bottomOffset: (5).
    recoveredBlock3666Value7 := recoveredBlock3666Value0.
    recoveredBlock3666Value8 := XmATTACHFORM.
    (recoveredBlock3666Value7) leftAttachment: (recoveredBlock3666Value8).
    recoveredBlock3666Value9 := recoveredBlock3666Value0.
    (recoveredBlock3666Value9) leftOffset: (5).
    recoveredBlock3666Value10 := recoveredBlock3666Value0.
    recoveredBlock3666Value11 := XmATTACHWIDGET.
    (recoveredBlock3666Value10) rightAttachment: (recoveredBlock3666Value11).
    recoveredBlock3666Value12 := recoveredBlock3666Value0.
    (recoveredBlock3666Value12) rightOffset: (3).
    recoveredBlock3666Value13 := recoveredLocal2.
    recoveredBlock3666Value14 := (recoveredBlock3666Value0) rightWidget: (recoveredBlock3666Value13).
    recoveredBlock3666Value14
].
            recoveredPC := 3740.
        ].
        recoveredStep = 3740 ifTrue: [
            (recoveredStack0) setValuesBlock: (recoveredStack1).
            recoveredPC := 3745.
        ].
        recoveredStep = 3745 ifTrue: [
            recoveredStack0 := recoveredLocal16.
            recoveredPC := 3748.
        ].
        recoveredStep = 3748 ifTrue: [
            recoveredStack1 := [:recoveredBlock3748Arg1 | 
    | recoveredBlock3748Value0 recoveredBlock3748Value1 recoveredBlock3748Value2 recoveredBlock3748Value3 recoveredBlock3748Value4 recoveredBlock3748Value5 |
    recoveredBlock3748Value0 := recoveredBlock3748Arg1.
    recoveredBlock3748Value1 := recoveredBlock3748Value0.
    recoveredBlock3748Value2 := XmATTACHWIDGET.
    (recoveredBlock3748Value1) rightAttachment: (recoveredBlock3748Value2).
    recoveredBlock3748Value3 := recoveredBlock3748Value0.
    recoveredBlock3748Value4 := recoveredLocal18.
    (recoveredBlock3748Value3) rightWidget: (recoveredBlock3748Value4).
    recoveredBlock3748Value5 := (recoveredBlock3748Value0) rightOffset: (2).
    recoveredBlock3748Value5
].
            recoveredPC := 3780.
        ].
        recoveredStep = 3780 ifTrue: [
            (recoveredStack0) setValuesBlock: (recoveredStack1).
            recoveredPC := 3785.
        ].
        recoveredStep = 3785 ifTrue: [
            recoveredStack0 := recoveredLocal14.
            recoveredPC := 3788.
        ].
        recoveredStep = 3788 ifTrue: [
            recoveredStack1 := [:recoveredBlock3788Arg1 | 
    | recoveredBlock3788Value0 recoveredBlock3788Value1 recoveredBlock3788Value2 recoveredBlock3788Value3 recoveredBlock3788Value4 |
    recoveredBlock3788Value0 := recoveredBlock3788Arg1.
    recoveredBlock3788Value1 := recoveredBlock3788Value0.
    recoveredBlock3788Value2 := XmATTACHWIDGET.
    (recoveredBlock3788Value1) rightAttachment: (recoveredBlock3788Value2).
    recoveredBlock3788Value3 := recoveredLocal16.
    recoveredBlock3788Value4 := (recoveredBlock3788Value0) rightWidget: (recoveredBlock3788Value3).
    recoveredBlock3788Value4
].
            recoveredPC := 3814.
        ].
        recoveredStep = 3814 ifTrue: [
            (recoveredStack0) setValuesBlock: (recoveredStack1).
            recoveredPC := 3819.
        ].
        recoveredStep = 3819 ifTrue: [
            recoveredStack0 := recoveredLocal12.
            recoveredPC := 3822.
        ].
        recoveredStep = 3822 ifTrue: [
            recoveredStack1 := [:recoveredBlock3822Arg1 | 
    | recoveredBlock3822Value0 recoveredBlock3822Value1 recoveredBlock3822Value2 recoveredBlock3822Value3 recoveredBlock3822Value4 |
    recoveredBlock3822Value0 := recoveredBlock3822Arg1.
    recoveredBlock3822Value1 := recoveredBlock3822Value0.
    recoveredBlock3822Value2 := XmATTACHWIDGET.
    (recoveredBlock3822Value1) rightAttachment: (recoveredBlock3822Value2).
    recoveredBlock3822Value3 := recoveredLocal14.
    recoveredBlock3822Value4 := (recoveredBlock3822Value0) rightWidget: (recoveredBlock3822Value3).
    recoveredBlock3822Value4
].
            recoveredPC := 3848.
        ].
        recoveredStep = 3848 ifTrue: [
            (recoveredStack0) setValuesBlock: (recoveredStack1).
            recoveredPC := 3853.
        ].
        recoveredStep = 3853 ifTrue: [
            recoveredStack0 := recoveredLocal10.
            recoveredPC := 3856.
        ].
        recoveredStep = 3856 ifTrue: [
            recoveredStack1 := [:recoveredBlock3856Arg1 | 
    | recoveredBlock3856Value0 recoveredBlock3856Value1 recoveredBlock3856Value2 recoveredBlock3856Value3 recoveredBlock3856Value4 |
    recoveredBlock3856Value0 := recoveredBlock3856Arg1.
    recoveredBlock3856Value1 := recoveredBlock3856Value0.
    recoveredBlock3856Value2 := XmATTACHWIDGET.
    (recoveredBlock3856Value1) rightAttachment: (recoveredBlock3856Value2).
    recoveredBlock3856Value3 := recoveredLocal12.
    recoveredBlock3856Value4 := (recoveredBlock3856Value0) rightWidget: (recoveredBlock3856Value3).
    recoveredBlock3856Value4
].
            recoveredPC := 3882.
        ].
        recoveredStep = 3882 ifTrue: [
            (recoveredStack0) setValuesBlock: (recoveredStack1).
            recoveredPC := 3887.
        ].
        recoveredStep = 3887 ifTrue: [
            recoveredStack0 := recoveredLocal8.
            recoveredPC := 3890.
        ].
        recoveredStep = 3890 ifTrue: [
            recoveredStack1 := [:recoveredBlock3890Arg1 | 
    | recoveredBlock3890Value0 recoveredBlock3890Value1 recoveredBlock3890Value2 recoveredBlock3890Value3 recoveredBlock3890Value4 |
    recoveredBlock3890Value0 := recoveredBlock3890Arg1.
    recoveredBlock3890Value1 := recoveredBlock3890Value0.
    recoveredBlock3890Value2 := XmATTACHWIDGET.
    (recoveredBlock3890Value1) rightAttachment: (recoveredBlock3890Value2).
    recoveredBlock3890Value3 := recoveredLocal10.
    recoveredBlock3890Value4 := (recoveredBlock3890Value0) rightWidget: (recoveredBlock3890Value3).
    recoveredBlock3890Value4
].
            recoveredPC := 3916.
        ].
        recoveredStep = 3916 ifTrue: [
            (recoveredStack0) setValuesBlock: (recoveredStack1).
            recoveredPC := 3921.
        ].
        recoveredStep = 3921 ifTrue: [
            recoveredStack0 := recoveredLocal6.
            recoveredPC := 3924.
        ].
        recoveredStep = 3924 ifTrue: [
            recoveredStack1 := [:recoveredBlock3924Arg1 | 
    | recoveredBlock3924Value0 recoveredBlock3924Value1 recoveredBlock3924Value2 recoveredBlock3924Value3 recoveredBlock3924Value4 |
    recoveredBlock3924Value0 := recoveredBlock3924Arg1.
    recoveredBlock3924Value1 := recoveredBlock3924Value0.
    recoveredBlock3924Value2 := XmATTACHWIDGET.
    (recoveredBlock3924Value1) rightAttachment: (recoveredBlock3924Value2).
    recoveredBlock3924Value3 := recoveredLocal8.
    recoveredBlock3924Value4 := (recoveredBlock3924Value0) rightWidget: (recoveredBlock3924Value3).
    recoveredBlock3924Value4
].
            recoveredPC := 3950.
        ].
        recoveredStep = 3950 ifTrue: [
            (recoveredStack0) setValuesBlock: (recoveredStack1).
            recoveredPC := 3955.
        ].
        recoveredStep = 3955 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 3958.
        ].
        recoveredStep = 3958 ifTrue: [
            recoveredStack1 := [:recoveredBlock3958Arg1 | 
    | recoveredBlock3958Value0 recoveredBlock3958Value1 recoveredBlock3958Value2 recoveredBlock3958Value3 recoveredBlock3958Value4 |
    recoveredBlock3958Value0 := recoveredBlock3958Arg1.
    recoveredBlock3958Value1 := recoveredBlock3958Value0.
    recoveredBlock3958Value2 := XmATTACHWIDGET.
    (recoveredBlock3958Value1) rightAttachment: (recoveredBlock3958Value2).
    recoveredBlock3958Value3 := recoveredLocal6.
    recoveredBlock3958Value4 := (recoveredBlock3958Value0) rightWidget: (recoveredBlock3958Value3).
    recoveredBlock3958Value4
].
            recoveredPC := 3984.
        ].
        recoveredStep = 3984 ifTrue: [
            (recoveredStack0) setValuesBlock: (recoveredStack1).
            recoveredPC := 3989.
        ].
        recoveredStep = 3989 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 3992.
        ].
        recoveredStep = 3992 ifTrue: [
            recoveredStack1 := [:recoveredBlock3992Arg1 | 
    | recoveredBlock3992Value0 recoveredBlock3992Value1 recoveredBlock3992Value2 recoveredBlock3992Value3 recoveredBlock3992Value4 |
    recoveredBlock3992Value0 := recoveredBlock3992Arg1.
    recoveredBlock3992Value1 := recoveredBlock3992Value0.
    recoveredBlock3992Value2 := XmATTACHWIDGET.
    (recoveredBlock3992Value1) rightAttachment: (recoveredBlock3992Value2).
    recoveredBlock3992Value3 := recoveredLocal4.
    recoveredBlock3992Value4 := (recoveredBlock3992Value0) rightWidget: (recoveredBlock3992Value3).
    recoveredBlock3992Value4
].
            recoveredPC := 4018.
        ].
        recoveredStep = 4018 ifTrue: [
            (recoveredStack0) setValuesBlock: (recoveredStack1).
            recoveredPC := 4023.
        ].
        recoveredStep = 4023 ifTrue: [
            recoveredStack0 := recoveredLocal26.
            recoveredPC := 4026.
        ].
        recoveredStep = 4026 ifTrue: [
            recoveredStack1 := [:recoveredBlock4026Arg1 | 
    | recoveredBlock4026Value0 recoveredBlock4026Value1 recoveredBlock4026Value2 recoveredBlock4026Value3 recoveredBlock4026Value4 |
    recoveredBlock4026Value0 := recoveredBlock4026Arg1.
    recoveredBlock4026Value1 := recoveredBlock4026Value0.
    recoveredBlock4026Value2 := XmATTACHWIDGET.
    (recoveredBlock4026Value1) rightAttachment: (recoveredBlock4026Value2).
    recoveredBlock4026Value3 := recoveredLocal28.
    recoveredBlock4026Value4 := (recoveredBlock4026Value0) rightWidget: (recoveredBlock4026Value3).
    recoveredBlock4026Value4
].
            recoveredPC := 4052.
        ].
        recoveredStep = 4052 ifTrue: [
            (recoveredStack0) setValuesBlock: (recoveredStack1).
            recoveredPC := 4057.
        ].
        recoveredStep = 4057 ifTrue: [
            recoveredStack0 := recoveredLocal24.
            recoveredPC := 4060.
        ].
        recoveredStep = 4060 ifTrue: [
            recoveredStack1 := [:recoveredBlock4060Arg1 | 
    | recoveredBlock4060Value0 recoveredBlock4060Value1 recoveredBlock4060Value2 recoveredBlock4060Value3 recoveredBlock4060Value4 |
    recoveredBlock4060Value0 := recoveredBlock4060Arg1.
    recoveredBlock4060Value1 := recoveredBlock4060Value0.
    recoveredBlock4060Value2 := XmATTACHWIDGET.
    (recoveredBlock4060Value1) rightAttachment: (recoveredBlock4060Value2).
    recoveredBlock4060Value3 := recoveredLocal26.
    recoveredBlock4060Value4 := (recoveredBlock4060Value0) rightWidget: (recoveredBlock4060Value3).
    recoveredBlock4060Value4
].
            recoveredPC := 4086.
        ].
        recoveredStep = 4086 ifTrue: [
            (recoveredStack0) setValuesBlock: (recoveredStack1).
            recoveredPC := 4091.
        ].
        recoveredStep = 4091 ifTrue: [
            recoveredStack0 := recoveredLocal22.
            recoveredPC := 4094.
        ].
        recoveredStep = 4094 ifTrue: [
            recoveredStack1 := [:recoveredBlock4094Arg1 | 
    | recoveredBlock4094Value0 recoveredBlock4094Value1 recoveredBlock4094Value2 recoveredBlock4094Value3 recoveredBlock4094Value4 |
    recoveredBlock4094Value0 := recoveredBlock4094Arg1.
    recoveredBlock4094Value1 := recoveredBlock4094Value0.
    recoveredBlock4094Value2 := XmATTACHWIDGET.
    (recoveredBlock4094Value1) rightAttachment: (recoveredBlock4094Value2).
    recoveredBlock4094Value3 := recoveredLocal24.
    recoveredBlock4094Value4 := (recoveredBlock4094Value0) rightWidget: (recoveredBlock4094Value3).
    recoveredBlock4094Value4
].
            recoveredPC := 4120.
        ].
        recoveredStep = 4120 ifTrue: [
            (recoveredStack0) setValuesBlock: (recoveredStack1).
            recoveredPC := 4125.
        ].
        recoveredStep = 4125 ifTrue: [
            recoveredStack0 := recoveredLocal20.
            recoveredPC := 4128.
        ].
        recoveredStep = 4128 ifTrue: [
            recoveredStack1 := [:recoveredBlock4128Arg1 | 
    | recoveredBlock4128Value0 recoveredBlock4128Value1 recoveredBlock4128Value2 recoveredBlock4128Value3 recoveredBlock4128Value4 |
    recoveredBlock4128Value0 := recoveredBlock4128Arg1.
    recoveredBlock4128Value1 := recoveredBlock4128Value0.
    recoveredBlock4128Value2 := XmATTACHWIDGET.
    (recoveredBlock4128Value1) rightAttachment: (recoveredBlock4128Value2).
    recoveredBlock4128Value3 := recoveredLocal22.
    recoveredBlock4128Value4 := (recoveredBlock4128Value0) rightWidget: (recoveredBlock4128Value3).
    recoveredBlock4128Value4
].
            recoveredPC := 4154.
        ].
        recoveredStep = 4154 ifTrue: [
            (recoveredStack0) setValuesBlock: (recoveredStack1).
            recoveredPC := 4159.
        ].
        recoveredStep = 4159 ifTrue: [
            recoveredStack0 := recoveredLocal18.
            recoveredPC := 4162.
        ].
        recoveredStep = 4162 ifTrue: [
            recoveredStack1 := [:recoveredBlock4162Arg1 | 
    | recoveredBlock4162Value0 recoveredBlock4162Value1 recoveredBlock4162Value2 recoveredBlock4162Value3 recoveredBlock4162Value4 |
    recoveredBlock4162Value0 := recoveredBlock4162Arg1.
    recoveredBlock4162Value1 := recoveredBlock4162Value0.
    recoveredBlock4162Value2 := XmATTACHWIDGET.
    (recoveredBlock4162Value1) rightAttachment: (recoveredBlock4162Value2).
    recoveredBlock4162Value3 := recoveredLocal20.
    recoveredBlock4162Value4 := (recoveredBlock4162Value0) rightWidget: (recoveredBlock4162Value3).
    recoveredBlock4162Value4
].
            recoveredPC := 4188.
        ].
        recoveredStep = 4188 ifTrue: [
            (recoveredStack0) setValuesBlock: (recoveredStack1).
            recoveredPC := 4193.
        ].
        recoveredStep = 4193 ifTrue: [
            recoveredStack0 := recoveredLocal37.
            recoveredPC := 4196.
        ].
        recoveredStep = 4196 ifTrue: [
            recoveredStack1 := XmNexposeCallback.
            recoveredPC := 4200.
        ].
        recoveredStep = 4200 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 4201.
        ].
        recoveredStep = 4201 ifTrue: [
            recoveredStack3 := 'aForm1Expose:clientData:callData:'.
            recoveredPC := 4204.
        ].
        recoveredStep = 4204 ifTrue: [
            recoveredStack4 := nil.
            recoveredPC := 4205.
        ].
        recoveredStep = 4205 ifTrue: [
            (recoveredStack0) addCallback: (recoveredStack1) receiver: (recoveredStack2) selector: (recoveredStack3) clientData: (recoveredStack4).
            recoveredPC := 4209.
        ].
        recoveredStep = 4209 ifTrue: [
            recoveredStack0 := recoveredLocal37.
            recoveredPC := 4212.
        ].
        recoveredStep = 4212 ifTrue: [
            recoveredStack1 := XmNdestroyCallback.
            recoveredPC := 4216.
        ].
        recoveredStep = 4216 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 4217.
        ].
        recoveredStep = 4217 ifTrue: [
            recoveredStack3 := 'aForm1Destroy:clientData:callData:'.
            recoveredPC := 4220.
        ].
        recoveredStep = 4220 ifTrue: [
            recoveredStack4 := nil.
            recoveredPC := 4221.
        ].
        recoveredStep = 4221 ifTrue: [
            (recoveredStack0) addCallback: (recoveredStack1) receiver: (recoveredStack2) selector: (recoveredStack3) clientData: (recoveredStack4).
            recoveredPC := 4225.
        ].
        recoveredStep = 4225 ifTrue: [
            recoveredStack0 := recoveredLocal33.
            recoveredPC := 4228.
        ].
        recoveredStep = 4228 ifTrue: [
            recoveredStack1 := XmNvalueChangedCallback.
            recoveredPC := 4232.
        ].
        recoveredStep = 4232 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 4233.
        ].
        recoveredStep = 4233 ifTrue: [
            recoveredStack3 := 'toggleButtonValue:clientData:callData:'.
            recoveredPC := 4236.
        ].
        recoveredStep = 4236 ifTrue: [
            recoveredStack4 := nil.
            recoveredPC := 4237.
        ].
        recoveredStep = 4237 ifTrue: [
            (recoveredStack0) addCallback: (recoveredStack1) receiver: (recoveredStack2) selector: (recoveredStack3) clientData: (recoveredStack4).
            recoveredPC := 4241.
        ].
        recoveredStep = 4241 ifTrue: [
            recoveredStack0 := recoveredLocal34.
            recoveredPC := 4244.
        ].
        recoveredStep = 4244 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

