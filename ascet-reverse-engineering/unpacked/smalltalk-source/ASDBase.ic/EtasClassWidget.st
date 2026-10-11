"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20043a1c; bytecode file offset 0x9451f8"
!EtasClassWidget methodsFor: 'recovered'!
displayPane
    | recoveredValue0 |
    recoveredValue0 := (self) widgetAt: ('displayPane').
    ^recoveredValue0
! !

"ASDBase.ic method 0x200480cc; bytecode file offset 0x9451f8"
!EtasClassWidget methodsFor: 'recovered'!
label
    | recoveredValue0 |
    recoveredValue0 := (self) widgetAt: ('lab').
    ^recoveredValue0
! !

"ASDBase.ic method 0x2004e9b4; bytecode file offset 0x94d048"
!EtasClassWidget methodsFor: 'recovered'!
initFonts
    (self) updateFonts.
    ^self
! !

"ASDBase.ic method 0x200532c8; bytecode file offset 0x9505d0"
!EtasClassWidget methodsFor: 'recovered'!
updateForObserver: recoveredArg1
    (self) updateGraphicRepresentation.
    ^self
! !

"ASDBase.ic method 0x2005a80c; bytecode file offset 0x957a6c"
!EtasClassWidget methodsFor: 'recovered'!
expose: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    (self) updateGraphicRepresentation.
    ^self
! !

"ASDBase.ic method 0x201a9e70; bytecode file offset 0xaa6740"
!EtasClassWidget methodsFor: 'recovered'!
initFocusWrapper
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := RBFocusBorderController.
    recoveredValue1 := (recoveredValue0) create.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := recoveredLocal1.
    (recoveredValue2) borderWidth: (3).
    recoveredValue3 := recoveredLocal1.
    recoveredValue4 := OrderedCollection.
    recoveredValue5 := (self) displayPane.
    recoveredValue6 := (recoveredValue4) with: (recoveredValue5).
    (recoveredValue3) addWidgets: (recoveredValue6).
    recoveredValue7 := recoveredLocal1.
    ^recoveredValue7
! !

"ASDBase.ic method 0x202ce9e8; bytecode file offset 0xbcb2b8"
!EtasClassWidget methodsFor: 'recovered'!
updateGraphicRepresentation
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) displayPane.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) gc.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) item.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 24] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := (recoveredStack0) item.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := (recoveredStack0) isRBDBUndefinedObject.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 24] ifFalse: [recoveredPC := 36].
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := (recoveredStack0) displayPane.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            (recoveredStack0) sensitive: (recoveredStack1).
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := (recoveredStack0) displayPane.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            (recoveredStack0) drawBackground.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredPC := 47.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack0 := (recoveredStack0) displayPane.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            (recoveredStack0) sensitive: (recoveredStack1).
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack0 := (recoveredStack0) item.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack1 := (recoveredStack1) displayPane.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            (recoveredStack0) drawGraphicsOn: (recoveredStack1).
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20492778; bytecode file offset 0xd8f098"
!EtasClassWidget methodsFor: 'recovered'!
createWidgetHierarchy
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
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
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := (recoveredStack0) primaryWidget.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := 'displayPane'.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack2 := [:recoveredBlock19Arg1 | 
    | recoveredBlock19Value0 recoveredBlock19Value1 recoveredBlock19Value2 recoveredBlock19Value3 recoveredBlock19Value4 recoveredBlock19Value5 recoveredBlock19Value6 recoveredBlock19Value7 |
    recoveredBlock19Value0 := recoveredBlock19Arg1.
    recoveredBlock19Value1 := recoveredBlock19Value0.
    (recoveredBlock19Value1) borderWidth: (1).
    recoveredBlock19Value2 := recoveredBlock19Value0.
    recoveredBlock19Value3 := recoveredLocal2.
    recoveredBlock19Value4 := (recoveredBlock19Value3) width.
    (recoveredBlock19Value2) width: (recoveredBlock19Value4).
    recoveredBlock19Value5 := recoveredLocal2.
    recoveredBlock19Value6 := (recoveredBlock19Value5) height.
    recoveredBlock19Value7 := (recoveredBlock19Value0) height: (recoveredBlock19Value6).
    recoveredBlock19Value7
].
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack0 := (recoveredStack0) createRBDrawingArea: (recoveredStack1) argBlock: (recoveredStack2).
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack0 := (recoveredStack0) manageChild.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack1 := 'displayPane'.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            (recoveredStack0) at: (recoveredStack1) put: (recoveredStack2).
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack1 := [:block281037bcArg1 | 
    | block281037bcValue0 block281037bcValue1 block281037bcValue2 block281037bcValue3 block281037bcValue4 block281037bcValue5 block281037bcValue6 block281037bcValue7 block281037bcValue8 block281037bcValue9 block281037bcValue10 block281037bcValue11 block281037bcValue12 |
    block281037bcValue0 := block281037bcArg1.
    block281037bcValue1 := block281037bcValue0.
    block281037bcValue2 := XmATTACHFORM.
    (block281037bcValue1) topAttachment: (block281037bcValue2).
    block281037bcValue3 := block281037bcValue0.
    (block281037bcValue3) topOffset: (0).
    block281037bcValue4 := block281037bcValue0.
    block281037bcValue5 := XmATTACHFORM.
    (block281037bcValue4) leftAttachment: (block281037bcValue5).
    block281037bcValue6 := block281037bcValue0.
    (block281037bcValue6) leftOffset: (5).
    block281037bcValue7 := block281037bcValue0.
    block281037bcValue8 := XmATTACHFORM.
    (block281037bcValue7) bottomAttachment: (block281037bcValue8).
    block281037bcValue9 := block281037bcValue0.
    (block281037bcValue9) bottomOffset: (5).
    block281037bcValue10 := block281037bcValue0.
    block281037bcValue11 := XmATTACHFORM.
    (block281037bcValue10) rightAttachment: (block281037bcValue11).
    block281037bcValue12 := (block281037bcValue0) rightOffset: (5).
    block281037bcValue12
].
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            (recoveredStack0) setValuesBlock: (recoveredStack1).
            recoveredPC := 117.
        ].
        recoveredStep = 117 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 120.
        ].
        recoveredStep = 120 ifTrue: [
            recoveredStack1 := XmNexposeCallback.
            recoveredPC := 122.
        ].
        recoveredStep = 122 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 123.
        ].
        recoveredStep = 123 ifTrue: [
            recoveredStack3 := 'expose:clientData:callData:'.
            recoveredPC := 125.
        ].
        recoveredStep = 125 ifTrue: [
            recoveredStack4 := nil.
            recoveredPC := 126.
        ].
        recoveredStep = 126 ifTrue: [
            (recoveredStack0) addCallback: (recoveredStack1) receiver: (recoveredStack2) selector: (recoveredStack3) clientData: (recoveredStack4).
            recoveredPC := 129.
        ].
        recoveredStep = 129 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 132.
        ].
        recoveredStep = 132 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

