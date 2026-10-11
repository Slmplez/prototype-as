"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20000fc8; bytecode file offset 0x8ffcfc"
!SgmlTag methodsFor: 'recovered'!
nextTag
    ^self
! !

"ASDBase.ic method 0x2002e0d4; bytecode file offset 0x934580"
!SgmlTag methodsFor: 'recovered'!
endTagRequired
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) declaration.
    recoveredValue1 := (recoveredValue0) endTagRequired.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20056e50; bytecode file offset 0x953708"
!SgmlTag methodsFor: 'recovered'!
containsTagNamed: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) deepFindTagNamed: (recoveredValue0).
    recoveredValue2 := (recoveredValue1) notNil.
    ^recoveredValue2
! !

"ASDBase.ic method 0x20057130; bytecode file offset 0x953a0c"
!SgmlTag methodsFor: 'recovered'!
isTag: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) declaration.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) == (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x20067f14; bytecode file offset 0x965b90"
!SgmlTag methodsFor: 'recovered'!
privateAttributes
    | recoveredValue0 |
    recoveredValue0 := attributes.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20069990; bytecode file offset 0x966bdc"
!SgmlTag methodsFor: 'recovered'!
declaration
    | recoveredValue0 |
    recoveredValue0 := declaration.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006ac64; bytecode file offset 0x967a18"
!SgmlTag methodsFor: 'recovered'!
explicitStartTag
    | recoveredValue0 |
    recoveredValue0 := explicitStartTag.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006bd60; bytecode file offset 0x96873c"
!SgmlTag methodsFor: 'recovered'!
explicitEndTag
    | recoveredValue0 |
    recoveredValue0 := explicitEndTag.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006c9dc; bytecode file offset 0x9692b0"
!SgmlTag methodsFor: 'recovered'!
privateTmpAttributes
    | recoveredValue0 |
    recoveredValue0 := tmpAttributes.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2007559c; bytecode file offset 0x9757c8"
!SgmlTag methodsFor: 'recovered'!
fullSyntaxCheck
    ^true
! !

"ASDBase.ic method 0x2007668c; bytecode file offset 0x9757c8"
!SgmlTag methodsFor: 'recovered'!
isTag
    ^true
! !

"ASDBase.ic method 0x20085170; bytecode file offset 0x981ca4"
!SgmlTag methodsFor: 'recovered'!
printOn: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) printTagOn: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x20094688; bytecode file offset 0x991174"
!SgmlTag methodsFor: 'recovered'!
tmpAttributeAt: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := [].
    recoveredValue2 := (self) tmpAttributeAt: (recoveredValue0) ifAbsent: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x20099f88; bytecode file offset 0x997194"
!SgmlTag methodsFor: 'recovered'!
tmpAttributeAt: recoveredArg1 put: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) tmpAttributes.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := (recoveredValue0) at: (recoveredValue1) put: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x200bc69c; bytecode file offset 0x9b8f5c"
!SgmlTag methodsFor: 'recovered'!
isNamed: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := (self) declaration.
    recoveredValue1 := (self) declaration.
    recoveredValue2 := (recoveredValue1) dtd.
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := (recoveredValue2) elementNamed: (recoveredValue3).
    recoveredValue5 := (recoveredValue0) == (recoveredValue4).
    ^recoveredValue5
! !

"ASDBase.ic method 0x200bfefc; bytecode file offset 0x9bd228"
!SgmlTag methodsFor: 'recovered'!
attributes: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    attributes := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c0e78; bytecode file offset 0x9bdf14"
!SgmlTag methodsFor: 'recovered'!
declaration: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    declaration := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c21e4; bytecode file offset 0x9beac8"
!SgmlTag methodsFor: 'recovered'!
explicitStartTag: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    explicitStartTag := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c2378; bytecode file offset 0x9bf474"
!SgmlTag methodsFor: 'recovered'!
explicitEndTag: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    explicitEndTag := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c2bd4; bytecode file offset 0x9bfde0"
!SgmlTag methodsFor: 'recovered'!
tmpAttributes: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    tmpAttributes := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x2011b9bc; bytecode file offset 0xa18298"
!SgmlTag methodsFor: 'recovered'!
tmpAttributes
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) privateTmpAttributes.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := Dictionary.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack0) tmpAttributes: (recoveredStack1).
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) privateTmpAttributes.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2011b9d4; bytecode file offset 0xa18298"
!SgmlTag methodsFor: 'recovered'!
attributes
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) privateAttributes.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := Dictionary.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack0) attributes: (recoveredStack1).
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) privateAttributes.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2012f8ec; bytecode file offset 0xa2c1c8"
!SgmlTag methodsFor: 'recovered'!
initialize
    super initialize.
    (self) explicitStartTag: (false).
    (self) explicitEndTag: (false).
    ^self
! !

"ASDBase.ic method 0x20136a44; bytecode file offset 0xa33350"
!SgmlTag methodsFor: 'recovered'!
attributesString
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := WriteStream.
    recoveredValue1 := String.
    recoveredValue2 := (recoveredValue1) new.
    recoveredValue3 := (recoveredValue0) on: (recoveredValue2).
    recoveredLocal1 := recoveredValue3.
    recoveredValue4 := recoveredLocal1.
    (self) printAttributesOn: (recoveredValue4).
    recoveredValue5 := recoveredLocal1.
    recoveredValue6 := (recoveredValue5) contents.
    ^recoveredValue6
! !

"ASDBase.ic method 0x2014a21c; bytecode file offset 0xa46ae0"
!SgmlTag methodsFor: 'recovered'!
expectedData
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) declaration.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) contents.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := (recoveredStack0) isSgmlData.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := SgmlAnyData.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2014aca0; bytecode file offset 0xa4755c"
!SgmlTag methodsFor: 'recovered'!
textFromPath: recoveredArg1
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
            recoveredStack0 := (recoveredStack0) tagFromPath: (recoveredStack1).
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) getContentText.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2014b3f4; bytecode file offset 0xa47cb0"
!SgmlTag methodsFor: 'recovered'!
attributeNamed: recoveredArg1 ifNil: recoveredArg2
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
            recoveredStack0 := (recoveredStack0) attributeNamed: (recoveredStack1).
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 15] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := recoveredArg2.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) value.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201508e8; bytecode file offset 0xa4d1b4"
!SgmlTag methodsFor: 'recovered'!
contents
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) basicContents.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := OrderedCollection.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack0) contents: (recoveredStack1).
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := super contents.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2015ef3c; bytecode file offset 0xa5b804"
!SgmlTag methodsFor: 'recovered'!
removeTmpAttributes
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0) tmpAttributes: (recoveredStack1).
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := (recoveredStack0) contents.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := [:block280cdd28Arg1 | 
    | block280cdd28Value0 block280cdd28Value1 |
    block280cdd28Value0 := block280cdd28Arg1.
    block280cdd28Value1 := (block280cdd28Value0) removeTmpAttributes.
    block280cdd28Value1
].
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20184a4c; bytecode file offset 0xa81314"
!SgmlTag methodsFor: 'recovered'!
printEndTagOn: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredValue0.
    (recoveredValue1) nextPutAll: ('</').
    recoveredValue2 := recoveredValue0.
    recoveredValue3 := (self) declaration.
    recoveredValue4 := (recoveredValue3) name.
    (recoveredValue2) nextPutAll: (recoveredValue4).
    (recoveredValue0) nextPut: ($>).
    ^self
