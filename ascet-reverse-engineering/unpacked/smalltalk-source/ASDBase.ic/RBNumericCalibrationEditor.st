"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2000d1ec; bytecode file offset 0x909ab8"
!RBNumericCalibrationEditor methodsFor: 'recovered'!
getPreviousPositionOfData: recoveredArg1
    ^nil
! !

"ASDBase.ic method 0x2000d3cc; bytecode file offset 0x909e08"
!RBNumericCalibrationEditor methodsFor: 'recovered'!
checkDisplayPhys: recoveredArg1
    ^true
! !

"ASDBase.ic method 0x2001b998; bytecode file offset 0x92209c"
!RBNumericCalibrationEditor methodsFor: 'recovered'!
defaultIcon
    ^'EditorEECalibrationNumeric32'
! !

"ASDBase.ic method 0x2004529c; bytecode file offset 0x9451f8"
!RBNumericCalibrationEditor methodsFor: 'recovered'!
form
    | recoveredValue0 |
    recoveredValue0 := (self) widgetAt: ('aForm2').
    ^recoveredValue0
! !

"ASDBase.ic method 0x200467ec; bytecode file offset 0x9451f8"
!RBNumericCalibrationEditor methodsFor: 'recovered'!
scrolledWindow
    | recoveredValue0 |
    recoveredValue0 := (self) widgetAt: ('scrolledWindow').
    ^recoveredValue0
! !

"ASDBase.ic method 0x200725f8; bytecode file offset 0x96f1c4"
!RBNumericCalibrationEditor methodsFor: 'recovered'!
marginWidth
    ^2
! !

"ASDBase.ic method 0x200801f8; bytecode file offset 0x97cab4"
!RBNumericCalibrationEditor methodsFor: 'recovered'!
maxSmallFontSubpaneWidth
    ^300
! !

"ASDBase.ic method 0x200803e8; bytecode file offset 0x97ccb4"
!RBNumericCalibrationEditor methodsFor: 'recovered'!
minLargeFontSubpaneHeight
    ^56
! !

"ASDBase.ic method 0x200811b8; bytecode file offset 0x97da94"
!RBNumericCalibrationEditor methodsFor: 'recovered'!
minLargeFontSubpaneWidth
    ^500
! !

"ASDBase.ic method 0x2008be30; bytecode file offset 0x9886fc"
!RBNumericCalibrationEditor methodsFor: 'recovered'!
menuCopySelectionIntoClipboard
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := selectedWidgets.
    recoveredValue1 := (recoveredValue0) first.
    (recoveredValue1) copySelectionIntoClipboard.
    ^self
! !

"ASDBase.ic method 0x2008be40; bytecode file offset 0x9886fc"
!RBNumericCalibrationEditor methodsFor: 'recovered'!
menuPasteFromClipboard
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := selectedWidgets.
    recoveredValue1 := (recoveredValue0) first.
    (recoveredValue1) pasteFromClipboard.
    ^self
! !

"ASDBase.ic method 0x20090898; bytecode file offset 0x98d184"
!RBNumericCalibrationEditor methodsFor: 'recovered'!
isCopyAllowed
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) selectedWidgets.
    recoveredValue1 := (recoveredValue0) size.
    recoveredValue2 := (recoveredValue1) = (1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x200909bc; bytecode file offset 0x98d298"
!RBNumericCalibrationEditor methodsFor: 'recovered'!
maxSmallFontSubpaneHeight
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) class.
    recoveredValue1 := (recoveredValue0) defaultSubWidgetHeight.
    recoveredValue2 := (recoveredValue1) + (4).
    ^recoveredValue2
! !

"ASDBase.ic method 0x2009d504; bytecode file offset 0x999dd0"
!RBNumericCalibrationEditor methodsFor: 'recovered'!
menuRemoveData
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := selectedWidgets.
    recoveredValue1 := (recoveredValue0) copy.
    (self) removeSubWidgets: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x200b089c; bytecode file offset 0x9ad170"
!RBNumericCalibrationEditor methodsFor: 'recovered'!
maxShellHeight
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := CgScreen.
    recoveredValue1 := (recoveredValue0) default.
    recoveredValue2 := (recoveredValue1) height.
    recoveredValue3 := (recoveredValue2) - (50).
    ^recoveredValue3
! !

"ASDBase.ic method 0x20101af8; bytecode file offset 0x9fe3b4"
!RBNumericCalibrationEditor methodsFor: 'recovered'!
subWidgetButtonMenu: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
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
            (recoveredStack1) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack1) addSelectedWidget: (recoveredStack2).
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20116e98; bytecode file offset 0xa137bc"
!RBNumericCalibrationEditor methodsFor: 'recovered'!
largeFont
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

"ASDBase.ic method 0x20116ee8; bytecode file offset 0xa137bc"
!RBNumericCalibrationEditor methodsFor: 'recovered'!
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

"ASDBase.ic method 0x20116f4c; bytecode file offset 0xa1380c"
!RBNumericCalibrationEditor methodsFor: 'recovered'!
selectedDataIds
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := selectedWidgets.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := [:block280c7194Arg1 | 
    | block280c7194Value0 block280c7194Value1 |
    block280c7194Value0 := block280c7194Arg1.
    block280c7194Value1 := (block280c7194Value0) data.
    block280c7194Value1
].
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) collect: (recoveredStack2).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x20116f90; bytecode file offset 0xa13864"
!RBNumericCalibrationEditor methodsFor: 'recovered'!
hexView
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
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
            recoveredStack1 := false.
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
            recoveredStack1 := (recoveredStack1) isHex.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x20116fa4; bytecode file offset 0xa13864"
!RBNumericCalibrationEditor methodsFor: 'recovered'!
isHex
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
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
            recoveredStack1 := false.
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
            recoveredStack1 := (recoveredStack1) isHex.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2011a5f8; bytecode file offset 0xa16ecc"
!RBNumericCalibrationEditor methodsFor: 'recovered'!
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
            (recoveredStack0) ifTrue: [recoveredPC := 8] ifFalse: [recoveredPC := 11].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := 50.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) class.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) defaultSubWidgetHeight.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2012b0cc; bytecode file offset 0xa279a0"
!RBNumericCalibrationEditor methodsFor: 'recovered'!
updateContents
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := subWidgets.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := [:block280c9840Arg1 | 
    | block280c9840Value0 block280c9840Value1 |
    block280c9840Value0 := block280c9840Arg1.
    block280c9840Value1 := (block280c9840Value0) updateContents.
    block280c9840Value1
].
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2012b130; bytecode file offset 0xa27a54"
!RBNumericCalibrationEditor methodsFor: 'recovered'!
menuIncrement
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := selectedWidgets.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := [:block280c98d0Arg1 | 
    | block280c98d0Value0 block280c98d0Value1 |
    block280c98d0Value0 := block280c98d0Arg1.
    block280c98d0Value1 := (block280c98d0Value0) increment.
    block280c98d0Value1
].
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2012b158; bytecode file offset 0xa27a54"
!RBNumericCalibrationEditor methodsFor: 'recovered'!
menuUndo
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := selectedWidgets.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := [:block280c9918Arg1 | 
    | block280c9918Value0 block280c9918Value1 |
    block280c9918Value0 := block280c9918Arg1.
    block280c9918Value1 := (block280c9918Value0) undo.
    block280c9918Value1
].
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2012b180; bytecode file offset 0xa27a54"
!RBNumericCalibrationEditor methodsFor: 'recovered'!
menuRedo
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := selectedWidgets.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := [:block280c9960Arg1 | 
    | block280c9960Value0 block280c9960Value1 |
    block280c9960Value0 := block280c9960Arg1.
    block280c9960Value1 := (block280c9960Value0) redo.
    block280c9960Value1
].
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2012b194; bytecode file offset 0xa27a54"
!RBNumericCalibrationEditor methodsFor: 'recovered'!
menuDecrement
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := selectedWidgets.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := [:block280c9984Arg1 | 
    | block280c9984Value0 block280c9984Value1 |
    block280c9984Value0 := block280c9984Arg1.
    block280c9984Value1 := (block280c9984Value0) decrement.
    block280c9984Value1
].
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2013e374; bytecode file offset 0xa3ac2c"
!RBNumericCalibrationEditor methodsFor: 'recovered'!
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
            recoveredStack0 := 230.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2014cbf0; bytecode file offset 0xa494d4"
!RBNumericCalibrationEditor methodsFor: 'recovered'!
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

"ASDBase.ic method 0x20151358; bytecode file offset 0xa4dc24"
!RBNumericCalibrationEditor methodsFor: 'recovered'!
isPasteAllowed
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 |
    recoveredValue0 := (self) selectedWidgets.
    recoveredValue1 := (recoveredValue0) size.
    recoveredValue2 := (recoveredValue1) = (1).
    recoveredValue3 := (self) writeProtection.
    recoveredValue4 := (recoveredValue3) not.
    recoveredValue5 := (recoveredValue2) & (recoveredValue4).
    recoveredValue6 := OSClipboard.
    recoveredValue7 := (recoveredValue6) getString.
    recoveredValue8 := (recoveredValue7) notNil.
    recoveredValue9 := (recoveredValue5) & (recoveredValue8).
    ^recoveredValue9
! !

"ASDBase.ic method 0x2015e1a4; bytecode file offset 0xa5aa78"
!RBNumericCalibrationEditor methodsFor: 'recovered'!
data
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
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
            (recoveredStack1) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 15].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := subWidgets.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) first.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) data.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := selectedWidgets.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := (recoveredStack1) first.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := (recoveredStack1) data.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2015e1f8; bytecode file offset 0xa5ab08"
!RBNumericCalibrationEditor methodsFor: 'recovered'!
canRedo
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
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
            recoveredStack1 := false.
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
            recoveredStack1 := (recoveredStack1) canRedo.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2015e220; bytecode file offset 0xa5ab08"
!RBNumericCalibrationEditor methodsFor: 'recovered'!
canUndo
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
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
            recoveredStack1 := false.
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
            recoveredStack1 := (recoveredStack1) canUndo.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x201649b0; bytecode file offset 0xa61270"
!RBNumericCalibrationEditor methodsFor: 'recovered'!
removeSelectedWidget: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := selectedWidgets.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) includes: (recoveredStack2).
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 20].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack1) deselectWidget.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := selectedWidgets.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            (recoveredStack1) remove: (recoveredStack2).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201649dc; bytecode file offset 0xa612c4"
!RBNumericCalibrationEditor methodsFor: 'recovered'!
addSelectedWidget: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := selectedWidgets.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) includes: (recoveredStack2).
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack1) selectWidget.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := selectedWidgets.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            (recoveredStack1) add: (recoveredStack2).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2016fd8c; bytecode file offset 0xa6c660"
!RBNumericCalibrationEditor methodsFor: 'recovered'!
resetSelectedWidgets
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := selectedWidgets.
    recoveredValue1 := [:recoveredBlock6Arg1 | 
    | recoveredBlock6Value0 recoveredBlock6Value1 recoveredBlock6Value2 |
    recoveredBlock6Value0 := recoveredBlock6Arg1.
    (recoveredBlock6Value0) deselectWidget.
    recoveredBlock6Value1 := selectedWidgets.
    recoveredBlock6Value2 := (recoveredBlock6Value1) removeLast.
    recoveredBlock6Value2
].
    (recoveredValue0) reverseDo: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x20172c50; bytecode file offset 0xa6f518"
!RBNumericCalibrationEditor methodsFor: 'recovered'!
initializeAfterOpen
    super initializeAfterOpen.
    firstTime := false.
    (self) adjustShellSize.
    (self) selectNextWidget.
    (self) adjustSubWidgetSize.
    ^self
! !

"ASDBase.ic method 0x2018888c; bytecode file offset 0xa85160"
!RBNumericCalibrationEditor methodsFor: 'recovered'!
resizeSupervision: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack3 := recoveredArg3.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            super resizeSupervision: (recoveredStack1) clientData: (recoveredStack2) callData: (recoveredStack3).
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := firstTime.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            (recoveredStack0) adjustSubWidgetSize.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2018e55c; bytecode file offset 0xa8ae1c"
!RBNumericCalibrationEditor methodsFor: 'recovered'!
setWidgetFocus
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := selectedWidgets.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) notEmpty.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := selectedWidgets.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) first.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack1) setInputFocus.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredPC := 23.
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
            (recoveredStack1) setInputFocus.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201af0d0; bytecode file offset 0xaab9c4"
!RBNumericCalibrationEditor methodsFor: 'recovered'!
menuChangeToDezRepresentation
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
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
            recoveredStack2 := [:block280d38b4Arg1 | 
    | block280d38b4Value0 block280d38b4Value1 |
    block280d38b4Value0 := block280d38b4Arg1.
    block280d38b4Value1 := (block280d38b4Value0) changeToDezRepresentation.
    block280d38b4Value1
].
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201af0e8; bytecode file offset 0xaab9c4"
!RBNumericCalibrationEditor methodsFor: 'recovered'!
menuChangeToBinRepresentation
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
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
            recoveredStack2 := [:block280d38d8Arg1 | 
    | block280d38d8Value0 block280d38d8Value1 |
    block280d38d8Value0 := block280d38d8Arg1.
    block280d38d8Value1 := (block280d38d8Value0) changeToBinRepresentation.
    block280d38d8Value1
].
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201af100; bytecode file offset 0xaab9c4"
!RBNumericCalibrationEditor methodsFor: 'recovered'!
menuChangeToHexRepresentation
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
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
            recoveredStack2 := [:block280d38fcArg1 | 
    | block280d38fcValue0 block280d38fcValue1 |
    block280d38fcValue0 := block280d38fcArg1.
    block280d38fcValue1 := (block280d38fcValue0) changeToHexRepresentation.
    block280d38fcValue1
].
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201e8944; bytecode file offset 0xae5218"
!RBNumericCalibrationEditor methodsFor: 'recovered'!
writeProtection: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := subWidgets.
    recoveredValue1 := [:recoveredBlock6Arg1 | 
    | recoveredBlock6Value0 recoveredBlock6Value1 recoveredBlock6Value2 |
    recoveredBlock6Value0 := recoveredBlock6Arg1.
    recoveredBlock6Value1 := recoveredArg1.
    recoveredBlock6Value2 := (recoveredBlock6Value0) writeProtection: (recoveredBlock6Value1).
    recoveredBlock6Value2
].
    (recoveredValue0) do: (recoveredValue1).
    recoveredValue2 := recoveredArg1.
    super writeProtection: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x20209f84; bytecode file offset 0xb06870"
!RBNumericCalibrationEditor methodsFor: 'recovered'!
refVariables
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := LookupTable.
    recoveredValue1 := (recoveredValue0) new.
    refVariables := recoveredValue1.
    recoveredValue2 := subWidgets.
    recoveredValue3 := [:recoveredBlock11Arg1 | 
    | recoveredBlock11Value0 recoveredBlock11Value1 recoveredBlock11Value2 recoveredBlock11Value3 recoveredBlock11Value4 recoveredBlock11Value5 |
    recoveredBlock11Value0 := refVariables.
    recoveredBlock11Value1 := recoveredBlock11Arg1.
    recoveredBlock11Value2 := (recoveredBlock11Value1) dataName.
    recoveredBlock11Value3 := recoveredBlock11Arg1.
    recoveredBlock11Value4 := (recoveredBlock11Value3) refValue.
    recoveredBlock11Value5 := (recoveredBlock11Value0) at: (recoveredBlock11Value2) put: (recoveredBlock11Value4).
    recoveredBlock11Value5
].
    (recoveredValue2) do: (recoveredValue3).
    recoveredValue4 := refVariables.
    ^recoveredValue4
! !

"ASDBase.ic method 0x20219d94; bytecode file offset 0xb16670"
!RBNumericCalibrationEditor methodsFor: 'recovered'!
initialize
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    super initialize.
    firstTime := true.
    recoveredValue0 := OrderedCollection.
    recoveredValue1 := (recoveredValue0) new.
    subWidgets := recoveredValue1.
    recoveredValue2 := OrderedCollection.
    recoveredValue3 := (recoveredValue2) new.
    selectedWidgets := recoveredValue3.
    recoveredValue4 := OrderedCollection.
    recoveredValue5 := (recoveredValue4) new.
    newDatas := recoveredValue5.
    recoveredValue6 := OrderedCollection.
    recoveredValue7 := (recoveredValue6) new.
    dataConfigObjects := recoveredValue7.
    ^self
! !

