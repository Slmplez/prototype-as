"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2001f13c; bytecode file offset 0x92209c"
!RBNumericMeasureDataWindow methodsFor: 'recovered'!
subpaneOrientation
    ^'horizontal'
! !

"ASDBase.ic method 0x200233a8; bytecode file offset 0x92209c"
!RBNumericMeasureDataWindow methodsFor: 'recovered'!
defaultIcon
    ^'EditorEEMeasurementNumeric32'
! !

"ASDBase.ic method 0x20058658; bytecode file offset 0x956284"
!RBNumericMeasureDataWindow methodsFor: 'recovered'!
checkValidDatas: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) applicationController.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) selectScalarElementsFromList: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x20080350; bytecode file offset 0x97cc04"
!RBNumericMeasureDataWindow methodsFor: 'recovered'!
minLargeFontSubpaneHeight
    ^52
! !

"ASDBase.ic method 0x200810b8; bytecode file offset 0x97d96c"
!RBNumericMeasureDataWindow methodsFor: 'recovered'!
maxSmallFontSubpaneWidth
    ^238
! !

"ASDBase.ic method 0x200811d8; bytecode file offset 0x97da94"
!RBNumericMeasureDataWindow methodsFor: 'recovered'!
minLargeFontSubpaneWidth
    ^500
! !

"ASDBase.ic method 0x20090458; bytecode file offset 0x98cd90"
!RBNumericMeasureDataWindow methodsFor: 'recovered'!
maxSmallFontSubpaneHeight
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) class.
    recoveredValue1 := (recoveredValue0) defaultSubWidgetHeight.
    recoveredValue2 := (self) spacing.
    recoveredValue3 := (recoveredValue1) + (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x20112ee0; bytecode file offset 0xa0f7a0"
!RBNumericMeasureDataWindow methodsFor: 'recovered'!
initializeAfterCreate
    | recoveredLocal1 |
    super initializeAfterCreate.
    (self) menuFontToggle.
    (self) menuFontToggle.
    ^self
! !

"ASDBase.ic method 0x20116da8; bytecode file offset 0xa13668"
!RBNumericMeasureDataWindow methodsFor: 'recovered'!
isLargeFont
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
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
            recoveredStack1 := (recoveredStack1) first.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) isLargeFont.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2012d2fc; bytecode file offset 0xa29bb8"
!RBNumericMeasureDataWindow methodsFor: 'recovered'!
minSubpaneWidth
    | recoveredStack0 recoveredStack1 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) isLargeFont.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 8] ifFalse: [recoveredPC := 13].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := 500.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := (recoveredStack0) maxSmallFontSubpaneWidth.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2012d3d4; bytecode file offset 0xa29c94"
!RBNumericMeasureDataWindow methodsFor: 'recovered'!
minSubpaneHeight
    | recoveredStack0 recoveredStack1 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) isLargeFont.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 8] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := 50.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredPC := 17.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) class.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := (recoveredStack0) defaultSubWidgetHeight.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2014cbb8; bytecode file offset 0xa494d4"
!RBNumericMeasureDataWindow methodsFor: 'recovered'!
maxDataNumber
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := CgScreen.
    recoveredValue1 := (recoveredValue0) default.
    recoveredValue2 := (recoveredValue1) height.
    recoveredValue3 := (recoveredValue2) - (30).
    recoveredValue4 := (self) class.
    recoveredValue5 := (recoveredValue4) defaultSubWidgetHeight.
    recoveredValue6 := (recoveredValue5) + (4).
    recoveredValue7 := (recoveredValue3) // (recoveredValue6).
    ^recoveredValue7
! !

"ASDBase.ic method 0x201d06c0; bytecode file offset 0xaccf8c"
!RBNumericMeasureDataWindow methodsFor: 'recovered'!
createMenuBar
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 |
    recoveredValue0 := CwMenuBar.
    recoveredValue1 := (recoveredValue0) new.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := recoveredLocal1.
    recoveredValue3 := recoveredValue2.
    recoveredValue4 := (self) createViewMenu.
    (recoveredValue3) addMenu: (recoveredValue4).
    recoveredValue5 := recoveredValue2.
    recoveredValue6 := (self) createOptionsMenu.
    (recoveredValue5) addMenu: (recoveredValue6).
    recoveredValue7 := recoveredLocal1.
    (recoveredValue7) addToolboxMenuItemsFor: (self).
    recoveredValue8 := recoveredLocal1.
    ^recoveredValue8
! !

"ASDBase.ic method 0x202a3cb0; bytecode file offset 0xba0590"
!RBNumericMeasureDataWindow methodsFor: 'recovered'!
createViewMenu
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredStack7 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := CwMenu.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) defaultMenuClass.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack3 := MT_View.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack2) title: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack3 := 'menuFontToggle'.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack4 := '~Larger font'.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack5 := [
    true
].
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack6 := [
    | recoveredBlock26Value0 recoveredBlock26Value1 recoveredBlock26Value2 |
    recoveredBlock26Value0 := subWidgets.
    recoveredBlock26Value1 := (recoveredBlock26Value0) first.
    recoveredBlock26Value2 := (recoveredBlock26Value1) isLargeFont.
    recoveredBlock26Value2
].
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            (recoveredStack2) add: (recoveredStack3) label: (recoveredStack4) enable: (recoveredStack5) toggle: (recoveredStack6).
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x20309c8c; bytecode file offset 0xc06568"
!RBNumericMeasureDataWindow methodsFor: 'recovered'!
installActionKeys
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 |
    super installActionKeys.
    recoveredValue0 := (self) widgetKeyActions.
    recoveredLocal2 := recoveredValue0.
    recoveredValue1 := recoveredLocal2.
    recoveredValue2 := (self) shell.
    recoveredValue3 := (recoveredValue1) at: (recoveredValue2).
    recoveredLocal1 := recoveredValue3.
    recoveredValue4 := recoveredLocal1.
    recoveredValue5 := recoveredValue4.
    (recoveredValue5) at: ($>) put: ('menuFontToggle').
    recoveredValue6 := recoveredValue4.
    (recoveredValue6) at: ($z) put: ('menuChangeToDezRepresentation').
    recoveredValue7 := recoveredValue4.
    (recoveredValue7) at: ($r) put: ('menuChangeToBinRepresentation').
    recoveredValue8 := recoveredLocal2.
    recoveredValue9 := (self) shell.
    recoveredValue10 := recoveredLocal1.
    (recoveredValue8) at: (recoveredValue9) put: (recoveredValue10).
    recoveredValue11 := recoveredLocal2.
    (self) widgetKeyActions: (recoveredValue11).
    ^self
! !

"ASDBase.ic method 0x20346788; bytecode file offset 0xc4306c"
!RBNumericMeasureDataWindow methodsFor: 'recovered'!
initializeAfterOpen
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            super initializeAfterOpen.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) shell.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := (recoveredStack0) height.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := 2.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := (recoveredStack2) marginWidth.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) * (recoveredStack2).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := (recoveredStack0) - (recoveredStack1).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := subWidgets.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (-1).
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack2 := (recoveredStack2) spacing.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := (recoveredStack1) * (recoveredStack2).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := (recoveredStack0) - (recoveredStack1).
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack0 := subWidgets.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack0 := (recoveredStack0) first.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack0 := (recoveredStack0) height.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := subWidgets.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := (recoveredStack0) * (recoveredStack1).
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack0 := (recoveredStack0) > (recoveredStack1).
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 44] ifFalse: [recoveredPC := 61].
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack0 := (recoveredStack0) shell.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack1 := (recoveredStack1) shell.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack1 := (recoveredStack1) width.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack2 := (recoveredStack2) scrolledWindow.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack2 := (recoveredStack2) verticalScrollBar.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack2 := (recoveredStack2) width.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (recoveredStack2).
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (1).
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            (recoveredStack0) width: (recoveredStack1).
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20456740; bytecode file offset 0xd53048"
!RBNumericMeasureDataWindow methodsFor: 'recovered'!
createSubpaneFor: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
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
            (recoveredStack1) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredPC := 25.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := subWidgets.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := (recoveredStack1) first.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := (recoveredStack1) isLargeFont.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := (recoveredStack1) data.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 43] ifFalse: [recoveredPC := 32].
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := (recoveredStack1) data.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := (recoveredStack1) derivedDataElements.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack0 := (recoveredStack0) form.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack1 := 'aSubPane'.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack2 := subWidgets.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack2 := (recoveredStack2) size.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack2 := (recoveredStack2) printString.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack2 := [:recoveredBlock55Arg1 | 
    | recoveredBlock55Value0 recoveredBlock55Value1 recoveredBlock55Value2 recoveredBlock55Value3 recoveredBlock55Value4 recoveredBlock55Value5 recoveredBlock55Value6 recoveredBlock55Value7 recoveredBlock55Value8 recoveredBlock55Value9 recoveredBlock55Value10 recoveredBlock55Value11 recoveredBlock55Value12 |
    recoveredBlock55Value0 := recoveredBlock55Arg1.
    recoveredBlock55Value1 := recoveredBlock55Value0.
    recoveredBlock55Value2 := (self) class.
    recoveredBlock55Value3 := (recoveredBlock55Value2) defaultSubWidgetHeight.
    recoveredBlock55Value4 := (recoveredBlock55Value3) - (10).
    (recoveredBlock55Value1) height: (recoveredBlock55Value4).
    recoveredBlock55Value5 := recoveredBlock55Value0.
    (recoveredBlock55Value5) width: (245).
    recoveredBlock55Value6 := recoveredBlock55Value0.
    recoveredBlock55Value7 := nameAlignment.
    (recoveredBlock55Value6) nameAlignment: (recoveredBlock55Value7).
    recoveredBlock55Value8 := recoveredBlock55Value0.
    recoveredBlock55Value9 := recoveredLocal1.
    (recoveredBlock55Value8) additionalValueFields: (recoveredBlock55Value9).
    recoveredBlock55Value10 := OrderedCollection.
    recoveredBlock55Value11 := (recoveredBlock55Value10) new.
    recoveredBlock55Value12 := (recoveredBlock55Value0) additionalValueFieldWidgets: (recoveredBlock55Value11).
    recoveredBlock55Value12
].
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack0 := (recoveredStack0) createASDNumericMeasureDataWidget: (recoveredStack1) argBlock: (recoveredStack2).
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            (recoveredStack0) largeFontSize: (recoveredStack1).
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 114.
        ].
        recoveredStep = 114 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2049a5ec; bytecode file offset 0xd96ee8"
!RBNumericMeasureDataWindow methodsFor: 'recovered'!
setup
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := selectedWidgets.
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
            recoveredStack1 := nil.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            ^recoveredStack1
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
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := (recoveredStack0) class.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := (recoveredStack0) defaultSetupDialogClass.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := (recoveredStack0) create.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredLocal5 := recoveredStack0.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := recoveredLocal5.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack2 := recoveredLocal4.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack2 := (recoveredStack2) precision.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            (recoveredStack1) precision: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack2 := recoveredLocal4.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack2 := (recoveredStack2) lowCriticalBound.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            (recoveredStack1) lowCriticalBound: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack2 := recoveredLocal4.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack2 := (recoveredStack2) highCriticalBound.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            (recoveredStack1) highCriticalBound: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack2 := recoveredLocal4.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack2 := (recoveredStack2) implView.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            (recoveredStack1) hexView: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack2 := recoveredLocal4.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack2 := (recoveredStack2) numberRepresentation.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            (recoveredStack1) numberRepresentation: (recoveredStack2).
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            (recoveredStack0) prompt.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack0 := recoveredLocal5.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack0 := (recoveredStack0) result.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 80] ifFalse: [recoveredPC := 78].
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack0 := recoveredLocal5.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack0 := (recoveredStack0) precision.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack0 := recoveredLocal5.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredStack0 := (recoveredStack0) lowCriticalBound.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack0 := recoveredLocal5.
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            recoveredStack0 := (recoveredStack0) highCriticalBound.
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            recoveredStack0 := selectedWidgets.
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            recoveredStack1 := [:recoveredBlock106Arg1 | 
    | recoveredBlock106Value0 recoveredBlock106Value1 recoveredBlock106Value2 recoveredBlock106Value3 recoveredBlock106Value4 recoveredBlock106Value5 recoveredBlock106Value6 |
    recoveredBlock106Value0 := recoveredBlock106Arg1.
    recoveredBlock106Value1 := recoveredBlock106Value0.
    recoveredBlock106Value2 := recoveredLocal3.
    (recoveredBlock106Value1) precision: (recoveredBlock106Value2).
    recoveredBlock106Value3 := recoveredBlock106Value0.
    recoveredBlock106Value4 := recoveredLocal2.
    (recoveredBlock106Value3) lowCriticalBound: (recoveredBlock106Value4).
    recoveredBlock106Value5 := recoveredLocal1.
    recoveredBlock106Value6 := (recoveredBlock106Value0) highCriticalBound: (recoveredBlock106Value5).
    recoveredBlock106Value6
].
            recoveredPC := 131.
        ].
        recoveredStep = 131 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 133.
        ].
        recoveredStep = 133 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 134.
        ].
        recoveredStep = 134 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x204cbdc4; bytecode file offset 0xdc86c8"