! !

"ASDBase.ic method 0x201b20c8; bytecode file offset 0xaae99c"
!SgmlTag methodsFor: 'recovered'!
getContentText
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) contents.
    recoveredValue1 := [:recoveredBlock5Arg1 | 
    | recoveredBlock5Stack0 recoveredBlock5Stack1 recoveredBlock5Stack2 recoveredBlock5Stack3 recoveredBlock5PC recoveredBlock5Step recoveredBlock5Done recoveredBlock5Result |
    recoveredBlock5Stack0 := self.
    recoveredBlock5PC := 12.
    recoveredBlock5Done := false.
    [recoveredBlock5Done not] whileTrue: [
        recoveredBlock5Step := recoveredBlock5PC.
        recoveredBlock5Step = 12 ifTrue: [
            recoveredBlock5Stack1 := nil.
            recoveredBlock5PC := 13.
        ].
        recoveredBlock5Step = 13 ifTrue: [
            recoveredBlock5Stack2 := recoveredBlock5Arg1.
            recoveredBlock5PC := 14.
        ].
        recoveredBlock5Step = 14 ifTrue: [
            recoveredBlock5Stack2 := (recoveredBlock5Stack2) isText.
            recoveredBlock5PC := 15.
        ].
        recoveredBlock5Step = 15 ifTrue: [
            (recoveredBlock5Stack2) ifTrue: [recoveredBlock5PC := 18] ifFalse: [recoveredBlock5PC := 21].
        ].
        recoveredBlock5Step = 18 ifTrue: [
            recoveredBlock5PC := 19.
        ].
        recoveredBlock5Step = 19 ifTrue: [
            recoveredBlock5Stack1 := recoveredBlock5Arg1.
            recoveredBlock5PC := 20.
        ].
        recoveredBlock5Step = 20 ifTrue: [
            ^recoveredBlock5Stack1
        ].
        recoveredBlock5Step = 21 ifTrue: [
            recoveredBlock5Result := recoveredBlock5Stack1.
            recoveredBlock5Done := true.
        ].
    ].
    recoveredBlock5Result
].
    (recoveredValue0) do: (recoveredValue1).
    ^nil
! !

"ASDBase.ic method 0x201d9004; bytecode file offset 0xad58cc"
!SgmlTag methodsFor: 'recovered'!
printTagOn: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredValue0.
    (recoveredValue1) nextPut: ($<).
    recoveredValue2 := (self) declaration.
    recoveredValue3 := (recoveredValue2) name.
    (recoveredValue0) nextPutAll: (recoveredValue3).
    recoveredValue4 := recoveredArg1.
    (self) printAttributesOn: (recoveredValue4).
    recoveredValue5 := recoveredArg1.
    (recoveredValue5) nextPut: ($>).
    ^self
! !

"ASDBase.ic method 0x201edfac; bytecode file offset 0xaea900"
!SgmlTag methodsFor: 'recovered'!
deepFindTagNamed: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := (self) declaration.
    recoveredValue1 := (recoveredValue0) dtd.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (recoveredValue1) elementNamed: (recoveredValue2).
    recoveredLocal1 := recoveredValue3.
    recoveredValue4 := [:recoveredBlock14Arg1 | 
    | recoveredBlock14Value0 recoveredBlock14Value1 recoveredBlock14Value2 recoveredBlock14Value3 |
    recoveredBlock14Value0 := recoveredBlock14Arg1.
    recoveredBlock14Value1 := (recoveredBlock14Value0) declaration.
    recoveredBlock14Value2 := recoveredLocal1.
    recoveredBlock14Value3 := (recoveredBlock14Value1) == (recoveredBlock14Value2).
    recoveredBlock14Value3
].
    recoveredValue5 := (self) deepFind: (recoveredValue4).
    ^recoveredValue5
! !

"ASDBase.ic method 0x201edfc4; bytecode file offset 0xaea900"
!SgmlTag methodsFor: 'recovered'!
queryTagsNamed: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := (self) declaration.
    recoveredValue1 := (recoveredValue0) dtd.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (recoveredValue1) elementNamed: (recoveredValue2).
    recoveredLocal1 := recoveredValue3.
    recoveredValue4 := [:recoveredBlock14Arg1 | 
    | recoveredBlock14Value0 recoveredBlock14Value1 recoveredBlock14Value2 recoveredBlock14Value3 |
    recoveredBlock14Value0 := recoveredBlock14Arg1.
    recoveredBlock14Value1 := (recoveredBlock14Value0) declaration.
    recoveredBlock14Value2 := recoveredLocal1.
    recoveredBlock14Value3 := (recoveredBlock14Value1) == (recoveredBlock14Value2).
    recoveredBlock14Value3
].
    recoveredValue5 := (self) query: (recoveredValue4).
    ^recoveredValue5
! !

"ASDBase.ic method 0x201edfdc; bytecode file offset 0xaea900"
!SgmlTag methodsFor: 'recovered'!
findTagNamed: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := (self) declaration.
    recoveredValue1 := (recoveredValue0) dtd.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (recoveredValue1) elementNamed: (recoveredValue2).
    recoveredLocal1 := recoveredValue3.
    recoveredValue4 := [:recoveredBlock14Arg1 | 
    | recoveredBlock14Value0 recoveredBlock14Value1 recoveredBlock14Value2 recoveredBlock14Value3 |
    recoveredBlock14Value0 := recoveredBlock14Arg1.
    recoveredBlock14Value1 := (recoveredBlock14Value0) declaration.
    recoveredBlock14Value2 := recoveredLocal1.
    recoveredBlock14Value3 := (recoveredBlock14Value1) == (recoveredBlock14Value2).
    recoveredBlock14Value3
].
    recoveredValue5 := (self) find: (recoveredValue4).
    ^recoveredValue5
! !

"ASDBase.ic method 0x201edff4; bytecode file offset 0xaea900"
!SgmlTag methodsFor: 'recovered'!
deepQueryTagsNamed: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := (self) declaration.
    recoveredValue1 := (recoveredValue0) dtd.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (recoveredValue1) elementNamed: (recoveredValue2).
    recoveredLocal1 := recoveredValue3.
    recoveredValue4 := [:recoveredBlock14Arg1 | 
    | recoveredBlock14Value0 recoveredBlock14Value1 recoveredBlock14Value2 recoveredBlock14Value3 |
    recoveredBlock14Value0 := recoveredBlock14Arg1.
    recoveredBlock14Value1 := (recoveredBlock14Value0) declaration.
    recoveredBlock14Value2 := recoveredLocal1.
    recoveredBlock14Value3 := (recoveredBlock14Value1) == (recoveredBlock14Value2).
    recoveredBlock14Value3
].
    recoveredValue5 := (self) deepQuery: (recoveredValue4).
    ^recoveredValue5
