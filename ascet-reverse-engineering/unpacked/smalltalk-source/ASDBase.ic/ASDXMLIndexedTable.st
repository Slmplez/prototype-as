"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20040378; bytecode file offset 0x93d278"
!ASDXMLIndexedTable methodsFor: 'recovered'!
size
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := elements.
    recoveredValue1 := (recoveredValue0) size.
    ^recoveredValue1
! !

"ASDBase.ic method 0x200894cc; bytecode file offset 0x985ef8"
!ASDXMLIndexedTable methodsFor: 'recovered'!
init
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := LookupTable.
    recoveredValue1 := (recoveredValue0) new.
    elements := recoveredValue1.
    ^self
! !

"ASDBase.ic method 0x200ac788; bytecode file offset 0x9a9040"
!ASDXMLIndexedTable methodsFor: 'recovered'!
at: recoveredArg1 put: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := elements.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    (recoveredValue0) at: (recoveredValue1) put: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x20320f80; bytecode file offset 0xc1d854"
!ASDXMLIndexedTable methodsFor: 'recovered'!
asArray
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 |
    recoveredValue0 := Array.
    recoveredValue1 := elements.
    recoveredValue2 := (recoveredValue1) size.
    recoveredValue3 := (recoveredValue0) new: (recoveredValue2).
    recoveredLocal2 := recoveredValue3.
    recoveredLocal1 := 1.
    recoveredValue4 := elements.
    recoveredValue5 := (recoveredValue4) keys.
    recoveredValue6 := (recoveredValue5) asSortedCollection.
    recoveredValue7 := [:recoveredBlock23Arg1 | 
    | recoveredBlock23Value0 recoveredBlock23Value1 recoveredBlock23Value2 recoveredBlock23Value3 recoveredBlock23Value4 recoveredBlock23Value5 recoveredBlock23Value6 recoveredBlock23Value7 |
    recoveredBlock23Value0 := recoveredLocal2.
    recoveredBlock23Value1 := recoveredLocal1.
    recoveredBlock23Value2 := elements.
    recoveredBlock23Value3 := recoveredBlock23Arg1.
    recoveredBlock23Value4 := (recoveredBlock23Value2) at: (recoveredBlock23Value3).
    (recoveredBlock23Value0) at: (recoveredBlock23Value1) put: (recoveredBlock23Value4).
    recoveredBlock23Value5 := recoveredLocal1.
    recoveredBlock23Value6 := (recoveredBlock23Value5) + (1).
    recoveredBlock23Value7 := recoveredBlock23Value6.
    recoveredLocal1 := recoveredBlock23Value7.
    recoveredBlock23Value6
].
    (recoveredValue6) do: (recoveredValue7).
    recoveredValue8 := recoveredLocal2.
    ^recoveredValue8
! !

"ASDBase.ic method 0x2037ad98; bytecode file offset 0xc7766c"
!ASDXMLIndexedTable methodsFor: 'recovered'!
asArrayWithLeadingObj: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 |
    recoveredValue0 := Array.
    recoveredValue1 := elements.
    recoveredValue2 := (recoveredValue1) size.
    recoveredValue3 := (recoveredValue2) + (1).
    recoveredValue4 := (recoveredValue0) new: (recoveredValue3).
    recoveredLocal2 := recoveredValue4.
    recoveredValue5 := recoveredLocal2.
    recoveredValue6 := recoveredArg1.
    (recoveredValue5) at: (1) put: (recoveredValue6).
    recoveredLocal1 := 2.
    recoveredValue7 := elements.
    recoveredValue8 := (recoveredValue7) keys.
    recoveredValue9 := (recoveredValue8) asSortedCollection.
    recoveredValue10 := [:recoveredBlock35Arg1 | 
    | recoveredBlock35Value0 recoveredBlock35Value1 recoveredBlock35Value2 recoveredBlock35Value3 recoveredBlock35Value4 recoveredBlock35Value5 recoveredBlock35Value6 recoveredBlock35Value7 |
    recoveredBlock35Value0 := recoveredLocal2.
    recoveredBlock35Value1 := recoveredLocal1.
    recoveredBlock35Value2 := elements.
    recoveredBlock35Value3 := recoveredBlock35Arg1.
    recoveredBlock35Value4 := (recoveredBlock35Value2) at: (recoveredBlock35Value3).
    (recoveredBlock35Value0) at: (recoveredBlock35Value1) put: (recoveredBlock35Value4).
    recoveredBlock35Value5 := recoveredLocal1.
    recoveredBlock35Value6 := (recoveredBlock35Value5) + (1).
    recoveredBlock35Value7 := recoveredBlock35Value6.
    recoveredLocal1 := recoveredBlock35Value7.
    recoveredBlock35Value6
].
    (recoveredValue9) do: (recoveredValue10).
    recoveredValue11 := recoveredLocal2.
    ^recoveredValue11
! !

"ASDBase.ic method 0x2037ae08; bytecode file offset 0xc776dc"
!ASDXMLIndexedTable methodsFor: 'recovered'!
asArrayWithTrailingObj: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 |
    recoveredValue0 := Array.
    recoveredValue1 := elements.
    recoveredValue2 := (recoveredValue1) size.
    recoveredValue3 := (recoveredValue2) + (1).
    recoveredValue4 := (recoveredValue0) new: (recoveredValue3).
    recoveredLocal2 := recoveredValue4.
    recoveredLocal1 := 1.
    recoveredValue5 := elements.
    recoveredValue6 := (recoveredValue5) keys.
    recoveredValue7 := (recoveredValue6) asSortedCollection.
    recoveredValue8 := [:recoveredBlock24Arg1 | 
    | recoveredBlock24Value0 recoveredBlock24Value1 recoveredBlock24Value2 recoveredBlock24Value3 recoveredBlock24Value4 recoveredBlock24Value5 recoveredBlock24Value6 recoveredBlock24Value7 |
    recoveredBlock24Value0 := recoveredLocal2.
    recoveredBlock24Value1 := recoveredLocal1.
    recoveredBlock24Value2 := elements.
    recoveredBlock24Value3 := recoveredBlock24Arg1.
    recoveredBlock24Value4 := (recoveredBlock24Value2) at: (recoveredBlock24Value3).
    (recoveredBlock24Value0) at: (recoveredBlock24Value1) put: (recoveredBlock24Value4).
    recoveredBlock24Value5 := recoveredLocal1.
    recoveredBlock24Value6 := (recoveredBlock24Value5) + (1).
    recoveredBlock24Value7 := recoveredBlock24Value6.
    recoveredLocal1 := recoveredBlock24Value7.
    recoveredBlock24Value6
].
    (recoveredValue7) do: (recoveredValue8).
    recoveredValue9 := recoveredLocal2.
    recoveredValue10 := recoveredLocal2.
    recoveredValue11 := (recoveredValue10) size.
    recoveredValue12 := recoveredArg1.
    (recoveredValue9) at: (recoveredValue11) put: (recoveredValue12).
    recoveredValue13 := recoveredLocal2.
    ^recoveredValue13
! !

