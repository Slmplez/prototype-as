"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20071208; bytecode file offset 0x96db0c"
!RBSimpleCalibrationEditor methodsFor: 'recovered'!
selectedWidgets
    | recoveredValue0 |
    recoveredValue0 := selectedWidgets.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2007187c; bytecode file offset 0x96e578"
!RBSimpleCalibrationEditor methodsFor: 'recovered'!
spacing
    ^0
! !

"ASDBase.ic method 0x200cfc54; bytecode file offset 0x9cc50c"
!RBSimpleCalibrationEditor methodsFor: 'recovered'!
isSelectedSubwidgetNotFirst
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := subWidgets.
    recoveredValue1 := (recoveredValue0) first.
    recoveredValue2 := selectedWidgets.
    recoveredValue3 := (recoveredValue2) first.
    recoveredValue4 := (recoveredValue1) = (recoveredValue3).
    recoveredValue5 := (recoveredValue4) not.
    ^recoveredValue5
! !

"ASDBase.ic method 0x200cfc70; bytecode file offset 0x9cc52c"
!RBSimpleCalibrationEditor methodsFor: 'recovered'!
isSelectedSubwidgetNotLast
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := subWidgets.
    recoveredValue1 := (recoveredValue0) last.
    recoveredValue2 := selectedWidgets.
    recoveredValue3 := (recoveredValue2) first.
    recoveredValue4 := (recoveredValue1) = (recoveredValue3).
    recoveredValue5 := (recoveredValue4) not.
    ^recoveredValue5
! !

"ASDBase.ic method 0x2025cfbc; bytecode file offset 0xb59888"
!RBSimpleCalibrationEditor methodsFor: 'recovered'!
isMenuMoveSubwidgetDownAllowed
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := subWidgets.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) isEmpty.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := subWidgets.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := 1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := (recoveredStack1) <= (recoveredStack2).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 22] ifFalse: [recoveredPC := 24].
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := selectedWidgets.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack2 := 1.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := (recoveredStack1) ~= (recoveredStack2).
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 34] ifFalse: [recoveredPC := 36].
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2025cfcc; bytecode file offset 0xb59888"
!RBSimpleCalibrationEditor methodsFor: 'recovered'!
isMenuMoveSubwidgetUpAllowed
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := subWidgets.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) isEmpty.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := subWidgets.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := 1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := (recoveredStack1) <= (recoveredStack2).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 22] ifFalse: [recoveredPC := 24].
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := selectedWidgets.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack2 := 1.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := (recoveredStack1) ~= (recoveredStack2).
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 34] ifFalse: [recoveredPC := 36].
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x20396a08; bytecode file offset 0xc932fc"
!RBSimpleCalibrationEditor methodsFor: 'recovered'!
determineContentsConfiguration
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 |
    recoveredValue0 := OrderedCollection.
    recoveredValue1 := variables.
    recoveredValue2 := (recoveredValue1) size.
    recoveredValue3 := (recoveredValue0) new: (recoveredValue2).
    recoveredLocal1 := recoveredValue3.
    recoveredValue4 := subWidgets.
    recoveredValue5 := [:recoveredBlock15Arg1 | 
    | recoveredBlock15Local1 recoveredBlock15Value0 recoveredBlock15Value1 recoveredBlock15Value2 recoveredBlock15Value3 recoveredBlock15Value4 recoveredBlock15Value5 recoveredBlock15Value6 recoveredBlock15Value7 recoveredBlock15Value8 recoveredBlock15Value9 recoveredBlock15Value10 recoveredBlock15Value11 recoveredBlock15Value12 |
    recoveredBlock15Value0 := recoveredBlock15Arg1.
    recoveredBlock15Value1 := (recoveredBlock15Value0) data.
    recoveredBlock15Value2 := (self) getConfigurationObjectOfData: (recoveredBlock15Value1).
    recoveredBlock15Local1 := recoveredBlock15Value2.
    recoveredBlock15Value3 := recoveredLocal1.
    recoveredBlock15Value4 := Dictionary.
    recoveredBlock15Value5 := (recoveredBlock15Value4) new.
    recoveredBlock15Value6 := recoveredBlock15Value5.
    recoveredBlock15Value7 := recoveredBlock15Arg1.
    recoveredBlock15Value8 := (recoveredBlock15Value7) data.
    recoveredBlock15Value9 := (recoveredBlock15Value8) wName.
    (recoveredBlock15Value6) at: ('name') put: (recoveredBlock15Value9).
    recoveredBlock15Value10 := recoveredBlock15Value5.
    recoveredBlock15Value11 := recoveredBlock15Local1.
    (recoveredBlock15Value10) at: ('displayConfig') put: (recoveredBlock15Value11).
    recoveredBlock15Value12 := (recoveredBlock15Value3) add: (recoveredBlock15Value5).
    recoveredBlock15Value12
].
    (recoveredValue4) do: (recoveredValue5).
    recoveredValue6 := Dictionary.
    recoveredValue7 := (recoveredValue6) new.
    recoveredValue8 := recoveredValue7.
    recoveredValue9 := (self) getConfigurationObject.
    (recoveredValue8) at: ('viewConfig') put: (recoveredValue9).
    recoveredValue10 := recoveredValue7.
    recoveredValue11 := recoveredLocal1.
    (recoveredValue10) at: ('dataConfigs') put: (recoveredValue11).
    ^recoveredValue7
