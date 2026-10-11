"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20017654; bytecode file offset 0x92209c"
!AMLTaggedUnionType methodsFor: 'recovered'!
selectorPrefix
    ^'tu'
! !

"ASDBase.ic method 0x2001aad4; bytecode file offset 0x92209c"
!AMLTaggedUnionType methodsFor: 'recovered'!
enumerationBaseName
    ^'AMLTaggedUnion.'
! !

"ASDBase.ic method 0x2006e4d4; bytecode file offset 0x96af48"
!AMLTaggedUnionType methodsFor: 'recovered'!
errors
    | recoveredValue0 |
    recoveredValue0 := errors.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200839f0; bytecode file offset 0x9804b8"
!AMLTaggedUnionType methodsFor: 'recovered'!
addTo: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (recoveredValue0) addTaggedUnionType: (self).
    ^self
! !

"ASDBase.ic method 0x2009304c; bytecode file offset 0x98f958"
!AMLTaggedUnionType methodsFor: 'recovered'!
addError: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := errors.
    recoveredValue1 := recoveredArg1.
    (recoveredValue0) add: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x200c4b5c; bytecode file offset 0x9c16b0"
!AMLTaggedUnionType methodsFor: 'recovered'!
errors: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    errors := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200d9230; bytecode file offset 0x9d5b4c"
!AMLTaggedUnionType methodsFor: 'recovered'!
getFrom: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    (self) getName: (recoveredValue0).
    recoveredValue1 := recoveredArg1.
    (self) parse: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x200fa334; bytecode file offset 0x9f6bf8"
!AMLTaggedUnionType methodsFor: 'recovered'!
initialize
    | recoveredValue0 recoveredValue1 |
    super initialize.
    recoveredValue0 := OrderedCollection.
    recoveredValue1 := (recoveredValue0) new.
    errors := recoveredValue1.
    ^self
! !

"ASDBase.ic method 0x20112e04; bytecode file offset 0xa0f6d8"
!AMLTaggedUnionType methodsFor: 'recovered'!
copyForReduceParts
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := super copyForReduceParts.
    recoveredLocal1 := recoveredValue0.
    recoveredValue1 := recoveredLocal1.
    recoveredValue2 := errors.
    (recoveredValue1) errors: (recoveredValue2).
    recoveredValue3 := recoveredLocal1.
    ^recoveredValue3
! !

"ASDBase.ic method 0x20112e18; bytecode file offset 0xa0f6d8"
!AMLTaggedUnionType methodsFor: 'recovered'!
copyTree
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := super copyTree.
    recoveredLocal1 := recoveredValue0.
    recoveredValue1 := recoveredLocal1.
    recoveredValue2 := errors.
    (recoveredValue1) errors: (recoveredValue2).
    recoveredValue3 := recoveredLocal1.
    ^recoveredValue3
! !

"ASDBase.ic method 0x20126e0c; bytecode file offset 0xa236cc"
!AMLTaggedUnionType methodsFor: 'recovered'!
copyForReduceParts: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := super copyForReduceParts: (recoveredValue0).
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := recoveredLocal1.
    recoveredValue3 := errors.
    (recoveredValue2) errors: (recoveredValue3).
    recoveredValue4 := recoveredLocal1.
    ^recoveredValue4
! !

"ASDBase.ic method 0x201fa980; bytecode file offset 0xaf7240"
!AMLTaggedUnionType methodsFor: 'recovered'!
getTaggedStructFor: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := parts.
    recoveredValue1 := [:recoveredBlock6Arg1 | 
    | recoveredBlock6Value0 recoveredBlock6Value1 recoveredBlock6Value2 recoveredBlock6Value3 |
    recoveredBlock6Value0 := recoveredBlock6Arg1.
    recoveredBlock6Value1 := (recoveredBlock6Value0) name.
    recoveredBlock6Value2 := recoveredArg1.
    recoveredBlock6Value3 := (recoveredBlock6Value1) = (recoveredBlock6Value2).
    recoveredBlock6Value3
].
    recoveredValue2 := [].
    recoveredValue3 := (recoveredValue0) detect: (recoveredValue1) ifNone: (recoveredValue2).
    recoveredLocal1 := recoveredValue3.
    recoveredValue4 := recoveredLocal1.
    ^recoveredValue4
! !

