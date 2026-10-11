"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20001da0; bytecode file offset 0x8ffcfc"
!ASDDatamodelServiceProvider class methodsFor: 'recovered'!
new
    ^self
! !

"ASDBase.ic method 0x20156cbc; bytecode file offset 0xa53580"
!ASDDatamodelServiceProvider class methodsFor: 'recovered'!
lookupElementName: recoveredArg1 component: recoveredArg2
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack2 := [:block280cd9ecArg1 :block280cd9ecArg2 | 
    | block280cd9ecValue0 block280cd9ecValue1 block280cd9ecValue2 block280cd9ecValue3 |
    block280cd9ecValue0 := block280cd9ecArg1.
    block280cd9ecValue1 := (block280cd9ecValue0) elementName.
    block280cd9ecValue2 := block280cd9ecArg2.
    block280cd9ecValue3 := (block280cd9ecValue1) equals: (block280cd9ecValue2).
    block280cd9ecValue3
].
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := (recoveredStack0) lookupElement: (recoveredStack1) comparisonBlock: (recoveredStack2) component: (recoveredStack3).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201b61c0; bytecode file offset 0xab2a8c"
!ASDDatamodelServiceProvider class methodsFor: 'recovered'!
lookupElementOid: recoveredArg1 component: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := [:recoveredBlock5Arg1 :recoveredBlock5Arg2 | 
    | recoveredBlock5Value0 recoveredBlock5Value1 recoveredBlock5Value2 recoveredBlock5Value3 recoveredBlock5Value4 recoveredBlock5Value5 recoveredBlock5Value6 |
    recoveredBlock5Value0 := (self) library.
    recoveredBlock5Value1 := (recoveredBlock5Value0) globalIdServer.
    recoveredBlock5Value2 := recoveredBlock5Arg2.
    recoveredBlock5Value3 := (recoveredBlock5Value1) fromAlphaNumString: (recoveredBlock5Value2).
    recoveredBlock5Value4 := recoveredBlock5Arg1.
    recoveredBlock5Value5 := (recoveredBlock5Value4) aliasName.
    recoveredBlock5Value6 := (recoveredBlock5Value3) equals: (recoveredBlock5Value5).
    recoveredBlock5Value6
].
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := (self) lookupElement: (recoveredValue0) comparisonBlock: (recoveredValue1) component: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x202ef7a8; bytecode file offset 0xbec0a4"
!ASDDatamodelServiceProvider class methodsFor: 'recovered'!
createNameChainFor: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := ReadWriteStream.
    recoveredValue1 := (recoveredValue0) on: ('').
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := [:recoveredBlock15Arg1 | 
    | recoveredBlock15Value0 recoveredBlock15Value1 recoveredBlock15Value2 recoveredBlock15Value3 |
    recoveredBlock15Value0 := recoveredLocal1.
    recoveredBlock15Value1 := recoveredBlock15Arg1.
    recoveredBlock15Value2 := (recoveredBlock15Value1) elementName.
    recoveredBlock15Value3 := (recoveredBlock15Value0) nextPutAll: (recoveredBlock15Value2).
    recoveredBlock15Value3
].
    recoveredValue4 := [
    | recoveredBlock30Value0 recoveredBlock30Value1 |
    recoveredBlock30Value0 := recoveredLocal1.
    recoveredBlock30Value1 := (recoveredBlock30Value0) nextPutAll: ('/').
    recoveredBlock30Value1
].
    (recoveredValue2) do: (recoveredValue3) andBetweenDo: (recoveredValue4).
    recoveredValue5 := recoveredLocal1.
    recoveredValue6 := (recoveredValue5) contents.
    ^recoveredValue6
! !