!RBNumericMeasureDataWindow methodsFor: 'recovered'!
symbolicSetup
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredLocal6 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := selectedWidgets.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := 1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := selectedWidgets.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := (recoveredStack1) first.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredLocal5 := recoveredStack1.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := (recoveredStack0) dataManager.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := (recoveredStack1) dataId.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := (recoveredStack0) wFormulaOfId: (recoveredStack1).
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack0 := (recoveredStack0) isFormulaTab.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 40] ifFalse: [recoveredPC := 52].
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack0 := (recoveredStack0) physTab.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredLocal4 := recoveredStack0.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredPC := 65.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack0 := (recoveredStack0) dataManager.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack1 := (recoveredStack1) dataId.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack0 := (recoveredStack0) dataOfId: (recoveredStack1).
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack0 := (recoveredStack0) getOrderedValues.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredLocal4 := recoveredStack0.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack0 := (recoveredStack0) class.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack0 := (recoveredStack0) defaultSymbolicSetupDialogClass.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack0 := (recoveredStack0) create.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredLocal6 := recoveredStack0.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack0 := recoveredLocal6.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack2 := recoveredLocal5.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack2 := (recoveredStack2) lowCriticalBound.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            (recoveredStack1) lowCriticalBound: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredStack2 := recoveredLocal5.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack2 := (recoveredStack2) highCriticalBound.
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            (recoveredStack1) highCriticalBound: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredStack2 := recoveredLocal4.
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            (recoveredStack1) values: (recoveredStack2).
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            (recoveredStack0) prompt.
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            recoveredStack0 := recoveredLocal6.
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            recoveredStack0 := (recoveredStack0) result.
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 112] ifFalse: [recoveredPC := 110].
        ].
        recoveredStep = 110 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 112 ifTrue: [
            recoveredStack0 := recoveredLocal6.
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            recoveredStack0 := (recoveredStack0) lowCriticalBound.
            recoveredPC := 117.
        ].
        recoveredStep = 117 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 120.
        ].
        recoveredStep = 120 ifTrue: [
            recoveredStack0 := recoveredLocal6.
            recoveredPC := 123.
        ].
        recoveredStep = 123 ifTrue: [
            recoveredStack0 := (recoveredStack0) highCriticalBound.
            recoveredPC := 125.
        ].
        recoveredStep = 125 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 128.
        ].
        recoveredStep = 128 ifTrue: [
            recoveredStack0 := selectedWidgets.
            recoveredPC := 130.
        ].
        recoveredStep = 130 ifTrue: [
            recoveredStack1 := [:recoveredBlock130Arg1 | 
    | recoveredBlock130Value0 recoveredBlock130Value1 recoveredBlock130Value2 recoveredBlock130Value3 recoveredBlock130Value4 |
    recoveredBlock130Value0 := recoveredBlock130Arg1.
    recoveredBlock130Value1 := recoveredBlock130Value0.
    recoveredBlock130Value2 := recoveredLocal3.
    (recoveredBlock130Value1) lowCriticalBound: (recoveredBlock130Value2).
    recoveredBlock130Value3 := recoveredLocal2.
    recoveredBlock130Value4 := (recoveredBlock130Value0) highCriticalBound: (recoveredBlock130Value3).
    recoveredBlock130Value4
].
            recoveredPC := 149.
        ].
        recoveredStep = 149 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 151.
        ].
        recoveredStep = 151 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 152.
        ].
        recoveredStep = 152 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20567b3c; bytecode file offset 0xe64468"
!RBNumericMeasureDataWindow methodsFor: 'recovered'!
menuFontToggle
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) isLargeFont.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) not.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal4 := recoveredStack0.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := subWidgets.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := [:recoveredBlock15Arg1 | 
    | recoveredBlock15Value0 recoveredBlock15Value1 recoveredBlock15Value2 recoveredBlock15Value3 recoveredBlock15Value4 recoveredBlock15Value5 |
    recoveredBlock15Value0 := recoveredLocal3.
    recoveredBlock15Value1 := recoveredBlock15Arg1.
    recoveredBlock15Value2 := recoveredLocal4.
    recoveredBlock15Value3 := (recoveredBlock15Value1) largeFontSize: (recoveredBlock15Value2).
    recoveredBlock15Value4 := (recoveredBlock15Value0) | (recoveredBlock15Value3).
    recoveredBlock15Value5 := recoveredBlock15Value4.
    recoveredLocal3 := recoveredBlock15Value5.
    recoveredBlock15Value4
].
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 46] ifFalse: [recoveredPC := 44].
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack0 := (recoveredStack0) shell.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack0 := (recoveredStack0) extent.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 60] ifFalse: [recoveredPC := 120].
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack0 := (recoveredStack0) shell.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack0 := (recoveredStack0) height.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack1 := subWidgets.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack0 := (recoveredStack0) // (recoveredStack1).
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack1 := (recoveredStack1) minLargeFontSubpaneHeight.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack0 := (recoveredStack0) < (recoveredStack1).
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 78] ifFalse: [recoveredPC := 96].
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack1 := subWidgets.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack2 := (recoveredStack2) minLargeFontSubpaneHeight.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack1 := (recoveredStack1) * (recoveredStack2).
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack2 := (recoveredStack2) maxShellHeight.
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack1 := (recoveredStack1) min: (recoveredStack2).
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            (recoveredStack0) y: (recoveredStack1).
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            recoveredStack0 := (recoveredStack0) shell.
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            recoveredStack0 := (recoveredStack0) width.
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            recoveredStack1 := (recoveredStack1) minLargeFontSubpaneWidth.
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            recoveredStack0 := (recoveredStack0) < (recoveredStack1).
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 108] ifFalse: [recoveredPC := 116].
        ].
        recoveredStep = 108 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 112.
        ].
        recoveredStep = 112 ifTrue: [
            recoveredStack1 := (recoveredStack1) minLargeFontSubpaneWidth.
            recoveredPC := 114.
        ].
        recoveredStep = 114 ifTrue: [
            (recoveredStack0) x: (recoveredStack1).
            recoveredPC := 116.
        ].
        recoveredStep = 116 ifTrue: [
            recoveredPC := 172.
        ].
        recoveredStep = 120 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 121.
        ].
        recoveredStep = 121 ifTrue: [
            recoveredStack0 := (recoveredStack0) shell.
            recoveredPC := 123.
        ].
        recoveredStep = 123 ifTrue: [
            recoveredStack0 := (recoveredStack0) height.
            recoveredPC := 125.
        ].
        recoveredStep = 125 ifTrue: [
            recoveredStack1 := subWidgets.
            recoveredPC := 127.
        ].
        recoveredStep = 127 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 129.
        ].
        recoveredStep = 129 ifTrue: [
            recoveredStack0 := (recoveredStack0) // (recoveredStack1).
            recoveredPC := 130.
        ].
        recoveredStep = 130 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 131.
        ].
        recoveredStep = 131 ifTrue: [
            recoveredStack1 := (recoveredStack1) maxSmallFontSubpaneHeight.
            recoveredPC := 133.
        ].
        recoveredStep = 133 ifTrue: [
            recoveredStack0 := (recoveredStack0) > (recoveredStack1).
            recoveredPC := 134.
        ].
        recoveredStep = 134 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 138] ifFalse: [recoveredPC := 151].
        ].
        recoveredStep = 138 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 141.
        ].
        recoveredStep = 141 ifTrue: [
            recoveredStack1 := subWidgets.
            recoveredPC := 143.
        ].
        recoveredStep = 143 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 145.
        ].
        recoveredStep = 145 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 146.
        ].
        recoveredStep = 146 ifTrue: [
            recoveredStack2 := (recoveredStack2) maxSmallFontSubpaneHeight.
            recoveredPC := 148.
        ].
        recoveredStep = 148 ifTrue: [
            recoveredStack1 := (recoveredStack1) * (recoveredStack2).
            recoveredPC := 149.
        ].
        recoveredStep = 149 ifTrue: [
            (recoveredStack0) y: (recoveredStack1).
            recoveredPC := 151.
        ].
        recoveredStep = 151 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 152.
        ].
        recoveredStep = 152 ifTrue: [
            recoveredStack0 := (recoveredStack0) shell.
            recoveredPC := 154.
        ].
        recoveredStep = 154 ifTrue: [
            recoveredStack0 := (recoveredStack0) width.
            recoveredPC := 156.
        ].
        recoveredStep = 156 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 157.
        ].
        recoveredStep = 157 ifTrue: [
            recoveredStack1 := (recoveredStack1) maxSmallFontSubpaneWidth.
            recoveredPC := 159.
        ].
        recoveredStep = 159 ifTrue: [
            recoveredStack0 := (recoveredStack0) > (recoveredStack1).
            recoveredPC := 160.
        ].
        recoveredStep = 160 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 164] ifFalse: [recoveredPC := 172].
        ].
        recoveredStep = 164 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 167.
        ].
        recoveredStep = 167 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 168.
        ].
        recoveredStep = 168 ifTrue: [
            recoveredStack1 := (recoveredStack1) maxSmallFontSubpaneWidth.
            recoveredPC := 170.
        ].
        recoveredStep = 170 ifTrue: [
            (recoveredStack0) x: (recoveredStack1).
            recoveredPC := 172.
        ].
        recoveredStep = 172 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 173.
        ].
        recoveredStep = 173 ifTrue: [
            recoveredStack0 := (recoveredStack0) minSubpaneWidth.
            recoveredPC := 175.
        ].
        recoveredStep = 175 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 176.
        ].
        recoveredStep = 176 ifTrue: [
            recoveredStack1 := (recoveredStack1) marginWidth.
            recoveredPC := 178.
        ].
        recoveredStep = 178 ifTrue: [
            recoveredStack2 := 2.
            recoveredPC := 180.
        ].
        recoveredStep = 180 ifTrue: [
            recoveredStack1 := (recoveredStack1) * (recoveredStack2).
            recoveredPC := 181.
        ].
        recoveredStep = 181 ifTrue: [
            recoveredStack0 := (recoveredStack0) + (recoveredStack1).
            recoveredPC := 182.
        ].
        recoveredStep = 182 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 183.
        ].
        recoveredStep = 183 ifTrue: [
            recoveredStack1 := (recoveredStack1) minSubpaneHeight.
            recoveredPC := 185.
        ].
        recoveredStep = 185 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 186.
        ].
        recoveredStep = 186 ifTrue: [
            recoveredStack2 := (recoveredStack2) marginWidth.
            recoveredPC := 188.
        ].
        recoveredStep = 188 ifTrue: [
            recoveredStack3 := 2.
            recoveredPC := 190.
        ].
        recoveredStep = 190 ifTrue: [
            recoveredStack2 := (recoveredStack2) * (recoveredStack3).
            recoveredPC := 191.
        ].
        recoveredStep = 191 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (recoveredStack2).
            recoveredPC := 192.
        ].
        recoveredStep = 192 ifTrue: [
            recoveredStack0 := (recoveredStack0) @ (recoveredStack1).
            recoveredPC := 194.
        ].
        recoveredStep = 194 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 197.
        ].
        recoveredStep = 197 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 198.
        ].
        recoveredStep = 198 ifTrue: [
            recoveredStack0 := (recoveredStack0) class.
            recoveredPC := 200.
        ].
        recoveredStep = 200 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 203.
        ].
        recoveredStep = 203 ifTrue: [
            (recoveredStack0) minSize: (recoveredStack1).
            recoveredPC := 205.
        ].
        recoveredStep = 205 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 206.
        ].
        recoveredStep = 206 ifTrue: [
            recoveredStack0 := (recoveredStack0) form.
            recoveredPC := 208.
        ].
        recoveredStep = 208 ifTrue: [
            recoveredStack1 := [
    | recoveredBlock208Value0 recoveredBlock208Value1 recoveredBlock208Value2 recoveredBlock208Value3 recoveredBlock208Value4 recoveredBlock208Value5 recoveredBlock208Value6 recoveredBlock208Value7 recoveredBlock208Value8 |
    recoveredBlock208Value0 := (self) shell.
    recoveredBlock208Value1 := recoveredBlock208Value0.
    recoveredBlock208Value2 := recoveredLocal2.
    recoveredBlock208Value3 := (recoveredBlock208Value2) x.
    (recoveredBlock208Value1) width: (recoveredBlock208Value3).
    recoveredBlock208Value4 := recoveredLocal2.
    recoveredBlock208Value5 := (recoveredBlock208Value4) y.
    recoveredBlock208Value6 := (self) spacing.
    recoveredBlock208Value7 := (recoveredBlock208Value5) + (recoveredBlock208Value6).
    recoveredBlock208Value8 := (recoveredBlock208Value0) height: (recoveredBlock208Value7).
    recoveredBlock208Value8
].
            recoveredPC := 236.
        ].
        recoveredStep = 236 ifTrue: [
            (recoveredStack0) deferRedraw: (recoveredStack1).
            recoveredPC := 238.
        ].
        recoveredStep = 238 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 239.
        ].
        recoveredStep = 239 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x205b19a4; bytecode file offset 0xeae3a8"