! !

"ASDBase.ic method 0x201ee024; bytecode file offset 0xaea900"
!SgmlTag methodsFor: 'recovered'!
backwardDeepQueryTagsNamed: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := (self) declaration.
    recoveredValue1 := (recoveredValue0) dtd.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (recoveredValue1) elementNamed: (recoveredValue2).
    recoveredLocal1 := recoveredValue3.
    recoveredValue4 := [:recoveredBlock14Arg1 | 
    | recoveredBlock14Value0 recoveredBlock14Value1 recoveredBlock14Value2 recoveredBlock14Value3 |
    recoveredBlock14Value0 := recoveredBlock14Arg1.
    recoveredBlock14Value1 := (recoveredBlock14Value0) declaration.
    recoveredBlock14Value2 := recoveredLocal1.
    recoveredBlock14Value3 := (recoveredBlock14Value1) == (recoveredBlock14Value2).
    recoveredBlock14Value3
].
    recoveredValue5 := (self) backwardDeepQuery: (recoveredValue4).
    ^recoveredValue5
! !

"ASDBase.ic method 0x201ee03c; bytecode file offset 0xaea900"
!SgmlTag methodsFor: 'recovered'!
backwardDeepFindTagNamed: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := (self) declaration.
    recoveredValue1 := (recoveredValue0) dtd.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (recoveredValue1) elementNamed: (recoveredValue2).
    recoveredLocal1 := recoveredValue3.
    recoveredValue4 := [:recoveredBlock14Arg1 | 
    | recoveredBlock14Value0 recoveredBlock14Value1 recoveredBlock14Value2 recoveredBlock14Value3 |
    recoveredBlock14Value0 := recoveredBlock14Arg1.
    recoveredBlock14Value1 := (recoveredBlock14Value0) declaration.
    recoveredBlock14Value2 := recoveredLocal1.
    recoveredBlock14Value3 := (recoveredBlock14Value1) == (recoveredBlock14Value2).
    recoveredBlock14Value3
].
    recoveredValue5 := (self) backwardDeepFind: (recoveredValue4).
    ^recoveredValue5
! !

"ASDBase.ic method 0x201f6b50; bytecode file offset 0xaf3410"
!SgmlTag methodsFor: 'recovered'!
find: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) contents.
    recoveredValue1 := [:recoveredBlock5Arg1 | 
    | recoveredBlock5Stack0 recoveredBlock5Stack1 recoveredBlock5Stack2 recoveredBlock5Stack3 recoveredBlock5Stack4 recoveredBlock5PC recoveredBlock5Step recoveredBlock5Done recoveredBlock5Result |
    recoveredBlock5Stack0 := self.
    recoveredBlock5PC := 12.
    recoveredBlock5Done := false.
    [recoveredBlock5Done not] whileTrue: [
        recoveredBlock5Step := recoveredBlock5PC.
        recoveredBlock5Step = 12 ifTrue: [
            recoveredBlock5Stack1 := nil.
            recoveredBlock5PC := 13.
        ].
        recoveredBlock5Step = 13 ifTrue: [
            recoveredBlock5Stack2 := recoveredArg1.
            recoveredBlock5PC := 16.
        ].
        recoveredBlock5Step = 16 ifTrue: [
            recoveredBlock5Stack3 := recoveredBlock5Arg1.
            recoveredBlock5PC := 17.
        ].
        recoveredBlock5Step = 17 ifTrue: [
            recoveredBlock5Stack2 := (recoveredBlock5Stack2) value: (recoveredBlock5Stack3).
            recoveredBlock5PC := 18.
        ].
        recoveredBlock5Step = 18 ifTrue: [
            (recoveredBlock5Stack2) ifTrue: [recoveredBlock5PC := 22] ifFalse: [recoveredBlock5PC := 25].
        ].
        recoveredBlock5Step = 22 ifTrue: [
            recoveredBlock5PC := 23.
        ].
        recoveredBlock5Step = 23 ifTrue: [
            recoveredBlock5Stack1 := recoveredBlock5Arg1.
            recoveredBlock5PC := 24.
        ].
        recoveredBlock5Step = 24 ifTrue: [
            ^recoveredBlock5Stack1
        ].
        recoveredBlock5Step = 25 ifTrue: [
            recoveredBlock5Result := recoveredBlock5Stack1.
            recoveredBlock5Done := true.
        ].
    ].
    recoveredBlock5Result
].
    (recoveredValue0) do: (recoveredValue1).
    ^nil
! !

"ASDBase.ic method 0x201f7a24; bytecode file offset 0xaf42e4"
!SgmlTag methodsFor: 'recovered'!
tmpAttributeAt: recoveredArg1 ifAbsentPut: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := [
    | recoveredBlock7Local1 recoveredBlock7Value0 recoveredBlock7Value1 recoveredBlock7Value2 recoveredBlock7Value3 recoveredBlock7Value4 |
    recoveredBlock7Value0 := recoveredArg1.
    recoveredBlock7Value1 := recoveredArg2.
    recoveredBlock7Value2 := (recoveredBlock7Value1) value.
    recoveredBlock7Value3 := recoveredBlock7Value2.
    recoveredBlock7Local1 := recoveredBlock7Value3.
    (self) tmpAttributeAt: (recoveredBlock7Value0) put: (recoveredBlock7Value2).
    recoveredBlock7Value4 := recoveredBlock7Local1.
    recoveredBlock7Value4
].
    recoveredValue2 := (self) tmpAttributeAt: (recoveredValue0) ifAbsent: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x2021e0f4; bytecode file offset 0xb1a9b8"
