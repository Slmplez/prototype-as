"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20070d90; bytecode file offset 0x96d6a4"
!SGCharTableCodeGO methodsFor: 'recovered'!
isFixed
    | recoveredValue0 |
    recoveredValue0 := fixed.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200718e4; bytecode file offset 0x96e578"
!SGCharTableCodeGO methodsFor: 'recovered'!
storagePositionOffset
    ^0
! !

"ASDBase.ic method 0x200c7390; bytecode file offset 0x9c3d64"
!SGCharTableCodeGO methodsFor: 'recovered'!
setFixed: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    fixed := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x202a5ea4; bytecode file offset 0xba277c"
!SGCharTableCodeGO methodsFor: 'recovered'!
updateLabelForAttributes: recoveredArg1 preString: recoveredArg2
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := (recoveredStack1) isMethodParameter.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 40] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := (recoveredStack2) class.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := (recoveredStack2) optionGraphicsGeneratorMode.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack3 := nil.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) getLabelExtensionForAttributesCompatibilityMode: (recoveredStack2) dataConfig: (recoveredStack3).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 38] ifFalse: [recoveredPC := 22].
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := actualNameGO.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            (recoveredStack1) changeStarted.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack2 := (recoveredStack2) label.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack2 := (recoveredStack2) , (recoveredStack3).
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack2 := (recoveredStack2) , (recoveredStack3).
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            (recoveredStack1) changeActualName: (recoveredStack2).
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := actualNameGO.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := (recoveredStack1) giveRedisplayRects.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2037bde4; bytecode file offset 0xc786c4"
!SGCharTableCodeGO methodsFor: 'recovered'!
updateGOForElement: recoveredArg1 datamodelManager: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack0 := super updateGOForElement: (recoveredStack1) datamodelManager: (recoveredStack2).
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := ''.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := (recoveredStack0) sgClass.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := (recoveredStack0) isFixed.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 60] ifFalse: [recoveredPC := 30].
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := actualNameGO.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            (recoveredStack0) changeStarted.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := (recoveredStack0) sgClass.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := (recoveredStack0) distributionLabel: (recoveredStack1).
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 50] ifFalse: [recoveredPC := 46].
        ].
        recoveredStep = 46 ifTrue: [
            recoveredPC := 60.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack0 := ' ('.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack0 := (recoveredStack0) , (recoveredStack1).
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack1 := ')'.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack0 := (recoveredStack0) , (recoveredStack1).
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack1 := (recoveredStack1) updateLabelForAttributes: (recoveredStack2) preString: (recoveredStack3).
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack0 := (recoveredStack0) , (recoveredStack1).
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2038823c; bytecode file offset 0xc84b1c"
!SGCharTableCodeGO methodsFor: 'recovered'!
updateGOForElement: recoveredArg1 datamodelManager: recoveredArg2 display: recoveredArg3
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack3 := recoveredArg3.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := super updateGOForElement: (recoveredStack1) datamodelManager: (recoveredStack2) display: (recoveredStack3).
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := ''.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := (recoveredStack0) sgClass.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := (recoveredStack0) isFixed.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 62] ifFalse: [recoveredPC := 32].
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := actualNameGO.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            (recoveredStack0) changeStarted.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := (recoveredStack0) sgClass.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack0 := (recoveredStack0) distributionLabel: (recoveredStack1).
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 52] ifFalse: [recoveredPC := 48].
        ].
        recoveredStep = 48 ifTrue: [
            recoveredPC := 62.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack0 := ' ('.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack0 := (recoveredStack0) , (recoveredStack1).
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack1 := ')'.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack0 := (recoveredStack0) , (recoveredStack1).
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack1 := (recoveredStack1) updateLabelForAttributes: (recoveredStack2) preString: (recoveredStack3).
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack0 := (recoveredStack0) , (recoveredStack1).
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20392cb0; bytecode file offset 0xc8f594"
!SGCharTableCodeGO methodsFor: 'recovered'!
displayOn: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredStack7 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            super displayOn: (recoveredStack1).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := (recoveredStack0) viewAsLine.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := nil.
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
            recoveredStack0 := (recoveredStack0) isFixed.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 22] ifFalse: [recoveredPC := 72].
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := (recoveredStack0) logicFrame.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := (recoveredStack0) left.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := PinDistance.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack2 := 2.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := (recoveredStack1) // (recoveredStack2).
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := (recoveredStack0) + (recoveredStack1).
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredPC := 65.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack0 := (recoveredStack0) window.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack1 := (recoveredStack1) gc.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack3 := (recoveredStack3) top.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack4 := recoveredLocal2.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack5 := recoveredLocal1.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack5 := (recoveredStack5) top.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack6 := PinDistance.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack5 := (recoveredStack5) + (recoveredStack6).
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            (recoveredStack0) drawLine: (recoveredStack1) x1: (recoveredStack2) y1: (recoveredStack3) x2: (recoveredStack4) y2: (recoveredStack5).
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack1 := PinDistance.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack0 := (recoveredStack0) + (recoveredStack1).
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack1 := (recoveredStack1) right.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack0 := (recoveredStack0) < (recoveredStack1).
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 40] ifFalse: [recoveredPC := 72].
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2055c764; bytecode file offset 0xe59078"
!SGCharTableCodeGO methodsFor: 'recovered'!
displayIconOn: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := (self) iconGO.
    recoveredValue1 := (recoveredValue0) copy.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := (self) getBDEController.
    recoveredValue3 := [:recoveredBlock11Arg1 | 
    | recoveredBlock11Value0 recoveredBlock11Value1 recoveredBlock11Value2 |
    recoveredBlock11Value0 := (self) element.
    recoveredBlock11Value1 := [:recoveredBlock11Block19Arg1 | 
    | recoveredBlock11Block19Local1 recoveredBlock11Block19Value0 recoveredBlock11Block19Value1 recoveredBlock11Block19Value2 recoveredBlock11Block19Value3 recoveredBlock11Block19Value4 |
    recoveredBlock11Block19Value0 := recoveredBlock11Arg1.
    recoveredBlock11Block19Value1 := recoveredBlock11Block19Arg1.
    recoveredBlock11Block19Value2 := (recoveredBlock11Block19Value0) dataConfigForElement: (recoveredBlock11Block19Value1).
    recoveredBlock11Block19Value3 := [:recoveredBlock11Block19Block34Arg1 | 
    | recoveredBlock11Block19Block34Local1 recoveredBlock11Block19Block34Stack0 recoveredBlock11Block19Block34Stack1 recoveredBlock11Block19Block34Stack2 recoveredBlock11Block19Block34Stack3 recoveredBlock11Block19Block34Stack4 recoveredBlock11Block19Block34Stack5 recoveredBlock11Block19Block34PC recoveredBlock11Block19Block34Step recoveredBlock11Block19Block34Done recoveredBlock11Block19Block34Result |
    recoveredBlock11Block19Block34Stack0 := self.
    recoveredBlock11Block19Block34PC := 40.
    recoveredBlock11Block19Block34Done := false.
    [recoveredBlock11Block19Block34Done not] whileTrue: [
        recoveredBlock11Block19Block34Step := recoveredBlock11Block19Block34PC.
        recoveredBlock11Block19Block34Step = 40 ifTrue: [
            recoveredBlock11Block19Block34Stack1 := recoveredBlock11Block19Arg1.
            recoveredBlock11Block19Block34PC := 43.
        ].
        recoveredBlock11Block19Block34Step = 43 ifTrue: [
            recoveredBlock11Block19Block34Stack1 := (recoveredBlock11Block19Block34Stack1) isGroupCharTable.
            recoveredBlock11Block19Block34PC := 45.
        ].
        recoveredBlock11Block19Block34Step = 45 ifTrue: [
            (recoveredBlock11Block19Block34Stack1) ifTrue: [recoveredBlock11Block19Block34PC := 48] ifFalse: [recoveredBlock11Block19Block34PC := 86].
        ].
        recoveredBlock11Block19Block34Step = 48 ifTrue: [
            recoveredBlock11Block19Block34Stack1 := [
    | recoveredBlock11Block19Block34Block48Stack0 recoveredBlock11Block19Block34Block48Stack1 recoveredBlock11Block19Block34Block48Stack2 recoveredBlock11Block19Block34Block48Stack3 recoveredBlock11Block19Block34Block48Stack4 recoveredBlock11Block19Block34Block48PC recoveredBlock11Block19Block34Block48Step recoveredBlock11Block19Block34Block48Done recoveredBlock11Block19Block34Block48Result |
    recoveredBlock11Block19Block34Block48Stack0 := self.
    recoveredBlock11Block19Block34Block48PC := 54.
    recoveredBlock11Block19Block34Block48Done := false.
    [recoveredBlock11Block19Block34Block48Done not] whileTrue: [
        recoveredBlock11Block19Block34Block48Step := recoveredBlock11Block19Block34Block48PC.
        recoveredBlock11Block19Block34Block48Step = 54 ifTrue: [
            recoveredBlock11Block19Block34Block48Stack1 := recoveredBlock11Block19Block34Arg1.
            recoveredBlock11Block19Block34Block48PC := 57.
        ].
        recoveredBlock11Block19Block34Block48Step = 57 ifTrue: [
            recoveredBlock11Block19Block34Block48Stack2 := self.
            recoveredBlock11Block19Block34Block48PC := 58.
        ].
        recoveredBlock11Block19Block34Block48Step = 58 ifTrue: [
            recoveredBlock11Block19Block34Block48Stack2 := (recoveredBlock11Block19Block34Block48Stack2) element.
            recoveredBlock11Block19Block34Block48PC := 59.
        ].
        recoveredBlock11Block19Block34Block48Step = 59 ifTrue: [
            recoveredBlock11Block19Block34Block48Stack3 := [:block28110338Arg1 | 
    nil
].
            recoveredBlock11Block19Block34Block48PC := 61.
        ].
        recoveredBlock11Block19Block34Block48Step = 61 ifTrue: [
            recoveredBlock11Block19Block34Block48PC := 66.
        ].
        recoveredBlock11Block19Block34Block48Step = 66 ifTrue: [
            recoveredBlock11Block19Block34Block48Stack2 := (recoveredBlock11Block19Block34Block48Stack2) sgClassIfUndefined: (recoveredBlock11Block19Block34Block48Stack3).
            recoveredBlock11Block19Block34Block48PC := 68.
        ].
        recoveredBlock11Block19Block34Block48Step = 68 ifTrue: [
            recoveredBlock11Block19Block34Block48Stack3 := self.
            recoveredBlock11Block19Block34Block48PC := 69.
        ].
        recoveredBlock11Block19Block34Block48Step = 69 ifTrue: [
            recoveredBlock11Block19Block34Block48Stack3 := (recoveredBlock11Block19Block34Block48Stack3) element.
            recoveredBlock11Block19Block34Block48PC := 70.
        ].
        recoveredBlock11Block19Block34Block48Step = 70 ifTrue: [
            recoveredBlock11Block19Block34Block48Stack2 := (recoveredBlock11Block19Block34Block48Stack2) getXDistributionElementFor: (recoveredBlock11Block19Block34Block48Stack3).
            recoveredBlock11Block19Block34Block48PC := 72.
        ].
        recoveredBlock11Block19Block34Block48Step = 72 ifTrue: [
            recoveredBlock11Block19Block34Block48Stack1 := (recoveredBlock11Block19Block34Block48Stack1) configForElement: (recoveredBlock11Block19Block34Block48Stack2).
            recoveredBlock11Block19Block34Block48PC := 74.
        ].
        recoveredBlock11Block19Block34Block48Step = 74 ifTrue: [
            recoveredBlock11Block19Block34Block48Stack2 := recoveredBlock11Block19Block34Block48Stack1.
            recoveredBlock11Block19Block34Block48PC := 75.
        ].
        recoveredBlock11Block19Block34Block48Step = 75 ifTrue: [
            recoveredBlock11Block19Local1 := recoveredBlock11Block19Block34Block48Stack2.
            recoveredBlock11Block19Block34Block48PC := 78.
        ].
        recoveredBlock11Block19Block34Block48Step = 78 ifTrue: [
            recoveredBlock11Block19Block34Block48Result := recoveredBlock11Block19Block34Block48Stack1.
            recoveredBlock11Block19Block34Block48Done := true.
        ].
    ].
    recoveredBlock11Block19Block34Block48Result
].
            recoveredBlock11Block19Block34PC := 79.
        ].
        recoveredBlock11Block19Block34Step = 79 ifTrue: [
            recoveredBlock11Block19Block34Stack2 := [].
            recoveredBlock11Block19Block34PC := 81.
        ].
        recoveredBlock11Block19Block34Step = 81 ifTrue: [
            (recoveredBlock11Block19Block34Stack1) exWhenUndefinedKeyOrValue: (recoveredBlock11Block19Block34Stack2).
            recoveredBlock11Block19Block34PC := 83.
        ].
        recoveredBlock11Block19Block34Step = 83 ifTrue: [
            recoveredBlock11Block19Block34PC := 99.
        ].
        recoveredBlock11Block19Block34Step = 86 ifTrue: [
            recoveredBlock11Block19Block34Stack1 := recoveredBlock11Block19Block34Arg1.
            recoveredBlock11Block19Block34PC := 89.
        ].
        recoveredBlock11Block19Block34Step = 89 ifTrue: [
            recoveredBlock11Block19Block34Stack2 := recoveredBlock11Block19Arg1.
            recoveredBlock11Block19Block34PC := 92.
        ].
        recoveredBlock11Block19Block34Step = 92 ifTrue: [
            recoveredBlock11Block19Block34Stack1 := (recoveredBlock11Block19Block34Stack1) configForElement: (recoveredBlock11Block19Block34Stack2).
            recoveredBlock11Block19Block34PC := 94.
        ].
        recoveredBlock11Block19Block34Step = 94 ifTrue: [
            recoveredBlock11Block19Block34Stack1 := (recoveredBlock11Block19Block34Stack1) xDistribution.
            recoveredBlock11Block19Block34PC := 96.
        ].
        recoveredBlock11Block19Block34Step = 96 ifTrue: [
            recoveredBlock11Block19Local1 := recoveredBlock11Block19Block34Stack1.
            recoveredBlock11Block19Block34PC := 99.
        ].
        recoveredBlock11Block19Block34Step = 99 ifTrue: [
            recoveredBlock11Block19Block34Stack1 := nil.
            recoveredBlock11Block19Block34PC := 100.
        ].
        recoveredBlock11Block19Block34Step = 100 ifTrue: [
            recoveredBlock11Block19Block34Stack2 := recoveredBlock11Block19Local1.
            recoveredBlock11Block19Block34PC := 103.
        ].
        recoveredBlock11Block19Block34Step = 103 ifTrue: [
            (recoveredBlock11Block19Block34Stack2 == nil) ifTrue: [recoveredBlock11Block19Block34PC := 212] ifFalse: [recoveredBlock11Block19Block34PC := 106].
        ].
        recoveredBlock11Block19Block34Step = 106 ifTrue: [
            recoveredBlock11Block19Block34PC := 107.
        ].
        recoveredBlock11Block19Block34Step = 107 ifTrue: [
            recoveredBlock11Block19Block34Stack1 := recoveredBlock11Block19Local1.
            recoveredBlock11Block19Block34PC := 110.
        ].
        recoveredBlock11Block19Block34Step = 110 ifTrue: [
            recoveredBlock11Block19Block34Stack1 := (recoveredBlock11Block19Block34Stack1) getGradientDirection.
            recoveredBlock11Block19Block34PC := 112.
        ].
        recoveredBlock11Block19Block34Step = 112 ifTrue: [
            recoveredBlock11Block19Block34Stack2 := recoveredBlock11Block19Block34Stack1.
            recoveredBlock11Block19Block34PC := 113.
        ].
        recoveredBlock11Block19Block34Step = 113 ifTrue: [
            recoveredBlock11Block19Block34Local1 := recoveredBlock11Block19Block34Stack2.
            recoveredBlock11Block19Block34PC := 116.
        ].
        recoveredBlock11Block19Block34Step = 116 ifTrue: [
            (recoveredBlock11Block19Block34Stack1 == nil) ifTrue: [recoveredBlock11Block19Block34PC := 181] ifFalse: [recoveredBlock11Block19Block34PC := 120].
        ].
        recoveredBlock11Block19Block34Step = 120 ifTrue: [
            recoveredBlock11Block19Block34Stack1 := recoveredBlock11Block19Block34Local1.
            recoveredBlock11Block19Block34PC := 123.
        ].
        recoveredBlock11Block19Block34Step = 123 ifTrue: [
            recoveredBlock11Block19Block34Stack2 := 1.
            recoveredBlock11Block19Block34PC := 125.
        ].
        recoveredBlock11Block19Block34Step = 125 ifTrue: [
            recoveredBlock11Block19Block34Stack1 := (recoveredBlock11Block19Block34Stack1) = (recoveredBlock11Block19Block34Stack2).
            recoveredBlock11Block19Block34PC := 126.
        ].
        recoveredBlock11Block19Block34Step = 126 ifTrue: [
            (recoveredBlock11Block19Block34Stack1) ifTrue: [recoveredBlock11Block19Block34PC := 130] ifFalse: [recoveredBlock11Block19Block34PC := 151].
        ].
        recoveredBlock11Block19Block34Step = 130 ifTrue: [
            recoveredBlock11Block19Block34Stack1 := recoveredLocal1.
            recoveredBlock11Block19Block34PC := 133.
        ].
        recoveredBlock11Block19Block34Step = 133 ifTrue: [
            recoveredBlock11Block19Block34Stack2 := recoveredLocal1.
            recoveredBlock11Block19Block34PC := 136.
        ].
        recoveredBlock11Block19Block34Step = 136 ifTrue: [
            recoveredBlock11Block19Block34Stack2 := (recoveredBlock11Block19Block34Stack2) icon.
            recoveredBlock11Block19Block34PC := 138.
        ].
        recoveredBlock11Block19Block34Step = 138 ifTrue: [
            recoveredBlock11Block19Block34Stack3 := recoveredBlock11Arg1.
            recoveredBlock11Block19Block34PC := 141.
        ].
        recoveredBlock11Block19Block34Step = 141 ifTrue: [
            recoveredBlock11Block19Block34Stack3 := (recoveredBlock11Block19Block34Stack3) userInterface.
            recoveredBlock11Block19Block34PC := 143.
        ].
        recoveredBlock11Block19Block34Step = 143 ifTrue: [
            recoveredBlock11Block19Block34Stack4 := 'GeneralOverlayUp32'.
            recoveredBlock11Block19Block34PC := 145.
        ].
        recoveredBlock11Block19Block34Step = 145 ifTrue: [
            recoveredBlock11Block19Block34Stack3 := (recoveredBlock11Block19Block34Stack3) returnIconWithName: (recoveredBlock11Block19Block34Stack4).
            recoveredBlock11Block19Block34PC := 147.
        ].
        recoveredBlock11Block19Block34Step = 147 ifTrue: [
            recoveredBlock11Block19Block34Stack2 := (recoveredBlock11Block19Block34Stack2) getOverlayedIconWith: (recoveredBlock11Block19Block34Stack3).
            recoveredBlock11Block19Block34PC := 149.
        ].
        recoveredBlock11Block19Block34Step = 149 ifTrue: [
            (recoveredBlock11Block19Block34Stack1) icon: (recoveredBlock11Block19Block34Stack2).
            recoveredBlock11Block19Block34PC := 151.
        ].
        recoveredBlock11Block19Block34Step = 151 ifTrue: [
            recoveredBlock11Block19Block34Stack1 := recoveredBlock11Block19Block34Local1.
            recoveredBlock11Block19Block34PC := 154.
        ].
        recoveredBlock11Block19Block34Step = 154 ifTrue: [
            recoveredBlock11Block19Block34Stack2 := -1.
            recoveredBlock11Block19Block34PC := 156.
        ].
        recoveredBlock11Block19Block34Step = 156 ifTrue: [
            recoveredBlock11Block19Block34Stack1 := (recoveredBlock11Block19Block34Stack1) = (recoveredBlock11Block19Block34Stack2).
            recoveredBlock11Block19Block34PC := 157.
        ].
        recoveredBlock11Block19Block34Step = 157 ifTrue: [
            (recoveredBlock11Block19Block34Stack1) ifTrue: [recoveredBlock11Block19Block34PC := 160] ifFalse: [recoveredBlock11Block19Block34PC := 181].
        ].
        recoveredBlock11Block19Block34Step = 160 ifTrue: [
            recoveredBlock11Block19Block34Stack1 := recoveredLocal1.
            recoveredBlock11Block19Block34PC := 163.
        ].
        recoveredBlock11Block19Block34Step = 163 ifTrue: [
            recoveredBlock11Block19Block34Stack2 := recoveredLocal1.
            recoveredBlock11Block19Block34PC := 166.
        ].
        recoveredBlock11Block19Block34Step = 166 ifTrue: [
            recoveredBlock11Block19Block34Stack2 := (recoveredBlock11Block19Block34Stack2) icon.
            recoveredBlock11Block19Block34PC := 168.
        ].
        recoveredBlock11Block19Block34Step = 168 ifTrue: [
            recoveredBlock11Block19Block34Stack3 := recoveredBlock11Arg1.
            recoveredBlock11Block19Block34PC := 171.
        ].
        recoveredBlock11Block19Block34Step = 171 ifTrue: [
            recoveredBlock11Block19Block34Stack3 := (recoveredBlock11Block19Block34Stack3) userInterface.
            recoveredBlock11Block19Block34PC := 173.
        ].
        recoveredBlock11Block19Block34Step = 173 ifTrue: [
            recoveredBlock11Block19Block34Stack4 := 'GeneralOverlayDown32'.
            recoveredBlock11Block19Block34PC := 175.
        ].
        recoveredBlock11Block19Block34Step = 175 ifTrue: [
            recoveredBlock11Block19Block34Stack3 := (recoveredBlock11Block19Block34Stack3) returnIconWithName: (recoveredBlock11Block19Block34Stack4).
            recoveredBlock11Block19Block34PC := 177.
        ].
        recoveredBlock11Block19Block34Step = 177 ifTrue: [
            recoveredBlock11Block19Block34Stack2 := (recoveredBlock11Block19Block34Stack2) getOverlayedIconWith: (recoveredBlock11Block19Block34Stack3).
            recoveredBlock11Block19Block34PC := 179.
        ].
        recoveredBlock11Block19Block34Step = 179 ifTrue: [
            (recoveredBlock11Block19Block34Stack1) icon: (recoveredBlock11Block19Block34Stack2).
            recoveredBlock11Block19Block34PC := 181.
        ].
        recoveredBlock11Block19Block34Step = 181 ifTrue: [
            recoveredBlock11Block19Block34Stack1 := recoveredBlock11Block19Arg1.
            recoveredBlock11Block19Block34PC := 184.
        ].
        recoveredBlock11Block19Block34Step = 184 ifTrue: [
            recoveredBlock11Block19Block34Stack1 := (recoveredBlock11Block19Block34Stack1) interpolationIcon.
            recoveredBlock11Block19Block34PC := 186.
        ].
        recoveredBlock11Block19Block34Step = 186 ifTrue: [
            recoveredBlock11Block19Block34Stack2 := [:recoveredBlock11Block19Block34Block186Arg1 | 
    | recoveredBlock11Block19Block34Block186Value0 recoveredBlock11Block19Block34Block186Value1 recoveredBlock11Block19Block34Block186Value2 recoveredBlock11Block19Block34Block186Value3 recoveredBlock11Block19Block34Block186Value4 recoveredBlock11Block19Block34Block186Value5 |
    recoveredBlock11Block19Block34Block186Value0 := recoveredLocal1.
    recoveredBlock11Block19Block34Block186Value1 := recoveredLocal1.
    recoveredBlock11Block19Block34Block186Value2 := (recoveredBlock11Block19Block34Block186Value1) icon.
    recoveredBlock11Block19Block34Block186Value3 := recoveredBlock11Block19Block34Block186Arg1.
    recoveredBlock11Block19Block34Block186Value4 := (recoveredBlock11Block19Block34Block186Value2) getOverlayedIconWith: (recoveredBlock11Block19Block34Block186Value3).
    recoveredBlock11Block19Block34Block186Value5 := (recoveredBlock11Block19Block34Block186Value0) icon: (recoveredBlock11Block19Block34Block186Value4).
    recoveredBlock11Block19Block34Block186Value5
].
            recoveredBlock11Block19Block34PC := 206.
        ].
        recoveredBlock11Block19Block34Step = 206 ifTrue: [
            recoveredBlock11Block19Block34Stack1 := (recoveredBlock11Block19Block34Stack1) ifNotNil: (recoveredBlock11Block19Block34Stack2).
            recoveredBlock11Block19Block34PC := 208.
        ].
        recoveredBlock11Block19Block34Step = 208 ifTrue: [
            recoveredBlock11Block19Block34Stack2 := nil.
            recoveredBlock11Block19Block34PC := 209.
        ].
        recoveredBlock11Block19Block34Step = 209 ifTrue: [
            recoveredBlock11Block19Block34Local1 := recoveredBlock11Block19Block34Stack2.
            recoveredBlock11Block19Block34PC := 212.
        ].
        recoveredBlock11Block19Block34Step = 212 ifTrue: [
            recoveredBlock11Block19Block34Result := recoveredBlock11Block19Block34Stack1.
            recoveredBlock11Block19Block34Done := true.
        ].
    ].
    recoveredBlock11Block19Block34Result
].
    recoveredBlock11Block19Value4 := (recoveredBlock11Block19Value2) ifNotNil: (recoveredBlock11Block19Value3).
    recoveredBlock11Block19Value4
].
    recoveredBlock11Value2 := (recoveredBlock11Value0) ifNotNil: (recoveredBlock11Value1).
    recoveredBlock11Value2
].
    (recoveredValue2) ifNotNil: (recoveredValue3).
    recoveredValue4 := recoveredLocal1.
    recoveredValue5 := recoveredArg1.
    (recoveredValue4) displayOn: (recoveredValue5).
    ^self
! !

