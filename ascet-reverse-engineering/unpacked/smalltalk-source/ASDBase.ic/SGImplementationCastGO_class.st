"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20014e50; bytecode file offset 0x912098"
!SGImplementationCastGO class methodsFor: 'recovered'!
dbClass
    | recoveredValue0 |
    recoveredValue0 := SGImplementationCastGODB.
    ^recoveredValue0
! !

"ASDBase.ic method 0x201020b8; bytecode file offset 0x9fe978"
!SGImplementationCastGO class methodsFor: 'recovered'!
createDefault: recoveredArg1 procedures: recoveredArg2 positions: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := recoveredArg3.
    recoveredValue3 := super createDefault: (recoveredValue0) procedures: (recoveredValue1) positions: (recoveredValue2).
    recoveredValue4 := recoveredValue3.
    (recoveredValue4) connectorNamesAsString.
    ^recoveredValue3
! !

"ASDBase.ic method 0x20267f48; bytecode file offset 0xb6485c"
!SGImplementationCastGO class methodsFor: 'recovered'!
createDefault: recoveredArg1 size: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 |
    recoveredValue0 := DefaultLineStyle.
    recoveredValue1 := (recoveredValue0) copy.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := recoveredLocal1.
    recoveredValue3 := (self) createWithLineStyle: (recoveredValue2) manager: (nil).
    recoveredLocal2 := recoveredValue3.
    recoveredValue4 := recoveredLocal2.
    recoveredValue5 := recoveredValue4.
    (recoveredValue5) setSelectFlag: (false).
    recoveredValue6 := recoveredValue4.
    recoveredValue7 := recoveredLocal2.
    recoveredValue8 := (recoveredValue7) defaultSize.
    (recoveredValue6) setDefSize: (recoveredValue8).
    recoveredValue9 := recoveredValue4.
    recoveredValue10 := OrderedCollection.
    recoveredValue11 := (recoveredValue10) new.
    (recoveredValue9) setInterfaceGOs: (recoveredValue11).
    recoveredValue12 := recoveredValue4.
    (recoveredValue12) createDefaultFrameGO.
    recoveredValue13 := recoveredArg1.
    (recoveredValue4) createActualNameGO: (recoveredValue13).
    recoveredValue14 := recoveredLocal2.
    ^recoveredValue14
! !

"ASDBase.ic method 0x20467a20; bytecode file offset 0xd6430c"
!SGImplementationCastGO class methodsFor: 'recovered'!
allowedToAddOnConnection: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := (recoveredStack1) getManager.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) owner.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) getBDEController.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) isCTContext.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) getManager.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) owner.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := (recoveredStack1) getBDEController.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := (recoveredStack1) item.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := (recoveredStack1) isProject.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 26] ifFalse: [recoveredPC := 28].
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := (recoveredStack1) connectionWrapper.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 41] ifFalse: [recoveredPC := 34].
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack2 := 'No Conn Wrapper initializied...'.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            (recoveredStack1) error: (recoveredStack2).
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := (recoveredStack1) connectionWrapper.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack1 := (recoveredStack1) startGO.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredLocal2 := recoveredStack2.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 54] ifFalse: [recoveredPC := 52].
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack1 := (recoveredStack1) connectionWrapper.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack1 := (recoveredStack1) endGO.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 66] ifFalse: [recoveredPC := 64].
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack1 := (recoveredStack1) isBoolData.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 72] ifFalse: [recoveredPC := 74].
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack1 := (recoveredStack1) isBoolControl.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 80] ifFalse: [recoveredPC := 82].
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack1 := (recoveredStack1) isBoolData.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 88] ifFalse: [recoveredPC := 90].
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredStack1 := (recoveredStack1) isBoolControl.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 96] ifFalse: [recoveredPC := 98].
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            recoveredStack1 := (recoveredStack1) getBlock.
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            recoveredLocal2 := recoveredStack2.
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 108] ifFalse: [recoveredPC := 106].
        ].
        recoveredStep = 106 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 108 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            recoveredStack1 := (recoveredStack1) getBlock.
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 112.
        ].
        recoveredStep = 112 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 118] ifFalse: [recoveredPC := 116].
        ].
        recoveredStep = 116 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 117.
        ].
        recoveredStep = 117 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 118 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 119.
        ].
        recoveredStep = 119 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