"ASDBase.ic method 0x2022de00; bytecode file offset 0xb2a6ec"
!RBNumericCalibrationEditor methodsFor: 'recovered'!
createMenuBar
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := CwMenuBar.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack2 := (recoveredStack2) createEditMenu.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack1) addMenu: (recoveredStack2).
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) createViewMenu.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 24] ifFalse: [recoveredPC := 20].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            (recoveredStack0) addMenu: (recoveredStack1).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack2 := (recoveredStack2) createOptionsMenu.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            (recoveredStack1) addMenu: (recoveredStack2).
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20252ec0; bytecode file offset 0xb4f798"
!RBNumericCalibrationEditor methodsFor: 'recovered'!
menuShowInfo
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := selectedWidgets.
    recoveredValue1 := [:recoveredBlock6Arg1 | 
    | recoveredBlock6Local1 recoveredBlock6Value0 recoveredBlock6Value1 recoveredBlock6Value2 recoveredBlock6Value3 recoveredBlock6Value4 recoveredBlock6Value5 recoveredBlock6Value6 recoveredBlock6Value7 recoveredBlock6Value8 recoveredBlock6Value9 recoveredBlock6Value10 recoveredBlock6Value11 recoveredBlock6Value12 recoveredBlock6Value13 |
    recoveredBlock6Value0 := RBObjectInformationView.
    recoveredBlock6Value1 := recoveredBlock6Arg1.
    recoveredBlock6Value2 := (recoveredBlock6Value1) data.
    recoveredBlock6Value3 := (recoveredBlock6Value2) objectInformationAssociation.
    recoveredBlock6Value4 := recoveredBlock6Arg1.
    recoveredBlock6Value5 := (recoveredBlock6Value4) data.
    recoveredBlock6Value6 := (recoveredBlock6Value5) objectInformationDictionary.
    recoveredBlock6Value7 := (recoveredBlock6Value0) createObjectAssociation: (recoveredBlock6Value3) infoDict: (recoveredBlock6Value6).
    recoveredBlock6Local1 := recoveredBlock6Value7.
    recoveredBlock6Value8 := recoveredBlock6Local1.
    recoveredBlock6Value9 := recoveredBlock6Value8.
    recoveredBlock6Value10 := recoveredBlock6Arg1.
    recoveredBlock6Value11 := (recoveredBlock6Value10) data.
    recoveredBlock6Value12 := (recoveredBlock6Value11) objectInformationDescription.
    (recoveredBlock6Value9) description: (recoveredBlock6Value12).
    recoveredBlock6Value13 := (recoveredBlock6Value8) openWithParent: (self).
    recoveredBlock6Value13
].
    (recoveredValue0) do: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x2025b844; bytecode file offset 0xb58108"
!RBNumericCalibrationEditor methodsFor: 'recovered'!
changeToHexView: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := subWidgets.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := [:recoveredBlock6Arg1 | 
    | recoveredBlock6Value0 recoveredBlock6Value1 recoveredBlock6Value2 recoveredBlock6Value3 |
    recoveredBlock6Value0 := recoveredBlock6Arg1.
    recoveredBlock6Value1 := (recoveredBlock6Value0) data.
    recoveredBlock6Value2 := recoveredArg1.
    recoveredBlock6Value3 := (recoveredBlock6Value1) == (recoveredBlock6Value2).
    recoveredBlock6Value3
].
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack3 := [].
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := (recoveredStack1) detect: (recoveredStack2) ifNone: (recoveredStack3).
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 37] ifFalse: [recoveredPC := 32].
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            (recoveredStack1) changeToHexRepresentation.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20266ce0; bytecode file offset 0xb635bc"
!RBNumericCalibrationEditor methodsFor: 'recovered'!
refVariableAt: recoveredArg1 put: recoveredArg2
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := subWidgets.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := [:recoveredBlock6Arg1 | 
    | recoveredBlock6Value0 recoveredBlock6Value1 recoveredBlock6Value2 recoveredBlock6Value3 |
    recoveredBlock6Value0 := recoveredBlock6Arg1.
    recoveredBlock6Value1 := (recoveredBlock6Value0) dataName.
    recoveredBlock6Value2 := recoveredArg1.
    recoveredBlock6Value3 := (recoveredBlock6Value1) = (recoveredBlock6Value2).
    recoveredBlock6Value3
].
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack3 := [].
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := (recoveredStack1) detect: (recoveredStack2) ifNone: (recoveredStack3).
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 38] ifFalse: [recoveredPC := 30].
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            (recoveredStack1) refValue: (recoveredStack2).
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2027939c; bytecode file offset 0xb75ca8"
!RBNumericCalibrationEditor methodsFor: 'recovered'!
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
            recoveredStack4 := GMVLargerFont.
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
    | recoveredBlock26Value0 |
    recoveredBlock26Value0 := (self) largeFont.
    recoveredBlock26Value0
].
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            (recoveredStack2) add: (recoveredStack3) label: (recoveredStack4) enable: (recoveredStack5) toggle: (recoveredStack6).
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2027a1c0; bytecode file offset 0xb76a90"
!RBNumericCalibrationEditor methodsFor: 'recovered'!
menuChangeToPhysRepresentation
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := OrderedCollection.
    recoveredValue1 := (recoveredValue0) new.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := selectedWidgets.
    recoveredValue3 := [:recoveredBlock12Arg1 | 
    | recoveredBlock12Stack0 recoveredBlock12Stack1 recoveredBlock12Stack2 recoveredBlock12PC recoveredBlock12Step recoveredBlock12Done recoveredBlock12Result |
    recoveredBlock12Stack0 := self.
    recoveredBlock12PC := 18.
    recoveredBlock12Done := false.
    [recoveredBlock12Done not] whileTrue: [
        recoveredBlock12Step := recoveredBlock12PC.
        recoveredBlock12Step = 18 ifTrue: [
            recoveredBlock12Stack1 := recoveredBlock12Arg1.
            recoveredBlock12PC := 19.
        ].
        recoveredBlock12Step = 19 ifTrue: [
            recoveredBlock12Stack1 := (recoveredBlock12Stack1) data.
            recoveredBlock12PC := 20.
        ].
        recoveredBlock12Step = 20 ifTrue: [
            recoveredBlock12Stack0 := (recoveredBlock12Stack0) checkDisplayPhys: (recoveredBlock12Stack1).
            recoveredBlock12PC := 21.
        ].
        recoveredBlock12Step = 21 ifTrue: [
            (recoveredBlock12Stack0) ifTrue: [recoveredBlock12PC := 24] ifFalse: [recoveredBlock12PC := 30].
        ].
        recoveredBlock12Step = 24 ifTrue: [
            recoveredBlock12Stack0 := recoveredBlock12Arg1.
            recoveredBlock12PC := 25.
        ].
        recoveredBlock12Step = 25 ifTrue: [
            recoveredBlock12Stack0 := (recoveredBlock12Stack0) changeToPhysRepresentation.
            recoveredBlock12PC := 27.
        ].
        recoveredBlock12Step = 27 ifTrue: [
            recoveredBlock12PC := 37.
        ].
        recoveredBlock12Step = 30 ifTrue: [
            recoveredBlock12Stack0 := recoveredLocal1.
            recoveredBlock12PC := 33.
        ].
        recoveredBlock12Step = 33 ifTrue: [
            recoveredBlock12Stack1 := recoveredBlock12Arg1.
            recoveredBlock12PC := 34.
        ].
        recoveredBlock12Step = 34 ifTrue: [
            recoveredBlock12Stack1 := (recoveredBlock12Stack1) data.
            recoveredBlock12PC := 35.
        ].
        recoveredBlock12Step = 35 ifTrue: [
            recoveredBlock12Stack0 := (recoveredBlock12Stack0) add: (recoveredBlock12Stack1).
            recoveredBlock12PC := 37.
        ].
        recoveredBlock12Step = 37 ifTrue: [
            recoveredBlock12Result := recoveredBlock12Stack0.
            recoveredBlock12Done := true.
        ].
    ].
    recoveredBlock12Result
].
    (recoveredValue2) do: (recoveredValue3).
    ^self
! !

