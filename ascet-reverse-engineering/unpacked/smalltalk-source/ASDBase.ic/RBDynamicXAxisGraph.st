"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2005c604; bytecode file offset 0x959680"
!RBDynamicXAxisGraph methodsFor: 'recovered'!
timeAxisInSeconds
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := ASDMeasureEditorOptions.
    recoveredValue1 := (recoveredValue0) instance.
    recoveredValue2 := (recoveredValue1) optionMeasureOsciEditorTimeAxisInSeconds.
    ^recoveredValue2
! !

"ASDBase.ic method 0x20086364; bytecode file offset 0x982e18"
!RBDynamicXAxisGraph methodsFor: 'recovered'!
getStringFromSeconds: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) controller.
    recoveredValue1 := (recoveredValue0) owner.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (recoveredValue1) getStringFromSeconds: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x201cddf4; bytecode file offset 0xaca6c0"
!RBDynamicXAxisGraph methodsFor: 'recovered'!
createValueStringFor: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) controller.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) owner.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack0 := (recoveredStack0) isXYPlotter.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) timeAxisInSeconds.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 20].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := (recoveredStack0) printString.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := (recoveredStack0) getStringFromSeconds: (recoveredStack1).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2022c920; bytecode file offset 0xb291f0"
!RBDynamicXAxisGraph methodsFor: 'recovered'!
getUnitNameFor: recoveredArg1
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
            recoveredStack0 := (recoveredStack0) getStringFromSeconds: (recoveredStack1).
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := Colon.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) first.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) occurrencesOf: (recoveredStack1).
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := 2.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := (recoveredStack0) >= (recoveredStack1).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 21].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := 'h'.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := 1.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 28] ifFalse: [recoveredPC := 31].
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := 'm'.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack0 := 's'.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20338710; bytecode file offset 0xc34ff0"
!RBDynamicXAxisGraph methodsFor: 'recovered'!
createNameUnitTextFor: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) controller.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) showNameUnitText.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := logAxis.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := (recoveredStack0) name.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := logAxis.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := (recoveredStack0) unit.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := (recoveredStack0) controller.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := (recoveredStack0) owner.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := (recoveredStack0) isXYPlotter.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 41] ifFalse: [recoveredPC := 30].
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack0 := (recoveredStack0) timeAxisInSeconds.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 41] ifFalse: [recoveredPC := 36].
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := (recoveredStack0) getUnitNameFor: (recoveredStack1).
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 59] ifFalse: [recoveredPC := 46].
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack1 := ' ['.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack0 := (recoveredStack0) , (recoveredStack1).
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack0 := (recoveredStack0) , (recoveredStack1).
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack1 := ']'.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack0 := (recoveredStack0) , (recoveredStack1).
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2038c60c; bytecode file offset 0xc88eec"
!RBDynamicXAxisGraph methodsFor: 'recovered'!
updateDisplayedObjectsShift
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := logAxis.
    recoveredValue1 := (recoveredValue0) getExtent.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := displayedObjects.
    recoveredValue3 := [:recoveredBlock12Arg1 | 
    | recoveredBlock12Stack0 recoveredBlock12Stack1 recoveredBlock12Stack2 recoveredBlock12Stack3 recoveredBlock12Stack4 recoveredBlock12PC recoveredBlock12Step recoveredBlock12Done recoveredBlock12Result |
    recoveredBlock12Stack0 := self.
    recoveredBlock12PC := 18.
    recoveredBlock12Done := false.
    [recoveredBlock12Done not] whileTrue: [
        recoveredBlock12Step := recoveredBlock12PC.
        recoveredBlock12Step = 18 ifTrue: [
            recoveredBlock12Stack1 := nil.
            recoveredBlock12PC := 19.
        ].
        recoveredBlock12Step = 19 ifTrue: [
            recoveredBlock12Stack2 := recoveredBlock12Arg1.
            recoveredBlock12PC := 20.
        ].
        recoveredBlock12Step = 20 ifTrue: [
            recoveredBlock12Stack3 := RBTextGO.
            recoveredBlock12PC := 22.
        ].
        recoveredBlock12Step = 22 ifTrue: [
            recoveredBlock12Stack2 := (recoveredBlock12Stack2) isKindOf: (recoveredBlock12Stack3).
            recoveredBlock12PC := 23.
        ].
        recoveredBlock12Step = 23 ifTrue: [
            (recoveredBlock12Stack2) ifTrue: [recoveredBlock12PC := 26] ifFalse: [recoveredBlock12PC := 69].
        ].
        recoveredBlock12Step = 26 ifTrue: [
            recoveredBlock12PC := 27.
        ].
        recoveredBlock12Step = 27 ifTrue: [
            recoveredBlock12Stack1 := recoveredBlock12Arg1.
            recoveredBlock12PC := 28.
        ].
        recoveredBlock12Step = 28 ifTrue: [
            recoveredBlock12Stack1 := (recoveredBlock12Stack1) text.
            recoveredBlock12PC := 29.
        ].
        recoveredBlock12Step = 29 ifTrue: [
            recoveredLocal2 := recoveredBlock12Stack1.
            recoveredBlock12PC := 32.
        ].
        recoveredBlock12Step = 32 ifTrue: [
            recoveredBlock12Stack1 := nil.
            recoveredBlock12PC := 33.
        ].
        recoveredBlock12Step = 33 ifTrue: [
            recoveredBlock12Stack2 := recoveredLocal2.
            recoveredBlock12PC := 36.
        ].
        recoveredBlock12Step = 36 ifTrue: [
            recoveredBlock12Stack2 := (recoveredBlock12Stack2) notEmpty.
            recoveredBlock12PC := 38.
        ].
        recoveredBlock12Step = 38 ifTrue: [
            (recoveredBlock12Stack2) ifTrue: [recoveredBlock12PC := 42] ifFalse: [recoveredBlock12PC := 69].
        ].
        recoveredBlock12Step = 42 ifTrue: [
            recoveredBlock12PC := 43.
        ].
        recoveredBlock12Step = 43 ifTrue: [
            recoveredBlock12Stack1 := nil.
            recoveredBlock12PC := 44.
        ].
        recoveredBlock12Step = 44 ifTrue: [
            recoveredBlock12Stack2 := recoveredLocal2.
            recoveredBlock12PC := 47.
        ].
        recoveredBlock12Step = 47 ifTrue: [
            recoveredBlock12Stack2 := (recoveredBlock12Stack2) first.
            recoveredBlock12PC := 49.
        ].
        recoveredBlock12Step = 49 ifTrue: [
            recoveredBlock12Stack2 := (recoveredBlock12Stack2) isDigit.
            recoveredBlock12PC := 51.
        ].
        recoveredBlock12Step = 51 ifTrue: [
            (recoveredBlock12Stack2) ifTrue: [recoveredBlock12PC := 54] ifFalse: [recoveredBlock12PC := 69].
        ].
        recoveredBlock12Step = 54 ifTrue: [
            recoveredBlock12PC := 55.
        ].
        recoveredBlock12Step = 55 ifTrue: [
            recoveredBlock12Stack1 := recoveredBlock12Arg1.
            recoveredBlock12PC := 56.
        ].
        recoveredBlock12Step = 56 ifTrue: [
            recoveredBlock12Stack2 := recoveredLocal2.
            recoveredBlock12PC := 59.
        ].
        recoveredBlock12Step = 59 ifTrue: [
            recoveredBlock12Stack2 := (recoveredBlock12Stack2) asFloat.
            recoveredBlock12PC := 61.
        ].
        recoveredBlock12Step = 61 ifTrue: [
            recoveredBlock12Stack3 := recoveredLocal1.
            recoveredBlock12PC := 64.
        ].
        recoveredBlock12Step = 64 ifTrue: [
            recoveredBlock12Stack2 := (recoveredBlock12Stack2) + (recoveredBlock12Stack3).
            recoveredBlock12PC := 65.
        ].
        recoveredBlock12Step = 65 ifTrue: [
            recoveredBlock12Stack2 := (recoveredBlock12Stack2) printString.
            recoveredBlock12PC := 67.
        ].
        recoveredBlock12Step = 67 ifTrue: [
            recoveredBlock12Stack1 := (recoveredBlock12Stack1) text: (recoveredBlock12Stack2).
            recoveredBlock12PC := 69.
        ].
        recoveredBlock12Step = 69 ifTrue: [
            recoveredBlock12Result := recoveredBlock12Stack1.
            recoveredBlock12Done := true.
        ].
    ].
    recoveredBlock12Result
].
    (recoveredValue2) do: (recoveredValue3).
    ^self
