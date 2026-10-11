"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2000d6b4; bytecode file offset 0x90a4b8"
!AbtInterfaceSpec class methodsFor: 'recovered'!
, recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2003bfac; bytecode file offset 0x9388c4"
!AbtInterfaceSpec class methodsFor: 'recovered'!
interfaceSpecFeatureNamed: recoveredArg1 ifAbsent: recoveredArg2
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg2.
    recoveredValue1 := (recoveredValue0) value.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2003c988; bytecode file offset 0x93bf94"
!AbtInterfaceSpec class methodsFor: 'recovered'!
interfaceSpecActions
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := AbtOrderedDictionary.
    recoveredValue1 := (recoveredValue0) new.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2003cf58; bytecode file offset 0x93bf94"
!AbtInterfaceSpec class methodsFor: 'recovered'!
features
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := AbtOrderedDictionary.
    recoveredValue1 := (recoveredValue0) new.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2003e1d8; bytecode file offset 0x93bf94"
!AbtInterfaceSpec class methodsFor: 'recovered'!
interfaceSpecAttributes
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := AbtOrderedDictionary.
    recoveredValue1 := (recoveredValue0) new.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2003e678; bytecode file offset 0x93bf94"
!AbtInterfaceSpec class methodsFor: 'recovered'!
interfaceSpecFeatures
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := AbtOrderedDictionary.
    recoveredValue1 := (recoveredValue0) new.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2003e9a8; bytecode file offset 0x93bf94"
!AbtInterfaceSpec class methodsFor: 'recovered'!
interfaceSpecEvents
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := AbtOrderedDictionary.
    recoveredValue1 := (recoveredValue0) new.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2027bb8c; bytecode file offset 0xb78464"
!AbtInterfaceSpec class methodsFor: 'recovered'!
fromDOMElement: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := (self) new.
    recoveredLocal1 := recoveredValue0.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue1) childNodes.
    recoveredValue3 := [:recoveredBlock12Arg1 | 
    | recoveredBlock12Value0 recoveredBlock12Value1 recoveredBlock12Value2 recoveredBlock12Value3 recoveredBlock12Value4 recoveredBlock12Value5 recoveredBlock12Value6 recoveredBlock12Value7 |
    recoveredBlock12Value0 := recoveredLocal1.
    recoveredBlock12Value1 := recoveredBlock12Arg1.
    recoveredBlock12Value2 := (recoveredBlock12Value1) getAttribute: ('Name').
    recoveredBlock12Value3 := (recoveredBlock12Value2) asSymbol.
    recoveredBlock12Value4 := AbtFeatureSpec.
    recoveredBlock12Value5 := recoveredBlock12Arg1.
    recoveredBlock12Value6 := (recoveredBlock12Value4) fromDOMElement: (recoveredBlock12Value5).
    recoveredBlock12Value7 := (recoveredBlock12Value0) featureNamed: (recoveredBlock12Value3) put: (recoveredBlock12Value6).
    recoveredBlock12Value7
].
    (recoveredValue2) do: (recoveredValue3).
    recoveredValue4 := recoveredLocal1.
    ^recoveredValue4
! !