"ASDBase.ic method 0x20264fbc; bytecode file offset 0xb61880"
!AMLTaggedUnionType methodsFor: 'recovered'!
maxPartSize
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredLocal1 := 0.
    recoveredValue0 := parts.
    recoveredValue1 := [:recoveredBlock11Arg1 | 
    | recoveredBlock11Value0 recoveredBlock11Value1 recoveredBlock11Value2 recoveredBlock11Value3 recoveredBlock11Value4 recoveredBlock11Value5 recoveredBlock11Value6 recoveredBlock11Value7 |
    recoveredBlock11Value0 := recoveredLocal1.
    recoveredBlock11Value1 := recoveredBlock11Arg1.
    recoveredBlock11Value2 := (recoveredBlock11Value1) extraSize.
    recoveredBlock11Value3 := recoveredBlock11Arg1.
    recoveredBlock11Value4 := (recoveredBlock11Value3) taggedStructSize.
    recoveredBlock11Value5 := (recoveredBlock11Value2) + (recoveredBlock11Value4).
    recoveredBlock11Value6 := (recoveredBlock11Value0) max: (recoveredBlock11Value5).
    recoveredBlock11Value7 := recoveredBlock11Value6.
    recoveredLocal1 := recoveredBlock11Value7.
    recoveredBlock11Value6
].
    (recoveredValue0) do: (recoveredValue1).
    recoveredValue2 := recoveredLocal1.
    recoveredValue3 := (recoveredValue2) + (1).
    ^recoveredValue3
! !

"ASDBase.ic method 0x202b834c; bytecode file offset 0xbb4c20"
!AMLTaggedUnionType methodsFor: 'recovered'!
getName: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) position.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := recoveredArg1.
    super getName: (recoveredValue2).
    recoveredValue3 := (self) class.
    recoveredValue4 := (recoveredValue3) keyWords.
    recoveredValue5 := name.
    recoveredValue6 := [:recoveredBlock24Arg1 | 
    | recoveredBlock24Value0 recoveredBlock24Value1 recoveredBlock24Value2 |
    name := 'undefined'.
    recoveredBlock24Value0 := recoveredArg1.
    recoveredBlock24Value1 := recoveredLocal1.
    recoveredBlock24Value2 := (recoveredBlock24Value0) position: (recoveredBlock24Value1).
    recoveredBlock24Value2
].
    (recoveredValue4) at: (recoveredValue5) ifPresent: (recoveredValue6).
    ^self
! !

"ASDBase.ic method 0x202dcea8; bytecode file offset 0xbd9808"
!AMLTaggedUnionType methodsFor: 'recovered'!
parse: recoveredArg1
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
            recoveredStack0 := super parse: (recoveredStack1).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := startingDepth.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 48].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := parent.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            (recoveredStack0) addDefinition: (recoveredStack1).
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := System.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := (recoveredStack0) isRuntime.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 48] ifFalse: [recoveredPC := 30].
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := SGMonitorStreamDummy.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := (recoveredStack0) create.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := 'add definition  %1 %2'.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack2 := (recoveredStack2) class.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack2 := (recoveredStack2) asString.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack3 := (recoveredStack3) name.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack1 := (recoveredStack1) bindWith: (recoveredStack2) with: (recoveredStack3).
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            (recoveredStack0) addText: (recoveredStack1).
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x202dd37c; bytecode file offset 0xbd9c4c"
!AMLTaggedUnionType methodsFor: 'recovered'!
createAccessor: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) idAccessorClassByteSize.
    recoveredValue2 := (recoveredValue0) + (recoveredValue1).
    recoveredLocal1 := recoveredValue2.
    recoveredValue3 := (self) class.
    recoveredValue4 := (recoveredValue3) accessorClass.
    recoveredValue5 := recoveredLocal1.
    recoveredValue6 := name.
    recoveredValue7 := (recoveredValue4) create: (recoveredValue5) name: (recoveredValue6).
    accessor := recoveredValue7.
    recoveredValue8 := parts.
    recoveredValue9 := [:recoveredBlock26Arg1 | 
    | recoveredBlock26Local1 recoveredBlock26Value0 recoveredBlock26Value1 recoveredBlock26Value2 recoveredBlock26Value3 recoveredBlock26Value4 recoveredBlock26Value5 |
    recoveredBlock26Value0 := recoveredBlock26Arg1.
    recoveredBlock26Value1 := recoveredLocal1.
    recoveredBlock26Value2 := (recoveredBlock26Value0) createAccessor: (recoveredBlock26Value1).
    recoveredBlock26Local1 := recoveredBlock26Value2.
    recoveredBlock26Value3 := accessor.
    recoveredBlock26Value4 := recoveredBlock26Local1.
    recoveredBlock26Value5 := (recoveredBlock26Value3) addMember: (recoveredBlock26Value4).
    recoveredBlock26Value5
].
    (recoveredValue8) do: (recoveredValue9).
    recoveredValue10 := accessor.
    ^recoveredValue10
