"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20014034; bytecode file offset 0x912098"
!RBSpecialSensitivePointWrapper methodsFor: 'recovered'!
changingRectangle
    | recoveredValue0 |
    recoveredValue0 := RBRectangleGO.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200155dc; bytecode file offset 0x912098"
!RBSpecialSensitivePointWrapper methodsFor: 'recovered'!
sensitivePointColor
    | recoveredValue0 |
    recoveredValue0 := ClrSelect.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2002f724; bytecode file offset 0x934580"
!RBSpecialSensitivePointWrapper methodsFor: 'recovered'!
graphSensitivePoints
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) graphObject.
    recoveredValue1 := (recoveredValue0) specialSensitivePoints.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20178010; bytecode file offset 0xa7490c"
!RBSpecialSensitivePointWrapper methodsFor: 'recovered'!
displaySensitivePointObjectsOn: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) sensitivePointObjects.
    recoveredValue1 := [:recoveredBlock5Arg1 | 
    | recoveredBlock5Value0 recoveredBlock5Value1 recoveredBlock5Value2 |
    recoveredBlock5Value0 := recoveredBlock5Arg1.
    recoveredBlock5Value1 := recoveredArg1.
    recoveredBlock5Value2 := (recoveredBlock5Value0) displayOn: (recoveredBlock5Value1).
    recoveredBlock5Value2
].
    (recoveredValue0) do: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x2046ef64; bytecode file offset 0xd6b880"
!RBSpecialSensitivePointWrapper methodsFor: 'recovered'!
initialize
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 |
    recoveredValue0 := (self) graphSensitivePoints.
    recoveredLocal4 := recoveredValue0.
    recoveredValue1 := OrderedCollection.
    recoveredValue2 := (recoveredValue1) new.
    recoveredLocal5 := recoveredValue2.
    recoveredValue3 := RBLineStyle.
    recoveredValue4 := (recoveredValue3) createDefault.
    recoveredValue5 := recoveredValue4.
    recoveredValue6 := LineSolid.
    (recoveredValue5) type: (recoveredValue6).
    recoveredValue7 := recoveredValue4.
    recoveredValue8 := RBColorManager.
    recoveredValue9 := ClrBackground.
    recoveredValue10 := (recoveredValue8) namedColor: (recoveredValue9).
    (recoveredValue7) color: (recoveredValue10).
    recoveredValue11 := (recoveredValue4) width: (1).
    recoveredLocal2 := recoveredValue11.
    recoveredValue12 := RBAreaStyle.
    recoveredValue13 := (recoveredValue12) createDefault.
    recoveredValue14 := RBColorManager.
    recoveredValue15 := (self) sensitivePointColor.
    recoveredValue16 := (recoveredValue14) namedColor: (recoveredValue15).
    recoveredValue17 := (recoveredValue13) color: (recoveredValue16).
    recoveredLocal1 := recoveredValue17.
    recoveredValue18 := recoveredLocal4.
    recoveredValue19 := [:recoveredBlock58Arg1 | 
    | recoveredBlock58Value0 recoveredBlock58Value1 recoveredBlock58Value2 recoveredBlock58Value3 recoveredBlock58Value4 recoveredBlock58Value5 recoveredBlock58Value6 recoveredBlock58Value7 recoveredBlock58Value8 recoveredBlock58Value9 recoveredBlock58Value10 recoveredBlock58Value11 recoveredBlock58Value12 recoveredBlock58Value13 recoveredBlock58Value14 recoveredBlock58Value15 |
    recoveredBlock58Value0 := (self) changingRectangle.
    recoveredBlock58Value1 := recoveredBlock58Arg1.
    recoveredBlock58Value2 := (self) handleSize.
    recoveredBlock58Value3 := (recoveredBlock58Value2) x.
    recoveredBlock58Value4 := (self) handleSize.
    recoveredBlock58Value5 := (recoveredBlock58Value4) y.
    recoveredBlock58Value6 := recoveredLocal2.
    recoveredBlock58Value7 := recoveredLocal1.
    recoveredBlock58Value8 := (self) manager.
    recoveredBlock58Value9 := (recoveredBlock58Value0) createAt: (recoveredBlock58Value1) xAxis: (recoveredBlock58Value3) yAxis: (recoveredBlock58Value5) lineStyle: (recoveredBlock58Value6) areaStyle: (recoveredBlock58Value7) manager: (recoveredBlock58Value8).
    recoveredLocal3 := recoveredBlock58Value9.
    recoveredBlock58Value10 := recoveredLocal3.
    recoveredBlock58Value11 := recoveredBlock58Value10.
    (recoveredBlock58Value11) includesFlag: (true).
    recoveredBlock58Value12 := GXhighlight.
    (recoveredBlock58Value10) mixingRule: (recoveredBlock58Value12).
    recoveredBlock58Value13 := recoveredLocal5.
    recoveredBlock58Value14 := recoveredLocal3.
    recoveredBlock58Value15 := (recoveredBlock58Value13) add: (recoveredBlock58Value14).
    recoveredBlock58Value15
].
    (recoveredValue18) do: (recoveredValue19).
    recoveredValue20 := recoveredLocal5.
    (self) sensitivePointObjects: (recoveredValue20).
    ^self
! !

