"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x200421c4; bytecode file offset 0x93eb24"
!SGResultConnectorGO methodsFor: 'recovered'!
connectionPoints
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := connectionPoint.
    recoveredValue1 := (recoveredValue0) generateBranchingPoints.
    ^recoveredValue1
! !

"ASDBase.ic method 0x200705b0; bytecode file offset 0x96d06c"
!SGResultConnectorGO methodsFor: 'recovered'!
hasTempVar
    | recoveredValue0 |
    recoveredValue0 := tempVar.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200771c4; bytecode file offset 0x9757c8"
!SGResultConnectorGO methodsFor: 'recovered'!
isResultConnector
    ^true
! !

"ASDBase.ic method 0x2007781c; bytecode file offset 0x9757c8"
!SGResultConnectorGO methodsFor: 'recovered'!
isResultPin
    ^true
! !

"ASDBase.ic method 0x2007970c; bytecode file offset 0x97c330"
!SGResultConnectorGO methodsFor: 'recovered'!
isSelectorPin
    ^false
! !

"ASDBase.ic method 0x2008bde4; bytecode file offset 0x988698"
!SGResultConnectorGO methodsFor: 'recovered'!
toggleTempVar
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := tempVar.
    recoveredValue1 := (recoveredValue0) not.
    tempVar := recoveredValue1.
    ^self
! !

"ASDBase.ic method 0x200c6de8; bytecode file offset 0x9c36ec"
!SGResultConnectorGO methodsFor: 'recovered'!
tempVar: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    tempVar := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200d0a7c; bytecode file offset 0x9cd3a0"
!SGResultConnectorGO methodsFor: 'recovered'!
isLiteralStringData
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := ('Shikhar') == ('Call_65770').
    recoveredValue1 := (self) manager.
    recoveredValue2 := (recoveredValue1) isLiteralStringData.
    ^recoveredValue2
! !

"ASDBase.ic method 0x200d25c0; bytecode file offset 0x9cee7c"
!SGResultConnectorGO methodsFor: 'recovered'!
initInOutArgs
    (self) setInArg: (false).
    (self) setOutArg: (false).
    ^self
! !

"ASDBase.ic method 0x200d5bb0; bytecode file offset 0x9d247c"
!SGResultConnectorGO methodsFor: 'recovered'!
initialize
    super initialize.
    tempVar := false.
    ^self
! !

"ASDBase.ic method 0x201208a4; bytecode file offset 0xa1d168"
!SGResultConnectorGO methodsFor: 'recovered'!
displayOn: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    super displayOn: (recoveredValue0).
    recoveredValue1 := (self) connectionPoints.
    recoveredValue2 := recoveredArg1.
    (self) displayConnectionPoints: (recoveredValue1) on: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x20175238; bytecode file offset 0xa71afc"
!SGResultConnectorGO methodsFor: 'recovered'!
appendMenuItemsTo: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := [
    | recoveredBlock9Value0 |
    recoveredBlock9Value0 := (self) hasTempVar.
    recoveredBlock9Value0
].
    (recoveredValue0) add: ('toggleTempVar') label: ('~Temporary Variable') toggle: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x201e80e4; bytecode file offset 0xae49b4"
