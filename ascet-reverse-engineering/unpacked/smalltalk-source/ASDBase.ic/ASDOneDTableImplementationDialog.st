"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2004384c; bytecode file offset 0x9451f8"
!ASDOneDTableImplementationDialog methodsFor: 'recovered'!
widgetASDPrimitiveImplWidgetYDis
    | recoveredValue0 |
    recoveredValue0 := (self) widgetAt: ('widgetASDPrimitiveImplWidgetYDis').
    ^recoveredValue0
! !

"ASDBase.ic method 0x2004410c; bytecode file offset 0x9451f8"
!ASDOneDTableImplementationDialog methodsFor: 'recovered'!
pageYDistribution
    | recoveredValue0 |
    recoveredValue0 := (self) widgetAt: ('pageYDistribution').
    ^recoveredValue0
! !

"ASDBase.ic method 0x2004593c; bytecode file offset 0x9451f8"
!ASDOneDTableImplementationDialog methodsFor: 'recovered'!
widgetASDPrimitiveImplWidgetXDis
    | recoveredValue0 |
    recoveredValue0 := (self) widgetAt: ('widgetASDPrimitiveImplWidgetXDis').
    ^recoveredValue0
! !

"ASDBase.ic method 0x20047cac; bytecode file offset 0x9451f8"
!ASDOneDTableImplementationDialog methodsFor: 'recovered'!
pageXDistribution
    | recoveredValue0 |
    recoveredValue0 := (self) widgetAt: ('pageXDistribution').
    ^recoveredValue0
! !

"ASDBase.ic method 0x200652e4; bytecode file offset 0x961bcc"
!ASDOneDTableImplementationDialog methodsFor: 'recovered'!
hasPageXDistribution
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) modelElement.
    recoveredValue1 := (recoveredValue0) sgClass.
    recoveredValue2 := (recoveredValue1) isGroupCharTable.
    recoveredValue3 := (recoveredValue2) not.
    ^recoveredValue3
! !

"ASDBase.ic method 0x20140b74; bytecode file offset 0xa3d480"
!ASDOneDTableImplementationDialog methodsFor: 'recovered'!
initLocalPages
    | recoveredStack0 recoveredStack1 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            super initLocalPages.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) hasPageXDistribution.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 17].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack0) initializePageXDistribution.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2014e5e8; bytecode file offset 0xa4aef4"
!ASDOneDTableImplementationDialog methodsFor: 'recovered'!
initializePageXDistribution
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) pageXDistributionLabel.
    recoveredValue1 := [
    | recoveredBlock8Value0 |
    recoveredBlock8Value0 := (self) createWidgetHierarchyPageXDistribution.
    recoveredBlock8Value0
].
    recoveredValue2 := (self) initializePageName: ('pageXDistribution') pageLabel: (recoveredValue0) createWidgetHierarchyBlock: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x2017dea4; bytecode file offset 0xa7a780"
!ASDOneDTableImplementationDialog methodsFor: 'recovered'!
asdPrimitiveImplWidgets
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := super asdPrimitiveImplWidgets.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetASDPrimitiveImplWidgetXDis.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            (recoveredStack0) add: (recoveredStack1).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2018d4b8; bytecode file offset 0xa89d88"
!ASDOneDTableImplementationDialog methodsFor: 'recovered'!
allDataElements
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 |
    recoveredValue0 := OrderedCollection.
    recoveredValue1 := (recoveredValue0) new.
    recoveredValue2 := recoveredValue1.
    recoveredValue3 := (self) widgetController.
    recoveredValue4 := (recoveredValue3) majorDataElement.
    recoveredValue5 := (recoveredValue4) values.
    (recoveredValue2) add: (recoveredValue5).
    recoveredValue6 := recoveredValue1.
    recoveredValue7 := (self) widgetController.
    recoveredValue8 := (recoveredValue7) majorDataElement.
    recoveredValue9 := (recoveredValue8) xDistribution.
    (recoveredValue6) add: (recoveredValue9).
    ^recoveredValue1
! !

"ASDBase.ic method 0x2028beac; bytecode file offset 0xb88788"
!ASDOneDTableImplementationDialog methodsFor: 'recovered'!
initWidgetCtrl
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetASDPrimitiveImplWidget.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack3 := (recoveredStack3) majorDataElement.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack3 := (recoveredStack3) values.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack2 := (recoveredStack2) createCtrlFor: (recoveredStack3).
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack1) widgetCtrl: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack1) initWidgetCtrl.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack0) updateWidgets.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := (recoveredStack0) hasPageXDistribution.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 24] ifFalse: [recoveredPC := 41].
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetASDPrimitiveImplWidgetXDis.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack3 := (recoveredStack3) majorDataElement.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack3 := (recoveredStack3) xDistribution.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack2 := (recoveredStack2) createCtrlFor: (recoveredStack3).
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            (recoveredStack1) widgetCtrl: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            (recoveredStack1) initWidgetCtrl.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            (recoveredStack0) updateWidgets.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x203e3490; bytecode file offset 0xcdfe50"
!ASDOneDTableImplementationDialog methodsFor: 'recovered'!
createWidgetHierarchyPageXDistribution
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetDictionary.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack0 := (recoveredStack0) pageXDistribution.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := 'widgetASDPrimitiveImplWidgetXDis'.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := [:block280f85a4Arg1 | 
    | block280f85a4Value0 |
    block280f85a4Value0 := block280f85a4Arg1.
    block280f85a4Value0
].
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := (recoveredStack0) createASDPrimitiveImplementationWidgetNew: (recoveredStack1) argBlock: (recoveredStack2).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := (recoveredStack0) manageChild.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := 'widgetASDPrimitiveImplWidgetXDis'.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            (recoveredStack0) at: (recoveredStack1) put: (recoveredStack2).
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := [:block280f85c8Arg1 | 
    | block280f85c8Value0 block280f85c8Value1 block280f85c8Value2 block280f85c8Value3 block280f85c8Value4 block280f85c8Value5 block280f85c8Value6 block280f85c8Value7 block280f85c8Value8 block280f85c8Value9 block280f85c8Value10 block280f85c8Value11 block280f85c8Value12 |
    block280f85c8Value0 := block280f85c8Arg1.
    block280f85c8Value1 := block280f85c8Value0.
    block280f85c8Value2 := XmATTACHFORM.
    (block280f85c8Value1) topAttachment: (block280f85c8Value2).
    block280f85c8Value3 := block280f85c8Value0.
    (block280f85c8Value3) topOffset: (0).
    block280f85c8Value4 := block280f85c8Value0.
    block280f85c8Value5 := XmATTACHFORM.
    (block280f85c8Value4) rightAttachment: (block280f85c8Value5).
    block280f85c8Value6 := block280f85c8Value0.
    (block280f85c8Value6) rightOffset: (0).
    block280f85c8Value7 := block280f85c8Value0.
    block280f85c8Value8 := XmATTACHFORM.
    (block280f85c8Value7) leftAttachment: (block280f85c8Value8).
    block280f85c8Value9 := block280f85c8Value0.
    (block280f85c8Value9) leftOffset: (0).
    block280f85c8Value10 := block280f85c8Value0.
    block280f85c8Value11 := XmATTACHFORM.
    (block280f85c8Value10) bottomAttachment: (block280f85c8Value11).
    block280f85c8Value12 := (block280f85c8Value0) bottomOffset: (0).
    block280f85c8Value12
].
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            (recoveredStack0) setValuesBlock: (recoveredStack1).
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack0 := Array.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack0 := (recoveredStack0) with: (recoveredStack1) with: (recoveredStack2).
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

