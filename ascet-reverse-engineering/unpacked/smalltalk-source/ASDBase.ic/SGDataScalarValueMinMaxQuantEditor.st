"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20002ba8; bytecode file offset 0x8ffcfc"
!SGDataScalarValueMinMaxQuantEditor methodsFor: 'recovered'!
initializeMenuBar
    ^self
! !

"ASDBase.ic method 0x20002f08; bytecode file offset 0x8ffcfc"
!SGDataScalarValueMinMaxQuantEditor methodsFor: 'recovered'!
installActionKeys
    ^self
! !

"ASDBase.ic method 0x2000601c; bytecode file offset 0x902de8"
!SGDataScalarValueMinMaxQuantEditor methodsFor: 'recovered'!
numericFieldModify: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    ^self
! !

"ASDBase.ic method 0x20006104; bytecode file offset 0x902de8"
!SGDataScalarValueMinMaxQuantEditor methodsFor: 'recovered'!
valueLosing: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    ^self
! !

"ASDBase.ic method 0x2001823c; bytecode file offset 0x92209c"
!SGDataScalarValueMinMaxQuantEditor methodsFor: 'recovered'!
defaultIcon
    ^'EditorEECalibrationMinMax32'
! !

"ASDBase.ic method 0x20043f9c; bytecode file offset 0x9451f8"
!SGDataScalarValueMinMaxQuantEditor methodsFor: 'recovered'!
widgetDataQuant
    | recoveredValue0 |
    recoveredValue0 := (self) widgetAt: ('quant').
    ^recoveredValue0
! !

"ASDBase.ic method 0x2004448c; bytecode file offset 0x9451f8"
!SGDataScalarValueMinMaxQuantEditor methodsFor: 'recovered'!
widgetDataValue
    | recoveredValue0 |
    recoveredValue0 := (self) widgetAt: ('value').
    ^recoveredValue0
! !

"ASDBase.ic method 0x20044e8c; bytecode file offset 0x9451f8"
!SGDataScalarValueMinMaxQuantEditor methodsFor: 'recovered'!
widgetDataLabel
    | recoveredValue0 |
    recoveredValue0 := (self) widgetAt: ('dataLabel').
    ^recoveredValue0
! !

"ASDBase.ic method 0x2004629c; bytecode file offset 0x9451f8"
!SGDataScalarValueMinMaxQuantEditor methodsFor: 'recovered'!
widgetUnit
    | recoveredValue0 |
    recoveredValue0 := (self) widgetAt: ('unitLabel').
    ^recoveredValue0
! !

"ASDBase.ic method 0x20047d1c; bytecode file offset 0x9451f8"
!SGDataScalarValueMinMaxQuantEditor methodsFor: 'recovered'!
widgetDataMin
    | recoveredValue0 |
    recoveredValue0 := (self) widgetAt: ('min').
    ^recoveredValue0
! !

"ASDBase.ic method 0x20047eac; bytecode file offset 0x9451f8"
!SGDataScalarValueMinMaxQuantEditor methodsFor: 'recovered'!
widgetDataMax
    | recoveredValue0 |
    recoveredValue0 := (self) widgetAt: ('max').
    ^recoveredValue0
! !

"ASDBase.ic method 0x2005a584; bytecode file offset 0x957a6c"
!SGDataScalarValueMinMaxQuantEditor methodsFor: 'recovered'!
minActivate: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    (self) updateDataElement.
    ^self
! !

"ASDBase.ic method 0x2005a884; bytecode file offset 0x957a6c"
!SGDataScalarValueMinMaxQuantEditor methodsFor: 'recovered'!
minLosing: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    (self) updateDataElement.
    ^self
! !

"ASDBase.ic method 0x2005a890; bytecode file offset 0x957a6c"
!SGDataScalarValueMinMaxQuantEditor methodsFor: 'recovered'!
maxActivate: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    (self) updateDataElement.
    ^self
! !

"ASDBase.ic method 0x2005ac74; bytecode file offset 0x957a6c"
!SGDataScalarValueMinMaxQuantEditor methodsFor: 'recovered'!
valueActivate: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    (self) updateDataElementValue.
    ^self
! !

"ASDBase.ic method 0x2005adf4; bytecode file offset 0x957a6c"
!SGDataScalarValueMinMaxQuantEditor methodsFor: 'recovered'!
quantActivate: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    (self) updateDataElement.
    ^self
! !

"ASDBase.ic method 0x2005ae9c; bytecode file offset 0x957a6c"
!SGDataScalarValueMinMaxQuantEditor methodsFor: 'recovered'!
maxLosing: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    (self) updateDataElement.
    ^self
! !

"ASDBase.ic method 0x2005af14; bytecode file offset 0x957a6c"
!SGDataScalarValueMinMaxQuantEditor methodsFor: 'recovered'!
quantLosing: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    (self) updateDataElement.
    ^self
! !

"ASDBase.ic method 0x200765c4; bytecode file offset 0x9757c8"
!SGDataScalarValueMinMaxQuantEditor methodsFor: 'recovered'!
isImplEditor
    ^true
! !

"ASDBase.ic method 0x200c9b30; bytecode file offset 0x9c63f4"
!SGDataScalarValueMinMaxQuantEditor methodsFor: 'recovered'!
dataDragOver: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := recoveredArg3.
    recoveredValue1 := Array.
    recoveredValue2 := XmILLEGAL.
    recoveredValue3 := (recoveredValue1) with: (recoveredValue2).
    recoveredValue4 := (recoveredValue0) vote: (recoveredValue3).
    ^recoveredValue4
! !

"ASDBase.ic method 0x200d46b4; bytecode file offset 0x9d0f7c"
!SGDataScalarValueMinMaxQuantEditor methodsFor: 'recovered'!
updateContents
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) widgetDataValue.
    recoveredValue1 := (self) data.
    recoveredValue2 := (recoveredValue1) getPhysValue.
    recoveredValue3 := (recoveredValue2) printString.
    (recoveredValue0) value: (recoveredValue3).
    ^self
! !

"ASDBase.ic method 0x2013800c; bytecode file offset 0xa348d0"
!SGDataScalarValueMinMaxQuantEditor methodsFor: 'recovered'!
checkVariables: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack2 := [:block280cb3acArg1 | 
    | block280cb3acValue0 block280cb3acValue1 block280cb3acValue2 |
    block280cb3acValue0 := block280cb3acArg1.
    block280cb3acValue1 := (block280cb3acValue0) getPhysType.
    block280cb3acValue2 := (block280cb3acValue1) isRBFloat.
    block280cb3acValue2
].
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) select: (recoveredStack2).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x20181dd4; bytecode file offset 0xa7e6ac"
!SGDataScalarValueMinMaxQuantEditor methodsFor: 'recovered'!
updateDataElementValue
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 |
    recoveredValue0 := (self) widgetDataValue.
    recoveredValue1 := (self) data.
    recoveredValue2 := (self) widgetDataValue.
    recoveredValue3 := (recoveredValue2) value.
    recoveredValue4 := (recoveredValue3) asIntOrFloatOrFraction.
    recoveredValue5 := (recoveredValue1) setAndWrite: (recoveredValue4).
    recoveredValue6 := (recoveredValue5) get.
    recoveredValue7 := (recoveredValue6) getPhysValue.
    recoveredValue8 := (recoveredValue7) printString.
    (recoveredValue0) value: (recoveredValue8).
    ^self
! !

"ASDBase.ic method 0x201c9b28; bytecode file offset 0xac63f8"
!SGDataScalarValueMinMaxQuantEditor methodsFor: 'recovered'!
refreshTargetValue
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 |
    recoveredValue0 := (self) data.
    (recoveredValue0) get.
    recoveredValue1 := (self) data.
    recoveredValue2 := (self) data.
    recoveredValue3 := (recoveredValue2) getPhysValue.
    (recoveredValue1) setAndWrite: (recoveredValue3).
    recoveredValue4 := (self) widgetDataValue.
    recoveredValue5 := (self) data.
    recoveredValue6 := (recoveredValue5) get.
    recoveredValue7 := (recoveredValue6) getPhysValue.
    recoveredValue8 := (recoveredValue7) printString.
    (recoveredValue4) value: (recoveredValue8).
    ^self
! !

"ASDBase.ic method 0x201caae0; bytecode file offset 0xac73b4"
!SGDataScalarValueMinMaxQuantEditor methodsFor: 'recovered'!
initializeAfterCreate
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    super initializeAfterCreate.
    recoveredValue0 := variables.
    recoveredValue1 := (recoveredValue0) first.
    (self) dataElement: (recoveredValue1).
    recoveredValue2 := (self) data.
    (recoveredValue2) get.
    (self) setCharacterMethod.
    (self) updateWidgets.
    ^self
! !

"ASDBase.ic method 0x2021fbc0; bytecode file offset 0xb1c494"
!SGDataScalarValueMinMaxQuantEditor methodsFor: 'recovered'!
setCharacterMethod
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 |
    recoveredValue0 := (self) data.
    recoveredValue1 := (recoveredValue0) getPhysType.
    recoveredValue2 := (recoveredValue1) getCharacterFilter.
    recoveredLocal1 := recoveredValue2.
    recoveredValue3 := (self) widgetDataValue.
    recoveredValue4 := recoveredLocal1.
    (recoveredValue3) characterMethod: (recoveredValue4).
    recoveredValue5 := (self) widgetDataMin.
    recoveredValue6 := recoveredLocal1.
    (recoveredValue5) characterMethod: (recoveredValue6).
    recoveredValue7 := (self) widgetDataMax.
    recoveredValue8 := recoveredLocal1.
    (recoveredValue7) characterMethod: (recoveredValue8).
    recoveredValue9 := (self) widgetDataQuant.
    recoveredValue10 := recoveredLocal1.
    (recoveredValue9) characterMethod: (recoveredValue10).
    ^self
