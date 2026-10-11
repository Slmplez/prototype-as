"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20005218; bytecode file offset 0x90206c"
!DBXmlImportDescItemWithSpec methodsFor: 'recovered'!
prepareLogicModel: recoveredArg1
    ^self
! !

"ASDBase.ic method 0x2006bf44; bytecode file offset 0x9692b0"
!DBXmlImportDescItemWithSpec methodsFor: 'recovered'!
hasLayout
    | recoveredValue0 |
    recoveredValue0 := hasLayout.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006edac; bytecode file offset 0x96b8a0"
!DBXmlImportDescItemWithSpec methodsFor: 'recovered'!
code
    | recoveredValue0 |
    recoveredValue0 := code.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200857ac; bytecode file offset 0x982078"
!DBXmlImportDescItemWithSpec methodsFor: 'recovered'!
xmlLoaded: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) object.
    (recoveredValue1) xmlLoaded.
    ^self
! !

"ASDBase.ic method 0x201223e8; bytecode file offset 0xa1eca8"
!DBXmlImportDescItemWithSpec methodsFor: 'recovered'!
collectSpecOIDs: recoveredArg1 result: recoveredArg2
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack2 := [:block280c9114Arg1 | 
    | block280c9114Value0 block280c9114Value1 block280c9114Value2 |
    block280c9114Value0 := block280c9114Arg1.
    block280c9114Value1 := block280c9114Arg1.
    block280c9114Value2 := (block280c9114Value0) collectOIDs: (block280c9114Value1).
    block280c9114Value2
].
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2012a7f4; bytecode file offset 0xa270b0"
!DBXmlImportDescItemWithSpec methodsFor: 'recovered'!
handwritten
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := handwritten.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 15] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := LookupTable.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            handwritten := recoveredStack1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := handwritten.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x201668b8; bytecode file offset 0xa63174"
!DBXmlImportDescItemWithSpec methodsFor: 'recovered'!
namespace: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            super namespace: (recoveredStack1).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := defaultProject.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 19] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := defaultProject.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack0) namespace: (recoveredStack1).
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

"ASDBase.ic method 0x201a56a8; bytecode file offset 0xaa1f70"
!DBXmlImportDescItemWithSpec methodsFor: 'recovered'!
readSpecifications: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := [:recoveredBlock7Arg1 | 
    | recoveredBlock7Value0 recoveredBlock7Value1 recoveredBlock7Value2 recoveredBlock7Value3 |
    recoveredBlock7Value0 := DBXmlImportDescSpec.
    recoveredBlock7Value1 := (recoveredBlock7Value0) new.
    recoveredBlock7Value2 := recoveredBlock7Arg1.
    recoveredBlock7Value3 := (recoveredBlock7Value1) initOn: (recoveredBlock7Value2) parent: (self).
    recoveredBlock7Value3
].
    recoveredValue2 := (recoveredValue0) multiple: ('spec') do: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x201b295c; bytecode file offset 0xaaf218"
!DBXmlImportDescItemWithSpec methodsFor: 'recovered'!
renameTo: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := protoItem.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 15] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := protoItem.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack1) dbXmlRenameTo: (recoveredStack2).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := defaultProject.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 25] ifFalse: [recoveredPC := 20].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := defaultProject.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            (recoveredStack1) renameTo: (recoveredStack2).
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20217ae8; bytecode file offset 0xb143bc"
!DBXmlImportDescItemWithSpec methodsFor: 'recovered'!
specificationsLoaded
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := protoItem.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) thing.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) isSmClass.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 32].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := protoItem.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) thing.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) specification.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack1) updateStateDictionary.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := protoItem.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := (recoveredStack1) thing.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := (recoveredStack1) smVariable.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := (recoveredStack1) sgClass.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack2 := protoItem.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack2 := (recoveredStack2) thing.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack2 := (recoveredStack2) getStateValues.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            (recoveredStack1) values: (recoveredStack2).
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x202409f8; bytecode file offset 0xb3d2bc"
!DBXmlImportDescItemWithSpec methodsFor: 'recovered'!
changeRoot: recoveredArg1 new: recoveredArg2
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            super changeRoot: (recoveredStack1) new: (recoveredStack2).
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := protoItem.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 22] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := protoItem.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            (recoveredStack0) changeNamespaceRoot: (recoveredStack1) new: (recoveredStack2).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := defaultProject.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 34] ifFalse: [recoveredPC := 28].
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := defaultProject.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            (recoveredStack0) parentRootChanged: (recoveredStack1) new: (recoveredStack2).
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2025c0b4; bytecode file offset 0xb58980"
!DBXmlImportDescItemWithSpec methodsFor: 'recovered'!
writeSpecs: recoveredArg1 tag: recoveredArg2
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := EtasXmlSupportDOMElement.
    recoveredValue1 := (recoveredValue0) new.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := (recoveredValue1) initOn: (recoveredValue2).
    recoveredLocal1 := recoveredValue3.
    recoveredValue4 := recoveredArg1.
    recoveredValue5 := [:recoveredBlock17Arg1 | 
    | recoveredBlock17Value0 recoveredBlock17Value1 recoveredBlock17Value2 recoveredBlock17Value3 |
    recoveredBlock17Value0 := recoveredLocal1.
    recoveredBlock17Value1 := recoveredBlock17Arg1.
    recoveredBlock17Value2 := (recoveredBlock17Value1) asXML.
    recoveredBlock17Value3 := (recoveredBlock17Value0) addSubElement: (recoveredBlock17Value2).
    recoveredBlock17Value3
].
    (recoveredValue4) do: (recoveredValue5).
    recoveredValue6 := recoveredLocal1.
    ^recoveredValue6