!SGResultConnectorGO methodsFor: 'recovered'!
displayArrowOn: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) isDirectAccess.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 8] ifFalse: [recoveredPC := 27].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) class.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := (recoveredStack0) optionGraphicsCompatibilityMode.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 27] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := (recoveredStack2) getRasterPosition.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack3 := (recoveredStack3) arrowSize.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack4 := self.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack4 := (recoveredStack4) opposeDirection.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            (recoveredStack0) displayArrowOn: (recoveredStack1) position: (recoveredStack2) arrowOffset: (recoveredStack3) direction: (recoveredStack4).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x202fa0c8; bytecode file offset 0xbf699c"
!SGResultConnectorGO methodsFor: 'recovered'!
displayTempVarOn: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredStack7 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) getLinkPoint.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) getPosition.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack0 := (recoveredStack0) - (recoveredStack1).
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := 2.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := (recoveredStack0) // (recoveredStack1).
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) getPosition.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) + (recoveredStack1).
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := (recoveredStack0) hasTempVar.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 51].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := 2.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := (recoveredStack0) window.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := (recoveredStack1) gc.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack2 := (recoveredStack2) x.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack2 := (recoveredStack2) - (recoveredStack3).
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack3 := recoveredLocal2.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack3 := (recoveredStack3) y.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack4 := recoveredLocal1.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack3 := (recoveredStack3) - (recoveredStack4).
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack4 := 2.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack5 := recoveredLocal1.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack4 := (recoveredStack4) * (recoveredStack5).
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack4 := (recoveredStack4) + (1).
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack5 := 2.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack6 := recoveredLocal1.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack5 := (recoveredStack5) * (recoveredStack6).
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack5 := (recoveredStack5) + (1).
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            (recoveredStack0) fillRectangle: (recoveredStack1) x: (recoveredStack2) y: (recoveredStack3) width: (recoveredStack4) height: (recoveredStack5).
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x203f44ac; bytecode file offset 0xcf0d9c"
!SGResultConnectorGO methodsFor: 'recovered'!
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
            recoveredStack0 := (recoveredStack0) checkConnectionAllowedWith: (recoveredStack1).
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) startGO.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 30] ifFalse: [recoveredPC := 20].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := (recoveredStack0) endGO.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 30] ifFalse: [recoveredPC := 28].
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := true.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack0 := (recoveredStack0) getBlock.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := (recoveredStack1) getBlock.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := (recoveredStack0) equals: (recoveredStack1).
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 40] ifFalse: [recoveredPC := 50].
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack0 := (recoveredStack0) getBlock.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack0 := (recoveredStack0) isConnectableToItself.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 50] ifFalse: [recoveredPC := 48].
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack0 := 'Muzaffar'.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack1 := 'Call_40548'.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack0 := (recoveredStack0) == (recoveredStack1).
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack0 := 'hw'.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack1 := 'call_79397'.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack0 := (recoveredStack0) == (recoveredStack1).
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack0 := (recoveredStack0) isCallConnector.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 68] ifFalse: [recoveredPC := 86].
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack0 := (recoveredStack0) isBoolControl.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 86] ifFalse: [recoveredPC := 74].
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack0 := (recoveredStack0) typeID.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack0 := (recoveredStack0) ~= (recoveredStack1).
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 84] ifFalse: [recoveredPC := 86].
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredStack0 := (recoveredStack0) basicGraphObject.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack0 := (recoveredStack0) isArgumentPin.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2041d5ec; bytecode file offset 0xd19ee4"
!SGResultConnectorGO methodsFor: 'recovered'!
displayConnectionPoints: recoveredArg1 on: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 |
    recoveredValue0 := recoveredArg2.
    recoveredValue1 := (recoveredValue0) gc.
    recoveredValue2 := recoveredValue1.
    recoveredValue3 := recoveredArg2.
    recoveredValue4 := RBColorManager.
    recoveredValue5 := (recoveredValue4) namedColor: ('black').
    recoveredValue6 := (recoveredValue3) pixelNearestToColor: (recoveredValue5).
    (recoveredValue2) setForeground: (recoveredValue6).
    recoveredValue7 := recoveredArg1.
    recoveredValue8 := [:recoveredBlock25Arg1 | 
    | recoveredBlock25Value0 recoveredBlock25Value1 recoveredBlock25Value2 recoveredBlock25Value3 recoveredBlock25Value4 recoveredBlock25Value5 recoveredBlock25Value6 recoveredBlock25Value7 recoveredBlock25Value8 recoveredBlock25Value9 recoveredBlock25Value10 recoveredBlock25Value11 recoveredBlock25Value12 recoveredBlock25Value13 recoveredBlock25Value14 recoveredBlock25Value15 recoveredBlock25Value16 recoveredBlock25Value17 recoveredBlock25Value18 recoveredBlock25Value19 recoveredBlock25Value20 recoveredBlock25Value21 recoveredBlock25Value22 recoveredBlock25Value23 recoveredBlock25Value24 recoveredBlock25Value25 recoveredBlock25Value26 recoveredBlock25Value27 recoveredBlock25Value28 recoveredBlock25Value29 recoveredBlock25Value30 recoveredBlock25Value31 recoveredBlock25Value32 recoveredBlock25Value33 recoveredBlock25Value34 recoveredBlock25Value35 recoveredBlock25Value36 |
    recoveredBlock25Value0 := recoveredArg2.
    recoveredBlock25Value1 := (recoveredBlock25Value0) window.
    recoveredBlock25Value2 := recoveredArg2.
    recoveredBlock25Value3 := (recoveredBlock25Value2) gc.
    recoveredBlock25Value4 := Array.
    recoveredBlock25Value5 := recoveredBlock25Arg1.
    recoveredBlock25Value6 := (recoveredBlock25Value5) x.
    recoveredBlock25Value7 := SensitiveRectSize.
    recoveredBlock25Value8 := (recoveredBlock25Value6) - (recoveredBlock25Value7).
    recoveredBlock25Value9 := recoveredBlock25Arg1.
    recoveredBlock25Value10 := (recoveredBlock25Value9) y.
    recoveredBlock25Value11 := (recoveredBlock25Value8) @ (recoveredBlock25Value10).
    recoveredBlock25Value12 := recoveredBlock25Arg1.
    recoveredBlock25Value13 := (recoveredBlock25Value12) x.
    recoveredBlock25Value14 := recoveredBlock25Arg1.
    recoveredBlock25Value15 := (recoveredBlock25Value14) y.
    recoveredBlock25Value16 := SensitiveRectSize.
    recoveredBlock25Value17 := (recoveredBlock25Value15) - (recoveredBlock25Value16).
    recoveredBlock25Value18 := (recoveredBlock25Value13) @ (recoveredBlock25Value17).
    recoveredBlock25Value19 := recoveredBlock25Arg1.
    recoveredBlock25Value20 := (recoveredBlock25Value19) x.
    recoveredBlock25Value21 := SensitiveRectSize.
    recoveredBlock25Value22 := (recoveredBlock25Value20) + (recoveredBlock25Value21).
    recoveredBlock25Value23 := recoveredBlock25Arg1.
    recoveredBlock25Value24 := (recoveredBlock25Value23) y.
    recoveredBlock25Value25 := (recoveredBlock25Value22) @ (recoveredBlock25Value24).
    recoveredBlock25Value26 := recoveredBlock25Arg1.
    recoveredBlock25Value27 := (recoveredBlock25Value26) x.
    recoveredBlock25Value28 := recoveredBlock25Arg1.
    recoveredBlock25Value29 := (recoveredBlock25Value28) y.
    recoveredBlock25Value30 := SensitiveRectSize.
    recoveredBlock25Value31 := (recoveredBlock25Value29) + (recoveredBlock25Value30).
    recoveredBlock25Value32 := (recoveredBlock25Value27) @ (recoveredBlock25Value31).
    recoveredBlock25Value33 := (recoveredBlock25Value4) with: (recoveredBlock25Value11) with: (recoveredBlock25Value18) with: (recoveredBlock25Value25) with: (recoveredBlock25Value32).
    recoveredBlock25Value34 := Convex.
    recoveredBlock25Value35 := CoordModeOrigin.
    recoveredBlock25Value36 := (recoveredBlock25Value1) fillPolygon: (recoveredBlock25Value3) points: (recoveredBlock25Value33) shape: (recoveredBlock25Value34) mode: (recoveredBlock25Value35).
    recoveredBlock25Value36
].
    (recoveredValue7) do: (recoveredValue8).
    ^self
