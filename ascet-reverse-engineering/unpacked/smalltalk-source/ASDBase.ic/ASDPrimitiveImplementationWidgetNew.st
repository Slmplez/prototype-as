"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2004344c; bytecode file offset 0x9451f8"
!ASDPrimitiveImplementationWidgetNew methodsFor: 'recovered'!
widgetASDScalarImplWidget
    | recoveredValue0 |
    recoveredValue0 := (self) widgetAt: ('widgetASDScalarImplWidget').
    ^recoveredValue0
! !

"ASDBase.ic method 0x2004427c; bytecode file offset 0x9451f8"
!ASDPrimitiveImplementationWidgetNew methodsFor: 'recovered'!
widgetMemorySegment
    | recoveredValue0 |
    recoveredValue0 := (self) widgetAt: ('widgetMemorySegment').
    ^recoveredValue0
! !

"ASDBase.ic method 0x200447cc; bytecode file offset 0x9451f8"
!ASDPrimitiveImplementationWidgetNew methodsFor: 'recovered'!
widgetImplType
    | recoveredValue0 |
    recoveredValue0 := (self) widgetAt: ('widgetImplType').
    ^recoveredValue0
! !

"ASDBase.ic method 0x2004595c; bytecode file offset 0x9451f8"
!ASDPrimitiveImplementationWidgetNew methodsFor: 'recovered'!
widgetImplTypeLabel
    | recoveredValue0 |
    recoveredValue0 := (self) widgetAt: ('widgetImplTypeLabel').
    ^recoveredValue0
! !

"ASDBase.ic method 0x2004599c; bytecode file offset 0x9451f8"
!ASDPrimitiveImplementationWidgetNew methodsFor: 'recovered'!
widgetASDScalarImplLimiterWidget
    | recoveredValue0 |
    recoveredValue0 := (self) widgetAt: ('widgetASDScalarImplLimiterWidget').
    ^recoveredValue0
! !

"ASDBase.ic method 0x20046c4c; bytecode file offset 0x9451f8"
!ASDPrimitiveImplementationWidgetNew methodsFor: 'recovered'!
widgetMemoryLocationInst
    | recoveredValue0 |
    recoveredValue0 := (self) widgetAt: ('widgetMemoryLocationInst').
    ^recoveredValue0
! !

"ASDBase.ic method 0x20046efc; bytecode file offset 0x9451f8"
!ASDPrimitiveImplementationWidgetNew methodsFor: 'recovered'!
widgetMemoryLocationRef
    | recoveredValue0 |
    recoveredValue0 := (self) widgetAt: ('widgetMemoryLocationRef').
    ^recoveredValue0
! !

"ASDBase.ic method 0x200475ec; bytecode file offset 0x9451f8"
!ASDPrimitiveImplementationWidgetNew methodsFor: 'recovered'!
widgetASDImplementationConsistencyWidget
    | recoveredValue0 |
    recoveredValue0 := (self) widgetAt: ('widgetASDImplementationConsistencyWidget').
    ^recoveredValue0
! !

"ASDBase.ic method 0x20047fcc; bytecode file offset 0x9451f8"
!ASDPrimitiveImplementationWidgetNew methodsFor: 'recovered'!
widgetMemoryLocationSearchResult
    | recoveredValue0 |
    recoveredValue0 := (self) widgetAt: ('widgetMemoryLocationSearchResult').
    ^recoveredValue0
! !

"ASDBase.ic method 0x2005a53c; bytecode file offset 0x957a6c"
!ASDPrimitiveImplementationWidgetNew methodsFor: 'recovered'!
implIntervalChangedCallback: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    (self) updateWidgetSensitivity.
    ^self
! !

"ASDBase.ic method 0x2005a830; bytecode file offset 0x957a6c"
!ASDPrimitiveImplementationWidgetNew methodsFor: 'recovered'!
modelIntervalChangedCallback: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    (self) updateWidgetSensitivity.
    ^self
! !

"ASDBase.ic method 0x2007798c; bytecode file offset 0x9757c8"
!ASDPrimitiveImplementationWidgetNew methodsFor: 'recovered'!
menuImplCopyEnable
    ^true
! !

"ASDBase.ic method 0x200875fc; bytecode file offset 0x983f38"
!ASDPrimitiveImplementationWidgetNew methodsFor: 'recovered'!
formulaChangedCallback: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    | recoveredValue0 |
    recoveredValue0 := (self) widgetASDScalarImplLimiterWidget.
    (recoveredValue0) initWidgets.
    ^self
! !

"ASDBase.ic method 0x2008d0d4; bytecode file offset 0x989db0"
!ASDPrimitiveImplementationWidgetNew methodsFor: 'recovered'!
initMemorySegment
    | recoveredValue0 |
    recoveredValue0 := (self) widgetMemorySegment.
    (self) initMemorySegmentWidgetBasic: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x200d6464; bytecode file offset 0x9d3134"
!ASDPrimitiveImplementationWidgetNew methodsFor: 'recovered'!
initializeAfterCreate
    super initializeAfterCreate.
    (self) updateWidgets.
    ^self
! !

"ASDBase.ic method 0x200dd700; bytecode file offset 0x9da054"
!ASDPrimitiveImplementationWidgetNew methodsFor: 'recovered'!
widgetMemoryLocationInstChange: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    | recoveredValue0 recoveredValue1 |
    (self) changeLocationInst.
    recoveredValue0 := (self) widgetCtrl.
    recoveredValue1 := (recoveredValue0) userInterface.
    (recoveredValue1) update.
    ^self
! !

"ASDBase.ic method 0x200dd730; bytecode file offset 0x9da054"
!ASDPrimitiveImplementationWidgetNew methodsFor: 'recovered'!
widgetImplTypeSingle: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    | recoveredValue0 recoveredValue1 |
    (self) changeImplementationType.
    recoveredValue0 := (self) widgetCtrl.
    recoveredValue1 := (recoveredValue0) userInterface.
    (recoveredValue1) update.
    ^self
! !

"ASDBase.ic method 0x200dd748; bytecode file offset 0x9da054"
!ASDPrimitiveImplementationWidgetNew methodsFor: 'recovered'!
widgetMemorySegmentSingle: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    | recoveredValue0 recoveredValue1 |
    (self) changeMemorySegment.
    recoveredValue0 := (self) widgetCtrl.
    recoveredValue1 := (recoveredValue0) userInterface.
    (recoveredValue1) update.
    ^self
! !

"ASDBase.ic method 0x200dd760; bytecode file offset 0x9da054"
!ASDPrimitiveImplementationWidgetNew methodsFor: 'recovered'!
widgetMemorySegmentLosing: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    | recoveredValue0 recoveredValue1 |
    (self) changeMemorySegment.
    recoveredValue0 := (self) widgetCtrl.
    recoveredValue1 := (recoveredValue0) userInterface.
    (recoveredValue1) update.
    ^self
! !

"ASDBase.ic method 0x200dd778; bytecode file offset 0x9da054"
!ASDPrimitiveImplementationWidgetNew methodsFor: 'recovered'!
widgetMemoryLocationSearchResultChange: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    | recoveredValue0 recoveredValue1 |
    (self) changeLocationSearchResult.
    recoveredValue0 := (self) widgetCtrl.
    recoveredValue1 := (recoveredValue0) userInterface.
    (recoveredValue1) update.
    ^self
! !

"ASDBase.ic method 0x200dd790; bytecode file offset 0x9da054"
!ASDPrimitiveImplementationWidgetNew methodsFor: 'recovered'!
widgetMemoryLocationRefChange: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    | recoveredValue0 recoveredValue1 |
    (self) changeLocationRef.
    recoveredValue0 := (self) widgetCtrl.
    recoveredValue1 := (recoveredValue0) userInterface.
    (recoveredValue1) update.
    ^self
! !

"ASDBase.ic method 0x200f2c80; bytecode file offset 0x9ef544"
!ASDPrimitiveImplementationWidgetNew methodsFor: 'recovered'!
initContextMenus
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) createElementMenu.
    (self) menu: (recoveredValue0) owner: (self).
    recoveredValue1 := (self) widgetASDScalarImplWidget.
    (recoveredValue1) initContextMenus.
    ^self
! !

"ASDBase.ic method 0x2011ef9c; bytecode file offset 0xa1b860"
!ASDPrimitiveImplementationWidgetNew methodsFor: 'recovered'!
update: recoveredArg1
    (self) initLocationInst.
    (self) initLocationRef.
    (self) initLocationSearchResult.
    (self) initMemorySegment.
    ^self
! !

"ASDBase.ic method 0x20151274; bytecode file offset 0xa4db8c"
!ASDPrimitiveImplementationWidgetNew methodsFor: 'recovered'!
changeLocationInst
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := (self) widgetCtrl.
    recoveredValue1 := (recoveredValue0) majorDataElement.
    recoveredValue2 := (self) widgetMemoryLocationInst.
    recoveredValue3 := (recoveredValue2) getString.
    recoveredValue4 := (recoveredValue3) trimBlanks.
    (recoveredValue1) memoryClass: (recoveredValue4).
    recoveredValue5 := (self) widgetCtrl.
    recoveredValue6 := (recoveredValue5) majorDataElement.
    (recoveredValue6) changed.
    ^self
! !

"ASDBase.ic method 0x20151298; bytecode file offset 0xa4db8c"
!ASDPrimitiveImplementationWidgetNew methodsFor: 'recovered'!
changeLocationRef
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := (self) widgetCtrl.
    recoveredValue1 := (recoveredValue0) majorDataElement.
    recoveredValue2 := (self) widgetMemoryLocationRef.
    recoveredValue3 := (recoveredValue2) getString.
    recoveredValue4 := (recoveredValue3) trimBlanks.
    (recoveredValue1) memoryClassReference: (recoveredValue4).
    recoveredValue5 := (self) widgetCtrl.
    recoveredValue6 := (recoveredValue5) majorDataElement.
    (recoveredValue6) changed.
    ^self
! !

"ASDBase.ic method 0x201512bc; bytecode file offset 0xa4db8c"
!ASDPrimitiveImplementationWidgetNew methodsFor: 'recovered'!
changeLocationSearchResult
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := (self) widgetCtrl.
    recoveredValue1 := (recoveredValue0) majorDataElement.
    recoveredValue2 := (self) widgetMemoryLocationSearchResult.
    recoveredValue3 := (recoveredValue2) getString.
    recoveredValue4 := (recoveredValue3) trimBlanks.
    (recoveredValue1) memoryLocationSearchResult: (recoveredValue4).
    recoveredValue5 := (self) widgetCtrl.
    recoveredValue6 := (recoveredValue5) majorDataElement.
    (recoveredValue6) changed.
    ^self
! !

"ASDBase.ic method 0x2018d208; bytecode file offset 0xa89adc"
!ASDPrimitiveImplementationWidgetNew methodsFor: 'recovered'!
copyImplementation
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := Smalltalk.
    recoveredValue1 := Array.
    recoveredValue2 := (self) widgetCtrl.
    recoveredValue3 := (recoveredValue2) dataElement.
    recoveredValue4 := (recoveredValue3) deepCopy.
    recoveredValue5 := (recoveredValue1) with: (recoveredValue4) with: (nil) with: (nil).
    (recoveredValue0) at: ('SGGlobalImplementationBuffer') put: (recoveredValue5).
    ^self
! !

"ASDBase.ic method 0x20212134; bytecode file offset 0xb0e9f4"
!ASDPrimitiveImplementationWidgetNew methodsFor: 'recovered'!
menuImplPasteEnable
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := Smalltalk.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := 'SGGlobalImplementationBuffer'.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack3 := [
    ^false
].
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2) ifAbsent: (recoveredStack3).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 30] ifFalse: [recoveredPC := 28].
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x20224c3c; bytecode file offset 0xb21508"
!ASDPrimitiveImplementationWidgetNew methodsFor: 'recovered'!
initWidgetCtrl
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 |
    recoveredValue0 := (self) widgetASDScalarImplWidget.
    recoveredValue1 := recoveredValue0.
    recoveredValue2 := (self) widgetCtrl.
    (recoveredValue1) widgetCtrl: (recoveredValue2).
    (recoveredValue0) updateWidgets.
    recoveredValue3 := (self) widgetASDImplementationConsistencyWidget.
    recoveredValue4 := recoveredValue3.
    recoveredValue5 := (self) widgetCtrl.
    (recoveredValue4) widgetCtrl: (recoveredValue5).
    (recoveredValue3) updateWidgets.
    recoveredValue6 := (self) widgetASDScalarImplLimiterWidget.
    recoveredValue7 := recoveredValue6.
    recoveredValue8 := (self) widgetCtrl.
    (recoveredValue7) widgetCtrl: (recoveredValue8).
    (recoveredValue6) updateWidgets.
    ^self
! !

