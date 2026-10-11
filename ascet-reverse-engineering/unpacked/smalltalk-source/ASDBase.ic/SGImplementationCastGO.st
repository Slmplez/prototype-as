"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x200069b0; bytecode file offset 0x908be4"
!SGImplementationCastGO methodsFor: 'recovered'!
isRemoveableFromLine
    | recoveredValue0 |
    recoveredValue0 := (self) isConnectedTwice.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20077714; bytecode file offset 0x9757c8"
!SGImplementationCastGO methodsFor: 'recovered'!
fitToForcePositionRaster
    ^true
! !

"ASDBase.ic method 0x2007886c; bytecode file offset 0x9757c8"
!SGImplementationCastGO methodsFor: 'recovered'!
isImplCastGO
    ^true
! !

"ASDBase.ic method 0x2007ae24; bytecode file offset 0x97c330"
!SGImplementationCastGO methodsFor: 'recovered'!
isConnectableToItself
    ^false
! !

"ASDBase.ic method 0x200e9b68; bytecode file offset 0x9e6424"
!SGImplementationCastGO methodsFor: 'recovered'!
methodsForElement: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) sgClass.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) methods.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x20133a8c; bytecode file offset 0xa3034c"
!SGImplementationCastGO methodsFor: 'recovered'!
doubleClicked: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) element.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack0) selectInElementList.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack0) editElements.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20252140; bytecode file offset 0xb4ea08"
!SGImplementationCastGO methodsFor: 'recovered'!
buildLogic: recoveredArg1 for: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) element.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
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
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := (recoveredStack0) methodsForElement: (recoveredStack1).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := (recoveredStack1) identifier.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack3 := recoveredLocal2.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack4 := recoveredArg2.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := (recoveredStack0) blockId: (recoveredStack1) implCast: (recoveredStack2) methods: (recoveredStack3) hierarchy: (recoveredStack4).
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack3 := recoveredLocal2.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack4 := recoveredArg2.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack0 := (recoveredStack0) buildInterfaceLogic: (recoveredStack1) block: (recoveredStack2) methods: (recoveredStack3) for: (recoveredStack4).
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20420cd8; bytecode file offset 0xd1d5cc"
!SGImplementationCastGO methodsFor: 'recovered'!
createDefaultFrameGO
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredLocal6 recoveredLocal7 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 recoveredValue21 recoveredValue22 recoveredValue23 recoveredValue24 recoveredValue25 recoveredValue26 recoveredValue27 recoveredValue28 recoveredValue29 recoveredValue30 recoveredValue31 recoveredValue32 recoveredValue33 recoveredValue34 recoveredValue35 recoveredValue36 recoveredValue37 recoveredValue38 |
    recoveredValue0 := OrderedCollection.
    recoveredValue1 := (recoveredValue0) new.
    recoveredLocal7 := recoveredValue1.
    recoveredValue2 := DefaultGraphObjectPositionBlock.
    recoveredValue3 := (recoveredValue2) value.
    recoveredLocal6 := recoveredValue3.
    recoveredValue4 := recoveredLocal6.
    recoveredValue5 := PinDistance.
    recoveredValue6 := (recoveredValue5) // (2).
    recoveredValue7 := (recoveredValue4) left: (recoveredValue6).
    recoveredValue8 := recoveredValue7.
    recoveredLocal1 := recoveredValue8.
    recoveredLocal5 := recoveredValue7.
    recoveredValue9 := recoveredLocal6.
    recoveredValue10 := PinDistance.
    recoveredValue11 := (recoveredValue10) // (2).
    recoveredValue12 := (recoveredValue9) up: (recoveredValue11).
    recoveredLocal4 := recoveredValue12.
    recoveredValue13 := recoveredLocal6.
    recoveredValue14 := PinDistance.
    recoveredValue15 := (recoveredValue14) // (2).
    recoveredValue16 := (recoveredValue13) right: (recoveredValue15).
    recoveredLocal3 := recoveredValue16.
    recoveredValue17 := recoveredLocal6.
    recoveredValue18 := PinDistance.
    recoveredValue19 := (recoveredValue18) // (2).
    recoveredValue20 := (recoveredValue17) down: (recoveredValue19).
    recoveredLocal2 := recoveredValue20.
    recoveredValue21 := recoveredLocal7.
    recoveredValue22 := recoveredValue21.
    recoveredValue23 := recoveredLocal5.
    (recoveredValue22) add: (recoveredValue23).
    recoveredValue24 := recoveredValue21.
    recoveredValue25 := recoveredLocal4.
    (recoveredValue24) add: (recoveredValue25).
    recoveredValue26 := recoveredValue21.
    recoveredValue27 := recoveredLocal3.
    (recoveredValue26) add: (recoveredValue27).
    recoveredValue28 := recoveredValue21.
    recoveredValue29 := recoveredLocal2.
    (recoveredValue28) add: (recoveredValue29).
    recoveredValue30 := recoveredValue21.
    recoveredValue31 := recoveredLocal1.
    (recoveredValue30) add: (recoveredValue31).
    recoveredValue32 := RBPolygonGO.
    recoveredValue33 := recoveredLocal7.
    recoveredValue34 := DefaultLineStyle.
    recoveredValue35 := (recoveredValue34) deepCopy.
    recoveredValue36 := DefinedBlockAreaStyle.
    recoveredValue37 := (recoveredValue36) deepCopy.
    recoveredValue38 := (recoveredValue32) createWithPointColl: (recoveredValue33) lineStyle: (recoveredValue35) areaStyle: (recoveredValue37) manager: (self).
    (self) frameGO: (recoveredValue38).
    ^self
! !