!SgmlTag methodsFor: 'recovered'!
query: recoveredArg1 addTo: recoveredArg2
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) contents.
    recoveredValue1 := [:recoveredBlock5Arg1 | 
    | recoveredBlock5Stack0 recoveredBlock5Stack1 recoveredBlock5Stack2 recoveredBlock5Stack3 recoveredBlock5Stack4 recoveredBlock5PC recoveredBlock5Step recoveredBlock5Done recoveredBlock5Result |
    recoveredBlock5Stack0 := self.
    recoveredBlock5PC := 12.
    recoveredBlock5Done := false.
    [recoveredBlock5Done not] whileTrue: [
        recoveredBlock5Step := recoveredBlock5PC.
        recoveredBlock5Step = 12 ifTrue: [
            recoveredBlock5Stack1 := nil.
            recoveredBlock5PC := 13.
        ].
        recoveredBlock5Step = 13 ifTrue: [
            recoveredBlock5Stack2 := recoveredArg1.
            recoveredBlock5PC := 16.
        ].
        recoveredBlock5Step = 16 ifTrue: [
            recoveredBlock5Stack3 := recoveredBlock5Arg1.
            recoveredBlock5PC := 17.
        ].
        recoveredBlock5Step = 17 ifTrue: [
            recoveredBlock5Stack2 := (recoveredBlock5Stack2) value: (recoveredBlock5Stack3).
            recoveredBlock5PC := 18.
        ].
        recoveredBlock5Step = 18 ifTrue: [
            (recoveredBlock5Stack2) ifTrue: [recoveredBlock5PC := 22] ifFalse: [recoveredBlock5PC := 28].
        ].
        recoveredBlock5Step = 22 ifTrue: [
            recoveredBlock5PC := 23.
        ].
        recoveredBlock5Step = 23 ifTrue: [
            recoveredBlock5Stack1 := recoveredArg2.
            recoveredBlock5PC := 26.
        ].
        recoveredBlock5Step = 26 ifTrue: [
            recoveredBlock5Stack2 := recoveredBlock5Arg1.
            recoveredBlock5PC := 27.
        ].
        recoveredBlock5Step = 27 ifTrue: [
            recoveredBlock5Stack1 := (recoveredBlock5Stack1) add: (recoveredBlock5Stack2).
            recoveredBlock5PC := 28.
        ].
        recoveredBlock5Step = 28 ifTrue: [
            recoveredBlock5Result := recoveredBlock5Stack1.
            recoveredBlock5Done := true.
        ].
    ].
    recoveredBlock5Result
].
    (recoveredValue0) do: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x20229870; bytecode file offset 0xb26134"
!SgmlTag methodsFor: 'recovered'!
getContentTag: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) contents.
    recoveredValue1 := [:recoveredBlock5Arg1 | 
    | recoveredBlock5Stack0 recoveredBlock5Stack1 recoveredBlock5Stack2 recoveredBlock5Stack3 recoveredBlock5Stack4 recoveredBlock5PC recoveredBlock5Step recoveredBlock5Done recoveredBlock5Result |
    recoveredBlock5Stack0 := self.
    recoveredBlock5PC := 12.
    recoveredBlock5Done := false.
    [recoveredBlock5Done not] whileTrue: [
        recoveredBlock5Step := recoveredBlock5PC.
        recoveredBlock5Step = 12 ifTrue: [
            recoveredBlock5Stack1 := nil.
            recoveredBlock5PC := 13.
        ].
        recoveredBlock5Step = 13 ifTrue: [
            recoveredBlock5Stack2 := recoveredBlock5Arg1.
            recoveredBlock5PC := 14.
        ].
        recoveredBlock5Step = 14 ifTrue: [
            recoveredBlock5Stack2 := (recoveredBlock5Stack2) isTag.
            recoveredBlock5PC := 15.
        ].
        recoveredBlock5Step = 15 ifTrue: [
            (recoveredBlock5Stack2) ifTrue: [recoveredBlock5PC := 18] ifFalse: [recoveredBlock5PC := 29].
        ].
        recoveredBlock5Step = 18 ifTrue: [
            recoveredBlock5Stack2 := recoveredBlock5Arg1.
            recoveredBlock5PC := 19.
        ].
        recoveredBlock5Step = 19 ifTrue: [
            recoveredBlock5Stack2 := (recoveredBlock5Stack2) declaration.
            recoveredBlock5PC := 20.
        ].
        recoveredBlock5Step = 20 ifTrue: [
            recoveredBlock5Stack3 := recoveredArg1.
            recoveredBlock5PC := 23.
        ].
        recoveredBlock5Step = 23 ifTrue: [
            (recoveredBlock5Stack2 ~~ recoveredBlock5Stack3) ifTrue: [recoveredBlock5PC := 29] ifFalse: [recoveredBlock5PC := 26].
        ].
        recoveredBlock5Step = 26 ifTrue: [
            recoveredBlock5PC := 27.
        ].
        recoveredBlock5Step = 27 ifTrue: [
            recoveredBlock5Stack1 := recoveredBlock5Arg1.
            recoveredBlock5PC := 28.
        ].
        recoveredBlock5Step = 28 ifTrue: [
            ^recoveredBlock5Stack1
        ].
        recoveredBlock5Step = 29 ifTrue: [
            recoveredBlock5Result := recoveredBlock5Stack1.
            recoveredBlock5Done := true.
        ].
    ].
    recoveredBlock5Result
].
    (recoveredValue0) do: (recoveredValue1).
    ^nil
! !

"ASDBase.ic method 0x20272874; bytecode file offset 0xb6f134"
!SgmlTag methodsFor: 'recovered'!
tmpAttributeAt: recoveredArg1 ifAbsent: recoveredArg2
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) privateTmpAttributes.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := recoveredArg2.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) value.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredPC := 39.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack2 := [
    | recoveredBlock26Value0 recoveredBlock26Value1 |
    recoveredBlock26Value0 := recoveredArg2.
    recoveredBlock26Value1 := (recoveredBlock26Value0) value.
    recoveredBlock26Value1
].
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1) ifAbsent: (recoveredStack2).
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2027ba28; bytecode file offset 0xb782f4"
!SgmlTag methodsFor: 'recovered'!
backwardDeepQueryTagsNamedOneOf: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := [:recoveredBlock7Arg1 | 
    | recoveredBlock7Value0 recoveredBlock7Value1 recoveredBlock7Value2 recoveredBlock7Value3 |
    recoveredBlock7Value0 := (self) declaration.
    recoveredBlock7Value1 := (recoveredBlock7Value0) dtd.
    recoveredBlock7Value2 := recoveredBlock7Arg1.
    recoveredBlock7Value3 := (recoveredBlock7Value1) elementNamed: (recoveredBlock7Value2).
    recoveredBlock7Value3
].
    recoveredValue2 := (recoveredValue0) collect: (recoveredValue1).
    recoveredLocal1 := recoveredValue2.
    recoveredValue3 := [:recoveredBlock23Arg1 | 
    | recoveredBlock23Value0 recoveredBlock23Value1 recoveredBlock23Value2 recoveredBlock23Value3 |
    recoveredBlock23Value0 := recoveredLocal1.
    recoveredBlock23Value1 := recoveredBlock23Arg1.
    recoveredBlock23Value2 := (recoveredBlock23Value1) declaration.
    recoveredBlock23Value3 := (recoveredBlock23Value0) includes: (recoveredBlock23Value2).
    recoveredBlock23Value3
].
    recoveredValue4 := (self) backwardDeepQuery: (recoveredValue3).
    ^recoveredValue4
! !