! !

"ASDBase.ic method 0x2029e180; bytecode file offset 0xb9aa4c"
!DBXmlImportDescItemWithSpec methodsFor: 'recovered'!
makeSpecifications: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := Array.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := (recoveredStack2) size.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) new: (recoveredStack2).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredPC := 27.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack4 := recoveredArg1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack5 := recoveredLocal1.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack4 := (recoveredStack4) at: (recoveredStack5).
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack4 := (recoveredStack4) buildEmptySpec.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            (recoveredStack1 isInteger and: [recoveredLocal1 isInteger]) ifTrue: [(recoveredLocal1 + 1 <= recoveredStack1) ifTrue: [recoveredLocal1 := recoveredLocal1 + 1. recoveredPC := 18] ifFalse: [recoveredLocal1 := nil. recoveredPC := 41]] ifFalse: [recoveredPC := 31].
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack3 := (recoveredStack3) + (1).
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack4 := recoveredStack3.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredLocal1 := recoveredStack4.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack2 := (recoveredStack2) < (recoveredStack3).
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 39] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack2 := nil.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x203bfec8; bytecode file offset 0xcbc790"
!DBXmlImportDescItemWithSpec methodsFor: 'recovered'!
collectOIDs: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            super collectOIDs: (recoveredStack1).
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := publicSpecs.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack0) collectSpecOIDs: (recoveredStack1) result: (recoveredStack2).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := privateSpecs.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            (recoveredStack0) collectSpecOIDs: (recoveredStack1) result: (recoveredStack2).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := impls.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            (recoveredStack0) collectOIDs: (recoveredStack1).
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := datas.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            (recoveredStack0) collectOIDs: (recoveredStack1).
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack0 := defaultProject.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 53] ifFalse: [recoveredPC := 46].
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack0 := defaultProject.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            (recoveredStack0) collectOIDs: (recoveredStack1).
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack0 := 'todo'.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack0 := (recoveredStack0) notNil.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack0 := experiments.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 78] ifFalse: [recoveredPC := 62].
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack0 := experiments.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack1 := [:recoveredBlock64Arg1 | 
    | recoveredBlock64Value0 recoveredBlock64Value1 recoveredBlock64Value2 |
    recoveredBlock64Value0 := recoveredBlock64Arg1.
    recoveredBlock64Value1 := recoveredArg1.
    recoveredBlock64Value2 := (recoveredBlock64Value0) collectOIDs: (recoveredBlock64Value1).
    recoveredBlock64Value2
].
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20426724; bytecode file offset 0xd23018"
!DBXmlImportDescItemWithSpec methodsFor: 'recovered'!
asXML
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := super asXML.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := 'itemWithSpec'.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := (recoveredStack0) name: (recoveredStack1).
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := 'hasLayout'.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := hasLayout.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack0) setAttr: (recoveredStack1) boolean: (recoveredStack2).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack2 := publicSpecs.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack3 := 'publicSpecs'.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := (recoveredStack1) writeSpecs: (recoveredStack2) tag: (recoveredStack3).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            (recoveredStack0) addSubElement: (recoveredStack1).
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack0 := privateSpecs.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack0 := (recoveredStack0) size.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack0 := (recoveredStack0) > (recoveredStack1).
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 40] ifFalse: [recoveredPC := 50].
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack2 := privateSpecs.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack3 := 'privateSpecs'.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack1 := (recoveredStack1) writeSpecs: (recoveredStack2) tag: (recoveredStack3).
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            (recoveredStack0) addSubElement: (recoveredStack1).
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack1 := impls.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack1 := (recoveredStack1) asXML.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            (recoveredStack0) addSubElement: (recoveredStack1).
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack1 := datas.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack1 := (recoveredStack1) asXML.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            (recoveredStack0) addSubElement: (recoveredStack1).
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack0 := defaultProject.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 77] ifFalse: [recoveredPC := 68].
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack1 := defaultProject.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack1 := (recoveredStack1) asXML.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack2 := 'defaultProject'.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack1 := (recoveredStack1) name: (recoveredStack2).
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            (recoveredStack0) addSubElement: (recoveredStack1).
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack0 := SGCodeArchive.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack1 := code.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack2 := handwritten.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            (recoveredStack0) add: (recoveredStack1) handwritten: (recoveredStack2) to: (recoveredStack3).
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredStack0 := experiments.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 101] ifFalse: [recoveredPC := 92].
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredStack1 := experiments.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredStack2 := 'experiments'.
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            recoveredStack1 := (recoveredStack1) asXML: (recoveredStack2).
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            (recoveredStack0) addSubElement: (recoveredStack1).
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2045be14; bytecode file offset 0xd586d4"
!DBXmlImportDescItemWithSpec methodsFor: 'recovered'!
xmlCollectDependent: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            super xmlCollectDependent: (recoveredStack1).
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := privateSpecs.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := [:recoveredBlock13Arg1 | 
    | recoveredBlock13Value0 recoveredBlock13Value1 recoveredBlock13Value2 |
    recoveredBlock13Value0 := recoveredBlock13Arg1.
    recoveredBlock13Value1 := recoveredArg1.
    recoveredBlock13Value2 := (recoveredBlock13Value0) xmlCollectDependent: (recoveredBlock13Value1).
    recoveredBlock13Value2
].
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := publicSpecs.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := [:recoveredBlock30Arg1 | 
    | recoveredBlock30Value0 recoveredBlock30Value1 recoveredBlock30Value2 |
    recoveredBlock30Value0 := recoveredBlock30Arg1.
    recoveredBlock30Value1 := recoveredArg1.
    recoveredBlock30Value2 := (recoveredBlock30Value0) xmlCollectDependent: (recoveredBlock30Value1).
    recoveredBlock30Value2
].
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack0 := datas.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            (recoveredStack0) xmlCollectDependent: (recoveredStack1).
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack0 := impls.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            (recoveredStack0) xmlCollectDependent: (recoveredStack1).
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack0 := defaultProject.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 71] ifFalse: [recoveredPC := 64].
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack0 := defaultProject.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            (recoveredStack0) xmlCollectDependent: (recoveredStack1).
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack0 := code.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            (recoveredStack0) xmlCollectDependent: (recoveredStack1).
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack0 := handwritten.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 100] ifFalse: [recoveredPC := 84].
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack0 := handwritten.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack1 := [:recoveredBlock86Arg1 | 
    | recoveredBlock86Value0 recoveredBlock86Value1 recoveredBlock86Value2 |
    recoveredBlock86Value0 := recoveredBlock86Arg1.
    recoveredBlock86Value1 := recoveredArg1.
    recoveredBlock86Value2 := (recoveredBlock86Value0) xmlCollectDependent: (recoveredBlock86Value1).
    recoveredBlock86Value2
].
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack0 := experiments.
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 113] ifFalse: [recoveredPC := 106].
        ].
        recoveredStep = 106 ifTrue: [
            recoveredStack0 := experiments.
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            (recoveredStack0) xmlCollectDependent: (recoveredStack1).
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 116.
        ].
        recoveredStep = 116 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20520ff0; bytecode file offset 0xe1d900"