!RBNumericMeasureDataWindow methodsFor: 'recovered'!
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
    (recoveredBlock24Value1) title: ('Ziffernanzeige').
    recoveredBlock24Value2 := recoveredBlock24Value0.
    recoveredBlock24Value3 := recoveredLocal6.
    recoveredBlock24Value4 := (30) * (recoveredBlock24Value3).
    recoveredBlock24Value5 := (recoveredBlock24Value4) rounded.
    (recoveredBlock24Value2) height: (recoveredBlock24Value5).
    recoveredBlock24Value6 := recoveredLocal7.
    recoveredBlock24Value7 := (250) * (recoveredBlock24Value6).
    recoveredBlock24Value8 := (recoveredBlock24Value7) rounded.
    recoveredBlock24Value9 := (recoveredBlock24Value0) width: (recoveredBlock24Value8).
    recoveredBlock24Value9
].
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack1 := (recoveredStack1) createApplicationShell: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredLocal5 := recoveredStack1.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack1 := recoveredLocal8.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack2 := 'mainWindow'.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack3 := recoveredLocal5.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack2 := 'aMainWindow1'.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack3 := nil.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack1 := (recoveredStack1) createMainWindow: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredStack1 := recoveredLocal8.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack2 := 'aMainWindow1'.
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack3 := recoveredLocal4.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack2 := 'aForm1'.
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            recoveredStack3 := nil.
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            recoveredStack1 := (recoveredStack1) createForm: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            recoveredStack1 := recoveredLocal8.
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            recoveredStack2 := 'aForm1'.
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            recoveredStack3 := recoveredLocal3.
            recoveredPC := 118.
        ].
        recoveredStep = 118 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 120.
        ].
        recoveredStep = 120 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 123.
        ].
        recoveredStep = 123 ifTrue: [
            recoveredStack2 := 'scrolledWindow'.
            recoveredPC := 125.
        ].
        recoveredStep = 125 ifTrue: [
            recoveredStack3 := [:recoveredBlock125Arg1 | 
    | recoveredBlock125Value0 recoveredBlock125Value1 recoveredBlock125Value2 recoveredBlock125Value3 recoveredBlock125Value4 recoveredBlock125Value5 recoveredBlock125Value6 recoveredBlock125Value7 recoveredBlock125Value8 recoveredBlock125Value9 recoveredBlock125Value10 recoveredBlock125Value11 recoveredBlock125Value12 recoveredBlock125Value13 recoveredBlock125Value14 recoveredBlock125Value15 |
    recoveredBlock125Value0 := recoveredBlock125Arg1.
    recoveredBlock125Value1 := recoveredBlock125Value0.
    (recoveredBlock125Value1) borderWidth: (0).
    recoveredBlock125Value2 := recoveredBlock125Value0.
    recoveredBlock125Value3 := XmAUTOMATIC.
    (recoveredBlock125Value2) scrollingPolicy: (recoveredBlock125Value3).
    recoveredBlock125Value4 := recoveredBlock125Value0.
    recoveredBlock125Value5 := XmCONSTANT.
    (recoveredBlock125Value4) visualPolicy: (recoveredBlock125Value5).
    recoveredBlock125Value6 := recoveredBlock125Value0.
    recoveredBlock125Value7 := XmASNEEDED.
    (recoveredBlock125Value6) scrollBarDisplayPolicy: (recoveredBlock125Value7).
    recoveredBlock125Value8 := recoveredBlock125Value0.
    recoveredBlock125Value9 := recoveredLocal6.
    recoveredBlock125Value10 := (28) * (recoveredBlock125Value9).
    recoveredBlock125Value11 := (recoveredBlock125Value10) rounded.
    (recoveredBlock125Value8) height: (recoveredBlock125Value11).
    recoveredBlock125Value12 := recoveredLocal7.
    recoveredBlock125Value13 := (250) * (recoveredBlock125Value12).
    recoveredBlock125Value14 := (recoveredBlock125Value13) rounded.
    recoveredBlock125Value15 := (recoveredBlock125Value0) width: (recoveredBlock125Value14).
    recoveredBlock125Value15
].
            recoveredPC := 177.
        ].
        recoveredStep = 177 ifTrue: [
            recoveredStack1 := (recoveredStack1) createScrolledWindow: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 179.
        ].
        recoveredStep = 179 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 181.
        ].
        recoveredStep = 181 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 184.
        ].
        recoveredStep = 184 ifTrue: [
            recoveredStack1 := recoveredLocal8.
            recoveredPC := 187.
        ].
        recoveredStep = 187 ifTrue: [
            recoveredStack2 := 'scrolledWindow'.
            recoveredPC := 189.
        ].
        recoveredStep = 189 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 192.
        ].
        recoveredStep = 192 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 194.
        ].
        recoveredStep = 194 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 197.
        ].
        recoveredStep = 197 ifTrue: [
            recoveredStack2 := 'aForm2'.
            recoveredPC := 199.
        ].
        recoveredStep = 199 ifTrue: [
            recoveredStack3 := [:recoveredBlock199Arg1 | 
    | recoveredBlock199Value0 recoveredBlock199Value1 recoveredBlock199Value2 recoveredBlock199Value3 recoveredBlock199Value4 recoveredBlock199Value5 recoveredBlock199Value6 recoveredBlock199Value7 recoveredBlock199Value8 |
    recoveredBlock199Value0 := recoveredBlock199Arg1.
    recoveredBlock199Value1 := recoveredBlock199Value0.
    recoveredBlock199Value2 := recoveredLocal6.
    recoveredBlock199Value3 := (30) * (recoveredBlock199Value2).
    recoveredBlock199Value4 := (recoveredBlock199Value3) rounded.
    (recoveredBlock199Value1) height: (recoveredBlock199Value4).
    recoveredBlock199Value5 := recoveredLocal7.
    recoveredBlock199Value6 := (245) * (recoveredBlock199Value5).
    recoveredBlock199Value7 := (recoveredBlock199Value6) rounded.
    recoveredBlock199Value8 := (recoveredBlock199Value0) width: (recoveredBlock199Value7).
    recoveredBlock199Value8
].
            recoveredPC := 231.
        ].
        recoveredStep = 231 ifTrue: [
            recoveredStack1 := (recoveredStack1) createForm: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 233.
        ].
        recoveredStep = 233 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 235.
        ].
        recoveredStep = 235 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 238.
        ].
        recoveredStep = 238 ifTrue: [
            recoveredStack1 := recoveredLocal8.
            recoveredPC := 241.
        ].
        recoveredStep = 241 ifTrue: [
            recoveredStack2 := 'aForm2'.
            recoveredPC := 243.
        ].
        recoveredStep = 243 ifTrue: [
            recoveredStack3 := recoveredLocal2.
            recoveredPC := 246.
        ].
        recoveredStep = 246 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 248.
        ].
        recoveredStep = 248 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 251.
        ].
        recoveredStep = 251 ifTrue: [
            recoveredStack2 := [:recoveredBlock251Arg1 | 
    | recoveredBlock251Value0 recoveredBlock251Value1 recoveredBlock251Value2 |
    recoveredBlock251Value0 := recoveredBlock251Arg1.
    recoveredBlock251Value1 := recoveredLocal3.
    recoveredBlock251Value2 := (recoveredBlock251Value0) workWindow: (recoveredBlock251Value1).
    recoveredBlock251Value2
].
            recoveredPC := 265.
        ].
        recoveredStep = 265 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 267.
        ].
        recoveredStep = 267 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 270.
        ].
        recoveredStep = 270 ifTrue: [
            recoveredStack2 := [:block28116c20Arg1 | 
    | block28116c20Value0 block28116c20Value1 block28116c20Value2 block28116c20Value3 block28116c20Value4 block28116c20Value5 block28116c20Value6 block28116c20Value7 block28116c20Value8 |
    block28116c20Value0 := block28116c20Arg1.
    block28116c20Value1 := block28116c20Value0.
    block28116c20Value2 := XmATTACHFORM.
    (block28116c20Value1) bottomAttachment: (block28116c20Value2).
    block28116c20Value3 := block28116c20Value0.
    block28116c20Value4 := XmATTACHFORM.
    (block28116c20Value3) topAttachment: (block28116c20Value4).
    block28116c20Value5 := block28116c20Value0.
    block28116c20Value6 := XmATTACHFORM.
    (block28116c20Value5) leftAttachment: (block28116c20Value6).
    block28116c20Value7 := XmATTACHFORM.
    block28116c20Value8 := (block28116c20Value0) rightAttachment: (block28116c20Value7).
    block28116c20Value8
].
            recoveredPC := 272.
        ].
        recoveredStep = 272 ifTrue: [
            recoveredPC := 297.
        ].
        recoveredStep = 297 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 299.
        ].
        recoveredStep = 299 ifTrue: [
            recoveredStack1 := Array.
            recoveredPC := 301.
        ].
        recoveredStep = 301 ifTrue: [
            recoveredStack2 := recoveredLocal8.
            recoveredPC := 304.
        ].
        recoveredStep = 304 ifTrue: [
            recoveredStack3 := recoveredLocal4.
            recoveredPC := 307.
        ].
        recoveredStep = 307 ifTrue: [
            recoveredStack1 := (recoveredStack1) with: (recoveredStack2) with: (recoveredStack3).
            recoveredPC := 309.
        ].
        recoveredStep = 309 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x20626ed4; bytecode file offset 0xf23890"