! !

"ASDBase.ic method 0x20417f10; bytecode file offset 0xd14814"
!SGDataScalarValueMinMaxQuantEditor methodsFor: 'recovered'!
updateWidgets
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetDataValue.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) data.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) getPhysValue.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) printString.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack0) value: (recoveredStack1).
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetDataLabel.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) data.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) name.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            (recoveredStack0) labelString: (recoveredStack1).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := (recoveredStack0) data.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := (recoveredStack0) access.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := (recoveredStack0) getMinMaxQuant.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredLocal4 := recoveredStack0.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := 1.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1).
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := 2.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1).
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := 3.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1).
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetDataMin.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack1 := (recoveredStack1) printString.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            (recoveredStack0) value: (recoveredStack1).
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetDataMax.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack1 := (recoveredStack1) printString.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            (recoveredStack0) value: (recoveredStack1).
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetDataQuant.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack1 := (recoveredStack1) printString.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            (recoveredStack0) value: (recoveredStack1).
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack0 := (recoveredStack0) data.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack0 := (recoveredStack0) unit.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredLocal5 := recoveredStack0.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack0 := recoveredLocal5.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 82] ifFalse: [recoveredPC := 78].
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack0 := 'unit'.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredLocal5 := recoveredStack0.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetUnit.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack1 := '['.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredStack2 := recoveredLocal5.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredStack2 := ']'.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            (recoveredStack0) labelString: (recoveredStack1).
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x204a5d9c; bytecode file offset 0xda26b4"
!SGDataScalarValueMinMaxQuantEditor methodsFor: 'recovered'!
updateDataElement
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetDataMin.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) value.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack0 := (recoveredStack0) asIntOrFloatOrFraction.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetDataMax.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := (recoveredStack0) value.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) asIntOrFloatOrFraction.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetDataQuant.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := (recoveredStack0) value.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := (recoveredStack0) asIntOrFloatOrFraction.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := (recoveredStack0) < (recoveredStack1).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 39] ifFalse: [recoveredPC := 26].
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := RBUserInfo.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := 'Min must be lower than Max'.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := (recoveredStack0) warning: (recoveredStack1).
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            (recoveredStack0) prompt.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := #[0 0 0 0 0 0 240 63].
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack0 := (recoveredStack0) + (recoveredStack1).
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack0 := (recoveredStack0) < (recoveredStack1).
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 46] ifFalse: [recoveredPC := 57].
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack0 := RBUserInfo.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack1 := 'Quantization must be >= 0 !!'.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack0 := (recoveredStack0) message: (recoveredStack1).
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            (recoveredStack0) prompt.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack0 := 0.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetDataMin.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack1 := (recoveredStack1) printString.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            (recoveredStack0) value: (recoveredStack1).
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetDataMax.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack1 := (recoveredStack1) printString.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            (recoveredStack0) value: (recoveredStack1).
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetDataQuant.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack1 := (recoveredStack1) printString.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            (recoveredStack0) value: (recoveredStack1).
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack0 := (recoveredStack0) data.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack0 := (recoveredStack0) getPhysInterval.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            (recoveredStack0) left: (recoveredStack1).
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack0 := (recoveredStack0) data.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack0 := (recoveredStack0) getPhysInterval.
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            (recoveredStack0) right: (recoveredStack1).
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack0 := (recoveredStack0) data.
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            (recoveredStack0) setPhysQuantization: (recoveredStack1).
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            recoveredStack0 := Array.
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            recoveredStack1 := 4.
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            recoveredStack0 := (recoveredStack0) new: (recoveredStack1).
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            recoveredLocal4 := recoveredStack0.
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            recoveredStack1 := 1.
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 112.
        ].
        recoveredStep = 112 ifTrue: [
            (recoveredStack0) at: (recoveredStack1) put: (recoveredStack2).
            recoveredPC := 114.
        ].
        recoveredStep = 114 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            recoveredStack1 := 2.
            recoveredPC := 117.
        ].
        recoveredStep = 117 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 118.
        ].
        recoveredStep = 118 ifTrue: [
            (recoveredStack0) at: (recoveredStack1) put: (recoveredStack2).
            recoveredPC := 120.
        ].
        recoveredStep = 120 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 121.
        ].
        recoveredStep = 121 ifTrue: [
            recoveredStack1 := 3.
            recoveredPC := 123.
        ].
        recoveredStep = 123 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 124.
        ].
        recoveredStep = 124 ifTrue: [
            (recoveredStack0) at: (recoveredStack1) put: (recoveredStack2).
            recoveredPC := 126.
        ].
        recoveredStep = 126 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 127.
        ].
        recoveredStep = 127 ifTrue: [
            recoveredStack0 := (recoveredStack0) data.
            recoveredPC := 129.
        ].
        recoveredStep = 129 ifTrue: [
            recoveredStack0 := (recoveredStack0) access.
            recoveredPC := 131.
        ].
        recoveredStep = 131 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 132.
        ].
        recoveredStep = 132 ifTrue: [
            (recoveredStack0) setMinMaxQuant: (recoveredStack1).
            recoveredPC := 134.
        ].
        recoveredStep = 134 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 135.
        ].
        recoveredStep = 135 ifTrue: [
            (recoveredStack0) refreshTargetValue.
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

"ASDBase.ic method 0x2068ebe0; bytecode file offset 0xf8b5ec"
!SGDataScalarValueMinMaxQuantEditor methodsFor: 'recovered'!
createWidgetHierarchy
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredLocal6 recoveredLocal7 recoveredLocal8 recoveredLocal9 recoveredLocal10 recoveredLocal11 recoveredLocal12 recoveredLocal13 recoveredLocal14 recoveredLocal15 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredPC recoveredStep |
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
            recoveredLocal15 := recoveredStack1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := 1.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredLocal14 := recoveredStack1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := 1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredLocal13 := recoveredStack1.
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
    (recoveredBlock24Value1) title: ('Scalar Calibration').
    recoveredBlock24Value2 := recoveredBlock24Value0.
    recoveredBlock24Value3 := recoveredLocal13.
    recoveredBlock24Value4 := (156) * (recoveredBlock24Value3).
    recoveredBlock24Value5 := (recoveredBlock24Value4) rounded.
    (recoveredBlock24Value2) height: (recoveredBlock24Value5).
    recoveredBlock24Value6 := recoveredLocal14.
    recoveredBlock24Value7 := (206) * (recoveredBlock24Value6).
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
            recoveredLocal12 := recoveredStack1.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack1 := recoveredLocal15.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack2 := 'mainWindow'.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack3 := recoveredLocal12.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack1 := recoveredLocal12.
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
            recoveredLocal11 := recoveredStack1.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack1 := recoveredLocal15.
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack2 := 'aMainWindow1'.
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack3 := recoveredLocal11.
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            recoveredStack1 := recoveredLocal11.
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
            recoveredLocal10 := recoveredStack1.
            recoveredPC := 112.
        ].
        recoveredStep = 112 ifTrue: [
            recoveredStack1 := recoveredLocal15.
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            recoveredStack2 := 'aForm1'.
            recoveredPC := 117.
        ].
        recoveredStep = 117 ifTrue: [
            recoveredStack3 := recoveredLocal10.
            recoveredPC := 120.
        ].
        recoveredStep = 120 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 122.
        ].
        recoveredStep = 122 ifTrue: [
            recoveredStack1 := recoveredLocal10.
            recoveredPC := 125.
        ].
        recoveredStep = 125 ifTrue: [
            recoveredStack2 := 'unitLabel'.
            recoveredPC := 127.
        ].
        recoveredStep = 127 ifTrue: [
            recoveredStack3 := [:recoveredBlock127Arg1 | 
    | recoveredBlock127Value0 recoveredBlock127Value1 recoveredBlock127Value2 recoveredBlock127Value3 recoveredBlock127Value4 recoveredBlock127Value5 recoveredBlock127Value6 recoveredBlock127Value7 recoveredBlock127Value8 recoveredBlock127Value9 recoveredBlock127Value10 recoveredBlock127Value11 recoveredBlock127Value12 recoveredBlock127Value13 recoveredBlock127Value14 recoveredBlock127Value15 recoveredBlock127Value16 recoveredBlock127Value17 recoveredBlock127Value18 recoveredBlock127Value19 recoveredBlock127Value20 |
    recoveredBlock127Value0 := recoveredBlock127Arg1.
    recoveredBlock127Value1 := recoveredBlock127Value0.
    recoveredBlock127Value2 := recoveredLocal14.
    recoveredBlock127Value3 := (130) * (recoveredBlock127Value2).
    recoveredBlock127Value4 := (recoveredBlock127Value3) rounded.
    (recoveredBlock127Value1) x: (recoveredBlock127Value4).
    recoveredBlock127Value5 := recoveredBlock127Value0.
    recoveredBlock127Value6 := XmALIGNMENTBEGINNING.
    (recoveredBlock127Value5) alignment: (recoveredBlock127Value6).
    recoveredBlock127Value7 := recoveredBlock127Value0.
    (recoveredBlock127Value7) labelString: ('[ unit ]').
    recoveredBlock127Value8 := recoveredBlock127Value0.
    (recoveredBlock127Value8) marginWidth: (0).
    recoveredBlock127Value9 := recoveredBlock127Value0.
    recoveredBlock127Value10 := recoveredLocal13.
    recoveredBlock127Value11 := (30) * (recoveredBlock127Value10).
    recoveredBlock127Value12 := (recoveredBlock127Value11) rounded.
    (recoveredBlock127Value9) y: (recoveredBlock127Value12).
    recoveredBlock127Value13 := recoveredBlock127Value0.
    recoveredBlock127Value14 := recoveredLocal13.
    recoveredBlock127Value15 := (25) * (recoveredBlock127Value14).
    recoveredBlock127Value16 := (recoveredBlock127Value15) rounded.
    (recoveredBlock127Value13) height: (recoveredBlock127Value16).
    recoveredBlock127Value17 := recoveredLocal14.
    recoveredBlock127Value18 := (43) * (recoveredBlock127Value17).
    recoveredBlock127Value19 := (recoveredBlock127Value18) rounded.
    recoveredBlock127Value20 := (recoveredBlock127Value0) width: (recoveredBlock127Value19).
    recoveredBlock127Value20
].
            recoveredPC := 196.
        ].
        recoveredStep = 196 ifTrue: [
            recoveredStack1 := (recoveredStack1) createLabel: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 198.
        ].
        recoveredStep = 198 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 200.
        ].
        recoveredStep = 200 ifTrue: [
            recoveredLocal9 := recoveredStack1.
            recoveredPC := 203.
        ].
        recoveredStep = 203 ifTrue: [
            recoveredStack1 := recoveredLocal15.
            recoveredPC := 206.
        ].
        recoveredStep = 206 ifTrue: [
            recoveredStack2 := 'unitLabel'.
            recoveredPC := 208.
        ].
        recoveredStep = 208 ifTrue: [
            recoveredStack3 := recoveredLocal9.
            recoveredPC := 211.
        ].
        recoveredStep = 211 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 213.
        ].
        recoveredStep = 213 ifTrue: [
            recoveredStack1 := recoveredLocal10.
            recoveredPC := 216.
        ].
        recoveredStep = 216 ifTrue: [
            recoveredStack2 := 'value'.
            recoveredPC := 218.
        ].
        recoveredStep = 218 ifTrue: [
            recoveredStack3 := [:recoveredBlock218Arg1 | 
    | recoveredBlock218Value0 recoveredBlock218Value1 recoveredBlock218Value2 recoveredBlock218Value3 recoveredBlock218Value4 recoveredBlock218Value5 recoveredBlock218Value6 recoveredBlock218Value7 recoveredBlock218Value8 recoveredBlock218Value9 recoveredBlock218Value10 recoveredBlock218Value11 recoveredBlock218Value12 recoveredBlock218Value13 recoveredBlock218Value14 recoveredBlock218Value15 recoveredBlock218Value16 |
    recoveredBlock218Value0 := recoveredBlock218Arg1.
    recoveredBlock218Value1 := recoveredBlock218Value0.
    recoveredBlock218Value2 := recoveredLocal13.
    recoveredBlock218Value3 := (25) * (recoveredBlock218Value2).
    recoveredBlock218Value4 := (recoveredBlock218Value3) rounded.
    (recoveredBlock218Value1) y: (recoveredBlock218Value4).
    recoveredBlock218Value5 := recoveredBlock218Value0.
    recoveredBlock218Value6 := recoveredLocal14.
    recoveredBlock218Value7 := (5) * (recoveredBlock218Value6).
    recoveredBlock218Value8 := (recoveredBlock218Value7) rounded.
    (recoveredBlock218Value5) x: (recoveredBlock218Value8).
    recoveredBlock218Value9 := recoveredBlock218Value0.
    recoveredBlock218Value10 := recoveredLocal13.
    recoveredBlock218Value11 := (25) * (recoveredBlock218Value10).
    recoveredBlock218Value12 := (recoveredBlock218Value11) rounded.
    (recoveredBlock218Value9) height: (recoveredBlock218Value12).
    recoveredBlock218Value13 := recoveredLocal14.
    recoveredBlock218Value14 := (124) * (recoveredBlock218Value13).
    recoveredBlock218Value15 := (recoveredBlock218Value14) rounded.
    recoveredBlock218Value16 := (recoveredBlock218Value0) width: (recoveredBlock218Value15).
    recoveredBlock218Value16
].
            recoveredPC := 271.
        ].
        recoveredStep = 271 ifTrue: [
            recoveredStack1 := (recoveredStack1) createEnhancedText: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 273.
        ].
        recoveredStep = 273 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 275.
        ].
        recoveredStep = 275 ifTrue: [
            recoveredLocal8 := recoveredStack1.
            recoveredPC := 278.
        ].
        recoveredStep = 278 ifTrue: [
            recoveredStack1 := recoveredLocal15.
            recoveredPC := 281.
        ].
        recoveredStep = 281 ifTrue: [
            recoveredStack2 := 'value'.
            recoveredPC := 283.
        ].
        recoveredStep = 283 ifTrue: [
            recoveredStack3 := recoveredLocal8.
            recoveredPC := 286.
        ].
        recoveredStep = 286 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 288.
        ].
        recoveredStep = 288 ifTrue: [
            recoveredStack1 := recoveredLocal10.
            recoveredPC := 291.
        ].
        recoveredStep = 291 ifTrue: [
            recoveredStack2 := 'quant'.
            recoveredPC := 293.
        ].
        recoveredStep = 293 ifTrue: [
            recoveredStack3 := [:recoveredBlock293Arg1 | 
    | recoveredBlock293Value0 recoveredBlock293Value1 recoveredBlock293Value2 recoveredBlock293Value3 recoveredBlock293Value4 recoveredBlock293Value5 recoveredBlock293Value6 recoveredBlock293Value7 recoveredBlock293Value8 recoveredBlock293Value9 recoveredBlock293Value10 recoveredBlock293Value11 recoveredBlock293Value12 recoveredBlock293Value13 recoveredBlock293Value14 recoveredBlock293Value15 recoveredBlock293Value16 |
    recoveredBlock293Value0 := recoveredBlock293Arg1.
    recoveredBlock293Value1 := recoveredBlock293Value0.
    recoveredBlock293Value2 := recoveredLocal13.
    recoveredBlock293Value3 := (125) * (recoveredBlock293Value2).
    recoveredBlock293Value4 := (recoveredBlock293Value3) rounded.
    (recoveredBlock293Value1) y: (recoveredBlock293Value4).
    recoveredBlock293Value5 := recoveredBlock293Value0.
    recoveredBlock293Value6 := recoveredLocal14.
    recoveredBlock293Value7 := (50) * (recoveredBlock293Value6).
    recoveredBlock293Value8 := (recoveredBlock293Value7) rounded.
    (recoveredBlock293Value5) x: (recoveredBlock293Value8).
    recoveredBlock293Value9 := recoveredBlock293Value0.
    recoveredBlock293Value10 := recoveredLocal13.
    recoveredBlock293Value11 := (25) * (recoveredBlock293Value10).
    recoveredBlock293Value12 := (recoveredBlock293Value11) rounded.
    (recoveredBlock293Value9) height: (recoveredBlock293Value12).
    recoveredBlock293Value13 := recoveredLocal14.
    recoveredBlock293Value14 := (124) * (recoveredBlock293Value13).
    recoveredBlock293Value15 := (recoveredBlock293Value14) rounded.
    recoveredBlock293Value16 := (recoveredBlock293Value0) width: (recoveredBlock293Value15).
    recoveredBlock293Value16
].
            recoveredPC := 349.
        ].
        recoveredStep = 349 ifTrue: [
            recoveredStack1 := (recoveredStack1) createEnhancedText: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 351.
        ].
        recoveredStep = 351 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 353.
        ].
        recoveredStep = 353 ifTrue: [
            recoveredLocal7 := recoveredStack1.
            recoveredPC := 356.
        ].
        recoveredStep = 356 ifTrue: [
            recoveredStack1 := recoveredLocal15.
            recoveredPC := 359.
        ].
        recoveredStep = 359 ifTrue: [
            recoveredStack2 := 'quant'.
            recoveredPC := 361.
        ].
        recoveredStep = 361 ifTrue: [
            recoveredStack3 := recoveredLocal7.
            recoveredPC := 364.
        ].
        recoveredStep = 364 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 366.
        ].
        recoveredStep = 366 ifTrue: [
            recoveredStack1 := recoveredLocal10.
            recoveredPC := 369.
        ].
        recoveredStep = 369 ifTrue: [
            recoveredStack2 := 'max'.
            recoveredPC := 371.
        ].
        recoveredStep = 371 ifTrue: [
            recoveredStack3 := [:recoveredBlock371Arg1 | 
    | recoveredBlock371Value0 recoveredBlock371Value1 recoveredBlock371Value2 recoveredBlock371Value3 recoveredBlock371Value4 recoveredBlock371Value5 recoveredBlock371Value6 recoveredBlock371Value7 recoveredBlock371Value8 recoveredBlock371Value9 recoveredBlock371Value10 recoveredBlock371Value11 recoveredBlock371Value12 recoveredBlock371Value13 recoveredBlock371Value14 recoveredBlock371Value15 recoveredBlock371Value16 |
    recoveredBlock371Value0 := recoveredBlock371Arg1.
    recoveredBlock371Value1 := recoveredBlock371Value0.
    recoveredBlock371Value2 := recoveredLocal13.
    recoveredBlock371Value3 := (95) * (recoveredBlock371Value2).
    recoveredBlock371Value4 := (recoveredBlock371Value3) rounded.
    (recoveredBlock371Value1) y: (recoveredBlock371Value4).
    recoveredBlock371Value5 := recoveredBlock371Value0.
    recoveredBlock371Value6 := recoveredLocal14.
    recoveredBlock371Value7 := (50) * (recoveredBlock371Value6).
    recoveredBlock371Value8 := (recoveredBlock371Value7) rounded.
    (recoveredBlock371Value5) x: (recoveredBlock371Value8).
    recoveredBlock371Value9 := recoveredBlock371Value0.
    recoveredBlock371Value10 := recoveredLocal13.
    recoveredBlock371Value11 := (25) * (recoveredBlock371Value10).
    recoveredBlock371Value12 := (recoveredBlock371Value11) rounded.
    (recoveredBlock371Value9) height: (recoveredBlock371Value12).
    recoveredBlock371Value13 := recoveredLocal14.
    recoveredBlock371Value14 := (124) * (recoveredBlock371Value13).
    recoveredBlock371Value15 := (recoveredBlock371Value14) rounded.
    recoveredBlock371Value16 := (recoveredBlock371Value0) width: (recoveredBlock371Value15).
    recoveredBlock371Value16
].
            recoveredPC := 427.
        ].
        recoveredStep = 427 ifTrue: [
            recoveredStack1 := (recoveredStack1) createEnhancedText: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 429.
        ].
        recoveredStep = 429 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 431.
        ].
        recoveredStep = 431 ifTrue: [
            recoveredLocal6 := recoveredStack1.
            recoveredPC := 434.
        ].
        recoveredStep = 434 ifTrue: [
            recoveredStack1 := recoveredLocal15.
            recoveredPC := 437.
        ].
        recoveredStep = 437 ifTrue: [
            recoveredStack2 := 'max'.
            recoveredPC := 439.
        ].
        recoveredStep = 439 ifTrue: [
            recoveredStack3 := recoveredLocal6.
            recoveredPC := 442.
        ].
        recoveredStep = 442 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 444.
        ].
        recoveredStep = 444 ifTrue: [
            recoveredStack1 := recoveredLocal10.
            recoveredPC := 447.
        ].
        recoveredStep = 447 ifTrue: [
            recoveredStack2 := 'min'.
            recoveredPC := 449.
        ].
        recoveredStep = 449 ifTrue: [
            recoveredStack3 := [:recoveredBlock449Arg1 | 
    | recoveredBlock449Value0 recoveredBlock449Value1 recoveredBlock449Value2 recoveredBlock449Value3 recoveredBlock449Value4 recoveredBlock449Value5 recoveredBlock449Value6 recoveredBlock449Value7 recoveredBlock449Value8 recoveredBlock449Value9 recoveredBlock449Value10 recoveredBlock449Value11 recoveredBlock449Value12 recoveredBlock449Value13 recoveredBlock449Value14 recoveredBlock449Value15 recoveredBlock449Value16 |
    recoveredBlock449Value0 := recoveredBlock449Arg1.
    recoveredBlock449Value1 := recoveredBlock449Value0.
    recoveredBlock449Value2 := recoveredLocal13.
    recoveredBlock449Value3 := (65) * (recoveredBlock449Value2).
    recoveredBlock449Value4 := (recoveredBlock449Value3) rounded.
    (recoveredBlock449Value1) y: (recoveredBlock449Value4).
    recoveredBlock449Value5 := recoveredBlock449Value0.
    recoveredBlock449Value6 := recoveredLocal14.
    recoveredBlock449Value7 := (50) * (recoveredBlock449Value6).
    recoveredBlock449Value8 := (recoveredBlock449Value7) rounded.
    (recoveredBlock449Value5) x: (recoveredBlock449Value8).
    recoveredBlock449Value9 := recoveredBlock449Value0.
    recoveredBlock449Value10 := recoveredLocal13.
    recoveredBlock449Value11 := (25) * (recoveredBlock449Value10).
    recoveredBlock449Value12 := (recoveredBlock449Value11) rounded.
    (recoveredBlock449Value9) height: (recoveredBlock449Value12).
    recoveredBlock449Value13 := recoveredLocal14.
    recoveredBlock449Value14 := (124) * (recoveredBlock449Value13).
    recoveredBlock449Value15 := (recoveredBlock449Value14) rounded.
    recoveredBlock449Value16 := (recoveredBlock449Value0) width: (recoveredBlock449Value15).
    recoveredBlock449Value16
].
            recoveredPC := 505.
        ].
        recoveredStep = 505 ifTrue: [
            recoveredStack1 := (recoveredStack1) createEnhancedText: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 507.
        ].
        recoveredStep = 507 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 509.
        ].
        recoveredStep = 509 ifTrue: [
            recoveredLocal5 := recoveredStack1.
            recoveredPC := 512.
        ].
        recoveredStep = 512 ifTrue: [
            recoveredStack1 := recoveredLocal15.
            recoveredPC := 515.
        ].
        recoveredStep = 515 ifTrue: [
            recoveredStack2 := 'min'.
            recoveredPC := 517.
        ].
        recoveredStep = 517 ifTrue: [
            recoveredStack3 := recoveredLocal5.
            recoveredPC := 520.
        ].
        recoveredStep = 520 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 522.
        ].
        recoveredStep = 522 ifTrue: [
            recoveredStack1 := recoveredLocal10.
            recoveredPC := 525.
        ].
        recoveredStep = 525 ifTrue: [
            recoveredStack2 := 'aLabel3'.
            recoveredPC := 527.
        ].
        recoveredStep = 527 ifTrue: [
            recoveredStack3 := [:recoveredBlock527Arg1 | 
    | recoveredBlock527Value0 recoveredBlock527Value1 recoveredBlock527Value2 recoveredBlock527Value3 recoveredBlock527Value4 recoveredBlock527Value5 recoveredBlock527Value6 recoveredBlock527Value7 recoveredBlock527Value8 recoveredBlock527Value9 recoveredBlock527Value10 recoveredBlock527Value11 recoveredBlock527Value12 recoveredBlock527Value13 recoveredBlock527Value14 recoveredBlock527Value15 recoveredBlock527Value16 recoveredBlock527Value17 recoveredBlock527Value18 recoveredBlock527Value19 recoveredBlock527Value20 recoveredBlock527Value21 |
    recoveredBlock527Value0 := recoveredBlock527Arg1.
    recoveredBlock527Value1 := recoveredBlock527Value0.
    recoveredBlock527Value2 := recoveredLocal14.
    recoveredBlock527Value3 := (5) * (recoveredBlock527Value2).
    recoveredBlock527Value4 := (recoveredBlock527Value3) rounded.
    (recoveredBlock527Value1) x: (recoveredBlock527Value4).
    recoveredBlock527Value5 := recoveredBlock527Value0.
    recoveredBlock527Value6 := XmALIGNMENTBEGINNING.
    (recoveredBlock527Value5) alignment: (recoveredBlock527Value6).
    recoveredBlock527Value7 := recoveredBlock527Value0.
    (recoveredBlock527Value7) labelString: ('Quant').
    recoveredBlock527Value8 := recoveredBlock527Value0.
    recoveredBlock527Value9 := recoveredLocal13.
    recoveredBlock527Value10 := (130) * (recoveredBlock527Value9).
    recoveredBlock527Value11 := (recoveredBlock527Value10) rounded.
    (recoveredBlock527Value8) y: (recoveredBlock527Value11).
    recoveredBlock527Value12 := recoveredBlock527Value0.
    recoveredBlock527Value13 := recoveredLocal13.
    recoveredBlock527Value14 := (20) * (recoveredBlock527Value13).
    recoveredBlock527Value15 := (recoveredBlock527Value14) rounded.
    (recoveredBlock527Value12) height: (recoveredBlock527Value15).
    recoveredBlock527Value16 := recoveredBlock527Value0.
    recoveredBlock527Value17 := recoveredLocal14.
    recoveredBlock527Value18 := (40) * (recoveredBlock527Value17).
    recoveredBlock527Value19 := (recoveredBlock527Value18) rounded.
    (recoveredBlock527Value16) width: (recoveredBlock527Value19).
    recoveredBlock527Value20 := recoveredBlock527Value0.
    recoveredBlock527Value21 := (self) defaultLabelBlue.
    (recoveredBlock527Value20) foregroundColor: (recoveredBlock527Value21).
    recoveredBlock527Value0
].
            recoveredPC := 597.
        ].
        recoveredStep = 597 ifTrue: [
            recoveredStack1 := (recoveredStack1) createLabel: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 599.
        ].
        recoveredStep = 599 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 601.
        ].
        recoveredStep = 601 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 604.
        ].
        recoveredStep = 604 ifTrue: [
            recoveredStack1 := recoveredLocal15.
            recoveredPC := 607.
        ].
        recoveredStep = 607 ifTrue: [
            recoveredStack2 := 'aLabel3'.
            recoveredPC := 609.
        ].
        recoveredStep = 609 ifTrue: [
            recoveredStack3 := recoveredLocal4.
            recoveredPC := 612.
        ].
        recoveredStep = 612 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 614.
        ].
        recoveredStep = 614 ifTrue: [
            recoveredStack1 := recoveredLocal10.
            recoveredPC := 617.
        ].
        recoveredStep = 617 ifTrue: [
            recoveredStack2 := 'aLabel2'.
            recoveredPC := 619.
        ].
        recoveredStep = 619 ifTrue: [
            recoveredStack3 := [:recoveredBlock619Arg1 | 
    | recoveredBlock619Value0 recoveredBlock619Value1 recoveredBlock619Value2 recoveredBlock619Value3 recoveredBlock619Value4 recoveredBlock619Value5 recoveredBlock619Value6 recoveredBlock619Value7 recoveredBlock619Value8 recoveredBlock619Value9 recoveredBlock619Value10 recoveredBlock619Value11 recoveredBlock619Value12 recoveredBlock619Value13 recoveredBlock619Value14 recoveredBlock619Value15 recoveredBlock619Value16 recoveredBlock619Value17 recoveredBlock619Value18 recoveredBlock619Value19 recoveredBlock619Value20 recoveredBlock619Value21 |
    recoveredBlock619Value0 := recoveredBlock619Arg1.
    recoveredBlock619Value1 := recoveredBlock619Value0.
    recoveredBlock619Value2 := recoveredLocal14.
    recoveredBlock619Value3 := (5) * (recoveredBlock619Value2).
    recoveredBlock619Value4 := (recoveredBlock619Value3) rounded.
    (recoveredBlock619Value1) x: (recoveredBlock619Value4).
    recoveredBlock619Value5 := recoveredBlock619Value0.
    recoveredBlock619Value6 := XmALIGNMENTBEGINNING.
    (recoveredBlock619Value5) alignment: (recoveredBlock619Value6).
    recoveredBlock619Value7 := recoveredBlock619Value0.
    (recoveredBlock619Value7) labelString: ('Max').
    recoveredBlock619Value8 := recoveredBlock619Value0.
    recoveredBlock619Value9 := recoveredLocal13.
    recoveredBlock619Value10 := (100) * (recoveredBlock619Value9).
    recoveredBlock619Value11 := (recoveredBlock619Value10) rounded.
    (recoveredBlock619Value8) y: (recoveredBlock619Value11).
    recoveredBlock619Value12 := recoveredBlock619Value0.
    recoveredBlock619Value13 := recoveredLocal13.
    recoveredBlock619Value14 := (20) * (recoveredBlock619Value13).
    recoveredBlock619Value15 := (recoveredBlock619Value14) rounded.
    (recoveredBlock619Value12) height: (recoveredBlock619Value15).
    recoveredBlock619Value16 := recoveredBlock619Value0.
    recoveredBlock619Value17 := recoveredLocal14.
    recoveredBlock619Value18 := (40) * (recoveredBlock619Value17).
    recoveredBlock619Value19 := (recoveredBlock619Value18) rounded.
    (recoveredBlock619Value16) width: (recoveredBlock619Value19).
    recoveredBlock619Value20 := recoveredBlock619Value0.
    recoveredBlock619Value21 := (self) defaultLabelBlue.
    (recoveredBlock619Value20) foregroundColor: (recoveredBlock619Value21).
    recoveredBlock619Value0
].
            recoveredPC := 689.
        ].
        recoveredStep = 689 ifTrue: [
            recoveredStack1 := (recoveredStack1) createLabel: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 691.
        ].
        recoveredStep = 691 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 693.
        ].
        recoveredStep = 693 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 696.
        ].
        recoveredStep = 696 ifTrue: [
            recoveredStack1 := recoveredLocal15.
            recoveredPC := 699.
        ].
        recoveredStep = 699 ifTrue: [
            recoveredStack2 := 'aLabel2'.
            recoveredPC := 701.
        ].
        recoveredStep = 701 ifTrue: [
            recoveredStack3 := recoveredLocal3.
            recoveredPC := 704.
        ].
        recoveredStep = 704 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 706.
        ].
        recoveredStep = 706 ifTrue: [
            recoveredStack1 := recoveredLocal10.
            recoveredPC := 709.
        ].
        recoveredStep = 709 ifTrue: [
            recoveredStack2 := 'aLabel1'.
            recoveredPC := 711.
        ].
        recoveredStep = 711 ifTrue: [
            recoveredStack3 := [:recoveredBlock711Arg1 | 
    | recoveredBlock711Value0 recoveredBlock711Value1 recoveredBlock711Value2 recoveredBlock711Value3 recoveredBlock711Value4 recoveredBlock711Value5 recoveredBlock711Value6 recoveredBlock711Value7 recoveredBlock711Value8 recoveredBlock711Value9 recoveredBlock711Value10 recoveredBlock711Value11 recoveredBlock711Value12 recoveredBlock711Value13 recoveredBlock711Value14 recoveredBlock711Value15 recoveredBlock711Value16 recoveredBlock711Value17 recoveredBlock711Value18 recoveredBlock711Value19 recoveredBlock711Value20 recoveredBlock711Value21 |
    recoveredBlock711Value0 := recoveredBlock711Arg1.
    recoveredBlock711Value1 := recoveredBlock711Value0.
    recoveredBlock711Value2 := recoveredLocal14.
    recoveredBlock711Value3 := (5) * (recoveredBlock711Value2).
    recoveredBlock711Value4 := (recoveredBlock711Value3) rounded.
    (recoveredBlock711Value1) x: (recoveredBlock711Value4).
    recoveredBlock711Value5 := recoveredBlock711Value0.
    recoveredBlock711Value6 := XmALIGNMENTBEGINNING.
    (recoveredBlock711Value5) alignment: (recoveredBlock711Value6).
    recoveredBlock711Value7 := recoveredBlock711Value0.
    (recoveredBlock711Value7) labelString: ('Min').
    recoveredBlock711Value8 := recoveredBlock711Value0.
    recoveredBlock711Value9 := recoveredLocal13.
    recoveredBlock711Value10 := (70) * (recoveredBlock711Value9).
    recoveredBlock711Value11 := (recoveredBlock711Value10) rounded.
    (recoveredBlock711Value8) y: (recoveredBlock711Value11).
    recoveredBlock711Value12 := recoveredBlock711Value0.
    recoveredBlock711Value13 := recoveredLocal13.
    recoveredBlock711Value14 := (20) * (recoveredBlock711Value13).
    recoveredBlock711Value15 := (recoveredBlock711Value14) rounded.
    (recoveredBlock711Value12) height: (recoveredBlock711Value15).
    recoveredBlock711Value16 := recoveredBlock711Value0.
    recoveredBlock711Value17 := recoveredLocal14.
    recoveredBlock711Value18 := (40) * (recoveredBlock711Value17).
    recoveredBlock711Value19 := (recoveredBlock711Value18) rounded.
    (recoveredBlock711Value16) width: (recoveredBlock711Value19).
    recoveredBlock711Value20 := recoveredBlock711Value0.
    recoveredBlock711Value21 := (self) defaultLabelBlue.
    (recoveredBlock711Value20) foregroundColor: (recoveredBlock711Value21).
    recoveredBlock711Value0
].
            recoveredPC := 781.
        ].
        recoveredStep = 781 ifTrue: [
            recoveredStack1 := (recoveredStack1) createLabel: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 783.
        ].
        recoveredStep = 783 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 785.
        ].
        recoveredStep = 785 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 788.
        ].
        recoveredStep = 788 ifTrue: [
            recoveredStack1 := recoveredLocal15.
            recoveredPC := 791.
        ].
        recoveredStep = 791 ifTrue: [
            recoveredStack2 := 'aLabel1'.
            recoveredPC := 793.
        ].
        recoveredStep = 793 ifTrue: [
            recoveredStack3 := recoveredLocal2.
            recoveredPC := 796.
        ].
        recoveredStep = 796 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 798.
        ].
        recoveredStep = 798 ifTrue: [
            recoveredStack1 := recoveredLocal10.
            recoveredPC := 801.
        ].
        recoveredStep = 801 ifTrue: [
            recoveredStack2 := 'dataLabel'.
            recoveredPC := 803.
        ].
        recoveredStep = 803 ifTrue: [
            recoveredStack3 := [:recoveredBlock803Arg1 | 
    | recoveredBlock803Value0 recoveredBlock803Value1 recoveredBlock803Value2 recoveredBlock803Value3 recoveredBlock803Value4 recoveredBlock803Value5 recoveredBlock803Value6 recoveredBlock803Value7 recoveredBlock803Value8 recoveredBlock803Value9 recoveredBlock803Value10 recoveredBlock803Value11 recoveredBlock803Value12 recoveredBlock803Value13 recoveredBlock803Value14 recoveredBlock803Value15 recoveredBlock803Value16 recoveredBlock803Value17 recoveredBlock803Value18 recoveredBlock803Value19 recoveredBlock803Value20 recoveredBlock803Value21 |
    recoveredBlock803Value0 := recoveredBlock803Arg1.
    recoveredBlock803Value1 := recoveredBlock803Value0.
    recoveredBlock803Value2 := recoveredLocal14.
    recoveredBlock803Value3 := (5) * (recoveredBlock803Value2).
    recoveredBlock803Value4 := (recoveredBlock803Value3) rounded.
    (recoveredBlock803Value1) x: (recoveredBlock803Value4).
    recoveredBlock803Value5 := recoveredBlock803Value0.
    recoveredBlock803Value6 := XmALIGNMENTBEGINNING.
    (recoveredBlock803Value5) alignment: (recoveredBlock803Value6).
    recoveredBlock803Value7 := recoveredBlock803Value0.
    (recoveredBlock803Value7) labelString: ('Kennwert').
    recoveredBlock803Value8 := recoveredBlock803Value0.
    recoveredBlock803Value9 := recoveredLocal13.
    recoveredBlock803Value10 := (10) * (recoveredBlock803Value9).
    recoveredBlock803Value11 := (recoveredBlock803Value10) rounded.
    (recoveredBlock803Value8) y: (recoveredBlock803Value11).
    recoveredBlock803Value12 := recoveredBlock803Value0.
    recoveredBlock803Value13 := recoveredLocal13.
    recoveredBlock803Value14 := (20) * (recoveredBlock803Value13).
    recoveredBlock803Value15 := (recoveredBlock803Value14) rounded.
    (recoveredBlock803Value12) height: (recoveredBlock803Value15).
    recoveredBlock803Value16 := recoveredBlock803Value0.
    recoveredBlock803Value17 := recoveredLocal14.
    recoveredBlock803Value18 := (125) * (recoveredBlock803Value17).
    recoveredBlock803Value19 := (recoveredBlock803Value18) rounded.
    (recoveredBlock803Value16) width: (recoveredBlock803Value19).
    recoveredBlock803Value20 := recoveredBlock803Value0.
    recoveredBlock803Value21 := (self) defaultLabelBlue.
    (recoveredBlock803Value20) foregroundColor: (recoveredBlock803Value21).
    recoveredBlock803Value0
].
            recoveredPC := 873.
        ].
        recoveredStep = 873 ifTrue: [
            recoveredStack1 := (recoveredStack1) createLabel: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 875.
        ].
        recoveredStep = 875 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 877.
        ].
        recoveredStep = 877 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 880.
        ].
        recoveredStep = 880 ifTrue: [
            recoveredStack1 := recoveredLocal15.
            recoveredPC := 883.
        ].
        recoveredStep = 883 ifTrue: [
            recoveredStack2 := 'dataLabel'.
            recoveredPC := 885.
        ].
        recoveredStep = 885 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 888.
        ].
        recoveredStep = 888 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 890.
        ].
        recoveredStep = 890 ifTrue: [
            recoveredStack1 := recoveredLocal11.
            recoveredPC := 893.
        ].
        recoveredStep = 893 ifTrue: [
            recoveredStack2 := [:recoveredBlock893Arg1 | 
    | recoveredBlock893Value0 recoveredBlock893Value1 recoveredBlock893Value2 |
    recoveredBlock893Value0 := recoveredBlock893Arg1.
    recoveredBlock893Value1 := recoveredLocal10.
    recoveredBlock893Value2 := (recoveredBlock893Value0) workWindow: (recoveredBlock893Value1).
    recoveredBlock893Value2
].
            recoveredPC := 907.
        ].
        recoveredStep = 907 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 909.
        ].
        recoveredStep = 909 ifTrue: [
            recoveredStack1 := recoveredLocal9.
            recoveredPC := 912.
        ].
        recoveredStep = 912 ifTrue: [
            recoveredStack2 := [:recoveredBlock912Arg1 | 
    | recoveredBlock912Value0 recoveredBlock912Value1 recoveredBlock912Value2 recoveredBlock912Value3 recoveredBlock912Value4 recoveredBlock912Value5 recoveredBlock912Value6 recoveredBlock912Value7 recoveredBlock912Value8 recoveredBlock912Value9 recoveredBlock912Value10 recoveredBlock912Value11 recoveredBlock912Value12 |
    recoveredBlock912Value0 := recoveredBlock912Arg1.
    recoveredBlock912Value1 := recoveredBlock912Value0.
    recoveredBlock912Value2 := XmATTACHWIDGET.
    (recoveredBlock912Value1) topAttachment: (recoveredBlock912Value2).
    recoveredBlock912Value3 := recoveredBlock912Value0.
    recoveredBlock912Value4 := recoveredLocal1.
    (recoveredBlock912Value3) topWidget: (recoveredBlock912Value4).
    recoveredBlock912Value5 := recoveredBlock912Value0.
    recoveredBlock912Value6 := XmATTACHWIDGET.
    (recoveredBlock912Value5) leftAttachment: (recoveredBlock912Value6).
    recoveredBlock912Value7 := recoveredBlock912Value0.
    recoveredBlock912Value8 := recoveredLocal8.
    (recoveredBlock912Value7) leftWidget: (recoveredBlock912Value8).
    recoveredBlock912Value9 := recoveredBlock912Value0.
    (recoveredBlock912Value9) leftOffset: (5).
    recoveredBlock912Value10 := recoveredBlock912Value0.
    recoveredBlock912Value11 := XmATTACHFORM.
    (recoveredBlock912Value10) rightAttachment: (recoveredBlock912Value11).
    recoveredBlock912Value12 := (recoveredBlock912Value0) rightOffset: (5).
    recoveredBlock912Value12
].
            recoveredPC := 966.
        ].
        recoveredStep = 966 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 968.
        ].
        recoveredStep = 968 ifTrue: [
            recoveredStack1 := recoveredLocal8.
            recoveredPC := 971.
        ].
        recoveredStep = 971 ifTrue: [
            recoveredStack2 := [:recoveredBlock971Arg1 | 
    | recoveredBlock971Value0 recoveredBlock971Value1 recoveredBlock971Value2 recoveredBlock971Value3 recoveredBlock971Value4 recoveredBlock971Value5 recoveredBlock971Value6 recoveredBlock971Value7 recoveredBlock971Value8 recoveredBlock971Value9 recoveredBlock971Value10 |
    recoveredBlock971Value0 := recoveredBlock971Arg1.
    recoveredBlock971Value1 := recoveredBlock971Value0.
    recoveredBlock971Value2 := XmATTACHWIDGET.
    (recoveredBlock971Value1) topAttachment: (recoveredBlock971Value2).
    recoveredBlock971Value3 := recoveredBlock971Value0.
    recoveredBlock971Value4 := recoveredLocal1.
    (recoveredBlock971Value3) topWidget: (recoveredBlock971Value4).
    recoveredBlock971Value5 := recoveredBlock971Value0.
    recoveredBlock971Value6 := XmATTACHFORM.
    (recoveredBlock971Value5) leftAttachment: (recoveredBlock971Value6).
    recoveredBlock971Value7 := recoveredBlock971Value0.
    (recoveredBlock971Value7) leftOffset: (5).
    recoveredBlock971Value8 := recoveredBlock971Value0.
    recoveredBlock971Value9 := XmATTACHPOSITION.
    (recoveredBlock971Value8) rightAttachment: (recoveredBlock971Value9).
    recoveredBlock971Value10 := (recoveredBlock971Value0) rightPosition: (69).
    recoveredBlock971Value10
].
            recoveredPC := 1022.
        ].
        recoveredStep = 1022 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 1024.
        ].
        recoveredStep = 1024 ifTrue: [
            recoveredStack1 := recoveredLocal7.
            recoveredPC := 1027.
        ].
        recoveredStep = 1027 ifTrue: [
            recoveredStack2 := [:recoveredBlock1027Arg1 | 
    | recoveredBlock1027Value0 recoveredBlock1027Value1 recoveredBlock1027Value2 recoveredBlock1027Value3 recoveredBlock1027Value4 recoveredBlock1027Value5 recoveredBlock1027Value6 recoveredBlock1027Value7 recoveredBlock1027Value8 |
    recoveredBlock1027Value0 := recoveredBlock1027Arg1.
    recoveredBlock1027Value1 := recoveredBlock1027Value0.
    recoveredBlock1027Value2 := XmATTACHWIDGET.
    (recoveredBlock1027Value1) leftAttachment: (recoveredBlock1027Value2).
    recoveredBlock1027Value3 := recoveredBlock1027Value0.
    recoveredBlock1027Value4 := recoveredLocal4.
    (recoveredBlock1027Value3) leftWidget: (recoveredBlock1027Value4).
    recoveredBlock1027Value5 := recoveredBlock1027Value0.
    (recoveredBlock1027Value5) leftOffset: (5).
    recoveredBlock1027Value6 := recoveredBlock1027Value0.
    recoveredBlock1027Value7 := XmATTACHFORM.
    (recoveredBlock1027Value6) rightAttachment: (recoveredBlock1027Value7).
    recoveredBlock1027Value8 := (recoveredBlock1027Value0) rightOffset: (5).
    recoveredBlock1027Value8
].
            recoveredPC := 1072.
        ].
        recoveredStep = 1072 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 1074.
        ].
        recoveredStep = 1074 ifTrue: [
            recoveredStack1 := recoveredLocal6.
            recoveredPC := 1077.
        ].
        recoveredStep = 1077 ifTrue: [
            recoveredStack2 := [:recoveredBlock1077Arg1 | 
    | recoveredBlock1077Value0 recoveredBlock1077Value1 recoveredBlock1077Value2 recoveredBlock1077Value3 recoveredBlock1077Value4 recoveredBlock1077Value5 recoveredBlock1077Value6 recoveredBlock1077Value7 recoveredBlock1077Value8 |
    recoveredBlock1077Value0 := recoveredBlock1077Arg1.
    recoveredBlock1077Value1 := recoveredBlock1077Value0.
    recoveredBlock1077Value2 := XmATTACHWIDGET.
    (recoveredBlock1077Value1) leftAttachment: (recoveredBlock1077Value2).
    recoveredBlock1077Value3 := recoveredBlock1077Value0.
    recoveredBlock1077Value4 := recoveredLocal3.
    (recoveredBlock1077Value3) leftWidget: (recoveredBlock1077Value4).
    recoveredBlock1077Value5 := recoveredBlock1077Value0.
    (recoveredBlock1077Value5) leftOffset: (5).
    recoveredBlock1077Value6 := recoveredBlock1077Value0.
    recoveredBlock1077Value7 := XmATTACHFORM.
    (recoveredBlock1077Value6) rightAttachment: (recoveredBlock1077Value7).
    recoveredBlock1077Value8 := (recoveredBlock1077Value0) rightOffset: (5).
    recoveredBlock1077Value8
].
            recoveredPC := 1122.
        ].
        recoveredStep = 1122 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 1124.
        ].
        recoveredStep = 1124 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 1127.
        ].
        recoveredStep = 1127 ifTrue: [
            recoveredStack2 := [:recoveredBlock1127Arg1 | 
    | recoveredBlock1127Value0 recoveredBlock1127Value1 recoveredBlock1127Value2 recoveredBlock1127Value3 recoveredBlock1127Value4 recoveredBlock1127Value5 recoveredBlock1127Value6 recoveredBlock1127Value7 recoveredBlock1127Value8 |
    recoveredBlock1127Value0 := recoveredBlock1127Arg1.
    recoveredBlock1127Value1 := recoveredBlock1127Value0.
    recoveredBlock1127Value2 := XmATTACHWIDGET.
    (recoveredBlock1127Value1) leftAttachment: (recoveredBlock1127Value2).
    recoveredBlock1127Value3 := recoveredBlock1127Value0.
    recoveredBlock1127Value4 := recoveredLocal2.
    (recoveredBlock1127Value3) leftWidget: (recoveredBlock1127Value4).
    recoveredBlock1127Value5 := recoveredBlock1127Value0.
    (recoveredBlock1127Value5) leftOffset: (5).
    recoveredBlock1127Value6 := recoveredBlock1127Value0.
    recoveredBlock1127Value7 := XmATTACHFORM.
    (recoveredBlock1127Value6) rightAttachment: (recoveredBlock1127Value7).
    recoveredBlock1127Value8 := (recoveredBlock1127Value0) rightOffset: (5).
    recoveredBlock1127Value8
].
            recoveredPC := 1172.
        ].
        recoveredStep = 1172 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 1174.
        ].
        recoveredStep = 1174 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 1177.
        ].
        recoveredStep = 1177 ifTrue: [
            recoveredStack2 := [:block2812affcArg1 | 
    | block2812affcValue0 block2812affcValue1 block2812affcValue2 block2812affcValue3 |
    block2812affcValue0 := block2812affcArg1.
    block2812affcValue1 := block2812affcValue0.
    block2812affcValue2 := XmATTACHFORM.
    (block2812affcValue1) leftAttachment: (block2812affcValue2).
    block2812affcValue3 := (block2812affcValue0) leftOffset: (5).
    block2812affcValue3
].
            recoveredPC := 1180.
        ].
        recoveredStep = 1180 ifTrue: [
            recoveredPC := 1202.
        ].
        recoveredStep = 1202 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 1204.
        ].
        recoveredStep = 1204 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 1207.
        ].
        recoveredStep = 1207 ifTrue: [
            recoveredStack2 := [:block2812b020Arg1 | 
    | block2812b020Value0 block2812b020Value1 block2812b020Value2 block2812b020Value3 |
    block2812b020Value0 := block2812b020Arg1.
    block2812b020Value1 := block2812b020Value0.
    block2812b020Value2 := XmATTACHFORM.
    (block2812b020Value1) leftAttachment: (block2812b020Value2).
    block2812b020Value3 := (block2812b020Value0) leftOffset: (5).
    block2812b020Value3
].
            recoveredPC := 1210.
        ].
        recoveredStep = 1210 ifTrue: [
            recoveredPC := 1232.
        ].
        recoveredStep = 1232 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 1234.
        ].
        recoveredStep = 1234 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 1237.
        ].
        recoveredStep = 1237 ifTrue: [
            recoveredStack2 := [:block2812b044Arg1 | 
    | block2812b044Value0 block2812b044Value1 block2812b044Value2 block2812b044Value3 |
    block2812b044Value0 := block2812b044Arg1.
    block2812b044Value1 := block2812b044Value0.
    block2812b044Value2 := XmATTACHFORM.
    (block2812b044Value1) leftAttachment: (block2812b044Value2).
    block2812b044Value3 := (block2812b044Value0) leftOffset: (5).
    block2812b044Value3
].
            recoveredPC := 1240.
        ].
        recoveredStep = 1240 ifTrue: [
            recoveredPC := 1262.
        ].
        recoveredStep = 1262 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 1264.
        ].
        recoveredStep = 1264 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 1267.
        ].
        recoveredStep = 1267 ifTrue: [
            recoveredStack2 := [:block2812b068Arg1 | 
    | block2812b068Value0 block2812b068Value1 block2812b068Value2 block2812b068Value3 block2812b068Value4 block2812b068Value5 block2812b068Value6 block2812b068Value7 block2812b068Value8 |
    block2812b068Value0 := block2812b068Arg1.
    block2812b068Value1 := block2812b068Value0.
    block2812b068Value2 := XmATTACHFORM.
    (block2812b068Value1) topAttachment: (block2812b068Value2).
    block2812b068Value3 := block2812b068Value0.
    (block2812b068Value3) topOffset: (5).
    block2812b068Value4 := block2812b068Value0.
    block2812b068Value5 := XmATTACHFORM.
    (block2812b068Value4) leftAttachment: (block2812b068Value5).
    block2812b068Value6 := block2812b068Value0.
    (block2812b068Value6) leftOffset: (5).
    block2812b068Value7 := XmATTACHFORM.
    block2812b068Value8 := (block2812b068Value0) rightAttachment: (block2812b068Value7).
    block2812b068Value8
].
            recoveredPC := 1270.
        ].
        recoveredStep = 1270 ifTrue: [
            recoveredPC := 1312.
        ].
        recoveredStep = 1312 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 1314.
        ].
        recoveredStep = 1314 ifTrue: [
            recoveredStack1 := recoveredLocal8.
            recoveredPC := 1317.
        ].
        recoveredStep = 1317 ifTrue: [
            recoveredStack2 := XmNmodifyVerifyCallback.
            recoveredPC := 1320.
        ].
        recoveredStep = 1320 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 1321.
        ].
        recoveredStep = 1321 ifTrue: [
            recoveredStack4 := 'numericFieldModify:clientData:callData:'.
            recoveredPC := 1324.
        ].
        recoveredStep = 1324 ifTrue: [
            recoveredStack5 := nil.
            recoveredPC := 1325.
        ].
        recoveredStep = 1325 ifTrue: [
            (recoveredStack1) addCallback: (recoveredStack2) receiver: (recoveredStack3) selector: (recoveredStack4) clientData: (recoveredStack5).
            recoveredPC := 1329.
        ].
        recoveredStep = 1329 ifTrue: [
            recoveredStack1 := recoveredLocal8.
            recoveredPC := 1332.
        ].
        recoveredStep = 1332 ifTrue: [
            recoveredStack2 := XmNactivateCallback.
            recoveredPC := 1336.
        ].
        recoveredStep = 1336 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 1337.
        ].
        recoveredStep = 1337 ifTrue: [
            recoveredStack4 := 'valueActivate:clientData:callData:'.
            recoveredPC := 1340.
        ].
        recoveredStep = 1340 ifTrue: [
            recoveredStack5 := nil.
            recoveredPC := 1341.
        ].
        recoveredStep = 1341 ifTrue: [
            (recoveredStack1) addCallback: (recoveredStack2) receiver: (recoveredStack3) selector: (recoveredStack4) clientData: (recoveredStack5).
            recoveredPC := 1345.
        ].
        recoveredStep = 1345 ifTrue: [
            recoveredStack1 := recoveredLocal8.
            recoveredPC := 1348.
        ].
        recoveredStep = 1348 ifTrue: [
            recoveredStack2 := XmNlosingFocusCallback.
            recoveredPC := 1352.
        ].
        recoveredStep = 1352 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 1353.
        ].
        recoveredStep = 1353 ifTrue: [
            recoveredStack4 := 'valueLosing:clientData:callData:'.
            recoveredPC := 1356.
        ].
        recoveredStep = 1356 ifTrue: [
            recoveredStack5 := nil.
            recoveredPC := 1357.
        ].
        recoveredStep = 1357 ifTrue: [
            (recoveredStack1) addCallback: (recoveredStack2) receiver: (recoveredStack3) selector: (recoveredStack4) clientData: (recoveredStack5).
            recoveredPC := 1361.
        ].
        recoveredStep = 1361 ifTrue: [
            recoveredStack1 := recoveredLocal7.
            recoveredPC := 1364.
        ].
        recoveredStep = 1364 ifTrue: [
            recoveredStack2 := XmNmodifyVerifyCallback.
            recoveredPC := 1368.
        ].
        recoveredStep = 1368 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 1369.
        ].
        recoveredStep = 1369 ifTrue: [
            recoveredStack4 := 'numericFieldModify:clientData:callData:'.
            recoveredPC := 1372.
        ].
        recoveredStep = 1372 ifTrue: [
            recoveredStack5 := nil.
            recoveredPC := 1373.
        ].
        recoveredStep = 1373 ifTrue: [
            (recoveredStack1) addCallback: (recoveredStack2) receiver: (recoveredStack3) selector: (recoveredStack4) clientData: (recoveredStack5).
            recoveredPC := 1377.
        ].
        recoveredStep = 1377 ifTrue: [
            recoveredStack1 := recoveredLocal7.
            recoveredPC := 1380.
        ].
        recoveredStep = 1380 ifTrue: [
            recoveredStack2 := XmNlosingFocusCallback.
            recoveredPC := 1384.
        ].
        recoveredStep = 1384 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 1385.
        ].
        recoveredStep = 1385 ifTrue: [
            recoveredStack4 := 'quantLosing:clientData:callData:'.
            recoveredPC := 1388.
        ].
        recoveredStep = 1388 ifTrue: [
            recoveredStack5 := nil.
            recoveredPC := 1389.
        ].
        recoveredStep = 1389 ifTrue: [
            (recoveredStack1) addCallback: (recoveredStack2) receiver: (recoveredStack3) selector: (recoveredStack4) clientData: (recoveredStack5).
            recoveredPC := 1393.
        ].
        recoveredStep = 1393 ifTrue: [
            recoveredStack1 := recoveredLocal7.
            recoveredPC := 1396.
        ].
        recoveredStep = 1396 ifTrue: [
            recoveredStack2 := XmNactivateCallback.
            recoveredPC := 1400.
        ].
        recoveredStep = 1400 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 1401.
        ].
        recoveredStep = 1401 ifTrue: [
            recoveredStack4 := 'quantActivate:clientData:callData:'.
            recoveredPC := 1404.
        ].
        recoveredStep = 1404 ifTrue: [
            recoveredStack5 := nil.
            recoveredPC := 1405.
        ].
        recoveredStep = 1405 ifTrue: [
            (recoveredStack1) addCallback: (recoveredStack2) receiver: (recoveredStack3) selector: (recoveredStack4) clientData: (recoveredStack5).
            recoveredPC := 1409.
        ].
        recoveredStep = 1409 ifTrue: [
            recoveredStack1 := recoveredLocal6.
            recoveredPC := 1412.
        ].
        recoveredStep = 1412 ifTrue: [
            recoveredStack2 := XmNmodifyVerifyCallback.
            recoveredPC := 1416.
        ].
        recoveredStep = 1416 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 1417.
        ].
        recoveredStep = 1417 ifTrue: [
            recoveredStack4 := 'numericFieldModify:clientData:callData:'.
            recoveredPC := 1420.
        ].
        recoveredStep = 1420 ifTrue: [
            recoveredStack5 := nil.
            recoveredPC := 1421.
        ].
        recoveredStep = 1421 ifTrue: [
            (recoveredStack1) addCallback: (recoveredStack2) receiver: (recoveredStack3) selector: (recoveredStack4) clientData: (recoveredStack5).
            recoveredPC := 1425.
        ].
        recoveredStep = 1425 ifTrue: [
            recoveredStack1 := recoveredLocal6.
            recoveredPC := 1428.
        ].
        recoveredStep = 1428 ifTrue: [
            recoveredStack2 := XmNactivateCallback.
            recoveredPC := 1432.
        ].
        recoveredStep = 1432 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 1433.
        ].
        recoveredStep = 1433 ifTrue: [
            recoveredStack4 := 'maxActivate:clientData:callData:'.
            recoveredPC := 1436.
        ].
        recoveredStep = 1436 ifTrue: [
            recoveredStack5 := nil.
            recoveredPC := 1437.
        ].
        recoveredStep = 1437 ifTrue: [
            (recoveredStack1) addCallback: (recoveredStack2) receiver: (recoveredStack3) selector: (recoveredStack4) clientData: (recoveredStack5).
            recoveredPC := 1441.
        ].
        recoveredStep = 1441 ifTrue: [
            recoveredStack1 := recoveredLocal6.
            recoveredPC := 1444.
        ].
        recoveredStep = 1444 ifTrue: [
            recoveredStack2 := XmNlosingFocusCallback.
            recoveredPC := 1448.
        ].
        recoveredStep = 1448 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 1449.
        ].
        recoveredStep = 1449 ifTrue: [
            recoveredStack4 := 'maxLosing:clientData:callData:'.
            recoveredPC := 1452.
        ].
        recoveredStep = 1452 ifTrue: [
            recoveredStack5 := nil.
            recoveredPC := 1453.
        ].
        recoveredStep = 1453 ifTrue: [
            (recoveredStack1) addCallback: (recoveredStack2) receiver: (recoveredStack3) selector: (recoveredStack4) clientData: (recoveredStack5).
            recoveredPC := 1457.
        ].
        recoveredStep = 1457 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 1460.
        ].
        recoveredStep = 1460 ifTrue: [
            recoveredStack2 := XmNmodifyVerifyCallback.
            recoveredPC := 1464.
        ].
        recoveredStep = 1464 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 1465.
        ].
        recoveredStep = 1465 ifTrue: [
            recoveredStack4 := 'numericFieldModify:clientData:callData:'.
            recoveredPC := 1468.
        ].
        recoveredStep = 1468 ifTrue: [
            recoveredStack5 := nil.
            recoveredPC := 1469.
        ].
        recoveredStep = 1469 ifTrue: [
            (recoveredStack1) addCallback: (recoveredStack2) receiver: (recoveredStack3) selector: (recoveredStack4) clientData: (recoveredStack5).
            recoveredPC := 1473.
        ].
        recoveredStep = 1473 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 1476.
        ].
        recoveredStep = 1476 ifTrue: [
            recoveredStack2 := XmNlosingFocusCallback.
            recoveredPC := 1480.
        ].
        recoveredStep = 1480 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 1481.
        ].
        recoveredStep = 1481 ifTrue: [
            recoveredStack4 := 'minLosing:clientData:callData:'.
            recoveredPC := 1484.
        ].
        recoveredStep = 1484 ifTrue: [
            recoveredStack5 := nil.
            recoveredPC := 1485.
        ].
        recoveredStep = 1485 ifTrue: [
            (recoveredStack1) addCallback: (recoveredStack2) receiver: (recoveredStack3) selector: (recoveredStack4) clientData: (recoveredStack5).
            recoveredPC := 1489.
        ].
        recoveredStep = 1489 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 1492.
        ].
        recoveredStep = 1492 ifTrue: [
            recoveredStack2 := XmNactivateCallback.
            recoveredPC := 1496.
        ].
        recoveredStep = 1496 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 1497.
        ].
        recoveredStep = 1497 ifTrue: [
            recoveredStack4 := 'minActivate:clientData:callData:'.
            recoveredPC := 1500.
        ].
        recoveredStep = 1500 ifTrue: [
            recoveredStack5 := nil.
            recoveredPC := 1501.
        ].
        recoveredStep = 1501 ifTrue: [
            (recoveredStack1) addCallback: (recoveredStack2) receiver: (recoveredStack3) selector: (recoveredStack4) clientData: (recoveredStack5).
            recoveredPC := 1505.
        ].
        recoveredStep = 1505 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 1508.
        ].
        recoveredStep = 1508 ifTrue: [
            (recoveredStack1) addTabGroup.
            recoveredPC := 1513.
        ].
        recoveredStep = 1513 ifTrue: [
            recoveredStack1 := recoveredLocal6.
            recoveredPC := 1516.
        ].
        recoveredStep = 1516 ifTrue: [
            (recoveredStack1) addTabGroup.
            recoveredPC := 1521.
        ].
        recoveredStep = 1521 ifTrue: [
            recoveredStack1 := recoveredLocal7.
            recoveredPC := 1524.
        ].
        recoveredStep = 1524 ifTrue: [
            (recoveredStack1) addTabGroup.
            recoveredPC := 1529.
        ].
        recoveredStep = 1529 ifTrue: [
            recoveredStack1 := Array.
            recoveredPC := 1532.
        ].
        recoveredStep = 1532 ifTrue: [
            recoveredStack2 := recoveredLocal15.
            recoveredPC := 1535.
        ].
        recoveredStep = 1535 ifTrue: [
            recoveredStack3 := recoveredLocal11.
            recoveredPC := 1538.
        ].
        recoveredStep = 1538 ifTrue: [
            recoveredStack1 := (recoveredStack1) with: (recoveredStack2) with: (recoveredStack3).
            recoveredPC := 1543.
        ].
        recoveredStep = 1543 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