"ASDBase.ic method 0x20225a10; bytecode file offset 0xb222f0"
!ASDPrimitiveImplementationWidgetNew methodsFor: 'recovered'!
changeMemorySegment
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetMemorySegment.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) getObject.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack0 := (recoveredStack0) label.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := ASDDisplayStrings.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := (recoveredStack1) undefinedDisplayString.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) includesSubstring: (recoveredStack1).
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
            recoveredStack0 := (recoveredStack0) widgetCtrl.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := (recoveredStack0) dataElement.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := (recoveredStack0) extraImplInfo.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := (recoveredStack1) widgetMemorySegment.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := (recoveredStack1) getObject.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := (recoveredStack1) id.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            (recoveredStack0) memorySegmentID: (recoveredStack1).
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2022a5b8; bytecode file offset 0xb26e88"
!ASDPrimitiveImplementationWidgetNew methodsFor: 'recovered'!
widgetImplTypeValue: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
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
            recoveredStack1 := (recoveredStack1) set.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) widgetImplType.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := true.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack1) sensitive: (recoveredStack2).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredPC := 23.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := (recoveredStack1) widgetImplType.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack2 := false.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            (recoveredStack1) sensitive: (recoveredStack2).
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            (recoveredStack0) changeImplementationType.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetCtrl.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := (recoveredStack0) userInterface.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            (recoveredStack0) update.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2023a150; bytecode file offset 0xb36a20"
!ASDPrimitiveImplementationWidgetNew methodsFor: 'recovered'!
updateMemoryLocationWidgetSensitivityWidget: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := 'Kli'.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := 'Call_69262'.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) == (recoveredStack2).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetCtrl.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) modelElement.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := true.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) widgetCtrl.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) isNoImplActive.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 27] ifFalse: [recoveredPC := 22].
        ].
        recoveredStep = 22 ifTrue: [
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := (recoveredStack0) hasMemoryLocation.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := (recoveredStack0) not.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := (recoveredStack1) not.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            (recoveredStack0) sensitive: (recoveredStack1).
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x202532b4; bytecode file offset 0xb4fbfc"
!ASDPrimitiveImplementationWidgetNew methodsFor: 'recovered'!
initLocationSearchResult
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := (recoveredStack1) widgetMemoryLocationSearchResult.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := [:block280defa8Arg1 | 
    | block280defa8Value0 block280defa8Value1 |
    block280defa8Value0 := block280defa8Arg1.
    block280defa8Value1 := (block280defa8Value0) memoryLocationSearchResult.
    block280defa8Value1
].
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack3 := (recoveredStack3) widgetCtrl.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack3 := (recoveredStack3) memoryClassesForSearchResult.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            (recoveredStack0) initLocationWidgetBasic: (recoveredStack1) getMemClassBlock: (recoveredStack2) memClassList: (recoveredStack3).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetCtrl.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := (recoveredStack0) majorDataElement.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := (recoveredStack1) widgetMemoryLocationSearchResult.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := (recoveredStack1) getString.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := (recoveredStack1) fromUndefString.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := (recoveredStack1) trimBlanks.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            (recoveredStack0) memoryLocationSearchResult: (recoveredStack1).
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x202532e8; bytecode file offset 0xb4fbfc"
!ASDPrimitiveImplementationWidgetNew methodsFor: 'recovered'!
initLocationRef
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := (recoveredStack1) widgetMemoryLocationRef.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := [:block280defccArg1 | 
    | block280defccValue0 block280defccValue1 |
    block280defccValue0 := block280defccArg1.
    block280defccValue1 := (block280defccValue0) memoryClassReference.
    block280defccValue1
].
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack3 := (recoveredStack3) widgetCtrl.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack3 := (recoveredStack3) memoryClassesForReference.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            (recoveredStack0) initLocationWidgetBasic: (recoveredStack1) getMemClassBlock: (recoveredStack2) memClassList: (recoveredStack3).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetCtrl.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := (recoveredStack0) majorDataElement.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := (recoveredStack1) widgetMemoryLocationRef.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := (recoveredStack1) getString.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := (recoveredStack1) fromUndefString.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := (recoveredStack1) trimBlanks.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            (recoveredStack0) memoryClassReference: (recoveredStack1).
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2025331c; bytecode file offset 0xb4fbfc"
!ASDPrimitiveImplementationWidgetNew methodsFor: 'recovered'!
initLocationInst
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := (recoveredStack1) widgetMemoryLocationInst.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := [:block280deff0Arg1 | 
    | block280deff0Value0 block280deff0Value1 |
    block280deff0Value0 := block280deff0Arg1.
    block280deff0Value1 := (block280deff0Value0) memoryClass.
    block280deff0Value1
].
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack3 := (recoveredStack3) widgetCtrl.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack3 := (recoveredStack3) memoryClassesForInstance.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            (recoveredStack0) initLocationWidgetBasic: (recoveredStack1) getMemClassBlock: (recoveredStack2) memClassList: (recoveredStack3).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetCtrl.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := (recoveredStack0) majorDataElement.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := (recoveredStack1) widgetMemoryLocationInst.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := (recoveredStack1) getString.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := (recoveredStack1) fromUndefString.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := (recoveredStack1) trimBlanks.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            (recoveredStack0) memoryClass: (recoveredStack1).
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20296440; bytecode file offset 0xb92d14"
!ASDPrimitiveImplementationWidgetNew methodsFor: 'recovered'!
initWidgets
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 |
    recoveredValue0 := (self) widgetASDScalarImplWidget.
    recoveredValue1 := recoveredValue0.
    recoveredValue2 := ASDImplIntervalChangedCallback.
    (recoveredValue1) addCallback: (recoveredValue2) receiver: (self) selector: ('implIntervalChangedCallback:clientData:callData:') clientData: (nil).
    recoveredValue3 := (self) widgetASDScalarImplWidget.
    recoveredValue4 := recoveredValue3.
    recoveredValue5 := ASDModelIntervalChangedCallback.
    (recoveredValue4) addCallback: (recoveredValue5) receiver: (self) selector: ('modelIntervalChangedCallback:clientData:callData:') clientData: (nil).
    recoveredValue6 := (self) widgetASDScalarImplWidget.
    recoveredValue7 := recoveredValue6.
    recoveredValue8 := ASDFormulaChangedCallback.
    (recoveredValue7) addCallback: (recoveredValue8) receiver: (self) selector: ('formulaChangedCallback:clientData:callData:') clientData: (nil).
    ^self
! !

"ASDBase.ic method 0x202c7ec8; bytecode file offset 0xbc47ac"
!ASDPrimitiveImplementationWidgetNew methodsFor: 'recovered'!
installActionKeys
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 |
    recoveredValue0 := Dictionary.
    recoveredValue1 := (recoveredValue0) new.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := recoveredLocal1.
    recoveredValue3 := recoveredValue2.
    recoveredValue4 := DirectedMessage.
    recoveredValue5 := (recoveredValue4) selector: ('pasteImplementation') arguments: (#()) receiver: (self).
    (recoveredValue3) at: ('Alt-p') put: (recoveredValue5).
    recoveredValue6 := recoveredValue2.
    recoveredValue7 := DirectedMessage.
    recoveredValue8 := (recoveredValue7) selector: ('copyImplementation') arguments: (#()) receiver: (self).
    (recoveredValue6) at: ('Alt-i') put: (recoveredValue8).
    recoveredValue9 := (self) getUserInterface.
    recoveredValue10 := recoveredLocal1.
    (recoveredValue9) setActionDict: (recoveredValue10) forWidget: (self).
    ^self
! !

"ASDBase.ic method 0x2033a748; bytecode file offset 0xc37040"
!ASDPrimitiveImplementationWidgetNew methodsFor: 'recovered'!
updateWidgetSensitivity
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetASDScalarImplLimiterWidget.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0) updateWidgetSensitivity.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetImplTypeLabel.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack2 := (recoveredStack2) widgetCtrl.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := (recoveredStack2) dataElement.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := (recoveredStack2) supportsImplType.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 28].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := (recoveredStack1) widgetImplType.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := (recoveredStack1) items.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := (recoveredStack1) notEmpty.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            (recoveredStack0) sensitive: (recoveredStack1).
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetMemoryLocationRef.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := (recoveredStack1) widgetCtrl.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := (recoveredStack1) isLocationReferenceAvailable.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            (recoveredStack0) sensitive: (recoveredStack1).
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetMemoryLocationInst.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack1 := (recoveredStack1) widgetCtrl.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack1 := (recoveredStack1) isLocationInstanceAvailable.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            (recoveredStack0) sensitive: (recoveredStack1).
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetMemoryLocationSearchResult.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack1 := (recoveredStack1) widgetCtrl.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack1 := (recoveredStack1) isLocationSearchResultAvailable.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            (recoveredStack0) sensitive: (recoveredStack1).
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            (recoveredStack0) updateMemorySegmentWidgetSensitivity.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2034a10c; bytecode file offset 0xc469f4"
!ASDPrimitiveImplementationWidgetNew methodsFor: 'recovered'!
updateMemorySegmentWidgetSensitivity
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := 'hw'.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := 'call_80263'.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) == (recoveredStack2).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetMemorySegment.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := (recoveredStack2) widgetCtrl.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := (recoveredStack2) modelElement.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := (recoveredStack2) isRecordElement.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack3 := (recoveredStack3) widgetCtrl.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack3 := (recoveredStack3) isNoImplActive.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack2 := (recoveredStack2) | (recoveredStack3).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack3 := (recoveredStack3) widgetCtrl.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack3 := (recoveredStack3) modelElement.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack3 := (recoveredStack3) isImplementationCast.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack2 := (recoveredStack2) | (recoveredStack3).
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack3 := (recoveredStack3) widgetCtrl.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack3 := (recoveredStack3) modelElement.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack3 := (recoveredStack3) isVirtual.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack2 := (recoveredStack2) | (recoveredStack3).
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack3 := (recoveredStack3) widgetCtrl.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack3 := (recoveredStack3) modelElement.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack3 := (recoveredStack3) isMethodParameter.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack2 := (recoveredStack2) | (recoveredStack3).
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 59] ifFalse: [recoveredPC := 52].
        ].
        recoveredStep = 52 ifTrue: [
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack1 := (recoveredStack1) widgetCtrl.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack1 := (recoveredStack1) modelElement.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack1 := (recoveredStack1) isSystemConstant.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack1 := (recoveredStack1) not.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            (recoveredStack0) sensitive: (recoveredStack1).
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2035ab44; bytecode file offset 0xc5743c"
!ASDPrimitiveImplementationWidgetNew methodsFor: 'recovered'!
initMemorySegmentWidgetBasic: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetCtrl.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) majorDataElement.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack0 := (recoveredStack0) extraImplInfo.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack0 := (recoveredStack0) attributes.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetCtrl.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := (recoveredStack0) majorDataElement.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) extraImplInfo.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            (recoveredStack0) attributes: (recoveredStack1).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetMemorySegment.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := (recoveredStack1) widgetCtrl.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := (recoveredStack1) currentPlatform.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := (recoveredStack1) memorySegments.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack2 := (recoveredStack2) widgetCtrl.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack2 := (recoveredStack2) dataElement.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack2 := (recoveredStack2) memorySegmentID.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack3 := [
    | recoveredBlock35Value0 recoveredBlock35Value1 recoveredBlock35Value2 recoveredBlock35Value3 recoveredBlock35Value4 recoveredBlock35Value5 recoveredBlock35Value6 recoveredBlock35Value7 |
    recoveredBlock35Value0 := (self) widgetCtrl.
    recoveredBlock35Value1 := (recoveredBlock35Value0) dataElement.
    recoveredBlock35Value2 := (recoveredBlock35Value1) memorySegmentID.
    recoveredBlock35Value3 := (recoveredBlock35Value2) asString.
    recoveredBlock35Value4 := (recoveredBlock35Value3) , (' ').
    recoveredBlock35Value5 := ASDDisplayStrings.
    recoveredBlock35Value6 := (recoveredBlock35Value5) undefinedDisplayString.
    recoveredBlock35Value7 := (recoveredBlock35Value4) , (recoveredBlock35Value6).
    recoveredBlock35Value7
].
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2) ifAbsent: (recoveredStack3).
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            (recoveredStack0) setObject: (recoveredStack1).
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2037ddfc; bytecode file offset 0xc7a6f4"
!ASDPrimitiveImplementationWidgetNew methodsFor: 'recovered'!
createElementMenu
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 |
    recoveredValue0 := EtasMenu.
    recoveredValue1 := (recoveredValue0) defaultMenuClass.
    recoveredValue2 := (recoveredValue1) new.
    recoveredValue3 := recoveredValue2.
    (recoveredValue3) title: ('~Element').
    recoveredValue4 := recoveredValue2.
    recoveredValue5 := [
    | recoveredBlock18Value0 |
    recoveredBlock18Value0 := (self) menuImplCopyEnable.
    recoveredBlock18Value0
].
    (recoveredValue4) add: ('copyImplementation') label: ('~Copy Implementation') enable: (recoveredValue5) for: (self) accelerator: (nil) acceleratorText: ('Alt+i').
    recoveredValue6 := recoveredValue2.
    recoveredValue7 := [
    | recoveredBlock38Stack0 recoveredBlock38Stack1 recoveredBlock38Stack2 recoveredBlock38Stack3 recoveredBlock38PC recoveredBlock38Step recoveredBlock38Done recoveredBlock38Result |
    recoveredBlock38Stack0 := self.
    recoveredBlock38PC := 44.
    recoveredBlock38Done := false.
    [recoveredBlock38Done not] whileTrue: [
        recoveredBlock38Step := recoveredBlock38PC.
        recoveredBlock38Step = 44 ifTrue: [
            recoveredBlock38Stack1 := false.
            recoveredBlock38PC := 45.
        ].
        recoveredBlock38Step = 45 ifTrue: [
            recoveredBlock38Stack2 := self.
            recoveredBlock38PC := 46.
        ].
        recoveredBlock38Step = 46 ifTrue: [
            recoveredBlock38Stack2 := (recoveredBlock38Stack2) widgetCtrl.
            recoveredBlock38PC := 48.
        ].
        recoveredBlock38Step = 48 ifTrue: [
            recoveredBlock38Stack2 := (recoveredBlock38Stack2) userInterface.
            recoveredBlock38PC := 50.
        ].
        recoveredBlock38Step = 50 ifTrue: [
            recoveredBlock38Stack2 := (recoveredBlock38Stack2) canWrite.
            recoveredBlock38PC := 52.
        ].
        recoveredBlock38Step = 52 ifTrue: [
            (recoveredBlock38Stack2) ifTrue: [recoveredBlock38PC := 56] ifFalse: [recoveredBlock38PC := 60].
        ].
        recoveredBlock38Step = 56 ifTrue: [
            recoveredBlock38PC := 57.
        ].
        recoveredBlock38Step = 57 ifTrue: [
            recoveredBlock38Stack1 := self.
            recoveredBlock38PC := 58.
        ].
        recoveredBlock38Step = 58 ifTrue: [
            recoveredBlock38Stack1 := (recoveredBlock38Stack1) menuImplPasteEnable.
            recoveredBlock38PC := 60.
        ].
        recoveredBlock38Step = 60 ifTrue: [
            recoveredBlock38Result := recoveredBlock38Stack1.
            recoveredBlock38Done := true.
        ].
    ].
    recoveredBlock38Result
].
    (recoveredValue6) add: ('pasteImplementation') label: ('~Paste Implementation') enable: (recoveredValue7) for: (self) accelerator: (nil) acceleratorText: ('Alt+p').
    recoveredLocal1 := recoveredValue2.
    recoveredValue8 := recoveredLocal1.
    ^recoveredValue8
! !

