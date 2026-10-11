"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20013164; bytecode file offset 0x912098"
!EtasOnlineDLLDisplayChannel class methodsFor: 'recovered'!
textWAxisGraph
    | recoveredValue0 |
    recoveredValue0 := SCMultiAxis.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20014634; bytecode file offset 0x912098"
!EtasOnlineDLLDisplayChannel class methodsFor: 'recovered'!
textSymbol
    | recoveredValue0 |
    recoveredValue0 := SCSymbolGMM.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2003cd98; bytecode file offset 0x93bf94"
!EtasOnlineDLLDisplayChannel class methodsFor: 'recovered'!
defaultDataConfigObjectClass
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := EtasMeasureWidget.
    recoveredValue1 := (recoveredValue0) defaultDataConfigObjectClass.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2003d288; bytecode file offset 0x93bf94"
!EtasOnlineDLLDisplayChannel class methodsFor: 'recovered'!
textDisplayType
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := SCDisplayTypeGMM.
    recoveredValue1 := (recoveredValue0) withCrs.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2003d3c8; bytecode file offset 0x93bf94"
!EtasOnlineDLLDisplayChannel class methodsFor: 'recovered'!
displayTypeDict
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := RBDisplayType.
    recoveredValue1 := (recoveredValue0) displayTypeDict.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2003d4f8; bytecode file offset 0x93bf94"
!EtasOnlineDLLDisplayChannel class methodsFor: 'recovered'!
stringHexRepresentation
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := SCHex.
    recoveredValue1 := (recoveredValue0) asLowercase.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2003ddc8; bytecode file offset 0x93bf94"
!EtasOnlineDLLDisplayChannel class methodsFor: 'recovered'!
textRepresentation
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := SCRepresentationGMM.
    recoveredValue1 := (recoveredValue0) withCrs.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2003e338; bytecode file offset 0x93bf94"
!EtasOnlineDLLDisplayChannel class methodsFor: 'recovered'!
textForegroundColor
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := SCOsciLineColorGMM.
    recoveredValue1 := (recoveredValue0) withCrs.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2003e838; bytecode file offset 0x93bf94"
!EtasOnlineDLLDisplayChannel class methodsFor: 'recovered'!
stringFloatRepresentation
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := SCFloat.
    recoveredValue1 := (recoveredValue0) asLowercase.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2005c578; bytecode file offset 0x959680"
!EtasOnlineDLLDisplayChannel class methodsFor: 'recovered'!
isOffsetExtentInterpretation
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := ASDMeasureEditorOptions.
    recoveredValue1 := (recoveredValue0) instance.
    recoveredValue2 := (recoveredValue1) optionMeasureOsciEditorExtentAxis.
    ^recoveredValue2
! !

"ASDBase.ic method 0x20071cb4; bytecode file offset 0x96e578"
!EtasOnlineDLLDisplayChannel class methodsFor: 'recovered'!
defaultMinimum
    ^0
! !

"ASDBase.ic method 0x200724e8; bytecode file offset 0x96ee04"
!EtasOnlineDLLDisplayChannel class methodsFor: 'recovered'!
defaultMaximum
    ^1
! !

"ASDBase.ic method 0x20081788; bytecode file offset 0x97e234"
!EtasOnlineDLLDisplayChannel class methodsFor: 'recovered'!
columnWidth: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := EtasMeasureWidget.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) columnWidth: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x20087f68; bytecode file offset 0x984bc0"
!EtasOnlineDLLDisplayChannel class methodsFor: 'recovered'!
defaultColor
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := RBColorManager.
    recoveredValue1 := (recoveredValue0) namedColor: ('red').
    ^recoveredValue1
! !

"ASDBase.ic method 0x2012c7f8; bytecode file offset 0xa290c0"
!EtasOnlineDLLDisplayChannel class methodsFor: 'recovered'!
defaultDisplayType
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) displayTypeDict.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := SCDisplayTypeStep.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := [
    'step'
].
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1) ifAbsent: (recoveredStack2).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20189418; bytecode file offset 0xa85ce0"
!EtasOnlineDLLDisplayChannel class methodsFor: 'recovered'!
getRepresentationCollection
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := OrderedCollection.
    recoveredValue1 := (recoveredValue0) new: (2).
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := recoveredLocal1.
    recoveredValue3 := recoveredValue2.
    recoveredValue4 := (self) stringFloatRepresentation.
    (recoveredValue3) add: (recoveredValue4).
    recoveredValue5 := (self) stringHexRepresentation.
    (recoveredValue2) add: (recoveredValue5).
    recoveredValue6 := recoveredLocal1.
    ^recoveredValue6
! !

