"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2003c908; bytecode file offset 0x9391c0"
!SGCallArgumentConnectorGO methodsFor: 'recovered'!
arrowSize
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := ArrowSize.
    recoveredValue1 := (recoveredValue0) + (-1).
    ^recoveredValue1
! !

"ASDBase.ic method 0x20076f6c; bytecode file offset 0x9757c8"
!SGCallArgumentConnectorGO methodsFor: 'recovered'!
isCallConnector
    ^true
! !

"ASDBase.ic method 0x20102c18; bytecode file offset 0x9ff4f4"
!SGCallArgumentConnectorGO methodsFor: 'recovered'!
asStatementBlockCallArgumentCollector
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := SGStatementBlockCallArgumentConnectorGO.
    recoveredValue1 := (self) asCallArgumentCollectorForClass: (recoveredValue0).
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := recoveredLocal1.
    recoveredValue3 := (recoveredValue2) connectionPoint.
    recoveredValue4 := recoveredLocal1.
    (recoveredValue3) owner: (recoveredValue4).
    recoveredValue5 := recoveredLocal1.
    ^recoveredValue5
! !

"ASDBase.ic method 0x20102c30; bytecode file offset 0x9ff4f4"
!SGCallArgumentConnectorGO methodsFor: 'recovered'!
asCallArgumentCollector
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := SGCallArgumentConnectorGO.
    recoveredValue1 := (self) asCallArgumentCollectorForClass: (recoveredValue0).
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := recoveredLocal1.
    recoveredValue3 := (recoveredValue2) connectionPoint.
    recoveredValue4 := recoveredLocal1.
    (recoveredValue3) owner: (recoveredValue4).
    recoveredValue5 := recoveredLocal1.
    ^recoveredValue5
! !

"ASDBase.ic method 0x20384f80; bytecode file offset 0xc81860"
!SGCallArgumentConnectorGO methodsFor: 'recovered'!
connectionAllowedWith: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := super connectionAllowedWith: (recoveredStack1).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) startGO.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 32] ifFalse: [recoveredPC := 22].
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := (recoveredStack0) endGO.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 32] ifFalse: [recoveredPC := 30].
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := true.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := 'Muzaffar'.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := 'Call_40548'.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := (recoveredStack0) == (recoveredStack1).
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := 'hw'.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := 'call_79397'.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack0 := (recoveredStack0) == (recoveredStack1).
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack0 := (recoveredStack0) typeID.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            (recoveredStack0 ~~ recoveredStack1) ifTrue: [recoveredPC := 54] ifFalse: [recoveredPC := 52].
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack0 := true.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack0 := (recoveredStack0) isBoolControl.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 62] ifFalse: [recoveredPC := 60].
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack0 := (recoveredStack0) basicGraphObject.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack0 := (recoveredStack0) typeID.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack1 := (recoveredStack1) typeID.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2045bc20; bytecode file offset 0xd5856c"
!SGCallArgumentConnectorGO methodsFor: 'recovered'!
asCallArgumentCollectorForClass: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 recoveredValue21 recoveredValue22 recoveredValue23 recoveredValue24 recoveredValue25 recoveredValue26 recoveredValue27 recoveredValue28 recoveredValue29 recoveredValue30 recoveredValue31 recoveredValue32 recoveredValue33 recoveredValue34 recoveredValue35 recoveredValue36 recoveredValue37 recoveredValue38 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) new.
    recoveredValue2 := recoveredValue1.
    recoveredValue3 := (self) customerData.
    (recoveredValue2) customerData: (recoveredValue3).
    recoveredValue4 := recoveredValue1.
    recoveredValue5 := (self) manager.
    (recoveredValue4) manager: (recoveredValue5).
    recoveredValue6 := recoveredValue1.
    recoveredValue7 := (self) label.
    (recoveredValue6) label: (recoveredValue7).
    recoveredValue8 := recoveredValue1.
    recoveredValue9 := (self) lineStyle.
    (recoveredValue8) lineStyle: (recoveredValue9).
    recoveredValue10 := recoveredValue1.
    recoveredValue11 := (self) mixingRule.
    (recoveredValue10) mixingRule: (recoveredValue11).
    recoveredValue12 := recoveredValue1.
    recoveredValue13 := (self) subWindowMode.
    (recoveredValue12) subWindowMode: (recoveredValue13).
    recoveredValue14 := recoveredValue1.
    recoveredValue15 := (self) oldRect.
    (recoveredValue14) oldRect: (recoveredValue15).
    recoveredValue16 := recoveredValue1.
    recoveredValue17 := (self) minSize.
    (recoveredValue16) minSize: (recoveredValue17).
    recoveredValue18 := recoveredValue1.
    recoveredValue19 := (self) updateDrawingOrderBasic.
    (recoveredValue18) drawingOrder: (recoveredValue19).
    recoveredValue20 := recoveredValue1.
    recoveredValue21 := (self) connectionPoint.
    (recoveredValue20) connectionPoint: (recoveredValue21).
    recoveredValue22 := recoveredValue1.
    recoveredValue23 := (self) identifier.
    (recoveredValue22) identifier: (recoveredValue23).
    recoveredValue24 := recoveredValue1.
    recoveredValue25 := (self) getDirection.
    (recoveredValue24) setDirection: (recoveredValue25).
    recoveredValue26 := recoveredValue1.
    recoveredValue27 := (self) length.
    (recoveredValue26) length: (recoveredValue27).
    recoveredValue28 := recoveredValue1.
    recoveredValue29 := (self) getPosition.
    (recoveredValue28) position: (recoveredValue29).
    recoveredValue30 := recoveredValue1.
    recoveredValue31 := (self) modelVisibility.
    (recoveredValue30) modelVisibility: (recoveredValue31).
    recoveredValue32 := recoveredValue1.
    (recoveredValue32) userVisibility: (true).
    recoveredValue33 := recoveredValue1.
    recoveredValue34 := (self) isDirectAccess.
    (recoveredValue33) setDirectAccess: (recoveredValue34).
    recoveredValue35 := recoveredValue1.
    recoveredValue36 := (self) isInArg.
    (recoveredValue35) setInArg: (recoveredValue36).
    recoveredValue37 := recoveredValue1.
    recoveredValue38 := (self) isOutArg.
    (recoveredValue37) setOutArg: (recoveredValue38).
    ^recoveredValue1
! !