"ASDBase.ic method 0x202cd620; bytecode file offset 0xbc9ef8"
!SgmlTag methodsFor: 'recovered'!
close
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredPC := 12.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := (recoveredStack1) contents.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack1) removeFirst.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) contents.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) isEmpty.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 25] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := (recoveredStack1) contents.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := (recoveredStack1) first.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := (recoveredStack1) asFirstElement.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 25] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 25 ifTrue: [
            recoveredPC := 32.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := (recoveredStack1) contents.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            (recoveredStack1) removeLast.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := (recoveredStack1) contents.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := (recoveredStack1) isEmpty.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 46] ifFalse: [recoveredPC := 38].
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack1 := (recoveredStack1) contents.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := (recoveredStack1) last.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := (recoveredStack1) asLastElement.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 46] ifFalse: [recoveredPC := 28].
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack0 := (recoveredStack0) fullSyntaxCheck.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x202ec40c; bytecode file offset 0xbe8ce8"
!SgmlTag methodsFor: 'recovered'!
printAttributesOn: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) privateAttributes.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 50] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) attributes.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := [:recoveredBlock10Arg1 | 
    | recoveredBlock10Value0 recoveredBlock10Value1 recoveredBlock10Value2 recoveredBlock10Value3 recoveredBlock10Value4 recoveredBlock10Value5 recoveredBlock10Value6 recoveredBlock10Value7 recoveredBlock10Value8 recoveredBlock10Value9 recoveredBlock10Value10 recoveredBlock10Value11 |
    recoveredBlock10Value0 := recoveredArg1.
    recoveredBlock10Value1 := recoveredBlock10Value0.
    recoveredBlock10Value2 := Space.
    (recoveredBlock10Value1) nextPut: (recoveredBlock10Value2).
    recoveredBlock10Value3 := recoveredBlock10Value0.
    recoveredBlock10Value4 := recoveredBlock10Arg1.
    recoveredBlock10Value5 := (recoveredBlock10Value4) key.
    recoveredBlock10Value6 := (recoveredBlock10Value5) name.
    (recoveredBlock10Value3) nextPutAll: (recoveredBlock10Value6).
    recoveredBlock10Value7 := recoveredBlock10Value0.
    (recoveredBlock10Value7) nextPutAll: ('="').
    recoveredBlock10Value8 := recoveredBlock10Value0.
    recoveredBlock10Value9 := recoveredBlock10Arg1.
    recoveredBlock10Value10 := (recoveredBlock10Value9) value.
    (recoveredBlock10Value8) nextPutAll: (recoveredBlock10Value10).
    recoveredBlock10Value11 := (recoveredBlock10Value0) nextPut: ($").
    recoveredBlock10Value11
].
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            (recoveredStack0) associationsDo: (recoveredStack1).
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x202ef754; bytecode file offset 0xbec020"
!SgmlTag methodsFor: 'recovered'!
tagFromPath: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredLocal1 := self.
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) sgmlSubStrings: ($.).
    recoveredValue2 := [:recoveredBlock15Arg1 | 
    | recoveredBlock15Stack0 recoveredBlock15Stack1 recoveredBlock15Stack2 recoveredBlock15Stack3 recoveredBlock15Stack4 recoveredBlock15PC recoveredBlock15Step recoveredBlock15Done recoveredBlock15Result |
    recoveredBlock15Stack0 := self.
    recoveredBlock15PC := 22.
    recoveredBlock15Done := false.
    [recoveredBlock15Done not] whileTrue: [
        recoveredBlock15Step := recoveredBlock15PC.
        recoveredBlock15Step = 22 ifTrue: [
            recoveredBlock15Stack1 := recoveredLocal1.
            recoveredBlock15PC := 25.
        ].
        recoveredBlock15Step = 25 ifTrue: [
            recoveredBlock15Stack2 := self.
            recoveredBlock15PC := 26.
        ].
        recoveredBlock15Step = 26 ifTrue: [
            recoveredBlock15Stack2 := (recoveredBlock15Stack2) declaration.
            recoveredBlock15PC := 27.
        ].
        recoveredBlock15Step = 27 ifTrue: [
            recoveredBlock15Stack2 := (recoveredBlock15Stack2) dtd.
            recoveredBlock15PC := 28.
        ].
        recoveredBlock15Step = 28 ifTrue: [
            recoveredBlock15Stack3 := recoveredBlock15Arg1.
            recoveredBlock15PC := 29.
        ].
        recoveredBlock15Step = 29 ifTrue: [
            recoveredBlock15Stack2 := (recoveredBlock15Stack2) elementNamed: (recoveredBlock15Stack3).
            recoveredBlock15PC := 30.
        ].
        recoveredBlock15Step = 30 ifTrue: [
            recoveredBlock15Stack1 := (recoveredBlock15Stack1) getContentTag: (recoveredBlock15Stack2).
            recoveredBlock15PC := 32.
        ].
        recoveredBlock15Step = 32 ifTrue: [
            recoveredLocal1 := recoveredBlock15Stack1.
            recoveredBlock15PC := 35.
        ].
        recoveredBlock15Step = 35 ifTrue: [
            recoveredBlock15Stack1 := nil.
            recoveredBlock15PC := 36.
        ].
        recoveredBlock15Step = 36 ifTrue: [
            recoveredBlock15Stack2 := recoveredLocal1.
            recoveredBlock15PC := 39.
        ].
        recoveredBlock15Step = 39 ifTrue: [
            (recoveredBlock15Stack2 ~~ nil) ifTrue: [recoveredBlock15PC := 45] ifFalse: [recoveredBlock15PC := 42].
        ].
        recoveredBlock15Step = 42 ifTrue: [
            recoveredBlock15PC := 43.
        ].
        recoveredBlock15Step = 43 ifTrue: [
            recoveredBlock15Stack1 := nil.
            recoveredBlock15PC := 44.
        ].
        recoveredBlock15Step = 44 ifTrue: [
            ^recoveredBlock15Stack1
        ].
        recoveredBlock15Step = 45 ifTrue: [
            recoveredBlock15Result := recoveredBlock15Stack1.
            recoveredBlock15Done := true.
        ].
    ].
    recoveredBlock15Result
].
    (recoveredValue1) do: (recoveredValue2).
    recoveredValue3 := recoveredLocal1.
    ^recoveredValue3
! !