! !

"ASDBase.ic method 0x202e38c0; bytecode file offset 0xbe0194"
!AMLTaggedUnionType methodsFor: 'recovered'!
putKeyWordAndNameIn: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 |
    recoveredValue0 := recoveredArg1.
    (self) putLevelIn: (recoveredValue0).
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (self) class.
    recoveredValue3 := (recoveredValue2) keyWord.
    (self) putIn: (recoveredValue1) ident: (recoveredValue3).
    recoveredValue4 := recoveredArg1.
    recoveredValue5 := (Character value: 9).
    (recoveredValue4) nextPut: (recoveredValue5).
    recoveredValue6 := name.
    recoveredValue7 := [:recoveredBlock28Arg1 | 
    | recoveredBlock28Value0 recoveredBlock28Value1 recoveredBlock28Value2 |
    recoveredBlock28Value0 := recoveredArg1.
    recoveredBlock28Value1 := recoveredBlock28Arg1.
    recoveredBlock28Value2 := (self) putIn: (recoveredBlock28Value0) string: (recoveredBlock28Value1).
    recoveredBlock28Value2
].
    (recoveredValue6) ifNotNil: (recoveredValue7).
    recoveredValue8 := recoveredArg1.
    (self) putBlockBeginIn: (recoveredValue8).
    ^self
! !