"ASDBase.ic method 0x202a6bac; bytecode file offset 0xba34d0"
!RBNumericCalibrationEditor methodsFor: 'recovered'!
selectNextWidgetShift
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
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
            (recoveredStack1) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := 1.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredPC := 31.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := subWidgets.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack2 := selectedWidgets.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack2 := (recoveredStack2) last.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := (recoveredStack1) indexOf: (recoveredStack2).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (1).
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack2 := subWidgets.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack2 := (recoveredStack2) size.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := (recoveredStack1) min: (recoveredStack2).
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := subWidgets.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2).
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            (recoveredStack0) addSelectedWidget: (recoveredStack1).
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            (recoveredStack0) setInputFocus.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x202b05b4; bytecode file offset 0xbaceb0"
!RBNumericCalibrationEditor methodsFor: 'recovered'!
selectPrevWidgetShift
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
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
            (recoveredStack1) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := subWidgets.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredPC := 32.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := subWidgets.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack2 := selectedWidgets.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack2 := (recoveredStack2) last.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := (recoveredStack1) indexOf: (recoveredStack2).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (-1).
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack2 := 1.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := (recoveredStack1) max: (recoveredStack2).
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := subWidgets.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2).
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            (recoveredStack0) addSelectedWidget: (recoveredStack1).
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            (recoveredStack0) setInputFocus.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x202e107c; bytecode file offset 0xbdd980"
!RBNumericCalibrationEditor methodsFor: 'recovered'!
updateView
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            (recoveredStack0) updateTitle.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack0 := newDatas.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := (recoveredStack0) isEmpty.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := true.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := newDatas.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := [:recoveredBlock16Arg1 :recoveredBlock16Arg2 | 
    | recoveredBlock16Local1 recoveredBlock16Value0 recoveredBlock16Value1 recoveredBlock16Value2 recoveredBlock16Value3 recoveredBlock16Value4 recoveredBlock16Value5 |
    recoveredBlock16Value0 := dataConfigObjects.
    recoveredBlock16Value1 := recoveredBlock16Arg2.
    recoveredBlock16Value2 := (recoveredBlock16Value0) at: (recoveredBlock16Value1).
    recoveredBlock16Local1 := recoveredBlock16Value2.
    recoveredBlock16Value3 := recoveredBlock16Arg1.
    recoveredBlock16Value4 := recoveredBlock16Local1.
    recoveredBlock16Value5 := (self) createDataChannelFor: (recoveredBlock16Value3) configuration: (recoveredBlock16Value4).
    recoveredBlock16Value5
].
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            (recoveredStack0) doWithIndex: (recoveredStack1).
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := OrderedCollection.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := (recoveredStack0) new.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            newDatas := recoveredStack0.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack0 := Dictionary.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack0 := (recoveredStack0) new.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            dataConfigObjects := recoveredStack0.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            (recoveredStack0) adjustShellSize.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x202f19f8; bytecode file offset 0xbee310"
!RBNumericCalibrationEditor methodsFor: 'recovered'!
getConfigurationObjectOfData: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := subWidgets.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := [:recoveredBlock6Arg1 | 
    | recoveredBlock6Value0 recoveredBlock6Value1 recoveredBlock6Value2 recoveredBlock6Value3 |
    recoveredBlock6Value0 := recoveredBlock6Arg1.
    recoveredBlock6Value1 := (recoveredBlock6Value0) data.
    recoveredBlock6Value2 := recoveredArg1.
    recoveredBlock6Value3 := (recoveredBlock6Value1) = (recoveredBlock6Value2).
    recoveredBlock6Value3
].
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack3 := [].
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := (recoveredStack1) detect: (recoveredStack2) ifNone: (recoveredStack3).
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 32] ifFalse: [recoveredPC := 30].
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := (recoveredStack0) class.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack0 := (recoveredStack0) defaultDataConfigObjectClass.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack0 := (recoveredStack0) create.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            (recoveredStack0) fillConfigurationObject: (recoveredStack1).
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20306388; bytecode file offset 0xc02c8c"
!RBNumericCalibrationEditor methodsFor: 'recovered'!
addDataList: recoveredArg1 with: recoveredArg2
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            newDatas := recoveredStack1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := Array.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack2 := (recoveredStack2) size.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) new: (recoveredStack2).
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            dataConfigObjects := recoveredStack1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 27] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := (recoveredStack1) notEmpty.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 24] ifFalse: [recoveredPC := 27].
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            dataConfigObjects := recoveredStack1.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := (recoveredStack0) shell.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 46] ifFalse: [recoveredPC := 32].
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack0 := (recoveredStack0) shell.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack0 := (recoveredStack0) iconic.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 40] ifFalse: [recoveredPC := 46].
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack0 := (recoveredStack0) shell.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            (recoveredStack0) maximize: (recoveredStack1).
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            super addDataList: (recoveredStack1) with: (recoveredStack2).
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2031bb94; bytecode file offset 0xc18474"
!RBNumericCalibrationEditor methodsFor: 'recovered'!
initializeAfterCreate
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            super initializeAfterCreate.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := (recoveredStack1) applicationController.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) isWriteProtected.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack0) writeProtection: (recoveredStack1).
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := newDatas.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := [:recoveredBlock16Arg1 :recoveredBlock16Arg2 | 
    | recoveredBlock16Local1 recoveredBlock16Value0 recoveredBlock16Value1 recoveredBlock16Value2 recoveredBlock16Value3 recoveredBlock16Value4 recoveredBlock16Value5 |
    recoveredBlock16Value0 := dataConfigObjects.
    recoveredBlock16Value1 := recoveredBlock16Arg2.
    recoveredBlock16Value2 := (recoveredBlock16Value0) at: (recoveredBlock16Value1).
    recoveredBlock16Local1 := recoveredBlock16Value2.
    recoveredBlock16Value3 := recoveredBlock16Arg1.
    recoveredBlock16Value4 := recoveredBlock16Local1.
    recoveredBlock16Value5 := (self) createDataChannelFor: (recoveredBlock16Value3) configuration: (recoveredBlock16Value4).
    recoveredBlock16Value5
].
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            (recoveredStack0) doWithIndex: (recoveredStack1).
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack0 := OrderedCollection.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack0 := (recoveredStack0) new.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            newDatas := recoveredStack0.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack0 := OrderedCollection.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack0 := (recoveredStack0) new.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            dataConfigObjects := recoveredStack0.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack0 := subWidgets.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack0 := (recoveredStack0) isEmpty.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 54] ifFalse: [recoveredPC := 56].
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x203269b4; bytecode file offset 0xc23284"
!RBNumericCalibrationEditor methodsFor: 'recovered'!
menuMultFactor
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) writeProtection.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 8] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := selectedWidgets.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) isEmpty.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := 1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack2 := SCMultiplyWith.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack3 := SCValueFactor.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := (recoveredStack0) editDefault: (recoveredStack1) title: (recoveredStack2) message: (recoveredStack3).
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 40] ifFalse: [recoveredPC := 38].
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack0 := selectedWidgets.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := [:recoveredBlock42Arg1 | 
    | recoveredBlock42Value0 recoveredBlock42Value1 recoveredBlock42Value2 |
    recoveredBlock42Value0 := recoveredBlock42Arg1.
    recoveredBlock42Value1 := recoveredLocal1.
    recoveredBlock42Value2 := (recoveredBlock42Value0) multFactor: (recoveredBlock42Value1).
    recoveredBlock42Value2
].
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x203746f8; bytecode file offset 0xc7101c"
!RBNumericCalibrationEditor methodsFor: 'recovered'!
adjustShellSize
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) shell.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) height.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack0 := subWidgets.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) first.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := (recoveredStack0) height.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) minSubpaneHeight.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) max: (recoveredStack1).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := subWidgets.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := (recoveredStack0) * (recoveredStack1).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := 2.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack2 := (recoveredStack2) marginWidth.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := (recoveredStack1) * (recoveredStack2).
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := (recoveredStack0) + (recoveredStack1).
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := subWidgets.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (-1).
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack2 := (recoveredStack2) spacing.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack1 := (recoveredStack1) * (recoveredStack2).
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := (recoveredStack0) + (recoveredStack1).
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := (recoveredStack1) maxShellHeight.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack0 := (recoveredStack0) min: (recoveredStack1).
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack0 := (recoveredStack0) form.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            (recoveredStack0) height: (recoveredStack1).
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack0 := (recoveredStack0) shell.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            (recoveredStack0) height: (recoveredStack1).
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 64] ifFalse: [recoveredPC := 67].
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            (recoveredStack0) adjustSubWidgetSize.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x203a39dc; bytecode file offset 0xca030c"
!RBNumericCalibrationEditor methodsFor: 'recovered'!
removeDataList: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := OrderedCollection.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := [:recoveredBlock13Arg1 | 
    | recoveredBlock13Local1 recoveredBlock13Stack0 recoveredBlock13Stack1 recoveredBlock13Stack2 recoveredBlock13Stack3 recoveredBlock13Stack4 recoveredBlock13PC recoveredBlock13Step recoveredBlock13Done recoveredBlock13Result |
    recoveredBlock13Stack0 := self.
    recoveredBlock13PC := 20.
    recoveredBlock13Done := false.
    [recoveredBlock13Done not] whileTrue: [
        recoveredBlock13Step := recoveredBlock13PC.
        recoveredBlock13Step = 20 ifTrue: [
            recoveredBlock13Stack1 := subWidgets.
            recoveredBlock13PC := 22.
        ].
        recoveredBlock13Step = 22 ifTrue: [
            recoveredBlock13Stack2 := [:recoveredBlock13Block22Arg1 | 
    | recoveredBlock13Block22Value0 recoveredBlock13Block22Value1 recoveredBlock13Block22Value2 recoveredBlock13Block22Value3 |
    recoveredBlock13Block22Value0 := recoveredBlock13Block22Arg1.
    recoveredBlock13Block22Value1 := (recoveredBlock13Block22Value0) data.
    recoveredBlock13Block22Value2 := recoveredBlock13Arg1.
    recoveredBlock13Block22Value3 := (recoveredBlock13Block22Value1) = (recoveredBlock13Block22Value2).
    recoveredBlock13Block22Value3
].
            recoveredBlock13PC := 35.
        ].
        recoveredBlock13Step = 35 ifTrue: [
            recoveredBlock13Stack3 := [].
            recoveredBlock13PC := 37.
        ].
        recoveredBlock13Step = 37 ifTrue: [
            recoveredBlock13Stack1 := (recoveredBlock13Stack1) detect: (recoveredBlock13Stack2) ifNone: (recoveredBlock13Stack3).
            recoveredBlock13PC := 39.
        ].
        recoveredBlock13Step = 39 ifTrue: [
            recoveredBlock13Local1 := recoveredBlock13Stack1.
            recoveredBlock13PC := 42.
        ].
        recoveredBlock13Step = 42 ifTrue: [
            recoveredBlock13Stack1 := nil.
            recoveredBlock13PC := 43.
        ].
        recoveredBlock13Step = 43 ifTrue: [
            recoveredBlock13Stack2 := recoveredBlock13Local1.
            recoveredBlock13PC := 46.
        ].
        recoveredBlock13Step = 46 ifTrue: [
            (recoveredBlock13Stack2 == nil) ifTrue: [recoveredBlock13PC := 59] ifFalse: [recoveredBlock13PC := 50].
        ].
        recoveredBlock13Step = 50 ifTrue: [
            recoveredBlock13PC := 51.
        ].
        recoveredBlock13Step = 51 ifTrue: [
            recoveredBlock13Stack1 := recoveredLocal1.
            recoveredBlock13PC := 54.
        ].
        recoveredBlock13Step = 54 ifTrue: [
            recoveredBlock13Stack2 := recoveredBlock13Local1.
            recoveredBlock13PC := 57.
        ].
        recoveredBlock13Step = 57 ifTrue: [
            recoveredBlock13Stack1 := (recoveredBlock13Stack1) add: (recoveredBlock13Stack2).
            recoveredBlock13PC := 59.
        ].
        recoveredBlock13Step = 59 ifTrue: [
            recoveredBlock13Result := recoveredBlock13Stack1.
            recoveredBlock13Done := true.
        ].
    ].
    recoveredBlock13Result
].
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack1 := (recoveredStack1) notEmpty.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 70] ifFalse: [recoveredPC := 76].
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            (recoveredStack1) removeSubWidgets: (recoveredStack2).
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x203b2ec4; bytecode file offset 0xcaf7f8"
!RBNumericCalibrationEditor methodsFor: 'recovered'!
attachSubWidget: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := (recoveredStack1) primaryWidget.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := subWidgets.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := (recoveredStack1) indexOf: (recoveredStack2).
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := 1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 34].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack3 := XmATTACHFORM.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            (recoveredStack2) topAttachment: (recoveredStack3).
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack2 := (recoveredStack2) marginWidth.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            (recoveredStack1) topOffset: (recoveredStack2).
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredPC := 57.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := subWidgets.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack2 := (recoveredStack2) + (-1).
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2).
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := (recoveredStack1) primaryWidget.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack3 := recoveredLocal2.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            (recoveredStack2) topWidget: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack3 := XmATTACHWIDGET.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            (recoveredStack2) topAttachment: (recoveredStack3).
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack2 := (recoveredStack2) spacing.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            (recoveredStack1) topOffset: (recoveredStack2).
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack3 := XmATTACHNONE.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            (recoveredStack2) bottomAttachment: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack3 := XmATTACHFORM.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            (recoveredStack2) leftAttachment: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack3 := (recoveredStack3) marginWidth.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            (recoveredStack2) leftOffset: (recoveredStack3).
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack2 := XmATTACHNONE.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            (recoveredStack1) rightAttachment: (recoveredStack2).
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x203e1ce4; bytecode file offset 0xcde5cc"
!RBNumericCalibrationEditor methodsFor: 'recovered'!
subWidgetButtonPress: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := (recoveredStack1) button.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := 1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := (recoveredStack1) state.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack2 := ControlMask.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := (recoveredStack1) bitAnd: (recoveredStack2).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack2 := ControlMask.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := (recoveredStack1) == (recoveredStack2).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack2 := recoveredArg3.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack2 := (recoveredStack2) state.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack3 := ShiftMask.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack2 := (recoveredStack2) bitAnd: (recoveredStack3).
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack3 := ShiftMask.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack2 := (recoveredStack2) == (recoveredStack3).
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := (recoveredStack1) | (recoveredStack2).
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 61] ifFalse: [recoveredPC := 38].
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := selectedWidgets.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack2 := 1.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 48] ifFalse: [recoveredPC := 58].
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack1 := selectedWidgets.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack1 := (recoveredStack1) includes: (recoveredStack2).
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 56] ifFalse: [recoveredPC := 58].
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            (recoveredStack1) resetSelectedWidgets.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack1 := selectedWidgets.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack1 := (recoveredStack1) includes: (recoveredStack2).
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 70] ifFalse: [recoveredPC := 78].
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            (recoveredStack1) removeSelectedWidget: (recoveredStack2).
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredPC := 87.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            (recoveredStack1) addSelectedWidget: (recoveredStack2).
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack1 := (recoveredStack1) numericField.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            (recoveredStack1) setInputFocus.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x203e2288; bytecode file offset 0xcdeb80"
!RBNumericCalibrationEditor methodsFor: 'recovered'!
selectNextWidget
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
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
            (recoveredStack1) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := 1.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredPC := 35.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := subWidgets.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack2 := selectedWidgets.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack2 := (recoveredStack2) last.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := (recoveredStack1) indexOf: (recoveredStack2).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (1).
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack2 := subWidgets.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack2 := (recoveredStack2) size.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := (recoveredStack1) > (recoveredStack2).
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 32] ifFalse: [recoveredPC := 35].
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := 1.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := subWidgets.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2).
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack1 := subWidgets.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack2 := [:block280f84a8Arg1 | 
    | block280f84a8Stack0 block280f84a8Stack1 block280f84a8Stack2 block280f84a8Stack3 block280f84a8PC block280f84a8Step block280f84a8Done block280f84a8Result |
    block280f84a8Stack0 := self.
    block280f84a8PC := 4.
    block280f84a8Done := false.
    [block280f84a8Done not] whileTrue: [
        block280f84a8Step := block280f84a8PC.
        block280f84a8Step = 4 ifTrue: [
            block280f84a8Stack1 := block280f84a8Arg1.
            block280f84a8PC := 5.
        ].
        block280f84a8Step = 5 ifTrue: [
            block280f84a8Stack1 := (block280f84a8Stack1) widgetDictionary.
            block280f84a8PC := 7.
        ].
        block280f84a8Step = 7 ifTrue: [
            block280f84a8Stack1 := (block280f84a8Stack1) asOrderedCollection.
            block280f84a8PC := 9.
        ].
        block280f84a8Step = 9 ifTrue: [
            block280f84a8Stack2 := [:block280f84ccArg1 | 
    | block280f84ccValue0 block280f84ccValue1 |
    block280f84ccValue0 := block280f84ccArg1.
    block280f84ccValue1 := (block280f84ccValue0) removeTabGroup.
    block280f84ccValue1
].
            block280f84a8PC := 11.
        ].
        block280f84a8Step = 11 ifTrue: [
            block280f84a8PC := 18.
        ].
        block280f84a8Step = 18 ifTrue: [
            (block280f84a8Stack1) do: (block280f84a8Stack2).
            block280f84a8PC := 20.
        ].
        block280f84a8Step = 20 ifTrue: [
            block280f84a8Stack1 := block280f84a8Arg1.
            block280f84a8PC := 21.
        ].
        block280f84a8Step = 21 ifTrue: [
            (block280f84a8Stack1) removeTabGroup.
            block280f84a8PC := 23.
        ].
        block280f84a8Step = 23 ifTrue: [
            block280f84a8Stack1 := block280f84a8Arg1.
            block280f84a8PC := 24.
        ].
        block280f84a8Step = 24 ifTrue: [
            block280f84a8Stack2 := 'numericField'.
            block280f84a8PC := 26.
        ].
        block280f84a8Step = 26 ifTrue: [
            block280f84a8Stack1 := (block280f84a8Stack1) widgetAt: (block280f84a8Stack2).
            block280f84a8PC := 28.
        ].
        block280f84a8Step = 28 ifTrue: [
            block280f84a8Stack1 := (block280f84a8Stack1) addTabGroup.
            block280f84a8PC := 30.
        ].
        block280f84a8Step = 30 ifTrue: [
            block280f84a8Result := block280f84a8Stack1.
            block280f84a8Done := true.
        ].
    ].
    block280f84a8Result
].
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            (recoveredStack1) resetSelectedWidgets.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            (recoveredStack0) addSelectedWidget: (recoveredStack1).
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            (recoveredStack0) setInputFocus.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x203f52b4; bytecode file offset 0xcf1bac"
!RBNumericCalibrationEditor methodsFor: 'recovered'!
selectPrevWidget
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
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
            (recoveredStack1) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := subWidgets.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredPC := 38.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := subWidgets.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack2 := selectedWidgets.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack2 := (recoveredStack2) last.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := (recoveredStack1) indexOf: (recoveredStack2).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (-1).
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack2 := 1.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := (recoveredStack1) < (recoveredStack2).
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 34] ifFalse: [recoveredPC := 38].
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := subWidgets.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := subWidgets.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2).
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack1 := subWidgets.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack2 := [:block280f96f0Arg1 | 
    | block280f96f0Stack0 block280f96f0Stack1 block280f96f0Stack2 block280f96f0Stack3 block280f96f0PC block280f96f0Step block280f96f0Done block280f96f0Result |
    block280f96f0Stack0 := self.
    block280f96f0PC := 4.
    block280f96f0Done := false.
    [block280f96f0Done not] whileTrue: [
        block280f96f0Step := block280f96f0PC.
        block280f96f0Step = 4 ifTrue: [
            block280f96f0Stack1 := block280f96f0Arg1.
            block280f96f0PC := 5.
        ].
        block280f96f0Step = 5 ifTrue: [
            block280f96f0Stack1 := (block280f96f0Stack1) widgetDictionary.
            block280f96f0PC := 7.
        ].
        block280f96f0Step = 7 ifTrue: [
            block280f96f0Stack1 := (block280f96f0Stack1) asOrderedCollection.
            block280f96f0PC := 9.
        ].
        block280f96f0Step = 9 ifTrue: [
            block280f96f0Stack2 := [:block280f9714Arg1 | 
    | block280f9714Value0 block280f9714Value1 |
    block280f9714Value0 := block280f9714Arg1.
    block280f9714Value1 := (block280f9714Value0) removeTabGroup.
    block280f9714Value1
].
            block280f96f0PC := 11.
        ].
        block280f96f0Step = 11 ifTrue: [
            block280f96f0PC := 18.
        ].
        block280f96f0Step = 18 ifTrue: [
            (block280f96f0Stack1) do: (block280f96f0Stack2).
            block280f96f0PC := 20.
        ].
        block280f96f0Step = 20 ifTrue: [
            block280f96f0Stack1 := block280f96f0Arg1.
            block280f96f0PC := 21.
        ].
        block280f96f0Step = 21 ifTrue: [
            (block280f96f0Stack1) removeTabGroup.
            block280f96f0PC := 23.
        ].
        block280f96f0Step = 23 ifTrue: [
            block280f96f0Stack1 := block280f96f0Arg1.
            block280f96f0PC := 24.
        ].
        block280f96f0Step = 24 ifTrue: [
            block280f96f0Stack2 := 'numericField'.
            block280f96f0PC := 26.
        ].
        block280f96f0Step = 26 ifTrue: [
            block280f96f0Stack1 := (block280f96f0Stack1) widgetAt: (block280f96f0Stack2).
            block280f96f0PC := 28.
        ].
        block280f96f0Step = 28 ifTrue: [
            block280f96f0Stack1 := (block280f96f0Stack1) addTabGroup.
            block280f96f0PC := 30.
        ].
        block280f96f0Step = 30 ifTrue: [
            block280f96f0Result := block280f96f0Stack1.
            block280f96f0Done := true.
        ].
    ].
    block280f96f0Result
].
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            (recoveredStack1) resetSelectedWidgets.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            (recoveredStack0) addSelectedWidget: (recoveredStack1).
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            (recoveredStack0) setInputFocus.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x204971b4; bytecode file offset 0xd93af8"
!RBNumericCalibrationEditor methodsFor: 'recovered'!
removeSubWidgets: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredPC := 76.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack3 := recoveredLocal3.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := (recoveredStack2) at: (recoveredStack3).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredLocal2 := recoveredStack2.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack2 := (recoveredStack2) variables.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack3 := recoveredLocal2.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack3 := (recoveredStack3) data.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack4 := [].
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            (recoveredStack2) remove: (recoveredStack3) ifAbsent: (recoveredStack4).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack3 := recoveredLocal2.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack3 := (recoveredStack3) data.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            (recoveredStack2) removeData: (recoveredStack3).
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack2 := subWidgets.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack3 := recoveredLocal2.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack2 := (recoveredStack2) indexOf: (recoveredStack3).
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredLocal4 := recoveredStack2.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack2 := recoveredLocal4.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack3 := subWidgets.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack3 := (recoveredStack3) size.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack2 := (recoveredStack2) < (recoveredStack3).
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 46] ifFalse: [recoveredPC := 52].
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack2 := subWidgets.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack3 := recoveredLocal4.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack3 := (recoveredStack3) + (1).
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack2 := (recoveredStack2) at: (recoveredStack3).
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack3 := recoveredLocal2.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            (recoveredStack2) removeSelectedWidget: (recoveredStack3).
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack2 := subWidgets.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack3 := recoveredLocal2.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            (recoveredStack2) remove: (recoveredStack3).
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            (recoveredStack2) destroyWidget.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            (recoveredStack2 == nil) ifTrue: [recoveredPC := 72] ifFalse: [recoveredPC := 68].
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            (recoveredStack2) attachSubWidget: (recoveredStack3).
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack2 := nil.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack3 := recoveredStack2.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredLocal2 := recoveredStack3.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            (recoveredStack1 isInteger and: [recoveredLocal3 isInteger]) ifTrue: [(recoveredLocal3 + 1 <= recoveredStack1) ifTrue: [recoveredLocal3 := recoveredLocal3 + 1. recoveredPC := 14] ifFalse: [recoveredLocal3 := nil. recoveredPC := 90]] ifFalse: [recoveredPC := 80].
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack3 := recoveredLocal3.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack3 := (recoveredStack3) + (1).
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack4 := recoveredStack3.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredLocal3 := recoveredStack4.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack2 := (recoveredStack2) < (recoveredStack3).
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 88] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack2 := nil.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredLocal3 := recoveredStack2.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredStack1 := subWidgets.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredStack1 := (recoveredStack1) isEmpty.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 98] ifFalse: [recoveredPC := 102].
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            recoveredStack1 := (recoveredStack1) close.
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 102 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            (recoveredStack1) adjustShellSize.
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 112] ifFalse: [recoveredPC := 110].
        ].
        recoveredStep = 110 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 112 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            recoveredStack2 := subWidgets.
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            recoveredStack2 := (recoveredStack2) size.
            recoveredPC := 116.
        ].
        recoveredStep = 116 ifTrue: [
            recoveredStack1 := (recoveredStack1) min: (recoveredStack2).
            recoveredPC := 118.
        ].
        recoveredStep = 118 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 119.
        ].
        recoveredStep = 119 ifTrue: [
            recoveredStack1 := selectedWidgets.
            recoveredPC := 121.
        ].
        recoveredStep = 121 ifTrue: [
            recoveredStack1 := (recoveredStack1) isEmpty.
            recoveredPC := 123.
        ].
        recoveredStep = 123 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 126] ifFalse: [recoveredPC := 133].
        ].
        recoveredStep = 126 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 127.
        ].
        recoveredStep = 127 ifTrue: [
            recoveredStack2 := subWidgets.
            recoveredPC := 129.
        ].
        recoveredStep = 129 ifTrue: [
            recoveredStack3 := recoveredLocal4.
            recoveredPC := 130.
        ].
        recoveredStep = 130 ifTrue: [
            recoveredStack2 := (recoveredStack2) at: (recoveredStack3).
            recoveredPC := 131.
        ].
        recoveredStep = 131 ifTrue: [
            (recoveredStack1) addSelectedWidget: (recoveredStack2).
            recoveredPC := 133.
        ].
        recoveredStep = 133 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x204a4ed8; bytecode file offset 0xda17cc"
