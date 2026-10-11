"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x200043f0; bytecode file offset 0x90206c"
!SGAbstractSpecialConnectorGO methodsFor: 'recovered'!
fitToRectangle: recoveredArg1
    ^self
! !

"ASDBase.ic method 0x20004d48; bytecode file offset 0x90206c"
!SGAbstractSpecialConnectorGO methodsFor: 'recovered'!
displayOn: recoveredArg1
    ^self
! !

"ASDBase.ic method 0x20005898; bytecode file offset 0x902744"
!SGAbstractSpecialConnectorGO methodsFor: 'recovered'!
fitToRaster: recoveredArg1 rectangle: recoveredArg2
    ^self
! !

"ASDBase.ic method 0x2000b558; bytecode file offset 0x908be4"
!SGAbstractSpecialConnectorGO methodsFor: 'recovered'!
getLinkPoint
    | recoveredValue0 |
    recoveredValue0 := (self) getPosition.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20030274; bytecode file offset 0x934580"
!SGAbstractSpecialConnectorGO methodsFor: 'recovered'!
updateConnectorPosition
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) manager.
    recoveredValue1 := (recoveredValue0) updateConnectorPosition.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20041414; bytecode file offset 0x93dd2c"
!SGAbstractSpecialConnectorGO methodsFor: 'recovered'!
isHierarchyStateBIE
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := manager.
    recoveredValue1 := (recoveredValue0) isHierarchyStateBIE.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20053430; bytecode file offset 0x9505d0"
!SGAbstractSpecialConnectorGO methodsFor: 'recovered'!
fitToRaster: recoveredArg1
    (self) fitToRasterNotRequired.
    ^self
! !

"ASDBase.ic method 0x2007b164; bytecode file offset 0x97c330"
!SGAbstractSpecialConnectorGO methodsFor: 'recovered'!
isSelectorPin
    ^false
! !

"ASDBase.ic method 0x20084dc8; bytecode file offset 0x981ca4"
!SGAbstractSpecialConnectorGO methodsFor: 'recovered'!
rememberBuildingPoint: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) setStartPoint: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x20095488; bytecode file offset 0x991fb4"
!SGAbstractSpecialConnectorGO methodsFor: 'recovered'!
repositionConnectorNameGO: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) getPosition.
    (recoveredValue0) moveTo: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x200b5478; bytecode file offset 0x9b1d3c"
!SGAbstractSpecialConnectorGO methodsFor: 'recovered'!
isBuildingFinished
    | recoveredStack0 recoveredStack1 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) getPosition.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := true.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x200d25b0; bytecode file offset 0x9cee7c"
!SGAbstractSpecialConnectorGO methodsFor: 'recovered'!
initInOutArgs
    (self) setInArg: (false).
    (self) setOutArg: (false).
    ^self
! !

"ASDBase.ic method 0x2018b3ac; bytecode file offset 0xa87c6c"
!SGAbstractSpecialConnectorGO methodsFor: 'recovered'!
scale: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 |
    recoveredValue0 := (self) getPosition.
    recoveredValue1 := manager.
    recoveredValue2 := (recoveredValue1) getPosition.
    recoveredValue3 := (recoveredValue0) - (recoveredValue2).
    recoveredLocal1 := recoveredValue3.
    recoveredValue4 := manager.
    recoveredValue5 := (recoveredValue4) getPosition.
    recoveredValue6 := recoveredLocal1.
    recoveredValue7 := recoveredArg1.
    recoveredValue8 := (recoveredValue6) * (recoveredValue7).
    recoveredValue9 := (recoveredValue8) rounded.
    recoveredValue10 := (recoveredValue5) + (recoveredValue9).
    (self) moveTo: (recoveredValue10).
    ^self
! !

"ASDBase.ic method 0x201cd69c; bytecode file offset 0xac9f64"
!SGAbstractSpecialConnectorGO methodsFor: 'recovered'!
connectionAllowedWith: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) isConnected.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 8] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) startGO.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := (recoveredStack0) manager.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := (recoveredStack0) startConnectionAllowed.
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
            recoveredStack0 := (recoveredStack0) manager.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := (recoveredStack0) endConnectionAllowed.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x205711f8; bytecode file offset 0xe6dae4"