"ASDBase.ic method 0x203101c4; bytecode file offset 0xc0ca88"
!SgmlTag methodsFor: 'recovered'!
deepFind: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack0 := (recoveredStack0) find: (recoveredStack1).
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 22] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := (recoveredStack0) contents.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := [:recoveredBlock24Arg1 | 
    | recoveredBlock24Stack0 recoveredBlock24Stack1 recoveredBlock24Stack2 recoveredBlock24Stack3 recoveredBlock24PC recoveredBlock24Step recoveredBlock24Done recoveredBlock24Result |
    recoveredBlock24Stack0 := self.
    recoveredBlock24PC := 30.
    recoveredBlock24Done := false.
    [recoveredBlock24Done not] whileTrue: [
        recoveredBlock24Step := recoveredBlock24PC.
        recoveredBlock24Step = 30 ifTrue: [
            recoveredBlock24Stack1 := recoveredBlock24Arg1.
            recoveredBlock24PC := 31.
        ].
        recoveredBlock24Step = 31 ifTrue: [
            recoveredBlock24Stack2 := recoveredArg1.
            recoveredBlock24PC := 34.
        ].
        recoveredBlock24Step = 34 ifTrue: [
            recoveredBlock24Stack1 := (recoveredBlock24Stack1) deepFind: (recoveredBlock24Stack2).
            recoveredBlock24PC := 35.
        ].
        recoveredBlock24Step = 35 ifTrue: [
            recoveredLocal1 := recoveredBlock24Stack1.
            recoveredBlock24PC := 38.
        ].
        recoveredBlock24Step = 38 ifTrue: [
            recoveredBlock24Stack1 := nil.
            recoveredBlock24PC := 39.
        ].
        recoveredBlock24Step = 39 ifTrue: [
            recoveredBlock24Stack2 := recoveredLocal1.
            recoveredBlock24PC := 42.
        ].
        recoveredBlock24Step = 42 ifTrue: [
            (recoveredBlock24Stack2 == nil) ifTrue: [recoveredBlock24PC := 51] ifFalse: [recoveredBlock24PC := 46].
        ].
        recoveredBlock24Step = 46 ifTrue: [
            recoveredBlock24PC := 47.
        ].
        recoveredBlock24Step = 47 ifTrue: [
            recoveredBlock24Stack1 := recoveredLocal1.
            recoveredBlock24PC := 50.
        ].
        recoveredBlock24Step = 50 ifTrue: [
            ^recoveredBlock24Stack1
        ].
        recoveredBlock24Step = 51 ifTrue: [
            recoveredBlock24Result := recoveredBlock24Stack1.
            recoveredBlock24Done := true.
        ].
    ].
    recoveredBlock24Result
].
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x203185a0; bytecode file offset 0xc14e7c"
!SgmlTag methodsFor: 'recovered'!
attributeNamed: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 |
    recoveredValue0 := (self) declaration.
    recoveredValue1 := (recoveredValue0) attributes.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (recoveredValue2) asUppercase.
    recoveredValue4 := [
    | recoveredBlock10Value0 recoveredBlock10Value1 recoveredBlock10Value2 recoveredBlock10Value3 |
    recoveredBlock10Value0 := SgmlSyntaxError.
    recoveredBlock10Value1 := recoveredArg1.
    recoveredBlock10Value2 := (recoveredBlock10Value0) code: ('AttributeNotDeclared') text: ('Attribute %2 is not declared in %1') with: (self) with: (recoveredBlock10Value1).
    recoveredBlock10Value3 := (recoveredBlock10Value2) signalException.
    ^recoveredBlock10Value3
].
    recoveredValue5 := (recoveredValue1) at: (recoveredValue3) ifAbsent: (recoveredValue4).
    recoveredLocal1 := recoveredValue5.
    recoveredValue6 := (self) attributes.
    recoveredValue7 := recoveredLocal1.
    recoveredValue8 := [
    | recoveredBlock42Value0 recoveredBlock42Value1 |
    recoveredBlock42Value0 := recoveredLocal1.
    recoveredBlock42Value1 := (recoveredBlock42Value0) valueSpecification.
    recoveredBlock42Value1
].
    recoveredValue9 := (recoveredValue6) at: (recoveredValue7) ifAbsent: (recoveredValue8).
    ^recoveredValue9
! !

"ASDBase.ic method 0x2033c1e8; bytecode file offset 0xc38ab8"
!SgmlTag methodsFor: 'recovered'!
do: recoveredArg1 atEndTags: recoveredArg2
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) explicitStartTag.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 8] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack0) value: (recoveredStack1).
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) contents.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := [:recoveredBlock16Arg1 | 
    | recoveredBlock16Stack0 recoveredBlock16Stack1 recoveredBlock16Stack2 recoveredBlock16Stack3 recoveredBlock16Stack4 recoveredBlock16PC recoveredBlock16Step recoveredBlock16Done recoveredBlock16Result |
    recoveredBlock16Stack0 := self.
    recoveredBlock16PC := 22.
    recoveredBlock16Done := false.
    [recoveredBlock16Done not] whileTrue: [
        recoveredBlock16Step := recoveredBlock16PC.
        recoveredBlock16Step = 22 ifTrue: [
            recoveredBlock16Stack1 := recoveredBlock16Arg1.
            recoveredBlock16PC := 23.
        ].
        recoveredBlock16Step = 23 ifTrue: [
            recoveredBlock16Stack1 := (recoveredBlock16Stack1) isText.
            recoveredBlock16PC := 24.
        ].
        recoveredBlock16Step = 24 ifTrue: [
            (recoveredBlock16Stack1) ifTrue: [recoveredBlock16PC := 28] ifFalse: [recoveredBlock16PC := 36].
        ].
        recoveredBlock16Step = 28 ifTrue: [
            recoveredBlock16Stack1 := recoveredArg1.
            recoveredBlock16PC := 31.
        ].
        recoveredBlock16Step = 31 ifTrue: [
            recoveredBlock16Stack2 := recoveredBlock16Arg1.
            recoveredBlock16PC := 32.
        ].
        recoveredBlock16Step = 32 ifTrue: [
            recoveredBlock16Stack1 := (recoveredBlock16Stack1) value: (recoveredBlock16Stack2).
            recoveredBlock16PC := 33.
        ].
        recoveredBlock16Step = 33 ifTrue: [
            recoveredBlock16PC := 45.
        ].
        recoveredBlock16Step = 36 ifTrue: [
            recoveredBlock16Stack1 := recoveredBlock16Arg1.
            recoveredBlock16PC := 37.
        ].
        recoveredBlock16Step = 37 ifTrue: [
            recoveredBlock16Stack2 := recoveredArg1.
            recoveredBlock16PC := 40.
        ].
        recoveredBlock16Step = 40 ifTrue: [
            recoveredBlock16Stack3 := recoveredArg2.
            recoveredBlock16PC := 43.
        ].
        recoveredBlock16Step = 43 ifTrue: [
            recoveredBlock16Stack1 := (recoveredBlock16Stack1) do: (recoveredBlock16Stack2) atEndTags: (recoveredBlock16Stack3).
            recoveredBlock16PC := 45.
        ].
        recoveredBlock16Step = 45 ifTrue: [
            recoveredBlock16Result := recoveredBlock16Stack1.
            recoveredBlock16Done := true.
        ].
    ].
    recoveredBlock16Result
].
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack0 := (recoveredStack0) explicitEndTag.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 54] ifFalse: [recoveredPC := 60].
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack0 := recoveredArg2.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            (recoveredStack0) value: (recoveredStack1).
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20391664; bytecode file offset 0xc8df40"
!SgmlTag methodsFor: 'recovered'!
abtXmlPrintOn: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack1) cr.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack0) printOn: (recoveredStack1).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := (recoveredStack0) contents.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := [:recoveredBlock20Arg1 | 
    | recoveredBlock20Value0 recoveredBlock20Value1 recoveredBlock20Value2 recoveredBlock20Value3 recoveredBlock20Value4 |
    recoveredBlock20Value0 := recoveredBlock20Arg1.
    recoveredBlock20Value1 := recoveredArg1.
    (recoveredBlock20Value0) abtXmlPrintOn: (recoveredBlock20Value1).
    recoveredBlock20Value2 := recoveredBlock20Arg1.
    recoveredBlock20Value3 := (recoveredBlock20Value2) isTag.
    recoveredBlock20Value4 := recoveredBlock20Value3.
    recoveredLocal1 := recoveredBlock20Value4.
    recoveredBlock20Value3
].
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 48] ifFalse: [recoveredPC := 53].
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            (recoveredStack0) cr.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack2 := '</'.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            (recoveredStack1) nextPutAll: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack2 := (recoveredStack2) name.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            (recoveredStack1) nextPutAll: (recoveredStack2).
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack1 := $>.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            (recoveredStack0) nextPut: (recoveredStack1).
            recoveredPC := 72.
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