!RBNumericCalibrationEditor methodsFor: 'recovered'!
menuAddOffset
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) writeProtection.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 8] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := selectedWidgets.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) isEmpty.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := selectedWidgets.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := (recoveredStack0) first.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := (recoveredStack0) isPhysRepresentation.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 32] ifFalse: [recoveredPC := 45].
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack2 := SCAddOffset.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack3 := SCValueOffset.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack0 := (recoveredStack0) editDefault: (recoveredStack1) title: (recoveredStack2) message: (recoveredStack3).
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack0 := (recoveredStack0) isHexRepresentation.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 54] ifFalse: [recoveredPC := 67].
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack1 := '0'.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack2 := SCAddOffset.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack3 := SCValueOffset.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack0 := (recoveredStack0) editHexStringDefault: (recoveredStack1) title: (recoveredStack2) message: (recoveredStack3).
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack0 := (recoveredStack0) isDezRepresentation.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 76] ifFalse: [recoveredPC := 89].
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack1 := '0'.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack2 := SCAddOffset.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack3 := SCValueOffset.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack0 := (recoveredStack0) editDezStringDefault: (recoveredStack1) title: (recoveredStack2) message: (recoveredStack3).
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack0 := (recoveredStack0) isBinRepresentation.
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 98] ifFalse: [recoveredPC := 111].
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            recoveredStack1 := '0'.
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            recoveredStack2 := SCAddOffset.
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            recoveredStack3 := SCValueOffset.
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            recoveredStack0 := (recoveredStack0) editBinStringDefault: (recoveredStack1) title: (recoveredStack2) message: (recoveredStack3).
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 114.
        ].
        recoveredStep = 114 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 120] ifFalse: [recoveredPC := 118].
        ].
        recoveredStep = 118 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 119.
        ].
        recoveredStep = 119 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 120 ifTrue: [
            recoveredStack0 := selectedWidgets.
            recoveredPC := 122.
        ].
        recoveredStep = 122 ifTrue: [
            recoveredStack1 := [:recoveredBlock122Arg1 | 
    | recoveredBlock122Value0 recoveredBlock122Value1 recoveredBlock122Value2 |
    recoveredBlock122Value0 := recoveredBlock122Arg1.
    recoveredBlock122Value1 := recoveredLocal2.
    recoveredBlock122Value2 := (recoveredBlock122Value0) addOffset: (recoveredBlock122Value1).
    recoveredBlock122Value2
].
            recoveredPC := 135.
        ].
        recoveredStep = 135 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 137.
        ].
        recoveredStep = 137 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 138.
        ].
        recoveredStep = 138 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x204b3a80; bytecode file offset 0xdb0374"
!RBNumericCalibrationEditor methodsFor: 'recovered'!
adjustSubWidgetSize
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
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
            recoveredStack1 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) shell.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) height.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := 2.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := (recoveredStack2) marginWidth.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := (recoveredStack1) * (recoveredStack2).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := (recoveredStack0) - (recoveredStack1).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := subWidgets.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (-1).
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack2 := (recoveredStack2) spacing.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := (recoveredStack1) * (recoveredStack2).
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack0 := (recoveredStack0) - (recoveredStack1).
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredLocal4 := recoveredStack0.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := subWidgets.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack0 := (recoveredStack0) // (recoveredStack1).
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack1 := (recoveredStack1) minSubpaneHeight.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack0 := (recoveredStack0) < (recoveredStack1).
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 54] ifFalse: [recoveredPC := 96].
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack0 := (recoveredStack0) minSubpaneHeight.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack0 := (recoveredStack0) scrolledWindow.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack0 := (recoveredStack0) verticalScrollBar.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack0 := (recoveredStack0) width.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack0 := (recoveredStack0) scrolledWindow.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack0 := (recoveredStack0) width.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack0 := (recoveredStack0) - (recoveredStack1).
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack1 := 2.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack2 := (recoveredStack2) marginWidth.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack1 := (recoveredStack1) * (recoveredStack2).
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack0 := (recoveredStack0) - (recoveredStack1).
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack1 := (recoveredStack1) minSubpaneWidth.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack0 := (recoveredStack0) max: (recoveredStack1).
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredPC := 115.
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            recoveredStack0 := (recoveredStack0) scrolledWindow.
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            recoveredStack0 := (recoveredStack0) width.
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            recoveredStack1 := 2.
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            recoveredStack2 := (recoveredStack2) marginWidth.
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            recoveredStack1 := (recoveredStack1) * (recoveredStack2).
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            recoveredStack0 := (recoveredStack0) - (recoveredStack1).
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            recoveredStack1 := (recoveredStack1) minSubpaneWidth.
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            recoveredStack0 := (recoveredStack0) max: (recoveredStack1).
            recoveredPC := 112.
        ].
        recoveredStep = 112 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            recoveredStack0 := subWidgets.
            recoveredPC := 117.
        ].
        recoveredStep = 117 ifTrue: [
            recoveredStack1 := [:recoveredBlock117Arg1 | 
    | recoveredBlock117Value0 recoveredBlock117Value1 recoveredBlock117Value2 recoveredBlock117Value3 recoveredBlock117Value4 recoveredBlock117Value5 |
    recoveredBlock117Value0 := recoveredBlock117Arg1.
    recoveredBlock117Value1 := recoveredBlock117Value0.
    (recoveredBlock117Value1) adjustArrowAttachment.
    recoveredBlock117Value2 := recoveredBlock117Value0.
    recoveredBlock117Value3 := recoveredLocal3.
    (recoveredBlock117Value2) height: (recoveredBlock117Value3).
    recoveredBlock117Value4 := recoveredLocal2.
    recoveredBlock117Value5 := (recoveredBlock117Value0) width: (recoveredBlock117Value4).
    recoveredBlock117Value5
].
            recoveredPC := 140.
        ].
        recoveredStep = 140 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 142.
        ].
        recoveredStep = 142 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 143.
        ].
        recoveredStep = 143 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x204c4220; bytecode file offset 0xdc0b68"
!RBNumericCalibrationEditor methodsFor: 'recovered'!
createDataChannelFor: recoveredArg1 configuration: recoveredArg2
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) form.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := 'aSubPane'.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := subWidgets.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack2 := (recoveredStack2) size.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack2 := (recoveredStack2) printString.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := [:recoveredBlock13Arg1 | 
    | recoveredBlock13Value0 recoveredBlock13Value1 recoveredBlock13Value2 recoveredBlock13Value3 recoveredBlock13Value4 recoveredBlock13Value5 |
    recoveredBlock13Value0 := recoveredBlock13Arg1.
    recoveredBlock13Value1 := recoveredBlock13Value0.
    recoveredBlock13Value2 := (self) class.
    recoveredBlock13Value3 := (recoveredBlock13Value2) defaultSubWidgetHeight.
    recoveredBlock13Value4 := (recoveredBlock13Value3) - (10).
    (recoveredBlock13Value1) height: (recoveredBlock13Value4).
    recoveredBlock13Value5 := (recoveredBlock13Value0) width: (300).
    recoveredBlock13Value5
].
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack0 := (recoveredStack0) createASDNumericCalibrationWidget: (recoveredStack1) argBlock: (recoveredStack2).
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack2 := ButtonPressMask.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack4 := 'subWidgetButtonPress:clientData:callData:'.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack5 := recoveredLocal1.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            (recoveredStack1) addEventHandler: (recoveredStack2) receiver: (recoveredStack3) selector: (recoveredStack4) clientData: (recoveredStack5).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack2 := ButtonMenuMask.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack4 := 'subWidgetButtonMenu:clientData:callData:'.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack5 := recoveredLocal1.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            (recoveredStack1) addEventHandler: (recoveredStack2) receiver: (recoveredStack3) selector: (recoveredStack4) clientData: (recoveredStack5).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack2 := (recoveredStack2) createDataMenu.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            (recoveredStack1) menu: (recoveredStack2) owner: (recoveredStack3).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            (recoveredStack1) owner: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            (recoveredStack1) data: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack2 := (recoveredStack2) largeFont.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            (recoveredStack1) largeFontSize: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            (recoveredStack1) putConfigurationObject: (recoveredStack2).
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack2 := (recoveredStack2) writeProtection.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 98] ifFalse: [recoveredPC := 94].
        ].
        recoveredStep = 94 ifTrue: [
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack1 := (recoveredStack1) isDependentParam.
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            (recoveredStack0) writeProtection: (recoveredStack1).
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack0 := 'Muzaffar'.
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            recoveredStack1 := 'EHI_36284'.
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            recoveredStack0 := (recoveredStack0) == (recoveredStack1).
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            (recoveredStack1) initAsDragDropTarget: (recoveredStack2).
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 112.
        ].
        recoveredStep = 112 ifTrue: [
            (recoveredStack0) initAsDragDropSource: (recoveredStack1).
            recoveredPC := 114.
        ].
        recoveredStep = 114 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            recoveredStack0 := (recoveredStack0) primaryWidget.
            recoveredPC := 117.
        ].
        recoveredStep = 117 ifTrue: [
            recoveredStack1 := [:recoveredBlock117Arg1 | 
    | recoveredBlock117Value0 recoveredBlock117Value1 |
    recoveredBlock117Value0 := recoveredBlock117Arg1.
    recoveredBlock117Value1 := (self) initAsDragDropTarget: (recoveredBlock117Value0).
    recoveredBlock117Value1
].
            recoveredPC := 128.
        ].
        recoveredStep = 128 ifTrue: [
            (recoveredStack0) childrenDo: (recoveredStack1).
            recoveredPC := 130.
        ].
        recoveredStep = 130 ifTrue: [
            recoveredStack0 := subWidgets.
            recoveredPC := 132.
        ].
        recoveredStep = 132 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 133.
        ].
        recoveredStep = 133 ifTrue: [
            (recoveredStack0) add: (recoveredStack1).
            recoveredPC := 135.
        ].
        recoveredStep = 135 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 136.
        ].
        recoveredStep = 136 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 137.
        ].
        recoveredStep = 137 ifTrue: [
            (recoveredStack0) attachSubWidget: (recoveredStack1).
            recoveredPC := 139.
        ].
        recoveredStep = 139 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 140.
        ].
        recoveredStep = 140 ifTrue: [
            recoveredStack1 := 'numericField'.
            recoveredPC := 142.
        ].
        recoveredStep = 142 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetAt: (recoveredStack1).
            recoveredPC := 144.
        ].
        recoveredStep = 144 ifTrue: [
            (recoveredStack0) addTabGroup.
            recoveredPC := 146.
        ].
        recoveredStep = 146 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 147.
        ].
        recoveredStep = 147 ifTrue: [
            (recoveredStack0) manageChild.
            recoveredPC := 149.
        ].
        recoveredStep = 149 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 150.
        ].
        recoveredStep = 150 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20501a68; bytecode file offset 0xdfe374"
!RBNumericCalibrationEditor methodsFor: 'recovered'!
menuFillWithValue
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) writeProtection.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 8] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := selectedWidgets.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) isEmpty.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := selectedWidgets.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := (recoveredStack0) first.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := (recoveredStack0) getValue.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := (recoveredStack0) isPhysRepresentation.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 40] ifFalse: [recoveredPC := 54].
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack2 := SCFillWith.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack3 := SCValueFill.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack0 := (recoveredStack0) editDefault: (recoveredStack1) title: (recoveredStack2) message: (recoveredStack3).
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack0 := (recoveredStack0) isHexRepresentation.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 62] ifFalse: [recoveredPC := 78].
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack1 := (recoveredStack1) asHexString.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack2 := SCFillWith.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack3 := SCValueFill.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack0 := (recoveredStack0) editHexStringDefault: (recoveredStack1) title: (recoveredStack2) message: (recoveredStack3).
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack0 := (recoveredStack0) isDezRepresentation.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 86] ifFalse: [recoveredPC := 102].
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack1 := (recoveredStack1) asString.
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack2 := SCFillWith.
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack3 := SCValueFill.
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack0 := (recoveredStack0) editDezStringDefault: (recoveredStack1) title: (recoveredStack2) message: (recoveredStack3).
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            recoveredStack0 := (recoveredStack0) isBinRepresentation.
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 110] ifFalse: [recoveredPC := 129].
        ].
        recoveredStep = 110 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 114.
        ].
        recoveredStep = 114 ifTrue: [
            recoveredStack2 := 2.
            recoveredPC := 116.
        ].
        recoveredStep = 116 ifTrue: [
            recoveredStack3 := false.
            recoveredPC := 117.
        ].
        recoveredStep = 117 ifTrue: [
            recoveredStack1 := (recoveredStack1) printStringRadix: (recoveredStack2) showRadix: (recoveredStack3).
            recoveredPC := 119.
        ].
        recoveredStep = 119 ifTrue: [
            recoveredStack2 := SCFillWith.
            recoveredPC := 121.
        ].
        recoveredStep = 121 ifTrue: [
            recoveredStack3 := SCValueFill.
            recoveredPC := 123.
        ].
        recoveredStep = 123 ifTrue: [
            recoveredStack0 := (recoveredStack0) editBinStringDefault: (recoveredStack1) title: (recoveredStack2) message: (recoveredStack3).
            recoveredPC := 126.
        ].
        recoveredStep = 126 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 129.
        ].
        recoveredStep = 129 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 132.
        ].
        recoveredStep = 132 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 138] ifFalse: [recoveredPC := 136].
        ].
        recoveredStep = 136 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 137.
        ].
        recoveredStep = 137 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 138 ifTrue: [
            recoveredStack0 := selectedWidgets.
            recoveredPC := 140.
        ].
        recoveredStep = 140 ifTrue: [
            recoveredStack1 := [:recoveredBlock140Arg1 | 
    | recoveredBlock140Local1 recoveredBlock140Stack0 recoveredBlock140Stack1 recoveredBlock140Stack2 recoveredBlock140PC recoveredBlock140Step recoveredBlock140Done recoveredBlock140Result |
    recoveredBlock140Stack0 := self.
    recoveredBlock140PC := 146.
    recoveredBlock140Done := false.
    [recoveredBlock140Done not] whileTrue: [
        recoveredBlock140Step := recoveredBlock140PC.
        recoveredBlock140Step = 146 ifTrue: [
            recoveredBlock140Stack0 := (recoveredBlock140Stack0) hexView.
            recoveredBlock140PC := 148.
        ].
        recoveredBlock140Step = 148 ifTrue: [
            (recoveredBlock140Stack0) ifTrue: [recoveredBlock140PC := 152] ifFalse: [recoveredBlock140PC := 164].
        ].
        recoveredBlock140Step = 152 ifTrue: [
            recoveredBlock140Stack0 := recoveredBlock140Arg1.
            recoveredBlock140PC := 153.
        ].
        recoveredBlock140Step = 153 ifTrue: [
            recoveredBlock140Stack0 := (recoveredBlock140Stack0) data.
            recoveredBlock140PC := 155.
        ].
        recoveredBlock140Step = 155 ifTrue: [
            recoveredBlock140Stack1 := recoveredLocal2.
            recoveredBlock140PC := 158.
        ].
        recoveredBlock140Step = 158 ifTrue: [
            recoveredBlock140Stack0 := (recoveredBlock140Stack0) getPhysValue: (recoveredBlock140Stack1).
            recoveredBlock140PC := 160.
        ].
        recoveredBlock140Step = 160 ifTrue: [
            recoveredBlock140Local1 := recoveredBlock140Stack0.
            recoveredBlock140PC := 161.
        ].
        recoveredBlock140Step = 161 ifTrue: [
            recoveredBlock140PC := 168.
        ].
        recoveredBlock140Step = 164 ifTrue: [
            recoveredBlock140Stack0 := recoveredLocal2.
            recoveredBlock140PC := 167.
        ].
        recoveredBlock140Step = 167 ifTrue: [
            recoveredBlock140Local1 := recoveredBlock140Stack0.
            recoveredBlock140PC := 168.
        ].
        recoveredBlock140Step = 168 ifTrue: [
            recoveredBlock140Stack0 := recoveredBlock140Arg1.
            recoveredBlock140PC := 169.
        ].
        recoveredBlock140Step = 169 ifTrue: [
            recoveredBlock140Stack1 := recoveredBlock140Local1.
            recoveredBlock140PC := 170.
        ].
        recoveredBlock140Step = 170 ifTrue: [
            recoveredBlock140Stack0 := (recoveredBlock140Stack0) fillWithValue: (recoveredBlock140Stack1).
            recoveredBlock140PC := 172.
        ].
        recoveredBlock140Step = 172 ifTrue: [
            recoveredBlock140Result := recoveredBlock140Stack0.
            recoveredBlock140Done := true.
        ].
    ].
    recoveredBlock140Result
].
            recoveredPC := 173.
        ].
        recoveredStep = 173 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 175.
        ].
        recoveredStep = 175 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 176.
        ].
        recoveredStep = 176 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2051c3c0; bytecode file offset 0xe18cd0"