! !

"ASDBase.ic method 0x20614bb0; bytecode file offset 0xf114f0"
!RBDynamicXAxisGraph methodsFor: 'recovered'!
updateDisplayedObjects
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredLocal6 recoveredLocal7 recoveredLocal8 recoveredLocal9 recoveredLocal10 recoveredLocal11 recoveredLocal12 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredStack7 recoveredStack8 recoveredStack9 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := logAxis.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) hexView.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := OrderedCollection.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredLocal12 := recoveredStack1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := font.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := (recoveredStack1) queryFont.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredLocal2 := recoveredStack2.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 34] ifFalse: [recoveredPC := 26].
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := Transcript.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack2 := 'GDU-Fehler: Achsenfont nicht richtig geladen (fontStruct isNil)'.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            (recoveredStack1) nextPutAll: (recoveredStack2).
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack1 := (recoveredStack1) height.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredLocal6 := recoveredStack1.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := recoveredLocal12.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack2 := RBLineGO.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack3 := lineStyle.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack4 := manager.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack5 := p1.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack6 := p2.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack2 := (recoveredStack2) createWithLineStyle: (recoveredStack3) manager: (recoveredStack4) pointA: (recoveredStack5) pointB: (recoveredStack6).
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            (recoveredStack1) add: (recoveredStack2).
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack1 := pixTicDist.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack2 := logAxis.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack2 := (recoveredStack2) getLinLogScale.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack1 := (recoveredStack1) / (recoveredStack2).
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack1 := (recoveredStack1) asFloat.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack1 := (recoveredStack1) roundUpTo2or5or10.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredLocal11 := recoveredStack1.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack1 := recoveredLocal11.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack2 := #[0 0 0 0 0 0 0 0].
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 84] ifFalse: [recoveredPC := 86].
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack1 := recoveredLocal11.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack1 := (recoveredStack1) roundToDecade.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredLocal9 := recoveredStack1.
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack1 := logAxis.
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack1 := (recoveredStack1) getOffset.
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack2 := recoveredLocal11.
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            recoveredStack1 := (recoveredStack1) roundTo: (recoveredStack2).
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            recoveredLocal10 := recoveredStack2.
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            recoveredStack2 := logAxis.
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            recoveredStack2 := (recoveredStack2) getOffset.
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            recoveredStack1 := (recoveredStack1) < (recoveredStack2).
            recoveredPC := 112.
        ].
        recoveredStep = 112 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 116] ifFalse: [recoveredPC := 126].
        ].
        recoveredStep = 116 ifTrue: [
            recoveredStack1 := recoveredLocal10.
            recoveredPC := 119.
        ].
        recoveredStep = 119 ifTrue: [
            recoveredStack2 := recoveredLocal11.
            recoveredPC := 122.
        ].
        recoveredStep = 122 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (recoveredStack2).
            recoveredPC := 123.
        ].
        recoveredStep = 123 ifTrue: [
            recoveredLocal10 := recoveredStack1.
            recoveredPC := 126.
        ].
        recoveredStep = 126 ifTrue: [
            recoveredStack1 := recoveredLocal10.
            recoveredPC := 129.
        ].
        recoveredStep = 129 ifTrue: [
            recoveredStack2 := logAxis.
            recoveredPC := 131.
        ].
        recoveredStep = 131 ifTrue: [
            recoveredStack2 := (recoveredStack2) getOffset.
            recoveredPC := 133.
        ].
        recoveredStep = 133 ifTrue: [
            recoveredStack3 := logAxis.
            recoveredPC := 135.
        ].
        recoveredStep = 135 ifTrue: [
            recoveredStack3 := (recoveredStack3) getExtent.
            recoveredPC := 137.
        ].
        recoveredStep = 137 ifTrue: [
            recoveredStack2 := (recoveredStack2) + (recoveredStack3).
            recoveredPC := 138.
        ].
        recoveredStep = 138 ifTrue: [
            recoveredStack3 := recoveredLocal11.
            recoveredPC := 141.
        ].
        recoveredStep = 141 ifTrue: [
            recoveredStack4 := [:recoveredBlock141Arg1 | 
    | recoveredBlock141Local1 recoveredBlock141Local2 recoveredBlock141Local3 recoveredBlock141Local4 recoveredBlock141Stack0 recoveredBlock141Stack1 recoveredBlock141Stack2 recoveredBlock141Stack3 recoveredBlock141Stack4 recoveredBlock141Stack5 recoveredBlock141Stack6 recoveredBlock141Stack7 recoveredBlock141PC recoveredBlock141Step recoveredBlock141Done recoveredBlock141Result |
    recoveredBlock141Stack0 := self.
    recoveredBlock141PC := 148.
    recoveredBlock141Done := false.
    [recoveredBlock141Done not] whileTrue: [
        recoveredBlock141Step := recoveredBlock141PC.
        recoveredBlock141Step = 148 ifTrue: [
            recoveredBlock141Stack1 := logAxis.
            recoveredBlock141PC := 150.
        ].
        recoveredBlock141Step = 150 ifTrue: [
            recoveredBlock141Stack2 := recoveredBlock141Arg1.
            recoveredBlock141PC := 152.
        ].
        recoveredBlock141Step = 152 ifTrue: [
            recoveredBlock141Stack1 := (recoveredBlock141Stack1) posForValue: (recoveredBlock141Stack2).
            recoveredBlock141PC := 154.
        ].
        recoveredBlock141Step = 154 ifTrue: [
            recoveredBlock141Local4 := recoveredBlock141Stack1.
            recoveredBlock141PC := 155.
        ].
        recoveredBlock141Step = 155 ifTrue: [
            recoveredBlock141Stack1 := recoveredBlock141Arg1.
            recoveredBlock141PC := 157.
        ].
        recoveredBlock141Step = 157 ifTrue: [
            recoveredBlock141Stack2 := 10.
            recoveredBlock141PC := 159.
        ].
        recoveredBlock141Step = 159 ifTrue: [
            recoveredBlock141Stack3 := recoveredLocal9.
            recoveredBlock141PC := 162.
        ].
        recoveredBlock141Step = 162 ifTrue: [
            recoveredBlock141Stack2 := (recoveredBlock141Stack2) * (recoveredBlock141Stack3).
            recoveredBlock141PC := 163.
        ].
        recoveredBlock141Step = 163 ifTrue: [
            recoveredBlock141Stack1 := (recoveredBlock141Stack1) roundTo: (recoveredBlock141Stack2).
            recoveredBlock141PC := 165.
        ].
        recoveredBlock141Step = 165 ifTrue: [
            recoveredBlock141Stack2 := recoveredBlock141Arg1.
            recoveredBlock141PC := 167.
        ].
        recoveredBlock141Step = 167 ifTrue: [
            recoveredBlock141Stack1 := (recoveredBlock141Stack1) - (recoveredBlock141Stack2).
            recoveredBlock141PC := 168.
        ].
        recoveredBlock141Step = 168 ifTrue: [
            recoveredBlock141Stack1 := (recoveredBlock141Stack1) abs.
            recoveredBlock141PC := 170.
        ].
        recoveredBlock141Step = 170 ifTrue: [
            recoveredBlock141Stack2 := #[0 0 0 0 0 0 224 63].
            recoveredBlock141PC := 172.
        ].
        recoveredBlock141Step = 172 ifTrue: [
            recoveredBlock141Stack3 := recoveredLocal11.
            recoveredBlock141PC := 175.
        ].
        recoveredBlock141Step = 175 ifTrue: [
            recoveredBlock141Stack2 := (recoveredBlock141Stack2) * (recoveredBlock141Stack3).
            recoveredBlock141PC := 176.
        ].
        recoveredBlock141Step = 176 ifTrue: [
            recoveredBlock141Stack1 := (recoveredBlock141Stack1) < (recoveredBlock141Stack2).
            recoveredBlock141PC := 177.
        ].
        recoveredBlock141Step = 177 ifTrue: [
            (recoveredBlock141Stack1) ifTrue: [recoveredBlock141PC := 180] ifFalse: [recoveredBlock141PC := 190].
        ].
        recoveredBlock141Step = 180 ifTrue: [
            recoveredBlock141Stack1 := recoveredLocal6.
            recoveredBlock141PC := 183.
        ].
        recoveredBlock141Step = 183 ifTrue: [
            recoveredBlock141Stack2 := 2.
            recoveredBlock141PC := 185.
        ].
        recoveredBlock141Step = 185 ifTrue: [
            recoveredBlock141Stack1 := (recoveredBlock141Stack1) // (recoveredBlock141Stack2).
            recoveredBlock141PC := 186.
        ].
        recoveredBlock141Step = 186 ifTrue: [
            recoveredBlock141Local3 := recoveredBlock141Stack1.
            recoveredBlock141PC := 187.
        ].
        recoveredBlock141Step = 187 ifTrue: [
            recoveredBlock141PC := 197.
        ].
        recoveredBlock141Step = 190 ifTrue: [
            recoveredBlock141Stack1 := recoveredLocal6.
            recoveredBlock141PC := 193.
        ].
        recoveredBlock141Step = 193 ifTrue: [
            recoveredBlock141Stack2 := 4.
            recoveredBlock141PC := 195.
        ].
        recoveredBlock141Step = 195 ifTrue: [
            recoveredBlock141Stack1 := (recoveredBlock141Stack1) // (recoveredBlock141Stack2).
            recoveredBlock141PC := 196.
        ].
        recoveredBlock141Step = 196 ifTrue: [
            recoveredBlock141Local3 := recoveredBlock141Stack1.
            recoveredBlock141PC := 197.
        ].
        recoveredBlock141Step = 197 ifTrue: [
            recoveredBlock141Stack1 := p1.
            recoveredBlock141PC := 199.
        ].
        recoveredBlock141Step = 199 ifTrue: [
            recoveredBlock141Stack2 := recoveredBlock141Local4.
            recoveredBlock141PC := 200.
        ].
        recoveredBlock141Step = 200 ifTrue: [
            recoveredBlock141Stack3 := 0.
            recoveredBlock141PC := 202.
        ].
        recoveredBlock141Step = 202 ifTrue: [
            recoveredBlock141Stack2 := (recoveredBlock141Stack2) @ (recoveredBlock141Stack3).
            recoveredBlock141PC := 204.
        ].
        recoveredBlock141Step = 204 ifTrue: [
            recoveredBlock141Stack1 := (recoveredBlock141Stack1) + (recoveredBlock141Stack2).
            recoveredBlock141PC := 205.
        ].
        recoveredBlock141Step = 205 ifTrue: [
            recoveredBlock141Local2 := recoveredBlock141Stack1.
            recoveredBlock141PC := 206.
        ].
        recoveredBlock141Step = 206 ifTrue: [
            recoveredBlock141Stack1 := recoveredBlock141Local2.
            recoveredBlock141PC := 207.
        ].
        recoveredBlock141Step = 207 ifTrue: [
            recoveredBlock141Stack2 := 0.
            recoveredBlock141PC := 209.
        ].
        recoveredBlock141Step = 209 ifTrue: [
            recoveredBlock141Stack3 := recoveredBlock141Local3.
            recoveredBlock141PC := 210.
        ].
        recoveredBlock141Step = 210 ifTrue: [
            recoveredBlock141Stack2 := (recoveredBlock141Stack2) @ (recoveredBlock141Stack3).
            recoveredBlock141PC := 212.
        ].
        recoveredBlock141Step = 212 ifTrue: [
            recoveredBlock141Stack1 := (recoveredBlock141Stack1) - (recoveredBlock141Stack2).
            recoveredBlock141PC := 213.
        ].
        recoveredBlock141Step = 213 ifTrue: [
            recoveredBlock141Local1 := recoveredBlock141Stack1.
            recoveredBlock141PC := 214.
        ].
        recoveredBlock141Step = 214 ifTrue: [
            recoveredBlock141Stack1 := recoveredLocal12.
            recoveredBlock141PC := 217.
        ].
        recoveredBlock141Step = 217 ifTrue: [
            recoveredBlock141Stack2 := RBLineGO.
            recoveredBlock141PC := 219.
        ].
        recoveredBlock141Step = 219 ifTrue: [
            recoveredBlock141Stack3 := lineStyle.
            recoveredBlock141PC := 221.
        ].
        recoveredBlock141Step = 221 ifTrue: [
            recoveredBlock141Stack4 := manager.
            recoveredBlock141PC := 223.
        ].
        recoveredBlock141Step = 223 ifTrue: [
            recoveredBlock141Stack5 := recoveredBlock141Local2.
            recoveredBlock141PC := 224.
        ].
        recoveredBlock141Step = 224 ifTrue: [
            recoveredBlock141Stack6 := recoveredBlock141Local1.
            recoveredBlock141PC := 225.
        ].
        recoveredBlock141Step = 225 ifTrue: [
            recoveredBlock141Stack2 := (recoveredBlock141Stack2) createWithLineStyle: (recoveredBlock141Stack3) manager: (recoveredBlock141Stack4) pointA: (recoveredBlock141Stack5) pointB: (recoveredBlock141Stack6).
            recoveredBlock141PC := 228.
        ].
        recoveredBlock141Step = 228 ifTrue: [
            (recoveredBlock141Stack1) add: (recoveredBlock141Stack2).
            recoveredBlock141PC := 230.
        ].
        recoveredBlock141Step = 230 ifTrue: [
            recoveredBlock141Stack1 := recoveredBlock141Arg1.
            recoveredBlock141PC := 232.
        ].
        recoveredBlock141Step = 232 ifTrue: [
            recoveredBlock141Stack2 := recoveredBlock141Stack1.
            recoveredBlock141PC := 233.
        ].
        recoveredBlock141Step = 233 ifTrue: [
            recoveredLocal1 := recoveredBlock141Stack2.
            recoveredBlock141PC := 236.
        ].
        recoveredBlock141Step = 236 ifTrue: [
            recoveredBlock141Result := recoveredBlock141Stack1.
            recoveredBlock141Done := true.
        ].
    ].
    recoveredBlock141Result
].
            recoveredPC := 237.
        ].
        recoveredStep = 237 ifTrue: [
            (recoveredStack1) to: (recoveredStack2) by: (recoveredStack3) do: (recoveredStack4).
            recoveredPC := 240.
        ].
        recoveredStep = 240 ifTrue: [
            recoveredStack1 := p1.
            recoveredPC := 242.
        ].
        recoveredStep = 242 ifTrue: [
            recoveredStack1 := (recoveredStack1) y.
            recoveredPC := 244.
        ].
        recoveredStep = 244 ifTrue: [
            recoveredStack2 := 7.
            recoveredPC := 246.
        ].
        recoveredStep = 246 ifTrue: [
            recoveredStack3 := recoveredLocal6.
            recoveredPC := 249.
        ].
        recoveredStep = 249 ifTrue: [
            recoveredStack2 := (recoveredStack2) * (recoveredStack3).
            recoveredPC := 250.
        ].
        recoveredStep = 250 ifTrue: [
            recoveredStack3 := 4.
            recoveredPC := 252.
        ].
        recoveredStep = 252 ifTrue: [
            recoveredStack2 := (recoveredStack2) // (recoveredStack3).
            recoveredPC := 253.
        ].
        recoveredStep = 253 ifTrue: [
            recoveredStack1 := (recoveredStack1) - (recoveredStack2).
            recoveredPC := 254.
        ].
        recoveredStep = 254 ifTrue: [
            recoveredLocal5 := recoveredStack1.
            recoveredPC := 257.
        ].
        recoveredStep = 257 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 260.
        ].
        recoveredStep = 260 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 264] ifFalse: [recoveredPC := 276].
        ].
        recoveredStep = 264 ifTrue: [
            recoveredStack1 := recoveredLocal10.
            recoveredPC := 267.
        ].
        recoveredStep = 267 ifTrue: [
            recoveredStack1 := (recoveredStack1) asHexString.
            recoveredPC := 269.
        ].
        recoveredStep = 269 ifTrue: [
            recoveredLocal8 := recoveredStack1.
            recoveredPC := 272.
        ].
        recoveredStep = 272 ifTrue: [
            recoveredPC := 285.
        ].
        recoveredStep = 276 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 277.
        ].
        recoveredStep = 277 ifTrue: [
            recoveredStack2 := recoveredLocal10.
            recoveredPC := 280.
        ].
        recoveredStep = 280 ifTrue: [
            recoveredStack1 := (recoveredStack1) createValueStringFor: (recoveredStack2).
            recoveredPC := 282.
        ].
        recoveredStep = 282 ifTrue: [
            recoveredLocal8 := recoveredStack1.
            recoveredPC := 285.
        ].
        recoveredStep = 285 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 288.
        ].
        recoveredStep = 288 ifTrue: [
            recoveredStack2 := recoveredLocal8.
            recoveredPC := 291.
        ].
        recoveredStep = 291 ifTrue: [
            recoveredStack1 := (recoveredStack1) textWidth: (recoveredStack2).
            recoveredPC := 293.
        ].
        recoveredStep = 293 ifTrue: [
            recoveredLocal7 := recoveredStack1.
            recoveredPC := 296.
        ].
        recoveredStep = 296 ifTrue: [
            recoveredStack1 := p1.
            recoveredPC := 298.
        ].
        recoveredStep = 298 ifTrue: [
            recoveredStack1 := (recoveredStack1) x.
            recoveredPC := 300.
        ].
        recoveredStep = 300 ifTrue: [
            recoveredStack2 := logAxis.
            recoveredPC := 302.
        ].
        recoveredStep = 302 ifTrue: [
            recoveredStack3 := recoveredLocal10.
            recoveredPC := 305.
        ].
        recoveredStep = 305 ifTrue: [
            recoveredStack2 := (recoveredStack2) posForValue: (recoveredStack3).
            recoveredPC := 307.
        ].
        recoveredStep = 307 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (recoveredStack2).
            recoveredPC := 308.
        ].
        recoveredStep = 308 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 311.
        ].
        recoveredStep = 311 ifTrue: [
            recoveredStack1 := recoveredLocal12.
            recoveredPC := 314.
        ].
        recoveredStep = 314 ifTrue: [
            recoveredStack2 := RBTextGO.
            recoveredPC := 316.
        ].
        recoveredStep = 316 ifTrue: [
            recoveredStack3 := recoveredLocal4.
            recoveredPC := 319.
        ].
        recoveredStep = 319 ifTrue: [
            recoveredStack4 := recoveredLocal5.
            recoveredPC := 322.
        ].
        recoveredStep = 322 ifTrue: [
            recoveredStack3 := (recoveredStack3) @ (recoveredStack4).
            recoveredPC := 324.
        ].
        recoveredStep = 324 ifTrue: [
            recoveredStack4 := recoveredLocal8.
            recoveredPC := 327.
        ].
        recoveredStep = 327 ifTrue: [
            recoveredStack5 := 'TaLeft'.
            recoveredPC := 329.
        ].
        recoveredStep = 329 ifTrue: [
            recoveredStack6 := font.
            recoveredPC := 331.
        ].
        recoveredStep = 331 ifTrue: [
            recoveredStack7 := lineStyle.
            recoveredPC := 333.
        ].
        recoveredStep = 333 ifTrue: [
            recoveredStack8 := manager.
            recoveredPC := 335.
        ].
        recoveredStep = 335 ifTrue: [
            recoveredStack2 := (recoveredStack2) createAt: (recoveredStack3) text: (recoveredStack4) alignment: (recoveredStack5) font: (recoveredStack6) lineStyle: (recoveredStack7) manager: (recoveredStack8).
            recoveredPC := 338.
        ].
        recoveredStep = 338 ifTrue: [
            (recoveredStack1) add: (recoveredStack2).
            recoveredPC := 340.
        ].
        recoveredStep = 340 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 343.
        ].
        recoveredStep = 343 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 346] ifFalse: [recoveredPC := 358].
        ].
        recoveredStep = 346 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 349.
        ].
        recoveredStep = 349 ifTrue: [
            recoveredStack1 := (recoveredStack1) asHexString.
            recoveredPC := 351.
        ].
        recoveredStep = 351 ifTrue: [
            recoveredLocal8 := recoveredStack1.
            recoveredPC := 354.
        ].
        recoveredStep = 354 ifTrue: [
            recoveredPC := 367.
        ].
        recoveredStep = 358 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 359.
        ].
        recoveredStep = 359 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 362.
        ].
        recoveredStep = 362 ifTrue: [
            recoveredStack1 := (recoveredStack1) createValueStringFor: (recoveredStack2).
            recoveredPC := 364.
        ].
        recoveredStep = 364 ifTrue: [
            recoveredLocal8 := recoveredStack1.
            recoveredPC := 367.
        ].
        recoveredStep = 367 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 370.
        ].
        recoveredStep = 370 ifTrue: [
            recoveredStack2 := recoveredLocal8.
            recoveredPC := 373.
        ].
        recoveredStep = 373 ifTrue: [
            recoveredStack1 := (recoveredStack1) textWidth: (recoveredStack2).
            recoveredPC := 375.
        ].
        recoveredStep = 375 ifTrue: [
            recoveredLocal7 := recoveredStack1.
            recoveredPC := 378.
        ].
        recoveredStep = 378 ifTrue: [
            recoveredStack1 := p1.
            recoveredPC := 380.
        ].
        recoveredStep = 380 ifTrue: [
            recoveredStack1 := (recoveredStack1) x.
            recoveredPC := 382.
        ].
        recoveredStep = 382 ifTrue: [
            recoveredStack2 := logAxis.
            recoveredPC := 384.
        ].
        recoveredStep = 384 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 387.
        ].
        recoveredStep = 387 ifTrue: [
            recoveredStack2 := (recoveredStack2) posForValue: (recoveredStack3).
            recoveredPC := 389.
        ].
        recoveredStep = 389 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (recoveredStack2).
            recoveredPC := 390.
        ].
        recoveredStep = 390 ifTrue: [
            recoveredStack2 := recoveredLocal7.
            recoveredPC := 393.
        ].
        recoveredStep = 393 ifTrue: [
            recoveredStack1 := (recoveredStack1) - (recoveredStack2).
            recoveredPC := 394.
        ].
        recoveredStep = 394 ifTrue: [
            recoveredStack2 := 20.
            recoveredPC := 396.
        ].
        recoveredStep = 396 ifTrue: [
            recoveredStack1 := (recoveredStack1) - (recoveredStack2).
            recoveredPC := 397.
        ].
        recoveredStep = 397 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 400.
        ].
        recoveredStep = 400 ifTrue: [
            recoveredStack1 := recoveredLocal12.
            recoveredPC := 403.
        ].
        recoveredStep = 403 ifTrue: [
            recoveredStack2 := RBTextGO.
            recoveredPC := 405.
        ].
        recoveredStep = 405 ifTrue: [
            recoveredStack3 := recoveredLocal4.
            recoveredPC := 408.
        ].
        recoveredStep = 408 ifTrue: [
            recoveredStack4 := recoveredLocal5.
            recoveredPC := 411.
        ].
        recoveredStep = 411 ifTrue: [
            recoveredStack3 := (recoveredStack3) @ (recoveredStack4).
            recoveredPC := 413.
        ].
        recoveredStep = 413 ifTrue: [
            recoveredStack4 := recoveredLocal8.
            recoveredPC := 416.
        ].
        recoveredStep = 416 ifTrue: [
            recoveredStack5 := 'TaLeft'.
            recoveredPC := 418.
        ].
        recoveredStep = 418 ifTrue: [
            recoveredStack6 := font.
            recoveredPC := 420.
        ].
        recoveredStep = 420 ifTrue: [
            recoveredStack7 := lineStyle.
            recoveredPC := 422.
        ].
        recoveredStep = 422 ifTrue: [
            recoveredStack8 := manager.
            recoveredPC := 424.
        ].
        recoveredStep = 424 ifTrue: [
            recoveredStack2 := (recoveredStack2) createAt: (recoveredStack3) text: (recoveredStack4) alignment: (recoveredStack5) font: (recoveredStack6) lineStyle: (recoveredStack7) manager: (recoveredStack8).
            recoveredPC := 427.
        ].
        recoveredStep = 427 ifTrue: [
            (recoveredStack1) add: (recoveredStack2).
            recoveredPC := 429.
        ].
        recoveredStep = 429 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 432.
        ].
        recoveredStep = 432 ifTrue: [
            recoveredStack0 := (recoveredStack0) createNameUnitTextFor: (recoveredStack1).
            recoveredPC := 434.
        ].
        recoveredStep = 434 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 435.
        ].
        recoveredStep = 435 ifTrue: [
            recoveredLocal8 := recoveredStack1.
            recoveredPC := 438.
        ].
        recoveredStep = 438 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 496] ifFalse: [recoveredPC := 442].
        ].
        recoveredStep = 442 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 445.
        ].
        recoveredStep = 445 ifTrue: [
            recoveredStack1 := recoveredLocal8.
            recoveredPC := 448.
        ].
        recoveredStep = 448 ifTrue: [
            recoveredStack0 := (recoveredStack0) textWidth: (recoveredStack1).
            recoveredPC := 450.
        ].
        recoveredStep = 450 ifTrue: [
            recoveredLocal7 := recoveredStack0.
            recoveredPC := 453.
        ].
        recoveredStep = 453 ifTrue: [
            recoveredStack0 := recoveredLocal12.
            recoveredPC := 456.
        ].
        recoveredStep = 456 ifTrue: [
            recoveredStack1 := RBTextGO.
            recoveredPC := 458.
        ].
        recoveredStep = 458 ifTrue: [
            recoveredStack2 := p1.
            recoveredPC := 460.
        ].
        recoveredStep = 460 ifTrue: [
            recoveredStack2 := (recoveredStack2) x.
            recoveredPC := 462.
        ].
        recoveredStep = 462 ifTrue: [
            recoveredStack3 := p2.
            recoveredPC := 464.
        ].
        recoveredStep = 464 ifTrue: [
            recoveredStack3 := (recoveredStack3) x.
            recoveredPC := 466.
        ].
        recoveredStep = 466 ifTrue: [
            recoveredStack4 := p1.
            recoveredPC := 468.
        ].
        recoveredStep = 468 ifTrue: [
            recoveredStack4 := (recoveredStack4) x.
            recoveredPC := 470.
        ].
        recoveredStep = 470 ifTrue: [
            recoveredStack3 := (recoveredStack3) - (recoveredStack4).
            recoveredPC := 471.
        ].
        recoveredStep = 471 ifTrue: [
            recoveredStack4 := 2.
            recoveredPC := 473.
        ].
        recoveredStep = 473 ifTrue: [
            recoveredStack3 := (recoveredStack3) // (recoveredStack4).
            recoveredPC := 474.
        ].
        recoveredStep = 474 ifTrue: [
            recoveredStack2 := (recoveredStack2) + (recoveredStack3).
            recoveredPC := 475.
        ].
        recoveredStep = 475 ifTrue: [
            recoveredStack3 := recoveredLocal5.
            recoveredPC := 478.
        ].
        recoveredStep = 478 ifTrue: [
            recoveredStack2 := (recoveredStack2) @ (recoveredStack3).
            recoveredPC := 480.
        ].
        recoveredStep = 480 ifTrue: [
            recoveredStack3 := recoveredLocal8.
            recoveredPC := 483.
        ].
        recoveredStep = 483 ifTrue: [
            recoveredStack4 := 'TaCenter'.
            recoveredPC := 485.
        ].
        recoveredStep = 485 ifTrue: [
            recoveredStack5 := font.
            recoveredPC := 487.
        ].
        recoveredStep = 487 ifTrue: [
            recoveredStack6 := lineStyle.
            recoveredPC := 489.
        ].
        recoveredStep = 489 ifTrue: [
            recoveredStack7 := manager.
            recoveredPC := 491.
        ].
        recoveredStep = 491 ifTrue: [
            recoveredStack1 := (recoveredStack1) createAt: (recoveredStack2) text: (recoveredStack3) alignment: (recoveredStack4) font: (recoveredStack5) lineStyle: (recoveredStack6) manager: (recoveredStack7).
            recoveredPC := 494.
        ].
        recoveredStep = 494 ifTrue: [
            (recoveredStack0) add: (recoveredStack1).
            recoveredPC := 496.
        ].
        recoveredStep = 496 ifTrue: [
            recoveredStack0 := recoveredLocal12.
            recoveredPC := 499.
        ].
        recoveredStep = 499 ifTrue: [
            displayedObjects := recoveredStack0.
            recoveredPC := 501.
        ].
        recoveredStep = 501 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 502.
        ].
        recoveredStep = 502 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