"ASDBase.ic method 0x203ec27c; bytecode file offset 0xce8b80"
!ASDPrimitiveImplementationWidgetNew methodsFor: 'recovered'!
updateWidgets
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            super updateWidgets.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetCtrl.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetCtrl.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := (recoveredStack0) currentPlatform.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 24] ifFalse: [recoveredPC := 22].
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetCtrl.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := (recoveredStack0) currentPlatform.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := (recoveredStack0) memorySegments.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := (recoveredStack1) widgetCtrl.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := (recoveredStack1) dataElement.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := (recoveredStack1) memorySegmentID.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack2 := [
    | recoveredBlock35Value0 recoveredBlock35Value1 recoveredBlock35Value2 recoveredBlock35Value3 recoveredBlock35Value4 recoveredBlock35Value5 recoveredBlock35Value6 recoveredBlock35Value7 |
    recoveredBlock35Value0 := (self) widgetCtrl.
    recoveredBlock35Value1 := (recoveredBlock35Value0) dataElement.
    recoveredBlock35Value2 := (recoveredBlock35Value1) memorySegmentID.
    recoveredBlock35Value3 := (recoveredBlock35Value2) asString.
    recoveredBlock35Value4 := (recoveredBlock35Value3) , (' ').
    recoveredBlock35Value5 := ASDDisplayStrings.
    recoveredBlock35Value6 := (recoveredBlock35Value5) undefinedDisplayString.
    recoveredBlock35Value7 := (recoveredBlock35Value4) , (recoveredBlock35Value6).
    recoveredBlock35Value7
].
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1) ifAbsent: (recoveredStack2).
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetCtrl.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack0 := (recoveredStack0) currentPlatform.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack1 := (recoveredStack1) label.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack0 := (recoveredStack0) memorySegmentsGUIIncludingUndefined: (recoveredStack1).
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetMemorySegment.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack2 := (recoveredStack2) size.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            (recoveredStack1) visibleItemCount: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            (recoveredStack1) items: (recoveredStack2).
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            (recoveredStack0) setObject: (recoveredStack1).
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20427504; bytecode file offset 0xd23e00"
!ASDPrimitiveImplementationWidgetNew methodsFor: 'recovered'!
initLocationWidgetBasic: recoveredArg1 getMemClassBlock: recoveredArg2 memClassList: recoveredArg3
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := 'Kli'.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := 'Call_69262'.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) == (recoveredStack2).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := (recoveredStack2) widgetCtrl.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := (recoveredStack2) majorDataElement.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) value: (recoveredStack2).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := (recoveredStack0) updateMemoryLocationWidgetSensitivityWidget: (recoveredStack1).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 34] ifFalse: [recoveredPC := 24].
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 34] ifFalse: [recoveredPC := 28].
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack0 := (recoveredStack0) isEmpty.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 34] ifFalse: [recoveredPC := 46].
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            (recoveredStack0) items: (recoveredStack1).
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := SGReservedNames.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack0 := (recoveredStack0) defaultLocationName.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredPC := 76.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack0 := recoveredArg3.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack1 := (recoveredStack1) getUniqueCaseSensitiveString.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack0 := (recoveredStack0) includes: (recoveredStack1).
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 72] ifFalse: [recoveredPC := 56].
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack0 := (recoveredStack0) asUndefString.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack2 := (recoveredStack2) getUniqueCaseSensitiveString.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack1 := (recoveredStack1) copyWith: (recoveredStack2).
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            (recoveredStack0) items: (recoveredStack1).
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredPC := 76.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            (recoveredStack0) items: (recoveredStack1).
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack1 := (recoveredStack1) getUniqueCaseSensitiveString.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            (recoveredStack0) setString: (recoveredStack1).
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetCtrl.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack0 := (recoveredStack0) majorDataElement.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack0 := (recoveredStack0) extraImplInfo.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredStack0 := (recoveredStack0) attributes.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 101] ifFalse: [recoveredPC := 92].
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetCtrl.
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack0 := (recoveredStack0) majorDataElement.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredStack0 := (recoveredStack0) extraImplInfo.
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            (recoveredStack0) attributes: (recoveredStack1).
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x204b2490; bytecode file offset 0xdaeda8"
!ASDPrimitiveImplementationWidgetNew methodsFor: 'recovered'!
pasteImplementation
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := Smalltalk.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := 'SGGlobalImplementationBuffer'.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack3 := [].
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2) ifAbsent: (recoveredStack3).
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
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 27] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := RBUserInfo.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack2 := 'No implementation available!!'.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := (recoveredStack1) message: (recoveredStack2).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := (recoveredStack1) prompt.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack2 := 1.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack3 := [].
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2) ifAbsent: (recoveredStack3).
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 49] ifFalse: [recoveredPC := 40].
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := RBUserInfo.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack2 := 'No implementation available!!'.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack1 := (recoveredStack1) message: (recoveredStack2).
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack1 := (recoveredStack1) prompt.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack1 := (recoveredStack1) getPhysType.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack1 := (recoveredStack1) species.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack2 := (recoveredStack2) widgetCtrl.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack2 := (recoveredStack2) dataElement.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack2 := (recoveredStack2) getPhysType.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack2 := (recoveredStack2) species.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 68] ifFalse: [recoveredPC := 128].
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack1 := (recoveredStack1) isImplementationType.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 74] ifFalse: [recoveredPC := 90].
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack1 := (recoveredStack1) createPrimitiveImplValues.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack1 := (recoveredStack1) scalarImpl.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack2 := (recoveredStack2) widgetCtrl.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack2 := (recoveredStack2) dataElement.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            (recoveredStack1) updateDataElement: (recoveredStack2).
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredPC := 124.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredStack1 := (recoveredStack1) createPrimitiveImplValues.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack2 := (recoveredStack2) widgetCtrl.
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack2 := (recoveredStack2) dataElement.
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            (recoveredStack1) updateDataElement: (recoveredStack2).
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            recoveredStack1 := (recoveredStack1) widgetCtrl.
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            recoveredStack1 := (recoveredStack1) majorDataElement.
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            recoveredStack2 := (recoveredStack2) memoryClass.
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            (recoveredStack1) memoryClass: (recoveredStack2).
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            recoveredStack1 := (recoveredStack1) widgetCtrl.
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            recoveredStack1 := (recoveredStack1) majorDataElement.
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            recoveredStack1 := (recoveredStack1) extraImplInfo.
            recoveredPC := 117.
        ].
        recoveredStep = 117 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 118.
        ].
        recoveredStep = 118 ifTrue: [
            recoveredStack2 := (recoveredStack2) extraImplInfo.
            recoveredPC := 120.
        ].
        recoveredStep = 120 ifTrue: [
            recoveredStack2 := (recoveredStack2) memorySegmentID.
            recoveredPC := 122.
        ].
        recoveredStep = 122 ifTrue: [
            (recoveredStack1) memorySegmentID: (recoveredStack2).
            recoveredPC := 124.
        ].
        recoveredStep = 124 ifTrue: [
            recoveredPC := 136.
        ].
        recoveredStep = 128 ifTrue: [
            recoveredStack1 := RBUserInfo.
            recoveredPC := 130.
        ].
        recoveredStep = 130 ifTrue: [
            recoveredStack2 := 'No valid implementation available!!'.
            recoveredPC := 132.
        ].
        recoveredStep = 132 ifTrue: [
            recoveredStack1 := (recoveredStack1) message: (recoveredStack2).
            recoveredPC := 134.
        ].
        recoveredStep = 134 ifTrue: [
            (recoveredStack1) prompt.
            recoveredPC := 136.
        ].
        recoveredStep = 136 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetCtrl.
            recoveredPC := 138.
        ].
        recoveredStep = 138 ifTrue: [
            recoveredStack0 := (recoveredStack0) userInterface.
            recoveredPC := 140.
        ].
        recoveredStep = 140 ifTrue: [
            (recoveredStack0) update.
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

"ASDBase.ic method 0x20545890; bytecode file offset 0xe421b8"
!ASDPrimitiveImplementationWidgetNew methodsFor: 'recovered'!
changeImplementationType
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetImplType.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) getObject.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack0 := (recoveredStack0) implTypeName.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetImplTypeLabel.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := (recoveredStack0) set.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 22] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := (recoveredStack0) class.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := (recoveredStack0) localImplementationString.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := $ .
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := (recoveredStack0) includes: (recoveredStack1).
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 32] ifFalse: [recoveredPC := 45].
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := (recoveredStack1) class.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := (recoveredStack1) undefImplementationTypeString.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := (recoveredStack0) asArrayOfSubstringsSeparatedBy: (recoveredStack1).
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack0 := (recoveredStack0) first.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack0 := (recoveredStack0) trimBlanks.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack1 := (recoveredStack1) class.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack1 := (recoveredStack1) noImplementationString.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 56] ifFalse: [recoveredPC := 78].
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetCtrl.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack0 := (recoveredStack0) dataElement.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack0 := (recoveredStack0) extraImplInfo.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            (recoveredStack0) setNoImplementation.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetImplTypeLabel.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            (recoveredStack0) set: (recoveredStack1).
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetImplType.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            (recoveredStack0) sensitive: (recoveredStack1).
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredPC := 97.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetCtrl.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack0 := (recoveredStack0) dataElement.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack0 := (recoveredStack0) extraImplInfo.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            (recoveredStack0) clearNoImplementation.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetImplTypeLabel.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            (recoveredStack0) set: (recoveredStack1).
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetImplType.
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            (recoveredStack0) sensitive: (recoveredStack1).
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            recoveredStack1 := (recoveredStack1) class.
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            recoveredStack1 := (recoveredStack1) localImplementationString.
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 108] ifFalse: [recoveredPC := 130].
        ].
        recoveredStep = 108 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetCtrl.
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            recoveredStack0 := (recoveredStack0) dataElement.
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            recoveredStack0 := (recoveredStack0) extraImplInfo.
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            (recoveredStack0) clearImplementationType.
            recoveredPC := 117.
        ].
        recoveredStep = 117 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 118.
        ].
        recoveredStep = 118 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetImplTypeLabel.
            recoveredPC := 119.
        ].
        recoveredStep = 119 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 120.
        ].
        recoveredStep = 120 ifTrue: [
            (recoveredStack0) set: (recoveredStack1).
            recoveredPC := 122.
        ].
        recoveredStep = 122 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 123.
        ].
        recoveredStep = 123 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetImplType.
            recoveredPC := 124.
        ].
        recoveredStep = 124 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 125.
        ].
        recoveredStep = 125 ifTrue: [
            (recoveredStack0) sensitive: (recoveredStack1).
            recoveredPC := 127.
        ].
        recoveredStep = 127 ifTrue: [
            recoveredPC := 159.
        ].
        recoveredStep = 130 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 131.
        ].
        recoveredStep = 131 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetCtrl.
            recoveredPC := 133.
        ].
        recoveredStep = 133 ifTrue: [
            recoveredStack0 := (recoveredStack0) dataElement.
            recoveredPC := 135.
        ].
        recoveredStep = 135 ifTrue: [
            recoveredStack0 := (recoveredStack0) extraImplInfo.
            recoveredPC := 137.
        ].
        recoveredStep = 137 ifTrue: [
            (recoveredStack0) setImplementationType.
            recoveredPC := 139.
        ].
        recoveredStep = 139 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 140.
        ].
        recoveredStep = 140 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetCtrl.
            recoveredPC := 142.
        ].
        recoveredStep = 142 ifTrue: [
            recoveredStack0 := (recoveredStack0) dataElement.
            recoveredPC := 144.
        ].
        recoveredStep = 144 ifTrue: [
            recoveredStack0 := (recoveredStack0) extraImplInfo.
            recoveredPC := 146.
        ].
        recoveredStep = 146 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 147.
        ].
        recoveredStep = 147 ifTrue: [
            (recoveredStack0) referencedImplTypeName: (recoveredStack1).
            recoveredPC := 149.
        ].
        recoveredStep = 149 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 150.
        ].
        recoveredStep = 150 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetImplTypeLabel.
            recoveredPC := 151.
        ].
        recoveredStep = 151 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 152.
        ].
        recoveredStep = 152 ifTrue: [
            (recoveredStack0) set: (recoveredStack1).
            recoveredPC := 154.
        ].
        recoveredStep = 154 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 155.
        ].
        recoveredStep = 155 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetImplType.
            recoveredPC := 156.
        ].
        recoveredStep = 156 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 157.
        ].
        recoveredStep = 157 ifTrue: [
            (recoveredStack0) sensitive: (recoveredStack1).
            recoveredPC := 159.
        ].
        recoveredStep = 159 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 160.
        ].
        recoveredStep = 160 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetCtrl.
            recoveredPC := 162.
        ].
        recoveredStep = 162 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 163.
        ].
        recoveredStep = 163 ifTrue: [
            recoveredStack0 := (recoveredStack0) getProjectsImplTypeNamed: (recoveredStack1).
            recoveredPC := 165.
        ].
        recoveredStep = 165 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 166.
        ].
        recoveredStep = 166 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 167.
        ].
        recoveredStep = 167 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 214] ifFalse: [recoveredPC := 170].
        ].
        recoveredStep = 170 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 171.
        ].
        recoveredStep = 171 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetCtrl.
            recoveredPC := 173.
        ].
        recoveredStep = 173 ifTrue: [
            recoveredStack0 := (recoveredStack0) dataElement.
            recoveredPC := 175.
        ].
        recoveredStep = 175 ifTrue: [
            recoveredStack0 := (recoveredStack0) getPhysType.
            recoveredPC := 177.
        ].
        recoveredStep = 177 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 178.
        ].
        recoveredStep = 178 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 179.
        ].
        recoveredStep = 179 ifTrue: [
            recoveredStack0 := (recoveredStack0) implTypeValue.
            recoveredPC := 181.
        ].
        recoveredStep = 181 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 182.
        ].
        recoveredStep = 182 ifTrue: [
            recoveredStack1 := (recoveredStack1) widgetCtrl.
            recoveredPC := 184.
        ].
        recoveredStep = 184 ifTrue: [
            recoveredStack1 := (recoveredStack1) dataElement.
            recoveredPC := 186.
        ].
        recoveredStep = 186 ifTrue: [
            (recoveredStack0) updateDataElement: (recoveredStack1).
            recoveredPC := 188.
        ].
        recoveredStep = 188 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 189.
        ].
        recoveredStep = 189 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetCtrl.
            recoveredPC := 191.
        ].
        recoveredStep = 191 ifTrue: [
            recoveredStack0 := (recoveredStack0) dataElement.
            recoveredPC := 193.
        ].
        recoveredStep = 193 ifTrue: [
            recoveredStack0 := (recoveredStack0) getPhysType.
            recoveredPC := 195.
        ].
        recoveredStep = 195 ifTrue: [
            recoveredStack0 := (recoveredStack0) species.
            recoveredPC := 197.
        ].
        recoveredStep = 197 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 198.
        ].
        recoveredStep = 198 ifTrue: [
            recoveredStack1 := (recoveredStack1) species.
            recoveredPC := 200.
        ].
        recoveredStep = 200 ifTrue: [
            recoveredStack0 := (recoveredStack0) ~= (recoveredStack1).
            recoveredPC := 201.
        ].
        recoveredStep = 201 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 204] ifFalse: [recoveredPC := 212].
        ].
        recoveredStep = 204 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 205.
        ].
        recoveredStep = 205 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetCtrl.
            recoveredPC := 207.
        ].
        recoveredStep = 207 ifTrue: [
            recoveredStack0 := (recoveredStack0) dataElement.
            recoveredPC := 209.
        ].
        recoveredStep = 209 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 210.
        ].
        recoveredStep = 210 ifTrue: [
            (recoveredStack0) setPhysType: (recoveredStack1).
            recoveredPC := 212.
        ].
        recoveredStep = 212 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 213.
        ].
        recoveredStep = 213 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 214.
        ].
        recoveredStep = 214 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 215.
        ].
        recoveredStep = 215 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x205bd64c; bytecode file offset 0xeb9fb4"