!RBNumericCalibrationEditor methodsFor: 'recovered'!
menuSetup
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
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
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := 'Kli'.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack2 := 'Call_70389'.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := (recoveredStack1) == (recoveredStack2).
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := (recoveredStack0) isHex.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 30] ifFalse: [recoveredPC := 47].
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack0 := (recoveredStack0) dataElement.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack0 := (recoveredStack0) getImplType.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack0 := (recoveredStack0) isRBFloat.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 42] ifFalse: [recoveredPC := 47].
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack0 := RBCalibrationWindow.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack0 := (recoveredStack0) errorNoSetupInHexDisplayMode.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack0 := (recoveredStack0) isHex.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 72] ifFalse: [recoveredPC := 54].
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack0 := (recoveredStack0) dataElement.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack1 := (recoveredStack1) incDecStep.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack0 := (recoveredStack0) getPhysValue: (recoveredStack1).
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredPC := 80.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack0 := (recoveredStack0) incDecStep.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack0 := (recoveredStack0) class.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack0 := (recoveredStack0) defaultSetupDialogClass.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack0 := (recoveredStack0) create.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredLocal4 := recoveredStack0.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            recoveredStack2 := (recoveredStack2) precision.
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            (recoveredStack1) precision: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            (recoveredStack1) incDecStep: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            recoveredStack2 := (recoveredStack2) numberRepresentation.
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            (recoveredStack1) numberRepresentation: (recoveredStack2).
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            (recoveredStack0) prompt.
            recoveredPC := 117.
        ].
        recoveredStep = 117 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 120.
        ].
        recoveredStep = 120 ifTrue: [
            recoveredStack0 := (recoveredStack0) precision.
            recoveredPC := 122.
        ].
        recoveredStep = 122 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 123.
        ].
        recoveredStep = 123 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 126.
        ].
        recoveredStep = 126 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 132] ifFalse: [recoveredPC := 130].
        ].
        recoveredStep = 130 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 131.
        ].
        recoveredStep = 131 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 132 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 135.
        ].
        recoveredStep = 135 ifTrue: [
            recoveredStack0 := (recoveredStack0) incDecStep.
            recoveredPC := 137.
        ].
        recoveredStep = 137 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 138.
        ].
        recoveredStep = 138 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 141.
        ].
        recoveredStep = 141 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 146] ifFalse: [recoveredPC := 144].
        ].
        recoveredStep = 144 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 145.
        ].
        recoveredStep = 145 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 146 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 147.
        ].
        recoveredStep = 147 ifTrue: [
            recoveredStack0 := (recoveredStack0) isHex.
            recoveredPC := 149.
        ].
        recoveredStep = 149 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 165] ifFalse: [recoveredPC := 152].
        ].
        recoveredStep = 152 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 155.
        ].
        recoveredStep = 155 ifTrue: [
            recoveredStack0 := (recoveredStack0) dataElement.
            recoveredPC := 157.
        ].
        recoveredStep = 157 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 160.
        ].
        recoveredStep = 160 ifTrue: [
            recoveredStack0 := (recoveredStack0) getImplValue: (recoveredStack1).
            recoveredPC := 162.
        ].
        recoveredStep = 162 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 165.
        ].
        recoveredStep = 165 ifTrue: [
            recoveredStack0 := selectedWidgets.
            recoveredPC := 167.
        ].
        recoveredStep = 167 ifTrue: [
            recoveredStack1 := [:recoveredBlock167Arg1 | 
    | recoveredBlock167Value0 recoveredBlock167Value1 recoveredBlock167Value2 recoveredBlock167Value3 recoveredBlock167Value4 |
    recoveredBlock167Value0 := recoveredBlock167Arg1.
    recoveredBlock167Value1 := recoveredLocal2.
    (recoveredBlock167Value0) precision: (recoveredBlock167Value1).
    recoveredBlock167Value2 := recoveredBlock167Arg1.
    recoveredBlock167Value3 := recoveredLocal1.
    recoveredBlock167Value4 := (recoveredBlock167Value2) incDecStep: (recoveredBlock167Value3).
    recoveredBlock167Value4
].
            recoveredPC := 187.
        ].
        recoveredStep = 187 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 189.
        ].
        recoveredStep = 189 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 190.
        ].
        recoveredStep = 190 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2053276c; bytecode file offset 0xe2f09c"
!RBNumericCalibrationEditor methodsFor: 'recovered'!
installActionKeys
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 recoveredValue21 recoveredValue22 recoveredValue23 recoveredValue24 recoveredValue25 recoveredValue26 recoveredValue27 recoveredValue28 recoveredValue29 recoveredValue30 recoveredValue31 recoveredValue32 recoveredValue33 recoveredValue34 recoveredValue35 recoveredValue36 recoveredValue37 recoveredValue38 recoveredValue39 recoveredValue40 recoveredValue41 recoveredValue42 recoveredValue43 recoveredValue44 recoveredValue45 recoveredValue46 recoveredValue47 |
    recoveredValue0 := Dictionary.
    recoveredValue1 := (recoveredValue0) new.
    recoveredLocal2 := recoveredValue1.
    recoveredValue2 := (self) globalActionKeys.
    recoveredLocal1 := recoveredValue2.
    recoveredValue3 := recoveredLocal1.
    recoveredValue4 := recoveredValue3.
    (recoveredValue4) at: ($h) put: ('menuChangeToHexRepresentation').
    recoveredValue5 := recoveredValue3.
    (recoveredValue5) at: ($p) put: ('menuChangeToPhysRepresentation').
    recoveredValue6 := recoveredValue3.
    (recoveredValue6) at: ($z) put: ('menuChangeToDezRepresentation').
    recoveredValue7 := recoveredValue3.
    (recoveredValue7) at: ($r) put: ('menuChangeToBinRepresentation').
    recoveredValue8 := recoveredValue3.
    (recoveredValue8) at: ($m) put: ('menuIncrement').
    recoveredValue9 := recoveredValue3.
    (recoveredValue9) at: ($n) put: ('menuDecrement').
    recoveredValue10 := recoveredValue3.
    (recoveredValue10) at: ($+) put: ('menuAddOffset').
    recoveredValue11 := recoveredValue3.
    (recoveredValue11) at: ($*) put: ('menuMultFactor').
    recoveredValue12 := recoveredValue3.
    (recoveredValue12) at: ($=) put: ('menuFillWithValue').
    recoveredValue13 := recoveredValue3.
    (recoveredValue13) at: ($>) put: ('menuFontToggle').
    recoveredValue14 := recoveredValue3.
    (recoveredValue14) at: ($?) put: ('menuShowInfo').
    recoveredValue15 := recoveredValue3.
    (recoveredValue15) at: ($i) put: ('menuShowInfo').
    recoveredValue16 := recoveredValue3.
    recoveredValue17 := Character.
    recoveredValue18 := XKUp.
    recoveredValue19 := (recoveredValue17) value: (recoveredValue18).
    recoveredValue20 := (recoveredValue19) asString.
    recoveredValue21 := ('Ctrl-') , (recoveredValue20).
    (recoveredValue16) at: (recoveredValue21) put: ('selectPrevWidgetShift').
    recoveredValue22 := recoveredValue3.
    recoveredValue23 := Character.
    recoveredValue24 := XKUp.
    recoveredValue25 := (recoveredValue23) value: (recoveredValue24).
    recoveredValue26 := (recoveredValue25) asString.
    recoveredValue27 := ('Shift-') , (recoveredValue26).
    (recoveredValue22) at: (recoveredValue27) put: ('selectPrevWidgetShift').
    recoveredValue28 := recoveredValue3.
    recoveredValue29 := Character.
    recoveredValue30 := XKDown.
    recoveredValue31 := (recoveredValue29) value: (recoveredValue30).
    recoveredValue32 := (recoveredValue31) asString.
    recoveredValue33 := ('Ctrl-') , (recoveredValue32).
    (recoveredValue28) at: (recoveredValue33) put: ('selectNextWidgetShift').
    recoveredValue34 := recoveredValue3.
    recoveredValue35 := Character.
    recoveredValue36 := XKDown.
    recoveredValue37 := (recoveredValue35) value: (recoveredValue36).
    recoveredValue38 := (recoveredValue37) asString.
    recoveredValue39 := ('Shift-') , (recoveredValue38).
    (recoveredValue34) at: (recoveredValue39) put: ('selectNextWidgetShift').
    recoveredValue40 := recoveredValue3.
    recoveredValue41 := XKPrior.
    (recoveredValue40) at: (recoveredValue41) put: ('menuMoveSubwidgetUp').
    recoveredValue42 := recoveredValue3.
    recoveredValue43 := XKNext.
    (recoveredValue42) at: (recoveredValue43) put: ('menuMoveSubwidgetDown').
    recoveredValue44 := recoveredLocal2.
    recoveredValue45 := (self) shell.
    recoveredValue46 := recoveredLocal1.
    (recoveredValue44) at: (recoveredValue45) put: (recoveredValue46).
    recoveredValue47 := recoveredLocal2.
    (self) widgetKeyActions: (recoveredValue47).
    ^self
! !

"ASDBase.ic method 0x205634f0; bytecode file offset 0xe5fe94"
!RBNumericCalibrationEditor methodsFor: 'recovered'!
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
    | recoveredBlock208Value0 recoveredBlock208Value1 recoveredBlock208Value2 recoveredBlock208Value3 recoveredBlock208Value4 recoveredBlock208Value5 recoveredBlock208Value6 |
    recoveredBlock208Value0 := (self) shell.
    recoveredBlock208Value1 := recoveredBlock208Value0.
    recoveredBlock208Value2 := recoveredLocal2.
    recoveredBlock208Value3 := (recoveredBlock208Value2) x.
    (recoveredBlock208Value1) width: (recoveredBlock208Value3).
    recoveredBlock208Value4 := recoveredLocal2.
    recoveredBlock208Value5 := (recoveredBlock208Value4) y.
    recoveredBlock208Value6 := (recoveredBlock208Value0) height: (recoveredBlock208Value5).
    recoveredBlock208Value6
].
            recoveredPC := 232.
        ].
        recoveredStep = 232 ifTrue: [
            (recoveredStack0) deferRedraw: (recoveredStack1).
            recoveredPC := 234.
        ].
        recoveredStep = 234 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 235.
        ].
        recoveredStep = 235 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x205ad340; bytecode file offset 0xea9cbc"
!RBNumericCalibrationEditor methodsFor: 'recovered'!
createEditMenu
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 recoveredValue21 recoveredValue22 recoveredValue23 recoveredValue24 recoveredValue25 recoveredValue26 recoveredValue27 recoveredValue28 recoveredValue29 recoveredValue30 recoveredValue31 recoveredValue32 recoveredValue33 recoveredValue34 recoveredValue35 recoveredValue36 recoveredValue37 recoveredValue38 recoveredValue39 recoveredValue40 recoveredValue41 recoveredValue42 recoveredValue43 recoveredValue44 recoveredValue45 recoveredValue46 recoveredValue47 recoveredValue48 recoveredValue49 recoveredValue50 recoveredValue51 recoveredValue52 recoveredValue53 recoveredValue54 recoveredValue55 recoveredValue56 recoveredValue57 recoveredValue58 recoveredValue59 recoveredValue60 recoveredValue61 recoveredValue62 recoveredValue63 recoveredValue64 recoveredValue65 recoveredValue66 recoveredValue67 recoveredValue68 recoveredValue69 |
    recoveredValue0 := CwMenu.
    recoveredValue1 := (recoveredValue0) defaultMenuClass.
    recoveredValue2 := (recoveredValue1) new.
    recoveredValue3 := recoveredValue2.
    recoveredValue4 := MTEdit.
    (recoveredValue3) title: (recoveredValue4).
    recoveredValue5 := recoveredValue2.
    recoveredValue6 := GMVUndo.
    recoveredValue7 := [
    | recoveredBlock18Value0 |
    recoveredBlock18Value0 := (self) canUndo.
    recoveredBlock18Value0
].
    (recoveredValue5) add: ('menuUndo') label: (recoveredValue6) enable: (recoveredValue7).
    recoveredValue8 := recoveredValue2.
    recoveredValue9 := CwAccelerator.
    recoveredValue10 := ControlMask.
    recoveredValue11 := XKU.
    recoveredValue12 := (recoveredValue9) mask: (recoveredValue10) keysym: (recoveredValue11).
    (recoveredValue8) setAcceleratorAt: ('menuUndo') to: (recoveredValue12) text: ('Ctrl+U').
    recoveredValue13 := recoveredValue2.
    recoveredValue14 := GMVRedo.
    recoveredValue15 := [
    | recoveredBlock49Value0 |
    recoveredBlock49Value0 := (self) canRedo.
    recoveredBlock49Value0
].
    (recoveredValue13) add: ('menuRedo') label: (recoveredValue14) enable: (recoveredValue15).
    recoveredValue16 := recoveredValue2.
    recoveredValue17 := CwAccelerator.
    recoveredValue18 := ControlMask.
    recoveredValue19 := XKD.
    recoveredValue20 := (recoveredValue17) mask: (recoveredValue18) keysym: (recoveredValue19).
    (recoveredValue16) setAcceleratorAt: ('menuRedo') to: (recoveredValue20) text: ('Ctrl+D').
    recoveredValue21 := recoveredValue2.
    recoveredValue22 := GMVCopy.
    recoveredValue23 := [
    | recoveredBlock81Value0 |
    recoveredBlock81Value0 := (self) isCopyAllowed.
    recoveredBlock81Value0
].
    (recoveredValue21) add: ('menuCopySelectionIntoClipboard') label: (recoveredValue22) enable: (recoveredValue23).
    recoveredValue24 := recoveredValue2.
    recoveredValue25 := CwAccelerator.
    recoveredValue26 := ControlMask.
    recoveredValue27 := XKC.
    recoveredValue28 := (recoveredValue25) mask: (recoveredValue26) keysym: (recoveredValue27).
    (recoveredValue24) setAcceleratorAt: ('menuCopySelectionIntoClipboard') to: (recoveredValue28) text: ('Ctrl+C').
    recoveredValue29 := recoveredValue2.
    recoveredValue30 := GMVPaste.
    recoveredValue31 := [
    | recoveredBlock113Value0 |
    recoveredBlock113Value0 := (self) isPasteAllowed.
    recoveredBlock113Value0
].
    (recoveredValue29) add: ('menuPasteFromClipboard') label: (recoveredValue30) enable: (recoveredValue31).
    recoveredValue32 := recoveredValue2.
    recoveredValue33 := CwAccelerator.
    recoveredValue34 := ControlMask.
    recoveredValue35 := XKV.
    recoveredValue36 := (recoveredValue33) mask: (recoveredValue34) keysym: (recoveredValue35).
    (recoveredValue32) setAcceleratorAt: ('menuPasteFromClipboard') to: (recoveredValue36) text: ('Ctrl+V').
    recoveredValue37 := recoveredValue2.
    (recoveredValue37) addLine.
    recoveredValue38 := recoveredValue2.
    recoveredValue39 := GMVDecrement.
    recoveredValue40 := [
    | recoveredBlock148Value0 recoveredBlock148Value1 recoveredBlock148Value2 recoveredBlock148Value3 recoveredBlock148Value4 |
    recoveredBlock148Value0 := (self) writeProtection.
    recoveredBlock148Value1 := (recoveredBlock148Value0) not.
    recoveredBlock148Value2 := selectedWidgets.
    recoveredBlock148Value3 := (recoveredBlock148Value2) notEmpty.
    recoveredBlock148Value4 := (recoveredBlock148Value1) & (recoveredBlock148Value3).
    recoveredBlock148Value4
].
    (recoveredValue38) add: ('menuDecrement') label: (recoveredValue39) enable: (recoveredValue40).
    recoveredValue41 := recoveredValue2.
    recoveredValue42 := CwAccelerator.
    recoveredValue43 := ControlMask.
    recoveredValue44 := XKN.
    recoveredValue45 := (recoveredValue42) mask: (recoveredValue43) keysym: (recoveredValue44).
    (recoveredValue41) setAcceleratorAt: ('menuDecrement') to: (recoveredValue45) text: ('Ctrl+N').
    recoveredValue46 := recoveredValue2.
    recoveredValue47 := GMVIncrement.
    recoveredValue48 := [
    | recoveredBlock186Value0 recoveredBlock186Value1 recoveredBlock186Value2 recoveredBlock186Value3 recoveredBlock186Value4 |
    recoveredBlock186Value0 := (self) writeProtection.
    recoveredBlock186Value1 := (recoveredBlock186Value0) not.
    recoveredBlock186Value2 := selectedWidgets.
    recoveredBlock186Value3 := (recoveredBlock186Value2) notEmpty.
    recoveredBlock186Value4 := (recoveredBlock186Value1) & (recoveredBlock186Value3).
    recoveredBlock186Value4
].
    (recoveredValue46) add: ('menuIncrement') label: (recoveredValue47) enable: (recoveredValue48).
    recoveredValue49 := recoveredValue2.
    recoveredValue50 := CwAccelerator.
    recoveredValue51 := ControlMask.
    recoveredValue52 := XKM.
    recoveredValue53 := (recoveredValue50) mask: (recoveredValue51) keysym: (recoveredValue52).
    (recoveredValue49) setAcceleratorAt: ('menuIncrement') to: (recoveredValue53) text: ('Ctrl+M').
    recoveredValue54 := recoveredValue2.
    recoveredValue55 := GMVAddOffset.
    recoveredValue56 := Dots.
    recoveredValue57 := (recoveredValue55) , (recoveredValue56).
    recoveredValue58 := [
    | recoveredBlock228Value0 recoveredBlock228Value1 recoveredBlock228Value2 recoveredBlock228Value3 recoveredBlock228Value4 |
    recoveredBlock228Value0 := (self) writeProtection.
    recoveredBlock228Value1 := (recoveredBlock228Value0) not.
    recoveredBlock228Value2 := selectedWidgets.
    recoveredBlock228Value3 := (recoveredBlock228Value2) notEmpty.
    recoveredBlock228Value4 := (recoveredBlock228Value1) & (recoveredBlock228Value3).
    recoveredBlock228Value4
].
    (recoveredValue54) add: ('menuAddOffset') label: (recoveredValue57) enable: (recoveredValue58).
    recoveredValue59 := recoveredValue2.
    recoveredValue60 := GMVMultiplyWith.
    recoveredValue61 := Dots.
    recoveredValue62 := (recoveredValue60) , (recoveredValue61).
    recoveredValue63 := [
    | recoveredBlock255Value0 recoveredBlock255Value1 recoveredBlock255Value2 recoveredBlock255Value3 recoveredBlock255Value4 |
    recoveredBlock255Value0 := (self) writeProtection.
    recoveredBlock255Value1 := (recoveredBlock255Value0) not.
    recoveredBlock255Value2 := selectedWidgets.
    recoveredBlock255Value3 := (recoveredBlock255Value2) notEmpty.
    recoveredBlock255Value4 := (recoveredBlock255Value1) & (recoveredBlock255Value3).
    recoveredBlock255Value4
].
    (recoveredValue59) add: ('menuMultFactor') label: (recoveredValue62) enable: (recoveredValue63).
    recoveredValue64 := recoveredValue2.
    recoveredValue65 := GMVFillWith.
    recoveredValue66 := Dots.
    recoveredValue67 := (recoveredValue65) , (recoveredValue66).
    recoveredValue68 := [
    | recoveredBlock283Value0 recoveredBlock283Value1 recoveredBlock283Value2 recoveredBlock283Value3 recoveredBlock283Value4 |
    recoveredBlock283Value0 := (self) writeProtection.
    recoveredBlock283Value1 := (recoveredBlock283Value0) not.
    recoveredBlock283Value2 := selectedWidgets.
    recoveredBlock283Value3 := (recoveredBlock283Value2) notEmpty.
    recoveredBlock283Value4 := (recoveredBlock283Value1) & (recoveredBlock283Value3).
    recoveredBlock283Value4
].
    (recoveredValue64) add: ('menuFillWithValue') label: (recoveredValue67) enable: (recoveredValue68).
    recoveredLocal1 := recoveredValue2.
    recoveredValue69 := recoveredLocal1.
    ^recoveredValue69
