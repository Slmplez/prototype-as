"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20020cc0; bytecode file offset 0x92209c"
!SGJunctionGODB methodsFor: 'recovered'!
getXMLTag
    ^'Junction'
! !

"ASDBase.ic method 0x203d8964; bytecode file offset 0xcd5264"
!SGJunctionGODB methodsFor: 'recovered'!
graphicObjectDatamodelManager: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 |
    recoveredValue0 := SGJunctionGO.
    recoveredValue1 := (recoveredValue0) createDefault: ('').
    recoveredLocal2 := recoveredValue1.
    recoveredValue2 := recoveredLocal2.
    recoveredValue3 := (self) iD.
    (recoveredValue2) identifier: (recoveredValue3).
    recoveredValue4 := recoveredLocal2.
    recoveredValue5 := (self) attributedViewNames.
    (recoveredValue4) attributedViewNames: (recoveredValue5).
    recoveredValue6 := recoveredLocal2.
    recoveredValue7 := recoveredValue6.
    recoveredValue8 := (self) position.
    (recoveredValue7) moveTo: (recoveredValue8).
    recoveredValue9 := recoveredValue6.
    recoveredValue10 := (self) size.
    (recoveredValue9) size: (recoveredValue10).
    recoveredValue11 := recoveredValue6.
    recoveredValue12 := (self) areaStyle.
    (recoveredValue11) updateFrameAreaStyle: (recoveredValue12).
    recoveredValue13 := (self) dynamicConnectors.
    recoveredValue14 := [:recoveredBlock51Arg1 | 
    | recoveredBlock51Value0 recoveredBlock51Value1 recoveredBlock51Value2 recoveredBlock51Value3 recoveredBlock51Value4 recoveredBlock51Value5 recoveredBlock51Value6 recoveredBlock51Value7 recoveredBlock51Value8 |
    recoveredBlock51Value0 := recoveredLocal2.
    recoveredBlock51Value1 := recoveredBlock51Arg1.
    recoveredBlock51Value2 := (recoveredBlock51Value1) value.
    recoveredBlock51Value3 := (recoveredBlock51Value0) addConnectorAt: (recoveredBlock51Value2).
    recoveredLocal1 := recoveredBlock51Value3.
    recoveredBlock51Value4 := recoveredLocal1.
    recoveredBlock51Value5 := (recoveredBlock51Value4) owner.
    recoveredBlock51Value6 := recoveredBlock51Arg1.
    recoveredBlock51Value7 := (recoveredBlock51Value6) key.
    recoveredBlock51Value8 := (recoveredBlock51Value5) identifier: (recoveredBlock51Value7).
    recoveredBlock51Value8
].
    (recoveredValue13) associationsDo: (recoveredValue14).
    recoveredValue15 := recoveredLocal2.
    ^recoveredValue15
! !