!ASDPrimitiveImplementationWidgetNew methodsFor: 'recovered'!
initImplementationType
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredLocal6 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetImplType.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := [:recoveredBlock5Arg1 | 
    | recoveredBlock5Local1 recoveredBlock5Stack0 recoveredBlock5Stack1 recoveredBlock5Stack2 recoveredBlock5Stack3 recoveredBlock5PC recoveredBlock5Step recoveredBlock5Done recoveredBlock5Result |
    recoveredBlock5Stack0 := self.
    recoveredBlock5PC := 12.
    recoveredBlock5Done := false.
    [recoveredBlock5Done not] whileTrue: [
        recoveredBlock5Step := recoveredBlock5PC.
        recoveredBlock5Step = 12 ifTrue: [
            recoveredBlock5Stack1 := recoveredBlock5Arg1.
            recoveredBlock5PC := 13.
        ].
        recoveredBlock5Step = 13 ifTrue: [
            recoveredBlock5Stack1 := (recoveredBlock5Stack1) implTypeName.
            recoveredBlock5PC := 14.
        ].
        recoveredBlock5Step = 14 ifTrue: [
            recoveredBlock5Stack1 := (recoveredBlock5Stack1) getUniqueCaseSensitiveString.
            recoveredBlock5PC := 15.
        ].
        recoveredBlock5Step = 15 ifTrue: [
            recoveredBlock5Local1 := recoveredBlock5Stack1.
            recoveredBlock5PC := 16.
        ].
        recoveredBlock5Step = 16 ifTrue: [
            recoveredBlock5Stack1 := recoveredBlock5Arg1.
            recoveredBlock5PC := 17.
        ].
        recoveredBlock5Step = 17 ifTrue: [
            recoveredBlock5Stack1 := (recoveredBlock5Stack1) implTypeName.
            recoveredBlock5PC := 18.
        ].
        recoveredBlock5Step = 18 ifTrue: [
            recoveredBlock5Stack2 := self.
            recoveredBlock5PC := 19.
        ].
        recoveredBlock5Step = 19 ifTrue: [
            recoveredBlock5Stack2 := (recoveredBlock5Stack2) class.
            recoveredBlock5PC := 20.
        ].
        recoveredBlock5Step = 20 ifTrue: [
            recoveredBlock5Stack2 := (recoveredBlock5Stack2) noImplementationString.
            recoveredBlock5PC := 22.
        ].
        recoveredBlock5Step = 22 ifTrue: [
            recoveredBlock5Stack1 := (recoveredBlock5Stack1) ~= (recoveredBlock5Stack2).
            recoveredBlock5PC := 23.
        ].
        recoveredBlock5Step = 23 ifTrue: [
            (recoveredBlock5Stack1) ifTrue: [recoveredBlock5PC := 26] ifFalse: [recoveredBlock5PC := 44].
        ].
        recoveredBlock5Step = 26 ifTrue: [
            recoveredBlock5Stack1 := self.
            recoveredBlock5PC := 27.
        ].
        recoveredBlock5Step = 27 ifTrue: [
            recoveredBlock5Stack1 := (recoveredBlock5Stack1) widgetCtrl.
            recoveredBlock5PC := 29.
        ].
        recoveredBlock5Step = 29 ifTrue: [
            recoveredBlock5Stack2 := recoveredBlock5Arg1.
            recoveredBlock5PC := 30.
        ].
        recoveredBlock5Step = 30 ifTrue: [
            recoveredBlock5Stack2 := (recoveredBlock5Stack2) implTypeName.
            recoveredBlock5PC := 31.
        ].
        recoveredBlock5Step = 31 ifTrue: [
            recoveredBlock5Stack1 := (recoveredBlock5Stack1) getProjectsImplTypeNamed: (recoveredBlock5Stack2).
            recoveredBlock5PC := 33.
        ].
        recoveredBlock5Step = 33 ifTrue: [
            (recoveredBlock5Stack1 ~~ nil) ifTrue: [recoveredBlock5PC := 44] ifFalse: [recoveredBlock5PC := 36].
        ].
        recoveredBlock5Step = 36 ifTrue: [
            recoveredBlock5Stack1 := recoveredBlock5Local1.
            recoveredBlock5PC := 37.
        ].
        recoveredBlock5Step = 37 ifTrue: [
            recoveredBlock5Stack2 := self.
            recoveredBlock5PC := 38.
        ].
        recoveredBlock5Step = 38 ifTrue: [
            recoveredBlock5Stack2 := (recoveredBlock5Stack2) class.
            recoveredBlock5PC := 39.
        ].
        recoveredBlock5Step = 39 ifTrue: [
            recoveredBlock5Stack2 := (recoveredBlock5Stack2) undefImplementationTypeString.
            recoveredBlock5PC := 41.
        ].
        recoveredBlock5Step = 41 ifTrue: [
            recoveredBlock5Stack1 := (recoveredBlock5Stack1) , (recoveredBlock5Stack2).
            recoveredBlock5PC := 43.
        ].
        recoveredBlock5Step = 43 ifTrue: [
            recoveredBlock5Local1 := recoveredBlock5Stack1.
            recoveredBlock5PC := 44.
        ].
        recoveredBlock5Step = 44 ifTrue: [
            recoveredBlock5Stack1 := recoveredBlock5Local1.
            recoveredBlock5PC := 45.
        ].
        recoveredBlock5Step = 45 ifTrue: [
            recoveredBlock5Result := recoveredBlock5Stack1.
            recoveredBlock5Done := true.
        ].
    ].
    recoveredBlock5Result
].
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            (recoveredStack0) printBlock: (recoveredStack1).
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetCtrl.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack0 := (recoveredStack0) modelElement.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack0 := (recoveredStack0) isImplementationCast.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredLocal5 := recoveredStack1.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 62] ifFalse: [recoveredPC := 84].
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack0 := OrderedCollection.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack1 := ASDImplType.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack1 := (recoveredStack1) createDefault.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack3 := (recoveredStack3) class.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack3 := (recoveredStack3) noImplementationString.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            (recoveredStack2) implTypeName: (recoveredStack3).
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredLocal3 := recoveredStack2.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack0 := (recoveredStack0) with: (recoveredStack1).
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredLocal6 := recoveredStack0.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredPC := 90.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack0 := OrderedCollection.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack0 := (recoveredStack0) new.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredLocal6 := recoveredStack0.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetCtrl.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredStack0 := (recoveredStack0) projectContext.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredStack0 := (recoveredStack0) hasProject.
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 100] ifFalse: [recoveredPC := 152].
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetCtrl.
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            recoveredStack0 := (recoveredStack0) projectContext.
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            recoveredStack0 := (recoveredStack0) project.
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            recoveredStack0 := (recoveredStack0) implTypes.
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            recoveredLocal4 := recoveredStack0.
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            recoveredStack1 := [:recoveredBlock111Arg1 | 
    | recoveredBlock111Value0 recoveredBlock111Value1 recoveredBlock111Value2 recoveredBlock111Value3 recoveredBlock111Value4 |
    recoveredBlock111Value0 := recoveredBlock111Arg1.
    recoveredBlock111Value1 := (recoveredBlock111Value0) implTypeValue.
    recoveredBlock111Value2 := (self) widgetCtrl.
    recoveredBlock111Value3 := (recoveredBlock111Value2) dataElement.
    recoveredBlock111Value4 := (recoveredBlock111Value1) conformToDataElement: (recoveredBlock111Value3).
    recoveredBlock111Value4
].
            recoveredPC := 129.
        ].
        recoveredStep = 129 ifTrue: [
            recoveredStack0 := (recoveredStack0) select: (recoveredStack1).
            recoveredPC := 131.
        ].
        recoveredStep = 131 ifTrue: [
            recoveredLocal4 := recoveredStack0.
            recoveredPC := 132.
        ].
        recoveredStep = 132 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 133.
        ].
        recoveredStep = 133 ifTrue: [
            recoveredStack1 := [:block28117934Arg1 :block28117934Arg2 | 
    | block28117934Value0 block28117934Value1 block28117934Value2 block28117934Value3 block28117934Value4 |
    block28117934Value0 := block28117934Arg1.
    block28117934Value1 := (block28117934Value0) implTypeName.
    block28117934Value2 := block28117934Arg2.
    block28117934Value3 := (block28117934Value2) implTypeName.
    block28117934Value4 := (block28117934Value1) < (block28117934Value3).
    block28117934Value4
].
            recoveredPC := 135.
        ].
        recoveredStep = 135 ifTrue: [
            recoveredPC := 144.
        ].
        recoveredStep = 144 ifTrue: [
            recoveredStack0 := (recoveredStack0) asSortedCollection: (recoveredStack1).
            recoveredPC := 146.
        ].
        recoveredStep = 146 ifTrue: [
            recoveredLocal4 := recoveredStack0.
            recoveredPC := 147.
        ].
        recoveredStep = 147 ifTrue: [
            recoveredStack0 := recoveredLocal6.
            recoveredPC := 149.
        ].
        recoveredStep = 149 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 150.
        ].
        recoveredStep = 150 ifTrue: [
            (recoveredStack0) addAll: (recoveredStack1).
            recoveredPC := 152.
        ].
        recoveredStep = 152 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 153.
        ].
        recoveredStep = 153 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetImplType.
            recoveredPC := 154.
        ].
        recoveredStep = 154 ifTrue: [
            recoveredStack1 := recoveredLocal6.
            recoveredPC := 156.
        ].
        recoveredStep = 156 ifTrue: [
            (recoveredStack0) items: (recoveredStack1).
            recoveredPC := 158.
        ].
        recoveredStep = 158 ifTrue: [
            recoveredStack0 := recoveredLocal5.
            recoveredPC := 160.
        ].
        recoveredStep = 160 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 164] ifFalse: [recoveredPC := 196].
        ].
        recoveredStep = 164 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 165.
        ].
        recoveredStep = 165 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetCtrl.
            recoveredPC := 167.
        ].
        recoveredStep = 167 ifTrue: [
            recoveredStack0 := (recoveredStack0) dataElement.
            recoveredPC := 169.
        ].
        recoveredStep = 169 ifTrue: [
            recoveredStack0 := (recoveredStack0) extraImplInfo.
            recoveredPC := 171.
        ].
        recoveredStep = 171 ifTrue: [
            recoveredStack0 := (recoveredStack0) isNoImplementation.
            recoveredPC := 173.
        ].
        recoveredStep = 173 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 176] ifFalse: [recoveredPC := 196].
        ].
        recoveredStep = 176 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 177.
        ].
        recoveredStep = 177 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetImplType.
            recoveredPC := 178.
        ].
        recoveredStep = 178 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 179.
        ].
        recoveredStep = 179 ifTrue: [
            (recoveredStack0) setObject: (recoveredStack1).
            recoveredPC := 181.
        ].
        recoveredStep = 181 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 182.
        ].
        recoveredStep = 182 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetImplTypeLabel.
            recoveredPC := 184.
        ].
        recoveredStep = 184 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 185.
        ].
        recoveredStep = 185 ifTrue: [
            (recoveredStack0) set: (recoveredStack1).
            recoveredPC := 187.
        ].
        recoveredStep = 187 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 188.
        ].
        recoveredStep = 188 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetImplType.
            recoveredPC := 189.
        ].
        recoveredStep = 189 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 190.
        ].
        recoveredStep = 190 ifTrue: [
            (recoveredStack0) sensitive: (recoveredStack1).
            recoveredPC := 192.
        ].
        recoveredStep = 192 ifTrue: [
            recoveredPC := 321.
        ].
        recoveredStep = 196 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 197.
        ].
        recoveredStep = 197 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetCtrl.
            recoveredPC := 199.
        ].
        recoveredStep = 199 ifTrue: [
            recoveredStack0 := (recoveredStack0) dataElement.
            recoveredPC := 201.
        ].
        recoveredStep = 201 ifTrue: [
            recoveredStack0 := (recoveredStack0) extraImplInfo.
            recoveredPC := 203.
        ].
        recoveredStep = 203 ifTrue: [
            recoveredStack0 := (recoveredStack0) referencedImplTypeName.
            recoveredPC := 205.
        ].
        recoveredStep = 205 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 206.
        ].
        recoveredStep = 206 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 207.
        ].
        recoveredStep = 207 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 270] ifFalse: [recoveredPC := 210].
        ].
        recoveredStep = 210 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 211.
        ].
        recoveredStep = 211 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetCtrl.
            recoveredPC := 213.
        ].
        recoveredStep = 213 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 214.
        ].
        recoveredStep = 214 ifTrue: [
            recoveredStack0 := (recoveredStack0) getProjectsImplTypeNamed: (recoveredStack1).
            recoveredPC := 216.
        ].
        recoveredStep = 216 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 217.
        ].
        recoveredStep = 217 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 218.
        ].
        recoveredStep = 218 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 230] ifFalse: [recoveredPC := 222].
        ].
        recoveredStep = 222 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 223.
        ].
        recoveredStep = 223 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetImplType.
            recoveredPC := 224.
        ].
        recoveredStep = 224 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 225.
        ].
        recoveredStep = 225 ifTrue: [
            (recoveredStack0) setObject: (recoveredStack1).
            recoveredPC := 227.
        ].
        recoveredStep = 227 ifTrue: [
            recoveredPC := 267.
        ].
        recoveredStep = 230 ifTrue: [
            recoveredStack0 := ASDImplType.
            recoveredPC := 232.
        ].
        recoveredStep = 232 ifTrue: [
            recoveredStack0 := (recoveredStack0) createDefault.
            recoveredPC := 234.
        ].
        recoveredStep = 234 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 235.
        ].
        recoveredStep = 235 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 236.
        ].
        recoveredStep = 236 ifTrue: [
            (recoveredStack1) implTypeName: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 239.
        ].
        recoveredStep = 239 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 240.
        ].
        recoveredStep = 240 ifTrue: [
            recoveredStack2 := (recoveredStack2) widgetCtrl.
            recoveredPC := 242.
        ].
        recoveredStep = 242 ifTrue: [
            recoveredStack2 := (recoveredStack2) dataElement.
            recoveredPC := 244.
        ].
        recoveredStep = 244 ifTrue: [
            recoveredStack2 := (recoveredStack2) createPrimitiveImplValues.
            recoveredPC := 246.
        ].
        recoveredStep = 246 ifTrue: [
            recoveredStack2 := (recoveredStack2) scalarImpl.
            recoveredPC := 248.
        ].
        recoveredStep = 248 ifTrue: [
            (recoveredStack1) implTypeValue: (recoveredStack2).
            recoveredPC := 250.
        ].
        recoveredStep = 250 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 251.
        ].
        recoveredStep = 251 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 252.
        ].
        recoveredStep = 252 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetImplType.
            recoveredPC := 253.
        ].
        recoveredStep = 253 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 254.
        ].
        recoveredStep = 254 ifTrue: [
            recoveredStack1 := (recoveredStack1) widgetImplType.
            recoveredPC := 255.
        ].
        recoveredStep = 255 ifTrue: [
            recoveredStack1 := (recoveredStack1) items.
            recoveredPC := 257.
        ].
        recoveredStep = 257 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 258.
        ].
        recoveredStep = 258 ifTrue: [
            recoveredStack1 := (recoveredStack1) copyWith: (recoveredStack2).
            recoveredPC := 260.
        ].
        recoveredStep = 260 ifTrue: [
            (recoveredStack0) items: (recoveredStack1).
            recoveredPC := 262.
        ].
        recoveredStep = 262 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 263.
        ].
        recoveredStep = 263 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetImplType.
            recoveredPC := 264.
        ].
        recoveredStep = 264 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 265.
        ].
        recoveredStep = 265 ifTrue: [
            (recoveredStack0) setObject: (recoveredStack1).
            recoveredPC := 267.
        ].
        recoveredStep = 267 ifTrue: [
            recoveredPC := 290.
        ].
        recoveredStep = 270 ifTrue: [
            recoveredStack0 := recoveredLocal6.
            recoveredPC := 272.
        ].
        recoveredStep = 272 ifTrue: [
            recoveredStack0 := (recoveredStack0) isEmpty.
            recoveredPC := 274.
        ].
        recoveredStep = 274 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 278] ifFalse: [recoveredPC := 282].
        ].
        recoveredStep = 278 ifTrue: [
            recoveredPC := 290.
        ].
        recoveredStep = 282 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 283.
        ].
        recoveredStep = 283 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetImplType.
            recoveredPC := 284.
        ].
        recoveredStep = 284 ifTrue: [
            recoveredStack1 := recoveredLocal6.
            recoveredPC := 286.
        ].
        recoveredStep = 286 ifTrue: [
            recoveredStack1 := (recoveredStack1) first.
            recoveredPC := 288.
        ].
        recoveredStep = 288 ifTrue: [
            (recoveredStack0) setObject: (recoveredStack1).
            recoveredPC := 290.
        ].
        recoveredStep = 290 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 291.
        ].
        recoveredStep = 291 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetImplTypeLabel.
            recoveredPC := 293.
        ].
        recoveredStep = 293 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 294.
        ].
        recoveredStep = 294 ifTrue: [
            recoveredStack1 := (recoveredStack1) widgetCtrl.
            recoveredPC := 296.
        ].
        recoveredStep = 296 ifTrue: [
            recoveredStack1 := (recoveredStack1) dataElement.
            recoveredPC := 298.
        ].
        recoveredStep = 298 ifTrue: [
            recoveredStack1 := (recoveredStack1) extraImplInfo.
            recoveredPC := 300.
        ].
        recoveredStep = 300 ifTrue: [
            recoveredStack1 := (recoveredStack1) isImplementationType.
            recoveredPC := 302.
        ].
        recoveredStep = 302 ifTrue: [
            (recoveredStack0) set: (recoveredStack1).
            recoveredPC := 304.
        ].
        recoveredStep = 304 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 305.
        ].
        recoveredStep = 305 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetImplType.
            recoveredPC := 306.
        ].
        recoveredStep = 306 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 307.
        ].
        recoveredStep = 307 ifTrue: [
            recoveredStack1 := (recoveredStack1) widgetCtrl.
            recoveredPC := 309.
        ].
        recoveredStep = 309 ifTrue: [
            recoveredStack1 := (recoveredStack1) dataElement.
            recoveredPC := 311.
        ].
        recoveredStep = 311 ifTrue: [
            recoveredStack1 := (recoveredStack1) extraImplInfo.
            recoveredPC := 313.
        ].
        recoveredStep = 313 ifTrue: [
            recoveredStack1 := (recoveredStack1) isImplementationType.
            recoveredPC := 315.
        ].
        recoveredStep = 315 ifTrue: [
            (recoveredStack0) sensitive: (recoveredStack1).
            recoveredPC := 317.
        ].
        recoveredStep = 317 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 318.
        ].
        recoveredStep = 318 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 319.
        ].
        recoveredStep = 319 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 320.
        ].
        recoveredStep = 320 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 321.
        ].
        recoveredStep = 321 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 322.
        ].
        recoveredStep = 322 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x206a0ac4; bytecode file offset 0xf9d530"