! !

"ASDBase.ic method 0x205b1c34; bytecode file offset 0xeae58c"
!RBNumericCalibrationEditor methodsFor: 'recovered'!
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
    (recoveredBlock24Value1) title: ('Window').
    recoveredBlock24Value2 := recoveredBlock24Value0.
    recoveredBlock24Value3 := recoveredLocal6.
    recoveredBlock24Value4 := (50) * (recoveredBlock24Value3).
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
    recoveredBlock199Value3 := (25) * (recoveredBlock199Value2).
    recoveredBlock199Value4 := (recoveredBlock199Value3) rounded.
    (recoveredBlock199Value1) height: (recoveredBlock199Value4).
    recoveredBlock199Value5 := recoveredLocal7.
    recoveredBlock199Value6 := (250) * (recoveredBlock199Value5).
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
            recoveredStack2 := [:block28116c68Arg1 | 
    | block28116c68Value0 block28116c68Value1 block28116c68Value2 block28116c68Value3 block28116c68Value4 block28116c68Value5 block28116c68Value6 block28116c68Value7 block28116c68Value8 |
    block28116c68Value0 := block28116c68Arg1.
    block28116c68Value1 := block28116c68Value0.
    block28116c68Value2 := XmATTACHFORM.
    (block28116c68Value1) bottomAttachment: (block28116c68Value2).
    block28116c68Value3 := block28116c68Value0.
    block28116c68Value4 := XmATTACHFORM.
    (block28116c68Value3) topAttachment: (block28116c68Value4).
    block28116c68Value5 := block28116c68Value0.
    block28116c68Value6 := XmATTACHFORM.
    (block28116c68Value5) leftAttachment: (block28116c68Value6).
    block28116c68Value7 := XmATTACHFORM.
    block28116c68Value8 := (block28116c68Value0) rightAttachment: (block28116c68Value7).
    block28116c68Value8
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

"ASDBase.ic method 0x205f55fc; bytecode file offset 0xef1f90"
!RBNumericCalibrationEditor methodsFor: 'recovered'!
createOptionsMenu
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
            recoveredStack3 := MTExtras.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack2) title: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack3 := 'menuChangeTitle'.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack4 := GMVChangeTitle.
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
    true
].
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            (recoveredStack2) add: (recoveredStack3) label: (recoveredStack4) enable: (recoveredStack5).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            (recoveredStack2) addLine.
            recoveredStack2 := recoveredStack1.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack3 := 'menuSetup'.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack4 := GMVDisplaySetup.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack5 := Dots.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack4 := (recoveredStack4) , (recoveredStack5).
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack5 := [
    | recoveredBlock44Value0 recoveredBlock44Value1 |
    recoveredBlock44Value0 := selectedWidgets.
    recoveredBlock44Value1 := (recoveredBlock44Value0) notEmpty.
    recoveredBlock44Value1
].
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            (recoveredStack2) add: (recoveredStack3) label: (recoveredStack4) enable: (recoveredStack5).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack3 := 'menuSetup'.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack4 := CwAccelerator.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack5 := ControlMask.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack6 := XKS.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack4 := (recoveredStack4) mask: (recoveredStack5) keysym: (recoveredStack6).
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack5 := 'Ctrl+S'.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            (recoveredStack2) setAcceleratorAt: (recoveredStack3) to: (recoveredStack4) text: (recoveredStack5).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack3 := 'menuChangeToPhysRepresentation'.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack4 := GMVChangeToPhysView.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack5 := [
    | recoveredBlock77Value0 recoveredBlock77Value1 recoveredBlock77Value2 |
    recoveredBlock77Value0 := selectedWidgets.
    recoveredBlock77Value1 := (recoveredBlock77Value0) isEmpty.
    recoveredBlock77Value2 := (recoveredBlock77Value1) not.
    recoveredBlock77Value2
].
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack6 := [
    | recoveredBlock90Stack0 recoveredBlock90Stack1 recoveredBlock90Stack2 recoveredBlock90PC recoveredBlock90Step recoveredBlock90Done recoveredBlock90Result |
    recoveredBlock90Stack0 := self.
    recoveredBlock90PC := 96.
    recoveredBlock90Done := false.
    [recoveredBlock90Done not] whileTrue: [
        recoveredBlock90Step := recoveredBlock90PC.
        recoveredBlock90Step = 96 ifTrue: [
            recoveredBlock90Stack1 := selectedWidgets.
            recoveredBlock90PC := 98.
        ].
        recoveredBlock90Step = 98 ifTrue: [
            recoveredBlock90Stack1 := (recoveredBlock90Stack1) isEmpty.
            recoveredBlock90PC := 100.
        ].
        recoveredBlock90Step = 100 ifTrue: [
            (recoveredBlock90Stack1) ifTrue: [recoveredBlock90PC := 104] ifFalse: [recoveredBlock90PC := 108].
        ].
        recoveredBlock90Step = 104 ifTrue: [
            recoveredBlock90Stack1 := false.
            recoveredBlock90PC := 105.
        ].
        recoveredBlock90Step = 105 ifTrue: [
            recoveredBlock90PC := 114.
        ].
        recoveredBlock90Step = 108 ifTrue: [
            recoveredBlock90Stack1 := selectedWidgets.
            recoveredBlock90PC := 110.
        ].
        recoveredBlock90Step = 110 ifTrue: [
            recoveredBlock90Stack1 := (recoveredBlock90Stack1) first.
            recoveredBlock90PC := 112.
        ].
        recoveredBlock90Step = 112 ifTrue: [
            recoveredBlock90Stack1 := (recoveredBlock90Stack1) isPhysRepresentation.
            recoveredBlock90PC := 114.
        ].
        recoveredBlock90Step = 114 ifTrue: [
            recoveredBlock90Result := recoveredBlock90Stack1.
            recoveredBlock90Done := true.
        ].
    ].
    recoveredBlock90Result
].
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            (recoveredStack2) add: (recoveredStack3) label: (recoveredStack4) enable: (recoveredStack5) toggle: (recoveredStack6).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 118.
        ].
        recoveredStep = 118 ifTrue: [
            recoveredStack3 := 'menuChangeToPhysRepresentation'.
            recoveredPC := 120.
        ].
        recoveredStep = 120 ifTrue: [
            recoveredStack4 := CwAccelerator.
            recoveredPC := 122.
        ].
        recoveredStep = 122 ifTrue: [
            recoveredStack5 := ControlMask.
            recoveredPC := 124.
        ].
        recoveredStep = 124 ifTrue: [
            recoveredStack6 := XKP.
            recoveredPC := 126.
        ].
        recoveredStep = 126 ifTrue: [
            recoveredStack4 := (recoveredStack4) mask: (recoveredStack5) keysym: (recoveredStack6).
            recoveredPC := 128.
        ].
        recoveredStep = 128 ifTrue: [
            recoveredStack5 := 'Ctrl+P'.
            recoveredPC := 130.
        ].
        recoveredStep = 130 ifTrue: [
            (recoveredStack2) setAcceleratorAt: (recoveredStack3) to: (recoveredStack4) text: (recoveredStack5).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 133.
        ].
        recoveredStep = 133 ifTrue: [
            recoveredStack3 := 'menuChangeToHexRepresentation'.
            recoveredPC := 135.
        ].
        recoveredStep = 135 ifTrue: [
            recoveredStack4 := GMVChangeToHexView.
            recoveredPC := 137.
        ].
        recoveredStep = 137 ifTrue: [
            recoveredStack5 := [
    | recoveredBlock137Value0 recoveredBlock137Value1 recoveredBlock137Value2 |
    recoveredBlock137Value0 := selectedWidgets.
    recoveredBlock137Value1 := (recoveredBlock137Value0) isEmpty.
    recoveredBlock137Value2 := (recoveredBlock137Value1) not.
    recoveredBlock137Value2
].
            recoveredPC := 150.
        ].
        recoveredStep = 150 ifTrue: [
            recoveredStack6 := [
    | recoveredBlock150Stack0 recoveredBlock150Stack1 recoveredBlock150Stack2 recoveredBlock150PC recoveredBlock150Step recoveredBlock150Done recoveredBlock150Result |
    recoveredBlock150Stack0 := self.
    recoveredBlock150PC := 156.
    recoveredBlock150Done := false.
    [recoveredBlock150Done not] whileTrue: [
        recoveredBlock150Step := recoveredBlock150PC.
        recoveredBlock150Step = 156 ifTrue: [
            recoveredBlock150Stack1 := selectedWidgets.
            recoveredBlock150PC := 158.
        ].
        recoveredBlock150Step = 158 ifTrue: [
            recoveredBlock150Stack1 := (recoveredBlock150Stack1) isEmpty.
            recoveredBlock150PC := 160.
        ].
        recoveredBlock150Step = 160 ifTrue: [
            (recoveredBlock150Stack1) ifTrue: [recoveredBlock150PC := 164] ifFalse: [recoveredBlock150PC := 168].
        ].
        recoveredBlock150Step = 164 ifTrue: [
            recoveredBlock150Stack1 := false.
            recoveredBlock150PC := 165.
        ].
        recoveredBlock150Step = 165 ifTrue: [
            recoveredBlock150PC := 174.
        ].
        recoveredBlock150Step = 168 ifTrue: [
            recoveredBlock150Stack1 := selectedWidgets.
            recoveredBlock150PC := 170.
        ].
        recoveredBlock150Step = 170 ifTrue: [
            recoveredBlock150Stack1 := (recoveredBlock150Stack1) first.
            recoveredBlock150PC := 172.
        ].
        recoveredBlock150Step = 172 ifTrue: [
            recoveredBlock150Stack1 := (recoveredBlock150Stack1) isHexRepresentation.
            recoveredBlock150PC := 174.
        ].
        recoveredBlock150Step = 174 ifTrue: [
            recoveredBlock150Result := recoveredBlock150Stack1.
            recoveredBlock150Done := true.
        ].
    ].
    recoveredBlock150Result
].
            recoveredPC := 175.
        ].
        recoveredStep = 175 ifTrue: [
            (recoveredStack2) add: (recoveredStack3) label: (recoveredStack4) enable: (recoveredStack5) toggle: (recoveredStack6).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 178.
        ].
        recoveredStep = 178 ifTrue: [
            recoveredStack3 := 'menuChangeToHexRepresentation'.
            recoveredPC := 180.
        ].
        recoveredStep = 180 ifTrue: [
            recoveredStack4 := CwAccelerator.
            recoveredPC := 182.
        ].
        recoveredStep = 182 ifTrue: [
            recoveredStack5 := ControlMask.
            recoveredPC := 184.
        ].
        recoveredStep = 184 ifTrue: [
            recoveredStack6 := XKH.
            recoveredPC := 186.
        ].
        recoveredStep = 186 ifTrue: [
            recoveredStack4 := (recoveredStack4) mask: (recoveredStack5) keysym: (recoveredStack6).
            recoveredPC := 188.
        ].
        recoveredStep = 188 ifTrue: [
            recoveredStack5 := 'Ctrl+H'.
            recoveredPC := 190.
        ].
        recoveredStep = 190 ifTrue: [
            (recoveredStack2) setAcceleratorAt: (recoveredStack3) to: (recoveredStack4) text: (recoveredStack5).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 193.
        ].
        recoveredStep = 193 ifTrue: [
            recoveredStack3 := 'menuChangeToDezRepresentation'.
            recoveredPC := 195.
        ].
        recoveredStep = 195 ifTrue: [
            recoveredStack4 := GMVDezDisplay.
            recoveredPC := 197.
        ].
        recoveredStep = 197 ifTrue: [
            recoveredStack5 := [
    | recoveredBlock197Value0 recoveredBlock197Value1 recoveredBlock197Value2 |
    recoveredBlock197Value0 := selectedWidgets.
    recoveredBlock197Value1 := (recoveredBlock197Value0) isEmpty.
    recoveredBlock197Value2 := (recoveredBlock197Value1) not.
    recoveredBlock197Value2
].
            recoveredPC := 210.
        ].
        recoveredStep = 210 ifTrue: [
            recoveredStack6 := [
    | recoveredBlock210Stack0 recoveredBlock210Stack1 recoveredBlock210Stack2 recoveredBlock210PC recoveredBlock210Step recoveredBlock210Done recoveredBlock210Result |
    recoveredBlock210Stack0 := self.
    recoveredBlock210PC := 216.
    recoveredBlock210Done := false.
    [recoveredBlock210Done not] whileTrue: [
        recoveredBlock210Step := recoveredBlock210PC.
        recoveredBlock210Step = 216 ifTrue: [
            recoveredBlock210Stack1 := selectedWidgets.
            recoveredBlock210PC := 218.
        ].
        recoveredBlock210Step = 218 ifTrue: [
            recoveredBlock210Stack1 := (recoveredBlock210Stack1) isEmpty.
            recoveredBlock210PC := 220.
        ].
        recoveredBlock210Step = 220 ifTrue: [
            (recoveredBlock210Stack1) ifTrue: [recoveredBlock210PC := 224] ifFalse: [recoveredBlock210PC := 228].
        ].
        recoveredBlock210Step = 224 ifTrue: [
            recoveredBlock210Stack1 := false.
            recoveredBlock210PC := 225.
        ].
        recoveredBlock210Step = 225 ifTrue: [
            recoveredBlock210PC := 234.
        ].
        recoveredBlock210Step = 228 ifTrue: [
            recoveredBlock210Stack1 := selectedWidgets.
            recoveredBlock210PC := 230.
        ].
        recoveredBlock210Step = 230 ifTrue: [
            recoveredBlock210Stack1 := (recoveredBlock210Stack1) first.
            recoveredBlock210PC := 232.
        ].
        recoveredBlock210Step = 232 ifTrue: [
            recoveredBlock210Stack1 := (recoveredBlock210Stack1) isDezRepresentation.
            recoveredBlock210PC := 234.
        ].
        recoveredBlock210Step = 234 ifTrue: [
            recoveredBlock210Result := recoveredBlock210Stack1.
            recoveredBlock210Done := true.
        ].
    ].
    recoveredBlock210Result
].
            recoveredPC := 235.
        ].
        recoveredStep = 235 ifTrue: [
            (recoveredStack2) add: (recoveredStack3) label: (recoveredStack4) enable: (recoveredStack5) toggle: (recoveredStack6).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 238.
        ].
        recoveredStep = 238 ifTrue: [
            recoveredStack3 := 'menuChangeToDezRepresentation'.
            recoveredPC := 240.
        ].
        recoveredStep = 240 ifTrue: [
            recoveredStack4 := CwAccelerator.
            recoveredPC := 242.
        ].
        recoveredStep = 242 ifTrue: [
            recoveredStack5 := ControlMask.
            recoveredPC := 244.
        ].
        recoveredStep = 244 ifTrue: [
            recoveredStack6 := XKZ.
            recoveredPC := 246.
        ].
        recoveredStep = 246 ifTrue: [
            recoveredStack4 := (recoveredStack4) mask: (recoveredStack5) keysym: (recoveredStack6).
            recoveredPC := 248.
        ].
        recoveredStep = 248 ifTrue: [
            recoveredStack5 := 'Ctrl+Z'.
            recoveredPC := 250.
        ].
        recoveredStep = 250 ifTrue: [
            (recoveredStack2) setAcceleratorAt: (recoveredStack3) to: (recoveredStack4) text: (recoveredStack5).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 253.
        ].
        recoveredStep = 253 ifTrue: [
            recoveredStack3 := 'menuChangeToBinRepresentation'.
            recoveredPC := 255.
        ].
        recoveredStep = 255 ifTrue: [
            recoveredStack4 := GMVBinDisplay.
            recoveredPC := 257.
        ].
        recoveredStep = 257 ifTrue: [
            recoveredStack5 := [
    | recoveredBlock257Value0 recoveredBlock257Value1 recoveredBlock257Value2 |
    recoveredBlock257Value0 := selectedWidgets.
    recoveredBlock257Value1 := (recoveredBlock257Value0) isEmpty.
    recoveredBlock257Value2 := (recoveredBlock257Value1) not.
    recoveredBlock257Value2
].
            recoveredPC := 270.
        ].
        recoveredStep = 270 ifTrue: [
            recoveredStack6 := [
    | recoveredBlock270Stack0 recoveredBlock270Stack1 recoveredBlock270Stack2 recoveredBlock270PC recoveredBlock270Step recoveredBlock270Done recoveredBlock270Result |
    recoveredBlock270Stack0 := self.
    recoveredBlock270PC := 276.
    recoveredBlock270Done := false.
    [recoveredBlock270Done not] whileTrue: [
        recoveredBlock270Step := recoveredBlock270PC.
        recoveredBlock270Step = 276 ifTrue: [
            recoveredBlock270Stack1 := selectedWidgets.
            recoveredBlock270PC := 278.
        ].
        recoveredBlock270Step = 278 ifTrue: [
            recoveredBlock270Stack1 := (recoveredBlock270Stack1) isEmpty.
            recoveredBlock270PC := 280.
        ].
        recoveredBlock270Step = 280 ifTrue: [
            (recoveredBlock270Stack1) ifTrue: [recoveredBlock270PC := 284] ifFalse: [recoveredBlock270PC := 288].
        ].
        recoveredBlock270Step = 284 ifTrue: [
            recoveredBlock270Stack1 := false.
            recoveredBlock270PC := 285.
        ].
        recoveredBlock270Step = 285 ifTrue: [
            recoveredBlock270PC := 294.
        ].
        recoveredBlock270Step = 288 ifTrue: [
            recoveredBlock270Stack1 := selectedWidgets.
            recoveredBlock270PC := 290.
        ].
        recoveredBlock270Step = 290 ifTrue: [
            recoveredBlock270Stack1 := (recoveredBlock270Stack1) first.
            recoveredBlock270PC := 292.
        ].
        recoveredBlock270Step = 292 ifTrue: [
            recoveredBlock270Stack1 := (recoveredBlock270Stack1) isBinRepresentation.
            recoveredBlock270PC := 294.
        ].
        recoveredBlock270Step = 294 ifTrue: [
            recoveredBlock270Result := recoveredBlock270Stack1.
            recoveredBlock270Done := true.
        ].
    ].
    recoveredBlock270Result
].
            recoveredPC := 295.
        ].
        recoveredStep = 295 ifTrue: [
            (recoveredStack2) add: (recoveredStack3) label: (recoveredStack4) enable: (recoveredStack5) toggle: (recoveredStack6).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 298.
        ].
        recoveredStep = 298 ifTrue: [
            recoveredStack3 := 'menuChangeToBinRepresentation'.
            recoveredPC := 300.
        ].
        recoveredStep = 300 ifTrue: [
            recoveredStack4 := CwAccelerator.
            recoveredPC := 302.
        ].
        recoveredStep = 302 ifTrue: [
            recoveredStack5 := ControlMask.
            recoveredPC := 304.
        ].
        recoveredStep = 304 ifTrue: [
            recoveredStack6 := XKR.
            recoveredPC := 306.
        ].
        recoveredStep = 306 ifTrue: [
            recoveredStack4 := (recoveredStack4) mask: (recoveredStack5) keysym: (recoveredStack6).
            recoveredPC := 308.
        ].
        recoveredStep = 308 ifTrue: [
            recoveredStack5 := 'Ctrl+R'.
            recoveredPC := 310.
        ].
        recoveredStep = 310 ifTrue: [
            (recoveredStack2) setAcceleratorAt: (recoveredStack3) to: (recoveredStack4) text: (recoveredStack5).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 313.
        ].
        recoveredStep = 313 ifTrue: [
            (recoveredStack2) addLine.
            recoveredStack2 := recoveredStack1.
            recoveredPC := 316.
        ].
        recoveredStep = 316 ifTrue: [
            recoveredStack3 := 'menuMoveData'.
            recoveredPC := 318.
        ].
        recoveredStep = 318 ifTrue: [
            recoveredStack4 := GMVMoveDataToWindow.
            recoveredPC := 320.
        ].
        recoveredStep = 320 ifTrue: [
            recoveredStack5 := Dots.
            recoveredPC := 322.
        ].
        recoveredStep = 322 ifTrue: [
            recoveredStack4 := (recoveredStack4) , (recoveredStack5).
            recoveredPC := 324.
        ].
        recoveredStep = 324 ifTrue: [
            recoveredStack5 := [
    | recoveredBlock324Value0 recoveredBlock324Value1 |
    recoveredBlock324Value0 := selectedWidgets.
    recoveredBlock324Value1 := (recoveredBlock324Value0) notEmpty.
    recoveredBlock324Value1
].
            recoveredPC := 335.
        ].
        recoveredStep = 335 ifTrue: [
            (recoveredStack2) add: (recoveredStack3) label: (recoveredStack4) enable: (recoveredStack5).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 338.
        ].
        recoveredStep = 338 ifTrue: [
            recoveredStack3 := 'menuRemoveData'.
            recoveredPC := 340.
        ].
        recoveredStep = 340 ifTrue: [
            recoveredStack4 := GMVRemoveData.
            recoveredPC := 342.
        ].
        recoveredStep = 342 ifTrue: [
            recoveredStack5 := [
    | recoveredBlock342Value0 recoveredBlock342Value1 |
    recoveredBlock342Value0 := selectedWidgets.
    recoveredBlock342Value1 := (recoveredBlock342Value0) notEmpty.
    recoveredBlock342Value1
].
            recoveredPC := 353.
        ].
        recoveredStep = 353 ifTrue: [
            (recoveredStack2) add: (recoveredStack3) label: (recoveredStack4) enable: (recoveredStack5).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 356.
        ].
        recoveredStep = 356 ifTrue: [
            (recoveredStack2) addLine.
            recoveredStack2 := recoveredStack1.
            recoveredPC := 359.
        ].
        recoveredStep = 359 ifTrue: [
            recoveredStack3 := 'menuShowInfo'.
            recoveredPC := 361.
        ].
        recoveredStep = 361 ifTrue: [
            recoveredStack4 := GMVInfoAbout.
            recoveredPC := 363.
        ].
        recoveredStep = 363 ifTrue: [
            recoveredStack5 := Dots.
            recoveredPC := 365.
        ].
        recoveredStep = 365 ifTrue: [
            recoveredStack4 := (recoveredStack4) , (recoveredStack5).
            recoveredPC := 367.
        ].
        recoveredStep = 367 ifTrue: [
            recoveredStack5 := [
    | recoveredBlock367Value0 recoveredBlock367Value1 |
    recoveredBlock367Value0 := selectedWidgets.
    recoveredBlock367Value1 := (recoveredBlock367Value0) notEmpty.
    recoveredBlock367Value1
].
            recoveredPC := 379.
        ].
        recoveredStep = 379 ifTrue: [
            (recoveredStack2) add: (recoveredStack3) label: (recoveredStack4) enable: (recoveredStack5).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 382.
        ].
        recoveredStep = 382 ifTrue: [
            recoveredStack3 := 'menuShowInfo'.
            recoveredPC := 384.
        ].
        recoveredStep = 384 ifTrue: [
            recoveredStack4 := CwAccelerator.
            recoveredPC := 386.
        ].
        recoveredStep = 386 ifTrue: [
            recoveredStack5 := ControlMask.
            recoveredPC := 388.
        ].
        recoveredStep = 388 ifTrue: [
            recoveredStack6 := XKI.
            recoveredPC := 390.
        ].
        recoveredStep = 390 ifTrue: [
            recoveredStack4 := (recoveredStack4) mask: (recoveredStack5) keysym: (recoveredStack6).
            recoveredPC := 392.
        ].
        recoveredStep = 392 ifTrue: [
            recoveredStack5 := 'Ctrl+I'.
            recoveredPC := 394.
        ].
        recoveredStep = 394 ifTrue: [
            (recoveredStack2) setAcceleratorAt: (recoveredStack3) to: (recoveredStack4) text: (recoveredStack5).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 397.
        ].
        recoveredStep = 397 ifTrue: [
            (recoveredStack2) addLine.
            recoveredStack2 := recoveredStack1.
            recoveredPC := 400.
        ].
        recoveredStep = 400 ifTrue: [
            recoveredStack3 := 'createMoveSubwidgetMenu'.
            recoveredPC := 402.
        ].
        recoveredStep = 402 ifTrue: [
            recoveredStack4 := MPMoveWidget.
            recoveredPC := 404.
        ].
        recoveredStep = 404 ifTrue: [
            recoveredStack5 := [
    true
].
            recoveredPC := 406.
        ].
        recoveredStep = 406 ifTrue: [
            recoveredPC := 412.
        ].
        recoveredStep = 412 ifTrue: [
            recoveredStack6 := self.
            recoveredPC := 413.
        ].
        recoveredStep = 413 ifTrue: [
            (recoveredStack2) addSubMenu: (recoveredStack3) label: (recoveredStack4) enable: (recoveredStack5) for: (recoveredStack6).
            recoveredPC := 416.
        ].
        recoveredStep = 416 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 417.
        ].
        recoveredStep = 417 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 418.
        ].
        recoveredStep = 418 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x205fd9a8; bytecode file offset 0xefa320"