! !

"ASDBase.ic method 0x2053da88; bytecode file offset 0xe3a3a8"
!SGResultConnectorGO methodsFor: 'recovered'!
displayPinOn: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) getRasterPosition.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack0 := direction.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := 'up'.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 28].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) x.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := (recoveredStack1) y.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack2 := length.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (recoveredStack2).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := (recoveredStack0) @ (recoveredStack1).
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredPC := 144.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := direction.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := 'down'.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 36] ifFalse: [recoveredPC := 50].
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack0 := (recoveredStack0) x.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack1 := (recoveredStack1) y.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack2 := length.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := (recoveredStack1) - (recoveredStack2).
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack0 := (recoveredStack0) @ (recoveredStack1).
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredPC := 144.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack0 := direction.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack1 := 'left'.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 58] ifFalse: [recoveredPC := 72].
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack0 := (recoveredStack0) x.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack1 := length.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack0 := (recoveredStack0) + (recoveredStack1).
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack1 := (recoveredStack1) y.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack0 := (recoveredStack0) @ (recoveredStack1).
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredPC := 144.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack0 := direction.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack1 := 'right'.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 80] ifFalse: [recoveredPC := 94].
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack0 := (recoveredStack0) x.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack1 := length.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack0 := (recoveredStack0) - (recoveredStack1).
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack1 := (recoveredStack1) y.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredStack0 := (recoveredStack0) @ (recoveredStack1).
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredPC := 144.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack0 := direction.
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack1 := 'bottomRight'.
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 102] ifFalse: [recoveredPC := 118].
        ].
        recoveredStep = 102 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            recoveredStack0 := (recoveredStack0) x.
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            recoveredStack1 := length.
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            recoveredStack0 := (recoveredStack0) + (recoveredStack1).
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            recoveredStack1 := (recoveredStack1) y.
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            recoveredStack2 := length.
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (recoveredStack2).
            recoveredPC := 112.
        ].
        recoveredStep = 112 ifTrue: [
            recoveredStack0 := (recoveredStack0) @ (recoveredStack1).
            recoveredPC := 114.
        ].
        recoveredStep = 114 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            recoveredPC := 144.
        ].
        recoveredStep = 118 ifTrue: [
            recoveredStack0 := direction.
            recoveredPC := 120.
        ].
        recoveredStep = 120 ifTrue: [
            recoveredStack1 := 'bottomLeft'.
            recoveredPC := 122.
        ].
        recoveredStep = 122 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 123.
        ].
        recoveredStep = 123 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 126] ifFalse: [recoveredPC := 142].
        ].
        recoveredStep = 126 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 127.
        ].
        recoveredStep = 127 ifTrue: [
            recoveredStack0 := (recoveredStack0) x.
            recoveredPC := 128.
        ].
        recoveredStep = 128 ifTrue: [
            recoveredStack1 := length.
            recoveredPC := 130.
        ].
        recoveredStep = 130 ifTrue: [
            recoveredStack0 := (recoveredStack0) - (recoveredStack1).
            recoveredPC := 131.
        ].
        recoveredStep = 131 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 132.
        ].
        recoveredStep = 132 ifTrue: [
            recoveredStack1 := (recoveredStack1) y.
            recoveredPC := 133.
        ].
        recoveredStep = 133 ifTrue: [
            recoveredStack2 := length.
            recoveredPC := 135.
        ].
        recoveredStep = 135 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (recoveredStack2).
            recoveredPC := 136.
        ].
        recoveredStep = 136 ifTrue: [
            recoveredStack0 := (recoveredStack0) @ (recoveredStack1).
            recoveredPC := 138.
        ].
        recoveredStep = 138 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 139.
        ].
        recoveredStep = 139 ifTrue: [
            recoveredPC := 144.
        ].
        recoveredStep = 142 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 143.
        ].
        recoveredStep = 143 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 144 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 145.
        ].
        recoveredStep = 145 ifTrue: [
            recoveredStack0 := (recoveredStack0) window.
            recoveredPC := 147.
        ].
        recoveredStep = 147 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 148.
        ].
        recoveredStep = 148 ifTrue: [
            recoveredStack1 := (recoveredStack1) gc.
            recoveredPC := 150.
        ].
        recoveredStep = 150 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 151.
        ].
        recoveredStep = 151 ifTrue: [
            recoveredStack2 := (recoveredStack2) x.
            recoveredPC := 152.
        ].
        recoveredStep = 152 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 153.
        ].
        recoveredStep = 153 ifTrue: [
            recoveredStack3 := (recoveredStack3) y.
            recoveredPC := 154.
        ].
        recoveredStep = 154 ifTrue: [
            recoveredStack4 := recoveredLocal2.
            recoveredPC := 155.
        ].
        recoveredStep = 155 ifTrue: [
            recoveredStack4 := (recoveredStack4) x.
            recoveredPC := 156.
        ].
        recoveredStep = 156 ifTrue: [
            recoveredStack5 := recoveredLocal2.
            recoveredPC := 157.
        ].
        recoveredStep = 157 ifTrue: [
            recoveredStack5 := (recoveredStack5) y.
            recoveredPC := 158.
        ].
        recoveredStep = 158 ifTrue: [
            (recoveredStack0) drawLine: (recoveredStack1) x1: (recoveredStack2) y1: (recoveredStack3) x2: (recoveredStack4) y2: (recoveredStack5).
            recoveredPC := 161.
        ].
        recoveredStep = 161 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 162.
        ].
        recoveredStep = 162 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 163.
        ].
        recoveredStep = 163 ifTrue: [
            (recoveredStack0) displayTempVarOn: (recoveredStack1).
            recoveredPC := 165.
        ].
        recoveredStep = 165 ifTrue: [
            recoveredStack0 := System.
            recoveredPC := 167.
        ].
        recoveredStep = 167 ifTrue: [
            recoveredStack0 := (recoveredStack0) isRuntime.
            recoveredPC := 169.
        ].
        recoveredStep = 169 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 209] ifFalse: [recoveredPC := 172].
        ].
        recoveredStep = 172 ifTrue: [
            recoveredStack0 := DisplayDebuggingPoints.
            recoveredPC := 174.
        ].
        recoveredStep = 174 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 178] ifFalse: [recoveredPC := 209].
        ].
        recoveredStep = 178 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 179.
        ].
        recoveredStep = 179 ifTrue: [
            recoveredStack0 := (recoveredStack0) gc.
            recoveredPC := 181.
        ].
        recoveredStep = 181 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 182.
        ].
        recoveredStep = 182 ifTrue: [
            recoveredStack1 := (recoveredStack1) palette.
            recoveredPC := 184.
        ].
        recoveredStep = 184 ifTrue: [
            recoveredStack2 := RBColorManager.
            recoveredPC := 186.
        ].
        recoveredStep = 186 ifTrue: [
            recoveredStack3 := 'green'.
            recoveredPC := 188.
        ].
        recoveredStep = 188 ifTrue: [
            recoveredStack2 := (recoveredStack2) namedColor: (recoveredStack3).
            recoveredPC := 190.
        ].
        recoveredStep = 190 ifTrue: [
            recoveredStack1 := (recoveredStack1) nearestPixelValue: (recoveredStack2).
            recoveredPC := 192.
        ].
        recoveredStep = 192 ifTrue: [
            (recoveredStack0) setForeground: (recoveredStack1).
            recoveredPC := 194.
        ].
        recoveredStep = 194 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 195.
        ].
        recoveredStep = 195 ifTrue: [
            recoveredStack0 := (recoveredStack0) window.
            recoveredPC := 197.
        ].
        recoveredStep = 197 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 198.
        ].
        recoveredStep = 198 ifTrue: [
            recoveredStack1 := (recoveredStack1) gc.
            recoveredPC := 200.
        ].
        recoveredStep = 200 ifTrue: [
            recoveredStack2 := Array.
            recoveredPC := 202.
        ].
        recoveredStep = 202 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 203.
        ].
        recoveredStep = 203 ifTrue: [
            recoveredStack3 := (recoveredStack3) pinFrame.
            recoveredPC := 205.
        ].
        recoveredStep = 205 ifTrue: [
            recoveredStack2 := (recoveredStack2) with: (recoveredStack3).
            recoveredPC := 207.
        ].
        recoveredStep = 207 ifTrue: [
            (recoveredStack0) drawRectangles: (recoveredStack1) rectangles: (recoveredStack2).
            recoveredPC := 209.
        ].
        recoveredStep = 209 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 210.
        ].
        recoveredStep = 210 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