!ASDPrimitiveImplementationWidgetNew methodsFor: 'recovered'!
createWidgetHierarchy
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredLocal6 recoveredLocal7 recoveredLocal8 recoveredLocal9 recoveredLocal10 recoveredLocal11 recoveredLocal12 recoveredLocal13 recoveredLocal14 recoveredLocal15 recoveredLocal16 recoveredLocal17 recoveredLocal18 recoveredLocal19 recoveredLocal20 recoveredLocal21 recoveredLocal22 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredPC recoveredStep |
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
            recoveredLocal22 := recoveredStack1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := (recoveredStack0) primaryWidget.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredLocal21 := recoveredStack0.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := recoveredLocal21.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := 'widgetImplTypeForm'.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack2 := [:block2812e080Arg1 | 
    | block2812e080Value0 |
    block2812e080Value0 := block2812e080Arg1.
    block2812e080Value0
].
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := (recoveredStack0) createForm: (recoveredStack1) argBlock: (recoveredStack2).
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := (recoveredStack0) manageChild.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredLocal16 := recoveredStack0.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack0 := recoveredLocal22.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := 'widgetImplTypeForm'.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack2 := recoveredLocal16.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            (recoveredStack0) at: (recoveredStack1) put: (recoveredStack2).
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack0 := recoveredLocal21.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack1 := 'widgetImplFrame'.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack2 := [:block2812e0a4Arg1 | 
    | block2812e0a4Value0 block2812e0a4Value1 block2812e0a4Value2 |
    block2812e0a4Value0 := block2812e0a4Arg1.
    block2812e0a4Value1 := block2812e0a4Value0.
    (block2812e0a4Value1) width: (378).
    block2812e0a4Value2 := block2812e0a4Value0.
    (block2812e0a4Value2) labelString: ('Implementation').
    block2812e0a4Value0
].
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack0 := (recoveredStack0) createFrame: (recoveredStack1) argBlock: (recoveredStack2).
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack0 := (recoveredStack0) manageChild.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredLocal13 := recoveredStack0.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack0 := recoveredLocal22.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack1 := 'widgetImplFrame'.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack2 := recoveredLocal13.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            (recoveredStack0) at: (recoveredStack1) put: (recoveredStack2).
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack0 := recoveredLocal13.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack1 := 'widgetImplForm'.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack2 := [:block2812e0c8Arg1 | 
    | block2812e0c8Value0 |
    block2812e0c8Value0 := block2812e0c8Arg1.
    block2812e0c8Value0
].
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack0 := (recoveredStack0) createForm: (recoveredStack1) argBlock: (recoveredStack2).
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack0 := (recoveredStack0) manageChild.
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            recoveredLocal17 := recoveredStack0.
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            recoveredStack0 := recoveredLocal22.
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            recoveredStack1 := 'widgetImplForm'.
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            recoveredStack2 := recoveredLocal17.
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            (recoveredStack0) at: (recoveredStack1) put: (recoveredStack2).
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            recoveredStack0 := recoveredLocal16.
            recoveredPC := 118.
        ].
        recoveredStep = 118 ifTrue: [
            recoveredStack1 := 'widgetImplTypeLabel'.
            recoveredPC := 120.
        ].
        recoveredStep = 120 ifTrue: [
            recoveredStack2 := [:block2812e0ecArg1 | 
    | block2812e0ecValue0 block2812e0ecValue1 block2812e0ecValue2 |
    block2812e0ecValue0 := block2812e0ecArg1.
    block2812e0ecValue1 := block2812e0ecValue0.
    (block2812e0ecValue1) height: (22).
    block2812e0ecValue2 := block2812e0ecValue0.
    (block2812e0ecValue2) labelString: ('Use Implementation Type').
    block2812e0ecValue0
].
            recoveredPC := 122.
        ].
        recoveredStep = 122 ifTrue: [
            recoveredPC := 138.
        ].
        recoveredStep = 138 ifTrue: [
            recoveredStack0 := (recoveredStack0) createToggleButton: (recoveredStack1) argBlock: (recoveredStack2).
            recoveredPC := 140.
        ].
        recoveredStep = 140 ifTrue: [
            recoveredStack0 := (recoveredStack0) manageChild.
            recoveredPC := 142.
        ].
        recoveredStep = 142 ifTrue: [
            recoveredLocal15 := recoveredStack0.
            recoveredPC := 145.
        ].
        recoveredStep = 145 ifTrue: [
            recoveredStack0 := recoveredLocal22.
            recoveredPC := 148.
        ].
        recoveredStep = 148 ifTrue: [
            recoveredStack1 := 'widgetImplTypeLabel'.
            recoveredPC := 150.
        ].
        recoveredStep = 150 ifTrue: [
            recoveredStack2 := recoveredLocal15.
            recoveredPC := 153.
        ].
        recoveredStep = 153 ifTrue: [
            (recoveredStack0) at: (recoveredStack1) put: (recoveredStack2).
            recoveredPC := 155.
        ].
        recoveredStep = 155 ifTrue: [
            recoveredStack0 := recoveredLocal16.
            recoveredPC := 158.
        ].
        recoveredStep = 158 ifTrue: [
            recoveredStack1 := 'widgetImplType'.
            recoveredPC := 160.
        ].
        recoveredStep = 160 ifTrue: [
            recoveredStack2 := [:block2812e110Arg1 | 
    | block2812e110Value0 block2812e110Value1 |
    block2812e110Value0 := block2812e110Arg1.
    block2812e110Value1 := block2812e110Value0.
    (block2812e110Value1) visibleItemCount: (10).
    block2812e110Value0
].
            recoveredPC := 162.
        ].
        recoveredStep = 162 ifTrue: [
            recoveredPC := 173.
        ].
        recoveredStep = 173 ifTrue: [
            recoveredStack0 := (recoveredStack0) createEtasObjectComboBox: (recoveredStack1) argBlock: (recoveredStack2).
            recoveredPC := 175.
        ].
        recoveredStep = 175 ifTrue: [
            recoveredStack0 := (recoveredStack0) manageChild.
            recoveredPC := 177.
        ].
        recoveredStep = 177 ifTrue: [
            recoveredLocal14 := recoveredStack0.
            recoveredPC := 180.
        ].
        recoveredStep = 180 ifTrue: [
            recoveredStack0 := recoveredLocal22.
            recoveredPC := 183.
        ].
        recoveredStep = 183 ifTrue: [
            recoveredStack1 := 'widgetImplType'.
            recoveredPC := 185.
        ].
        recoveredStep = 185 ifTrue: [
            recoveredStack2 := recoveredLocal14.
            recoveredPC := 188.
        ].
        recoveredStep = 188 ifTrue: [
            (recoveredStack0) at: (recoveredStack1) put: (recoveredStack2).
            recoveredPC := 190.
        ].
        recoveredStep = 190 ifTrue: [
            recoveredStack0 := recoveredLocal14.
            recoveredPC := 193.
        ].
        recoveredStep = 193 ifTrue: [
            (recoveredStack0) addTabGroup.
            recoveredPC := 195.
        ].
        recoveredStep = 195 ifTrue: [
            recoveredStack0 := recoveredLocal17.
            recoveredPC := 198.
        ].
        recoveredStep = 198 ifTrue: [
            recoveredStack1 := 'widgetASDScalarImplWidget'.
            recoveredPC := 200.
        ].
        recoveredStep = 200 ifTrue: [
            recoveredStack2 := [:block2812e134Arg1 | 
    | block2812e134Value0 |
    block2812e134Value0 := block2812e134Arg1.
    block2812e134Value0
].
            recoveredPC := 202.
        ].
        recoveredStep = 202 ifTrue: [
            recoveredPC := 208.
        ].
        recoveredStep = 208 ifTrue: [
            recoveredStack0 := (recoveredStack0) createASDScalarImplementationWidgetNew: (recoveredStack1) argBlock: (recoveredStack2).
            recoveredPC := 210.
        ].
        recoveredStep = 210 ifTrue: [
            recoveredStack0 := (recoveredStack0) manageChild.
            recoveredPC := 212.
        ].
        recoveredStep = 212 ifTrue: [
            recoveredLocal20 := recoveredStack0.
            recoveredPC := 215.
        ].
        recoveredStep = 215 ifTrue: [
            recoveredStack0 := recoveredLocal22.
            recoveredPC := 218.
        ].
        recoveredStep = 218 ifTrue: [
            recoveredStack1 := 'widgetASDScalarImplWidget'.
            recoveredPC := 220.
        ].
        recoveredStep = 220 ifTrue: [
            recoveredStack2 := recoveredLocal20.
            recoveredPC := 223.
        ].
        recoveredStep = 223 ifTrue: [
            (recoveredStack0) at: (recoveredStack1) put: (recoveredStack2).
            recoveredPC := 225.
        ].
        recoveredStep = 225 ifTrue: [
            recoveredStack0 := recoveredLocal21.
            recoveredPC := 228.
        ].
        recoveredStep = 228 ifTrue: [
            recoveredStack1 := 'widgetASDScalarImplLimiterWidget'.
            recoveredPC := 230.
        ].
        recoveredStep = 230 ifTrue: [
            recoveredStack2 := [:block2812e158Arg1 | 
    | block2812e158Value0 |
    block2812e158Value0 := block2812e158Arg1.
    block2812e158Value0
].
            recoveredPC := 232.
        ].
        recoveredStep = 232 ifTrue: [
            recoveredPC := 238.
        ].
        recoveredStep = 238 ifTrue: [
            recoveredStack0 := (recoveredStack0) createASDScalarImplementationLimiterWidgetNew: (recoveredStack1) argBlock: (recoveredStack2).
            recoveredPC := 240.
        ].
        recoveredStep = 240 ifTrue: [
            recoveredStack0 := (recoveredStack0) manageChild.
            recoveredPC := 242.
        ].
        recoveredStep = 242 ifTrue: [
            recoveredLocal19 := recoveredStack0.
            recoveredPC := 245.
        ].
        recoveredStep = 245 ifTrue: [
            recoveredStack0 := recoveredLocal22.
            recoveredPC := 248.
        ].
        recoveredStep = 248 ifTrue: [
            recoveredStack1 := 'widgetASDScalarImplLimiterWidget'.
            recoveredPC := 250.
        ].
        recoveredStep = 250 ifTrue: [
            recoveredStack2 := recoveredLocal19.
            recoveredPC := 253.
        ].
        recoveredStep = 253 ifTrue: [
            (recoveredStack0) at: (recoveredStack1) put: (recoveredStack2).
            recoveredPC := 255.
        ].
        recoveredStep = 255 ifTrue: [
            recoveredStack0 := recoveredLocal21.
            recoveredPC := 258.
        ].
        recoveredStep = 258 ifTrue: [
            recoveredStack1 := 'widgetMemoryLocationInst'.
            recoveredPC := 260.
        ].
        recoveredStep = 260 ifTrue: [
            recoveredStack2 := [:block2812e17cArg1 | 
    | block2812e17cValue0 block2812e17cValue1 |
    block2812e17cValue0 := block2812e17cArg1.
    block2812e17cValue1 := block2812e17cValue0.
    (block2812e17cValue1) visibleItemCount: (7).
    block2812e17cValue0
].
            recoveredPC := 262.
        ].
        recoveredStep = 262 ifTrue: [
            recoveredPC := 273.
        ].
        recoveredStep = 273 ifTrue: [
            recoveredStack0 := (recoveredStack0) createEtasComboBox: (recoveredStack1) argBlock: (recoveredStack2).
            recoveredPC := 275.
        ].
        recoveredStep = 275 ifTrue: [
            recoveredStack0 := (recoveredStack0) manageChild.
            recoveredPC := 277.
        ].
        recoveredStep = 277 ifTrue: [
            recoveredLocal12 := recoveredStack0.
            recoveredPC := 280.
        ].
        recoveredStep = 280 ifTrue: [
            recoveredStack0 := recoveredLocal22.
            recoveredPC := 283.
        ].
        recoveredStep = 283 ifTrue: [
            recoveredStack1 := 'widgetMemoryLocationInst'.
            recoveredPC := 285.
        ].
        recoveredStep = 285 ifTrue: [
            recoveredStack2 := recoveredLocal12.
            recoveredPC := 288.
        ].
        recoveredStep = 288 ifTrue: [
            (recoveredStack0) at: (recoveredStack1) put: (recoveredStack2).
            recoveredPC := 290.
        ].
        recoveredStep = 290 ifTrue: [
            recoveredStack0 := recoveredLocal21.
            recoveredPC := 293.
        ].
        recoveredStep = 293 ifTrue: [
            recoveredStack1 := 'widgetMemoryLocationInstLabel'.
            recoveredPC := 295.
        ].
        recoveredStep = 295 ifTrue: [
            recoveredStack2 := [:block2812e1a0Arg1 | 
    | block2812e1a0Value0 block2812e1a0Value1 block2812e1a0Value2 block2812e1a0Value3 block2812e1a0Value4 block2812e1a0Value5 |
    block2812e1a0Value0 := block2812e1a0Arg1.
    block2812e1a0Value1 := block2812e1a0Value0.
    block2812e1a0Value2 := XmALIGNMENTBEGINNING.
    (block2812e1a0Value1) alignment: (block2812e1a0Value2).
    block2812e1a0Value3 := block2812e1a0Value0.
    (block2812e1a0Value3) width: (150).
    block2812e1a0Value4 := block2812e1a0Value0.
    (block2812e1a0Value4) height: (22).
    block2812e1a0Value5 := block2812e1a0Value0.
    (block2812e1a0Value5) labelString: ('Memory Location of Instance').
    block2812e1a0Value0
].
            recoveredPC := 297.
        ].
        recoveredStep = 297 ifTrue: [
            recoveredPC := 323.
        ].
        recoveredStep = 323 ifTrue: [
            recoveredStack0 := (recoveredStack0) createLabel: (recoveredStack1) argBlock: (recoveredStack2).
            recoveredPC := 325.
        ].
        recoveredStep = 325 ifTrue: [
            recoveredStack0 := (recoveredStack0) manageChild.
            recoveredPC := 327.
        ].
        recoveredStep = 327 ifTrue: [
            recoveredLocal11 := recoveredStack0.
            recoveredPC := 330.
        ].
        recoveredStep = 330 ifTrue: [
            recoveredStack0 := recoveredLocal22.
            recoveredPC := 333.
        ].
        recoveredStep = 333 ifTrue: [
            recoveredStack1 := 'widgetMemoryLocationInstLabel'.
            recoveredPC := 335.
        ].
        recoveredStep = 335 ifTrue: [
            recoveredStack2 := recoveredLocal11.
            recoveredPC := 338.
        ].
        recoveredStep = 338 ifTrue: [
            (recoveredStack0) at: (recoveredStack1) put: (recoveredStack2).
            recoveredPC := 340.
        ].
        recoveredStep = 340 ifTrue: [
            recoveredStack0 := recoveredLocal21.
            recoveredPC := 343.
        ].
        recoveredStep = 343 ifTrue: [
            recoveredStack1 := 'widgetMemoryLocationRef'.
            recoveredPC := 345.
        ].
        recoveredStep = 345 ifTrue: [
            recoveredStack2 := [:block2812e1c4Arg1 | 
    | block2812e1c4Value0 block2812e1c4Value1 |
    block2812e1c4Value0 := block2812e1c4Arg1.
    block2812e1c4Value1 := block2812e1c4Value0.
    (block2812e1c4Value1) visibleItemCount: (7).
    block2812e1c4Value0
].
            recoveredPC := 347.
        ].
        recoveredStep = 347 ifTrue: [
            recoveredPC := 357.
        ].
        recoveredStep = 357 ifTrue: [
            recoveredStack0 := (recoveredStack0) createEtasComboBox: (recoveredStack1) argBlock: (recoveredStack2).
            recoveredPC := 359.
        ].
        recoveredStep = 359 ifTrue: [
            recoveredStack0 := (recoveredStack0) manageChild.
            recoveredPC := 361.
        ].
        recoveredStep = 361 ifTrue: [
            recoveredLocal10 := recoveredStack0.
            recoveredPC := 364.
        ].
        recoveredStep = 364 ifTrue: [
            recoveredStack0 := recoveredLocal22.
            recoveredPC := 367.
        ].
        recoveredStep = 367 ifTrue: [
            recoveredStack1 := 'widgetMemoryLocationRef'.
            recoveredPC := 369.
        ].
        recoveredStep = 369 ifTrue: [
            recoveredStack2 := recoveredLocal10.
            recoveredPC := 372.
        ].
        recoveredStep = 372 ifTrue: [
            (recoveredStack0) at: (recoveredStack1) put: (recoveredStack2).
            recoveredPC := 374.
        ].
        recoveredStep = 374 ifTrue: [
            recoveredStack0 := recoveredLocal21.
            recoveredPC := 377.
        ].
        recoveredStep = 377 ifTrue: [
            recoveredStack1 := 'widgetMemoryLocationRefLabel'.
            recoveredPC := 379.
        ].
        recoveredStep = 379 ifTrue: [
            recoveredStack2 := [:block2812e1e8Arg1 | 
    | block2812e1e8Value0 block2812e1e8Value1 block2812e1e8Value2 block2812e1e8Value3 block2812e1e8Value4 block2812e1e8Value5 |
    block2812e1e8Value0 := block2812e1e8Arg1.
    block2812e1e8Value1 := block2812e1e8Value0.
    block2812e1e8Value2 := XmALIGNMENTBEGINNING.
    (block2812e1e8Value1) alignment: (block2812e1e8Value2).
    block2812e1e8Value3 := block2812e1e8Value0.
    (block2812e1e8Value3) width: (150).
    block2812e1e8Value4 := block2812e1e8Value0.
    (block2812e1e8Value4) height: (22).
    block2812e1e8Value5 := block2812e1e8Value0.
    (block2812e1e8Value5) labelString: ('Memory Location of Reference').
    block2812e1e8Value0
].
            recoveredPC := 381.
        ].
        recoveredStep = 381 ifTrue: [
            recoveredPC := 407.
        ].
        recoveredStep = 407 ifTrue: [
            recoveredStack0 := (recoveredStack0) createLabel: (recoveredStack1) argBlock: (recoveredStack2).
            recoveredPC := 409.
        ].
        recoveredStep = 409 ifTrue: [
            recoveredStack0 := (recoveredStack0) manageChild.
            recoveredPC := 411.
        ].
        recoveredStep = 411 ifTrue: [
            recoveredLocal9 := recoveredStack0.
            recoveredPC := 414.
        ].
        recoveredStep = 414 ifTrue: [
            recoveredStack0 := recoveredLocal22.
            recoveredPC := 417.
        ].
        recoveredStep = 417 ifTrue: [
            recoveredStack1 := 'widgetMemoryLocationRefLabel'.
            recoveredPC := 419.
        ].
        recoveredStep = 419 ifTrue: [
            recoveredStack2 := recoveredLocal9.
            recoveredPC := 422.
        ].
        recoveredStep = 422 ifTrue: [
            (recoveredStack0) at: (recoveredStack1) put: (recoveredStack2).
            recoveredPC := 424.
        ].
        recoveredStep = 424 ifTrue: [
            recoveredStack0 := recoveredLocal21.
            recoveredPC := 427.
        ].
        recoveredStep = 427 ifTrue: [
            recoveredStack1 := 'widgetMemoryLocationSearchResult'.
            recoveredPC := 430.
        ].
        recoveredStep = 430 ifTrue: [
            recoveredStack2 := [:block2812e20cArg1 | 
    | block2812e20cValue0 block2812e20cValue1 |
    block2812e20cValue0 := block2812e20cArg1.
    block2812e20cValue1 := block2812e20cValue0.
    (block2812e20cValue1) visibleItemCount: (7).
    block2812e20cValue0
].
            recoveredPC := 434.
        ].
        recoveredStep = 434 ifTrue: [
            recoveredPC := 445.
        ].
        recoveredStep = 445 ifTrue: [
            recoveredStack0 := (recoveredStack0) createEtasComboBox: (recoveredStack1) argBlock: (recoveredStack2).
            recoveredPC := 447.
        ].
        recoveredStep = 447 ifTrue: [
            recoveredStack0 := (recoveredStack0) manageChild.
            recoveredPC := 449.
        ].
        recoveredStep = 449 ifTrue: [
            recoveredLocal8 := recoveredStack0.
            recoveredPC := 452.
        ].
        recoveredStep = 452 ifTrue: [
            recoveredStack0 := recoveredLocal22.
            recoveredPC := 455.
        ].
        recoveredStep = 455 ifTrue: [
            recoveredStack1 := 'widgetMemoryLocationSearchResult'.
            recoveredPC := 458.
        ].
        recoveredStep = 458 ifTrue: [
            recoveredStack2 := recoveredLocal8.
            recoveredPC := 461.
        ].
        recoveredStep = 461 ifTrue: [
            (recoveredStack0) at: (recoveredStack1) put: (recoveredStack2).
            recoveredPC := 463.
        ].
        recoveredStep = 463 ifTrue: [
            recoveredStack0 := recoveredLocal21.
            recoveredPC := 466.
        ].
        recoveredStep = 466 ifTrue: [
            recoveredStack1 := 'widgetMemoryLocationSearchResultLabel'.
            recoveredPC := 470.
        ].
        recoveredStep = 470 ifTrue: [
            recoveredStack2 := [:block2812e230Arg1 | 
    | block2812e230Value0 block2812e230Value1 block2812e230Value2 block2812e230Value3 block2812e230Value4 block2812e230Value5 |
    block2812e230Value0 := block2812e230Arg1.
    block2812e230Value1 := block2812e230Value0.
    block2812e230Value2 := XmALIGNMENTBEGINNING.
    (block2812e230Value1) alignment: (block2812e230Value2).
    block2812e230Value3 := block2812e230Value0.
    (block2812e230Value3) width: (150).
    block2812e230Value4 := block2812e230Value0.
    (block2812e230Value4) height: (22).
    block2812e230Value5 := block2812e230Value0.
    (block2812e230Value5) labelString: ('Memory Location of Search Result').
    block2812e230Value0
].
            recoveredPC := 474.
        ].
        recoveredStep = 474 ifTrue: [
            recoveredPC := 503.
        ].
        recoveredStep = 503 ifTrue: [
            recoveredStack0 := (recoveredStack0) createLabel: (recoveredStack1) argBlock: (recoveredStack2).
            recoveredPC := 505.
        ].
        recoveredStep = 505 ifTrue: [
            recoveredStack0 := (recoveredStack0) manageChild.
            recoveredPC := 507.
        ].
        recoveredStep = 507 ifTrue: [
            recoveredLocal7 := recoveredStack0.
            recoveredPC := 510.
        ].
        recoveredStep = 510 ifTrue: [
            recoveredStack0 := recoveredLocal22.
            recoveredPC := 513.
        ].
        recoveredStep = 513 ifTrue: [
            recoveredStack1 := 'widgetMemoryLocationSearchResultLabel'.
            recoveredPC := 516.
        ].
        recoveredStep = 516 ifTrue: [
            recoveredStack2 := recoveredLocal7.
            recoveredPC := 519.
        ].
        recoveredStep = 519 ifTrue: [
            (recoveredStack0) at: (recoveredStack1) put: (recoveredStack2).
            recoveredPC := 521.
        ].
        recoveredStep = 521 ifTrue: [
            recoveredStack0 := recoveredLocal21.
            recoveredPC := 524.
        ].
        recoveredStep = 524 ifTrue: [
            recoveredStack1 := 'widgetMemorySegmentLabel'.
            recoveredPC := 528.
        ].
        recoveredStep = 528 ifTrue: [
            recoveredStack2 := [:block2812e254Arg1 | 
    | block2812e254Value0 block2812e254Value1 block2812e254Value2 block2812e254Value3 block2812e254Value4 block2812e254Value5 block2812e254Value6 |
    block2812e254Value0 := ('Kra') == ('Call_69763').
    block2812e254Value1 := block2812e254Arg1.
    block2812e254Value2 := block2812e254Value1.
    block2812e254Value3 := XmALIGNMENTBEGINNING.
    (block2812e254Value2) alignment: (block2812e254Value3).
    block2812e254Value4 := block2812e254Value1.
    (block2812e254Value4) width: (150).
    block2812e254Value5 := block2812e254Value1.
    (block2812e254Value5) height: (22).
    block2812e254Value6 := block2812e254Value1.
    (block2812e254Value6) labelString: ('Memory Segment').
    block2812e254Value1
].
            recoveredPC := 532.
        ].
        recoveredStep = 532 ifTrue: [
            recoveredPC := 571.
        ].
        recoveredStep = 571 ifTrue: [
            recoveredStack0 := (recoveredStack0) createLabel: (recoveredStack1) argBlock: (recoveredStack2).
            recoveredPC := 573.
        ].
        recoveredStep = 573 ifTrue: [
            recoveredStack0 := (recoveredStack0) manageChild.
            recoveredPC := 575.
        ].
        recoveredStep = 575 ifTrue: [
            recoveredLocal6 := recoveredStack0.
            recoveredPC := 578.
        ].
        recoveredStep = 578 ifTrue: [
            recoveredStack0 := recoveredLocal22.
            recoveredPC := 581.
        ].
        recoveredStep = 581 ifTrue: [
            recoveredStack1 := 'widgetMemorySegmentLabel'.
            recoveredPC := 584.
        ].
        recoveredStep = 584 ifTrue: [
            recoveredStack2 := recoveredLocal6.
            recoveredPC := 587.
        ].
        recoveredStep = 587 ifTrue: [
            (recoveredStack0) at: (recoveredStack1) put: (recoveredStack2).
            recoveredPC := 589.
        ].
        recoveredStep = 589 ifTrue: [
            recoveredStack0 := recoveredLocal21.
            recoveredPC := 592.
        ].
        recoveredStep = 592 ifTrue: [
            recoveredStack1 := 'widgetMemorySegment'.
            recoveredPC := 596.
        ].
        recoveredStep = 596 ifTrue: [
            recoveredStack2 := [:block2812e278Arg1 | 
    | block2812e278Stack0 block2812e278Stack1 block2812e278Stack2 block2812e278Stack3 block2812e278Stack4 block2812e278PC block2812e278Step block2812e278Done block2812e278Result |
    block2812e278Stack0 := self.
    block2812e278PC := 4.
    block2812e278Done := false.
    [block2812e278Done not] whileTrue: [
        block2812e278Step := block2812e278PC.
        block2812e278Step = 4 ifTrue: [
            block2812e278Stack1 := block2812e278Arg1.
            block2812e278PC := 5.
        ].
        block2812e278Step = 5 ifTrue: [
            block2812e278Stack2 := block2812e278Stack1.
            block2812e278PC := 6.
        ].
        block2812e278Step = 6 ifTrue: [
            block2812e278Stack3 := [:block2812e29cArg1 | 
    | block2812e29cValue0 block2812e29cValue1 |
    block2812e29cValue0 := block2812e29cArg1.
    block2812e29cValue1 := (block2812e29cValue0) label.
    block2812e29cValue1
].
            block2812e278PC := 10.
        ].
        block2812e278Step = 10 ifTrue: [
            block2812e278PC := 20.
        ].
        block2812e278Step = 20 ifTrue: [
            (block2812e278Stack2) printBlock: (block2812e278Stack3).
            block2812e278Stack2 := block2812e278Stack1.
            block2812e278PC := 25.
        ].
        block2812e278Step = 25 ifTrue: [
            block2812e278Stack3 := 22.
            block2812e278PC := 27.
        ].
        block2812e278Step = 27 ifTrue: [
            (block2812e278Stack2) height: (block2812e278Stack3).
            block2812e278PC := 29.
        ].
        block2812e278Step = 29 ifTrue: [
            block2812e278Result := block2812e278Stack1.
            block2812e278Done := true.
        ].
    ].
    block2812e278Result
].
            recoveredPC := 600.
        ].
        recoveredStep = 600 ifTrue: [
            recoveredPC := 630.
        ].
        recoveredStep = 630 ifTrue: [
            recoveredStack0 := (recoveredStack0) createEtasObjectComboBox: (recoveredStack1) argBlock: (recoveredStack2).
            recoveredPC := 632.
        ].
        recoveredStep = 632 ifTrue: [
            recoveredStack0 := (recoveredStack0) manageChild.
            recoveredPC := 634.
        ].
        recoveredStep = 634 ifTrue: [
            recoveredLocal5 := recoveredStack0.
            recoveredPC := 637.
        ].
        recoveredStep = 637 ifTrue: [
            recoveredStack0 := recoveredLocal22.
            recoveredPC := 640.
        ].
        recoveredStep = 640 ifTrue: [
            recoveredStack1 := 'widgetMemorySegment'.
            recoveredPC := 644.
        ].
        recoveredStep = 644 ifTrue: [
            recoveredStack2 := recoveredLocal5.
            recoveredPC := 647.
        ].
        recoveredStep = 647 ifTrue: [
            (recoveredStack0) at: (recoveredStack1) put: (recoveredStack2).
            recoveredPC := 649.
        ].
        recoveredStep = 649 ifTrue: [
            recoveredStack0 := recoveredLocal12.
            recoveredPC := 652.
        ].
        recoveredStep = 652 ifTrue: [
            (recoveredStack0) addTabGroup.
            recoveredPC := 654.
        ].
        recoveredStep = 654 ifTrue: [
            recoveredStack0 := recoveredLocal5.
            recoveredPC := 657.
        ].
        recoveredStep = 657 ifTrue: [
            (recoveredStack0) addTabGroup.
            recoveredPC := 659.
        ].
        recoveredStep = 659 ifTrue: [
            recoveredStack0 := recoveredLocal21.
            recoveredPC := 662.
        ].
        recoveredStep = 662 ifTrue: [
            recoveredStack1 := 'widgetASDImplementationConsistencyWidget'.
            recoveredPC := 666.
        ].
        recoveredStep = 666 ifTrue: [
            recoveredStack2 := [:block2812e2c0Arg1 | 
    | block2812e2c0Value0 |
    block2812e2c0Value0 := block2812e2c0Arg1.
    block2812e2c0Value0
].
            recoveredPC := 670.
        ].
        recoveredStep = 670 ifTrue: [
            recoveredPC := 676.
        ].
        recoveredStep = 676 ifTrue: [
            recoveredStack0 := (recoveredStack0) createASDImplementationConsistencyWidget: (recoveredStack1) argBlock: (recoveredStack2).
            recoveredPC := 681.
        ].
        recoveredStep = 681 ifTrue: [
            recoveredStack0 := (recoveredStack0) manageChild.
            recoveredPC := 683.
        ].
        recoveredStep = 683 ifTrue: [
            recoveredLocal18 := recoveredStack0.
            recoveredPC := 686.
        ].
        recoveredStep = 686 ifTrue: [
            recoveredStack0 := recoveredLocal22.
            recoveredPC := 689.
        ].
        recoveredStep = 689 ifTrue: [
            recoveredStack1 := 'widgetASDImplementationConsistencyWidget'.
            recoveredPC := 692.
        ].
        recoveredStep = 692 ifTrue: [
            recoveredStack2 := recoveredLocal18.
            recoveredPC := 695.
        ].
        recoveredStep = 695 ifTrue: [
            (recoveredStack0) at: (recoveredStack1) put: (recoveredStack2).
            recoveredPC := 697.
        ].
        recoveredStep = 697 ifTrue: [
            recoveredStack0 := recoveredLocal16.
            recoveredPC := 700.
        ].
        recoveredStep = 700 ifTrue: [
            recoveredStack1 := [:block2812e2e4Arg1 | 
    | block2812e2e4Value0 block2812e2e4Value1 block2812e2e4Value2 block2812e2e4Value3 block2812e2e4Value4 block2812e2e4Value5 block2812e2e4Value6 block2812e2e4Value7 block2812e2e4Value8 block2812e2e4Value9 |
    block2812e2e4Value0 := block2812e2e4Arg1.
    block2812e2e4Value1 := block2812e2e4Value0.
    block2812e2e4Value2 := XmATTACHFORM.
    (block2812e2e4Value1) topAttachment: (block2812e2e4Value2).
    block2812e2e4Value3 := block2812e2e4Value0.
    (block2812e2e4Value3) topOffset: (0).
    block2812e2e4Value4 := block2812e2e4Value0.
    block2812e2e4Value5 := XmATTACHFORM.
    (block2812e2e4Value4) leftAttachment: (block2812e2e4Value5).
    block2812e2e4Value6 := block2812e2e4Value0.
    (block2812e2e4Value6) leftOffset: (0).
    block2812e2e4Value7 := block2812e2e4Value0.
    block2812e2e4Value8 := XmATTACHFORM.
    (block2812e2e4Value7) rightAttachment: (block2812e2e4Value8).
    block2812e2e4Value9 := (block2812e2e4Value0) rightOffset: (0).
    block2812e2e4Value9
].
            recoveredPC := 704.
        ].
        recoveredStep = 704 ifTrue: [
            recoveredPC := 754.
        ].
        recoveredStep = 754 ifTrue: [
            (recoveredStack0) setValuesBlock: (recoveredStack1).
            recoveredPC := 759.
        ].
        recoveredStep = 759 ifTrue: [
            recoveredStack0 := recoveredLocal13.
            recoveredPC := 762.
        ].
        recoveredStep = 762 ifTrue: [
            recoveredStack1 := [:recoveredBlock762Arg1 | 
    | recoveredBlock762Value0 recoveredBlock762Value1 recoveredBlock762Value2 recoveredBlock762Value3 recoveredBlock762Value4 recoveredBlock762Value5 recoveredBlock762Value6 recoveredBlock762Value7 recoveredBlock762Value8 recoveredBlock762Value9 recoveredBlock762Value10 recoveredBlock762Value11 |
    recoveredBlock762Value0 := recoveredBlock762Arg1.
    recoveredBlock762Value1 := recoveredBlock762Value0.
    recoveredBlock762Value2 := XmATTACHWIDGET.
    (recoveredBlock762Value1) topAttachment: (recoveredBlock762Value2).
    recoveredBlock762Value3 := recoveredBlock762Value0.
    recoveredBlock762Value4 := recoveredLocal14.
    (recoveredBlock762Value3) topWidget: (recoveredBlock762Value4).
    recoveredBlock762Value5 := recoveredBlock762Value0.
    (recoveredBlock762Value5) topOffset: (0).
    recoveredBlock762Value6 := recoveredBlock762Value0.
    recoveredBlock762Value7 := XmATTACHFORM.
    (recoveredBlock762Value6) leftAttachment: (recoveredBlock762Value7).
    recoveredBlock762Value8 := recoveredBlock762Value0.
    (recoveredBlock762Value8) leftOffset: (5).
    recoveredBlock762Value9 := recoveredBlock762Value0.
    recoveredBlock762Value10 := XmATTACHFORM.
    (recoveredBlock762Value9) rightAttachment: (recoveredBlock762Value10).
    recoveredBlock762Value11 := (recoveredBlock762Value0) rightOffset: (5).
    recoveredBlock762Value11
].
            recoveredPC := 822.
        ].
        recoveredStep = 822 ifTrue: [
            (recoveredStack0) setValuesBlock: (recoveredStack1).
            recoveredPC := 827.
        ].
        recoveredStep = 827 ifTrue: [
            recoveredStack0 := recoveredLocal15.
            recoveredPC := 830.
        ].
        recoveredStep = 830 ifTrue: [
            recoveredStack1 := [:recoveredBlock830Arg1 | 
    | recoveredBlock830Value0 recoveredBlock830Value1 recoveredBlock830Value2 recoveredBlock830Value3 recoveredBlock830Value4 recoveredBlock830Value5 recoveredBlock830Value6 recoveredBlock830Value7 recoveredBlock830Value8 recoveredBlock830Value9 recoveredBlock830Value10 recoveredBlock830Value11 |
    recoveredBlock830Value0 := recoveredBlock830Arg1.
    recoveredBlock830Value1 := recoveredBlock830Value0.
    recoveredBlock830Value2 := XmATTACHFORM.
    (recoveredBlock830Value1) topAttachment: (recoveredBlock830Value2).
    recoveredBlock830Value3 := recoveredBlock830Value0.
    (recoveredBlock830Value3) topOffset: (5).
    recoveredBlock830Value4 := recoveredBlock830Value0.
    recoveredBlock830Value5 := XmATTACHWIDGET.
    (recoveredBlock830Value4) rightAttachment: (recoveredBlock830Value5).
    recoveredBlock830Value6 := recoveredBlock830Value0.
    recoveredBlock830Value7 := recoveredLocal14.
    (recoveredBlock830Value6) rightWidget: (recoveredBlock830Value7).
    recoveredBlock830Value8 := recoveredBlock830Value0.
    (recoveredBlock830Value8) rightOffset: (0).
    recoveredBlock830Value9 := recoveredBlock830Value0.
    recoveredBlock830Value10 := XmATTACHFORM.
    (recoveredBlock830Value9) leftAttachment: (recoveredBlock830Value10).
    recoveredBlock830Value11 := (recoveredBlock830Value0) leftOffset: (5).
    recoveredBlock830Value11
].
            recoveredPC := 890.
        ].
        recoveredStep = 890 ifTrue: [
            (recoveredStack0) setValuesBlock: (recoveredStack1).
            recoveredPC := 895.
        ].
        recoveredStep = 895 ifTrue: [
            recoveredStack0 := recoveredLocal14.
            recoveredPC := 898.
        ].
        recoveredStep = 898 ifTrue: [
            recoveredStack1 := [:block2812e308Arg1 | 
    | block2812e308Value0 block2812e308Value1 block2812e308Value2 block2812e308Value3 block2812e308Value4 block2812e308Value5 block2812e308Value6 block2812e308Value7 block2812e308Value8 block2812e308Value9 |
    block2812e308Value0 := block2812e308Arg1.
    block2812e308Value1 := block2812e308Value0.
    block2812e308Value2 := XmATTACHWIDGET.
    (block2812e308Value1) topAttachment: (block2812e308Value2).
    block2812e308Value3 := block2812e308Value0.
    (block2812e308Value3) topOffset: (5).
    block2812e308Value4 := block2812e308Value0.
    block2812e308Value5 := XmATTACHFORM.
    (block2812e308Value4) rightAttachment: (block2812e308Value5).
    block2812e308Value6 := block2812e308Value0.
    (block2812e308Value6) rightOffset: (5).
    block2812e308Value7 := block2812e308Value0.
    block2812e308Value8 := XmATTACHFORM.
    (block2812e308Value7) leftAttachment: (block2812e308Value8).
    block2812e308Value9 := (block2812e308Value0) leftOffset: (197).
    block2812e308Value9
].
            recoveredPC := 902.
        ].
        recoveredStep = 902 ifTrue: [
            recoveredPC := 954.
        ].
        recoveredStep = 954 ifTrue: [
            (recoveredStack0) setValuesBlock: (recoveredStack1).
            recoveredPC := 959.
        ].
        recoveredStep = 959 ifTrue: [
            recoveredStack0 := recoveredLocal20.
            recoveredPC := 962.
        ].
        recoveredStep = 962 ifTrue: [
            recoveredStack1 := [:block2812e32cArg1 | 
    | block2812e32cValue0 block2812e32cValue1 block2812e32cValue2 block2812e32cValue3 block2812e32cValue4 block2812e32cValue5 block2812e32cValue6 block2812e32cValue7 block2812e32cValue8 block2812e32cValue9 |
    block2812e32cValue0 := block2812e32cArg1.
    block2812e32cValue1 := block2812e32cValue0.
    block2812e32cValue2 := XmATTACHFORM.
    (block2812e32cValue1) topAttachment: (block2812e32cValue2).
    block2812e32cValue3 := block2812e32cValue0.
    (block2812e32cValue3) topOffset: (0).
    block2812e32cValue4 := block2812e32cValue0.
    block2812e32cValue5 := XmATTACHFORM.
    (block2812e32cValue4) leftAttachment: (block2812e32cValue5).
    block2812e32cValue6 := block2812e32cValue0.
    (block2812e32cValue6) leftOffset: (0).
    block2812e32cValue7 := block2812e32cValue0.
    block2812e32cValue8 := XmATTACHFORM.
    (block2812e32cValue7) rightAttachment: (block2812e32cValue8).
    block2812e32cValue9 := (block2812e32cValue0) rightOffset: (0).
    block2812e32cValue9
].
            recoveredPC := 966.
        ].
        recoveredStep = 966 ifTrue: [
            recoveredPC := 1016.
        ].
        recoveredStep = 1016 ifTrue: [
            (recoveredStack0) setValuesBlock: (recoveredStack1).
            recoveredPC := 1021.
        ].
        recoveredStep = 1021 ifTrue: [
            recoveredStack0 := recoveredLocal19.
            recoveredPC := 1024.
        ].
        recoveredStep = 1024 ifTrue: [
            recoveredStack1 := [:recoveredBlock1024Arg1 | 
    | recoveredBlock1024Value0 recoveredBlock1024Value1 recoveredBlock1024Value2 recoveredBlock1024Value3 recoveredBlock1024Value4 recoveredBlock1024Value5 recoveredBlock1024Value6 recoveredBlock1024Value7 recoveredBlock1024Value8 recoveredBlock1024Value9 recoveredBlock1024Value10 recoveredBlock1024Value11 |
    recoveredBlock1024Value0 := recoveredBlock1024Arg1.
    recoveredBlock1024Value1 := recoveredBlock1024Value0.
    recoveredBlock1024Value2 := XmATTACHWIDGET.
    (recoveredBlock1024Value1) topAttachment: (recoveredBlock1024Value2).
    recoveredBlock1024Value3 := recoveredBlock1024Value0.
    recoveredBlock1024Value4 := recoveredLocal20.
    (recoveredBlock1024Value3) topWidget: (recoveredBlock1024Value4).
    recoveredBlock1024Value5 := recoveredBlock1024Value0.
    (recoveredBlock1024Value5) topOffset: (0).
    recoveredBlock1024Value6 := recoveredBlock1024Value0.
    recoveredBlock1024Value7 := XmATTACHFORM.
    (recoveredBlock1024Value6) leftAttachment: (recoveredBlock1024Value7).
    recoveredBlock1024Value8 := recoveredBlock1024Value0.
    (recoveredBlock1024Value8) leftOffset: (0).
    recoveredBlock1024Value9 := recoveredBlock1024Value0.
    recoveredBlock1024Value10 := XmATTACHFORM.
    (recoveredBlock1024Value9) rightAttachment: (recoveredBlock1024Value10).
    recoveredBlock1024Value11 := (recoveredBlock1024Value0) rightOffset: (0).
    recoveredBlock1024Value11
].
            recoveredPC := 1084.
        ].
        recoveredStep = 1084 ifTrue: [
            (recoveredStack0) setValuesBlock: (recoveredStack1).
            recoveredPC := 1089.
        ].
        recoveredStep = 1089 ifTrue: [
            recoveredStack0 := recoveredLocal11.
            recoveredPC := 1092.
        ].
        recoveredStep = 1092 ifTrue: [
            recoveredStack1 := [:recoveredBlock1092Arg1 | 
    | recoveredBlock1092Value0 recoveredBlock1092Value1 recoveredBlock1092Value2 recoveredBlock1092Value3 recoveredBlock1092Value4 recoveredBlock1092Value5 recoveredBlock1092Value6 recoveredBlock1092Value7 recoveredBlock1092Value8 recoveredBlock1092Value9 recoveredBlock1092Value10 recoveredBlock1092Value11 recoveredBlock1092Value12 recoveredBlock1092Value13 |
    recoveredBlock1092Value0 := recoveredBlock1092Arg1.
    recoveredBlock1092Value1 := recoveredBlock1092Value0.
    recoveredBlock1092Value2 := XmATTACHWIDGET.
    (recoveredBlock1092Value1) topAttachment: (recoveredBlock1092Value2).
    recoveredBlock1092Value3 := recoveredBlock1092Value0.
    recoveredBlock1092Value4 := recoveredLocal19.
    (recoveredBlock1092Value3) topWidget: (recoveredBlock1092Value4).
    recoveredBlock1092Value5 := recoveredBlock1092Value0.
    (recoveredBlock1092Value5) topOffset: (5).
    recoveredBlock1092Value6 := recoveredBlock1092Value0.
    recoveredBlock1092Value7 := XmATTACHFORM.
    (recoveredBlock1092Value6) leftAttachment: (recoveredBlock1092Value7).
    recoveredBlock1092Value8 := recoveredBlock1092Value0.
    (recoveredBlock1092Value8) leftOffset: (5).
    recoveredBlock1092Value9 := recoveredBlock1092Value0.
    recoveredBlock1092Value10 := XmATTACHWIDGET.
    (recoveredBlock1092Value9) rightAttachment: (recoveredBlock1092Value10).
    recoveredBlock1092Value11 := recoveredBlock1092Value0.
    recoveredBlock1092Value12 := recoveredLocal12.
    (recoveredBlock1092Value11) rightWidget: (recoveredBlock1092Value12).
    recoveredBlock1092Value13 := recoveredBlock1092Value0.
    (recoveredBlock1092Value13) rightOffset: (0).
    recoveredBlock1092Value0
].
            recoveredPC := 1160.
        ].
        recoveredStep = 1160 ifTrue: [
            (recoveredStack0) setValuesBlock: (recoveredStack1).
            recoveredPC := 1165.
        ].
        recoveredStep = 1165 ifTrue: [
            recoveredStack0 := recoveredLocal12.
            recoveredPC := 1168.
        ].
        recoveredStep = 1168 ifTrue: [
            recoveredStack1 := [:recoveredBlock1168Arg1 | 
    | recoveredBlock1168Value0 recoveredBlock1168Value1 recoveredBlock1168Value2 recoveredBlock1168Value3 recoveredBlock1168Value4 recoveredBlock1168Value5 recoveredBlock1168Value6 recoveredBlock1168Value7 recoveredBlock1168Value8 recoveredBlock1168Value9 recoveredBlock1168Value10 recoveredBlock1168Value11 |
    recoveredBlock1168Value0 := recoveredBlock1168Arg1.
    recoveredBlock1168Value1 := recoveredBlock1168Value0.
    recoveredBlock1168Value2 := XmATTACHWIDGET.
    (recoveredBlock1168Value1) topAttachment: (recoveredBlock1168Value2).
    recoveredBlock1168Value3 := recoveredBlock1168Value0.
    recoveredBlock1168Value4 := recoveredLocal19.
    (recoveredBlock1168Value3) topWidget: (recoveredBlock1168Value4).
    recoveredBlock1168Value5 := recoveredBlock1168Value0.
    (recoveredBlock1168Value5) topOffset: (5).
    recoveredBlock1168Value6 := recoveredBlock1168Value0.
    recoveredBlock1168Value7 := XmATTACHFORM.
    (recoveredBlock1168Value6) rightAttachment: (recoveredBlock1168Value7).
    recoveredBlock1168Value8 := recoveredBlock1168Value0.
    (recoveredBlock1168Value8) rightOffset: (5).
    recoveredBlock1168Value9 := recoveredBlock1168Value0.
    recoveredBlock1168Value10 := XmATTACHPOSITION.
    (recoveredBlock1168Value9) leftAttachment: (recoveredBlock1168Value10).
    recoveredBlock1168Value11 := recoveredBlock1168Value0.
    (recoveredBlock1168Value11) leftPosition: (50).
    recoveredBlock1168Value0
].
            recoveredPC := 1228.
        ].
        recoveredStep = 1228 ifTrue: [
            (recoveredStack0) setValuesBlock: (recoveredStack1).
            recoveredPC := 1233.
        ].
        recoveredStep = 1233 ifTrue: [
            recoveredStack0 := recoveredLocal9.
            recoveredPC := 1236.
        ].
        recoveredStep = 1236 ifTrue: [
            recoveredStack1 := [:recoveredBlock1236Arg1 | 
    | recoveredBlock1236Value0 recoveredBlock1236Value1 recoveredBlock1236Value2 recoveredBlock1236Value3 recoveredBlock1236Value4 recoveredBlock1236Value5 recoveredBlock1236Value6 recoveredBlock1236Value7 recoveredBlock1236Value8 recoveredBlock1236Value9 recoveredBlock1236Value10 recoveredBlock1236Value11 recoveredBlock1236Value12 recoveredBlock1236Value13 |
    recoveredBlock1236Value0 := recoveredBlock1236Arg1.
    recoveredBlock1236Value1 := recoveredBlock1236Value0.
    recoveredBlock1236Value2 := XmATTACHWIDGET.
    (recoveredBlock1236Value1) topAttachment: (recoveredBlock1236Value2).
    recoveredBlock1236Value3 := recoveredBlock1236Value0.
    recoveredBlock1236Value4 := recoveredLocal11.
    (recoveredBlock1236Value3) topWidget: (recoveredBlock1236Value4).
    recoveredBlock1236Value5 := recoveredBlock1236Value0.
    (recoveredBlock1236Value5) topOffset: (5).
    recoveredBlock1236Value6 := recoveredBlock1236Value0.
    recoveredBlock1236Value7 := XmATTACHFORM.
    (recoveredBlock1236Value6) leftAttachment: (recoveredBlock1236Value7).
    recoveredBlock1236Value8 := recoveredBlock1236Value0.
    (recoveredBlock1236Value8) leftOffset: (5).
    recoveredBlock1236Value9 := recoveredBlock1236Value0.
    recoveredBlock1236Value10 := XmATTACHWIDGET.
    (recoveredBlock1236Value9) rightAttachment: (recoveredBlock1236Value10).
    recoveredBlock1236Value11 := recoveredBlock1236Value0.
    recoveredBlock1236Value12 := recoveredLocal10.
    (recoveredBlock1236Value11) rightWidget: (recoveredBlock1236Value12).
    recoveredBlock1236Value13 := recoveredBlock1236Value0.
    (recoveredBlock1236Value13) rightOffset: (0).
    recoveredBlock1236Value0
].
            recoveredPC := 1304.
        ].
        recoveredStep = 1304 ifTrue: [
            (recoveredStack0) setValuesBlock: (recoveredStack1).
            recoveredPC := 1309.
        ].
        recoveredStep = 1309 ifTrue: [
            recoveredStack0 := recoveredLocal10.
            recoveredPC := 1312.
        ].
        recoveredStep = 1312 ifTrue: [
            recoveredStack1 := [:recoveredBlock1312Arg1 | 
    | recoveredBlock1312Value0 recoveredBlock1312Value1 recoveredBlock1312Value2 recoveredBlock1312Value3 recoveredBlock1312Value4 recoveredBlock1312Value5 recoveredBlock1312Value6 recoveredBlock1312Value7 recoveredBlock1312Value8 recoveredBlock1312Value9 recoveredBlock1312Value10 recoveredBlock1312Value11 |
    recoveredBlock1312Value0 := recoveredBlock1312Arg1.
    recoveredBlock1312Value1 := recoveredBlock1312Value0.
    recoveredBlock1312Value2 := XmATTACHWIDGET.
    (recoveredBlock1312Value1) topAttachment: (recoveredBlock1312Value2).
    recoveredBlock1312Value3 := recoveredBlock1312Value0.
    recoveredBlock1312Value4 := recoveredLocal11.
    (recoveredBlock1312Value3) topWidget: (recoveredBlock1312Value4).
    recoveredBlock1312Value5 := recoveredBlock1312Value0.
    (recoveredBlock1312Value5) topOffset: (5).
    recoveredBlock1312Value6 := recoveredBlock1312Value0.
    recoveredBlock1312Value7 := XmATTACHFORM.
    (recoveredBlock1312Value6) rightAttachment: (recoveredBlock1312Value7).
    recoveredBlock1312Value8 := recoveredBlock1312Value0.
    (recoveredBlock1312Value8) rightOffset: (5).
    recoveredBlock1312Value9 := recoveredBlock1312Value0.
    recoveredBlock1312Value10 := XmATTACHPOSITION.
    (recoveredBlock1312Value9) leftAttachment: (recoveredBlock1312Value10).
    recoveredBlock1312Value11 := recoveredBlock1312Value0.
    (recoveredBlock1312Value11) leftPosition: (50).
    recoveredBlock1312Value0
].
            recoveredPC := 1372.
        ].
        recoveredStep = 1372 ifTrue: [
            (recoveredStack0) setValuesBlock: (recoveredStack1).
            recoveredPC := 1377.
        ].
        recoveredStep = 1377 ifTrue: [
            recoveredStack0 := recoveredLocal7.
            recoveredPC := 1380.
        ].
        recoveredStep = 1380 ifTrue: [
            recoveredStack1 := [:recoveredBlock1380Arg1 | 
    | recoveredBlock1380Value0 recoveredBlock1380Value1 recoveredBlock1380Value2 recoveredBlock1380Value3 recoveredBlock1380Value4 recoveredBlock1380Value5 recoveredBlock1380Value6 recoveredBlock1380Value7 recoveredBlock1380Value8 recoveredBlock1380Value9 recoveredBlock1380Value10 recoveredBlock1380Value11 recoveredBlock1380Value12 recoveredBlock1380Value13 |
    recoveredBlock1380Value0 := recoveredBlock1380Arg1.
    recoveredBlock1380Value1 := recoveredBlock1380Value0.
    recoveredBlock1380Value2 := XmATTACHWIDGET.
    (recoveredBlock1380Value1) topAttachment: (recoveredBlock1380Value2).
    recoveredBlock1380Value3 := recoveredBlock1380Value0.
    recoveredBlock1380Value4 := recoveredLocal9.
    (recoveredBlock1380Value3) topWidget: (recoveredBlock1380Value4).
    recoveredBlock1380Value5 := recoveredBlock1380Value0.
    (recoveredBlock1380Value5) topOffset: (5).
    recoveredBlock1380Value6 := recoveredBlock1380Value0.
    recoveredBlock1380Value7 := XmATTACHFORM.
    (recoveredBlock1380Value6) leftAttachment: (recoveredBlock1380Value7).
    recoveredBlock1380Value8 := recoveredBlock1380Value0.
    (recoveredBlock1380Value8) leftOffset: (5).
    recoveredBlock1380Value9 := recoveredBlock1380Value0.
    recoveredBlock1380Value10 := XmATTACHWIDGET.
    (recoveredBlock1380Value9) rightAttachment: (recoveredBlock1380Value10).
    recoveredBlock1380Value11 := recoveredBlock1380Value0.
    recoveredBlock1380Value12 := recoveredLocal8.
    (recoveredBlock1380Value11) rightWidget: (recoveredBlock1380Value12).
    recoveredBlock1380Value13 := recoveredBlock1380Value0.
    (recoveredBlock1380Value13) rightOffset: (0).
    recoveredBlock1380Value0
].
            recoveredPC := 1448.
        ].
        recoveredStep = 1448 ifTrue: [
            (recoveredStack0) setValuesBlock: (recoveredStack1).
            recoveredPC := 1453.
        ].
        recoveredStep = 1453 ifTrue: [
            recoveredStack0 := recoveredLocal8.
            recoveredPC := 1456.
        ].
        recoveredStep = 1456 ifTrue: [
            recoveredStack1 := [:recoveredBlock1456Arg1 | 
    | recoveredBlock1456Value0 recoveredBlock1456Value1 recoveredBlock1456Value2 recoveredBlock1456Value3 recoveredBlock1456Value4 recoveredBlock1456Value5 recoveredBlock1456Value6 recoveredBlock1456Value7 recoveredBlock1456Value8 recoveredBlock1456Value9 recoveredBlock1456Value10 recoveredBlock1456Value11 |
    recoveredBlock1456Value0 := recoveredBlock1456Arg1.
    recoveredBlock1456Value1 := recoveredBlock1456Value0.
    recoveredBlock1456Value2 := XmATTACHWIDGET.
    (recoveredBlock1456Value1) topAttachment: (recoveredBlock1456Value2).
    recoveredBlock1456Value3 := recoveredBlock1456Value0.
    recoveredBlock1456Value4 := recoveredLocal9.
    (recoveredBlock1456Value3) topWidget: (recoveredBlock1456Value4).
    recoveredBlock1456Value5 := recoveredBlock1456Value0.
    (recoveredBlock1456Value5) topOffset: (5).
    recoveredBlock1456Value6 := recoveredBlock1456Value0.
    recoveredBlock1456Value7 := XmATTACHFORM.
    (recoveredBlock1456Value6) rightAttachment: (recoveredBlock1456Value7).
    recoveredBlock1456Value8 := recoveredBlock1456Value0.
    (recoveredBlock1456Value8) rightOffset: (5).
    recoveredBlock1456Value9 := recoveredBlock1456Value0.
    recoveredBlock1456Value10 := XmATTACHPOSITION.
    (recoveredBlock1456Value9) leftAttachment: (recoveredBlock1456Value10).
    recoveredBlock1456Value11 := recoveredBlock1456Value0.
    (recoveredBlock1456Value11) leftPosition: (50).
    recoveredBlock1456Value0
].
            recoveredPC := 1516.
        ].
        recoveredStep = 1516 ifTrue: [
            (recoveredStack0) setValuesBlock: (recoveredStack1).
            recoveredPC := 1521.
        ].
        recoveredStep = 1521 ifTrue: [
            recoveredStack0 := recoveredLocal6.
            recoveredPC := 1524.
        ].
        recoveredStep = 1524 ifTrue: [
            recoveredStack1 := [:recoveredBlock1524Arg1 | 
    | recoveredBlock1524Value0 recoveredBlock1524Value1 recoveredBlock1524Value2 recoveredBlock1524Value3 recoveredBlock1524Value4 recoveredBlock1524Value5 recoveredBlock1524Value6 recoveredBlock1524Value7 recoveredBlock1524Value8 recoveredBlock1524Value9 recoveredBlock1524Value10 recoveredBlock1524Value11 recoveredBlock1524Value12 recoveredBlock1524Value13 |
    recoveredBlock1524Value0 := recoveredBlock1524Arg1.
    recoveredBlock1524Value1 := recoveredBlock1524Value0.
    recoveredBlock1524Value2 := XmATTACHWIDGET.
    (recoveredBlock1524Value1) topAttachment: (recoveredBlock1524Value2).
    recoveredBlock1524Value3 := recoveredBlock1524Value0.
    recoveredBlock1524Value4 := recoveredLocal7.
    (recoveredBlock1524Value3) topWidget: (recoveredBlock1524Value4).
    recoveredBlock1524Value5 := recoveredBlock1524Value0.
    (recoveredBlock1524Value5) topOffset: (5).
    recoveredBlock1524Value6 := recoveredBlock1524Value0.
    recoveredBlock1524Value7 := XmATTACHFORM.
    (recoveredBlock1524Value6) leftAttachment: (recoveredBlock1524Value7).
    recoveredBlock1524Value8 := recoveredBlock1524Value0.
    (recoveredBlock1524Value8) leftOffset: (5).
    recoveredBlock1524Value9 := recoveredBlock1524Value0.
    recoveredBlock1524Value10 := XmATTACHWIDGET.
    (recoveredBlock1524Value9) rightAttachment: (recoveredBlock1524Value10).
    recoveredBlock1524Value11 := recoveredBlock1524Value0.
    recoveredBlock1524Value12 := recoveredLocal5.
    (recoveredBlock1524Value11) rightWidget: (recoveredBlock1524Value12).
    recoveredBlock1524Value13 := (recoveredBlock1524Value0) rightOffset: (0).
    recoveredBlock1524Value13
].
            recoveredPC := 1592.
        ].
        recoveredStep = 1592 ifTrue: [
            (recoveredStack0) setValuesBlock: (recoveredStack1).
            recoveredPC := 1597.
        ].
        recoveredStep = 1597 ifTrue: [
            recoveredStack0 := recoveredLocal5.
            recoveredPC := 1600.
        ].
        recoveredStep = 1600 ifTrue: [
            recoveredStack1 := [:recoveredBlock1600Arg1 | 
    | recoveredBlock1600Value0 recoveredBlock1600Value1 recoveredBlock1600Value2 recoveredBlock1600Value3 recoveredBlock1600Value4 recoveredBlock1600Value5 recoveredBlock1600Value6 recoveredBlock1600Value7 recoveredBlock1600Value8 recoveredBlock1600Value9 recoveredBlock1600Value10 recoveredBlock1600Value11 |
    recoveredBlock1600Value0 := recoveredBlock1600Arg1.
    recoveredBlock1600Value1 := recoveredBlock1600Value0.
    recoveredBlock1600Value2 := XmATTACHWIDGET.
    (recoveredBlock1600Value1) topAttachment: (recoveredBlock1600Value2).
    recoveredBlock1600Value3 := recoveredBlock1600Value0.
    recoveredBlock1600Value4 := recoveredLocal7.
    (recoveredBlock1600Value3) topWidget: (recoveredBlock1600Value4).
    recoveredBlock1600Value5 := recoveredBlock1600Value0.
    (recoveredBlock1600Value5) topOffset: (5).
    recoveredBlock1600Value6 := recoveredBlock1600Value0.
    recoveredBlock1600Value7 := XmATTACHFORM.
    (recoveredBlock1600Value6) rightAttachment: (recoveredBlock1600Value7).
    recoveredBlock1600Value8 := recoveredBlock1600Value0.
    (recoveredBlock1600Value8) rightOffset: (5).
    recoveredBlock1600Value9 := recoveredBlock1600Value0.
    recoveredBlock1600Value10 := XmATTACHPOSITION.
    (recoveredBlock1600Value9) leftAttachment: (recoveredBlock1600Value10).
    recoveredBlock1600Value11 := (recoveredBlock1600Value0) leftPosition: (50).
    recoveredBlock1600Value11
].
            recoveredPC := 1660.
        ].
        recoveredStep = 1660 ifTrue: [
            (recoveredStack0) setValuesBlock: (recoveredStack1).
            recoveredPC := 1665.
        ].
        recoveredStep = 1665 ifTrue: [
            recoveredStack0 := recoveredLocal18.
            recoveredPC := 1668.
        ].
        recoveredStep = 1668 ifTrue: [
            recoveredStack1 := [:recoveredBlock1668Arg1 | 
    | recoveredBlock1668Value0 recoveredBlock1668Value1 recoveredBlock1668Value2 recoveredBlock1668Value3 recoveredBlock1668Value4 recoveredBlock1668Value5 recoveredBlock1668Value6 recoveredBlock1668Value7 recoveredBlock1668Value8 recoveredBlock1668Value9 recoveredBlock1668Value10 recoveredBlock1668Value11 recoveredBlock1668Value12 recoveredBlock1668Value13 recoveredBlock1668Value14 |
    recoveredBlock1668Value0 := recoveredBlock1668Arg1.
    recoveredBlock1668Value1 := recoveredBlock1668Value0.
    recoveredBlock1668Value2 := XmATTACHWIDGET.
    (recoveredBlock1668Value1) topAttachment: (recoveredBlock1668Value2).
    recoveredBlock1668Value3 := recoveredBlock1668Value0.
    recoveredBlock1668Value4 := recoveredLocal6.
    (recoveredBlock1668Value3) topWidget: (recoveredBlock1668Value4).
    recoveredBlock1668Value5 := recoveredBlock1668Value0.
    (recoveredBlock1668Value5) topOffset: (0).
    recoveredBlock1668Value6 := recoveredBlock1668Value0.
    recoveredBlock1668Value7 := XmATTACHFORM.
    (recoveredBlock1668Value6) bottomAttachment: (recoveredBlock1668Value7).
    recoveredBlock1668Value8 := recoveredBlock1668Value0.
    (recoveredBlock1668Value8) bottomOffset: (0).
    recoveredBlock1668Value9 := recoveredBlock1668Value0.
    recoveredBlock1668Value10 := XmATTACHFORM.
    (recoveredBlock1668Value9) leftAttachment: (recoveredBlock1668Value10).
    recoveredBlock1668Value11 := recoveredBlock1668Value0.
    (recoveredBlock1668Value11) leftOffset: (0).
    recoveredBlock1668Value12 := recoveredBlock1668Value0.
    recoveredBlock1668Value13 := XmATTACHFORM.
    (recoveredBlock1668Value12) rightAttachment: (recoveredBlock1668Value13).
    recoveredBlock1668Value14 := (recoveredBlock1668Value0) rightOffset: (0).
    recoveredBlock1668Value14
].
            recoveredPC := 1742.
        ].
        recoveredStep = 1742 ifTrue: [
            (recoveredStack0) setValuesBlock: (recoveredStack1).
            recoveredPC := 1747.
        ].
        recoveredStep = 1747 ifTrue: [
            recoveredStack0 := recoveredLocal12.
            recoveredPC := 1750.
        ].
        recoveredStep = 1750 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 1751.
        ].
        recoveredStep = 1751 ifTrue: [
            recoveredStack2 := XmNlosingFocusCallback.
            recoveredPC := 1754.
        ].
        recoveredStep = 1754 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 1755.
        ].
        recoveredStep = 1755 ifTrue: [
            recoveredStack4 := 'widgetMemoryLocationInstChange:clientData:callData:'.
            recoveredPC := 1758.
        ].
        recoveredStep = 1758 ifTrue: [
            recoveredStack5 := nil.
            recoveredPC := 1759.
        ].
        recoveredStep = 1759 ifTrue: [
            (recoveredStack1) addCallback: (recoveredStack2) receiver: (recoveredStack3) selector: (recoveredStack4) clientData: (recoveredStack5).
            recoveredPC := 1763.
        ].
        recoveredStep = 1763 ifTrue: [
            recoveredStack1 := XmNsingleSelectionCallback.
            recoveredPC := 1766.
        ].
        recoveredStep = 1766 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 1767.
        ].
        recoveredStep = 1767 ifTrue: [
            recoveredStack3 := 'widgetMemoryLocationInstChange:clientData:callData:'.
            recoveredPC := 1770.
        ].
        recoveredStep = 1770 ifTrue: [
            recoveredStack4 := nil.
            recoveredPC := 1771.
        ].
        recoveredStep = 1771 ifTrue: [
            (recoveredStack0) addCallback: (recoveredStack1) receiver: (recoveredStack2) selector: (recoveredStack3) clientData: (recoveredStack4).
            recoveredPC := 1775.
        ].
        recoveredStep = 1775 ifTrue: [
            recoveredStack0 := recoveredLocal10.
            recoveredPC := 1778.
        ].
        recoveredStep = 1778 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 1779.
        ].
        recoveredStep = 1779 ifTrue: [
            recoveredStack2 := XmNlosingFocusCallback.
            recoveredPC := 1782.
        ].
        recoveredStep = 1782 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 1783.
        ].
        recoveredStep = 1783 ifTrue: [
            recoveredStack4 := 'widgetMemoryLocationRefChange:clientData:callData:'.
            recoveredPC := 1786.
        ].
        recoveredStep = 1786 ifTrue: [
            recoveredStack5 := nil.
            recoveredPC := 1787.
        ].
        recoveredStep = 1787 ifTrue: [
            (recoveredStack1) addCallback: (recoveredStack2) receiver: (recoveredStack3) selector: (recoveredStack4) clientData: (recoveredStack5).
            recoveredPC := 1791.
        ].
        recoveredStep = 1791 ifTrue: [
            recoveredStack1 := XmNsingleSelectionCallback.
            recoveredPC := 1794.
        ].
        recoveredStep = 1794 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 1795.
        ].
        recoveredStep = 1795 ifTrue: [
            recoveredStack3 := 'widgetMemoryLocationRefChange:clientData:callData:'.
            recoveredPC := 1798.
        ].
        recoveredStep = 1798 ifTrue: [
            recoveredStack4 := nil.
            recoveredPC := 1799.
        ].
        recoveredStep = 1799 ifTrue: [
            (recoveredStack0) addCallback: (recoveredStack1) receiver: (recoveredStack2) selector: (recoveredStack3) clientData: (recoveredStack4).
            recoveredPC := 1803.
        ].
        recoveredStep = 1803 ifTrue: [
            recoveredStack0 := recoveredLocal8.
            recoveredPC := 1806.
        ].
        recoveredStep = 1806 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 1807.
        ].
        recoveredStep = 1807 ifTrue: [
            recoveredStack2 := XmNlosingFocusCallback.
            recoveredPC := 1810.
        ].
        recoveredStep = 1810 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 1811.
        ].
        recoveredStep = 1811 ifTrue: [
            recoveredStack4 := 'widgetMemoryLocationSearchResultChange:clientData:callData:'.
            recoveredPC := 1814.
        ].
        recoveredStep = 1814 ifTrue: [
            recoveredStack5 := nil.
            recoveredPC := 1815.
        ].
        recoveredStep = 1815 ifTrue: [
            (recoveredStack1) addCallback: (recoveredStack2) receiver: (recoveredStack3) selector: (recoveredStack4) clientData: (recoveredStack5).
            recoveredPC := 1819.
        ].
        recoveredStep = 1819 ifTrue: [
            recoveredStack1 := XmNsingleSelectionCallback.
            recoveredPC := 1822.
        ].
        recoveredStep = 1822 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 1823.
        ].
        recoveredStep = 1823 ifTrue: [
            recoveredStack3 := 'widgetMemoryLocationSearchResultChange:clientData:callData:'.
            recoveredPC := 1826.
        ].
        recoveredStep = 1826 ifTrue: [
            recoveredStack4 := nil.
            recoveredPC := 1827.
        ].
        recoveredStep = 1827 ifTrue: [
            (recoveredStack0) addCallback: (recoveredStack1) receiver: (recoveredStack2) selector: (recoveredStack3) clientData: (recoveredStack4).
            recoveredPC := 1831.
        ].
        recoveredStep = 1831 ifTrue: [
            recoveredStack0 := recoveredLocal5.
            recoveredPC := 1834.
        ].
        recoveredStep = 1834 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 1835.
        ].
        recoveredStep = 1835 ifTrue: [
            recoveredStack2 := XmNlosingFocusCallback.
            recoveredPC := 1838.
        ].
        recoveredStep = 1838 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 1839.
        ].
        recoveredStep = 1839 ifTrue: [
            recoveredStack4 := 'widgetMemorySegmentLosing:clientData:callData:'.
            recoveredPC := 1842.
        ].
        recoveredStep = 1842 ifTrue: [
            recoveredStack5 := nil.
            recoveredPC := 1843.
        ].
        recoveredStep = 1843 ifTrue: [
            (recoveredStack1) addCallback: (recoveredStack2) receiver: (recoveredStack3) selector: (recoveredStack4) clientData: (recoveredStack5).
            recoveredPC := 1847.
        ].
        recoveredStep = 1847 ifTrue: [
            recoveredStack1 := XmNsingleSelectionCallback.
            recoveredPC := 1850.
        ].
        recoveredStep = 1850 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 1851.
        ].
        recoveredStep = 1851 ifTrue: [
            recoveredStack3 := 'widgetMemorySegmentSingle:clientData:callData:'.
            recoveredPC := 1854.
        ].
        recoveredStep = 1854 ifTrue: [
            recoveredStack4 := nil.
            recoveredPC := 1855.
        ].
        recoveredStep = 1855 ifTrue: [
            (recoveredStack0) addCallback: (recoveredStack1) receiver: (recoveredStack2) selector: (recoveredStack3) clientData: (recoveredStack4).
            recoveredPC := 1859.
        ].
        recoveredStep = 1859 ifTrue: [
            recoveredStack0 := recoveredLocal15.
            recoveredPC := 1862.
        ].
        recoveredStep = 1862 ifTrue: [
            recoveredStack1 := XmNvalueChangedCallback.
            recoveredPC := 1866.
        ].
        recoveredStep = 1866 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 1867.
        ].
        recoveredStep = 1867 ifTrue: [
            recoveredStack3 := 'widgetImplTypeValue:clientData:callData:'.
            recoveredPC := 1870.
        ].
        recoveredStep = 1870 ifTrue: [
            recoveredStack4 := nil.
            recoveredPC := 1871.
        ].
        recoveredStep = 1871 ifTrue: [
            (recoveredStack0) addCallback: (recoveredStack1) receiver: (recoveredStack2) selector: (recoveredStack3) clientData: (recoveredStack4).
            recoveredPC := 1875.
        ].
        recoveredStep = 1875 ifTrue: [
            recoveredStack0 := recoveredLocal14.
            recoveredPC := 1878.
        ].
        recoveredStep = 1878 ifTrue: [
            recoveredStack1 := XmNsingleSelectionCallback.
            recoveredPC := 1882.
        ].
        recoveredStep = 1882 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 1883.
        ].
        recoveredStep = 1883 ifTrue: [
            recoveredStack3 := 'widgetImplTypeSingle:clientData:callData:'.
            recoveredPC := 1886.
        ].
        recoveredStep = 1886 ifTrue: [
            recoveredStack4 := nil.
            recoveredPC := 1887.
        ].
        recoveredStep = 1887 ifTrue: [
            (recoveredStack0) addCallback: (recoveredStack1) receiver: (recoveredStack2) selector: (recoveredStack3) clientData: (recoveredStack4).
            recoveredPC := 1891.
        ].
        recoveredStep = 1891 ifTrue: [
            recoveredStack0 := recoveredLocal21.
            recoveredPC := 1894.
        ].
        recoveredStep = 1894 ifTrue: [
            (recoveredStack0) updateFonts.
            recoveredPC := 1899.
        ].
        recoveredStep = 1899 ifTrue: [
            recoveredStack0 := recoveredLocal22.
            recoveredPC := 1902.
        ].
        recoveredStep = 1902 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