!RBNumericCalibrationEditor methodsFor: 'recovered'!
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
            recoveredStack3 := MTEdit.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack2) title: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack3 := 'menuDecrement'.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack4 := GMVDecrement.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack5 := [
    | recoveredBlock18Value0 recoveredBlock18Value1 recoveredBlock18Value2 recoveredBlock18Value3 recoveredBlock18Value4 |
    recoveredBlock18Value0 := (self) writeProtection.
    recoveredBlock18Value1 := (recoveredBlock18Value0) not.
    recoveredBlock18Value2 := selectedWidgets.
    recoveredBlock18Value3 := (recoveredBlock18Value2) notEmpty.
    recoveredBlock18Value4 := (recoveredBlock18Value1) & (recoveredBlock18Value3).
    recoveredBlock18Value4
].
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            (recoveredStack2) add: (recoveredStack3) label: (recoveredStack4) enable: (recoveredStack5).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack3 := 'menuIncrement'.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack4 := GMVIncrement.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack5 := [
    | recoveredBlock41Value0 recoveredBlock41Value1 recoveredBlock41Value2 recoveredBlock41Value3 recoveredBlock41Value4 |
    recoveredBlock41Value0 := (self) writeProtection.
    recoveredBlock41Value1 := (recoveredBlock41Value0) not.
    recoveredBlock41Value2 := selectedWidgets.
    recoveredBlock41Value3 := (recoveredBlock41Value2) notEmpty.
    recoveredBlock41Value4 := (recoveredBlock41Value1) & (recoveredBlock41Value3).
    recoveredBlock41Value4
].
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            (recoveredStack2) add: (recoveredStack3) label: (recoveredStack4) enable: (recoveredStack5).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack3 := 'menuAddOffset'.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack4 := GMVAddOffset.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack5 := Dots.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack4 := (recoveredStack4) , (recoveredStack5).
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack5 := [
    | recoveredBlock69Value0 recoveredBlock69Value1 recoveredBlock69Value2 recoveredBlock69Value3 recoveredBlock69Value4 |
    recoveredBlock69Value0 := (self) writeProtection.
    recoveredBlock69Value1 := (recoveredBlock69Value0) not.
    recoveredBlock69Value2 := selectedWidgets.
    recoveredBlock69Value3 := (recoveredBlock69Value2) notEmpty.
    recoveredBlock69Value4 := (recoveredBlock69Value1) & (recoveredBlock69Value3).
    recoveredBlock69Value4
].
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            (recoveredStack2) add: (recoveredStack3) label: (recoveredStack4) enable: (recoveredStack5).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack3 := 'menuMultFactor'.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredStack4 := GMVMultiplyWith.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredStack5 := Dots.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredStack4 := (recoveredStack4) , (recoveredStack5).
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            recoveredStack5 := [
    | recoveredBlock97Value0 recoveredBlock97Value1 recoveredBlock97Value2 recoveredBlock97Value3 recoveredBlock97Value4 |
    recoveredBlock97Value0 := (self) writeProtection.
    recoveredBlock97Value1 := (recoveredBlock97Value0) not.
    recoveredBlock97Value2 := selectedWidgets.
    recoveredBlock97Value3 := (recoveredBlock97Value2) notEmpty.
    recoveredBlock97Value4 := (recoveredBlock97Value1) & (recoveredBlock97Value3).
    recoveredBlock97Value4
].
            recoveredPC := 114.
        ].
        recoveredStep = 114 ifTrue: [
            (recoveredStack2) add: (recoveredStack3) label: (recoveredStack4) enable: (recoveredStack5).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 117.
        ].
        recoveredStep = 117 ifTrue: [
            recoveredStack3 := 'menuFillWithValue'.
            recoveredPC := 119.
        ].
        recoveredStep = 119 ifTrue: [
            recoveredStack4 := GMVFillWith.
            recoveredPC := 121.
        ].
        recoveredStep = 121 ifTrue: [
            recoveredStack5 := Dots.
            recoveredPC := 123.
        ].
        recoveredStep = 123 ifTrue: [
            recoveredStack4 := (recoveredStack4) , (recoveredStack5).
            recoveredPC := 125.
        ].
        recoveredStep = 125 ifTrue: [
            recoveredStack5 := [
    | recoveredBlock125Value0 recoveredBlock125Value1 recoveredBlock125Value2 recoveredBlock125Value3 recoveredBlock125Value4 |
    recoveredBlock125Value0 := (self) writeProtection.
    recoveredBlock125Value1 := (recoveredBlock125Value0) not.
    recoveredBlock125Value2 := selectedWidgets.
    recoveredBlock125Value3 := (recoveredBlock125Value2) notEmpty.
    recoveredBlock125Value4 := (recoveredBlock125Value1) & (recoveredBlock125Value3).
    recoveredBlock125Value4
].
            recoveredPC := 142.
        ].
        recoveredStep = 142 ifTrue: [
            (recoveredStack2) add: (recoveredStack3) label: (recoveredStack4) enable: (recoveredStack5).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 145.
        ].
        recoveredStep = 145 ifTrue: [
            (recoveredStack2) addLine.
            recoveredStack2 := recoveredStack1.
            recoveredPC := 148.
        ].
        recoveredStep = 148 ifTrue: [
            recoveredStack3 := 'menuSetup'.
            recoveredPC := 150.
        ].
        recoveredStep = 150 ifTrue: [
            recoveredStack4 := SCDisplaySetup.
            recoveredPC := 152.
        ].
        recoveredStep = 152 ifTrue: [
            recoveredStack5 := Dots.
            recoveredPC := 154.
        ].
        recoveredStep = 154 ifTrue: [
            recoveredStack4 := (recoveredStack4) , (recoveredStack5).
            recoveredPC := 156.
        ].
        recoveredStep = 156 ifTrue: [
            recoveredStack5 := [
    | recoveredBlock156Value0 recoveredBlock156Value1 |
    recoveredBlock156Value0 := selectedWidgets.
    recoveredBlock156Value1 := (recoveredBlock156Value0) notEmpty.
    recoveredBlock156Value1
].
            recoveredPC := 167.
        ].
        recoveredStep = 167 ifTrue: [
            (recoveredStack2) add: (recoveredStack3) label: (recoveredStack4) enable: (recoveredStack5).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 170.
        ].
        recoveredStep = 170 ifTrue: [
            recoveredStack3 := 'menuChangeToPhysRepresentation'.
            recoveredPC := 172.
        ].
        recoveredStep = 172 ifTrue: [
            recoveredStack4 := PhysDisplay.
            recoveredPC := 174.
        ].
        recoveredStep = 174 ifTrue: [
            recoveredStack5 := [
    | recoveredBlock174Value0 recoveredBlock174Value1 recoveredBlock174Value2 |
    recoveredBlock174Value0 := selectedWidgets.
    recoveredBlock174Value1 := (recoveredBlock174Value0) isEmpty.
    recoveredBlock174Value2 := (recoveredBlock174Value1) not.
    recoveredBlock174Value2
].
            recoveredPC := 186.
        ].
        recoveredStep = 186 ifTrue: [
            recoveredStack6 := [
    | recoveredBlock186Stack0 recoveredBlock186Stack1 recoveredBlock186Stack2 recoveredBlock186PC recoveredBlock186Step recoveredBlock186Done recoveredBlock186Result |
    recoveredBlock186Stack0 := self.
    recoveredBlock186PC := 192.
    recoveredBlock186Done := false.
    [recoveredBlock186Done not] whileTrue: [
        recoveredBlock186Step := recoveredBlock186PC.
        recoveredBlock186Step = 192 ifTrue: [
            recoveredBlock186Stack1 := selectedWidgets.
            recoveredBlock186PC := 194.
        ].
        recoveredBlock186Step = 194 ifTrue: [
            recoveredBlock186Stack1 := (recoveredBlock186Stack1) isEmpty.
            recoveredBlock186PC := 196.
        ].
        recoveredBlock186Step = 196 ifTrue: [
            (recoveredBlock186Stack1) ifTrue: [recoveredBlock186PC := 200] ifFalse: [recoveredBlock186PC := 204].
        ].
        recoveredBlock186Step = 200 ifTrue: [
            recoveredBlock186Stack1 := false.
            recoveredBlock186PC := 201.
        ].
        recoveredBlock186Step = 201 ifTrue: [
            recoveredBlock186PC := 210.
        ].
        recoveredBlock186Step = 204 ifTrue: [
            recoveredBlock186Stack1 := selectedWidgets.
            recoveredBlock186PC := 206.
        ].
        recoveredBlock186Step = 206 ifTrue: [
            recoveredBlock186Stack1 := (recoveredBlock186Stack1) first.
            recoveredBlock186PC := 208.
        ].
        recoveredBlock186Step = 208 ifTrue: [
            recoveredBlock186Stack1 := (recoveredBlock186Stack1) isPhysRepresentation.
            recoveredBlock186PC := 210.
        ].
        recoveredBlock186Step = 210 ifTrue: [
            recoveredBlock186Result := recoveredBlock186Stack1.
            recoveredBlock186Done := true.
        ].
    ].
    recoveredBlock186Result
].
            recoveredPC := 211.
        ].
        recoveredStep = 211 ifTrue: [
            (recoveredStack2) add: (recoveredStack3) label: (recoveredStack4) enable: (recoveredStack5) toggle: (recoveredStack6).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 214.
        ].
        recoveredStep = 214 ifTrue: [
            recoveredStack3 := 'menuChangeToHexRepresentation'.
            recoveredPC := 216.
        ].
        recoveredStep = 216 ifTrue: [
            recoveredStack4 := SCHexDisplay.
            recoveredPC := 218.
        ].
        recoveredStep = 218 ifTrue: [
            recoveredStack5 := [
    | recoveredBlock218Value0 recoveredBlock218Value1 recoveredBlock218Value2 |
    recoveredBlock218Value0 := selectedWidgets.
    recoveredBlock218Value1 := (recoveredBlock218Value0) isEmpty.
    recoveredBlock218Value2 := (recoveredBlock218Value1) not.
    recoveredBlock218Value2
].
            recoveredPC := 230.
        ].
        recoveredStep = 230 ifTrue: [
            recoveredStack6 := [
    | recoveredBlock230Stack0 recoveredBlock230Stack1 recoveredBlock230Stack2 recoveredBlock230PC recoveredBlock230Step recoveredBlock230Done recoveredBlock230Result |
    recoveredBlock230Stack0 := self.
    recoveredBlock230PC := 236.
    recoveredBlock230Done := false.
    [recoveredBlock230Done not] whileTrue: [
        recoveredBlock230Step := recoveredBlock230PC.
        recoveredBlock230Step = 236 ifTrue: [
            recoveredBlock230Stack1 := selectedWidgets.
            recoveredBlock230PC := 238.
        ].
        recoveredBlock230Step = 238 ifTrue: [
            recoveredBlock230Stack1 := (recoveredBlock230Stack1) isEmpty.
            recoveredBlock230PC := 240.
        ].
        recoveredBlock230Step = 240 ifTrue: [
            (recoveredBlock230Stack1) ifTrue: [recoveredBlock230PC := 244] ifFalse: [recoveredBlock230PC := 248].
        ].
        recoveredBlock230Step = 244 ifTrue: [
            recoveredBlock230Stack1 := false.
            recoveredBlock230PC := 245.
        ].
        recoveredBlock230Step = 245 ifTrue: [
            recoveredBlock230PC := 254.
        ].
        recoveredBlock230Step = 248 ifTrue: [
            recoveredBlock230Stack1 := selectedWidgets.
            recoveredBlock230PC := 250.
        ].
        recoveredBlock230Step = 250 ifTrue: [
            recoveredBlock230Stack1 := (recoveredBlock230Stack1) first.
            recoveredBlock230PC := 252.
        ].
        recoveredBlock230Step = 252 ifTrue: [
            recoveredBlock230Stack1 := (recoveredBlock230Stack1) isHexRepresentation.
            recoveredBlock230PC := 254.
        ].
        recoveredBlock230Step = 254 ifTrue: [
            recoveredBlock230Result := recoveredBlock230Stack1.
            recoveredBlock230Done := true.
        ].
    ].
    recoveredBlock230Result
].
            recoveredPC := 255.
        ].
        recoveredStep = 255 ifTrue: [
            (recoveredStack2) add: (recoveredStack3) label: (recoveredStack4) enable: (recoveredStack5) toggle: (recoveredStack6).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 258.
        ].
        recoveredStep = 258 ifTrue: [
            recoveredStack3 := 'menuChangeToDezRepresentation'.
            recoveredPC := 260.
        ].
        recoveredStep = 260 ifTrue: [
            recoveredStack4 := GMVDezDisplay.
            recoveredPC := 262.
        ].
        recoveredStep = 262 ifTrue: [
            recoveredStack5 := [
    | recoveredBlock262Value0 recoveredBlock262Value1 recoveredBlock262Value2 |
    recoveredBlock262Value0 := selectedWidgets.
    recoveredBlock262Value1 := (recoveredBlock262Value0) isEmpty.
    recoveredBlock262Value2 := (recoveredBlock262Value1) not.
    recoveredBlock262Value2
].
            recoveredPC := 274.
        ].
        recoveredStep = 274 ifTrue: [
            recoveredStack6 := [
    | recoveredBlock274Stack0 recoveredBlock274Stack1 recoveredBlock274Stack2 recoveredBlock274PC recoveredBlock274Step recoveredBlock274Done recoveredBlock274Result |
    recoveredBlock274Stack0 := self.
    recoveredBlock274PC := 280.
    recoveredBlock274Done := false.
    [recoveredBlock274Done not] whileTrue: [
        recoveredBlock274Step := recoveredBlock274PC.
        recoveredBlock274Step = 280 ifTrue: [
            recoveredBlock274Stack1 := selectedWidgets.
            recoveredBlock274PC := 282.
        ].
        recoveredBlock274Step = 282 ifTrue: [
            recoveredBlock274Stack1 := (recoveredBlock274Stack1) isEmpty.
            recoveredBlock274PC := 284.
        ].
        recoveredBlock274Step = 284 ifTrue: [
            (recoveredBlock274Stack1) ifTrue: [recoveredBlock274PC := 288] ifFalse: [recoveredBlock274PC := 292].
        ].
        recoveredBlock274Step = 288 ifTrue: [
            recoveredBlock274Stack1 := false.
            recoveredBlock274PC := 289.
        ].
        recoveredBlock274Step = 289 ifTrue: [
            recoveredBlock274PC := 298.
        ].
        recoveredBlock274Step = 292 ifTrue: [
            recoveredBlock274Stack1 := selectedWidgets.
            recoveredBlock274PC := 294.
        ].
        recoveredBlock274Step = 294 ifTrue: [
            recoveredBlock274Stack1 := (recoveredBlock274Stack1) first.
            recoveredBlock274PC := 296.
        ].
        recoveredBlock274Step = 296 ifTrue: [
            recoveredBlock274Stack1 := (recoveredBlock274Stack1) isDezRepresentation.
            recoveredBlock274PC := 298.
        ].
        recoveredBlock274Step = 298 ifTrue: [
            recoveredBlock274Result := recoveredBlock274Stack1.
            recoveredBlock274Done := true.
        ].
    ].
    recoveredBlock274Result
].
            recoveredPC := 299.
        ].
        recoveredStep = 299 ifTrue: [
            (recoveredStack2) add: (recoveredStack3) label: (recoveredStack4) enable: (recoveredStack5) toggle: (recoveredStack6).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 302.
        ].
        recoveredStep = 302 ifTrue: [
            recoveredStack3 := 'menuChangeToBinRepresentation'.
            recoveredPC := 304.
        ].
        recoveredStep = 304 ifTrue: [
            recoveredStack4 := GMVBinDisplay.
            recoveredPC := 306.
        ].
        recoveredStep = 306 ifTrue: [
            recoveredStack5 := [
    | recoveredBlock306Value0 recoveredBlock306Value1 recoveredBlock306Value2 |
    recoveredBlock306Value0 := selectedWidgets.
    recoveredBlock306Value1 := (recoveredBlock306Value0) isEmpty.
    recoveredBlock306Value2 := (recoveredBlock306Value1) not.
    recoveredBlock306Value2
].
            recoveredPC := 318.
        ].
        recoveredStep = 318 ifTrue: [
            recoveredStack6 := [
    | recoveredBlock318Stack0 recoveredBlock318Stack1 recoveredBlock318Stack2 recoveredBlock318PC recoveredBlock318Step recoveredBlock318Done recoveredBlock318Result |
    recoveredBlock318Stack0 := self.
    recoveredBlock318PC := 324.
    recoveredBlock318Done := false.
    [recoveredBlock318Done not] whileTrue: [
        recoveredBlock318Step := recoveredBlock318PC.
        recoveredBlock318Step = 324 ifTrue: [
            recoveredBlock318Stack1 := selectedWidgets.
            recoveredBlock318PC := 326.
        ].
        recoveredBlock318Step = 326 ifTrue: [
            recoveredBlock318Stack1 := (recoveredBlock318Stack1) isEmpty.
            recoveredBlock318PC := 328.
        ].
        recoveredBlock318Step = 328 ifTrue: [
            (recoveredBlock318Stack1) ifTrue: [recoveredBlock318PC := 332] ifFalse: [recoveredBlock318PC := 336].
        ].
        recoveredBlock318Step = 332 ifTrue: [
            recoveredBlock318Stack1 := false.
            recoveredBlock318PC := 333.
        ].
        recoveredBlock318Step = 333 ifTrue: [
            recoveredBlock318PC := 342.
        ].
        recoveredBlock318Step = 336 ifTrue: [
            recoveredBlock318Stack1 := selectedWidgets.
            recoveredBlock318PC := 338.
        ].
        recoveredBlock318Step = 338 ifTrue: [
            recoveredBlock318Stack1 := (recoveredBlock318Stack1) first.
            recoveredBlock318PC := 340.
        ].
        recoveredBlock318Step = 340 ifTrue: [
            recoveredBlock318Stack1 := (recoveredBlock318Stack1) isBinRepresentation.
            recoveredBlock318PC := 342.
        ].
        recoveredBlock318Step = 342 ifTrue: [
            recoveredBlock318Result := recoveredBlock318Stack1.
            recoveredBlock318Done := true.
        ].
    ].
    recoveredBlock318Result
].
            recoveredPC := 343.
        ].
        recoveredStep = 343 ifTrue: [
            (recoveredStack2) add: (recoveredStack3) label: (recoveredStack4) enable: (recoveredStack5) toggle: (recoveredStack6).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 346.
        ].
        recoveredStep = 346 ifTrue: [
            (recoveredStack2) addLine.
            recoveredStack2 := recoveredStack1.
            recoveredPC := 349.
        ].
        recoveredStep = 349 ifTrue: [
            recoveredStack3 := 'menuMoveData'.
            recoveredPC := 351.
        ].
        recoveredStep = 351 ifTrue: [
            recoveredStack4 := GMVMoveDataToWindow.
            recoveredPC := 353.
        ].
        recoveredStep = 353 ifTrue: [
            recoveredStack5 := Dots.
            recoveredPC := 355.
        ].
        recoveredStep = 355 ifTrue: [
            recoveredStack4 := (recoveredStack4) , (recoveredStack5).
            recoveredPC := 357.
        ].
        recoveredStep = 357 ifTrue: [
            recoveredStack5 := [
    | recoveredBlock357Value0 recoveredBlock357Value1 |
    recoveredBlock357Value0 := selectedWidgets.
    recoveredBlock357Value1 := (recoveredBlock357Value0) notEmpty.
    recoveredBlock357Value1
].
            recoveredPC := 369.
        ].
        recoveredStep = 369 ifTrue: [
            (recoveredStack2) add: (recoveredStack3) label: (recoveredStack4) enable: (recoveredStack5).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 372.
        ].
        recoveredStep = 372 ifTrue: [
            recoveredStack3 := 'menuRemoveData'.
            recoveredPC := 374.
        ].
        recoveredStep = 374 ifTrue: [
            recoveredStack4 := GMVRemoveData.
            recoveredPC := 376.
        ].
        recoveredStep = 376 ifTrue: [
            recoveredStack5 := [
    | recoveredBlock376Value0 recoveredBlock376Value1 |
    recoveredBlock376Value0 := selectedWidgets.
    recoveredBlock376Value1 := (recoveredBlock376Value0) notEmpty.
    recoveredBlock376Value1
].
            recoveredPC := 387.
        ].
        recoveredStep = 387 ifTrue: [
            (recoveredStack2) add: (recoveredStack3) label: (recoveredStack4) enable: (recoveredStack5).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 390.
        ].
        recoveredStep = 390 ifTrue: [
            (recoveredStack2) addLine.
            recoveredStack2 := recoveredStack1.
            recoveredPC := 393.
        ].
        recoveredStep = 393 ifTrue: [
            recoveredStack3 := 'menuShowInfo'.
            recoveredPC := 395.
        ].
        recoveredStep = 395 ifTrue: [
            recoveredStack4 := GMVInfoAbout.
            recoveredPC := 397.
        ].
        recoveredStep = 397 ifTrue: [
            recoveredStack5 := Dots.
            recoveredPC := 399.
        ].
        recoveredStep = 399 ifTrue: [
            recoveredStack4 := (recoveredStack4) , (recoveredStack5).
            recoveredPC := 401.
        ].
        recoveredStep = 401 ifTrue: [
            recoveredStack5 := [
    | recoveredBlock401Value0 recoveredBlock401Value1 |
    recoveredBlock401Value0 := selectedWidgets.
    recoveredBlock401Value1 := (recoveredBlock401Value0) notEmpty.
    recoveredBlock401Value1
].
            recoveredPC := 413.
        ].
        recoveredStep = 413 ifTrue: [
            (recoveredStack2) add: (recoveredStack3) label: (recoveredStack4) enable: (recoveredStack5).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 416.
        ].
        recoveredStep = 416 ifTrue: [
            (recoveredStack2) addLine.
            recoveredStack2 := recoveredStack1.
            recoveredPC := 419.
        ].
        recoveredStep = 419 ifTrue: [
            recoveredStack3 := 'createMoveSubwidgetMenu'.
            recoveredPC := 421.
        ].
        recoveredStep = 421 ifTrue: [
            recoveredStack4 := MPMoveWidget.
            recoveredPC := 423.
        ].
        recoveredStep = 423 ifTrue: [
            recoveredStack5 := [
    true
].
            recoveredPC := 425.
        ].
        recoveredStep = 425 ifTrue: [
            recoveredPC := 430.
        ].
        recoveredStep = 430 ifTrue: [
            recoveredStack6 := self.
            recoveredPC := 431.
        ].
        recoveredStep = 431 ifTrue: [
            (recoveredStack2) addSubMenu: (recoveredStack3) label: (recoveredStack4) enable: (recoveredStack5) for: (recoveredStack6).
            recoveredPC := 434.
        ].
        recoveredStep = 434 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 435.
        ].
        recoveredStep = 435 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 436.
        ].
        recoveredStep = 436 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