!DBXmlImportDescItemWithSpec methodsFor: 'recovered'!
execute: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack0 := super execute: (recoveredStack1).
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := protoItem.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := (recoveredStack0) thing.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredLocal4 := recoveredStack0.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := impls.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := (recoveredStack0) configs.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := impls.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := (recoveredStack0) default.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := [:recoveredBlock30Arg1 | 
    | recoveredBlock30Value0 recoveredBlock30Value1 recoveredBlock30Value2 recoveredBlock30Value3 |
    recoveredBlock30Value0 := recoveredLocal1.
    recoveredBlock30Value1 := recoveredBlock30Arg1.
    recoveredBlock30Value2 := (recoveredBlock30Value0) copyWith: (recoveredBlock30Value1).
    recoveredBlock30Value3 := recoveredBlock30Value2.
    recoveredLocal1 := recoveredBlock30Value3.
    recoveredBlock30Value2
].
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            (recoveredStack0) ifNotNil: (recoveredStack1).
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack2 := impls.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack2 := (recoveredStack2) default.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack3 := impls.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack3 := (recoveredStack3) classConfig.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            (recoveredStack0) xmlSetImpls: (recoveredStack1) default: (recoveredStack2) classImpl: (recoveredStack3).
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack0 := datas.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack0 := (recoveredStack0) configs.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack0 := datas.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack0 := (recoveredStack0) default.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack1 := [:recoveredBlock76Arg1 | 
    | recoveredBlock76Value0 recoveredBlock76Value1 recoveredBlock76Value2 recoveredBlock76Value3 |
    recoveredBlock76Value0 := recoveredLocal1.
    recoveredBlock76Value1 := recoveredBlock76Arg1.
    recoveredBlock76Value2 := (recoveredBlock76Value0) copyWith: (recoveredBlock76Value1).
    recoveredBlock76Value3 := recoveredBlock76Value2.
    recoveredLocal1 := recoveredBlock76Value3.
    recoveredBlock76Value2
].
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            (recoveredStack0) ifNotNil: (recoveredStack1).
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            recoveredStack2 := datas.
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            recoveredStack2 := (recoveredStack2) default.
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            recoveredStack3 := datas.
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            recoveredStack3 := (recoveredStack3) classConfig.
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            (recoveredStack0) xmlSetDatas: (recoveredStack1) default: (recoveredStack2) classData: (recoveredStack3).
            recoveredPC := 112.
        ].
        recoveredStep = 112 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 116.
        ].
        recoveredStep = 116 ifTrue: [
            recoveredStack2 := publicSpecs.
            recoveredPC := 118.
        ].
        recoveredStep = 118 ifTrue: [
            recoveredStack1 := (recoveredStack1) makeSpecifications: (recoveredStack2).
            recoveredPC := 120.
        ].
        recoveredStep = 120 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 121.
        ].
        recoveredStep = 121 ifTrue: [
            recoveredStack3 := privateSpecs.
            recoveredPC := 123.
        ].
        recoveredStep = 123 ifTrue: [
            recoveredStack2 := (recoveredStack2) makeSpecifications: (recoveredStack3).
            recoveredPC := 125.
        ].
        recoveredStep = 125 ifTrue: [
            (recoveredStack0) xmlSetSpecifications: (recoveredStack1) private: (recoveredStack2).
            recoveredPC := 127.
        ].
        recoveredStep = 127 ifTrue: [
            recoveredStack0 := defaultProject.
            recoveredPC := 129.
        ].
        recoveredStep = 129 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 141] ifFalse: [recoveredPC := 132].
        ].
        recoveredStep = 132 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 135.
        ].
        recoveredStep = 135 ifTrue: [
            recoveredStack1 := defaultProject.
            recoveredPC := 137.
        ].
        recoveredStep = 137 ifTrue: [
            recoveredStack1 := (recoveredStack1) proxy.
            recoveredPC := 139.
        ].
        recoveredStep = 139 ifTrue: [
            (recoveredStack0) defaultProjectKey: (recoveredStack1).
            recoveredPC := 141.
        ].
        recoveredStep = 141 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 144.
        ].
        recoveredStep = 144 ifTrue: [
            recoveredStack1 := code.
            recoveredPC := 146.
        ].
        recoveredStep = 146 ifTrue: [
            recoveredStack2 := handwritten.
            recoveredPC := 148.
        ].
        recoveredStep = 148 ifTrue: [
            (recoveredStack0) xmlCode: (recoveredStack1) handwritten: (recoveredStack2).
            recoveredPC := 150.
        ].
        recoveredStep = 150 ifTrue: [
            recoveredStack0 := experiments.
            recoveredPC := 152.
        ].
        recoveredStep = 152 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 168] ifFalse: [recoveredPC := 156].
        ].
        recoveredStep = 156 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 159.
        ].
        recoveredStep = 159 ifTrue: [
            recoveredStack1 := experiments.
            recoveredPC := 161.
        ].
        recoveredStep = 161 ifTrue: [
            recoveredStack1 := (recoveredStack1) simConfigs.
            recoveredPC := 163.
        ].
        recoveredStep = 163 ifTrue: [
            (recoveredStack0) xmlSetSimulationConfigs: (recoveredStack1).
            recoveredPC := 165.
        ].
        recoveredStep = 165 ifTrue: [
            recoveredPC := 177.
        ].
        recoveredStep = 168 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 171.
        ].
        recoveredStep = 171 ifTrue: [
            recoveredStack1 := OrderedCollection.
            recoveredPC := 173.
        ].
        recoveredStep = 173 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 175.
        ].
        recoveredStep = 175 ifTrue: [
            (recoveredStack0) xmlSetSimulationConfigs: (recoveredStack1).
            recoveredPC := 177.
        ].
        recoveredStep = 177 ifTrue: [
            recoveredStack0 := 'Kli'.
            recoveredPC := 179.
        ].
        recoveredStep = 179 ifTrue: [
            recoveredStack1 := 'Workspace_Performance'.
            recoveredPC := 181.
        ].
        recoveredStep = 181 ifTrue: [
            recoveredStack0 := (recoveredStack0) == (recoveredStack1).
            recoveredPC := 182.
        ].
        recoveredStep = 182 ifTrue: [
            recoveredPC := 183.
        ].
        recoveredStep = 183 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 186.
        ].
        recoveredStep = 186 ifTrue: [
            recoveredStack0 := (recoveredStack0) dbObject.
            recoveredPC := 188.
        ].
        recoveredStep = 188 ifTrue: [
            (recoveredStack0) dbXmlClearModifyRecursive.
            recoveredPC := 190.
        ].
        recoveredStep = 190 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 193.
        ].
        recoveredStep = 193 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x205d1254; bytecode file offset 0xecdbb4"