"ASDBase.ic method 0x203c57fc; bytecode file offset 0xcc20e4"
!SgmlTag methodsFor: 'recovered'!
addTag: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := [
    | recoveredBlock4Stack0 recoveredBlock4Stack1 recoveredBlock4Stack2 recoveredBlock4Stack3 recoveredBlock4PC recoveredBlock4Step recoveredBlock4Done recoveredBlock4Result |
    recoveredBlock4Stack0 := self.
    recoveredBlock4PC := 10.
    recoveredBlock4Done := false.
    [recoveredBlock4Done not] whileTrue: [
        recoveredBlock4Step := recoveredBlock4PC.
        recoveredBlock4Step = 10 ifTrue: [
            recoveredBlock4Stack0 := (recoveredBlock4Stack0) declaration.
            recoveredBlock4PC := 11.
        ].
        recoveredBlock4Step = 11 ifTrue: [
            recoveredBlock4Stack1 := recoveredArg1.
            recoveredBlock4PC := 14.
        ].
        recoveredBlock4Step = 14 ifTrue: [
            recoveredBlock4Stack2 := self.
            recoveredBlock4PC := 15.
        ].
        recoveredBlock4Step = 15 ifTrue: [
            recoveredBlock4Stack2 := (recoveredBlock4Stack2) contents.
            recoveredBlock4PC := 16.
        ].
        recoveredBlock4Step = 16 ifTrue: [
            recoveredBlock4Stack0 := (recoveredBlock4Stack0) canAdd: (recoveredBlock4Stack1) to: (recoveredBlock4Stack2).
            recoveredBlock4PC := 18.
        ].
        recoveredBlock4Step = 18 ifTrue: [
            (recoveredBlock4Stack0) ifTrue: [recoveredBlock4PC := 22] ifFalse: [recoveredBlock4PC := 40].
        ].
        recoveredBlock4Step = 22 ifTrue: [
            recoveredBlock4Stack0 := self.
            recoveredBlock4PC := 23.
        ].
        recoveredBlock4Step = 23 ifTrue: [
            recoveredBlock4Stack0 := (recoveredBlock4Stack0) contents.
            recoveredBlock4PC := 24.
        ].
        recoveredBlock4Step = 24 ifTrue: [
            recoveredBlock4Stack1 := recoveredArg1.
            recoveredBlock4PC := 27.
        ].
        recoveredBlock4Step = 27 ifTrue: [
            (recoveredBlock4Stack0) add: (recoveredBlock4Stack1).
            recoveredBlock4PC := 29.
        ].
        recoveredBlock4Step = 29 ifTrue: [
            recoveredBlock4Stack0 := recoveredArg1.
            recoveredBlock4PC := 32.
        ].
        recoveredBlock4Step = 32 ifTrue: [
            recoveredBlock4Stack1 := self.
            recoveredBlock4PC := 33.
        ].
        recoveredBlock4Step = 33 ifTrue: [
            (recoveredBlock4Stack0) parent: (recoveredBlock4Stack1).
            recoveredBlock4PC := 35.
        ].
        recoveredBlock4Step = 35 ifTrue: [
            recoveredBlock4Stack0 := true.
            recoveredBlock4PC := 36.
        ].
        recoveredBlock4Step = 36 ifTrue: [
            recoveredBlock4PC := 41.
        ].
        recoveredBlock4Step = 40 ifTrue: [
            recoveredBlock4Stack0 := false.
            recoveredBlock4PC := 41.
        ].
        recoveredBlock4Step = 41 ifTrue: [
            recoveredBlock4Result := recoveredBlock4Stack0.
            recoveredBlock4Done := true.
        ].
    ].
    recoveredBlock4Result
].
    recoveredValue1 := SgmlException.
    recoveredValue2 := [:recoveredBlock44Arg1 | 
    | recoveredBlock44Stack0 recoveredBlock44Stack1 recoveredBlock44Stack2 recoveredBlock44Stack3 recoveredBlock44PC recoveredBlock44Step recoveredBlock44Done recoveredBlock44Result |
    recoveredBlock44Stack0 := self.
    recoveredBlock44PC := 50.
    recoveredBlock44Done := false.
    [recoveredBlock44Done not] whileTrue: [
        recoveredBlock44Step := recoveredBlock44PC.
        recoveredBlock44Step = 50 ifTrue: [
            recoveredBlock44Stack1 := recoveredBlock44Arg1.
            recoveredBlock44PC := 51.
        ].
        recoveredBlock44Step = 51 ifTrue: [
            recoveredBlock44Stack1 := (recoveredBlock44Stack1) argument.
            recoveredBlock44PC := 53.
        ].
        recoveredBlock44Step = 53 ifTrue: [
            recoveredBlock44Stack1 := (recoveredBlock44Stack1) code.
            recoveredBlock44PC := 55.
        ].
        recoveredBlock44Step = 55 ifTrue: [
            recoveredBlock44Stack2 := 'TagRequired'.
            recoveredBlock44PC := 57.
        ].
        recoveredBlock44Step = 57 ifTrue: [
            (recoveredBlock44Stack1 ~~ recoveredBlock44Stack2) ifTrue: [recoveredBlock44PC := 76] ifFalse: [recoveredBlock44PC := 60].
        ].
        recoveredBlock44Step = 60 ifTrue: [
            recoveredBlock44Stack1 := recoveredArg1.
            recoveredBlock44PC := 63.
        ].
        recoveredBlock44Step = 63 ifTrue: [
            recoveredBlock44Stack1 := (recoveredBlock44Stack1) isSeparator.
            recoveredBlock44PC := 65.
        ].
        recoveredBlock44Step = 65 ifTrue: [
            (recoveredBlock44Stack1) ifTrue: [recoveredBlock44PC := 68] ifFalse: [recoveredBlock44PC := 76].
        ].
        recoveredBlock44Step = 68 ifTrue: [
            recoveredBlock44Stack1 := recoveredBlock44Arg1.
            recoveredBlock44PC := 69.
        ].
        recoveredBlock44Step = 69 ifTrue: [
            recoveredBlock44Stack2 := false.
            recoveredBlock44PC := 70.
        ].
        recoveredBlock44Step = 70 ifTrue: [
            recoveredBlock44Stack1 := (recoveredBlock44Stack1) exitWith: (recoveredBlock44Stack2).
            recoveredBlock44PC := 72.
        ].
        recoveredBlock44Step = 72 ifTrue: [
            recoveredBlock44PC := 79.
        ].
        recoveredBlock44Step = 76 ifTrue: [
            recoveredBlock44Stack1 := recoveredBlock44Arg1.
            recoveredBlock44PC := 77.
        ].
        recoveredBlock44Step = 77 ifTrue: [
            recoveredBlock44Stack1 := (recoveredBlock44Stack1) signal.
            recoveredBlock44PC := 79.
        ].
        recoveredBlock44Step = 79 ifTrue: [
            recoveredBlock44Result := recoveredBlock44Stack1.
            recoveredBlock44Done := true.
        ].
    ].
    recoveredBlock44Result
].
    recoveredValue3 := (recoveredValue0) when: (recoveredValue1) do: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x204f9880; bytecode file offset 0xdf6198"