!RBNumericMeasureDataWindow methodsFor: 'recovered'!
createDataMenu
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredStack7 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := CwMenu.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) defaultMenuClass.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack3 := MTOptions.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack2) title: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack3 := 'menuSetup'.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack4 := DisplaySetup.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack5 := Dots.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack4 := (recoveredStack4) , (recoveredStack5).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack5 := [
    | recoveredBlock22Value0 recoveredBlock22Value1 recoveredBlock22Value2 |
    recoveredBlock22Value0 := selectedWidgets.
    recoveredBlock22Value1 := (recoveredBlock22Value0) isEmpty.
    recoveredBlock22Value2 := (recoveredBlock22Value1) not.
    recoveredBlock22Value2
].
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            (recoveredStack2) add: (recoveredStack3) label: (recoveredStack4) enable: (recoveredStack5).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack3 := 'menuSetup'.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack4 := CwAccelerator.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack5 := ControlMask.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack6 := XKS.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack4 := (recoveredStack4) mask: (recoveredStack5) keysym: (recoveredStack6).
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack5 := 'Ctrl+S'.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            (recoveredStack2) setAcceleratorAt: (recoveredStack3) to: (recoveredStack4) text: (recoveredStack5).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack3 := 'menuChangeToPhysRepresentation'.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack4 := PhysDisplay.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack5 := [
    | recoveredBlock56Value0 recoveredBlock56Value1 recoveredBlock56Value2 |
    recoveredBlock56Value0 := selectedWidgets.
    recoveredBlock56Value1 := (recoveredBlock56Value0) isEmpty.
    recoveredBlock56Value2 := (recoveredBlock56Value1) not.
    recoveredBlock56Value2
].
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack6 := [
    | recoveredBlock68Stack0 recoveredBlock68Stack1 recoveredBlock68Stack2 recoveredBlock68PC recoveredBlock68Step recoveredBlock68Done recoveredBlock68Result |
    recoveredBlock68Stack0 := self.
    recoveredBlock68PC := 74.
    recoveredBlock68Done := false.
    [recoveredBlock68Done not] whileTrue: [
        recoveredBlock68Step := recoveredBlock68PC.
        recoveredBlock68Step = 74 ifTrue: [
            recoveredBlock68Stack1 := selectedWidgets.
            recoveredBlock68PC := 76.
        ].
        recoveredBlock68Step = 76 ifTrue: [
            recoveredBlock68Stack1 := (recoveredBlock68Stack1) isEmpty.
            recoveredBlock68PC := 78.
        ].
        recoveredBlock68Step = 78 ifTrue: [
            (recoveredBlock68Stack1) ifTrue: [recoveredBlock68PC := 82] ifFalse: [recoveredBlock68PC := 86].
        ].
        recoveredBlock68Step = 82 ifTrue: [
            recoveredBlock68Stack1 := false.
            recoveredBlock68PC := 83.
        ].
        recoveredBlock68Step = 83 ifTrue: [
            recoveredBlock68PC := 92.
        ].
        recoveredBlock68Step = 86 ifTrue: [
            recoveredBlock68Stack1 := selectedWidgets.
            recoveredBlock68PC := 88.
        ].
        recoveredBlock68Step = 88 ifTrue: [
            recoveredBlock68Stack1 := (recoveredBlock68Stack1) first.
            recoveredBlock68PC := 90.
        ].
        recoveredBlock68Step = 90 ifTrue: [
            recoveredBlock68Stack1 := (recoveredBlock68Stack1) isPhysRepresentation.
            recoveredBlock68PC := 92.
        ].
        recoveredBlock68Step = 92 ifTrue: [
            recoveredBlock68Result := recoveredBlock68Stack1.
            recoveredBlock68Done := true.
        ].
    ].
    recoveredBlock68Result
].
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            (recoveredStack2) add: (recoveredStack3) label: (recoveredStack4) enable: (recoveredStack5) toggle: (recoveredStack6).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack3 := 'menuChangeToPhysRepresentation'.
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack4 := CwAccelerator.
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack5 := ControlMask.
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            recoveredStack6 := XKP.
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            recoveredStack4 := (recoveredStack4) mask: (recoveredStack5) keysym: (recoveredStack6).
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            recoveredStack5 := 'Ctrl+P'.
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            (recoveredStack2) setAcceleratorAt: (recoveredStack3) to: (recoveredStack4) text: (recoveredStack5).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            recoveredStack3 := 'menuChangeToHexRepresentation'.
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            recoveredStack4 := HexDisplay.
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            recoveredStack5 := [
    | recoveredBlock115Value0 recoveredBlock115Value1 recoveredBlock115Value2 |
    recoveredBlock115Value0 := selectedWidgets.
    recoveredBlock115Value1 := (recoveredBlock115Value0) isEmpty.
    recoveredBlock115Value2 := (recoveredBlock115Value1) not.
    recoveredBlock115Value2
].
            recoveredPC := 128.
        ].
        recoveredStep = 128 ifTrue: [
            recoveredStack6 := [
    | recoveredBlock128Stack0 recoveredBlock128Stack1 recoveredBlock128Stack2 recoveredBlock128PC recoveredBlock128Step recoveredBlock128Done recoveredBlock128Result |
    recoveredBlock128Stack0 := self.
    recoveredBlock128PC := 134.
    recoveredBlock128Done := false.
    [recoveredBlock128Done not] whileTrue: [
        recoveredBlock128Step := recoveredBlock128PC.
        recoveredBlock128Step = 134 ifTrue: [
            recoveredBlock128Stack1 := selectedWidgets.
            recoveredBlock128PC := 136.
        ].
        recoveredBlock128Step = 136 ifTrue: [
            recoveredBlock128Stack1 := (recoveredBlock128Stack1) isEmpty.
            recoveredBlock128PC := 138.
        ].
        recoveredBlock128Step = 138 ifTrue: [
            (recoveredBlock128Stack1) ifTrue: [recoveredBlock128PC := 142] ifFalse: [recoveredBlock128PC := 146].
        ].
        recoveredBlock128Step = 142 ifTrue: [
            recoveredBlock128Stack1 := false.
            recoveredBlock128PC := 143.
        ].
        recoveredBlock128Step = 143 ifTrue: [
            recoveredBlock128PC := 152.
        ].
        recoveredBlock128Step = 146 ifTrue: [
            recoveredBlock128Stack1 := selectedWidgets.
            recoveredBlock128PC := 148.
        ].
        recoveredBlock128Step = 148 ifTrue: [
            recoveredBlock128Stack1 := (recoveredBlock128Stack1) first.
            recoveredBlock128PC := 150.
        ].
        recoveredBlock128Step = 150 ifTrue: [
            recoveredBlock128Stack1 := (recoveredBlock128Stack1) isHexRepresentation.
            recoveredBlock128PC := 152.
        ].
        recoveredBlock128Step = 152 ifTrue: [
            recoveredBlock128Result := recoveredBlock128Stack1.
            recoveredBlock128Done := true.
        ].
    ].
    recoveredBlock128Result
].
            recoveredPC := 153.
        ].
        recoveredStep = 153 ifTrue: [
            (recoveredStack2) add: (recoveredStack3) label: (recoveredStack4) enable: (recoveredStack5) toggle: (recoveredStack6).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 156.
        ].
        recoveredStep = 156 ifTrue: [
            recoveredStack3 := 'menuChangeToHexRepresentation'.
            recoveredPC := 158.
        ].
        recoveredStep = 158 ifTrue: [
            recoveredStack4 := CwAccelerator.
            recoveredPC := 160.
        ].
        recoveredStep = 160 ifTrue: [
            recoveredStack5 := ControlMask.
            recoveredPC := 162.
        ].
        recoveredStep = 162 ifTrue: [
            recoveredStack6 := XKH.
            recoveredPC := 164.
        ].
        recoveredStep = 164 ifTrue: [
            recoveredStack4 := (recoveredStack4) mask: (recoveredStack5) keysym: (recoveredStack6).
            recoveredPC := 166.
        ].
        recoveredStep = 166 ifTrue: [
            recoveredStack5 := 'Ctrl+H'.
            recoveredPC := 168.
        ].
        recoveredStep = 168 ifTrue: [
            (recoveredStack2) setAcceleratorAt: (recoveredStack3) to: (recoveredStack4) text: (recoveredStack5).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 171.
        ].
        recoveredStep = 171 ifTrue: [
            recoveredStack3 := 'menuChangeToDezRepresentation'.
            recoveredPC := 173.
        ].
        recoveredStep = 173 ifTrue: [
            recoveredStack4 := MPDezDisplay.
            recoveredPC := 175.
        ].
        recoveredStep = 175 ifTrue: [
            recoveredStack5 := [
    | recoveredBlock175Value0 recoveredBlock175Value1 recoveredBlock175Value2 |
    recoveredBlock175Value0 := selectedWidgets.
    recoveredBlock175Value1 := (recoveredBlock175Value0) isEmpty.
    recoveredBlock175Value2 := (recoveredBlock175Value1) not.
    recoveredBlock175Value2
].
            recoveredPC := 188.
        ].
        recoveredStep = 188 ifTrue: [
            recoveredStack6 := [
    | recoveredBlock188Stack0 recoveredBlock188Stack1 recoveredBlock188Stack2 recoveredBlock188PC recoveredBlock188Step recoveredBlock188Done recoveredBlock188Result |
    recoveredBlock188Stack0 := self.
    recoveredBlock188PC := 194.
    recoveredBlock188Done := false.
    [recoveredBlock188Done not] whileTrue: [
        recoveredBlock188Step := recoveredBlock188PC.
        recoveredBlock188Step = 194 ifTrue: [
            recoveredBlock188Stack1 := selectedWidgets.
            recoveredBlock188PC := 196.
        ].
        recoveredBlock188Step = 196 ifTrue: [
            recoveredBlock188Stack1 := (recoveredBlock188Stack1) isEmpty.
            recoveredBlock188PC := 198.
        ].
        recoveredBlock188Step = 198 ifTrue: [
            (recoveredBlock188Stack1) ifTrue: [recoveredBlock188PC := 202] ifFalse: [recoveredBlock188PC := 206].
        ].
        recoveredBlock188Step = 202 ifTrue: [
            recoveredBlock188Stack1 := false.
            recoveredBlock188PC := 203.
        ].
        recoveredBlock188Step = 203 ifTrue: [
            recoveredBlock188PC := 212.
        ].
        recoveredBlock188Step = 206 ifTrue: [
            recoveredBlock188Stack1 := selectedWidgets.
            recoveredBlock188PC := 208.
        ].
        recoveredBlock188Step = 208 ifTrue: [
            recoveredBlock188Stack1 := (recoveredBlock188Stack1) first.
            recoveredBlock188PC := 210.
        ].
        recoveredBlock188Step = 210 ifTrue: [
            recoveredBlock188Stack1 := (recoveredBlock188Stack1) isDezRepresentation.
            recoveredBlock188PC := 212.
        ].
        recoveredBlock188Step = 212 ifTrue: [
            recoveredBlock188Result := recoveredBlock188Stack1.
            recoveredBlock188Done := true.
        ].
    ].
    recoveredBlock188Result
].
            recoveredPC := 213.
        ].
        recoveredStep = 213 ifTrue: [
            (recoveredStack2) add: (recoveredStack3) label: (recoveredStack4) enable: (recoveredStack5) toggle: (recoveredStack6).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 216.
        ].
        recoveredStep = 216 ifTrue: [
            recoveredStack3 := 'menuChangeToDezRepresentation'.
            recoveredPC := 218.
        ].
        recoveredStep = 218 ifTrue: [
            recoveredStack4 := CwAccelerator.
            recoveredPC := 220.
        ].
        recoveredStep = 220 ifTrue: [
            recoveredStack5 := ControlMask.
            recoveredPC := 222.
        ].
        recoveredStep = 222 ifTrue: [
            recoveredStack6 := XKZ.
            recoveredPC := 224.
        ].
        recoveredStep = 224 ifTrue: [
            recoveredStack4 := (recoveredStack4) mask: (recoveredStack5) keysym: (recoveredStack6).
            recoveredPC := 226.
        ].
        recoveredStep = 226 ifTrue: [
            recoveredStack5 := 'Ctrl+Z'.
            recoveredPC := 228.
        ].
        recoveredStep = 228 ifTrue: [
            (recoveredStack2) setAcceleratorAt: (recoveredStack3) to: (recoveredStack4) text: (recoveredStack5).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 231.
        ].
        recoveredStep = 231 ifTrue: [
            recoveredStack3 := 'menuChangeToBinRepresentation'.
            recoveredPC := 233.
        ].
        recoveredStep = 233 ifTrue: [
            recoveredStack4 := MPBinDisplay.
            recoveredPC := 235.
        ].
        recoveredStep = 235 ifTrue: [
            recoveredStack5 := [
    | recoveredBlock235Value0 recoveredBlock235Value1 recoveredBlock235Value2 |
    recoveredBlock235Value0 := selectedWidgets.
    recoveredBlock235Value1 := (recoveredBlock235Value0) isEmpty.
    recoveredBlock235Value2 := (recoveredBlock235Value1) not.
    recoveredBlock235Value2
].
            recoveredPC := 248.
        ].
        recoveredStep = 248 ifTrue: [
            recoveredStack6 := [
    | recoveredBlock248Stack0 recoveredBlock248Stack1 recoveredBlock248Stack2 recoveredBlock248PC recoveredBlock248Step recoveredBlock248Done recoveredBlock248Result |
    recoveredBlock248Stack0 := self.
    recoveredBlock248PC := 254.
    recoveredBlock248Done := false.
    [recoveredBlock248Done not] whileTrue: [
        recoveredBlock248Step := recoveredBlock248PC.
        recoveredBlock248Step = 254 ifTrue: [
            recoveredBlock248Stack1 := selectedWidgets.
            recoveredBlock248PC := 256.
        ].
        recoveredBlock248Step = 256 ifTrue: [
            recoveredBlock248Stack1 := (recoveredBlock248Stack1) isEmpty.
            recoveredBlock248PC := 258.
        ].
        recoveredBlock248Step = 258 ifTrue: [
            (recoveredBlock248Stack1) ifTrue: [recoveredBlock248PC := 262] ifFalse: [recoveredBlock248PC := 266].
        ].
        recoveredBlock248Step = 262 ifTrue: [
            recoveredBlock248Stack1 := false.
            recoveredBlock248PC := 263.
        ].
        recoveredBlock248Step = 263 ifTrue: [
            recoveredBlock248PC := 272.
        ].
        recoveredBlock248Step = 266 ifTrue: [
            recoveredBlock248Stack1 := selectedWidgets.
            recoveredBlock248PC := 268.
        ].
        recoveredBlock248Step = 268 ifTrue: [
            recoveredBlock248Stack1 := (recoveredBlock248Stack1) first.
            recoveredBlock248PC := 270.
        ].
        recoveredBlock248Step = 270 ifTrue: [
            recoveredBlock248Stack1 := (recoveredBlock248Stack1) isBinRepresentation.
            recoveredBlock248PC := 272.
        ].
        recoveredBlock248Step = 272 ifTrue: [
            recoveredBlock248Result := recoveredBlock248Stack1.
            recoveredBlock248Done := true.
        ].
    ].
    recoveredBlock248Result
].
            recoveredPC := 273.
        ].
        recoveredStep = 273 ifTrue: [
            (recoveredStack2) add: (recoveredStack3) label: (recoveredStack4) enable: (recoveredStack5) toggle: (recoveredStack6).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 276.
        ].
        recoveredStep = 276 ifTrue: [
            recoveredStack3 := 'menuChangeToBinRepresentation'.
            recoveredPC := 278.
        ].
        recoveredStep = 278 ifTrue: [
            recoveredStack4 := CwAccelerator.
            recoveredPC := 280.
        ].
        recoveredStep = 280 ifTrue: [
            recoveredStack5 := ControlMask.
            recoveredPC := 282.
        ].
        recoveredStep = 282 ifTrue: [
            recoveredStack6 := XKB.
            recoveredPC := 284.
        ].
        recoveredStep = 284 ifTrue: [
            recoveredStack4 := (recoveredStack4) mask: (recoveredStack5) keysym: (recoveredStack6).
            recoveredPC := 286.
        ].
        recoveredStep = 286 ifTrue: [
            recoveredStack5 := 'Ctrl+B'.
            recoveredPC := 288.
        ].
        recoveredStep = 288 ifTrue: [
            (recoveredStack2) setAcceleratorAt: (recoveredStack3) to: (recoveredStack4) text: (recoveredStack5).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 291.
        ].
        recoveredStep = 291 ifTrue: [
            (recoveredStack2) addLine.
            recoveredStack2 := recoveredStack1.
            recoveredPC := 294.
        ].
        recoveredStep = 294 ifTrue: [
            recoveredStack3 := 'menuFontToggle'.
            recoveredPC := 296.
        ].
        recoveredStep = 296 ifTrue: [
            recoveredStack4 := '~Larger font'.
            recoveredPC := 298.
        ].
        recoveredStep = 298 ifTrue: [
            recoveredStack5 := [
    true
].
            recoveredPC := 300.
        ].
        recoveredStep = 300 ifTrue: [
            recoveredPC := 306.
        ].
        recoveredStep = 306 ifTrue: [
            recoveredStack6 := [
    | recoveredBlock306Value0 recoveredBlock306Value1 recoveredBlock306Value2 |
    recoveredBlock306Value0 := subWidgets.
    recoveredBlock306Value1 := (recoveredBlock306Value0) first.
    recoveredBlock306Value2 := (recoveredBlock306Value1) isLargeFont.
    recoveredBlock306Value2
].
            recoveredPC := 319.
        ].
        recoveredStep = 319 ifTrue: [
            (recoveredStack2) add: (recoveredStack3) label: (recoveredStack4) enable: (recoveredStack5) toggle: (recoveredStack6).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 322.
        ].
        recoveredStep = 322 ifTrue: [
            (recoveredStack2) addLine.
            recoveredStack2 := recoveredStack1.
            recoveredPC := 325.
        ].
        recoveredStep = 325 ifTrue: [
            recoveredStack3 := 'menuCopyData'.
            recoveredPC := 327.
        ].
        recoveredStep = 327 ifTrue: [
            recoveredStack4 := MPCopyDataToWindow.
            recoveredPC := 329.
        ].
        recoveredStep = 329 ifTrue: [
            recoveredStack5 := Dots.
            recoveredPC := 331.
        ].
        recoveredStep = 331 ifTrue: [
            recoveredStack4 := (recoveredStack4) , (recoveredStack5).
            recoveredPC := 333.
        ].
        recoveredStep = 333 ifTrue: [
            recoveredStack5 := [
    | recoveredBlock333Value0 recoveredBlock333Value1 recoveredBlock333Value2 recoveredBlock333Value3 recoveredBlock333Value4 recoveredBlock333Value5 recoveredBlock333Value6 recoveredBlock333Value7 recoveredBlock333Value8 recoveredBlock333Value9 recoveredBlock333Value10 recoveredBlock333Value11 recoveredBlock333Value12 |
    recoveredBlock333Value0 := selectedWidgets.
    recoveredBlock333Value1 := (recoveredBlock333Value0) isEmpty.
    recoveredBlock333Value2 := (recoveredBlock333Value1) not.
    recoveredBlock333Value3 := (self) dataManager.
    recoveredBlock333Value4 := (recoveredBlock333Value3) isOnlineInDevices.
    recoveredBlock333Value5 := (recoveredBlock333Value4) not.
    recoveredBlock333Value6 := (self) dataManager.
    recoveredBlock333Value7 := (recoveredBlock333Value6) canAddRemoveDataDuringAcquisition.
    recoveredBlock333Value8 := (recoveredBlock333Value5) | (recoveredBlock333Value7).
    recoveredBlock333Value9 := (self) dataManager.
    recoveredBlock333Value10 := (recoveredBlock333Value9) autoStartingAcquisitionMode.
    recoveredBlock333Value11 := (recoveredBlock333Value8) | (recoveredBlock333Value10).
    recoveredBlock333Value12 := (recoveredBlock333Value2) & (recoveredBlock333Value11).
    recoveredBlock333Value12
].
            recoveredPC := 368.
        ].
        recoveredStep = 368 ifTrue: [
            (recoveredStack2) add: (recoveredStack3) label: (recoveredStack4) enable: (recoveredStack5).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 371.
        ].
        recoveredStep = 371 ifTrue: [
            recoveredStack3 := 'menuMoveData'.
            recoveredPC := 373.
        ].
        recoveredStep = 373 ifTrue: [
            recoveredStack4 := MPMoveDataToWindow.
            recoveredPC := 375.
        ].
        recoveredStep = 375 ifTrue: [
            recoveredStack5 := Dots.
            recoveredPC := 377.
        ].
        recoveredStep = 377 ifTrue: [
            recoveredStack4 := (recoveredStack4) , (recoveredStack5).
            recoveredPC := 379.
        ].
        recoveredStep = 379 ifTrue: [
            recoveredStack5 := [
    | recoveredBlock379Value0 recoveredBlock379Value1 recoveredBlock379Value2 recoveredBlock379Value3 recoveredBlock379Value4 recoveredBlock379Value5 recoveredBlock379Value6 recoveredBlock379Value7 recoveredBlock379Value8 recoveredBlock379Value9 recoveredBlock379Value10 recoveredBlock379Value11 recoveredBlock379Value12 |
    recoveredBlock379Value0 := selectedWidgets.
    recoveredBlock379Value1 := (recoveredBlock379Value0) isEmpty.
    recoveredBlock379Value2 := (recoveredBlock379Value1) not.
    recoveredBlock379Value3 := (self) dataManager.
    recoveredBlock379Value4 := (recoveredBlock379Value3) isOnlineInDevices.
    recoveredBlock379Value5 := (recoveredBlock379Value4) not.
    recoveredBlock379Value6 := (self) dataManager.
    recoveredBlock379Value7 := (recoveredBlock379Value6) canAddRemoveDataDuringAcquisition.
    recoveredBlock379Value8 := (recoveredBlock379Value5) | (recoveredBlock379Value7).
    recoveredBlock379Value9 := (self) dataManager.
    recoveredBlock379Value10 := (recoveredBlock379Value9) autoStartingAcquisitionMode.
    recoveredBlock379Value11 := (recoveredBlock379Value8) | (recoveredBlock379Value10).
    recoveredBlock379Value12 := (recoveredBlock379Value2) & (recoveredBlock379Value11).
    recoveredBlock379Value12
].
            recoveredPC := 414.
        ].
        recoveredStep = 414 ifTrue: [
            (recoveredStack2) add: (recoveredStack3) label: (recoveredStack4) enable: (recoveredStack5).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 417.
        ].
        recoveredStep = 417 ifTrue: [
            recoveredStack3 := 'menuRemoveData'.
            recoveredPC := 419.
        ].
        recoveredStep = 419 ifTrue: [
            recoveredStack4 := MPRemoveData.
            recoveredPC := 421.
        ].
        recoveredStep = 421 ifTrue: [
            recoveredStack5 := [
    | recoveredBlock421Value0 recoveredBlock421Value1 recoveredBlock421Value2 recoveredBlock421Value3 recoveredBlock421Value4 recoveredBlock421Value5 recoveredBlock421Value6 recoveredBlock421Value7 recoveredBlock421Value8 recoveredBlock421Value9 recoveredBlock421Value10 recoveredBlock421Value11 recoveredBlock421Value12 |
    recoveredBlock421Value0 := selectedWidgets.
    recoveredBlock421Value1 := (recoveredBlock421Value0) isEmpty.
    recoveredBlock421Value2 := (recoveredBlock421Value1) not.
    recoveredBlock421Value3 := (self) dataManager.
    recoveredBlock421Value4 := (recoveredBlock421Value3) isOnlineInDevices.
    recoveredBlock421Value5 := (recoveredBlock421Value4) not.
    recoveredBlock421Value6 := (self) dataManager.
    recoveredBlock421Value7 := (recoveredBlock421Value6) canAddRemoveDataDuringAcquisition.
    recoveredBlock421Value8 := (recoveredBlock421Value5) | (recoveredBlock421Value7).
    recoveredBlock421Value9 := (self) dataManager.
    recoveredBlock421Value10 := (recoveredBlock421Value9) autoStartingAcquisitionMode.
    recoveredBlock421Value11 := (recoveredBlock421Value8) | (recoveredBlock421Value10).
    recoveredBlock421Value12 := (recoveredBlock421Value2) & (recoveredBlock421Value11).
    recoveredBlock421Value12
].
            recoveredPC := 456.
        ].
        recoveredStep = 456 ifTrue: [
            (recoveredStack2) add: (recoveredStack3) label: (recoveredStack4) enable: (recoveredStack5).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 459.
        ].
        recoveredStep = 459 ifTrue: [
            (recoveredStack2) addLine.
            recoveredStack2 := recoveredStack1.
            recoveredPC := 462.
        ].
        recoveredStep = 462 ifTrue: [
            recoveredStack3 := 'menuChangeChannelGroup'.
            recoveredPC := 464.
        ].
        recoveredStep = 464 ifTrue: [
            recoveredStack4 := MPChangeMeasureRaster.
            recoveredPC := 468.
        ].
        recoveredStep = 468 ifTrue: [
            recoveredStack5 := Dots.
            recoveredPC := 470.
        ].
        recoveredStep = 470 ifTrue: [
            recoveredStack4 := (recoveredStack4) , (recoveredStack5).
            recoveredPC := 472.
        ].
        recoveredStep = 472 ifTrue: [
            recoveredStack5 := [
    | recoveredBlock472Value0 recoveredBlock472Value1 recoveredBlock472Value2 recoveredBlock472Value3 recoveredBlock472Value4 recoveredBlock472Value5 recoveredBlock472Value6 recoveredBlock472Value7 recoveredBlock472Value8 recoveredBlock472Value9 recoveredBlock472Value10 recoveredBlock472Value11 |
    recoveredBlock472Value0 := selectedWidgets.
    recoveredBlock472Value1 := (recoveredBlock472Value0) notEmpty.
    recoveredBlock472Value2 := (self) dataManager.
    recoveredBlock472Value3 := (recoveredBlock472Value2) isOnlineInDevices.
    recoveredBlock472Value4 := (recoveredBlock472Value3) not.
    recoveredBlock472Value5 := (self) dataManager.
    recoveredBlock472Value6 := (recoveredBlock472Value5) autoStartingAcquisitionMode.
    recoveredBlock472Value7 := (recoveredBlock472Value4) | (recoveredBlock472Value6).
    recoveredBlock472Value8 := (recoveredBlock472Value1) & (recoveredBlock472Value7).
    recoveredBlock472Value9 := (self) dataManager.
    recoveredBlock472Value10 := (recoveredBlock472Value9) canChangeChannelGroup.
    recoveredBlock472Value11 := (recoveredBlock472Value8) & (recoveredBlock472Value10).
    recoveredBlock472Value11
].
            recoveredPC := 510.
        ].
        recoveredStep = 510 ifTrue: [
            (recoveredStack2) add: (recoveredStack3) label: (recoveredStack4) enable: (recoveredStack5).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 513.
        ].
        recoveredStep = 513 ifTrue: [
            (recoveredStack2) addLine.
            recoveredStack2 := recoveredStack1.
            recoveredPC := 516.
        ].
        recoveredStep = 516 ifTrue: [
            recoveredStack3 := 'menuInfo'.
            recoveredPC := 520.
        ].
        recoveredStep = 520 ifTrue: [
            recoveredStack4 := MPInfoAbout.
            recoveredPC := 524.
        ].
        recoveredStep = 524 ifTrue: [
            recoveredStack5 := Dots.
            recoveredPC := 526.
        ].
        recoveredStep = 526 ifTrue: [
            recoveredStack4 := (recoveredStack4) , (recoveredStack5).
            recoveredPC := 528.
        ].
        recoveredStep = 528 ifTrue: [
            recoveredStack5 := [
    | recoveredBlock528Value0 recoveredBlock528Value1 recoveredBlock528Value2 |
    recoveredBlock528Value0 := selectedWidgets.
    recoveredBlock528Value1 := (recoveredBlock528Value0) isEmpty.
    recoveredBlock528Value2 := (recoveredBlock528Value1) not.
    recoveredBlock528Value2
].
            recoveredPC := 540.
        ].
        recoveredStep = 540 ifTrue: [
            (recoveredStack2) add: (recoveredStack3) label: (recoveredStack4) enable: (recoveredStack5).
            recoveredPC := 543.
        ].
        recoveredStep = 543 ifTrue: [
            recoveredStack2 := 'menuInfo'.
            recoveredPC := 546.
        ].
        recoveredStep = 546 ifTrue: [
            recoveredStack3 := CwAccelerator.
            recoveredPC := 548.
        ].
        recoveredStep = 548 ifTrue: [
            recoveredStack4 := ControlMask.
            recoveredPC := 550.
        ].
        recoveredStep = 550 ifTrue: [
            recoveredStack5 := XKI.
            recoveredPC := 554.
        ].
        recoveredStep = 554 ifTrue: [
            recoveredStack3 := (recoveredStack3) mask: (recoveredStack4) keysym: (recoveredStack5).
            recoveredPC := 556.
        ].
        recoveredStep = 556 ifTrue: [
            recoveredStack4 := 'Ctrl+I'.
            recoveredPC := 560.
        ].
        recoveredStep = 560 ifTrue: [
            recoveredStack1 := (recoveredStack1) setAcceleratorAt: (recoveredStack2) to: (recoveredStack3) text: (recoveredStack4).
            recoveredPC := 563.
        ].
        recoveredStep = 563 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 564.
        ].
        recoveredStep = 564 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 565.
        ].
        recoveredStep = 565 ifTrue: [
            (recoveredStack0) addAttributeBufferMenu: (recoveredStack1).
            recoveredPC := 569.
        ].
        recoveredStep = 569 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 570.
        ].
        recoveredStep = 570 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 571.
        ].
        recoveredStep = 571 ifTrue: [
            (recoveredStack0) addMoveSubwidgetMenu: (recoveredStack1).
            recoveredPC := 575.
        ].
        recoveredStep = 575 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 576.
        ].
        recoveredStep = 576 ifTrue: [
            recoveredPC := 577.
        ].
        recoveredStep = 577 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 578.
        ].
        recoveredStep = 578 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20630bb0; bytecode file offset 0xf2d588"