!DBXmlImportDescItemWithSpec methodsFor: 'recovered'!
initOn: recoveredArg1 namespace: recoveredArg2 database: recoveredArg3
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack3 := recoveredArg3.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            super initOn: (recoveredStack1) namespace: (recoveredStack2) database: (recoveredStack3).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := 'hasLayout'.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := (recoveredStack0) getBoolean: (recoveredStack1).
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            hasLayout := recoveredStack0.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := 'publicSpecs'.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack2 := [:recoveredBlock30Arg1 | 
    | recoveredBlock30Value0 recoveredBlock30Value1 |
    recoveredBlock30Value0 := recoveredBlock30Arg1.
    recoveredBlock30Value1 := (self) readSpecifications: (recoveredBlock30Value0).
    recoveredBlock30Value1
].
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack3 := [
    | recoveredBlock40Value0 |
    recoveredBlock40Value0 := (self) etasDevHalt.
    recoveredBlock40Value0
].
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack0 := (recoveredStack0) required: (recoveredStack1) do: (recoveredStack2) ifNot: (recoveredStack3).
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            publicSpecs := recoveredStack0.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack1 := 'privateSpecs'.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack2 := [:recoveredBlock59Arg1 | 
    | recoveredBlock59Value0 recoveredBlock59Value1 |
    recoveredBlock59Value0 := recoveredBlock59Arg1.
    recoveredBlock59Value1 := (self) readSpecifications: (recoveredBlock59Value0).
    recoveredBlock59Value1
].
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack3 := [
    #()
].
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack0 := (recoveredStack0) optional: (recoveredStack1) do: (recoveredStack2) ifNot: (recoveredStack3).
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            privateSpecs := recoveredStack0.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredStack1 := 'implementations'.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack2 := [:recoveredBlock89Arg1 | 
    | recoveredBlock89Value0 recoveredBlock89Value1 recoveredBlock89Value2 recoveredBlock89Value3 recoveredBlock89Value4 recoveredBlock89Value5 |
    recoveredBlock89Value0 := DBXmlImportDescConfig.
    recoveredBlock89Value1 := (recoveredBlock89Value0) new.
    recoveredBlock89Value2 := recoveredBlock89Arg1.
    recoveredBlock89Value3 := DBXmlImportStepImplementation.
    recoveredBlock89Value4 := (recoveredBlock89Value1) initOn: (recoveredBlock89Value2) parent: (self) stepClass: (recoveredBlock89Value3).
    recoveredBlock89Value5 := recoveredBlock89Value4.
    impls := recoveredBlock89Value5.
    recoveredBlock89Value4
].
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            recoveredStack3 := [
    | recoveredBlock111Value0 |
    recoveredBlock111Value0 := (self) etasDevHalt.
    recoveredBlock111Value0
].
            recoveredPC := 121.
        ].
        recoveredStep = 121 ifTrue: [
            (recoveredStack0) required: (recoveredStack1) do: (recoveredStack2) ifNot: (recoveredStack3).
            recoveredPC := 124.
        ].
        recoveredStep = 124 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 127.
        ].
        recoveredStep = 127 ifTrue: [
            recoveredStack1 := 'datas'.
            recoveredPC := 129.
        ].
        recoveredStep = 129 ifTrue: [
            recoveredStack2 := [:recoveredBlock129Arg1 | 
    | recoveredBlock129Value0 recoveredBlock129Value1 recoveredBlock129Value2 recoveredBlock129Value3 recoveredBlock129Value4 recoveredBlock129Value5 |
    recoveredBlock129Value0 := DBXmlImportDescConfig.
    recoveredBlock129Value1 := (recoveredBlock129Value0) new.
    recoveredBlock129Value2 := recoveredBlock129Arg1.
    recoveredBlock129Value3 := DBXmlImportStepData.
    recoveredBlock129Value4 := (recoveredBlock129Value1) initOn: (recoveredBlock129Value2) parent: (self) stepClass: (recoveredBlock129Value3).
    recoveredBlock129Value5 := recoveredBlock129Value4.
    datas := recoveredBlock129Value5.
    recoveredBlock129Value4
].
            recoveredPC := 151.
        ].
        recoveredStep = 151 ifTrue: [
            recoveredStack3 := [
    | recoveredBlock151Value0 |
    recoveredBlock151Value0 := (self) etasDevHalt.
    recoveredBlock151Value0
].
            recoveredPC := 161.
        ].
        recoveredStep = 161 ifTrue: [
            (recoveredStack0) required: (recoveredStack1) do: (recoveredStack2) ifNot: (recoveredStack3).
            recoveredPC := 164.
        ].
        recoveredStep = 164 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 167.
        ].
        recoveredStep = 167 ifTrue: [
            recoveredStack1 := 'defaultProject'.
            recoveredPC := 169.
        ].
        recoveredStep = 169 ifTrue: [
            recoveredStack2 := [:recoveredBlock169Arg1 | 
    | recoveredBlock169Value0 recoveredBlock169Value1 recoveredBlock169Value2 recoveredBlock169Value3 recoveredBlock169Value4 recoveredBlock169Value5 recoveredBlock169Value6 |
    recoveredBlock169Value0 := DBXmlImportDescProject.
    recoveredBlock169Value1 := (recoveredBlock169Value0) new.
    recoveredBlock169Value2 := recoveredBlock169Arg1.
    recoveredBlock169Value3 := recoveredArg2.
    recoveredBlock169Value4 := recoveredArg3.
    recoveredBlock169Value5 := (recoveredBlock169Value1) initOn: (recoveredBlock169Value2) namespace: (recoveredBlock169Value3) database: (recoveredBlock169Value4) parent: (self).
    recoveredBlock169Value6 := recoveredBlock169Value5.
    defaultProject := recoveredBlock169Value6.
    recoveredBlock169Value5
].
            recoveredPC := 195.
        ].
        recoveredStep = 195 ifTrue: [
            (recoveredStack0) optional: (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 197.
        ].
        recoveredStep = 197 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 200.
        ].
        recoveredStep = 200 ifTrue: [
            recoveredStack1 := 'code'.
            recoveredPC := 202.
        ].
        recoveredStep = 202 ifTrue: [
            recoveredStack2 := [:recoveredBlock202Arg1 | 
    | recoveredBlock202Value0 recoveredBlock202Value1 recoveredBlock202Value2 |
    recoveredBlock202Value0 := recoveredBlock202Arg1.
    recoveredBlock202Value1 := [:recoveredBlock202Block211Arg1 | 
    | recoveredBlock202Block211Local1 recoveredBlock202Block211Local2 recoveredBlock202Block211Stack0 recoveredBlock202Block211Stack1 recoveredBlock202Block211Stack2 recoveredBlock202Block211Stack3 recoveredBlock202Block211Stack4 recoveredBlock202Block211PC recoveredBlock202Block211Step recoveredBlock202Block211Done recoveredBlock202Block211Result |
    recoveredBlock202Block211Stack0 := self.
    recoveredBlock202Block211PC := 218.
    recoveredBlock202Block211Done := false.
    [recoveredBlock202Block211Done not] whileTrue: [
        recoveredBlock202Block211Step := recoveredBlock202Block211PC.
        recoveredBlock202Block211Step = 218 ifTrue: [
            recoveredBlock202Block211Stack1 := SGCodeArchive.
            recoveredBlock202Block211PC := 220.
        ].
        recoveredBlock202Block211Step = 220 ifTrue: [
            recoveredBlock202Block211Stack1 := (recoveredBlock202Block211Stack1) new.
            recoveredBlock202Block211PC := 222.
        ].
        recoveredBlock202Block211Step = 222 ifTrue: [
            recoveredBlock202Block211Stack2 := recoveredBlock202Block211Arg1.
            recoveredBlock202Block211PC := 225.
        ].
        recoveredBlock202Block211Step = 225 ifTrue: [
            recoveredBlock202Block211Stack3 := publicSpecs.
            recoveredBlock202Block211PC := 227.
        ].
        recoveredBlock202Block211Step = 227 ifTrue: [
            recoveredBlock202Block211Stack3 := (recoveredBlock202Block211Stack3) first.
            recoveredBlock202Block211PC := 229.
        ].
        recoveredBlock202Block211Step = 229 ifTrue: [
            recoveredBlock202Block211Stack1 := (recoveredBlock202Block211Stack1) initXML: (recoveredBlock202Block211Stack2) importDesc: (recoveredBlock202Block211Stack3).
            recoveredBlock202Block211PC := 231.
        ].
        recoveredBlock202Block211Step = 231 ifTrue: [
            recoveredBlock202Block211Local2 := recoveredBlock202Block211Stack1.
            recoveredBlock202Block211PC := 234.
        ].
        recoveredBlock202Block211Step = 234 ifTrue: [
            recoveredBlock202Block211Stack1 := recoveredBlock202Block211Arg1.
            recoveredBlock202Block211PC := 237.
        ].
        recoveredBlock202Block211Step = 237 ifTrue: [
            recoveredBlock202Block211Stack2 := 'impl'.
            recoveredBlock202Block211PC := 239.
        ].
        recoveredBlock202Block211Step = 239 ifTrue: [
            recoveredBlock202Block211Stack3 := nil.
            recoveredBlock202Block211PC := 240.
        ].
        recoveredBlock202Block211Step = 240 ifTrue: [
            recoveredBlock202Block211Stack1 := (recoveredBlock202Block211Stack1) getString: (recoveredBlock202Block211Stack2) default: (recoveredBlock202Block211Stack3).
            recoveredBlock202Block211PC := 242.
        ].
        recoveredBlock202Block211Step = 242 ifTrue: [
            recoveredBlock202Block211Local1 := recoveredBlock202Block211Stack1.
            recoveredBlock202Block211PC := 245.
        ].
        recoveredBlock202Block211Step = 245 ifTrue: [
            recoveredBlock202Block211Stack1 := recoveredBlock202Block211Local1.
            recoveredBlock202Block211PC := 248.
        ].
        recoveredBlock202Block211Step = 248 ifTrue: [
            (recoveredBlock202Block211Stack1 ~~ nil) ifTrue: [recoveredBlock202Block211PC := 262] ifFalse: [recoveredBlock202Block211PC := 252].
        ].
        recoveredBlock202Block211Step = 252 ifTrue: [
            recoveredBlock202Block211Stack1 := recoveredBlock202Block211Local2.
            recoveredBlock202Block211PC := 255.
        ].
        recoveredBlock202Block211Step = 255 ifTrue: [
            recoveredBlock202Block211Stack2 := recoveredBlock202Block211Stack1.
            recoveredBlock202Block211PC := 256.
        ].
        recoveredBlock202Block211Step = 256 ifTrue: [
            code := recoveredBlock202Block211Stack2.
            recoveredBlock202Block211PC := 258.
        ].
        recoveredBlock202Block211Step = 258 ifTrue: [
            recoveredBlock202Block211PC := 297.
        ].
        recoveredBlock202Block211Step = 262 ifTrue: [
            recoveredBlock202Block211Stack1 := [
    | recoveredBlock202Block211Block262Value0 recoveredBlock202Block211Block262Value1 recoveredBlock202Block211Block262Value2 recoveredBlock202Block211Block262Value3 recoveredBlock202Block211Block262Value4 recoveredBlock202Block211Block262Value5 |
    recoveredBlock202Block211Block262Value0 := (self) handwritten.
    recoveredBlock202Block211Block262Value1 := impls.
    recoveredBlock202Block211Block262Value2 := recoveredBlock202Block211Local1.
    recoveredBlock202Block211Block262Value3 := (recoveredBlock202Block211Block262Value1) configByName: (recoveredBlock202Block211Block262Value2).
    recoveredBlock202Block211Block262Value4 := recoveredBlock202Block211Local2.
    recoveredBlock202Block211Block262Value5 := (recoveredBlock202Block211Block262Value0) at: (recoveredBlock202Block211Block262Value3) put: (recoveredBlock202Block211Block262Value4).
    recoveredBlock202Block211Block262Value5
].
            recoveredBlock202Block211PC := 283.
        ].
        recoveredBlock202Block211Step = 283 ifTrue: [
            recoveredBlock202Block211Stack2 := ExCLDTObjectNotFound.
            recoveredBlock202Block211PC := 285.
        ].
        recoveredBlock202Block211Step = 285 ifTrue: [
            recoveredBlock202Block211Stack3 := [:block281194e8Arg1 | 
    | block281194e8Value0 block281194e8Value1 |
    block281194e8Value0 := block281194e8Arg1.
    block281194e8Value1 := (block281194e8Value0) exitWith: (nil).
    block281194e8Value1
].
            recoveredBlock202Block211PC := 287.
        ].
        recoveredBlock202Block211Step = 287 ifTrue: [
            recoveredBlock202Block211PC := 295.
        ].
        recoveredBlock202Block211Step = 295 ifTrue: [
            recoveredBlock202Block211Stack1 := (recoveredBlock202Block211Stack1) when: (recoveredBlock202Block211Stack2) do: (recoveredBlock202Block211Stack3).
            recoveredBlock202Block211PC := 297.
        ].
        recoveredBlock202Block211Step = 297 ifTrue: [
            recoveredBlock202Block211Result := recoveredBlock202Block211Stack1.
            recoveredBlock202Block211Done := true.
        ].
    ].
    recoveredBlock202Block211Result
].
    recoveredBlock202Value2 := (recoveredBlock202Value0) multiple: ('codeArchive') do: (recoveredBlock202Value1).
    recoveredBlock202Value2
].
            recoveredPC := 301.
        ].
        recoveredStep = 301 ifTrue: [
            (recoveredStack0) optional: (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 303.
        ].
        recoveredStep = 303 ifTrue: [
            recoveredStack0 := code.
            recoveredPC := 305.
        ].
        recoveredStep = 305 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 314] ifFalse: [recoveredPC := 308].
        ].
        recoveredStep = 308 ifTrue: [
            recoveredStack0 := SGCodeArchive.
            recoveredPC := 310.
        ].
        recoveredStep = 310 ifTrue: [
            recoveredStack0 := (recoveredStack0) create.
            recoveredPC := 312.
        ].
        recoveredStep = 312 ifTrue: [
            code := recoveredStack0.
            recoveredPC := 314.
        ].
        recoveredStep = 314 ifTrue: [
            recoveredStack0 := handwritten.
            recoveredPC := 316.
        ].
        recoveredStep = 316 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 326] ifFalse: [recoveredPC := 320].
        ].
        recoveredStep = 320 ifTrue: [
            recoveredStack0 := LookupTable.
            recoveredPC := 322.
        ].
        recoveredStep = 322 ifTrue: [
            recoveredStack0 := (recoveredStack0) new.
            recoveredPC := 324.
        ].
        recoveredStep = 324 ifTrue: [
            handwritten := recoveredStack0.
            recoveredPC := 326.
        ].
        recoveredStep = 326 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 329.
        ].
        recoveredStep = 329 ifTrue: [
            recoveredStack1 := 'experiments'.
            recoveredPC := 331.
        ].
        recoveredStep = 331 ifTrue: [
            recoveredStack2 := [:recoveredBlock331Arg1 | 
    | recoveredBlock331Value0 recoveredBlock331Value1 recoveredBlock331Value2 recoveredBlock331Value3 |
    recoveredBlock331Value0 := DBXmlImportDescExperiment.
    recoveredBlock331Value1 := (recoveredBlock331Value0) new.
    recoveredBlock331Value2 := recoveredBlock331Arg1.
    recoveredBlock331Value3 := (recoveredBlock331Value1) initOn: (recoveredBlock331Value2) parent: (self).
    recoveredBlock331Value3
].
            recoveredPC := 347.
        ].
        recoveredStep = 347 ifTrue: [
            recoveredStack0 := (recoveredStack0) optional: (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 349.
        ].
        recoveredStep = 349 ifTrue: [
            experiments := recoveredStack0.
            recoveredPC := 351.
        ].
        recoveredStep = 351 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 352.
        ].
        recoveredStep = 352 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