"ASDBase.ic method 0x205d3c60; bytecode file offset 0xed0574"
!AMLTaggedUnionType methodsFor: 'recovered'!
getValueFrom: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := 1.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) hasKeyWords.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 232].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredPC := 158.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := recoveredLocal5.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 84] ifFalse: [recoveredPC := 24].
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := parts.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack2 := [].
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack3 := [:recoveredBlock31Arg1 | 
    | recoveredBlock31Stack0 recoveredBlock31Stack1 recoveredBlock31Stack2 recoveredBlock31PC recoveredBlock31Step recoveredBlock31Done recoveredBlock31Result |
    recoveredBlock31Stack0 := self.
    recoveredBlock31PC := 38.
    recoveredBlock31Done := false.
    [recoveredBlock31Done not] whileTrue: [
        recoveredBlock31Step := recoveredBlock31PC.
        recoveredBlock31Step = 38 ifTrue: [
            recoveredBlock31Stack0 := (recoveredBlock31Stack0) keyWords.
            recoveredBlock31PC := 39.
        ].
        recoveredBlock31Step = 39 ifTrue: [
            recoveredBlock31Stack1 := recoveredBlock31Arg1.
            recoveredBlock31PC := 40.
        ].
        recoveredBlock31Step = 40 ifTrue: [
            recoveredBlock31Stack1 := (recoveredBlock31Stack1) name.
            recoveredBlock31PC := 41.
        ].
        recoveredBlock31Step = 41 ifTrue: [
            recoveredBlock31Stack0 := (recoveredBlock31Stack0) includesKey: (recoveredBlock31Stack1).
            recoveredBlock31PC := 43.
        ].
        recoveredBlock31Step = 43 ifTrue: [
            (recoveredBlock31Stack0) ifTrue: [recoveredBlock31PC := 60] ifFalse: [recoveredBlock31PC := 46].
        ].
        recoveredBlock31Step = 46 ifTrue: [
            recoveredBlock31Stack0 := recoveredArg1.
            recoveredBlock31PC := 49.
        ].
        recoveredBlock31Step = 49 ifTrue: [
            recoveredBlock31Stack1 := recoveredLocal1.
            recoveredBlock31PC := 52.
        ].
        recoveredBlock31Step = 52 ifTrue: [
            (recoveredBlock31Stack0) position: (recoveredBlock31Stack1).
            recoveredBlock31PC := 54.
        ].
        recoveredBlock31Step = 54 ifTrue: [
            recoveredBlock31Stack0 := recoveredBlock31Arg1.
            recoveredBlock31PC := 55.
        ].
        recoveredBlock31Step = 55 ifTrue: [
            recoveredBlock31Stack1 := recoveredArg1.
            recoveredBlock31PC := 58.
        ].
        recoveredBlock31Step = 58 ifTrue: [
            (recoveredBlock31Stack0) getValueFrom: (recoveredBlock31Stack1).
            recoveredBlock31PC := 60.
        ].
        recoveredBlock31Step = 60 ifTrue: [
            recoveredBlock31Stack0 := nil.
            recoveredBlock31PC := 61.
        ].
        recoveredBlock31Step = 61 ifTrue: [
            recoveredBlock31Stack1 := recoveredBlock31Arg1.
            recoveredBlock31PC := 62.
        ].
        recoveredBlock31Step = 62 ifTrue: [
            recoveredBlock31Stack1 := (recoveredBlock31Stack1) hasAMLValue.
            recoveredBlock31PC := 64.
        ].
        recoveredBlock31Step = 64 ifTrue: [
            (recoveredBlock31Stack1) ifTrue: [recoveredBlock31PC := 68] ifFalse: [recoveredBlock31PC := 77].
        ].
        recoveredBlock31Step = 68 ifTrue: [
            recoveredBlock31PC := 69.
        ].
        recoveredBlock31Step = 69 ifTrue: [
            recoveredBlock31Stack0 := recoveredLocal2.
            recoveredBlock31PC := 72.
        ].
        recoveredBlock31Step = 72 ifTrue: [
            recoveredBlock31Stack0 := (recoveredBlock31Stack0) + (1).
            recoveredBlock31PC := 73.
        ].
        recoveredBlock31Step = 73 ifTrue: [
            recoveredBlock31Stack1 := recoveredBlock31Stack0.
            recoveredBlock31PC := 74.
        ].
        recoveredBlock31Step = 74 ifTrue: [
            recoveredLocal2 := recoveredBlock31Stack1.
            recoveredBlock31PC := 77.
        ].
        recoveredBlock31Step = 77 ifTrue: [
            recoveredBlock31Result := recoveredBlock31Stack0.
            recoveredBlock31Done := true.
        ].
    ].
    recoveredBlock31Result
].
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            (recoveredStack0) at: (recoveredStack1) ifAbsent: (recoveredStack2) ifPresent: (recoveredStack3).
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredPC := 135.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack0 := recoveredLocal5.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredStack0 := (recoveredStack0) isSymbol.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 92] ifFalse: [recoveredPC := 104].
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            (recoveredStack0) perform: (recoveredStack1) with: (recoveredStack2).
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            recoveredPC := 135.
        ].
        recoveredStep = 104 ifTrue: [
            recoveredStack0 := recoveredLocal5.
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            recoveredStack1 := (recoveredStack1) BlockDepth.
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            (recoveredStack0) setStartingDepth: (recoveredStack1).
            recoveredPC := 112.
        ].
        recoveredStep = 112 ifTrue: [
            recoveredStack0 := recoveredLocal5.
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 118.
        ].
        recoveredStep = 118 ifTrue: [
            (recoveredStack0) getValueFrom: (recoveredStack1).
            recoveredPC := 120.
        ].
        recoveredStep = 120 ifTrue: [
            recoveredStack0 := recoveredLocal5.
            recoveredPC := 123.
        ].
        recoveredStep = 123 ifTrue: [
            recoveredStack0 := (recoveredStack0) hasAMLValue.
            recoveredPC := 125.
        ].
        recoveredStep = 125 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 128] ifFalse: [recoveredPC := 135].
        ].
        recoveredStep = 128 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 131.
        ].
        recoveredStep = 131 ifTrue: [
            recoveredStack0 := (recoveredStack0) + (1).
            recoveredPC := 132.
        ].
        recoveredStep = 132 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 135.
        ].
        recoveredStep = 135 ifTrue: [
            recoveredStack0 := recoveredLocal5.
            recoveredPC := 138.
        ].
        recoveredStep = 138 ifTrue: [
            recoveredStack1 := 'end:'.
            recoveredPC := 140.
        ].
        recoveredStep = 140 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 141.
        ].
        recoveredStep = 141 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 144] ifFalse: [recoveredPC := 146].
        ].
        recoveredStep = 144 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 145.
        ].
        recoveredStep = 145 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 146 ifTrue: [
            recoveredStack0 := recoveredLocal5.
            recoveredPC := 149.
        ].
        recoveredStep = 149 ifTrue: [
            recoveredStack1 := 'shortEnd:'.
            recoveredPC := 151.
        ].
        recoveredStep = 151 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 152.
        ].
        recoveredStep = 152 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 156] ifFalse: [recoveredPC := 158].
        ].
        recoveredStep = 156 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 157.
        ].
        recoveredStep = 157 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 158 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 161.
        ].
        recoveredStep = 161 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 164.
        ].
        recoveredStep = 164 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 167.
        ].
        recoveredStep = 167 ifTrue: [
            recoveredStack0 := (recoveredStack0) position.
            recoveredPC := 169.
        ].
        recoveredStep = 169 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 172.
        ].
        recoveredStep = 172 ifTrue: [
            recoveredStack0 := startingDepth.
            recoveredPC := 174.
        ].
        recoveredStep = 174 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 175.
        ].
        recoveredStep = 175 ifTrue: [
            recoveredStack1 := (recoveredStack1) BlockDepth.
            recoveredPC := 177.
        ].
        recoveredStep = 177 ifTrue: [
            recoveredStack0 := (recoveredStack0) > (recoveredStack1).
            recoveredPC := 178.
        ].
        recoveredStep = 178 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 182] ifFalse: [recoveredPC := 184].
        ].
        recoveredStep = 182 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 183.
        ].
        recoveredStep = 183 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 184 ifTrue: [
            recoveredStack0 := keyWords.
            recoveredPC := 186.
        ].
        recoveredStep = 186 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 189.
        ].
        recoveredStep = 189 ifTrue: [
            recoveredStack1 := (recoveredStack1) nextWordBySeparators.
            recoveredPC := 191.
        ].
        recoveredStep = 191 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 192.
        ].
        recoveredStep = 192 ifTrue: [
            recoveredLocal4 := recoveredStack2.
            recoveredPC := 195.
        ].
        recoveredStep = 195 ifTrue: [
            recoveredStack2 := [].
            recoveredPC := 197.
        ].
        recoveredStep = 197 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1) ifAbsent: (recoveredStack2).
            recoveredPC := 199.
        ].
        recoveredStep = 199 ifTrue: [
            recoveredLocal5 := recoveredStack0.
            recoveredPC := 202.
        ].
        recoveredStep = 202 ifTrue: [
            recoveredStack0 := startingDepth.
            recoveredPC := 204.
        ].
        recoveredStep = 204 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 205.
        ].
        recoveredStep = 205 ifTrue: [
            recoveredStack1 := (recoveredStack1) BlockDepth.
            recoveredPC := 207.
        ].
        recoveredStep = 207 ifTrue: [
            recoveredStack0 := (recoveredStack0) > (recoveredStack1).
            recoveredPC := 208.
        ].
        recoveredStep = 208 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 212] ifFalse: [recoveredPC := 212].
        ].
        recoveredStep = 212 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 215.
        ].
        recoveredStep = 215 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 228] ifFalse: [recoveredPC := 218].
        ].
        recoveredStep = 218 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 221.
        ].
        recoveredStep = 221 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 222.
        ].
        recoveredStep = 222 ifTrue: [
            recoveredStack1 := (recoveredStack1) maxPartSize.
            recoveredPC := 224.
        ].
        recoveredStep = 224 ifTrue: [
            recoveredStack0 := (recoveredStack0) <= (recoveredStack1).
            recoveredPC := 225.
        ].
        recoveredStep = 225 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 228].
        ].
        recoveredStep = 228 ifTrue: [
            recoveredPC := 315.
        ].
        recoveredStep = 232 ifTrue: [
            recoveredStack0 := parts.
            recoveredPC := 234.
        ].
        recoveredStep = 234 ifTrue: [
            recoveredStack1 := [:recoveredBlock234Arg1 | 
    | recoveredBlock234Stack0 recoveredBlock234Stack1 recoveredBlock234Stack2 recoveredBlock234Stack3 recoveredBlock234Stack4 recoveredBlock234PC recoveredBlock234Step recoveredBlock234Done recoveredBlock234Result |
    recoveredBlock234Stack0 := self.
    recoveredBlock234PC := 240.
    recoveredBlock234Done := false.
    [recoveredBlock234Done not] whileTrue: [
        recoveredBlock234Step := recoveredBlock234PC.
        recoveredBlock234Step = 240 ifTrue: [
            recoveredBlock234Stack1 := recoveredBlock234Arg1.
            recoveredBlock234PC := 241.
        ].
        recoveredBlock234Step = 241 ifTrue: [
            recoveredBlock234Stack2 := recoveredArg1.
            recoveredBlock234PC := 244.
        ].
        recoveredBlock234Step = 244 ifTrue: [
            (recoveredBlock234Stack1) getValueFrom: (recoveredBlock234Stack2).
            recoveredBlock234PC := 246.
        ].
        recoveredBlock234Step = 246 ifTrue: [
            recoveredBlock234Stack1 := recoveredBlock234Arg1.
            recoveredBlock234PC := 247.
        ].
        recoveredBlock234Step = 247 ifTrue: [
            recoveredBlock234Stack1 := (recoveredBlock234Stack1) hasAMLValue.
            recoveredBlock234PC := 249.
        ].
        recoveredBlock234Step = 249 ifTrue: [
            (recoveredBlock234Stack1) ifTrue: [recoveredBlock234PC := 252] ifFalse: [recoveredBlock234PC := 257].
        ].
        recoveredBlock234Step = 252 ifTrue: [
            recoveredBlock234Stack1 := self.
            recoveredBlock234PC := 253.
        ].
        recoveredBlock234Step = 253 ifTrue: [
            (recoveredBlock234Stack1) etasDevHalt.
            recoveredBlock234PC := 255.
        ].
        recoveredBlock234Step = 255 ifTrue: [
            recoveredBlock234Stack1 := self.
            recoveredBlock234PC := 256.
        ].
        recoveredBlock234Step = 256 ifTrue: [
            ^recoveredBlock234Stack1
        ].
        recoveredBlock234Step = 257 ifTrue: [
            recoveredBlock234Stack1 := nil.
            recoveredBlock234PC := 258.
        ].
        recoveredBlock234Step = 258 ifTrue: [
            recoveredBlock234Stack2 := parent.
            recoveredBlock234PC := 260.
        ].
        recoveredBlock234Step = 260 ifTrue: [
            recoveredBlock234Stack2 := (recoveredBlock234Stack2) hasBegin.
            recoveredBlock234PC := 262.
        ].
        recoveredBlock234Step = 262 ifTrue: [
            (recoveredBlock234Stack2) ifTrue: [recoveredBlock234PC := 266] ifFalse: [recoveredBlock234PC := 312].
        ].
        recoveredBlock234Step = 266 ifTrue: [
            recoveredBlock234PC := 267.
        ].
        recoveredBlock234Step = 267 ifTrue: [
            recoveredBlock234Stack1 := nil.
            recoveredBlock234PC := 268.
        ].
        recoveredBlock234Step = 268 ifTrue: [
            recoveredBlock234Stack2 := startingDepth.
            recoveredBlock234PC := 270.
        ].
        recoveredBlock234Step = 270 ifTrue: [
            recoveredBlock234Stack3 := self.
            recoveredBlock234PC := 271.
        ].
        recoveredBlock234Step = 271 ifTrue: [
            recoveredBlock234Stack3 := (recoveredBlock234Stack3) BlockDepth.
            recoveredBlock234PC := 273.
        ].
        recoveredBlock234Step = 273 ifTrue: [
            recoveredBlock234Stack2 := (recoveredBlock234Stack2) = (recoveredBlock234Stack3).
            recoveredBlock234PC := 274.
        ].
        recoveredBlock234Step = 274 ifTrue: [
            (recoveredBlock234Stack2) ifTrue: [recoveredBlock234PC := 278] ifFalse: [recoveredBlock234PC := 312].
        ].
        recoveredBlock234Step = 278 ifTrue: [
            recoveredBlock234PC := 279.
        ].
        recoveredBlock234Step = 279 ifTrue: [
            recoveredBlock234Stack1 := keyWords.
            recoveredBlock234PC := 281.
        ].
        recoveredBlock234Step = 281 ifTrue: [
            recoveredBlock234Stack2 := recoveredArg1.
            recoveredBlock234PC := 284.
        ].
        recoveredBlock234Step = 284 ifTrue: [
            recoveredBlock234Stack2 := (recoveredBlock234Stack2) nextWordBySeparators.
            recoveredBlock234PC := 286.
        ].
        recoveredBlock234Step = 286 ifTrue: [
            recoveredBlock234Stack3 := recoveredBlock234Stack2.
            recoveredBlock234PC := 287.
        ].
        recoveredBlock234Step = 287 ifTrue: [
            recoveredLocal4 := recoveredBlock234Stack3.
            recoveredBlock234PC := 290.
        ].
        recoveredBlock234Step = 290 ifTrue: [
            recoveredBlock234Stack3 := [].
            recoveredBlock234PC := 292.
        ].
        recoveredBlock234Step = 292 ifTrue: [
            recoveredBlock234Stack1 := (recoveredBlock234Stack1) at: (recoveredBlock234Stack2) ifAbsent: (recoveredBlock234Stack3).
            recoveredBlock234PC := 294.
        ].
        recoveredBlock234Step = 294 ifTrue: [
            recoveredLocal5 := recoveredBlock234Stack1.
            recoveredBlock234PC := 297.
        ].
        recoveredBlock234Step = 297 ifTrue: [
            recoveredBlock234Stack1 := nil.
            recoveredBlock234PC := 298.
        ].
        recoveredBlock234Step = 298 ifTrue: [
            recoveredBlock234Stack2 := recoveredLocal5.
            recoveredBlock234PC := 301.
        ].
        recoveredBlock234Step = 301 ifTrue: [
            recoveredBlock234Stack3 := 'end:'.
            recoveredBlock234PC := 303.
        ].
        recoveredBlock234Step = 303 ifTrue: [
            recoveredBlock234Stack2 := (recoveredBlock234Stack2) = (recoveredBlock234Stack3).
            recoveredBlock234PC := 304.
        ].
        recoveredBlock234Step = 304 ifTrue: [
            (recoveredBlock234Stack2) ifTrue: [recoveredBlock234PC := 312] ifFalse: [recoveredBlock234PC := 308].
        ].
        recoveredBlock234Step = 308 ifTrue: [
            recoveredBlock234PC := 309.
        ].
        recoveredBlock234Step = 309 ifTrue: [
            recoveredBlock234Stack1 := self.
            recoveredBlock234PC := 310.
        ].
        recoveredBlock234Step = 310 ifTrue: [
            recoveredBlock234Stack1 := (recoveredBlock234Stack1) etasDevHalt.
            recoveredBlock234PC := 312.
        ].
        recoveredBlock234Step = 312 ifTrue: [
            recoveredBlock234Result := recoveredBlock234Stack1.
            recoveredBlock234Done := true.
        ].
    ].
    recoveredBlock234Result
].
            recoveredPC := 313.
        ].
        recoveredStep = 313 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 315.
        ].
        recoveredStep = 315 ifTrue: [
            recoveredStack0 := recoveredLocal5.
            recoveredPC := 318.
        ].
        recoveredStep = 318 ifTrue: [
            recoveredStack1 := 'end:'.
            recoveredPC := 320.
        ].
        recoveredStep = 320 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 321.
        ].
        recoveredStep = 321 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 324] ifFalse: [recoveredPC := 336].
        ].
        recoveredStep = 324 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 325.
        ].
        recoveredStep = 325 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 328.
        ].
        recoveredStep = 328 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 331.
        ].
        recoveredStep = 331 ifTrue: [
            (recoveredStack0) perform: (recoveredStack1) with: (recoveredStack2).
            recoveredPC := 333.
        ].
        recoveredStep = 333 ifTrue: [
            recoveredPC := 353.
        ].
        recoveredStep = 336 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 339.
        ].
        recoveredStep = 339 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 353] ifFalse: [recoveredPC := 342].
        ].
        recoveredStep = 342 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 345.
        ].
        recoveredStep = 345 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 348.
        ].
        recoveredStep = 348 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 350.
        ].
        recoveredStep = 350 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (1).
            recoveredPC := 351.
        ].
        recoveredStep = 351 ifTrue: [
            (recoveredStack0) backup: (recoveredStack1).
            recoveredPC := 353.
        ].
        recoveredStep = 353 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 354.
        ].
        recoveredStep = 354 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