!RBNumericMeasureDataWindow methodsFor: 'recovered'!
createOptionsMenu
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := CwMenu.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) defaultMenuClass.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack2 := MTExtras.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := (recoveredStack1) title: (recoveredStack2).
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack0) addDebugMenuItems: (recoveredStack1).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack2 := 'menuChangeTitle'.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack3 := ChangeTitle.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack4 := Dots.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack3 := (recoveredStack3) , (recoveredStack4).
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack4 := [
    true
].
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            (recoveredStack1) add: (recoveredStack2) label: (recoveredStack3) enable: (recoveredStack4).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack2 := 'menuTogglePopupWhenLimitsExceeded'.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack3 := '~Message when out of bounds'.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack4 := [
    true
].
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack5 := [
    | block2812019cValue0 block2812019cValue1 block2812019cValue2 |
    block2812019cValue0 := ASDMeasureEditorOptions.
    block2812019cValue1 := (block2812019cValue0) instance.
    block2812019cValue2 := (block2812019cValue1) optionMeasureScalarEditorShowOverflowMessage.
    block2812019cValue2
].
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            (recoveredStack1) add: (recoveredStack2) label: (recoveredStack3) enable: (recoveredStack4) toggle: (recoveredStack5).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            (recoveredStack1) addLine.
            recoveredStack1 := recoveredStack0.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack2 := 'menuSetup'.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack3 := DisplaySetup.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack4 := Dots.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack3 := (recoveredStack3) , (recoveredStack4).
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack4 := [
    | recoveredBlock75Value0 recoveredBlock75Value1 recoveredBlock75Value2 |
    recoveredBlock75Value0 := selectedWidgets.
    recoveredBlock75Value1 := (recoveredBlock75Value0) isEmpty.
    recoveredBlock75Value2 := (recoveredBlock75Value1) not.
    recoveredBlock75Value2
].
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            (recoveredStack1) add: (recoveredStack2) label: (recoveredStack3) enable: (recoveredStack4).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredStack2 := 'menuSetup'.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredStack3 := CwAccelerator.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredStack4 := ControlMask.
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            recoveredStack5 := XKS.
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            recoveredStack3 := (recoveredStack3) mask: (recoveredStack4) keysym: (recoveredStack5).
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            recoveredStack4 := 'Ctrl+S'.
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            (recoveredStack1) setAcceleratorAt: (recoveredStack2) to: (recoveredStack3) text: (recoveredStack4).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            recoveredStack2 := 'menuChangeToPhysRepresentation'.
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            recoveredStack3 := PhysDisplay.
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            recoveredStack4 := [
    | recoveredBlock110Value0 recoveredBlock110Value1 recoveredBlock110Value2 |
    recoveredBlock110Value0 := selectedWidgets.
    recoveredBlock110Value1 := (recoveredBlock110Value0) isEmpty.
    recoveredBlock110Value2 := (recoveredBlock110Value1) not.
    recoveredBlock110Value2
].
            recoveredPC := 122.
        ].
        recoveredStep = 122 ifTrue: [
            recoveredStack5 := [
    | recoveredBlock122Stack0 recoveredBlock122Stack1 recoveredBlock122Stack2 recoveredBlock122PC recoveredBlock122Step recoveredBlock122Done recoveredBlock122Result |
    recoveredBlock122Stack0 := self.
    recoveredBlock122PC := 128.
    recoveredBlock122Done := false.
    [recoveredBlock122Done not] whileTrue: [
        recoveredBlock122Step := recoveredBlock122PC.
        recoveredBlock122Step = 128 ifTrue: [
            recoveredBlock122Stack1 := selectedWidgets.
            recoveredBlock122PC := 130.
        ].
        recoveredBlock122Step = 130 ifTrue: [
            recoveredBlock122Stack1 := (recoveredBlock122Stack1) isEmpty.
            recoveredBlock122PC := 132.
        ].
        recoveredBlock122Step = 132 ifTrue: [
            (recoveredBlock122Stack1) ifTrue: [recoveredBlock122PC := 136] ifFalse: [recoveredBlock122PC := 140].
        ].
        recoveredBlock122Step = 136 ifTrue: [
            recoveredBlock122Stack1 := false.
            recoveredBlock122PC := 137.
        ].
        recoveredBlock122Step = 137 ifTrue: [
            recoveredBlock122PC := 146.
        ].
        recoveredBlock122Step = 140 ifTrue: [
            recoveredBlock122Stack1 := selectedWidgets.
            recoveredBlock122PC := 142.
        ].
        recoveredBlock122Step = 142 ifTrue: [
            recoveredBlock122Stack1 := (recoveredBlock122Stack1) first.
            recoveredBlock122PC := 144.
        ].
        recoveredBlock122Step = 144 ifTrue: [
            recoveredBlock122Stack1 := (recoveredBlock122Stack1) isPhysRepresentation.
            recoveredBlock122PC := 146.
        ].
        recoveredBlock122Step = 146 ifTrue: [
            recoveredBlock122Result := recoveredBlock122Stack1.
            recoveredBlock122Done := true.
        ].
    ].
    recoveredBlock122Result
].
            recoveredPC := 147.
        ].
        recoveredStep = 147 ifTrue: [
            (recoveredStack1) add: (recoveredStack2) label: (recoveredStack3) enable: (recoveredStack4) toggle: (recoveredStack5).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 150.
        ].
        recoveredStep = 150 ifTrue: [
            recoveredStack2 := 'menuChangeToPhysRepresentation'.
            recoveredPC := 152.
        ].
        recoveredStep = 152 ifTrue: [
            recoveredStack3 := CwAccelerator.
            recoveredPC := 154.
        ].
        recoveredStep = 154 ifTrue: [
            recoveredStack4 := ControlMask.
            recoveredPC := 156.
        ].
        recoveredStep = 156 ifTrue: [
            recoveredStack5 := XKP.
            recoveredPC := 158.
        ].
        recoveredStep = 158 ifTrue: [
            recoveredStack3 := (recoveredStack3) mask: (recoveredStack4) keysym: (recoveredStack5).
            recoveredPC := 160.
        ].
        recoveredStep = 160 ifTrue: [
            recoveredStack4 := 'Ctrl+P'.
            recoveredPC := 162.
        ].
        recoveredStep = 162 ifTrue: [
            (recoveredStack1) setAcceleratorAt: (recoveredStack2) to: (recoveredStack3) text: (recoveredStack4).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 165.
        ].
        recoveredStep = 165 ifTrue: [
            recoveredStack2 := 'menuChangeToHexRepresentation'.
            recoveredPC := 167.
        ].
        recoveredStep = 167 ifTrue: [
            recoveredStack3 := HexDisplay.
            recoveredPC := 169.
        ].
        recoveredStep = 169 ifTrue: [
            recoveredStack4 := [
    | recoveredBlock169Value0 recoveredBlock169Value1 recoveredBlock169Value2 |
    recoveredBlock169Value0 := selectedWidgets.
    recoveredBlock169Value1 := (recoveredBlock169Value0) isEmpty.
    recoveredBlock169Value2 := (recoveredBlock169Value1) not.
    recoveredBlock169Value2
].
            recoveredPC := 182.
        ].
        recoveredStep = 182 ifTrue: [
            recoveredStack5 := [
    | recoveredBlock182Stack0 recoveredBlock182Stack1 recoveredBlock182Stack2 recoveredBlock182PC recoveredBlock182Step recoveredBlock182Done recoveredBlock182Result |
    recoveredBlock182Stack0 := self.
    recoveredBlock182PC := 188.
    recoveredBlock182Done := false.
    [recoveredBlock182Done not] whileTrue: [
        recoveredBlock182Step := recoveredBlock182PC.
        recoveredBlock182Step = 188 ifTrue: [
            recoveredBlock182Stack1 := selectedWidgets.
            recoveredBlock182PC := 190.
        ].
        recoveredBlock182Step = 190 ifTrue: [
            recoveredBlock182Stack1 := (recoveredBlock182Stack1) isEmpty.
            recoveredBlock182PC := 192.
        ].
        recoveredBlock182Step = 192 ifTrue: [
            (recoveredBlock182Stack1) ifTrue: [recoveredBlock182PC := 196] ifFalse: [recoveredBlock182PC := 200].
        ].
        recoveredBlock182Step = 196 ifTrue: [
            recoveredBlock182Stack1 := false.
            recoveredBlock182PC := 197.
        ].
        recoveredBlock182Step = 197 ifTrue: [
            recoveredBlock182PC := 206.
        ].
        recoveredBlock182Step = 200 ifTrue: [
            recoveredBlock182Stack1 := selectedWidgets.
            recoveredBlock182PC := 202.
        ].
        recoveredBlock182Step = 202 ifTrue: [
            recoveredBlock182Stack1 := (recoveredBlock182Stack1) first.
            recoveredBlock182PC := 204.
        ].
        recoveredBlock182Step = 204 ifTrue: [
            recoveredBlock182Stack1 := (recoveredBlock182Stack1) isHexRepresentation.
            recoveredBlock182PC := 206.
        ].
        recoveredBlock182Step = 206 ifTrue: [
            recoveredBlock182Result := recoveredBlock182Stack1.
            recoveredBlock182Done := true.
        ].
    ].
    recoveredBlock182Result
].
            recoveredPC := 207.
        ].
        recoveredStep = 207 ifTrue: [
            (recoveredStack1) add: (recoveredStack2) label: (recoveredStack3) enable: (recoveredStack4) toggle: (recoveredStack5).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 210.
        ].
        recoveredStep = 210 ifTrue: [
            recoveredStack2 := 'menuChangeToHexRepresentation'.
            recoveredPC := 212.
        ].
        recoveredStep = 212 ifTrue: [
            recoveredStack3 := CwAccelerator.
            recoveredPC := 214.
        ].
        recoveredStep = 214 ifTrue: [
            recoveredStack4 := ControlMask.
            recoveredPC := 216.
        ].
        recoveredStep = 216 ifTrue: [
            recoveredStack5 := XKH.
            recoveredPC := 218.
        ].
        recoveredStep = 218 ifTrue: [
            recoveredStack3 := (recoveredStack3) mask: (recoveredStack4) keysym: (recoveredStack5).
            recoveredPC := 220.
        ].
        recoveredStep = 220 ifTrue: [
            recoveredStack4 := 'Ctrl+H'.
            recoveredPC := 222.
        ].
        recoveredStep = 222 ifTrue: [
            (recoveredStack1) setAcceleratorAt: (recoveredStack2) to: (recoveredStack3) text: (recoveredStack4).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 225.
        ].
        recoveredStep = 225 ifTrue: [
            recoveredStack2 := 'menuChangeToDezRepresentation'.
            recoveredPC := 227.
        ].
        recoveredStep = 227 ifTrue: [
            recoveredStack3 := MPDezDisplay.
            recoveredPC := 229.
        ].
        recoveredStep = 229 ifTrue: [
            recoveredStack4 := [
    | recoveredBlock229Value0 recoveredBlock229Value1 recoveredBlock229Value2 |
    recoveredBlock229Value0 := selectedWidgets.
    recoveredBlock229Value1 := (recoveredBlock229Value0) isEmpty.
    recoveredBlock229Value2 := (recoveredBlock229Value1) not.
    recoveredBlock229Value2
].
            recoveredPC := 242.
        ].
        recoveredStep = 242 ifTrue: [
            recoveredStack5 := [
    | recoveredBlock242Stack0 recoveredBlock242Stack1 recoveredBlock242Stack2 recoveredBlock242PC recoveredBlock242Step recoveredBlock242Done recoveredBlock242Result |
    recoveredBlock242Stack0 := self.
    recoveredBlock242PC := 248.
    recoveredBlock242Done := false.
    [recoveredBlock242Done not] whileTrue: [
        recoveredBlock242Step := recoveredBlock242PC.
        recoveredBlock242Step = 248 ifTrue: [
            recoveredBlock242Stack1 := selectedWidgets.
            recoveredBlock242PC := 250.
        ].
        recoveredBlock242Step = 250 ifTrue: [
            recoveredBlock242Stack1 := (recoveredBlock242Stack1) isEmpty.
            recoveredBlock242PC := 252.
        ].
        recoveredBlock242Step = 252 ifTrue: [
            (recoveredBlock242Stack1) ifTrue: [recoveredBlock242PC := 256] ifFalse: [recoveredBlock242PC := 260].
        ].
        recoveredBlock242Step = 256 ifTrue: [
            recoveredBlock242Stack1 := false.
            recoveredBlock242PC := 257.
        ].
        recoveredBlock242Step = 257 ifTrue: [
            recoveredBlock242PC := 266.
        ].
        recoveredBlock242Step = 260 ifTrue: [
            recoveredBlock242Stack1 := selectedWidgets.
            recoveredBlock242PC := 262.
        ].
        recoveredBlock242Step = 262 ifTrue: [
            recoveredBlock242Stack1 := (recoveredBlock242Stack1) first.
            recoveredBlock242PC := 264.
        ].
        recoveredBlock242Step = 264 ifTrue: [
            recoveredBlock242Stack1 := (recoveredBlock242Stack1) isDezRepresentation.
            recoveredBlock242PC := 266.
        ].
        recoveredBlock242Step = 266 ifTrue: [
            recoveredBlock242Result := recoveredBlock242Stack1.
            recoveredBlock242Done := true.
        ].
    ].
    recoveredBlock242Result
].
            recoveredPC := 267.
        ].
        recoveredStep = 267 ifTrue: [
            (recoveredStack1) add: (recoveredStack2) label: (recoveredStack3) enable: (recoveredStack4) toggle: (recoveredStack5).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 270.
        ].
        recoveredStep = 270 ifTrue: [
            recoveredStack2 := 'menuChangeToDezRepresentation'.
            recoveredPC := 272.
        ].
        recoveredStep = 272 ifTrue: [
            recoveredStack3 := CwAccelerator.
            recoveredPC := 274.
        ].
        recoveredStep = 274 ifTrue: [
            recoveredStack4 := ControlMask.
            recoveredPC := 276.
        ].
        recoveredStep = 276 ifTrue: [
            recoveredStack5 := XKZ.
            recoveredPC := 278.
        ].
        recoveredStep = 278 ifTrue: [
            recoveredStack3 := (recoveredStack3) mask: (recoveredStack4) keysym: (recoveredStack5).
            recoveredPC := 280.
        ].
        recoveredStep = 280 ifTrue: [
            recoveredStack4 := 'Ctrl+Z'.
            recoveredPC := 282.
        ].
        recoveredStep = 282 ifTrue: [
            (recoveredStack1) setAcceleratorAt: (recoveredStack2) to: (recoveredStack3) text: (recoveredStack4).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 285.
        ].
        recoveredStep = 285 ifTrue: [
            recoveredStack2 := 'menuChangeToBinRepresentation'.
            recoveredPC := 287.
        ].
        recoveredStep = 287 ifTrue: [
            recoveredStack3 := MPBinDisplay.
            recoveredPC := 289.
        ].
        recoveredStep = 289 ifTrue: [
            recoveredStack4 := [
    | recoveredBlock289Value0 recoveredBlock289Value1 recoveredBlock289Value2 |
    recoveredBlock289Value0 := selectedWidgets.
    recoveredBlock289Value1 := (recoveredBlock289Value0) isEmpty.
    recoveredBlock289Value2 := (recoveredBlock289Value1) not.
    recoveredBlock289Value2
].
            recoveredPC := 302.
        ].
        recoveredStep = 302 ifTrue: [
            recoveredStack5 := [
    | recoveredBlock302Stack0 recoveredBlock302Stack1 recoveredBlock302Stack2 recoveredBlock302PC recoveredBlock302Step recoveredBlock302Done recoveredBlock302Result |
    recoveredBlock302Stack0 := self.
    recoveredBlock302PC := 308.
    recoveredBlock302Done := false.
    [recoveredBlock302Done not] whileTrue: [
        recoveredBlock302Step := recoveredBlock302PC.
        recoveredBlock302Step = 308 ifTrue: [
            recoveredBlock302Stack1 := selectedWidgets.
            recoveredBlock302PC := 310.
        ].
        recoveredBlock302Step = 310 ifTrue: [
            recoveredBlock302Stack1 := (recoveredBlock302Stack1) isEmpty.
            recoveredBlock302PC := 312.
        ].
        recoveredBlock302Step = 312 ifTrue: [
            (recoveredBlock302Stack1) ifTrue: [recoveredBlock302PC := 316] ifFalse: [recoveredBlock302PC := 320].
        ].
        recoveredBlock302Step = 316 ifTrue: [
            recoveredBlock302Stack1 := false.
            recoveredBlock302PC := 317.
        ].
        recoveredBlock302Step = 317 ifTrue: [
            recoveredBlock302PC := 326.
        ].
        recoveredBlock302Step = 320 ifTrue: [
            recoveredBlock302Stack1 := selectedWidgets.
            recoveredBlock302PC := 322.
        ].
        recoveredBlock302Step = 322 ifTrue: [
            recoveredBlock302Stack1 := (recoveredBlock302Stack1) first.
            recoveredBlock302PC := 324.
        ].
        recoveredBlock302Step = 324 ifTrue: [
            recoveredBlock302Stack1 := (recoveredBlock302Stack1) isBinRepresentation.
            recoveredBlock302PC := 326.
        ].
        recoveredBlock302Step = 326 ifTrue: [
            recoveredBlock302Result := recoveredBlock302Stack1.
            recoveredBlock302Done := true.
        ].
    ].
    recoveredBlock302Result
].
            recoveredPC := 327.
        ].
        recoveredStep = 327 ifTrue: [
            (recoveredStack1) add: (recoveredStack2) label: (recoveredStack3) enable: (recoveredStack4) toggle: (recoveredStack5).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 330.
        ].
        recoveredStep = 330 ifTrue: [
            recoveredStack2 := 'menuChangeToBinRepresentation'.
            recoveredPC := 332.
        ].
        recoveredStep = 332 ifTrue: [
            recoveredStack3 := CwAccelerator.
            recoveredPC := 334.
        ].
        recoveredStep = 334 ifTrue: [
            recoveredStack4 := ControlMask.
            recoveredPC := 336.
        ].
        recoveredStep = 336 ifTrue: [
            recoveredStack5 := XKR.
            recoveredPC := 338.
        ].
        recoveredStep = 338 ifTrue: [
            recoveredStack3 := (recoveredStack3) mask: (recoveredStack4) keysym: (recoveredStack5).
            recoveredPC := 340.
        ].
        recoveredStep = 340 ifTrue: [
            recoveredStack4 := 'Ctrl+R'.
            recoveredPC := 342.
        ].
        recoveredStep = 342 ifTrue: [
            (recoveredStack1) setAcceleratorAt: (recoveredStack2) to: (recoveredStack3) text: (recoveredStack4).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 345.
        ].
        recoveredStep = 345 ifTrue: [
            (recoveredStack1) addLine.
            recoveredStack1 := recoveredStack0.
            recoveredPC := 348.
        ].
        recoveredStep = 348 ifTrue: [
            recoveredStack2 := 'menuCopyData'.
            recoveredPC := 350.
        ].
        recoveredStep = 350 ifTrue: [
            recoveredStack3 := MPCopyDataToWindow.
            recoveredPC := 352.
        ].
        recoveredStep = 352 ifTrue: [
            recoveredStack4 := Dots.
            recoveredPC := 354.
        ].
        recoveredStep = 354 ifTrue: [
            recoveredStack3 := (recoveredStack3) , (recoveredStack4).
            recoveredPC := 356.
        ].
        recoveredStep = 356 ifTrue: [
            recoveredStack4 := [
    | recoveredBlock356Value0 recoveredBlock356Value1 recoveredBlock356Value2 recoveredBlock356Value3 recoveredBlock356Value4 recoveredBlock356Value5 recoveredBlock356Value6 recoveredBlock356Value7 recoveredBlock356Value8 recoveredBlock356Value9 recoveredBlock356Value10 recoveredBlock356Value11 recoveredBlock356Value12 |
    recoveredBlock356Value0 := selectedWidgets.
    recoveredBlock356Value1 := (recoveredBlock356Value0) isEmpty.
    recoveredBlock356Value2 := (recoveredBlock356Value1) not.
    recoveredBlock356Value3 := (self) dataManager.
    recoveredBlock356Value4 := (recoveredBlock356Value3) isOnlineInDevices.
    recoveredBlock356Value5 := (recoveredBlock356Value4) not.
    recoveredBlock356Value6 := (self) dataManager.
    recoveredBlock356Value7 := (recoveredBlock356Value6) autoStartingAcquisitionMode.
    recoveredBlock356Value8 := (recoveredBlock356Value5) | (recoveredBlock356Value7).
    recoveredBlock356Value9 := (self) dataManager.
    recoveredBlock356Value10 := (recoveredBlock356Value9) canAddRemoveDataDuringAcquisition.
    recoveredBlock356Value11 := (recoveredBlock356Value8) | (recoveredBlock356Value10).
    recoveredBlock356Value12 := (recoveredBlock356Value2) & (recoveredBlock356Value11).
    recoveredBlock356Value12
].
            recoveredPC := 394.
        ].
        recoveredStep = 394 ifTrue: [
            (recoveredStack1) add: (recoveredStack2) label: (recoveredStack3) enable: (recoveredStack4).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 397.
        ].
        recoveredStep = 397 ifTrue: [
            recoveredStack2 := 'menuMoveData'.
            recoveredPC := 400.
        ].
        recoveredStep = 400 ifTrue: [
            recoveredStack3 := MPMoveDataToWindow.
            recoveredPC := 404.
        ].
        recoveredStep = 404 ifTrue: [
            recoveredStack4 := Dots.
            recoveredPC := 406.
        ].
        recoveredStep = 406 ifTrue: [
            recoveredStack3 := (recoveredStack3) , (recoveredStack4).
            recoveredPC := 408.
        ].
        recoveredStep = 408 ifTrue: [
            recoveredStack4 := [
    | recoveredBlock408Value0 recoveredBlock408Value1 recoveredBlock408Value2 recoveredBlock408Value3 recoveredBlock408Value4 recoveredBlock408Value5 recoveredBlock408Value6 recoveredBlock408Value7 recoveredBlock408Value8 recoveredBlock408Value9 recoveredBlock408Value10 recoveredBlock408Value11 recoveredBlock408Value12 |
    recoveredBlock408Value0 := selectedWidgets.
    recoveredBlock408Value1 := (recoveredBlock408Value0) isEmpty.
    recoveredBlock408Value2 := (recoveredBlock408Value1) not.
    recoveredBlock408Value3 := (self) dataManager.
    recoveredBlock408Value4 := (recoveredBlock408Value3) isOnlineInDevices.
    recoveredBlock408Value5 := (recoveredBlock408Value4) not.
    recoveredBlock408Value6 := (self) dataManager.
    recoveredBlock408Value7 := (recoveredBlock408Value6) autoStartingAcquisitionMode.
    recoveredBlock408Value8 := (recoveredBlock408Value5) | (recoveredBlock408Value7).
    recoveredBlock408Value9 := (self) dataManager.
    recoveredBlock408Value10 := (recoveredBlock408Value9) canAddRemoveDataDuringAcquisition.
    recoveredBlock408Value11 := (recoveredBlock408Value8) | (recoveredBlock408Value10).
    recoveredBlock408Value12 := (recoveredBlock408Value2) & (recoveredBlock408Value11).
    recoveredBlock408Value12
].
            recoveredPC := 446.
        ].
        recoveredStep = 446 ifTrue: [
            (recoveredStack1) add: (recoveredStack2) label: (recoveredStack3) enable: (recoveredStack4).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 449.
        ].
        recoveredStep = 449 ifTrue: [
            recoveredStack2 := 'menuRemoveData'.
            recoveredPC := 452.
        ].
        recoveredStep = 452 ifTrue: [
            recoveredStack3 := MPRemoveData.
            recoveredPC := 456.
        ].
        recoveredStep = 456 ifTrue: [
            recoveredStack4 := [
    | recoveredBlock456Value0 recoveredBlock456Value1 recoveredBlock456Value2 recoveredBlock456Value3 recoveredBlock456Value4 recoveredBlock456Value5 recoveredBlock456Value6 recoveredBlock456Value7 recoveredBlock456Value8 recoveredBlock456Value9 recoveredBlock456Value10 recoveredBlock456Value11 recoveredBlock456Value12 |
    recoveredBlock456Value0 := selectedWidgets.
    recoveredBlock456Value1 := (recoveredBlock456Value0) isEmpty.
    recoveredBlock456Value2 := (recoveredBlock456Value1) not.
    recoveredBlock456Value3 := (self) dataManager.
    recoveredBlock456Value4 := (recoveredBlock456Value3) isOnlineInDevices.
    recoveredBlock456Value5 := (recoveredBlock456Value4) not.
    recoveredBlock456Value6 := (self) dataManager.
    recoveredBlock456Value7 := (recoveredBlock456Value6) autoStartingAcquisitionMode.
    recoveredBlock456Value8 := (recoveredBlock456Value5) | (recoveredBlock456Value7).
    recoveredBlock456Value9 := (self) dataManager.
    recoveredBlock456Value10 := (recoveredBlock456Value9) canAddRemoveDataDuringAcquisition.
    recoveredBlock456Value11 := (recoveredBlock456Value8) | (recoveredBlock456Value10).
    recoveredBlock456Value12 := (recoveredBlock456Value2) & (recoveredBlock456Value11).
    recoveredBlock456Value12
].
            recoveredPC := 494.
        ].
        recoveredStep = 494 ifTrue: [
            (recoveredStack1) add: (recoveredStack2) label: (recoveredStack3) enable: (recoveredStack4).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 497.
        ].
        recoveredStep = 497 ifTrue: [
            (recoveredStack1) addLine.
            recoveredStack1 := recoveredStack0.
            recoveredPC := 500.
        ].
        recoveredStep = 500 ifTrue: [
            recoveredStack2 := 'menuChangeChannelGroup'.
            recoveredPC := 504.
        ].
        recoveredStep = 504 ifTrue: [
            recoveredStack3 := MPChangeMeasureRaster.
            recoveredPC := 508.
        ].
        recoveredStep = 508 ifTrue: [
            recoveredStack4 := Dots.
            recoveredPC := 510.
        ].
        recoveredStep = 510 ifTrue: [
            recoveredStack3 := (recoveredStack3) , (recoveredStack4).
            recoveredPC := 512.
        ].
        recoveredStep = 512 ifTrue: [
            recoveredStack4 := [
    | recoveredBlock512Value0 recoveredBlock512Value1 recoveredBlock512Value2 recoveredBlock512Value3 recoveredBlock512Value4 recoveredBlock512Value5 recoveredBlock512Value6 recoveredBlock512Value7 recoveredBlock512Value8 recoveredBlock512Value9 recoveredBlock512Value10 recoveredBlock512Value11 |
    recoveredBlock512Value0 := selectedWidgets.
    recoveredBlock512Value1 := (recoveredBlock512Value0) notEmpty.
    recoveredBlock512Value2 := (self) dataManager.
    recoveredBlock512Value3 := (recoveredBlock512Value2) isOnlineInDevices.
    recoveredBlock512Value4 := (recoveredBlock512Value3) not.
    recoveredBlock512Value5 := (self) dataManager.
    recoveredBlock512Value6 := (recoveredBlock512Value5) autoStartingAcquisitionMode.
    recoveredBlock512Value7 := (recoveredBlock512Value4) | (recoveredBlock512Value6).
    recoveredBlock512Value8 := (recoveredBlock512Value1) & (recoveredBlock512Value7).
    recoveredBlock512Value9 := (self) dataManager.
    recoveredBlock512Value10 := (recoveredBlock512Value9) canChangeChannelGroup.
    recoveredBlock512Value11 := (recoveredBlock512Value8) & (recoveredBlock512Value10).
    recoveredBlock512Value11
].
            recoveredPC := 556.
        ].
        recoveredStep = 556 ifTrue: [
            (recoveredStack1) add: (recoveredStack2) label: (recoveredStack3) enable: (recoveredStack4).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 559.
        ].
        recoveredStep = 559 ifTrue: [
            (recoveredStack1) addLine.
            recoveredStack1 := recoveredStack0.
            recoveredPC := 562.
        ].
        recoveredStep = 562 ifTrue: [
            recoveredStack2 := 'menuInfo'.
            recoveredPC := 566.
        ].
        recoveredStep = 566 ifTrue: [
            recoveredStack3 := MPInfoAbout.
            recoveredPC := 570.
        ].
        recoveredStep = 570 ifTrue: [
            recoveredStack4 := Dots.
            recoveredPC := 572.
        ].
        recoveredStep = 572 ifTrue: [
            recoveredStack3 := (recoveredStack3) , (recoveredStack4).
            recoveredPC := 574.
        ].
        recoveredStep = 574 ifTrue: [
            recoveredStack4 := [
    | recoveredBlock574Value0 recoveredBlock574Value1 recoveredBlock574Value2 |
    recoveredBlock574Value0 := selectedWidgets.
    recoveredBlock574Value1 := (recoveredBlock574Value0) isEmpty.
    recoveredBlock574Value2 := (recoveredBlock574Value1) not.
    recoveredBlock574Value2
].
            recoveredPC := 586.
        ].
        recoveredStep = 586 ifTrue: [
            (recoveredStack1) add: (recoveredStack2) label: (recoveredStack3) enable: (recoveredStack4).
            recoveredPC := 589.
        ].
        recoveredStep = 589 ifTrue: [
            recoveredStack1 := 'menuInfo'.
            recoveredPC := 592.
        ].
        recoveredStep = 592 ifTrue: [
            recoveredStack2 := CwAccelerator.
            recoveredPC := 594.
        ].
        recoveredStep = 594 ifTrue: [
            recoveredStack3 := ControlMask.
            recoveredPC := 596.
        ].
        recoveredStep = 596 ifTrue: [
            recoveredStack4 := XKI.
            recoveredPC := 600.
        ].
        recoveredStep = 600 ifTrue: [
            recoveredStack2 := (recoveredStack2) mask: (recoveredStack3) keysym: (recoveredStack4).
            recoveredPC := 602.
        ].
        recoveredStep = 602 ifTrue: [
            recoveredStack3 := 'Ctrl+I'.
            recoveredPC := 606.
        ].
        recoveredStep = 606 ifTrue: [
            (recoveredStack0) setAcceleratorAt: (recoveredStack1) to: (recoveredStack2) text: (recoveredStack3).
            recoveredPC := 609.
        ].
        recoveredStep = 609 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 610.
        ].
        recoveredStep = 610 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 611.
        ].
        recoveredStep = 611 ifTrue: [
            (recoveredStack0) addAttributeBufferMenu: (recoveredStack1).
            recoveredPC := 615.
        ].
        recoveredStep = 615 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 616.
        ].
        recoveredStep = 616 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 617.
        ].
        recoveredStep = 617 ifTrue: [
            (recoveredStack0) addMoveSubwidgetMenu: (recoveredStack1).
            recoveredPC := 621.
        ].
        recoveredStep = 621 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 622.
        ].
        recoveredStep = 622 ifTrue: [
            recoveredPC := 623.
        ].
        recoveredStep = 623 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 624.
        ].
        recoveredStep = 624 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