!SGAbstractSpecialConnectorGO methodsFor: 'recovered'!
pinFrame
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 |
    recoveredValue0 := (self) getPosition.
    recoveredLocal2 := recoveredValue0.
    recoveredValue1 := PinDistance.
    recoveredValue2 := (recoveredValue1) // (2).
    recoveredLocal1 := recoveredValue2.
    recoveredValue3 := [
    | recoveredBlock16Value0 |
    recoveredBlock16Value0 := direction.
    recoveredBlock16Value0
].
    recoveredValue4 := [
    | recoveredBlock27Value0 recoveredBlock27Value1 recoveredBlock27Value2 recoveredBlock27Value3 recoveredBlock27Value4 recoveredBlock27Value5 recoveredBlock27Value6 recoveredBlock27Value7 recoveredBlock27Value8 recoveredBlock27Value9 recoveredBlock27Value10 recoveredBlock27Value11 recoveredBlock27Value12 recoveredBlock27Value13 recoveredBlock27Value14 recoveredBlock27Value15 recoveredBlock27Value16 recoveredBlock27Value17 recoveredBlock27Value18 |
    recoveredBlock27Value0 := Rectangle.
    recoveredBlock27Value1 := recoveredLocal2.
    recoveredBlock27Value2 := (recoveredBlock27Value1) x.
    recoveredBlock27Value3 := recoveredLocal1.
    recoveredBlock27Value4 := (recoveredBlock27Value2) - (recoveredBlock27Value3).
    recoveredBlock27Value5 := recoveredLocal2.
    recoveredBlock27Value6 := (recoveredBlock27Value5) y.
    recoveredBlock27Value7 := (recoveredBlock27Value4) @ (recoveredBlock27Value6).
    recoveredBlock27Value8 := recoveredLocal2.
    recoveredBlock27Value9 := (recoveredBlock27Value8) x.
    recoveredBlock27Value10 := recoveredLocal1.
    recoveredBlock27Value11 := (recoveredBlock27Value9) + (recoveredBlock27Value10).
    recoveredBlock27Value12 := recoveredLocal2.
    recoveredBlock27Value13 := (recoveredBlock27Value12) y.
    recoveredBlock27Value14 := length.
    recoveredBlock27Value15 := (recoveredBlock27Value13) + (recoveredBlock27Value14).
    recoveredBlock27Value16 := (recoveredBlock27Value11) @ (recoveredBlock27Value15).
    recoveredBlock27Value17 := (recoveredBlock27Value0) origin: (recoveredBlock27Value7) corner: (recoveredBlock27Value16).
    recoveredBlock27Value18 := recoveredBlock27Value17.
    recoveredLocal3 := recoveredBlock27Value18.
    recoveredBlock27Value17
].
    recoveredValue5 := [
    | recoveredBlock80Value0 recoveredBlock80Value1 recoveredBlock80Value2 recoveredBlock80Value3 recoveredBlock80Value4 recoveredBlock80Value5 recoveredBlock80Value6 recoveredBlock80Value7 recoveredBlock80Value8 recoveredBlock80Value9 recoveredBlock80Value10 recoveredBlock80Value11 recoveredBlock80Value12 recoveredBlock80Value13 recoveredBlock80Value14 recoveredBlock80Value15 recoveredBlock80Value16 recoveredBlock80Value17 recoveredBlock80Value18 |
    recoveredBlock80Value0 := Rectangle.
    recoveredBlock80Value1 := recoveredLocal2.
    recoveredBlock80Value2 := (recoveredBlock80Value1) x.
    recoveredBlock80Value3 := recoveredLocal1.
    recoveredBlock80Value4 := (recoveredBlock80Value2) - (recoveredBlock80Value3).
    recoveredBlock80Value5 := recoveredLocal2.
    recoveredBlock80Value6 := (recoveredBlock80Value5) y.
    recoveredBlock80Value7 := (recoveredBlock80Value4) @ (recoveredBlock80Value6).
    recoveredBlock80Value8 := recoveredLocal2.
    recoveredBlock80Value9 := (recoveredBlock80Value8) x.
    recoveredBlock80Value10 := recoveredLocal1.
    recoveredBlock80Value11 := (recoveredBlock80Value9) + (recoveredBlock80Value10).
    recoveredBlock80Value12 := recoveredLocal2.
    recoveredBlock80Value13 := (recoveredBlock80Value12) y.
    recoveredBlock80Value14 := length.
    recoveredBlock80Value15 := (recoveredBlock80Value13) - (recoveredBlock80Value14).
    recoveredBlock80Value16 := (recoveredBlock80Value11) @ (recoveredBlock80Value15).
    recoveredBlock80Value17 := (recoveredBlock80Value0) origin: (recoveredBlock80Value7) corner: (recoveredBlock80Value16).
    recoveredBlock80Value18 := recoveredBlock80Value17.
    recoveredLocal3 := recoveredBlock80Value18.
    recoveredBlock80Value17
].
    recoveredValue6 := [
    | recoveredBlock132Value0 recoveredBlock132Value1 recoveredBlock132Value2 recoveredBlock132Value3 recoveredBlock132Value4 recoveredBlock132Value5 recoveredBlock132Value6 recoveredBlock132Value7 recoveredBlock132Value8 recoveredBlock132Value9 recoveredBlock132Value10 recoveredBlock132Value11 recoveredBlock132Value12 recoveredBlock132Value13 recoveredBlock132Value14 recoveredBlock132Value15 recoveredBlock132Value16 recoveredBlock132Value17 recoveredBlock132Value18 |
    recoveredBlock132Value0 := Rectangle.
    recoveredBlock132Value1 := recoveredLocal2.
    recoveredBlock132Value2 := (recoveredBlock132Value1) x.
    recoveredBlock132Value3 := recoveredLocal2.
    recoveredBlock132Value4 := (recoveredBlock132Value3) y.
    recoveredBlock132Value5 := recoveredLocal1.
    recoveredBlock132Value6 := (recoveredBlock132Value4) - (recoveredBlock132Value5).
    recoveredBlock132Value7 := (recoveredBlock132Value2) @ (recoveredBlock132Value6).
    recoveredBlock132Value8 := recoveredLocal2.
    recoveredBlock132Value9 := (recoveredBlock132Value8) x.
    recoveredBlock132Value10 := length.
    recoveredBlock132Value11 := (recoveredBlock132Value9) + (recoveredBlock132Value10).
    recoveredBlock132Value12 := recoveredLocal2.
    recoveredBlock132Value13 := (recoveredBlock132Value12) y.
    recoveredBlock132Value14 := recoveredLocal1.
    recoveredBlock132Value15 := (recoveredBlock132Value13) + (recoveredBlock132Value14).
    recoveredBlock132Value16 := (recoveredBlock132Value11) @ (recoveredBlock132Value15).
    recoveredBlock132Value17 := (recoveredBlock132Value0) origin: (recoveredBlock132Value7) corner: (recoveredBlock132Value16).
    recoveredBlock132Value18 := recoveredBlock132Value17.
    recoveredLocal3 := recoveredBlock132Value18.
    recoveredBlock132Value17
].
    recoveredValue7 := [
    | recoveredBlock184Value0 recoveredBlock184Value1 recoveredBlock184Value2 recoveredBlock184Value3 recoveredBlock184Value4 recoveredBlock184Value5 recoveredBlock184Value6 recoveredBlock184Value7 recoveredBlock184Value8 recoveredBlock184Value9 recoveredBlock184Value10 recoveredBlock184Value11 recoveredBlock184Value12 recoveredBlock184Value13 recoveredBlock184Value14 recoveredBlock184Value15 recoveredBlock184Value16 recoveredBlock184Value17 recoveredBlock184Value18 |
    recoveredBlock184Value0 := Rectangle.
    recoveredBlock184Value1 := recoveredLocal2.
    recoveredBlock184Value2 := (recoveredBlock184Value1) x.
    recoveredBlock184Value3 := length.
    recoveredBlock184Value4 := (recoveredBlock184Value2) - (recoveredBlock184Value3).
    recoveredBlock184Value5 := recoveredLocal2.
    recoveredBlock184Value6 := (recoveredBlock184Value5) y.
    recoveredBlock184Value7 := recoveredLocal1.
    recoveredBlock184Value8 := (recoveredBlock184Value6) - (recoveredBlock184Value7).
    recoveredBlock184Value9 := (recoveredBlock184Value4) @ (recoveredBlock184Value8).
    recoveredBlock184Value10 := recoveredLocal2.
    recoveredBlock184Value11 := (recoveredBlock184Value10) x.
    recoveredBlock184Value12 := recoveredLocal2.
    recoveredBlock184Value13 := (recoveredBlock184Value12) y.
    recoveredBlock184Value14 := recoveredLocal1.
    recoveredBlock184Value15 := (recoveredBlock184Value13) + (recoveredBlock184Value14).
    recoveredBlock184Value16 := (recoveredBlock184Value11) @ (recoveredBlock184Value15).
    recoveredBlock184Value17 := (recoveredBlock184Value0) origin: (recoveredBlock184Value9) corner: (recoveredBlock184Value16).
    recoveredBlock184Value18 := recoveredBlock184Value17.
    recoveredLocal3 := recoveredBlock184Value18.
    recoveredBlock184Value17
].
    (recoveredValue3) case: ('up') do: (recoveredValue4) case: ('down') do: (recoveredValue5) case: ('left') do: (recoveredValue6) case: ('right') do: (recoveredValue7).
    recoveredValue8 := recoveredLocal3.
    recoveredValue9 := lineStyle.
    recoveredValue10 := (recoveredValue9) getWidth.
    recoveredValue11 := (recoveredValue8) expandBy: (recoveredValue10).
    ^recoveredValue11
! !