"ASDBase.ic method 0x20364cc8; bytecode file offset 0xc615a4"
!ASDDatamodelServiceProvider class methodsFor: 'recovered'!
createOidChainFor: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) isEmpty.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := ReadWriteStream.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := ''.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := (recoveredStack1) on: (recoveredStack2).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack2 := [:recoveredBlock25Arg1 | 
    | recoveredBlock25Value0 recoveredBlock25Value1 recoveredBlock25Value2 recoveredBlock25Value3 recoveredBlock25Value4 |
    recoveredBlock25Value0 := recoveredLocal1.
    recoveredBlock25Value1 := recoveredBlock25Arg1.
    recoveredBlock25Value2 := (recoveredBlock25Value1) aliasName.
    recoveredBlock25Value3 := (recoveredBlock25Value2) aliasAsIdString.
    recoveredBlock25Value4 := (recoveredBlock25Value0) nextPutAll: (recoveredBlock25Value3).
    recoveredBlock25Value4
].
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack3 := [
    | recoveredBlock43Value0 recoveredBlock43Value1 |
    recoveredBlock43Value0 := recoveredLocal1.
    recoveredBlock43Value1 := (recoveredBlock43Value0) nextPut: ($/).
    recoveredBlock43Value1
].
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            (recoveredStack1) do: (recoveredStack2) andBetweenDo: (recoveredStack3).
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack1 := (recoveredStack1) contents.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x204df93c; bytecode file offset 0xddc234"
!ASDDatamodelServiceProvider class methodsFor: 'recovered'!
lookupElement: recoveredArg1 comparisonBlock: recoveredArg2 component: recoveredArg3
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := OrderedCollection.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := '/'.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) asArrayOfSubstringsSeparatedBy: (recoveredStack2).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredLocal3 := recoveredStack2.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := (recoveredStack1) isEmpty.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 26] ifFalse: [recoveredPC := 28].
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack2 := [:recoveredBlock37Arg1 :recoveredBlock37Arg2 | 
    | recoveredBlock37Value0 recoveredBlock37Value1 recoveredBlock37Value2 recoveredBlock37Value3 recoveredBlock37Value4 recoveredBlock37Value5 recoveredBlock37Value6 |
    recoveredBlock37Value0 := recoveredLocal1.
    recoveredBlock37Value1 := (recoveredBlock37Value0) allVariables.
    recoveredBlock37Value2 := [:recoveredBlock37Block49Arg1 | 
    | recoveredBlock37Block49Stack0 recoveredBlock37Block49Stack1 recoveredBlock37Block49Stack2 recoveredBlock37Block49Stack3 recoveredBlock37Block49Stack4 recoveredBlock37Block49PC recoveredBlock37Block49Step recoveredBlock37Block49Done recoveredBlock37Block49Result |
    recoveredBlock37Block49Stack0 := nil.
    recoveredBlock37Block49PC := 56.
    recoveredBlock37Block49Done := false.
    [recoveredBlock37Block49Done not] whileTrue: [
        recoveredBlock37Block49Step := recoveredBlock37Block49PC.
        recoveredBlock37Block49Step = 56 ifTrue: [
            recoveredBlock37Block49Stack1 := false.
            recoveredBlock37Block49PC := 57.
        ].
        recoveredBlock37Block49Step = 57 ifTrue: [
            recoveredBlock37Block49Stack2 := recoveredBlock37Arg2.
            recoveredBlock37Block49PC := 60.
        ].
        recoveredBlock37Block49Step = 60 ifTrue: [
            recoveredBlock37Block49Stack3 := recoveredLocal3.
            recoveredBlock37Block49PC := 63.
        ].
        recoveredBlock37Block49Step = 63 ifTrue: [
            recoveredBlock37Block49Stack3 := (recoveredBlock37Block49Stack3) size.
            recoveredBlock37Block49PC := 65.
        ].
        recoveredBlock37Block49Step = 65 ifTrue: [
            recoveredBlock37Block49Stack2 := (recoveredBlock37Block49Stack2) ~= (recoveredBlock37Block49Stack3).
            recoveredBlock37Block49PC := 66.
        ].
        recoveredBlock37Block49Step = 66 ifTrue: [
            (recoveredBlock37Block49Stack2) ifTrue: [recoveredBlock37Block49PC := 84] ifFalse: [recoveredBlock37Block49PC := 70].
        ].
        recoveredBlock37Block49Step = 70 ifTrue: [
            recoveredBlock37Block49Stack2 := recoveredBlock37Block49Arg1.
            recoveredBlock37Block49PC := 71.
        ].
        recoveredBlock37Block49Step = 71 ifTrue: [
            recoveredBlock37Block49Stack2 := (recoveredBlock37Block49Stack2) sgClassKey.
            recoveredBlock37Block49PC := 73.
        ].
        recoveredBlock37Block49Step = 73 ifTrue: [
            recoveredBlock37Block49Stack2 := (recoveredBlock37Block49Stack2) isPrimitive.
            recoveredBlock37Block49PC := 75.
        ].
        recoveredBlock37Block49Step = 75 ifTrue: [
            (recoveredBlock37Block49Stack2) ifTrue: [recoveredBlock37Block49PC := 78] ifFalse: [recoveredBlock37Block49PC := 94].
        ].
        recoveredBlock37Block49Step = 78 ifTrue: [
            recoveredBlock37Block49Stack2 := recoveredBlock37Block49Arg1.
            recoveredBlock37Block49PC := 79.
        ].
        recoveredBlock37Block49Step = 79 ifTrue: [
            recoveredBlock37Block49Stack2 := (recoveredBlock37Block49Stack2) isImported.
            recoveredBlock37Block49PC := 81.
        ].
        recoveredBlock37Block49Step = 81 ifTrue: [
            (recoveredBlock37Block49Stack2) ifTrue: [recoveredBlock37Block49PC := 94] ifFalse: [recoveredBlock37Block49PC := 84].
        ].
        recoveredBlock37Block49Step = 84 ifTrue: [
            recoveredBlock37Block49PC := 85.
        ].
        recoveredBlock37Block49Step = 85 ifTrue: [
            recoveredBlock37Block49Stack1 := recoveredArg2.
            recoveredBlock37Block49PC := 88.
        ].
        recoveredBlock37Block49Step = 88 ifTrue: [
            recoveredBlock37Block49Stack2 := recoveredBlock37Block49Arg1.
            recoveredBlock37Block49PC := 89.
        ].
        recoveredBlock37Block49Step = 89 ifTrue: [
            recoveredBlock37Block49Stack3 := recoveredBlock37Arg1.
            recoveredBlock37Block49PC := 92.
        ].
        recoveredBlock37Block49Step = 92 ifTrue: [
            recoveredBlock37Block49Stack1 := (recoveredBlock37Block49Stack1) value: (recoveredBlock37Block49Stack2) value: (recoveredBlock37Block49Stack3).
            recoveredBlock37Block49PC := 94.
        ].
        recoveredBlock37Block49Step = 94 ifTrue: [
            recoveredBlock37Block49Result := recoveredBlock37Block49Stack1.
            recoveredBlock37Block49Done := true.
        ].
    ].
    recoveredBlock37Block49Result
].
    recoveredBlock37Value3 := [
    ^nil
].
    recoveredBlock37Value4 := (recoveredBlock37Value1) detect: (recoveredBlock37Value2) ifNone: (recoveredBlock37Value3).
    recoveredBlock37Value5 := [:recoveredBlock37Block106Arg1 | 
    | recoveredBlock37Block106Local1 recoveredBlock37Block106Stack0 recoveredBlock37Block106Stack1 recoveredBlock37Block106Stack2 recoveredBlock37Block106Stack3 recoveredBlock37Block106PC recoveredBlock37Block106Step recoveredBlock37Block106Done recoveredBlock37Block106Result |
    recoveredBlock37Block106Stack0 := self.
    recoveredBlock37Block106PC := 112.
    recoveredBlock37Block106Done := false.
    [recoveredBlock37Block106Done not] whileTrue: [
        recoveredBlock37Block106Step := recoveredBlock37Block106PC.
        recoveredBlock37Block106Step = 112 ifTrue: [
            recoveredBlock37Block106Stack1 := recoveredLocal2.
            recoveredBlock37Block106PC := 115.
        ].
        recoveredBlock37Block106Step = 115 ifTrue: [
            recoveredBlock37Block106Stack2 := recoveredBlock37Block106Arg1.
            recoveredBlock37Block106PC := 116.
        ].
        recoveredBlock37Block106Step = 116 ifTrue: [
            (recoveredBlock37Block106Stack1) add: (recoveredBlock37Block106Stack2).
            recoveredBlock37Block106PC := 118.
        ].
        recoveredBlock37Block106Step = 118 ifTrue: [
            recoveredBlock37Block106Stack1 := recoveredBlock37Arg2.
            recoveredBlock37Block106PC := 121.
        ].
        recoveredBlock37Block106Step = 121 ifTrue: [
            recoveredBlock37Block106Stack2 := recoveredLocal3.
            recoveredBlock37Block106PC := 124.
        ].
        recoveredBlock37Block106Step = 124 ifTrue: [
            recoveredBlock37Block106Stack2 := (recoveredBlock37Block106Stack2) size.
            recoveredBlock37Block106PC := 126.
        ].
        recoveredBlock37Block106Step = 126 ifTrue: [
            recoveredBlock37Block106Stack1 := (recoveredBlock37Block106Stack1) equals: (recoveredBlock37Block106Stack2).
            recoveredBlock37Block106PC := 128.
        ].
        recoveredBlock37Block106Step = 128 ifTrue: [
            (recoveredBlock37Block106Stack1) ifTrue: [recoveredBlock37Block106PC := 132] ifFalse: [recoveredBlock37Block106PC := 136].
        ].
        recoveredBlock37Block106Step = 132 ifTrue: [
            recoveredBlock37Block106Stack1 := recoveredLocal2.
            recoveredBlock37Block106PC := 135.
        ].
        recoveredBlock37Block106Step = 135 ifTrue: [
            ^recoveredBlock37Block106Stack1
        ].
        recoveredBlock37Block106Step = 136 ifTrue: [
            recoveredBlock37Block106Stack1 := recoveredBlock37Block106Arg1.
            recoveredBlock37Block106PC := 137.
        ].
        recoveredBlock37Block106Step = 137 ifTrue: [
            recoveredBlock37Block106Stack1 := (recoveredBlock37Block106Stack1) sgClass.
            recoveredBlock37Block106PC := 139.
        ].
        recoveredBlock37Block106Step = 139 ifTrue: [
            recoveredBlock37Block106Stack2 := recoveredBlock37Block106Stack1.
            recoveredBlock37Block106PC := 140.
        ].
        recoveredBlock37Block106Step = 140 ifTrue: [
            recoveredBlock37Block106Local1 := recoveredBlock37Block106Stack2.
            recoveredBlock37Block106PC := 141.
        ].
        recoveredBlock37Block106Step = 141 ifTrue: [
            (recoveredBlock37Block106Stack1 == nil) ifTrue: [recoveredBlock37Block106PC := 152] ifFalse: [recoveredBlock37Block106PC := 144].
        ].
        recoveredBlock37Block106Step = 144 ifTrue: [
            recoveredBlock37Block106Stack1 := recoveredBlock37Block106Local1.
            recoveredBlock37Block106PC := 145.
        ].
        recoveredBlock37Block106Step = 145 ifTrue: [
            recoveredBlock37Block106Stack2 := recoveredBlock37Block106Stack1.
            recoveredBlock37Block106PC := 146.
        ].
        recoveredBlock37Block106Step = 146 ifTrue: [
            recoveredLocal1 := recoveredBlock37Block106Stack2.
            recoveredBlock37Block106PC := 149.
        ].
        recoveredBlock37Block106Step = 149 ifTrue: [
            recoveredBlock37Block106PC := 154.
        ].
        recoveredBlock37Block106Step = 152 ifTrue: [
            recoveredBlock37Block106Stack1 := nil.
            recoveredBlock37Block106PC := 153.
        ].
        recoveredBlock37Block106Step = 153 ifTrue: [
            ^recoveredBlock37Block106Stack1
        ].
        recoveredBlock37Block106Step = 154 ifTrue: [
            recoveredBlock37Block106Result := recoveredBlock37Block106Stack1.
            recoveredBlock37Block106Done := true.
        ].
    ].
    recoveredBlock37Block106Result
].
    recoveredBlock37Value6 := (recoveredBlock37Value4) ifNotNil: (recoveredBlock37Value5).
    recoveredBlock37Value6
].
            recoveredPC := 158.
        ].
        recoveredStep = 158 ifTrue: [
            (recoveredStack1) doWithIndex: (recoveredStack2).
            recoveredPC := 160.
        ].
        recoveredStep = 160 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