! !

"ASDBase.ic method 0x203aa1f4; bytecode file offset 0xca6af0"
!RBSimpleCalibrationEditor methodsFor: 'recovered'!
createMoveSubwidgetMenu
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 recoveredValue21 recoveredValue22 |
    recoveredValue0 := CwMenu.
    recoveredValue1 := (recoveredValue0) defaultMenuClass.
    recoveredValue2 := (recoveredValue1) new.
    recoveredLocal1 := recoveredValue2.
    recoveredValue3 := recoveredLocal1.
    recoveredValue4 := recoveredValue3.
    recoveredValue5 := GMVMoveUp.
    recoveredValue6 := [
    | recoveredBlock15Value0 |
    recoveredBlock15Value0 := (self) isMenuMoveSubwidgetUpAllowed.
    recoveredBlock15Value0
].
    (recoveredValue4) add: ('menuMoveSubwidgetUp') label: (recoveredValue5) enable: (recoveredValue6).
    recoveredValue7 := recoveredValue3.
    recoveredValue8 := CwAccelerator.
    recoveredValue9 := ControlMask.
    recoveredValue10 := XKPrior.
    recoveredValue11 := (recoveredValue8) mask: (recoveredValue9) keysym: (recoveredValue10).
    recoveredValue12 := GMVHKMoveUp.
    (recoveredValue7) setAcceleratorAt: ('menuMoveSubwidgetUp') to: (recoveredValue11) text: (recoveredValue12).
    recoveredValue13 := recoveredValue3.
    recoveredValue14 := GMVMoveDown.
    recoveredValue15 := [
    | recoveredBlock47Value0 |
    recoveredBlock47Value0 := (self) isMenuMoveSubwidgetDownAllowed.
    recoveredBlock47Value0
].
    (recoveredValue13) add: ('menuMoveSubwidgetDown') label: (recoveredValue14) enable: (recoveredValue15).
    recoveredValue16 := recoveredValue3.
    recoveredValue17 := CwAccelerator.
    recoveredValue18 := ControlMask.
    recoveredValue19 := XKNext.
    recoveredValue20 := (recoveredValue17) mask: (recoveredValue18) keysym: (recoveredValue19).
    recoveredValue21 := GMVHkMoveDown.
    (recoveredValue16) setAcceleratorAt: ('menuMoveSubwidgetDown') to: (recoveredValue20) text: (recoveredValue21).
    recoveredValue22 := recoveredLocal1.
    ^recoveredValue22
! !