!SgmlTag methodsFor: 'recovered'!
setAttribute: recoveredArg1 value: recoveredArg2 inDoc: recoveredArg3
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) asUppercase.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) declaration.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) attributes.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := [
    | recoveredBlock16Value0 recoveredBlock16Value1 recoveredBlock16Value2 recoveredBlock16Value3 |
    recoveredBlock16Value0 := SgmlSyntaxError.
    recoveredBlock16Value1 := recoveredArg1.
    recoveredBlock16Value2 := (recoveredBlock16Value0) code: ('AttributeNotDeclared') text: ('Attribute %2 is not declared in %1') with: (self) with: (recoveredBlock16Value1).
    recoveredBlock16Value3 := (recoveredBlock16Value2) signalException.
    ^recoveredBlock16Value3
].
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1) ifAbsent: (recoveredStack2).
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack0 := (recoveredStack0) defaultValue.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack1 := 'FIXED'.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            (recoveredStack0 ~~ recoveredStack1) ifTrue: [recoveredPC := 70] ifFalse: [recoveredPC := 54].
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack0 := SgmlSyntaxError.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack1 := 'AttriubteIsFixed'.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack2 := 'Attribute %2 is fixed'.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack4 := recoveredLocal2.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack0 := (recoveredStack0) code: (recoveredStack1) text: (recoveredStack2) with: (recoveredStack3) with: (recoveredStack4).
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack0 := (recoveredStack0) signalException.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack0 := (recoveredStack0) attributes.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            (recoveredStack0) at: (recoveredStack1) put: (recoveredStack2).
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack1 := 'ID'.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 90] ifFalse: [recoveredPC := 134].
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack0 := recoveredArg3.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredStack0 := (recoveredStack0) idTable.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack0 := (recoveredStack0) includesKey: (recoveredStack1).
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 104] ifFalse: [recoveredPC := 120].
        ].
        recoveredStep = 104 ifTrue: [
            recoveredStack0 := SgmlSyntaxError.
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            recoveredStack1 := 'IdAlreadyUsed'.
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            recoveredStack2 := 'ID %2 already used'.
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            recoveredStack4 := recoveredArg2.
            recoveredPC := 114.
        ].
        recoveredStep = 114 ifTrue: [
            recoveredStack0 := (recoveredStack0) code: (recoveredStack1) text: (recoveredStack2) with: (recoveredStack3) with: (recoveredStack4).
            recoveredPC := 117.
        ].
        recoveredStep = 117 ifTrue: [
            recoveredStack0 := (recoveredStack0) signalException.
            recoveredPC := 119.
        ].
        recoveredStep = 119 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 120 ifTrue: [
            recoveredStack0 := recoveredArg3.
            recoveredPC := 123.
        ].
        recoveredStep = 123 ifTrue: [
            recoveredStack0 := (recoveredStack0) idTable.
            recoveredPC := 125.
        ].
        recoveredStep = 125 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 128.
        ].
        recoveredStep = 128 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 129.
        ].
        recoveredStep = 129 ifTrue: [
            (recoveredStack0) at: (recoveredStack1) put: (recoveredStack2).
            recoveredPC := 131.
        ].
        recoveredStep = 131 ifTrue: [
            recoveredPC := 171.
        ].
        recoveredStep = 134 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 137.
        ].
        recoveredStep = 137 ifTrue: [
            recoveredStack0 := (recoveredStack0) defaultValue.
            recoveredPC := 139.
        ].
        recoveredStep = 139 ifTrue: [
            recoveredStack1 := 'CURRENT'.
            recoveredPC := 141.
        ].
        recoveredStep = 141 ifTrue: [
            (recoveredStack0 ~~ recoveredStack1) ifTrue: [recoveredPC := 171] ifFalse: [recoveredPC := 144].
        ].
        recoveredStep = 144 ifTrue: [
            recoveredStack0 := recoveredArg3.
            recoveredPC := 147.
        ].
        recoveredStep = 147 ifTrue: [
            recoveredStack0 := (recoveredStack0) currentAttributeValues.
            recoveredPC := 149.
        ].
        recoveredStep = 149 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 150.
        ].
        recoveredStep = 150 ifTrue: [
            recoveredStack1 := (recoveredStack1) declaration.
            recoveredPC := 151.
        ].
        recoveredStep = 151 ifTrue: [
            recoveredStack2 := [
    | block2810a0a4Value0 block2810a0a4Value1 |
    block2810a0a4Value0 := Dictionary.
    block2810a0a4Value1 := (block2810a0a4Value0) new.
    block2810a0a4Value1
].
            recoveredPC := 153.
        ].
        recoveredStep = 153 ifTrue: [
            recoveredPC := 161.
        ].
        recoveredStep = 161 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1) ifAbsentPut: (recoveredStack2).
            recoveredPC := 163.
        ].
        recoveredStep = 163 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 166.
        ].
        recoveredStep = 166 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 169.
        ].
        recoveredStep = 169 ifTrue: [
            (recoveredStack0) at: (recoveredStack1) put: (recoveredStack2).
            recoveredPC := 171.
        ].
        recoveredStep = 171 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 172.
        ].
        recoveredStep = 172 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