"ASDBase.ic method 0x20205388; bytecode file offset 0xb01c8c"
!EtasOnlineDLLDisplayChannel class methodsFor: 'recovered'!
textSymbolSize
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 |
    recoveredValue0 := WriteStream.
    recoveredValue1 := (recoveredValue0) on: ('').
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := recoveredLocal1.
    recoveredValue3 := recoveredValue2.
    recoveredValue4 := SCSizeGMM.
    (recoveredValue3) nextPutAll: (recoveredValue4).
    recoveredValue5 := recoveredValue2.
    (recoveredValue5) nextPutAll: ('\').
    recoveredValue6 := SCSymbolGMM.
    (recoveredValue2) nextPutAll: (recoveredValue6).
    recoveredValue7 := recoveredLocal1.
    recoveredValue8 := (recoveredValue7) contents.
    recoveredValue9 := (recoveredValue8) withCrs.
    ^recoveredValue9
! !

"ASDBase.ic method 0x202053b4; bytecode file offset 0xb01c8c"
!EtasOnlineDLLDisplayChannel class methodsFor: 'recovered'!
textMin
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 |
    recoveredValue0 := WriteStream.
    recoveredValue1 := (recoveredValue0) on: ('').
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := recoveredLocal1.
    recoveredValue3 := recoveredValue2.
    recoveredValue4 := SCYAxis.
    (recoveredValue3) nextPutAll: (recoveredValue4).
    recoveredValue5 := recoveredValue2.
    (recoveredValue5) nextPutAll: ('\').
    recoveredValue6 := SCMin.
    (recoveredValue2) nextPutAll: (recoveredValue6).
    recoveredValue7 := recoveredLocal1.
    recoveredValue8 := (recoveredValue7) contents.
    recoveredValue9 := (recoveredValue8) withCrs.
    ^recoveredValue9
! !

"ASDBase.ic method 0x2022be2c; bytecode file offset 0xb286fc"
!EtasOnlineDLLDisplayChannel class methodsFor: 'recovered'!
symbolCollection
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := OrderedCollection.
    recoveredValue1 := (recoveredValue0) new.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := (self) symbolDict.
    recoveredValue3 := [:recoveredBlock11Arg1 | 
    | recoveredBlock11Value0 recoveredBlock11Value1 recoveredBlock11Value2 recoveredBlock11Value3 recoveredBlock11Value4 |
    recoveredBlock11Value0 := recoveredLocal1.
    recoveredBlock11Value1 := recoveredBlock11Arg1.
    recoveredBlock11Value2 := (recoveredBlock11Value1) key.
    recoveredBlock11Value3 := (recoveredBlock11Value2) asString.
    recoveredBlock11Value4 := (recoveredBlock11Value0) add: (recoveredBlock11Value3).
    recoveredBlock11Value4
].
    (recoveredValue2) associationsDo: (recoveredValue3).
    recoveredValue4 := recoveredLocal1.
    ^recoveredValue4
! !

"ASDBase.ic method 0x2029f568; bytecode file offset 0xb9be50"
!EtasOnlineDLLDisplayChannel class methodsFor: 'recovered'!
symbolDict
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 |
    recoveredValue0 := Dictionary.
    recoveredValue1 := (recoveredValue0) new: (5).
    recoveredValue2 := recoveredValue1.
    (recoveredValue2) at: ('') put: ('noSymbol').
    recoveredValue3 := recoveredValue1.
    recoveredValue4 := SCRectangle.
    (recoveredValue3) at: (recoveredValue4) put: ('rectangle_Symbol').
    recoveredValue5 := recoveredValue1.
    recoveredValue6 := SCCross.
    (recoveredValue5) at: (recoveredValue6) put: ('cross_Symbol').
    recoveredValue7 := recoveredValue1.
    recoveredValue8 := SCCircle.
    (recoveredValue7) at: (recoveredValue8) put: ('circle_Symbol').
    recoveredValue9 := recoveredValue1.
    recoveredValue10 := SCTriangle.
    (recoveredValue9) at: (recoveredValue10) put: ('triangle_Symbol').
    ^recoveredValue1
! !

"ASDBase.ic method 0x202a33c8; bytecode file offset 0xb9fca8"
!EtasOnlineDLLDisplayChannel class methodsFor: 'recovered'!
textMax
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := WriteStream.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := ''.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) on: (recoveredStack2).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack3 := SCYAxis.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack2) nextPutAll: (recoveredStack3).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := '\'.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            (recoveredStack1) nextPutAll: (recoveredStack2).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := (recoveredStack0) isOffsetExtentInterpretation.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 26] ifFalse: [recoveredPC := 34].
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := SCSetupHeight.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            (recoveredStack0) nextPutAll: (recoveredStack1).
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredPC := 39.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := SCMax.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            (recoveredStack0) nextPutAll: (recoveredStack1).
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack0 := (recoveredStack0) contents.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack0 := (recoveredStack0) withCrs.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