"ASDBase.ic method 0x204478f8; bytecode file offset 0xd44208"
!RBSimpleCalibrationEditor methodsFor: 'recovered'!
menuMoveSubwidgetDown
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) isMenuMoveSubwidgetDownAllowed.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := subWidgets.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := selectedWidgets.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) first.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) indexOf: (recoveredStack1).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := (recoveredStack0) shell.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := [
    | recoveredBlock21Value0 recoveredBlock21Value1 recoveredBlock21Value2 recoveredBlock21Value3 recoveredBlock21Value4 recoveredBlock21Value5 recoveredBlock21Value6 recoveredBlock21Value7 recoveredBlock21Value8 recoveredBlock21Value9 recoveredBlock21Value10 recoveredBlock21Value11 recoveredBlock21Value12 recoveredBlock21Value13 recoveredBlock21Value14 recoveredBlock21Value15 recoveredBlock21Value16 recoveredBlock21Value17 recoveredBlock21Value18 recoveredBlock21Value19 recoveredBlock21Value20 recoveredBlock21Value21 recoveredBlock21Value22 |
    recoveredBlock21Value0 := recoveredLocal1.
    (self) changeSubwidget: (recoveredBlock21Value0) with: ('after').
    recoveredBlock21Value1 := subWidgets.
    recoveredBlock21Value2 := [:recoveredBlock21Block37Arg1 | 
    | recoveredBlock21Block37Value0 recoveredBlock21Block37Value1 |
    recoveredBlock21Block37Value0 := recoveredBlock21Block37Arg1.
    recoveredBlock21Block37Value1 := (self) attachSubWidget: (recoveredBlock21Block37Value0).
    recoveredBlock21Block37Value1
].
    (recoveredBlock21Value1) do: (recoveredBlock21Value2).
    recoveredBlock21Value3 := subWidgets.
    recoveredBlock21Value4 := (recoveredBlock21Value3) at: (2).
    recoveredBlock21Value5 := (recoveredBlock21Value4) primaryWidget.
    recoveredLocal2 := recoveredBlock21Value5.
    recoveredBlock21Value6 := recoveredLocal2.
    recoveredBlock21Value7 := recoveredBlock21Value6.
    recoveredBlock21Value8 := XmATTACHWIDGET.
    (recoveredBlock21Value7) topAttachment: (recoveredBlock21Value8).
    recoveredBlock21Value9 := recoveredBlock21Value6.
    recoveredBlock21Value10 := subWidgets.
    recoveredBlock21Value11 := (recoveredBlock21Value10) at: (1).
    recoveredBlock21Value12 := (recoveredBlock21Value11) primaryWidget.
    (recoveredBlock21Value9) topWidget: (recoveredBlock21Value12).
    recoveredBlock21Value13 := recoveredBlock21Value6.
    recoveredBlock21Value14 := (self) spacing.
    (recoveredBlock21Value13) topOffset: (recoveredBlock21Value14).
    recoveredBlock21Value15 := recoveredBlock21Value6.
    recoveredBlock21Value16 := XmATTACHNONE.
    (recoveredBlock21Value15) bottomAttachment: (recoveredBlock21Value16).
    recoveredBlock21Value17 := recoveredBlock21Value6.
    recoveredBlock21Value18 := XmATTACHFORM.
    (recoveredBlock21Value17) leftAttachment: (recoveredBlock21Value18).
    recoveredBlock21Value19 := recoveredBlock21Value6.
    recoveredBlock21Value20 := (self) marginWidth.
    (recoveredBlock21Value19) leftOffset: (recoveredBlock21Value20).
    recoveredBlock21Value21 := XmATTACHNONE.
    recoveredBlock21Value22 := (recoveredBlock21Value6) rightAttachment: (recoveredBlock21Value21).
    recoveredBlock21Value22
].
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            (recoveredStack0) deferRedraw: (recoveredStack1).
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2044b1c0; bytecode file offset 0xd47ad8"
!RBSimpleCalibrationEditor methodsFor: 'recovered'!
menuMoveSubwidgetUp
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) isMenuMoveSubwidgetUpAllowed.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := subWidgets.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := selectedWidgets.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) first.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) indexOf: (recoveredStack1).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := (recoveredStack0) shell.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := [
    | recoveredBlock21Value0 recoveredBlock21Value1 recoveredBlock21Value2 recoveredBlock21Value3 recoveredBlock21Value4 recoveredBlock21Value5 recoveredBlock21Value6 recoveredBlock21Value7 recoveredBlock21Value8 recoveredBlock21Value9 recoveredBlock21Value10 recoveredBlock21Value11 recoveredBlock21Value12 recoveredBlock21Value13 recoveredBlock21Value14 recoveredBlock21Value15 recoveredBlock21Value16 recoveredBlock21Value17 recoveredBlock21Value18 recoveredBlock21Value19 recoveredBlock21Value20 recoveredBlock21Value21 recoveredBlock21Value22 recoveredBlock21Value23 recoveredBlock21Value24 recoveredBlock21Value25 |
    recoveredBlock21Value0 := recoveredLocal1.
    (self) changeSubwidget: (recoveredBlock21Value0) with: ('before').
    recoveredBlock21Value1 := subWidgets.
    recoveredBlock21Value2 := [:recoveredBlock21Block37Arg1 | 
    | recoveredBlock21Block37Value0 recoveredBlock21Block37Value1 |
    recoveredBlock21Block37Value0 := recoveredBlock21Block37Arg1.
    recoveredBlock21Block37Value1 := (self) attachSubWidget: (recoveredBlock21Block37Value0).
    recoveredBlock21Block37Value1
].
    (recoveredBlock21Value1) do: (recoveredBlock21Value2).
    recoveredBlock21Value3 := subWidgets.
    recoveredBlock21Value4 := (recoveredBlock21Value3) last.
    recoveredBlock21Value5 := (recoveredBlock21Value4) primaryWidget.
    recoveredLocal2 := recoveredBlock21Value5.
    recoveredBlock21Value6 := recoveredLocal2.
    recoveredBlock21Value7 := recoveredBlock21Value6.
    recoveredBlock21Value8 := XmATTACHWIDGET.
    (recoveredBlock21Value7) topAttachment: (recoveredBlock21Value8).
    recoveredBlock21Value9 := recoveredBlock21Value6.
    recoveredBlock21Value10 := subWidgets.
    recoveredBlock21Value11 := subWidgets.
    recoveredBlock21Value12 := (recoveredBlock21Value11) size.
    recoveredBlock21Value13 := (recoveredBlock21Value12) + (-1).
    recoveredBlock21Value14 := (recoveredBlock21Value10) at: (recoveredBlock21Value13).
    recoveredBlock21Value15 := (recoveredBlock21Value14) primaryWidget.
    (recoveredBlock21Value9) topWidget: (recoveredBlock21Value15).
    recoveredBlock21Value16 := recoveredBlock21Value6.
    recoveredBlock21Value17 := (self) spacing.
    (recoveredBlock21Value16) topOffset: (recoveredBlock21Value17).
    recoveredBlock21Value18 := recoveredBlock21Value6.
    recoveredBlock21Value19 := XmATTACHNONE.
    (recoveredBlock21Value18) bottomAttachment: (recoveredBlock21Value19).
    recoveredBlock21Value20 := recoveredBlock21Value6.
    recoveredBlock21Value21 := XmATTACHFORM.
    (recoveredBlock21Value20) leftAttachment: (recoveredBlock21Value21).
    recoveredBlock21Value22 := recoveredBlock21Value6.
    recoveredBlock21Value23 := (self) marginWidth.
    (recoveredBlock21Value22) leftOffset: (recoveredBlock21Value23).
    recoveredBlock21Value24 := XmATTACHNONE.
    recoveredBlock21Value25 := (recoveredBlock21Value6) rightAttachment: (recoveredBlock21Value24).
    recoveredBlock21Value25
].
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            (recoveredStack0) deferRedraw: (recoveredStack1).
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20534e48; bytecode file offset 0xe3171c"
!RBSimpleCalibrationEditor methodsFor: 'recovered'!
changeSubwidget: recoveredArg1 with: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := 'after'.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 116].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) isSelectedSubwidgetNotLast.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 48].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (1).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := subWidgets.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack2 := recoveredLocal4.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2).
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := subWidgets.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack2 := recoveredLocal4.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack3 := subWidgets.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack4 := recoveredArg1.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack3 := (recoveredStack3) at: (recoveredStack4).
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack1 := subWidgets.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack3 := recoveredLocal3.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredPC := 112.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack1 := subWidgets.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack1 := (recoveredStack1) last.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack1 := subWidgets.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack1 := subWidgets.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (-1).
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredPC := 90.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack2 := subWidgets.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack2 := (recoveredStack2) size.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack3 := recoveredLocal2.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack2 := (recoveredStack2) - (recoveredStack3).
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack2 := subWidgets.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack3 := recoveredLocal4.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack4 := subWidgets.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack5 := recoveredLocal1.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack4 := (recoveredStack4) at: (recoveredStack5).
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredLocal4 := recoveredStack2.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack2 := nil.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            (recoveredStack1 isInteger and: [recoveredLocal2 isInteger]) ifTrue: [(recoveredLocal2 + 1 <= recoveredStack1) ifTrue: [recoveredLocal2 := recoveredLocal2 + 1. recoveredPC := 70] ifFalse: [recoveredLocal2 := nil. recoveredPC := 104]] ifFalse: [recoveredPC := 94].
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredStack3 := recoveredLocal2.
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack3 := (recoveredStack3) + (1).
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            recoveredStack4 := recoveredStack3.
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            recoveredLocal2 := recoveredStack4.
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            recoveredStack2 := (recoveredStack2) < (recoveredStack3).
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 102] ifFalse: [recoveredPC := 70].
        ].
        recoveredStep = 102 ifTrue: [
            recoveredStack2 := nil.
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            recoveredLocal2 := recoveredStack2.
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            recoveredStack1 := subWidgets.
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            recoveredStack2 := 1.
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            recoveredStack3 := recoveredLocal3.
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 112.
        ].
        recoveredStep = 112 ifTrue: [
            recoveredPC := 204.
        ].
        recoveredStep = 116 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 117.
        ].
        recoveredStep = 117 ifTrue: [
            recoveredStack1 := (recoveredStack1) isSelectedSubwidgetNotFirst.
            recoveredPC := 119.
        ].
        recoveredStep = 119 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 122] ifFalse: [recoveredPC := 152].
        ].
        recoveredStep = 122 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 124.
        ].
        recoveredStep = 124 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (-1).
            recoveredPC := 125.
        ].
        recoveredStep = 125 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 126.
        ].
        recoveredStep = 126 ifTrue: [
            recoveredStack1 := subWidgets.
            recoveredPC := 128.
        ].
        recoveredStep = 128 ifTrue: [
            recoveredStack2 := recoveredLocal4.
            recoveredPC := 129.
        ].
        recoveredStep = 129 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2).
            recoveredPC := 130.
        ].
        recoveredStep = 130 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 131.
        ].
        recoveredStep = 131 ifTrue: [
            recoveredStack1 := subWidgets.
            recoveredPC := 133.
        ].
        recoveredStep = 133 ifTrue: [
            recoveredStack2 := recoveredLocal4.
            recoveredPC := 134.
        ].
        recoveredStep = 134 ifTrue: [
            recoveredStack3 := subWidgets.
            recoveredPC := 136.
        ].
        recoveredStep = 136 ifTrue: [
            recoveredStack4 := recoveredArg1.
            recoveredPC := 138.
        ].
        recoveredStep = 138 ifTrue: [
            recoveredStack3 := (recoveredStack3) at: (recoveredStack4).
            recoveredPC := 139.
        ].
        recoveredStep = 139 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 141.
        ].
        recoveredStep = 141 ifTrue: [
            recoveredStack1 := subWidgets.
            recoveredPC := 143.
        ].
        recoveredStep = 143 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 145.
        ].
        recoveredStep = 145 ifTrue: [
            recoveredStack3 := recoveredLocal3.
            recoveredPC := 146.
        ].
        recoveredStep = 146 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 148.
        ].
        recoveredStep = 148 ifTrue: [
            recoveredPC := 204.
        ].
        recoveredStep = 152 ifTrue: [
            recoveredStack1 := subWidgets.
            recoveredPC := 154.
        ].
        recoveredStep = 154 ifTrue: [
            recoveredStack1 := (recoveredStack1) first.
            recoveredPC := 156.
        ].
        recoveredStep = 156 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 157.
        ].
        recoveredStep = 157 ifTrue: [
            recoveredStack1 := 1.
            recoveredPC := 159.
        ].
        recoveredStep = 159 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 160.
        ].
        recoveredStep = 160 ifTrue: [
            recoveredStack1 := 1.
            recoveredPC := 162.
        ].
        recoveredStep = 162 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 163.
        ].
        recoveredStep = 163 ifTrue: [
            recoveredStack1 := subWidgets.
            recoveredPC := 165.
        ].
        recoveredStep = 165 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 167.
        ].
        recoveredStep = 167 ifTrue: [
            recoveredPC := 180.
        ].
        recoveredStep = 170 ifTrue: [
            recoveredStack2 := subWidgets.
            recoveredPC := 172.
        ].
        recoveredStep = 172 ifTrue: [
            recoveredStack3 := recoveredLocal2.
            recoveredPC := 173.
        ].
        recoveredStep = 173 ifTrue: [
            recoveredStack3 := (recoveredStack3) + (-1).
            recoveredPC := 174.
        ].
        recoveredStep = 174 ifTrue: [
            recoveredStack4 := subWidgets.
            recoveredPC := 176.
        ].
        recoveredStep = 176 ifTrue: [
            recoveredStack5 := recoveredLocal2.
            recoveredPC := 177.
        ].
        recoveredStep = 177 ifTrue: [
            recoveredStack4 := (recoveredStack4) at: (recoveredStack5).
            recoveredPC := 178.
        ].
        recoveredStep = 178 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredPC := 180.
        ].
        recoveredStep = 180 ifTrue: [
            (recoveredStack1 isInteger and: [recoveredLocal2 isInteger]) ifTrue: [(recoveredLocal2 + 1 <= recoveredStack1) ifTrue: [recoveredLocal2 := recoveredLocal2 + 1. recoveredPC := 170] ifFalse: [recoveredLocal2 := nil. recoveredPC := 194]] ifFalse: [recoveredPC := 184].
        ].
        recoveredStep = 184 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 185.
        ].
        recoveredStep = 185 ifTrue: [
            recoveredStack3 := recoveredLocal2.
            recoveredPC := 186.
        ].
        recoveredStep = 186 ifTrue: [
            recoveredStack3 := (recoveredStack3) + (1).
            recoveredPC := 187.
        ].
        recoveredStep = 187 ifTrue: [
            recoveredStack4 := recoveredStack3.
            recoveredPC := 188.
        ].
        recoveredStep = 188 ifTrue: [
            recoveredLocal2 := recoveredStack4.
            recoveredPC := 189.
        ].
        recoveredStep = 189 ifTrue: [
            recoveredStack2 := (recoveredStack2) < (recoveredStack3).
            recoveredPC := 190.
        ].
        recoveredStep = 190 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 192] ifFalse: [recoveredPC := 170].
        ].
        recoveredStep = 192 ifTrue: [
            recoveredStack2 := nil.
            recoveredPC := 193.
        ].
        recoveredStep = 193 ifTrue: [
            recoveredLocal2 := recoveredStack2.
            recoveredPC := 194.
        ].
        recoveredStep = 194 ifTrue: [
            recoveredPC := 195.
        ].
        recoveredStep = 195 ifTrue: [
            recoveredStack1 := subWidgets.
            recoveredPC := 197.
        ].
        recoveredStep = 197 ifTrue: [
            recoveredStack2 := subWidgets.
            recoveredPC := 199.
        ].
        recoveredStep = 199 ifTrue: [
            recoveredStack2 := (recoveredStack2) size.
            recoveredPC := 201.
        ].
        recoveredStep = 201 ifTrue: [
            recoveredStack3 := recoveredLocal3.
            recoveredPC := 202.
        ].
        recoveredStep = 202 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 204.
        ].
        recoveredStep = 204 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

