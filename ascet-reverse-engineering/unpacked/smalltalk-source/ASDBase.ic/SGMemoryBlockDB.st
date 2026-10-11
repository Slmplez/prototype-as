"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2000f61c; bytecode file offset 0x90bef8"
!SGMemoryBlockDB methodsFor: 'recovered'!
basicInitializationsFor: recoveredArg1 template: recoveredArg2
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20049b2c; bytecode file offset 0x947128"
!SGMemoryBlockDB methodsFor: 'recovered'!
visibleSelectorPorts
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) selectorPorts.
    recoveredValue1 := (self) filterOnlyVisiblePorts: (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x2004a7ec; bytecode file offset 0x947128"
!SGMemoryBlockDB methodsFor: 'recovered'!
visibleReturnPorts
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) returnPorts.
    recoveredValue1 := (self) filterOnlyVisiblePorts: (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x20053184; bytecode file offset 0x9505d0"
!SGMemoryBlockDB methodsFor: 'recovered'!
getXMLType: recoveredArg1
    (self) subclassResponsibility.
    ^self
! !

"ASDBase.ic method 0x20053580; bytecode file offset 0x9505d0"
!SGMemoryBlockDB methodsFor: 'recovered'!
getXMLTag: recoveredArg1
    (self) subclassResponsibility.
    ^self
! !

"ASDBase.ic method 0x2005b004; bytecode file offset 0x957a6c"
!SGMemoryBlockDB methodsFor: 'recovered'!
internalWriteXMLPorts: recoveredArg1 class: recoveredArg2 refClass: recoveredArg3
    (self) subclassResponsibility.
    ^self
! !

"ASDBase.ic method 0x2006be08; bytecode file offset 0x96873c"
!SGMemoryBlockDB methodsFor: 'recovered'!
ports
    | recoveredValue0 |
    recoveredValue0 := ports.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006c11c; bytecode file offset 0x9692b0"
!SGMemoryBlockDB methodsFor: 'recovered'!
returnPorts
    | recoveredValue0 |
    recoveredValue0 := returnPorts.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006cee8; bytecode file offset 0x969c04"
!SGMemoryBlockDB methodsFor: 'recovered'!
selectorPorts
    | recoveredValue0 |
    recoveredValue0 := selectorPorts.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006d414; bytecode file offset 0x96a390"
!SGMemoryBlockDB methodsFor: 'recovered'!
sequenceDescription
    | recoveredValue0 |
    recoveredValue0 := sequenceDescription.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006e100; bytecode file offset 0x96a9dc"
!SGMemoryBlockDB methodsFor: 'recovered'!
aliasName
    | recoveredValue0 |
    recoveredValue0 := aliasName.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20083074; bytecode file offset 0x97f928"
!SGMemoryBlockDB methodsFor: 'recovered'!
returnPorts: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredValue0.
    returnPorts := recoveredValue1.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20083088; bytecode file offset 0x97f93c"
!SGMemoryBlockDB methodsFor: 'recovered'!
selectorPorts: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredValue0.
    selectorPorts := recoveredValue1.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2008b86c; bytecode file offset 0x988124"
!SGMemoryBlockDB methodsFor: 'recovered'!
sequences
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := sequenceDescription.
    recoveredValue1 := (recoveredValue0) at: (1).
    ^recoveredValue1
! !

"ASDBase.ic method 0x200b90a4; bytecode file offset 0x9b5974"
!SGMemoryBlockDB methodsFor: 'recovered'!
sequences: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := sequenceDescription.
    recoveredValue1 := recoveredArg1.
    (recoveredValue0) at: (1) put: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x200c2238; bytecode file offset 0x9bf474"
!SGMemoryBlockDB methodsFor: 'recovered'!
ports: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    ports := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c3ddc; bytecode file offset 0x9c0bf0"
!SGMemoryBlockDB methodsFor: 'recovered'!
sequenceDescription: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    sequenceDescription := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c4490; bytecode file offset 0x9c11bc"
!SGMemoryBlockDB methodsFor: 'recovered'!
aliasName: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    aliasName := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200d05f8; bytecode file offset 0x9ccee0"
!SGMemoryBlockDB methodsFor: 'recovered'!
representsElement
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := ('hw') == ('call_2008401166').
    recoveredValue1 := (self) aliasName.
    recoveredValue2 := (recoveredValue1) notNil.
    ^recoveredValue2
! !

"ASDBase.ic method 0x20104f5c; bytecode file offset 0xa01820"
!SGMemoryBlockDB methodsFor: 'recovered'!
initialize
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := Array.
    recoveredValue1 := (recoveredValue0) new: (1).
    sequenceDescription := recoveredValue1.
    recoveredValue2 := super initialize.
    ^recoveredValue2
! !

"ASDBase.ic method 0x20123200; bytecode file offset 0xa1fabc"
!SGMemoryBlockDB methodsFor: 'recovered'!
addReferencedAliasNamesToSet: recoveredArg1 item: recoveredArg2
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) aliasName.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := recoveredArg1.
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
            recoveredStack1 := self.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) aliasName.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack0) add: (recoveredStack1).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20125200; bytecode file offset 0xa21adc"
!SGMemoryBlockDB methodsFor: 'recovered'!
xmlFillColor
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) blockColor.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := CgRGBColor.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) white.
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
            recoveredStack0 := (recoveredStack0) color.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201475fc; bytecode file offset 0xa43ebc"
!SGMemoryBlockDB methodsFor: 'recovered'!
lookupPinDictionaryFor: recoveredArg1 inPortDict: recoveredArg2
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := (recoveredStack2) methodAliasName.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) includesKey: (recoveredStack2).
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 17].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := (recoveredStack2) methodAliasName.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x201ac34c; bytecode file offset 0xaa8c18"
!SGMemoryBlockDB methodsFor: 'recovered'!
xmlFillColor: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) blockColor.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 19] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := RBAreaStyle.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) new.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) initialize.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack0) blockColor: (recoveredStack1).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            (recoveredStack0) color: (recoveredStack1).
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201ce8d0; bytecode file offset 0xacb190"
!SGMemoryBlockDB methodsFor: 'recovered'!
lookUpMethod: recoveredArg1 inTable: recoveredArg2
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := (recoveredStack2) methodAliasForPortStorage.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) includesKey: (recoveredStack2).
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 15].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) methodAliasForPortStorage.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := (recoveredStack2) methodAliasAsIdString.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := (recoveredStack1) includesKey: (recoveredStack2).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 22] ifFalse: [recoveredPC := 25].
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := (recoveredStack1) methodAliasAsIdString.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x201efa70; bytecode file offset 0xaec334"
!SGMemoryBlockDB methodsFor: 'recovered'!
writeXML: recoveredArg1 class: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredStack7 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack2 := aliasName.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) elementAliasName: (recoveredStack2).
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 17] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) sgClass.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack4 := recoveredLocal2.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack5 := self.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack6 := recoveredLocal2.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack5 := (recoveredStack5) getXMLTag: (recoveredStack6).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            (recoveredStack0) writeXML: (recoveredStack1) class: (recoveredStack2) refClass: (recoveredStack3) element: (recoveredStack4) tag: (recoveredStack5).
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

"ASDBase.ic method 0x201f82fc; bytecode file offset 0xaf4bc0"
!SGMemoryBlockDB methodsFor: 'recovered'!
writeXML: recoveredArg1 class: recoveredArg2 refClass: recoveredArg3 element: recoveredArg4 tag: recoveredArg5
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg5.
    (recoveredValue0) openComplex: (recoveredValue1).
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := recoveredArg2.
    recoveredValue4 := recoveredArg4.
    (self) internalWriteXMLAttrs: (recoveredValue2) class: (recoveredValue3) element: (recoveredValue4).
    recoveredValue5 := recoveredArg1.
    recoveredValue6 := recoveredArg2.
    recoveredValue7 := recoveredArg3.
    (self) internalWriteXMLStructure: (recoveredValue5) class: (recoveredValue6) refClass: (recoveredValue7).
    recoveredValue8 := recoveredArg1.
    (recoveredValue8) closeComplex.
    ^self
! !

"ASDBase.ic method 0x201fb450; bytecode file offset 0xaf7d10"
!SGMemoryBlockDB methodsFor: 'recovered'!
getLookUpKeyForMethod: recoveredArg1 inTable: recoveredArg2
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := (recoveredStack1) methodAliasForPortStorage.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := (recoveredStack1) includesKey: (recoveredStack2).
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := (recoveredStack1) methodAliasAsIdString.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := (recoveredStack1) includesKey: (recoveredStack2).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 26] ifFalse: [recoveredPC := 28].
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x20232d90; bytecode file offset 0xb2f65c"
!SGMemoryBlockDB methodsFor: 'recovered'!
filterOnlyVisiblePorts: recoveredArg1
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
            recoveredStack2 := [:block280dd43cArg1 | 
    | block280dd43cStack0 block280dd43cStack1 block280dd43cStack2 block280dd43cStack3 block280dd43cPC block280dd43cStep block280dd43cDone block280dd43cResult |
    block280dd43cStack0 := self.
    block280dd43cPC := 4.
    block280dd43cDone := false.
    [block280dd43cDone not] whileTrue: [
        block280dd43cStep := block280dd43cPC.
        block280dd43cStep = 4 ifTrue: [
            block280dd43cStack1 := block280dd43cArg1.
            block280dd43cPC := 5.
        ].
        block280dd43cStep = 5 ifTrue: [
            block280dd43cStack2 := [:block280dd460Arg1 | 
    | block280dd460Stack0 block280dd460Stack1 block280dd460Stack2 block280dd460Stack3 block280dd460Stack4 block280dd460PC block280dd460Step block280dd460Done block280dd460Result |
    block280dd460Stack0 := self.
    block280dd460PC := 4.
    block280dd460Done := false.
    [block280dd460Done not] whileTrue: [
        block280dd460Step := block280dd460PC.
        block280dd460Step = 4 ifTrue: [
            block280dd460Stack1 := block280dd460Arg1.
            block280dd460PC := 5.
        ].
        block280dd460Step = 5 ifTrue: [
            block280dd460Stack2 := 4.
            block280dd460PC := 7.
        ].
        block280dd460Step = 7 ifTrue: [
            block280dd460Stack3 := [
    false
].
            block280dd460PC := 9.
        ].
        block280dd460Step = 9 ifTrue: [
            block280dd460PC := 14.
        ].
        block280dd460Step = 14 ifTrue: [
            block280dd460Stack1 := (block280dd460Stack1) at: (block280dd460Stack2) ifAbsent: (block280dd460Stack3).
            block280dd460PC := 16.
        ].
        block280dd460Step = 16 ifTrue: [
            block280dd460Result := block280dd460Stack1.
            block280dd460Done := true.
        ].
    ].
    block280dd460Result
].
            block280dd43cPC := 7.
        ].
        block280dd43cStep = 7 ifTrue: [
            block280dd43cPC := 23.
        ].
        block280dd43cStep = 23 ifTrue: [
            block280dd43cStack1 := (block280dd43cStack1) allSatisfy: (block280dd43cStack2).
            block280dd43cPC := 25.
        ].
        block280dd43cStep = 25 ifTrue: [
            block280dd43cResult := block280dd43cStack1.
            block280dd43cDone := true.
        ].
    ].
    block280dd43cResult
].
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := (recoveredStack1) select: (recoveredStack2).
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x202895a4; bytecode file offset 0xb85e74"
!SGMemoryBlockDB methodsFor: 'recovered'!
graphicObjectForTemplate: recoveredArg1 methods: recoveredArg2 addNew: recoveredArg3 addMissing: recoveredArg4 progressDialog: recoveredArg5
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack0 := (recoveredStack0) graphicObjectForTemplate: (recoveredStack1).
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := 'hw'.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := 'call_2009402249'.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) == (recoveredStack1).
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack3 := recoveredArg3.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack4 := true.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack5 := recoveredArg5.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            (recoveredStack0) update: (recoveredStack1) methods: (recoveredStack2) addMissing: (recoveredStack3) addHidden: (recoveredStack4) progressDialog: (recoveredStack5).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := recoveredArg4.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 28] ifFalse: [recoveredPC := 40].
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack0 := (recoveredStack0) class.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack0 := (recoveredStack0) optionHandleMissingConnections.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 36] ifFalse: [recoveredPC := 40].
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            (recoveredStack0) checkGraphicPinsCreatedObj: (recoveredStack1).
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x202b8f0c; bytecode file offset 0xbb57e0"
!SGMemoryBlockDB methodsFor: 'recovered'!
graphicObjectForTemplateWithMethods: recoveredArg1 addMissing: recoveredArg2 progressDialog: recoveredArg3
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := 'hw'.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := 'call_79317'.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) == (recoveredStack2).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack2 := 'call_82488'.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) == (recoveredStack2).
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := 'hw'.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := 'call_2009402249'.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := (recoveredStack1) == (recoveredStack2).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := (recoveredStack0) graphicObjectForTemplate: (recoveredStack1).
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
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 45] ifFalse: [recoveredPC := 28].
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := 'hw'.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := 'call_84627'.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := (recoveredStack0) == (recoveredStack1).
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack2 := (recoveredStack2) getCompleteMethodListForGraphics.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack4 := true.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack5 := recoveredArg3.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            (recoveredStack0) update: (recoveredStack1) methods: (recoveredStack2) addMissing: (recoveredStack3) addHidden: (recoveredStack4) progressDialog: (recoveredStack5).
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x202d1358; bytecode file offset 0xbcdc3c"
!SGMemoryBlockDB methodsFor: 'recovered'!
internalWriteXMLAttrs: recoveredArg1 class: recoveredArg2 element: recoveredArg3
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
            recoveredStack2 := 'graphicOID'.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack3 := (recoveredStack3) iD.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack1) attr: (recoveredStack2) graphicOID: (recoveredStack3).
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) isLayout.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := 'drawingOrder'.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack2 := (recoveredStack2) drawingOrder.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            (recoveredStack0) attr: (recoveredStack1) nnInt: (recoveredStack2).
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            (recoveredStack0) elementIdentification: (recoveredStack1).
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := aliasName.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := ByteArray.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := (recoveredStack0) isKindOf: (recoveredStack1).
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 40] ifFalse: [recoveredPC := 47].
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack1 := 'elementOID'.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack2 := aliasName.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            (recoveredStack0) attr: (recoveredStack1) localId: (recoveredStack2).
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x202d5060; bytecode file offset 0xbd1934"
!SGMemoryBlockDB methodsFor: 'recovered'!
pinDictionaryForMethod: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := 'Kk'.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := 'Call_64220'.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) == (recoveredStack2).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := 'Kli'.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := 'Call_70664'.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) == (recoveredStack2).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := (recoveredStack1) hasReturnValue.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 22] ifFalse: [recoveredPC := 34].
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := (recoveredStack1) returnPorts.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := (recoveredStack1) selectorPorts.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredPC := 42.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := (recoveredStack1) selectorPorts.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack1 := (recoveredStack1) returnPorts.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack0 := (recoveredStack0) lookUpMethod: (recoveredStack1) inTable: (recoveredStack2) alternativeTable: (recoveredStack3).
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20306b54; bytecode file offset 0xc0343c"
!SGMemoryBlockDB methodsFor: 'recovered'!
internalWriteXMLStructure: recoveredArg1 class: recoveredArg2 refClass: recoveredArg3
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
            (recoveredStack0) internalWriteXMLView: (recoveredStack1).
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := (recoveredStack0) lineStyle.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 19] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) lineStyle.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := 'LineStyle'.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack0) writeXML: (recoveredStack1) tag: (recoveredStack2).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := 'FillColor'.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack2 := (recoveredStack2) xmlFillColor.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            (recoveredStack0) complex: (recoveredStack1) color: (recoveredStack2).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := 'Position'.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack2 := (recoveredStack2) position.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            (recoveredStack0) complex: (recoveredStack1) point: (recoveredStack2).
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := 'LabelPosition'.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack2 := block.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack3 := 3.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack2 := (recoveredStack2) at: (recoveredStack3).
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            (recoveredStack0) complex: (recoveredStack1) point: (recoveredStack2).
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack3 := recoveredArg3.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            (recoveredStack0) internalWriteXMLPorts: (recoveredStack1) class: (recoveredStack2) refClass: (recoveredStack3).
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2034c220; bytecode file offset 0xc48af8"
!SGMemoryBlockDB methodsFor: 'recovered'!
doConsistencyCheckFor: recoveredArg1 resultCollection: recoveredArg2 sgClass: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := [:recoveredBlock7Arg1 | 
    | recoveredBlock7Value0 recoveredBlock7Value1 recoveredBlock7Value2 recoveredBlock7Value3 recoveredBlock7Value4 |
    recoveredBlock7Value0 := recoveredArg3.
    recoveredBlock7Value1 := recoveredBlock7Arg1.
    recoveredBlock7Value2 := (recoveredBlock7Value1) key.
    recoveredBlock7Value3 := (recoveredBlock7Value0) methodAliasName: (recoveredBlock7Value2).
    recoveredBlock7Value4 := (recoveredBlock7Value3) isNil.
    recoveredBlock7Value4
].
    recoveredValue2 := (recoveredValue0) associationsSelect: (recoveredValue1).
    recoveredValue3 := [:recoveredBlock23Arg1 | 
    | recoveredBlock23Value0 recoveredBlock23Value1 recoveredBlock23Value2 recoveredBlock23Value3 recoveredBlock23Value4 |
    recoveredBlock23Value0 := recoveredBlock23Arg1.
    recoveredBlock23Value1 := (recoveredBlock23Value0) value.
    recoveredBlock23Value2 := (recoveredBlock23Value1) keys.
    recoveredBlock23Value3 := [:recoveredBlock23Block34Arg1 | 
    | recoveredBlock23Block34Stack0 recoveredBlock23Block34Stack1 recoveredBlock23Block34Stack2 recoveredBlock23Block34Stack3 recoveredBlock23Block34Stack4 recoveredBlock23Block34PC recoveredBlock23Block34Step recoveredBlock23Block34Done recoveredBlock23Block34Result |
    recoveredBlock23Block34Stack0 := nil.
    recoveredBlock23Block34PC := 40.
    recoveredBlock23Block34Done := false.
    [recoveredBlock23Block34Done not] whileTrue: [
        recoveredBlock23Block34Step := recoveredBlock23Block34PC.
        recoveredBlock23Block34Step = 40 ifTrue: [
            recoveredBlock23Block34Stack1 := nil.
            recoveredBlock23Block34PC := 41.
        ].
        recoveredBlock23Block34Step = 41 ifTrue: [
            recoveredBlock23Block34Stack2 := recoveredArg3.
            recoveredBlock23Block34PC := 44.
        ].
        recoveredBlock23Block34Step = 44 ifTrue: [
            recoveredBlock23Block34Stack3 := recoveredBlock23Block34Arg1.
            recoveredBlock23Block34PC := 45.
        ].
        recoveredBlock23Block34Step = 45 ifTrue: [
            recoveredBlock23Block34Stack2 := (recoveredBlock23Block34Stack2) elementAliasName: (recoveredBlock23Block34Stack3).
            recoveredBlock23Block34PC := 47.
        ].
        recoveredBlock23Block34Step = 47 ifTrue: [
            (recoveredBlock23Block34Stack2 ~~ nil) ifTrue: [recoveredBlock23Block34PC := 57] ifFalse: [recoveredBlock23Block34PC := 50].
        ].
        recoveredBlock23Block34Step = 50 ifTrue: [
            recoveredBlock23Block34PC := 51.
        ].
        recoveredBlock23Block34Step = 51 ifTrue: [
            recoveredBlock23Block34Stack1 := recoveredArg2.
            recoveredBlock23Block34PC := 54.
        ].
        recoveredBlock23Block34Step = 54 ifTrue: [
            recoveredBlock23Block34Stack2 := recoveredBlock23Block34Arg1.
            recoveredBlock23Block34PC := 55.
        ].
        recoveredBlock23Block34Step = 55 ifTrue: [
            recoveredBlock23Block34Stack1 := (recoveredBlock23Block34Stack1) add: (recoveredBlock23Block34Stack2).
            recoveredBlock23Block34PC := 57.
        ].
        recoveredBlock23Block34Step = 57 ifTrue: [
            recoveredBlock23Block34Result := recoveredBlock23Block34Stack1.
            recoveredBlock23Block34Done := true.
        ].
    ].
    recoveredBlock23Block34Result
].
    recoveredBlock23Value4 := (recoveredBlock23Value2) do: (recoveredBlock23Value3).
    recoveredBlock23Value4
].
    (recoveredValue2) associationsDo: (recoveredValue3).
    ^self
! !

"ASDBase.ic method 0x203b08a8; bytecode file offset 0xcad174"
!SGMemoryBlockDB methodsFor: 'recovered'!
getChildGraphicOIDs
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 |
    recoveredValue0 := OrderedCollection.
    recoveredValue1 := (recoveredValue0) new.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := returnPorts.
    recoveredValue3 := (recoveredValue2) values.
    recoveredValue4 := [:recoveredBlock13Arg1 | 
    | recoveredBlock13Value0 recoveredBlock13Value1 recoveredBlock13Value2 recoveredBlock13Value3 |
    recoveredBlock13Value0 := recoveredBlock13Arg1.
    recoveredBlock13Value1 := (recoveredBlock13Value0) values.
    recoveredBlock13Value2 := [:recoveredBlock13Block22Arg1 | 
    | recoveredBlock13Block22Value0 recoveredBlock13Block22Value1 recoveredBlock13Block22Value2 recoveredBlock13Block22Value3 |
    recoveredBlock13Block22Value0 := recoveredLocal1.
    recoveredBlock13Block22Value1 := recoveredBlock13Block22Arg1.
    recoveredBlock13Block22Value2 := (recoveredBlock13Block22Value1) at: (1).
    recoveredBlock13Block22Value3 := (recoveredBlock13Block22Value0) add: (recoveredBlock13Block22Value2).
    recoveredBlock13Block22Value3
].
    recoveredBlock13Value3 := (recoveredBlock13Value1) do: (recoveredBlock13Value2).
    recoveredBlock13Value3
].
    (recoveredValue3) do: (recoveredValue4).
    recoveredValue5 := selectorPorts.
    recoveredValue6 := (recoveredValue5) values.
    recoveredValue7 := [:recoveredBlock46Arg1 | 
    | recoveredBlock46Value0 recoveredBlock46Value1 recoveredBlock46Value2 recoveredBlock46Value3 |
    recoveredBlock46Value0 := recoveredBlock46Arg1.
    recoveredBlock46Value1 := (recoveredBlock46Value0) values.
    recoveredBlock46Value2 := [:recoveredBlock46Block54Arg1 | 
    | recoveredBlock46Block54Value0 recoveredBlock46Block54Value1 recoveredBlock46Block54Value2 recoveredBlock46Block54Value3 |
    recoveredBlock46Block54Value0 := recoveredLocal1.
    recoveredBlock46Block54Value1 := recoveredBlock46Block54Arg1.
    recoveredBlock46Block54Value2 := (recoveredBlock46Block54Value1) at: (1).
    recoveredBlock46Block54Value3 := (recoveredBlock46Block54Value0) add: (recoveredBlock46Block54Value2).
    recoveredBlock46Block54Value3
].
    recoveredBlock46Value3 := (recoveredBlock46Value1) do: (recoveredBlock46Value2).
    recoveredBlock46Value3
].
    (recoveredValue6) do: (recoveredValue7).
    recoveredValue8 := recoveredLocal1.
    ^recoveredValue8
! !

"ASDBase.ic method 0x203b570c; bytecode file offset 0xcb1ffc"
!SGMemoryBlockDB methodsFor: 'recovered'!
checkSequenceCallGO: recoveredArg1 hierarchyWrapper: recoveredArg2 dataModelManager: recoveredArg3
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg3.
    recoveredValue1 := [:recoveredBlock7Arg1 | 
    | recoveredBlock7Stack0 recoveredBlock7Stack1 recoveredBlock7Stack2 recoveredBlock7Stack3 recoveredBlock7PC recoveredBlock7Step recoveredBlock7Done recoveredBlock7Result |
    recoveredBlock7Stack0 := self.
    recoveredBlock7PC := 14.
    recoveredBlock7Done := false.
    [recoveredBlock7Done not] whileTrue: [
        recoveredBlock7Step := recoveredBlock7PC.
        recoveredBlock7Step = 14 ifTrue: [
            recoveredBlock7Stack1 := nil.
            recoveredBlock7PC := 15.
        ].
        recoveredBlock7Step = 15 ifTrue: [
            recoveredBlock7Stack2 := recoveredBlock7Arg1.
            recoveredBlock7PC := 16.
        ].
        recoveredBlock7Step = 16 ifTrue: [
            recoveredBlock7Stack2 := (recoveredBlock7Stack2) sgClass.
            recoveredBlock7PC := 17.
        ].
        recoveredBlock7Step = 17 ifTrue: [
            recoveredBlock7Stack2 := (recoveredBlock7Stack2) isProject.
            recoveredBlock7PC := 18.
        ].
        recoveredBlock7Step = 18 ifTrue: [
            (recoveredBlock7Stack2) ifTrue: [recoveredBlock7PC := 22] ifFalse: [recoveredBlock7PC := 76].
        ].
        recoveredBlock7Step = 22 ifTrue: [
            recoveredBlock7PC := 23.
        ].
        recoveredBlock7Step = 23 ifTrue: [
            recoveredBlock7Stack1 := recoveredArg1.
            recoveredBlock7PC := 26.
        ].
        recoveredBlock7Step = 26 ifTrue: [
            recoveredBlock7Stack1 := (recoveredBlock7Stack1) sequenceCalls.
            recoveredBlock7PC := 27.
        ].
        recoveredBlock7Step = 27 ifTrue: [
            recoveredBlock7Stack2 := [:recoveredBlock7Block27Arg1 | 
    | recoveredBlock7Block27Stack0 recoveredBlock7Block27Stack1 recoveredBlock7Block27Stack2 recoveredBlock7Block27Stack3 recoveredBlock7Block27Stack4 recoveredBlock7Block27Stack5 recoveredBlock7Block27Stack6 recoveredBlock7Block27PC recoveredBlock7Block27Step recoveredBlock7Block27Done recoveredBlock7Block27Result |
    recoveredBlock7Block27Stack0 := self.
    recoveredBlock7Block27PC := 34.
    recoveredBlock7Block27Done := false.
    [recoveredBlock7Block27Done not] whileTrue: [
        recoveredBlock7Block27Step := recoveredBlock7Block27PC.
        recoveredBlock7Block27Step = 34 ifTrue: [
            recoveredBlock7Block27Stack1 := nil.
            recoveredBlock7Block27PC := 35.
        ].
        recoveredBlock7Block27Step = 35 ifTrue: [
            recoveredBlock7Block27Stack2 := recoveredBlock7Block27Arg1.
            recoveredBlock7Block27PC := 36.
        ].
        recoveredBlock7Block27Step = 36 ifTrue: [
            recoveredBlock7Block27Stack2 := (recoveredBlock7Block27Stack2) userVisibility.
            recoveredBlock7Block27PC := 37.
        ].
        recoveredBlock7Block27Step = 37 ifTrue: [
            (recoveredBlock7Block27Stack2) ifTrue: [recoveredBlock7Block27PC := 73] ifFalse: [recoveredBlock7Block27PC := 40].
        ].
        recoveredBlock7Block27Step = 40 ifTrue: [
            recoveredBlock7Block27Stack2 := recoveredBlock7Block27Arg1.
            recoveredBlock7Block27PC := 41.
        ].
        recoveredBlock7Block27Step = 41 ifTrue: [
            recoveredBlock7Block27Stack2 := (recoveredBlock7Block27Stack2) hasPin.
            recoveredBlock7Block27PC := 43.
        ].
        recoveredBlock7Block27Step = 43 ifTrue: [
            (recoveredBlock7Block27Stack2) ifTrue: [recoveredBlock7Block27PC := 46] ifFalse: [recoveredBlock7Block27PC := 73].
        ].
        recoveredBlock7Block27Step = 46 ifTrue: [
            recoveredBlock7Block27PC := 47.
        ].
        recoveredBlock7Block27Step = 47 ifTrue: [
            recoveredBlock7Block27Stack1 := recoveredBlock7Block27Arg1.
            recoveredBlock7Block27PC := 48.
        ].
        recoveredBlock7Block27Step = 48 ifTrue: [
            recoveredBlock7Block27Stack2 := recoveredBlock7Block27Stack1.
            recoveredBlock7Block27PC := 49.
        ].
        recoveredBlock7Block27Step = 49 ifTrue: [
            (recoveredBlock7Block27Stack2) removePin.
            recoveredBlock7Block27PC := 51.
        ].
        recoveredBlock7Block27Step = 51 ifTrue: [
            (recoveredBlock7Block27Stack1) setToDefault.
            recoveredBlock7Block27PC := 53.
        ].
        recoveredBlock7Block27Step = 53 ifTrue: [
            recoveredBlock7Block27Stack1 := ErrorHandler.
            recoveredBlock7Block27PC := 55.
        ].
        recoveredBlock7Block27Step = 55 ifTrue: [
            recoveredBlock7Block27Stack2 := 200.
            recoveredBlock7Block27PC := 58.
        ].
        recoveredBlock7Block27Step = 58 ifTrue: [
            recoveredBlock7Block27Stack3 := Array.
            recoveredBlock7Block27PC := 60.
        ].
        recoveredBlock7Block27Step = 60 ifTrue: [
            recoveredBlock7Block27Stack4 := self.
            recoveredBlock7Block27PC := 61.
        ].
        recoveredBlock7Block27Step = 61 ifTrue: [
            recoveredBlock7Block27Stack5 := recoveredArg2.
            recoveredBlock7Block27PC := 64.
        ].
        recoveredBlock7Block27Step = 64 ifTrue: [
            recoveredBlock7Block27Stack4 := (recoveredBlock7Block27Stack4) getCurrentHierarchyName: (recoveredBlock7Block27Stack5).
            recoveredBlock7Block27PC := 66.
        ].
        recoveredBlock7Block27Step = 66 ifTrue: [
            recoveredBlock7Block27Stack3 := (recoveredBlock7Block27Stack3) with: (recoveredBlock7Block27Stack4).
            recoveredBlock7Block27PC := 68.
        ].
        recoveredBlock7Block27Step = 68 ifTrue: [
            recoveredBlock7Block27Stack4 := 'gp'.
            recoveredBlock7Block27PC := 70.
        ].
        recoveredBlock7Block27Step = 70 ifTrue: [
            recoveredBlock7Block27Stack1 := (recoveredBlock7Block27Stack1) errorNo: (recoveredBlock7Block27Stack2) args: (recoveredBlock7Block27Stack3) category: (recoveredBlock7Block27Stack4).
            recoveredBlock7Block27PC := 73.
        ].
        recoveredBlock7Block27Step = 73 ifTrue: [
            recoveredBlock7Block27Result := recoveredBlock7Block27Stack1.
            recoveredBlock7Block27Done := true.
        ].
    ].
    recoveredBlock7Block27Result
].
            recoveredBlock7PC := 74.
        ].
        recoveredBlock7Step = 74 ifTrue: [
            recoveredBlock7Stack1 := (recoveredBlock7Stack1) do: (recoveredBlock7Stack2).
            recoveredBlock7PC := 76.
        ].
        recoveredBlock7Step = 76 ifTrue: [
            recoveredBlock7Result := recoveredBlock7Stack1.
            recoveredBlock7Done := true.
        ].
    ].
    recoveredBlock7Result
].
    (recoveredValue0) ifNotNil: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x203c69d0; bytecode file offset 0xcc32b8"
!SGMemoryBlockDB methodsFor: 'recovered'!
adjustActualNameGOFor: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := 'hw'.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := 'call_88657'.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) == (recoveredStack2).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := 'hw'.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := 'call_97807'.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) == (recoveredStack2).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := 'hw'.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack2 := 'call_2010405950'.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := (recoveredStack1) == (recoveredStack2).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := (recoveredStack1) actualNameGO.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack2 := (recoveredStack2) namePosition.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            (recoveredStack1) moveTo: (recoveredStack2).
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := (recoveredStack1) flexibleCreated.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 74] ifFalse: [recoveredPC := 36].
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack1 := (recoveredStack1) isSGCodeGO.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 42] ifFalse: [recoveredPC := 74].
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := 'hw'.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack2 := 'call_2010404597'.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack1 := (recoveredStack1) == (recoveredStack2).
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack1 := (recoveredStack1) actualNameGO.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack1 := (recoveredStack1) isVisible.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 56] ifFalse: [recoveredPC := 66].
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack1 := (recoveredStack1) actualNameVisibility.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 66] ifFalse: [recoveredPC := 62].
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredPC := 71.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack1 := (recoveredStack1) actualNameGO.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack1 := (recoveredStack1) isVisible.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredPC := 77.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack1 := (recoveredStack1) actualNameVisibility.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            (recoveredStack1) actualNameVisibility: (recoveredStack2).
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x203d3a40; bytecode file offset 0xcd0308"
!SGMemoryBlockDB methodsFor: 'recovered'!
lookUpMethod: recoveredArg1 inTable: recoveredArg2 alternativeTable: recoveredArg3 alternativeConditionBlock: recoveredArg4
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg2.
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
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := (recoveredStack0) getLookUpKeyForMethod: (recoveredStack1) inTable: (recoveredStack2).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := (recoveredStack0) isNil.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := recoveredArg4.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := (recoveredStack0) and: (recoveredStack1).
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 32] ifFalse: [recoveredPC := 50].
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := recoveredArg3.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack0 := (recoveredStack0) getLookUpKeyForMethod: (recoveredStack1) inTable: (recoveredStack2).
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 58] ifFalse: [recoveredPC := 56].
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack2 := [
    | recoveredBlock64Value0 recoveredBlock64Value1 recoveredBlock64Value2 recoveredBlock64Value3 recoveredBlock64Value4 |
    recoveredBlock64Value0 := recoveredLocal2.
    recoveredBlock64Value1 := recoveredArg1.
    recoveredBlock64Value2 := (recoveredBlock64Value1) methodName.
    recoveredBlock64Value3 := [].
    recoveredBlock64Value4 := (recoveredBlock64Value0) at: (recoveredBlock64Value2) ifAbsent: (recoveredBlock64Value3).
    recoveredBlock64Value4
].
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1) ifAbsent: (recoveredStack2).
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x203e5ff4; bytecode file offset 0xce28c4"
!SGMemoryBlockDB methodsFor: 'recovered'!
highestUsedGraphicalIdentifier
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) iD.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 19] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := -1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := (recoveredStack0) getChildGraphicOIDs.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := [:recoveredBlock21Arg1 | 
    | recoveredBlock21Stack0 recoveredBlock21Stack1 recoveredBlock21Stack2 recoveredBlock21Stack3 recoveredBlock21PC recoveredBlock21Step recoveredBlock21Done recoveredBlock21Result |
    recoveredBlock21Stack0 := self.
    recoveredBlock21PC := 28.
    recoveredBlock21Done := false.
    [recoveredBlock21Done not] whileTrue: [
        recoveredBlock21Step := recoveredBlock21PC.
        recoveredBlock21Step = 28 ifTrue: [
            recoveredBlock21Stack1 := nil.
            recoveredBlock21PC := 29.
        ].
        recoveredBlock21Step = 29 ifTrue: [
            recoveredBlock21Stack2 := recoveredBlock21Arg1.
            recoveredBlock21PC := 30.
        ].
        recoveredBlock21Step = 30 ifTrue: [
            (recoveredBlock21Stack2 == nil) ifTrue: [recoveredBlock21PC := 44] ifFalse: [recoveredBlock21PC := 34].
        ].
        recoveredBlock21Step = 34 ifTrue: [
            recoveredBlock21PC := 35.
        ].
        recoveredBlock21Step = 35 ifTrue: [
            recoveredBlock21Stack1 := recoveredLocal1.
            recoveredBlock21PC := 38.
        ].
        recoveredBlock21Step = 38 ifTrue: [
            recoveredBlock21Stack2 := recoveredBlock21Arg1.
            recoveredBlock21PC := 39.
        ].
        recoveredBlock21Step = 39 ifTrue: [
            recoveredBlock21Stack1 := (recoveredBlock21Stack1) max: (recoveredBlock21Stack2).
            recoveredBlock21PC := 40.
        ].
        recoveredBlock21Step = 40 ifTrue: [
            recoveredBlock21Stack2 := recoveredBlock21Stack1.
            recoveredBlock21PC := 41.
        ].
        recoveredBlock21Step = 41 ifTrue: [
            recoveredLocal1 := recoveredBlock21Stack2.
            recoveredBlock21PC := 44.
        ].
        recoveredBlock21Step = 44 ifTrue: [
            recoveredBlock21Result := recoveredBlock21Stack1.
            recoveredBlock21Done := true.
        ].
    ].
    recoveredBlock21Result
].
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack0 := (recoveredStack0) sequences.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack0 := (recoveredStack0) values.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack1 := [:recoveredBlock52Arg1 | 
    | recoveredBlock52Stack0 recoveredBlock52Stack1 recoveredBlock52Stack2 recoveredBlock52Stack3 recoveredBlock52Stack4 recoveredBlock52PC recoveredBlock52Step recoveredBlock52Done recoveredBlock52Result |
    recoveredBlock52Stack0 := self.
    recoveredBlock52PC := 58.
    recoveredBlock52Done := false.
    [recoveredBlock52Done not] whileTrue: [
        recoveredBlock52Step := recoveredBlock52PC.
        recoveredBlock52Step = 58 ifTrue: [
            recoveredBlock52Stack1 := nil.
            recoveredBlock52PC := 59.
        ].
        recoveredBlock52Step = 59 ifTrue: [
            recoveredBlock52Stack2 := recoveredBlock52Arg1.
            recoveredBlock52PC := 60.
        ].
        recoveredBlock52Step = 60 ifTrue: [
            recoveredBlock52Stack3 := 1.
            recoveredBlock52PC := 62.
        ].
        recoveredBlock52Step = 62 ifTrue: [
            recoveredBlock52Stack2 := (recoveredBlock52Stack2) at: (recoveredBlock52Stack3).
            recoveredBlock52PC := 64.
        ].
        recoveredBlock52Step = 64 ifTrue: [
            (recoveredBlock52Stack2 == nil) ifTrue: [recoveredBlock52PC := 82] ifFalse: [recoveredBlock52PC := 68].
        ].
        recoveredBlock52Step = 68 ifTrue: [
            recoveredBlock52PC := 69.
        ].
        recoveredBlock52Step = 69 ifTrue: [
            recoveredBlock52Stack1 := recoveredLocal1.
            recoveredBlock52PC := 72.
        ].
        recoveredBlock52Step = 72 ifTrue: [
            recoveredBlock52Stack2 := recoveredBlock52Arg1.
            recoveredBlock52PC := 73.
        ].
        recoveredBlock52Step = 73 ifTrue: [
            recoveredBlock52Stack3 := 1.
            recoveredBlock52PC := 75.
        ].
        recoveredBlock52Step = 75 ifTrue: [
            recoveredBlock52Stack2 := (recoveredBlock52Stack2) at: (recoveredBlock52Stack3).
            recoveredBlock52PC := 77.
        ].
        recoveredBlock52Step = 77 ifTrue: [
            recoveredBlock52Stack1 := (recoveredBlock52Stack1) max: (recoveredBlock52Stack2).
            recoveredBlock52PC := 78.
        ].
        recoveredBlock52Step = 78 ifTrue: [
            recoveredBlock52Stack2 := recoveredBlock52Stack1.
            recoveredBlock52PC := 79.
        ].
        recoveredBlock52Step = 79 ifTrue: [
            recoveredLocal1 := recoveredBlock52Stack2.
            recoveredBlock52PC := 82.
        ].
        recoveredBlock52Step = 82 ifTrue: [
            recoveredBlock52Result := recoveredBlock52Stack1.
            recoveredBlock52Done := true.
        ].
    ].
    recoveredBlock52Result
].
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x203fbc7c; bytecode file offset 0xcf8544"
!SGMemoryBlockDB methodsFor: 'recovered'!
lookUpMethod: recoveredArg1 inTable: recoveredArg2 alternativeTable: recoveredArg3
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) isGetSetMethodForElement.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := (recoveredStack0) getLookUpKeyForMethod: (recoveredStack1) inTable: (recoveredStack2).
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 58] ifFalse: [recoveredPC := 34].
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 58] ifFalse: [recoveredPC := 40].
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack0 := recoveredArg3.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack0 := (recoveredStack0) getLookUpKeyForMethod: (recoveredStack1) inTable: (recoveredStack2).
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 66] ifFalse: [recoveredPC := 64].
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack2 := [
    | recoveredBlock72Value0 recoveredBlock72Value1 recoveredBlock72Value2 recoveredBlock72Value3 recoveredBlock72Value4 |
    recoveredBlock72Value0 := recoveredLocal3.
    recoveredBlock72Value1 := recoveredArg1.
    recoveredBlock72Value2 := (recoveredBlock72Value1) methodName.
    recoveredBlock72Value3 := [].
    recoveredBlock72Value4 := (recoveredBlock72Value0) at: (recoveredBlock72Value2) ifAbsent: (recoveredBlock72Value3).
    recoveredBlock72Value4
].
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1) ifAbsent: (recoveredStack2).
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x204008dc; bytecode file offset 0xcfd1f4"
!SGMemoryBlockDB methodsFor: 'recovered'!
graphicObjectForTemplate: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) iconDBImage.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := 'Dummy'.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredPC := 22.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := (recoveredStack0) label.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := (recoveredStack0) class.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := (recoveredStack0) goClass.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack4 := self.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack4 := (recoveredStack4) lineStyle.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack5 := self.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack5 := (recoveredStack5) size.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := (recoveredStack0) createUpdatedDisplay: (recoveredStack1) actualName: (recoveredStack2) icon: (recoveredStack3) lineStyle: (recoveredStack4) size: (recoveredStack5).
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack0 := (recoveredStack0) frameGO.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack1 := (recoveredStack1) blockColor.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            (recoveredStack0) setRBAreaStyle: (recoveredStack1).
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack1 := (recoveredStack1) iD.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            (recoveredStack0) identifier: (recoveredStack1).
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack1 := (recoveredStack1) position.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            (recoveredStack0) moveTo: (recoveredStack1).
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack0 := (recoveredStack0) actualNameGO.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack1 := (recoveredStack1) namePosition.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            (recoveredStack0) moveTo: (recoveredStack1).
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack1 := (recoveredStack1) actualNameVisibility.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            (recoveredStack0) actualNameVisibility: (recoveredStack1).
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack1 := (recoveredStack1) iconVisibility.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            (recoveredStack0) iconVisibility: (recoveredStack1).
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack0 := 'Kk'.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack1 := 'Call_63666'.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack0 := (recoveredStack0) == (recoveredStack1).
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack1 := (recoveredStack1) customerDataInfo.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            (recoveredStack0) setCustomerDataInfoFrom: (recoveredStack1).
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2045bb6c; bytecode file offset 0xd58454"
!SGMemoryBlockDB methodsFor: 'recovered'!
replaceAliasNamesInConnectors: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) aliasName.
    recoveredValue2 := [:recoveredBlock7Arg1 | 
    | recoveredBlock7Local1 recoveredBlock7Value0 recoveredBlock7Value1 recoveredBlock7Value2 recoveredBlock7Value3 recoveredBlock7Value4 recoveredBlock7Value5 recoveredBlock7Value6 recoveredBlock7Value7 recoveredBlock7Value8 |
    recoveredBlock7Value0 := Dictionary.
    recoveredBlock7Value1 := (recoveredBlock7Value0) new.
    recoveredBlock7Local1 := recoveredBlock7Value1.
    recoveredBlock7Value2 := (self) selectorPorts.
    recoveredBlock7Value3 := [:recoveredBlock7Block21Arg1 | 
    | recoveredBlock7Block21Value0 recoveredBlock7Block21Value1 recoveredBlock7Block21Value2 |
    recoveredBlock7Block21Value0 := recoveredBlock7Local1.
    recoveredBlock7Block21Value1 := recoveredBlock7Block21Arg1.
    recoveredBlock7Block21Value2 := (recoveredBlock7Block21Value0) addAll: (recoveredBlock7Block21Value1).
    recoveredBlock7Block21Value2
].
    (recoveredBlock7Value2) ifNotNil: (recoveredBlock7Value3).
    recoveredBlock7Value4 := (self) returnPorts.
    recoveredBlock7Value5 := [:recoveredBlock7Block40Arg1 | 
    | recoveredBlock7Block40Value0 recoveredBlock7Block40Value1 recoveredBlock7Block40Value2 |
    recoveredBlock7Block40Value0 := recoveredBlock7Local1.
    recoveredBlock7Block40Value1 := recoveredBlock7Block40Arg1.
    recoveredBlock7Block40Value2 := (recoveredBlock7Block40Value0) addAll: (recoveredBlock7Block40Value1).
    recoveredBlock7Block40Value2
].
    (recoveredBlock7Value4) ifNotNil: (recoveredBlock7Value5).
    recoveredBlock7Value6 := recoveredBlock7Local1.
    recoveredBlock7Value7 := [:recoveredBlock7Block58Arg1 | 
    | recoveredBlock7Block58Value0 recoveredBlock7Block58Value1 recoveredBlock7Block58Value2 recoveredBlock7Block58Value3 recoveredBlock7Block58Value4 |
    recoveredBlock7Block58Value0 := recoveredBlock7Block58Arg1.
    recoveredBlock7Block58Value1 := (recoveredBlock7Block58Value0) keys.
    recoveredBlock7Block58Value2 := (recoveredBlock7Block58Value1) asArray.
    recoveredBlock7Block58Value3 := [:recoveredBlock7Block58Block71Arg1 | 
    | recoveredBlock7Block58Block71Value0 recoveredBlock7Block58Block71Value1 recoveredBlock7Block58Block71Value2 recoveredBlock7Block58Block71Value3 |
    recoveredBlock7Block58Block71Value0 := recoveredBlock7Arg1.
    recoveredBlock7Block58Block71Value1 := recoveredBlock7Block58Block71Arg1.
    recoveredBlock7Block58Block71Value2 := [:recoveredBlock7Block58Block71Block84Arg1 | 
    | recoveredBlock7Block58Block71Block84Value0 recoveredBlock7Block58Block71Block84Value1 recoveredBlock7Block58Block71Block84Value2 recoveredBlock7Block58Block71Block84Value3 recoveredBlock7Block58Block71Block84Value4 recoveredBlock7Block58Block71Block84Value5 |
    recoveredBlock7Block58Block71Block84Value0 := recoveredBlock7Block58Arg1.
    recoveredBlock7Block58Block71Block84Value1 := recoveredBlock7Block58Block71Block84Arg1.
    recoveredBlock7Block58Block71Block84Value2 := recoveredBlock7Block58Arg1.
    recoveredBlock7Block58Block71Block84Value3 := recoveredBlock7Block58Block71Arg1.
    recoveredBlock7Block58Block71Block84Value4 := (recoveredBlock7Block58Block71Block84Value2) removeKey: (recoveredBlock7Block58Block71Block84Value3).
    recoveredBlock7Block58Block71Block84Value5 := (recoveredBlock7Block58Block71Block84Value0) at: (recoveredBlock7Block58Block71Block84Value1) put: (recoveredBlock7Block58Block71Block84Value4).
    recoveredBlock7Block58Block71Block84Value5
].
    recoveredBlock7Block58Block71Value3 := (recoveredBlock7Block58Block71Value0) at: (recoveredBlock7Block58Block71Value1) ifPresent: (recoveredBlock7Block58Block71Value2).
    recoveredBlock7Block58Block71Value3
].
    recoveredBlock7Block58Value4 := (recoveredBlock7Block58Value2) do: (recoveredBlock7Block58Value3).
    recoveredBlock7Block58Value4
].
    recoveredBlock7Value8 := (recoveredBlock7Value6) do: (recoveredBlock7Value7).
    recoveredBlock7Value8
].
    (recoveredValue0) at: (recoveredValue1) ifPresent: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x20474980; bytecode file offset 0xd71270"
!SGMemoryBlockDB methodsFor: 'recovered'!
updateSequencesWith: recoveredArg1 dataModelManager: recoveredArg2
    | recoveredLocal1 recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) sequences.
    recoveredValue1 := [:recoveredBlock5Arg1 | 
    | recoveredBlock5Local1 recoveredBlock5Stack0 recoveredBlock5Stack1 recoveredBlock5Stack2 recoveredBlock5Stack3 recoveredBlock5Stack4 recoveredBlock5Stack5 recoveredBlock5PC recoveredBlock5Step recoveredBlock5Done recoveredBlock5Result |
    recoveredBlock5Stack0 := self.
    recoveredBlock5PC := 12.
    recoveredBlock5Done := false.
    [recoveredBlock5Done not] whileTrue: [
        recoveredBlock5Step := recoveredBlock5PC.
        recoveredBlock5Step = 12 ifTrue: [
            recoveredBlock5Stack1 := recoveredArg1.
            recoveredBlock5PC := 15.
        ].
        recoveredBlock5Step = 15 ifTrue: [
            recoveredBlock5Stack2 := recoveredBlock5Arg1.
            recoveredBlock5PC := 16.
        ].
        recoveredBlock5Step = 16 ifTrue: [
            recoveredBlock5Stack2 := (recoveredBlock5Stack2) key.
            recoveredBlock5PC := 17.
        ].
        recoveredBlock5Step = 17 ifTrue: [
            recoveredBlock5Stack1 := (recoveredBlock5Stack1) interfaceSelectorAlias: (recoveredBlock5Stack2).
            recoveredBlock5PC := 18.
        ].
        recoveredBlock5Step = 18 ifTrue: [
            recoveredBlock5Stack2 := recoveredBlock5Stack1.
            recoveredBlock5PC := 19.
        ].
        recoveredBlock5Step = 19 ifTrue: [
            recoveredLocal1 := recoveredBlock5Stack2.
            recoveredBlock5PC := 22.
        ].
        recoveredBlock5Step = 22 ifTrue: [
            (recoveredBlock5Stack1 ~~ nil) ifTrue: [recoveredBlock5PC := 35] ifFalse: [recoveredBlock5PC := 26].
        ].
        recoveredBlock5Step = 26 ifTrue: [
            recoveredBlock5Stack1 := recoveredArg1.
            recoveredBlock5PC := 29.
        ].
        recoveredBlock5Step = 29 ifTrue: [
            recoveredBlock5Stack2 := recoveredBlock5Arg1.
            recoveredBlock5PC := 30.
        ].
        recoveredBlock5Step = 30 ifTrue: [
            recoveredBlock5Stack2 := (recoveredBlock5Stack2) key.
            recoveredBlock5PC := 31.
        ].
        recoveredBlock5Step = 31 ifTrue: [
            recoveredBlock5Stack1 := (recoveredBlock5Stack1) interfaceSelectorNamed: (recoveredBlock5Stack2).
            recoveredBlock5PC := 32.
        ].
        recoveredBlock5Step = 32 ifTrue: [
            recoveredLocal1 := recoveredBlock5Stack1.
            recoveredBlock5PC := 35.
        ].
        recoveredBlock5Step = 35 ifTrue: [
            recoveredBlock5Stack1 := 'Rl'.
            recoveredBlock5PC := 37.
        ].
        recoveredBlock5Step = 37 ifTrue: [
            recoveredBlock5Stack2 := 'Call_70219'.
            recoveredBlock5PC := 39.
        ].
        recoveredBlock5Step = 39 ifTrue: [
            recoveredBlock5Stack1 := (recoveredBlock5Stack1) == (recoveredBlock5Stack2).
            recoveredBlock5PC := 40.
        ].
        recoveredBlock5Step = 40 ifTrue: [
            recoveredBlock5PC := 41.
        ].
        recoveredBlock5Step = 41 ifTrue: [
            recoveredBlock5Stack1 := nil.
            recoveredBlock5PC := 42.
        ].
        recoveredBlock5Step = 42 ifTrue: [
            recoveredBlock5Stack2 := recoveredLocal1.
            recoveredBlock5PC := 45.
        ].
        recoveredBlock5Step = 45 ifTrue: [
            (recoveredBlock5Stack2 == nil) ifTrue: [recoveredBlock5PC := 119] ifFalse: [recoveredBlock5PC := 48].
        ].
        recoveredBlock5Step = 48 ifTrue: [
            recoveredBlock5Stack2 := true.
            recoveredBlock5PC := 49.
        ].
        recoveredBlock5Step = 49 ifTrue: [
            (recoveredBlock5Stack2) ifTrue: [recoveredBlock5PC := 52] ifFalse: [recoveredBlock5PC := 119].
        ].
        recoveredBlock5Step = 52 ifTrue: [
            recoveredBlock5PC := 53.
        ].
        recoveredBlock5Step = 53 ifTrue: [
            recoveredBlock5Stack1 := recoveredArg1.
            recoveredBlock5PC := 56.
        ].
        recoveredBlock5Step = 56 ifTrue: [
            recoveredBlock5Stack1 := (recoveredBlock5Stack1) class.
            recoveredBlock5PC := 58.
        ].
        recoveredBlock5Step = 58 ifTrue: [
            recoveredBlock5Stack1 := (recoveredBlock5Stack1) optionGraphicsCompatibilityMode.
            recoveredBlock5PC := 60.
        ].
        recoveredBlock5Step = 60 ifTrue: [
            (recoveredBlock5Stack1) ifTrue: [recoveredBlock5PC := 64] ifFalse: [recoveredBlock5PC := 106].
        ].
        recoveredBlock5Step = 64 ifTrue: [
            recoveredBlock5Stack1 := recoveredLocal1.
            recoveredBlock5PC := 67.
        ].
        recoveredBlock5Step = 67 ifTrue: [
            recoveredBlock5Stack1 := (recoveredBlock5Stack1) isProcessPortGO.
            recoveredBlock5PC := 69.
        ].
        recoveredBlock5Step = 69 ifTrue: [
            (recoveredBlock5Stack1) ifTrue: [recoveredBlock5PC := 72] ifFalse: [recoveredBlock5PC := 106].
        ].
        recoveredBlock5Step = 72 ifTrue: [
            recoveredBlock5Stack1 := recoveredLocal1.
            recoveredBlock5PC := 75.
        ].
        recoveredBlock5Step = 75 ifTrue: [
            recoveredBlock5Stack1 := (recoveredBlock5Stack1) getSGCallGO.
            recoveredBlock5PC := 77.
        ].
        recoveredBlock5Step = 77 ifTrue: [
            recoveredBlock5Stack1 := (recoveredBlock5Stack1) getPosition.
            recoveredBlock5PC := 79.
        ].
        recoveredBlock5Step = 79 ifTrue: [
            recoveredBlock5Local1 := recoveredBlock5Stack1.
            recoveredBlock5PC := 80.
        ].
        recoveredBlock5Step = 80 ifTrue: [
            recoveredBlock5Stack1 := recoveredLocal1.
            recoveredBlock5PC := 83.
        ].
        recoveredBlock5Step = 83 ifTrue: [
            recoveredBlock5Stack2 := recoveredBlock5Arg1.
            recoveredBlock5PC := 84.
        ].
        recoveredBlock5Step = 84 ifTrue: [
            recoveredBlock5Stack2 := (recoveredBlock5Stack2) value.
            recoveredBlock5PC := 86.
        ].
        recoveredBlock5Step = 86 ifTrue: [
            recoveredBlock5Stack3 := true.
            recoveredBlock5PC := 87.
        ].
        recoveredBlock5Step = 87 ifTrue: [
            recoveredBlock5Stack4 := recoveredArg2.
            recoveredBlock5PC := 90.
        ].
        recoveredBlock5Step = 90 ifTrue: [
            (recoveredBlock5Stack1) updateSequenceWith: (recoveredBlock5Stack2) addSeqCallId: (recoveredBlock5Stack3) datamodelManager: (recoveredBlock5Stack4).
            recoveredBlock5PC := 93.
        ].
        recoveredBlock5Step = 93 ifTrue: [
            recoveredBlock5Stack1 := recoveredLocal1.
            recoveredBlock5PC := 96.
        ].
        recoveredBlock5Step = 96 ifTrue: [
            recoveredBlock5Stack1 := (recoveredBlock5Stack1) getSGCallGO.
            recoveredBlock5PC := 98.
        ].
        recoveredBlock5Step = 98 ifTrue: [
            recoveredBlock5Stack2 := recoveredBlock5Local1.
            recoveredBlock5PC := 99.
        ].
        recoveredBlock5Step = 99 ifTrue: [
            recoveredBlock5Stack1 := (recoveredBlock5Stack1) moveTo: (recoveredBlock5Stack2).
            recoveredBlock5PC := 101.
        ].
        recoveredBlock5Step = 101 ifTrue: [
            recoveredBlock5Stack2 := nil.
            recoveredBlock5PC := 102.
        ].
        recoveredBlock5Step = 102 ifTrue: [
            recoveredBlock5Local1 := recoveredBlock5Stack2.
            recoveredBlock5PC := 103.
        ].
        recoveredBlock5Step = 103 ifTrue: [
            recoveredBlock5PC := 119.
        ].
        recoveredBlock5Step = 106 ifTrue: [
            recoveredBlock5Stack1 := recoveredLocal1.
            recoveredBlock5PC := 109.
        ].
        recoveredBlock5Step = 109 ifTrue: [
            recoveredBlock5Stack2 := recoveredBlock5Arg1.
            recoveredBlock5PC := 110.
        ].
        recoveredBlock5Step = 110 ifTrue: [
            recoveredBlock5Stack2 := (recoveredBlock5Stack2) value.
            recoveredBlock5PC := 112.
        ].
        recoveredBlock5Step = 112 ifTrue: [
            recoveredBlock5Stack3 := true.
            recoveredBlock5PC := 113.
        ].
        recoveredBlock5Step = 113 ifTrue: [
            recoveredBlock5Stack4 := recoveredArg2.
            recoveredBlock5PC := 116.
        ].
        recoveredBlock5Step = 116 ifTrue: [
            recoveredBlock5Stack1 := (recoveredBlock5Stack1) updateSequenceWith: (recoveredBlock5Stack2) addSeqCallId: (recoveredBlock5Stack3) datamodelManager: (recoveredBlock5Stack4).
            recoveredBlock5PC := 119.
        ].
        recoveredBlock5Step = 119 ifTrue: [
            recoveredBlock5Result := recoveredBlock5Stack1.
            recoveredBlock5Done := true.
        ].
    ].
    recoveredBlock5Result
].
    (recoveredValue0) associationsDo: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x20512d04; bytecode file offset 0xe0f5fc"
!SGMemoryBlockDB methodsFor: 'recovered'!
lookupPinDictionaryFor: recoveredArg1 usedListSelectorPorts: recoveredArg2 usedListReturnPorts: recoveredArg3
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) interfaceGOs.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack2 := [:recoveredBlock8Arg1 | 
    | recoveredBlock8Stack0 recoveredBlock8Stack1 recoveredBlock8Stack2 recoveredBlock8Stack3 recoveredBlock8PC recoveredBlock8Step recoveredBlock8Done recoveredBlock8Result |
    recoveredBlock8Stack0 := self.
    recoveredBlock8PC := 14.
    recoveredBlock8Done := false.
    [recoveredBlock8Done not] whileTrue: [
        recoveredBlock8Step := recoveredBlock8PC.
        recoveredBlock8Step = 14 ifTrue: [
            recoveredBlock8Stack1 := recoveredBlock8Arg1.
            recoveredBlock8PC := 15.
        ].
        recoveredBlock8Step = 15 ifTrue: [
            recoveredBlock8Stack1 := (recoveredBlock8Stack1) externalConnectorGO.
            recoveredBlock8PC := 16.
        ].
        recoveredBlock8Step = 16 ifTrue: [
            recoveredBlock8Stack1 := (recoveredBlock8Stack1) isMissingPin.
            recoveredBlock8PC := 17.
        ].
        recoveredBlock8Step = 17 ifTrue: [
            (recoveredBlock8Stack1) ifTrue: [recoveredBlock8PC := 20] ifFalse: [recoveredBlock8PC := 22].
        ].
        recoveredBlock8Step = 20 ifTrue: [
            recoveredBlock8Stack1 := nil.
            recoveredBlock8PC := 21.
        ].
        recoveredBlock8Step = 21 ifTrue: [
            ^recoveredBlock8Stack1
        ].
        recoveredBlock8Step = 22 ifTrue: [
            recoveredBlock8Stack1 := nil.
            recoveredBlock8PC := 23.
        ].
        recoveredBlock8Step = 23 ifTrue: [
            recoveredBlock8Stack2 := recoveredBlock8Arg1.
            recoveredBlock8PC := 24.
        ].
        recoveredBlock8Step = 24 ifTrue: [
            recoveredBlock8Stack2 := (recoveredBlock8Stack2) externalConnectorGO.
            recoveredBlock8PC := 25.
        ].
        recoveredBlock8Step = 25 ifTrue: [
            recoveredBlock8Stack2 := (recoveredBlock8Stack2) isDirectAccess.
            recoveredBlock8PC := 26.
        ].
        recoveredBlock8Step = 26 ifTrue: [
            (recoveredBlock8Stack2) ifTrue: [recoveredBlock8PC := 30] ifFalse: [recoveredBlock8PC := 39].
        ].
        recoveredBlock8Step = 30 ifTrue: [
            recoveredBlock8Stack2 := recoveredBlock8Arg1.
            recoveredBlock8PC := 31.
        ].
        recoveredBlock8Step = 31 ifTrue: [
            recoveredBlock8Stack2 := (recoveredBlock8Stack2) isVisible.
            recoveredBlock8PC := 33.
        ].
        recoveredBlock8Step = 33 ifTrue: [
            (recoveredBlock8Stack2) ifTrue: [recoveredBlock8PC := 39] ifFalse: [recoveredBlock8PC := 36].
        ].
        recoveredBlock8Step = 36 ifTrue: [
            recoveredBlock8PC := 37.
        ].
        recoveredBlock8Step = 37 ifTrue: [
            recoveredBlock8Stack1 := nil.
            recoveredBlock8PC := 38.
        ].
        recoveredBlock8Step = 38 ifTrue: [
            ^recoveredBlock8Stack1
        ].
        recoveredBlock8Step = 39 ifTrue: [
            recoveredBlock8Result := recoveredBlock8Stack1.
            recoveredBlock8Done := true.
        ].
    ].
    recoveredBlock8Result
].
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := OrderedCollection.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack1 := 'hw'.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack2 := 'call_2009405972'.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack1 := (recoveredStack1) == (recoveredStack2).
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack1 := (recoveredStack1) isSelectorPort.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 64] ifFalse: [recoveredPC := 86].
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack1 := (recoveredStack1) selectorPorts.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredLocal5 := recoveredStack1.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack1 := (recoveredStack1) returnPorts.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredPC := 104.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredStack1 := (recoveredStack1) selectorPorts.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            recoveredStack1 := (recoveredStack1) returnPorts.
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            recoveredLocal5 := recoveredStack1.
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            recoveredStack2 := recoveredLocal5.
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            recoveredStack0 := (recoveredStack0) lookupPinDictionaryFor: (recoveredStack1) inPortDict: (recoveredStack2).
            recoveredPC := 112.
        ].
        recoveredStep = 112 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 116.
        ].
        recoveredStep = 116 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 142] ifFalse: [recoveredPC := 120].
        ].
        recoveredStep = 120 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 123.
        ].
        recoveredStep = 123 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 126.
        ].
        recoveredStep = 126 ifTrue: [
            recoveredStack1 := (recoveredStack1) methodAliasName.
            recoveredPC := 128.
        ].
        recoveredStep = 128 ifTrue: [
            (recoveredStack0) add: (recoveredStack1).
            recoveredPC := 130.
        ].
        recoveredStep = 130 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 133.
        ].
        recoveredStep = 133 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 136.
        ].
        recoveredStep = 136 ifTrue: [
            (recoveredStack0) add: (recoveredStack1).
            recoveredPC := 138.
        ].
        recoveredStep = 138 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 141.
        ].
        recoveredStep = 141 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 142 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 143.
        ].
        recoveredStep = 143 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 146.
        ].
        recoveredStep = 146 ifTrue: [
            recoveredStack2 := recoveredLocal4.
            recoveredPC := 149.
        ].
        recoveredStep = 149 ifTrue: [
            recoveredStack0 := (recoveredStack0) lookupPinDictionaryFor: (recoveredStack1) inPortDict: (recoveredStack2).
            recoveredPC := 151.
        ].
        recoveredStep = 151 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 152.
        ].
        recoveredStep = 152 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 155.
        ].
        recoveredStep = 155 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 184] ifFalse: [recoveredPC := 158].
        ].
        recoveredStep = 158 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 161.
        ].
        recoveredStep = 161 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 164.
        ].
        recoveredStep = 164 ifTrue: [
            recoveredStack1 := (recoveredStack1) methodAliasName.
            recoveredPC := 166.
        ].
        recoveredStep = 166 ifTrue: [
            (recoveredStack0) add: (recoveredStack1).
            recoveredPC := 168.
        ].
        recoveredStep = 168 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 171.
        ].
        recoveredStep = 171 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 174.
        ].
        recoveredStep = 174 ifTrue: [
            recoveredStack0 := (recoveredStack0) includes: (recoveredStack1).
            recoveredPC := 176.
        ].
        recoveredStep = 176 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 184] ifFalse: [recoveredPC := 180].
        ].
        recoveredStep = 180 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 183.
        ].
        recoveredStep = 183 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 184 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 185.
        ].
        recoveredStep = 185 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2056a7ac; bytecode file offset 0xe670c4"
!SGMemoryBlockDB methodsFor: 'recovered'!
replaceAliasNames: recoveredArg1 childrenReplacementTable: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := [
    | recoveredBlock4Stack0 recoveredBlock4Stack1 recoveredBlock4Stack2 recoveredBlock4Stack3 recoveredBlock4Stack4 recoveredBlock4PC recoveredBlock4Step recoveredBlock4Done recoveredBlock4Result |
    recoveredBlock4Stack0 := self.
    recoveredBlock4PC := 10.
    recoveredBlock4Done := false.
    [recoveredBlock4Done not] whileTrue: [
        recoveredBlock4Step := recoveredBlock4PC.
        recoveredBlock4Step = 10 ifTrue: [
            recoveredBlock4Stack1 := true.
            recoveredBlock4PC := 11.
        ].
        recoveredBlock4Step = 11 ifTrue: [
            recoveredBlock4Stack2 := recoveredArg1.
            recoveredBlock4PC := 14.
        ].
        recoveredBlock4Step = 14 ifTrue: [
            recoveredBlock4Stack2 := (recoveredBlock4Stack2) class.
            recoveredBlock4PC := 15.
        ].
        recoveredBlock4Step = 15 ifTrue: [
            recoveredBlock4Stack3 := ASDReplaceAliasNamesTable.
            recoveredBlock4PC := 17.
        ].
        recoveredBlock4Step = 17 ifTrue: [
            recoveredBlock4Stack2 := (recoveredBlock4Stack2) equals: (recoveredBlock4Stack3).
            recoveredBlock4PC := 18.
        ].
        recoveredBlock4Step = 18 ifTrue: [
            (recoveredBlock4Stack2) ifTrue: [recoveredBlock4PC := 30] ifFalse: [recoveredBlock4PC := 22].
        ].
        recoveredBlock4Step = 22 ifTrue: [
            recoveredBlock4PC := 23.
        ].
        recoveredBlock4Step = 23 ifTrue: [
            recoveredBlock4Stack1 := recoveredArg1.
            recoveredBlock4PC := 26.
        ].
        recoveredBlock4Step = 26 ifTrue: [
            recoveredBlock4Stack1 := (recoveredBlock4Stack1) class.
            recoveredBlock4PC := 27.
        ].
        recoveredBlock4Step = 27 ifTrue: [
            recoveredBlock4Stack2 := ASDDuplicateAliasNamesTable.
            recoveredBlock4PC := 29.
        ].
        recoveredBlock4Step = 29 ifTrue: [
            recoveredBlock4Stack1 := (recoveredBlock4Stack1) equals: (recoveredBlock4Stack2).
            recoveredBlock4PC := 30.
        ].
        recoveredBlock4Step = 30 ifTrue: [
            recoveredBlock4Result := recoveredBlock4Stack1.
            recoveredBlock4Done := true.
        ].
    ].
    recoveredBlock4Result
].
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack2 := 'wrong parameter type'.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            (recoveredStack0) runtimeAssert: (recoveredStack1) additionalInfo: (recoveredStack2).
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := (recoveredStack0) aliasName.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            super replaceAliasNames: (recoveredStack1) childrenReplacementTable: (recoveredStack2).
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack0 := (recoveredStack0) sequenceDescription.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack1 := [:recoveredBlock55Arg1 | 
    | recoveredBlock55Value0 recoveredBlock55Value1 recoveredBlock55Value2 |
    recoveredBlock55Value0 := recoveredBlock55Arg1.
    recoveredBlock55Value1 := [:recoveredBlock55Block63Arg1 | 
    | recoveredBlock55Block63Local1 recoveredBlock55Block63Stack0 recoveredBlock55Block63Stack1 recoveredBlock55Block63Stack2 recoveredBlock55Block63Stack3 recoveredBlock55Block63Stack4 recoveredBlock55Block63Stack5 recoveredBlock55Block63PC recoveredBlock55Block63Step recoveredBlock55Block63Done recoveredBlock55Block63Result |
    recoveredBlock55Block63Stack0 := nil.
    recoveredBlock55Block63PC := 70.
    recoveredBlock55Block63Done := false.
    [recoveredBlock55Block63Done not] whileTrue: [
        recoveredBlock55Block63Step := recoveredBlock55Block63PC.
        recoveredBlock55Block63Step = 70 ifTrue: [
            recoveredBlock55Block63Stack1 := nil.
            recoveredBlock55Block63PC := 71.
        ].
        recoveredBlock55Block63Step = 71 ifTrue: [
            recoveredBlock55Block63Stack2 := recoveredBlock55Block63Arg1.
            recoveredBlock55Block63PC := 72.
        ].
        recoveredBlock55Block63Step = 72 ifTrue: [
            recoveredBlock55Block63Stack3 := 5.
            recoveredBlock55Block63PC := 74.
        ].
        recoveredBlock55Block63Step = 74 ifTrue: [
            recoveredBlock55Block63Stack4 := [].
            recoveredBlock55Block63PC := 76.
        ].
        recoveredBlock55Block63Step = 76 ifTrue: [
            recoveredBlock55Block63Stack2 := (recoveredBlock55Block63Stack2) at: (recoveredBlock55Block63Stack3) ifAbsent: (recoveredBlock55Block63Stack4).
            recoveredBlock55Block63PC := 78.
        ].
        recoveredBlock55Block63Step = 78 ifTrue: [
            recoveredBlock55Block63Stack3 := recoveredBlock55Block63Stack2.
            recoveredBlock55Block63PC := 79.
        ].
        recoveredBlock55Block63Step = 79 ifTrue: [
            recoveredLocal3 := recoveredBlock55Block63Stack3.
            recoveredBlock55Block63PC := 82.
        ].
        recoveredBlock55Block63Step = 82 ifTrue: [
            (recoveredBlock55Block63Stack2 == nil) ifTrue: [recoveredBlock55Block63PC := 130] ifFalse: [recoveredBlock55Block63PC := 86].
        ].
        recoveredBlock55Block63Step = 86 ifTrue: [
            recoveredBlock55Block63PC := 87.
        ].
        recoveredBlock55Block63Step = 87 ifTrue: [
            recoveredBlock55Block63Stack1 := nil.
            recoveredBlock55Block63PC := 88.
        ].
        recoveredBlock55Block63Step = 88 ifTrue: [
            recoveredBlock55Block63Stack2 := recoveredLocal3.
            recoveredBlock55Block63PC := 91.
        ].
        recoveredBlock55Block63Step = 91 ifTrue: [
            recoveredBlock55Block63Stack3 := 1.
            recoveredBlock55Block63PC := 93.
        ].
        recoveredBlock55Block63Step = 93 ifTrue: [
            recoveredBlock55Block63Stack4 := [].
            recoveredBlock55Block63PC := 95.
        ].
        recoveredBlock55Block63Step = 95 ifTrue: [
            recoveredBlock55Block63Stack2 := (recoveredBlock55Block63Stack2) at: (recoveredBlock55Block63Stack3) ifAbsent: (recoveredBlock55Block63Stack4).
            recoveredBlock55Block63PC := 97.
        ].
        recoveredBlock55Block63Step = 97 ifTrue: [
            recoveredBlock55Block63Stack3 := recoveredBlock55Block63Stack2.
            recoveredBlock55Block63PC := 98.
        ].
        recoveredBlock55Block63Step = 98 ifTrue: [
            recoveredBlock55Block63Local1 := recoveredBlock55Block63Stack3.
            recoveredBlock55Block63PC := 99.
        ].
        recoveredBlock55Block63Step = 99 ifTrue: [
            (recoveredBlock55Block63Stack2 == nil) ifTrue: [recoveredBlock55Block63PC := 128] ifFalse: [recoveredBlock55Block63PC := 102].
        ].
        recoveredBlock55Block63Step = 102 ifTrue: [
            recoveredBlock55Block63PC := 103.
        ].
        recoveredBlock55Block63Step = 103 ifTrue: [
            recoveredBlock55Block63Stack1 := nil.
            recoveredBlock55Block63PC := 104.
        ].
        recoveredBlock55Block63Step = 104 ifTrue: [
            recoveredBlock55Block63Stack2 := recoveredArg1.
            recoveredBlock55Block63PC := 107.
        ].
        recoveredBlock55Block63Step = 107 ifTrue: [
            recoveredBlock55Block63Stack3 := recoveredBlock55Block63Local1.
            recoveredBlock55Block63PC := 108.
        ].
        recoveredBlock55Block63Step = 108 ifTrue: [
            recoveredBlock55Block63Stack2 := (recoveredBlock55Block63Stack2) includesKey: (recoveredBlock55Block63Stack3).
            recoveredBlock55Block63PC := 110.
        ].
        recoveredBlock55Block63Step = 110 ifTrue: [
            (recoveredBlock55Block63Stack2) ifTrue: [recoveredBlock55Block63PC := 114] ifFalse: [recoveredBlock55Block63PC := 128].
        ].
        recoveredBlock55Block63Step = 114 ifTrue: [
            recoveredBlock55Block63PC := 115.
        ].
        recoveredBlock55Block63Step = 115 ifTrue: [
            recoveredBlock55Block63Stack1 := recoveredLocal3.
            recoveredBlock55Block63PC := 118.
        ].
        recoveredBlock55Block63Step = 118 ifTrue: [
            recoveredBlock55Block63Stack2 := 1.
            recoveredBlock55Block63PC := 120.
        ].
        recoveredBlock55Block63Step = 120 ifTrue: [
            recoveredBlock55Block63Stack3 := recoveredArg1.
            recoveredBlock55Block63PC := 123.
        ].
        recoveredBlock55Block63Step = 123 ifTrue: [
            recoveredBlock55Block63Stack4 := recoveredBlock55Block63Local1.
            recoveredBlock55Block63PC := 124.
        ].
        recoveredBlock55Block63Step = 124 ifTrue: [
            recoveredBlock55Block63Stack3 := (recoveredBlock55Block63Stack3) at: (recoveredBlock55Block63Stack4).
            recoveredBlock55Block63PC := 126.
        ].
        recoveredBlock55Block63Step = 126 ifTrue: [
            recoveredBlock55Block63Stack1 := (recoveredBlock55Block63Stack1) at: (recoveredBlock55Block63Stack2) put: (recoveredBlock55Block63Stack3).
            recoveredBlock55Block63PC := 128.
        ].
        recoveredBlock55Block63Step = 128 ifTrue: [
            recoveredBlock55Block63Stack2 := nil.
            recoveredBlock55Block63PC := 129.
        ].
        recoveredBlock55Block63Step = 129 ifTrue: [
            recoveredBlock55Block63Local1 := recoveredBlock55Block63Stack2.
            recoveredBlock55Block63PC := 130.
        ].
        recoveredBlock55Block63Step = 130 ifTrue: [
            recoveredBlock55Block63Result := recoveredBlock55Block63Stack1.
            recoveredBlock55Block63Done := true.
        ].
    ].
    recoveredBlock55Block63Result
].
    recoveredBlock55Value2 := (recoveredBlock55Value0) do: (recoveredBlock55Value1).
    recoveredBlock55Value2
].
            recoveredPC := 134.
        ].
        recoveredStep = 134 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 136.
        ].
        recoveredStep = 136 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 137.
        ].
        recoveredStep = 137 ifTrue: [
            recoveredStack0 := (recoveredStack0) aliasName.
            recoveredPC := 139.
        ].
        recoveredStep = 139 ifTrue: [
            recoveredStack1 := SGReservedNames.
            recoveredPC := 141.
        ].
        recoveredStep = 141 ifTrue: [
            recoveredStack1 := (recoveredStack1) selfName.
            recoveredPC := 143.
        ].
        recoveredStep = 143 ifTrue: [
            recoveredStack0 := (recoveredStack0) equals: (recoveredStack1).
            recoveredPC := 144.
        ].
        recoveredStep = 144 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 147.
        ].
        recoveredStep = 147 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 150.
        ].
        recoveredStep = 150 ifTrue: [
            recoveredStack0 := (recoveredStack0) isReplaceAliasTable.
            recoveredPC := 152.
        ].
        recoveredStep = 152 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 156] ifFalse: [recoveredPC := 168].
        ].
        recoveredStep = 156 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 159.
        ].
        recoveredStep = 159 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 162.
        ].
        recoveredStep = 162 ifTrue: [
            recoveredStack0 := (recoveredStack0) includesRestrictedAliasName: (recoveredStack1).
            recoveredPC := 164.
        ].
        recoveredStep = 164 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 182] ifFalse: [recoveredPC := 168].
        ].
        recoveredStep = 168 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 171.
        ].
        recoveredStep = 171 ifTrue: [
            recoveredStack0 := (recoveredStack0) isReplaceAliasTable.
            recoveredPC := 173.
        ].
        recoveredStep = 173 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 188] ifFalse: [recoveredPC := 176].
        ].
        recoveredStep = 176 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 179.
        ].
        recoveredStep = 179 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 182] ifFalse: [recoveredPC := 188].
        ].
        recoveredStep = 182 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 183.
        ].
        recoveredStep = 183 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 186.
        ].
        recoveredStep = 186 ifTrue: [
            (recoveredStack0) replaceAliasNamesSpecial: (recoveredStack1).
            recoveredPC := 188.
        ].
        recoveredStep = 188 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 189.
        ].
        recoveredStep = 189 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 192.
        ].
        recoveredStep = 192 ifTrue: [
            (recoveredStack0) replaceAliasNamesInConnectors: (recoveredStack1).
            recoveredPC := 194.
        ].
        recoveredStep = 194 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 197.
        ].
        recoveredStep = 197 ifTrue: [
            recoveredStack0 := (recoveredStack0) isReplaceAliasTable.
            recoveredPC := 199.
        ].
        recoveredStep = 199 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 202] ifFalse: [recoveredPC := 210].
        ].
        recoveredStep = 202 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 203.
        ].
        recoveredStep = 203 ifTrue: [
            recoveredStack0 := (recoveredStack0) class.
            recoveredPC := 204.
        ].
        recoveredStep = 204 ifTrue: [
            recoveredStack1 := SGDataGODB.
            recoveredPC := 206.
        ].
        recoveredStep = 206 ifTrue: [
            recoveredStack0 := (recoveredStack0) equals: (recoveredStack1).
            recoveredPC := 207.
        ].
        recoveredStep = 207 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 240] ifFalse: [recoveredPC := 210].
        ].
        recoveredStep = 210 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 213.
        ].
        recoveredStep = 213 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 240] ifFalse: [recoveredPC := 216].
        ].
        recoveredStep = 216 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 219.
        ].
        recoveredStep = 219 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 240] ifFalse: [recoveredPC := 222].
        ].
        recoveredStep = 222 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 225.
        ].
        recoveredStep = 225 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 228.
        ].
        recoveredStep = 228 ifTrue: [
            recoveredStack2 := [:recoveredBlock228Arg1 | 
    | recoveredBlock228Value0 recoveredBlock228Value1 |
    recoveredBlock228Value0 := recoveredBlock228Arg1.
    recoveredBlock228Value1 := (self) aliasName: (recoveredBlock228Value0).
    recoveredBlock228Value1
].
            recoveredPC := 238.
        ].
        recoveredStep = 238 ifTrue: [
            (recoveredStack0) at: (recoveredStack1) ifPresent: (recoveredStack2).
            recoveredPC := 240.
        ].
        recoveredStep = 240 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 241.
        ].
        recoveredStep = 241 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x205be380; bytecode file offset 0xebacdc"
!SGMemoryBlockDB methodsFor: 'recovered'!
adjustModificationsForNewGO: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) position.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) abs.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := PinDistance.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := 2.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) // (recoveredStack2).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := PinDistance.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack3 := 2.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack2 := (recoveredStack2) // (recoveredStack3).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := (recoveredStack1) @ (recoveredStack2).
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := (recoveredStack0) roundTo: (recoveredStack1).
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack2 := (recoveredStack2) aliasName.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            (recoveredStack1) aliasName: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack2 := (recoveredStack2) attributedViewNames.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            (recoveredStack1) attributedViewNames: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack2 := (recoveredStack2) iD.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            (recoveredStack1) identifier: (recoveredStack2).
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            (recoveredStack0) moveTo: (recoveredStack1).
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack0 := 'Kli'.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack1 := 'Call_72861'.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack0 := (recoveredStack0) == (recoveredStack1).
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            (recoveredStack0) adjustActualNameGOFor: (recoveredStack1).
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack0 := 'hw'.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack1 := 'call_2009405972'.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack0 := (recoveredStack0) == (recoveredStack1).
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack0 := OrderedCollection.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack0 := (recoveredStack0) new.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack0 := OrderedCollection.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack0 := (recoveredStack0) new.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack0 := (recoveredStack0) interfaceGOs.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredStack1 := [:recoveredBlock91Arg1 | 
    | recoveredBlock91Local1 recoveredBlock91Stack0 recoveredBlock91Stack1 recoveredBlock91Stack2 recoveredBlock91Stack3 recoveredBlock91Stack4 recoveredBlock91PC recoveredBlock91Step recoveredBlock91Done recoveredBlock91Result |
    recoveredBlock91Stack0 := self.
    recoveredBlock91PC := 98.
    recoveredBlock91Done := false.
    [recoveredBlock91Done not] whileTrue: [
        recoveredBlock91Step := recoveredBlock91PC.
        recoveredBlock91Step = 98 ifTrue: [
            recoveredBlock91Stack1 := recoveredBlock91Arg1.
            recoveredBlock91PC := 99.
        ].
        recoveredBlock91Step = 99 ifTrue: [
            recoveredBlock91Stack2 := recoveredLocal1.
            recoveredBlock91PC := 102.
        ].
        recoveredBlock91Step = 102 ifTrue: [
            recoveredBlock91Stack3 := recoveredLocal2.
            recoveredBlock91PC := 105.
        ].
        recoveredBlock91Step = 105 ifTrue: [
            recoveredBlock91Stack0 := (recoveredBlock91Stack0) lookupPinDictionaryFor: (recoveredBlock91Stack1) usedListSelectorPorts: (recoveredBlock91Stack2) usedListReturnPorts: (recoveredBlock91Stack3).
            recoveredBlock91PC := 108.
        ].
        recoveredBlock91Step = 108 ifTrue: [
            recoveredBlock91Stack1 := recoveredBlock91Stack0.
            recoveredBlock91PC := 109.
        ].
        recoveredBlock91Step = 109 ifTrue: [
            recoveredBlock91Local1 := recoveredBlock91Stack1.
            recoveredBlock91PC := 110.
        ].
        recoveredBlock91Step = 110 ifTrue: [
            (recoveredBlock91Stack0 == nil) ifTrue: [recoveredBlock91PC := 120] ifFalse: [recoveredBlock91PC := 114].
        ].
        recoveredBlock91Step = 114 ifTrue: [
            recoveredBlock91Stack0 := recoveredBlock91Arg1.
            recoveredBlock91PC := 115.
        ].
        recoveredBlock91Step = 115 ifTrue: [
            recoveredBlock91Stack1 := recoveredBlock91Local1.
            recoveredBlock91PC := 116.
        ].
        recoveredBlock91Step = 116 ifTrue: [
            recoveredBlock91Stack2 := SGMissingResultConnectorGO.
            recoveredBlock91PC := 118.
        ].
        recoveredBlock91Step = 118 ifTrue: [
            (recoveredBlock91Stack0) updateConnectorIDsAndVisibilitiesWith: (recoveredBlock91Stack1) replacementType: (recoveredBlock91Stack2).
            recoveredBlock91PC := 120.
        ].
        recoveredBlock91Step = 120 ifTrue: [
            recoveredBlock91Stack0 := 'hw'.
            recoveredBlock91PC := 122.
        ].
        recoveredBlock91Step = 122 ifTrue: [
            recoveredBlock91Stack1 := 'call_87865'.
            recoveredBlock91PC := 124.
        ].
        recoveredBlock91Step = 124 ifTrue: [
            recoveredBlock91Stack0 := (recoveredBlock91Stack0) == (recoveredBlock91Stack1).
            recoveredBlock91PC := 125.
        ].
        recoveredBlock91Step = 125 ifTrue: [
            recoveredBlock91PC := 126.
        ].
        recoveredBlock91Step = 126 ifTrue: [
            recoveredBlock91Stack0 := recoveredBlock91Arg1.
            recoveredBlock91PC := 127.
        ].
        recoveredBlock91Step = 127 ifTrue: [
            recoveredBlock91Stack0 := (recoveredBlock91Stack0) checkConsistentVisibleFlag.
            recoveredBlock91PC := 129.
        ].
        recoveredBlock91Step = 129 ifTrue: [
            recoveredBlock91Result := recoveredBlock91Stack0.
            recoveredBlock91Done := true.
        ].
    ].
    recoveredBlock91Result
].
            recoveredPC := 130.
        ].
        recoveredStep = 130 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 132.
        ].
        recoveredStep = 132 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 135.
        ].
        recoveredStep = 135 ifTrue: [
            recoveredStack0 := (recoveredStack0) class.
            recoveredPC := 137.
        ].
        recoveredStep = 137 ifTrue: [
            recoveredStack0 := (recoveredStack0) optionHandleMissingConnections.
            recoveredPC := 139.
        ].
        recoveredStep = 139 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 142] ifFalse: [recoveredPC := 323].
        ].
        recoveredStep = 142 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 143.
        ].
        recoveredStep = 143 ifTrue: [
            recoveredStack0 := (recoveredStack0) visibleReturnPorts.
            recoveredPC := 145.
        ].
        recoveredStep = 145 ifTrue: [
            recoveredStack1 := [:recoveredBlock145Arg1 | 
    | recoveredBlock145Stack0 recoveredBlock145Stack1 recoveredBlock145Stack2 recoveredBlock145Stack3 recoveredBlock145Stack4 recoveredBlock145PC recoveredBlock145Step recoveredBlock145Done recoveredBlock145Result |
    recoveredBlock145Stack0 := self.
    recoveredBlock145PC := 152.
    recoveredBlock145Done := false.
    [recoveredBlock145Done not] whileTrue: [
        recoveredBlock145Step := recoveredBlock145PC.
        recoveredBlock145Step = 152 ifTrue: [
            recoveredBlock145Stack1 := nil.
            recoveredBlock145PC := 153.
        ].
        recoveredBlock145Step = 153 ifTrue: [
            recoveredBlock145Stack2 := recoveredLocal2.
            recoveredBlock145PC := 156.
        ].
        recoveredBlock145Step = 156 ifTrue: [
            recoveredBlock145Stack3 := recoveredBlock145Arg1.
            recoveredBlock145PC := 159.
        ].
        recoveredBlock145Step = 159 ifTrue: [
            recoveredBlock145Stack3 := (recoveredBlock145Stack3) key.
            recoveredBlock145PC := 161.
        ].
        recoveredBlock145Step = 161 ifTrue: [
            recoveredBlock145Stack2 := (recoveredBlock145Stack2) includes: (recoveredBlock145Stack3).
            recoveredBlock145PC := 163.
        ].
        recoveredBlock145Step = 163 ifTrue: [
            (recoveredBlock145Stack2) ifTrue: [recoveredBlock145PC := 209] ifFalse: [recoveredBlock145PC := 166].
        ].
        recoveredBlock145Step = 166 ifTrue: [
            recoveredBlock145Stack2 := recoveredLocal1.
            recoveredBlock145PC := 169.
        ].
        recoveredBlock145Step = 169 ifTrue: [
            recoveredBlock145Stack3 := recoveredBlock145Arg1.
            recoveredBlock145PC := 172.
        ].
        recoveredBlock145Step = 172 ifTrue: [
            recoveredBlock145Stack3 := (recoveredBlock145Stack3) key.
            recoveredBlock145PC := 174.
        ].
        recoveredBlock145Step = 174 ifTrue: [
            recoveredBlock145Stack2 := (recoveredBlock145Stack2) includes: (recoveredBlock145Stack3).
            recoveredBlock145PC := 176.
        ].
        recoveredBlock145Step = 176 ifTrue: [
            (recoveredBlock145Stack2) ifTrue: [recoveredBlock145PC := 209] ifFalse: [recoveredBlock145PC := 180].
        ].
        recoveredBlock145Step = 180 ifTrue: [
            recoveredBlock145PC := 181.
        ].
        recoveredBlock145Step = 181 ifTrue: [
            recoveredBlock145Stack1 := recoveredBlock145Arg1.
            recoveredBlock145PC := 184.
        ].
        recoveredBlock145Step = 184 ifTrue: [
            recoveredBlock145Stack1 := (recoveredBlock145Stack1) key.
            recoveredBlock145PC := 186.
        ].
        recoveredBlock145Step = 186 ifTrue: [
            recoveredBlock145Stack2 := [:recoveredBlock145Block186Arg1 | 
    | recoveredBlock145Block186Value0 recoveredBlock145Block186Value1 recoveredBlock145Block186Value2 recoveredBlock145Block186Value3 recoveredBlock145Block186Value4 recoveredBlock145Block186Value5 |
    recoveredBlock145Block186Value0 := recoveredArg1.
    recoveredBlock145Block186Value1 := (recoveredBlock145Block186Value0) missingPort.
    recoveredBlock145Block186Value2 := recoveredBlock145Arg1.
    recoveredBlock145Block186Value3 := (recoveredBlock145Block186Value2) value.
    recoveredBlock145Block186Value4 := SGMissingResultConnectorGO.
    recoveredBlock145Block186Value5 := (recoveredBlock145Block186Value1) updateConnectorIDsAndVisibilitiesWith: (recoveredBlock145Block186Value3) replacementType: (recoveredBlock145Block186Value4).
    recoveredBlock145Block186Value5
].
            recoveredBlock145PC := 207.
        ].
        recoveredBlock145Step = 207 ifTrue: [
            recoveredBlock145Stack1 := (recoveredBlock145Stack1) ifNotNil: (recoveredBlock145Stack2).
            recoveredBlock145PC := 209.
        ].
        recoveredBlock145Step = 209 ifTrue: [
            recoveredBlock145Result := recoveredBlock145Stack1.
            recoveredBlock145Done := true.
        ].
    ].
    recoveredBlock145Result
].
            recoveredPC := 210.
        ].
        recoveredStep = 210 ifTrue: [
            (recoveredStack0) associationsDo: (recoveredStack1).
            recoveredPC := 212.
        ].
        recoveredStep = 212 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 213.
        ].
        recoveredStep = 213 ifTrue: [
            recoveredStack0 := (recoveredStack0) visibleSelectorPorts.
            recoveredPC := 215.
        ].
        recoveredStep = 215 ifTrue: [
            recoveredStack1 := [:recoveredBlock215Arg1 | 
    | recoveredBlock215Stack0 recoveredBlock215Stack1 recoveredBlock215Stack2 recoveredBlock215Stack3 recoveredBlock215Stack4 recoveredBlock215PC recoveredBlock215Step recoveredBlock215Done recoveredBlock215Result |
    recoveredBlock215Stack0 := self.
    recoveredBlock215PC := 222.
    recoveredBlock215Done := false.
    [recoveredBlock215Done not] whileTrue: [
        recoveredBlock215Step := recoveredBlock215PC.
        recoveredBlock215Step = 222 ifTrue: [
            recoveredBlock215Stack1 := nil.
            recoveredBlock215PC := 223.
        ].
        recoveredBlock215Step = 223 ifTrue: [
            recoveredBlock215Stack2 := recoveredLocal1.
            recoveredBlock215PC := 226.
        ].
        recoveredBlock215Step = 226 ifTrue: [
            recoveredBlock215Stack3 := recoveredBlock215Arg1.
            recoveredBlock215PC := 229.
        ].
        recoveredBlock215Step = 229 ifTrue: [
            recoveredBlock215Stack3 := (recoveredBlock215Stack3) key.
            recoveredBlock215PC := 231.
        ].
        recoveredBlock215Step = 231 ifTrue: [
            recoveredBlock215Stack2 := (recoveredBlock215Stack2) includes: (recoveredBlock215Stack3).
            recoveredBlock215PC := 233.
        ].
        recoveredBlock215Step = 233 ifTrue: [
            (recoveredBlock215Stack2) ifTrue: [recoveredBlock215PC := 320] ifFalse: [recoveredBlock215PC := 236].
        ].
        recoveredBlock215Step = 236 ifTrue: [
            recoveredBlock215Stack2 := recoveredLocal2.
            recoveredBlock215PC := 239.
        ].
        recoveredBlock215Step = 239 ifTrue: [
            recoveredBlock215Stack3 := recoveredBlock215Arg1.
            recoveredBlock215PC := 242.
        ].
        recoveredBlock215Step = 242 ifTrue: [
            recoveredBlock215Stack3 := (recoveredBlock215Stack3) key.
            recoveredBlock215PC := 244.
        ].
        recoveredBlock215Step = 244 ifTrue: [
            recoveredBlock215Stack2 := (recoveredBlock215Stack2) includes: (recoveredBlock215Stack3).
            recoveredBlock215PC := 246.
        ].
        recoveredBlock215Step = 246 ifTrue: [
            (recoveredBlock215Stack2) ifTrue: [recoveredBlock215PC := 320] ifFalse: [recoveredBlock215PC := 250].
        ].
        recoveredBlock215Step = 250 ifTrue: [
            recoveredBlock215PC := 251.
        ].
        recoveredBlock215Step = 251 ifTrue: [
            recoveredBlock215Stack1 := self.
            recoveredBlock215PC := 252.
        ].
        recoveredBlock215Step = 252 ifTrue: [
            recoveredBlock215Stack1 := (recoveredBlock215Stack1) sequenceDescription.
            recoveredBlock215PC := 254.
        ].
        recoveredBlock215Step = 254 ifTrue: [
            recoveredBlock215Stack1 := (recoveredBlock215Stack1) first.
            recoveredBlock215PC := 256.
        ].
        recoveredBlock215Step = 256 ifTrue: [
            recoveredBlock215Stack2 := recoveredBlock215Arg1.
            recoveredBlock215PC := 259.
        ].
        recoveredBlock215Step = 259 ifTrue: [
            recoveredBlock215Stack2 := (recoveredBlock215Stack2) key.
            recoveredBlock215PC := 261.
        ].
        recoveredBlock215Step = 261 ifTrue: [
            recoveredBlock215Stack3 := [].
            recoveredBlock215PC := 263.
        ].
        recoveredBlock215Step = 263 ifTrue: [
            recoveredBlock215Stack1 := (recoveredBlock215Stack1) at: (recoveredBlock215Stack2) ifAbsent: (recoveredBlock215Stack3).
            recoveredBlock215PC := 265.
        ].
        recoveredBlock215Step = 265 ifTrue: [
            recoveredBlock215Stack2 := [:recoveredBlock215Block265Arg1 | 
    | recoveredBlock215Block265Stack0 recoveredBlock215Block265Stack1 recoveredBlock215Block265Stack2 recoveredBlock215Block265Stack3 recoveredBlock215Block265Stack4 recoveredBlock215Block265PC recoveredBlock215Block265Step recoveredBlock215Block265Done recoveredBlock215Block265Result |
    recoveredBlock215Block265Stack0 := nil.
    recoveredBlock215Block265PC := 272.
    recoveredBlock215Block265Done := false.
    [recoveredBlock215Block265Done not] whileTrue: [
        recoveredBlock215Block265Step := recoveredBlock215Block265PC.
        recoveredBlock215Block265Step = 272 ifTrue: [
            recoveredBlock215Block265Stack1 := nil.
            recoveredBlock215Block265PC := 273.
        ].
        recoveredBlock215Block265Step = 273 ifTrue: [
            recoveredBlock215Block265Stack2 := recoveredBlock215Block265Arg1.
            recoveredBlock215Block265PC := 274.
        ].
        recoveredBlock215Block265Step = 274 ifTrue: [
            recoveredBlock215Block265Stack3 := 5.
            recoveredBlock215Block265PC := 276.
        ].
        recoveredBlock215Block265Step = 276 ifTrue: [
            recoveredBlock215Block265Stack2 := (recoveredBlock215Block265Stack2) at: (recoveredBlock215Block265Stack3).
            recoveredBlock215Block265PC := 278.
        ].
        recoveredBlock215Block265Step = 278 ifTrue: [
            recoveredBlock215Block265Stack3 := 2.
            recoveredBlock215Block265PC := 280.
        ].
        recoveredBlock215Block265Step = 280 ifTrue: [
            recoveredBlock215Block265Stack2 := (recoveredBlock215Block265Stack2) at: (recoveredBlock215Block265Stack3).
            recoveredBlock215Block265PC := 282.
        ].
        recoveredBlock215Block265Step = 282 ifTrue: [
            recoveredBlock215Block265Stack3 := 0.
            recoveredBlock215Block265PC := 284.
        ].
        recoveredBlock215Block265Step = 284 ifTrue: [
            recoveredBlock215Block265Stack2 := (recoveredBlock215Block265Stack2) > (recoveredBlock215Block265Stack3).
            recoveredBlock215Block265PC := 285.
        ].
        recoveredBlock215Block265Step = 285 ifTrue: [
            (recoveredBlock215Block265Stack2) ifTrue: [recoveredBlock215Block265PC := 288] ifFalse: [recoveredBlock215Block265PC := 317].
        ].
        recoveredBlock215Block265Step = 288 ifTrue: [
            recoveredBlock215Block265PC := 289.
        ].
        recoveredBlock215Block265Step = 289 ifTrue: [
            recoveredBlock215Block265Stack1 := recoveredBlock215Arg1.
            recoveredBlock215Block265PC := 292.
        ].
        recoveredBlock215Block265Step = 292 ifTrue: [
            recoveredBlock215Block265Stack1 := (recoveredBlock215Block265Stack1) value.
            recoveredBlock215Block265PC := 294.
        ].
        recoveredBlock215Block265Step = 294 ifTrue: [
            recoveredBlock215Block265Stack2 := [
    | recoveredBlock215Block265Block294Value0 recoveredBlock215Block265Block294Value1 recoveredBlock215Block265Block294Value2 recoveredBlock215Block265Block294Value3 recoveredBlock215Block265Block294Value4 recoveredBlock215Block265Block294Value5 |
    recoveredBlock215Block265Block294Value0 := recoveredArg1.
    recoveredBlock215Block265Block294Value1 := (recoveredBlock215Block265Block294Value0) missingPort.
    recoveredBlock215Block265Block294Value2 := recoveredBlock215Arg1.
    recoveredBlock215Block265Block294Value3 := (recoveredBlock215Block265Block294Value2) value.
    recoveredBlock215Block265Block294Value4 := SGMissingArgumentConnectorGO.
    recoveredBlock215Block265Block294Value5 := (recoveredBlock215Block265Block294Value1) updateConnectorIDsAndVisibilitiesWith: (recoveredBlock215Block265Block294Value3) replacementType: (recoveredBlock215Block265Block294Value4).
    recoveredBlock215Block265Block294Value5
].
            recoveredBlock215Block265PC := 315.
        ].
        recoveredBlock215Block265Step = 315 ifTrue: [
            recoveredBlock215Block265Stack1 := (recoveredBlock215Block265Stack1) ifNotNil: (recoveredBlock215Block265Stack2).
            recoveredBlock215Block265PC := 317.
        ].
        recoveredBlock215Block265Step = 317 ifTrue: [
            recoveredBlock215Block265Result := recoveredBlock215Block265Stack1.
            recoveredBlock215Block265Done := true.
        ].
    ].
    recoveredBlock215Block265Result
].
            recoveredBlock215PC := 318.
        ].
        recoveredBlock215Step = 318 ifTrue: [
            recoveredBlock215Stack1 := (recoveredBlock215Stack1) ifNotNil: (recoveredBlock215Stack2).
            recoveredBlock215PC := 320.
        ].
        recoveredBlock215Step = 320 ifTrue: [
            recoveredBlock215Result := recoveredBlock215Stack1.
            recoveredBlock215Done := true.
        ].
    ].
    recoveredBlock215Result
].
            recoveredPC := 321.
        ].
        recoveredStep = 321 ifTrue: [
            (recoveredStack0) associationsDo: (recoveredStack1).
            recoveredPC := 323.
        ].
        recoveredStep = 323 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 324.
        ].
        recoveredStep = 324 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x205bf62c; bytecode file offset 0xebbfa8"
!SGMemoryBlockDB methodsFor: 'recovered'!
graphicObject: recoveredArg1 datamodelManager: recoveredArg2 tableBuilder: recoveredArg3 manager: recoveredArg4
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := 'hw'.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := 'call_84848'.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) == (recoveredStack2).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := (recoveredStack0) aliasName.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := (recoveredStack0) graphicObjectForTemplate: (recoveredStack1).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := recoveredArg2.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := (recoveredStack1) aliasName.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := (recoveredStack0) elementAliasName: (recoveredStack1).
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredLocal5 := recoveredStack1.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 34] ifFalse: [recoveredPC := 32].
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := recoveredLocal5.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack1 := [:recoveredBlock37Arg1 | 
    ^nil
].
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack0 := (recoveredStack0) sgClassIfUndefined: (recoveredStack1).
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack0 := recoveredLocal5.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack1 := (recoveredStack1) sgClass.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack2 := (recoveredStack2) specifications.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack0 := (recoveredStack0) isPossibleElementFor: (recoveredStack1) specifications: (recoveredStack2).
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 72] ifFalse: [recoveredPC := 70].
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack0 := 'Kli'.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack1 := 'Call_92846'.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack0 := (recoveredStack0) == (recoveredStack1).
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack0 := recoveredLocal5.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack0 := (recoveredStack0) isProvidePort.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 86] ifFalse: [recoveredPC := 122].
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack0 := (recoveredStack0) isClientServerInterface.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 94] ifFalse: [recoveredPC := 122].
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack0 := ErrorHandler.
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack1 := 103.
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack2 := Array.
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            recoveredStack4 := recoveredArg1.
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            recoveredStack3 := (recoveredStack3) getCurrentHierarchyName: (recoveredStack4).
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            recoveredStack4 := recoveredLocal5.
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            recoveredStack4 := (recoveredStack4) elementName.
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            recoveredStack2 := (recoveredStack2) with: (recoveredStack3) with: (recoveredStack4).
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            recoveredStack3 := 'gp'.
            recoveredPC := 117.
        ].
        recoveredStep = 117 ifTrue: [
            (recoveredStack0) errorNo: (recoveredStack1) args: (recoveredStack2) category: (recoveredStack3).
            recoveredPC := 120.
        ].
        recoveredStep = 120 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 121.
        ].
        recoveredStep = 121 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 122 ifTrue: [
            recoveredStack0 := recoveredLocal5.
            recoveredPC := 125.
        ].
        recoveredStep = 125 ifTrue: [
            recoveredStack0 := (recoveredStack0) isMethodParameter.
            recoveredPC := 127.
        ].
        recoveredStep = 127 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 130] ifFalse: [recoveredPC := 160].
        ].
        recoveredStep = 130 ifTrue: [
            recoveredStack0 := recoveredLocal5.
            recoveredPC := 133.
        ].
        recoveredStep = 133 ifTrue: [
            recoveredStack0 := (recoveredStack0) isReturn.
            recoveredPC := 135.
        ].
        recoveredStep = 135 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 138] ifFalse: [recoveredPC := 160].
        ].
        recoveredStep = 138 ifTrue: [
            recoveredStack0 := SGDataGO.
            recoveredPC := 140.
        ].
        recoveredStep = 140 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 143.
        ].
        recoveredStep = 143 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 146.
        ].
        recoveredStep = 146 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 149.
        ].
        recoveredStep = 149 ifTrue: [
            recoveredStack3 := (recoveredStack3) isCTContext.
            recoveredPC := 151.
        ].
        recoveredStep = 151 ifTrue: [
            recoveredStack0 := (recoveredStack0) createAsResult: (recoveredStack1) sgClass: (recoveredStack2) sequenceVisibiliy: (recoveredStack3).
            recoveredPC := 154.
        ].
        recoveredStep = 154 ifTrue: [
            recoveredLocal4 := recoveredStack0.
            recoveredPC := 157.
        ].
        recoveredStep = 157 ifTrue: [
            recoveredPC := 237.
        ].
        recoveredStep = 160 ifTrue: [
            recoveredStack0 := 'hw'.
            recoveredPC := 162.
        ].
        recoveredStep = 162 ifTrue: [
            recoveredStack1 := 'call_2009402249'.
            recoveredPC := 164.
        ].
        recoveredStep = 164 ifTrue: [
            recoveredStack0 := (recoveredStack0) == (recoveredStack1).
            recoveredPC := 165.
        ].
        recoveredStep = 165 ifTrue: [
            recoveredPC := 166.
        ].
        recoveredStep = 166 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 169.
        ].
        recoveredStep = 169 ifTrue: [
            recoveredStack0 := (recoveredStack0) hasEditableLayout.
            recoveredPC := 171.
        ].
        recoveredStep = 171 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 192] ifFalse: [recoveredPC := 174].
        ].
        recoveredStep = 174 ifTrue: [
            recoveredStack0 := recoveredLocal5.
            recoveredPC := 177.
        ].
        recoveredStep = 177 ifTrue: [
            recoveredStack0 := (recoveredStack0) isPrimitive.
            recoveredPC := 179.
        ].
        recoveredStep = 179 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 208] ifFalse: [recoveredPC := 182].
        ].
        recoveredStep = 182 ifTrue: [
            recoveredStack0 := MainController.
            recoveredPC := 184.
        ].
        recoveredStep = 184 ifTrue: [
            recoveredStack0 := (recoveredStack0) class.
            recoveredPC := 186.
        ].
        recoveredStep = 186 ifTrue: [
            recoveredStack0 := (recoveredStack0) LogicModelGenerationRunning.
            recoveredPC := 188.
        ].
        recoveredStep = 188 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 192] ifFalse: [recoveredPC := 208].
        ].
        recoveredStep = 192 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 193.
        ].
        recoveredStep = 193 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 196.
        ].
        recoveredStep = 196 ifTrue: [
            recoveredStack2 := false.
            recoveredPC := 197.
        ].
        recoveredStep = 197 ifTrue: [
            recoveredStack3 := RBDummyProgressReporter.
            recoveredPC := 199.
        ].
        recoveredStep = 199 ifTrue: [
            recoveredStack3 := (recoveredStack3) create.
            recoveredPC := 201.
        ].
        recoveredStep = 201 ifTrue: [
            recoveredStack0 := (recoveredStack0) graphicObjectForTemplateWithMethods: (recoveredStack1) addMissing: (recoveredStack2) progressDialog: (recoveredStack3).
            recoveredPC := 204.
        ].
        recoveredStep = 204 ifTrue: [
            recoveredPC := 234.
        ].
        recoveredStep = 208 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 211.
        ].
        recoveredStep = 211 ifTrue: [
            recoveredStack0 := (recoveredStack0) graphicObject.
            recoveredPC := 213.
        ].
        recoveredStep = 213 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 216.
        ].
        recoveredStep = 216 ifTrue: [
            recoveredStack0 := 'hw'.
            recoveredPC := 218.
        ].
        recoveredStep = 218 ifTrue: [
            recoveredStack1 := 'call_324968'.
            recoveredPC := 220.
        ].
        recoveredStep = 220 ifTrue: [
            recoveredStack0 := (recoveredStack0) == (recoveredStack1).
            recoveredPC := 221.
        ].
        recoveredStep = 221 ifTrue: [
            recoveredPC := 222.
        ].
        recoveredStep = 222 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 225.
        ].
        recoveredStep = 225 ifTrue: [
            (recoveredStack0) resetAllIdentifiers.
            recoveredPC := 227.
        ].
        recoveredStep = 227 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 230.
        ].
        recoveredStep = 230 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 231.
        ].
        recoveredStep = 231 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 234.
        ].
        recoveredStep = 234 ifTrue: [
            recoveredLocal4 := recoveredStack0.
            recoveredPC := 237.
        ].
        recoveredStep = 237 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 240.
        ].
        recoveredStep = 240 ifTrue: [
            recoveredStack1 := recoveredArg4.
            recoveredPC := 243.
        ].
        recoveredStep = 243 ifTrue: [
            (recoveredStack0) manager: (recoveredStack1).
            recoveredPC := 245.
        ].
        recoveredStep = 245 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 246.
        ].
        recoveredStep = 246 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 249.
        ].
        recoveredStep = 249 ifTrue: [
            (recoveredStack0) adjustModificationsForNewGO: (recoveredStack1).
            recoveredPC := 251.
        ].
        recoveredStep = 251 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 252.
        ].
        recoveredStep = 252 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 255.
        ].
        recoveredStep = 255 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 258.
        ].
        recoveredStep = 258 ifTrue: [
            (recoveredStack0) updateSequencesWith: (recoveredStack1) dataModelManager: (recoveredStack2).
            recoveredPC := 260.
        ].
        recoveredStep = 260 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 261.
        ].
        recoveredStep = 261 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 264.
        ].
        recoveredStep = 264 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 267.
        ].
        recoveredStep = 267 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 270.
        ].
        recoveredStep = 270 ifTrue: [
            (recoveredStack0) checkSequenceCallGO: (recoveredStack1) hierarchyWrapper: (recoveredStack2) dataModelManager: (recoveredStack3).
            recoveredPC := 273.
        ].
        recoveredStep = 273 ifTrue: [
            recoveredStack0 := recoveredArg3.
            recoveredPC := 276.
        ].
        recoveredStep = 276 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 279.
        ].
        recoveredStep = 279 ifTrue: [
            (recoveredStack0) addIdentifierFor: (recoveredStack1).
            recoveredPC := 281.
        ].
        recoveredStep = 281 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 284.
        ].
        recoveredStep = 284 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 287.
        ].
        recoveredStep = 287 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 290.
        ].
        recoveredStep = 290 ifTrue: [
            recoveredStack3 := false.
            recoveredPC := 291.
        ].
        recoveredStep = 291 ifTrue: [
            (recoveredStack0) updateGOForElement: (recoveredStack1) datamodelManager: (recoveredStack2) display: (recoveredStack3).
            recoveredPC := 294.
        ].
        recoveredStep = 294 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 295.
        ].
        recoveredStep = 295 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 298.
        ].
        recoveredStep = 298 ifTrue: [
            (recoveredStack0) adjustActualNameGOFor: (recoveredStack1).
            recoveredPC := 300.
        ].
        recoveredStep = 300 ifTrue: [
            recoveredStack0 := 'Kk'.
            recoveredPC := 302.
        ].
        recoveredStep = 302 ifTrue: [
            recoveredStack1 := 'Call_63666'.
            recoveredPC := 304.
        ].
        recoveredStep = 304 ifTrue: [
            recoveredStack0 := (recoveredStack0) == (recoveredStack1).
            recoveredPC := 305.
        ].
        recoveredStep = 305 ifTrue: [
            recoveredPC := 306.
        ].
        recoveredStep = 306 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 309.
        ].
        recoveredStep = 309 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 310.
        ].
        recoveredStep = 310 ifTrue: [
            recoveredStack1 := (recoveredStack1) customerDataInfo.
            recoveredPC := 312.
        ].
        recoveredStep = 312 ifTrue: [
            (recoveredStack0) setCustomerDataInfoFrom: (recoveredStack1).
            recoveredPC := 314.
        ].
        recoveredStep = 314 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 317.
        ].
        recoveredStep = 317 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 318.
        ].
        recoveredStep = 318 ifTrue: [
            recoveredStack1 := (recoveredStack1) drawingOrder.
            recoveredPC := 320.
        ].
        recoveredStep = 320 ifTrue: [
            (recoveredStack0) drawingOrder: (recoveredStack1).
            recoveredPC := 322.
        ].
        recoveredStep = 322 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 325.
        ].
        recoveredStep = 325 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x205cebc4; bytecode file offset 0xecb4ec"
!SGMemoryBlockDB methodsFor: 'recovered'!
checkGraphicPinsCreatedObj: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 |
    recoveredValue0 := Dictionary.
    recoveredValue1 := (recoveredValue0) new.
    recoveredLocal2 := recoveredValue1.
    recoveredValue2 := OrderedCollection.
    recoveredValue3 := (recoveredValue2) new.
    recoveredLocal1 := recoveredValue3.
    recoveredValue4 := recoveredArg1.
    recoveredValue5 := (recoveredValue4) interfaceGOs.
    recoveredValue6 := [:recoveredBlock20Arg1 | 
    | recoveredBlock20Value0 recoveredBlock20Value1 recoveredBlock20Value2 recoveredBlock20Value3 |
    recoveredBlock20Value0 := recoveredBlock20Arg1.
    recoveredBlock20Value1 := (recoveredBlock20Value0) interfaceGOs.
    recoveredBlock20Value2 := [:recoveredBlock20Block30Arg1 | 
    | recoveredBlock20Block30Stack0 recoveredBlock20Block30Stack1 recoveredBlock20Block30Stack2 recoveredBlock20Block30Stack3 recoveredBlock20Block30Stack4 recoveredBlock20Block30PC recoveredBlock20Block30Step recoveredBlock20Block30Done recoveredBlock20Block30Result |
    recoveredBlock20Block30Stack0 := nil.
    recoveredBlock20Block30PC := 36.
    recoveredBlock20Block30Done := false.
    [recoveredBlock20Block30Done not] whileTrue: [
        recoveredBlock20Block30Step := recoveredBlock20Block30PC.
        recoveredBlock20Block30Step = 36 ifTrue: [
            recoveredBlock20Block30Stack1 := recoveredBlock20Block30Arg1.
            recoveredBlock20Block30PC := 37.
        ].
        recoveredBlock20Block30Step = 37 ifTrue: [
            recoveredBlock20Block30Stack1 := (recoveredBlock20Block30Stack1) isVisible.
            recoveredBlock20Block30PC := 39.
        ].
        recoveredBlock20Block30Step = 39 ifTrue: [
            (recoveredBlock20Block30Stack1) ifTrue: [recoveredBlock20Block30PC := 58] ifFalse: [recoveredBlock20Block30PC := 42].
        ].
        recoveredBlock20Block30Step = 42 ifTrue: [
            recoveredBlock20Block30Stack1 := recoveredBlock20Arg1.
            recoveredBlock20Block30PC := 45.
        ].
        recoveredBlock20Block30Step = 45 ifTrue: [
            recoveredBlock20Block30Stack1 := (recoveredBlock20Block30Stack1) isGetMethod.
            recoveredBlock20Block30PC := 47.
        ].
        recoveredBlock20Block30Step = 47 ifTrue: [
            (recoveredBlock20Block30Stack1) ifTrue: [recoveredBlock20Block30PC := 58] ifFalse: [recoveredBlock20Block30PC := 50].
        ].
        recoveredBlock20Block30Step = 50 ifTrue: [
            recoveredBlock20Block30Stack1 := recoveredBlock20Arg1.
            recoveredBlock20Block30PC := 53.
        ].
        recoveredBlock20Block30Step = 53 ifTrue: [
            recoveredBlock20Block30Stack1 := (recoveredBlock20Block30Stack1) isSetMethod.
            recoveredBlock20Block30PC := 55.
        ].
        recoveredBlock20Block30Step = 55 ifTrue: [
            (recoveredBlock20Block30Stack1) ifTrue: [recoveredBlock20Block30PC := 58] ifFalse: [recoveredBlock20Block30PC := 70].
        ].
        recoveredBlock20Block30Step = 58 ifTrue: [
            recoveredBlock20Block30Stack1 := recoveredLocal2.
            recoveredBlock20Block30PC := 61.
        ].
        recoveredBlock20Block30Step = 61 ifTrue: [
            recoveredBlock20Block30Stack2 := recoveredBlock20Block30Arg1.
            recoveredBlock20Block30PC := 62.
        ].
        recoveredBlock20Block30Step = 62 ifTrue: [
            recoveredBlock20Block30Stack2 := (recoveredBlock20Block30Stack2) connectorAliasName.
            recoveredBlock20Block30PC := 64.
        ].
        recoveredBlock20Block30Step = 64 ifTrue: [
            recoveredBlock20Block30Stack3 := recoveredBlock20Block30Arg1.
            recoveredBlock20Block30PC := 65.
        ].
        recoveredBlock20Block30Step = 65 ifTrue: [
            recoveredBlock20Block30Stack1 := (recoveredBlock20Block30Stack1) at: (recoveredBlock20Block30Stack2) put: (recoveredBlock20Block30Stack3).
            recoveredBlock20Block30PC := 67.
        ].
        recoveredBlock20Block30Step = 67 ifTrue: [
            recoveredBlock20Block30PC := 89.
        ].
        recoveredBlock20Block30Step = 70 ifTrue: [
            recoveredBlock20Block30Stack1 := nil.
            recoveredBlock20Block30PC := 71.
        ].
        recoveredBlock20Block30Step = 71 ifTrue: [
            recoveredBlock20Block30Stack2 := recoveredBlock20Block30Arg1.
            recoveredBlock20Block30PC := 72.
        ].
        recoveredBlock20Block30Step = 72 ifTrue: [
            recoveredBlock20Block30Stack2 := (recoveredBlock20Block30Stack2) externalConnectorGO.
            recoveredBlock20Block30PC := 74.
        ].
        recoveredBlock20Block30Step = 74 ifTrue: [
            recoveredBlock20Block30Stack2 := (recoveredBlock20Block30Stack2) isDirectAccess.
            recoveredBlock20Block30PC := 76.
        ].
        recoveredBlock20Block30Step = 76 ifTrue: [
            (recoveredBlock20Block30Stack2) ifTrue: [recoveredBlock20Block30PC := 80] ifFalse: [recoveredBlock20Block30PC := 89].
        ].
        recoveredBlock20Block30Step = 80 ifTrue: [
            recoveredBlock20Block30PC := 81.
        ].
        recoveredBlock20Block30Step = 81 ifTrue: [
            recoveredBlock20Block30Stack1 := recoveredLocal1.
            recoveredBlock20Block30PC := 84.
        ].
        recoveredBlock20Block30Step = 84 ifTrue: [
            recoveredBlock20Block30Stack2 := recoveredBlock20Block30Arg1.
            recoveredBlock20Block30PC := 85.
        ].
        recoveredBlock20Block30Step = 85 ifTrue: [
            recoveredBlock20Block30Stack2 := (recoveredBlock20Block30Stack2) connectorAliasName.
            recoveredBlock20Block30PC := 87.
        ].
        recoveredBlock20Block30Step = 87 ifTrue: [
            recoveredBlock20Block30Stack1 := (recoveredBlock20Block30Stack1) add: (recoveredBlock20Block30Stack2).
            recoveredBlock20Block30PC := 89.
        ].
        recoveredBlock20Block30Step = 89 ifTrue: [
            recoveredBlock20Block30Result := recoveredBlock20Block30Stack1.
            recoveredBlock20Block30Done := true.
        ].
    ].
    recoveredBlock20Block30Result
].
    recoveredBlock20Value3 := (recoveredBlock20Value1) do: (recoveredBlock20Value2).
    recoveredBlock20Value3
].
    (recoveredValue5) do: (recoveredValue6).
    recoveredValue7 := (self) returnPorts.
    recoveredValue8 := [:recoveredBlock97Arg1 | 
    | recoveredBlock97Value0 recoveredBlock97Value1 recoveredBlock97Value2 |
    recoveredBlock97Value0 := recoveredBlock97Arg1.
    recoveredBlock97Value1 := [:recoveredBlock97Block105Arg1 | 
    | recoveredBlock97Block105Value0 recoveredBlock97Block105Value1 recoveredBlock97Block105Value2 recoveredBlock97Block105Value3 recoveredBlock97Block105Value4 |
    recoveredBlock97Block105Value0 := recoveredLocal2.
    recoveredBlock97Block105Value1 := recoveredBlock97Block105Arg1.
    recoveredBlock97Block105Value2 := (recoveredBlock97Block105Value1) key.
    recoveredBlock97Block105Value3 := [
    | recoveredBlock97Block105Block120Value0 recoveredBlock97Block105Block120Value1 recoveredBlock97Block105Block120Value2 recoveredBlock97Block105Block120Value3 |
    recoveredBlock97Block105Block120Value0 := recoveredBlock97Block105Arg1.
    recoveredBlock97Block105Block120Value1 := (recoveredBlock97Block105Block120Value0) key.
    recoveredBlock97Block105Block120Value2 := [:recoveredBlock97Block105Block120Block131Arg1 | 
    | recoveredBlock97Block105Block120Block131Value0 recoveredBlock97Block105Block120Block131Value1 recoveredBlock97Block105Block120Block131Value2 recoveredBlock97Block105Block120Block131Value3 recoveredBlock97Block105Block120Block131Value4 recoveredBlock97Block105Block120Block131Value5 recoveredBlock97Block105Block120Block131Value6 recoveredBlock97Block105Block120Block131Value7 recoveredBlock97Block105Block120Block131Value8 recoveredBlock97Block105Block120Block131Value9 recoveredBlock97Block105Block120Block131Value10 |
    recoveredBlock97Block105Block120Block131Value0 := recoveredArg1.
    recoveredBlock97Block105Block120Block131Value1 := (recoveredBlock97Block105Block120Block131Value0) missingPort.
    recoveredBlock97Block105Block120Block131Value2 := Dictionary.
    recoveredBlock97Block105Block120Block131Value3 := (recoveredBlock97Block105Block120Block131Value2) new.
    recoveredBlock97Block105Block120Block131Value4 := recoveredBlock97Block105Block120Block131Value3.
    recoveredBlock97Block105Block120Block131Value5 := recoveredBlock97Block105Arg1.
    recoveredBlock97Block105Block120Block131Value6 := (recoveredBlock97Block105Block120Block131Value5) key.
    recoveredBlock97Block105Block120Block131Value7 := recoveredBlock97Block105Arg1.
    recoveredBlock97Block105Block120Block131Value8 := (recoveredBlock97Block105Block120Block131Value7) value.
    (recoveredBlock97Block105Block120Block131Value4) at: (recoveredBlock97Block105Block120Block131Value6) put: (recoveredBlock97Block105Block120Block131Value8).
    recoveredBlock97Block105Block120Block131Value9 := SGMissingResultConnectorGO.
    recoveredBlock97Block105Block120Block131Value10 := (recoveredBlock97Block105Block120Block131Value1) updateConnectorIDsAndVisibilitiesWith: (recoveredBlock97Block105Block120Block131Value3) replacementType: (recoveredBlock97Block105Block120Block131Value9).
    recoveredBlock97Block105Block120Block131Value10
].
    recoveredBlock97Block105Block120Value3 := (recoveredBlock97Block105Block120Value1) ifNotNil: (recoveredBlock97Block105Block120Value2).
    recoveredBlock97Block105Block120Value3
].
    recoveredBlock97Block105Value4 := (recoveredBlock97Block105Value0) at: (recoveredBlock97Block105Value2) ifAbsent: (recoveredBlock97Block105Value3).
    recoveredBlock97Block105Value4
].
    recoveredBlock97Value2 := (recoveredBlock97Value0) associationsDo: (recoveredBlock97Value1).
    recoveredBlock97Value2
].
    (recoveredValue7) do: (recoveredValue8).
    recoveredValue9 := (self) selectorPorts.
    recoveredValue10 := [:recoveredBlock178Arg1 | 
    | recoveredBlock178Value0 recoveredBlock178Value1 recoveredBlock178Value2 |
    recoveredBlock178Value0 := recoveredBlock178Arg1.
    recoveredBlock178Value1 := [:recoveredBlock178Block185Arg1 | 
    | recoveredBlock178Block185Stack0 recoveredBlock178Block185Stack1 recoveredBlock178Block185Stack2 recoveredBlock178Block185Stack3 recoveredBlock178Block185Stack4 recoveredBlock178Block185PC recoveredBlock178Block185Step recoveredBlock178Block185Done recoveredBlock178Block185Result |
    recoveredBlock178Block185Stack0 := self.
    recoveredBlock178Block185PC := 192.
    recoveredBlock178Block185Done := false.
    [recoveredBlock178Block185Done not] whileTrue: [
        recoveredBlock178Block185Step := recoveredBlock178Block185PC.
        recoveredBlock178Block185Step = 192 ifTrue: [
            recoveredBlock178Block185Stack1 := recoveredLocal2.
            recoveredBlock178Block185PC := 195.
        ].
        recoveredBlock178Block185Step = 195 ifTrue: [
            recoveredBlock178Block185Stack2 := recoveredBlock178Block185Arg1.
            recoveredBlock178Block185PC := 198.
        ].
        recoveredBlock178Block185Step = 198 ifTrue: [
            recoveredBlock178Block185Stack2 := (recoveredBlock178Block185Stack2) key.
            recoveredBlock178Block185PC := 200.
        ].
        recoveredBlock178Block185Step = 200 ifTrue: [
            recoveredBlock178Block185Stack3 := [
    | recoveredBlock178Block185Block200Value0 recoveredBlock178Block185Block200Value1 recoveredBlock178Block185Block200Value2 recoveredBlock178Block185Block200Value3 recoveredBlock178Block185Block200Value4 recoveredBlock178Block185Block200Value5 recoveredBlock178Block185Block200Value6 recoveredBlock178Block185Block200Value7 |
    recoveredBlock178Block185Block200Value0 := (self) sequenceDescription.
    recoveredBlock178Block185Block200Value1 := (recoveredBlock178Block185Block200Value0) first.
    recoveredBlock178Block185Block200Value2 := recoveredBlock178Block185Arg1.
    recoveredBlock178Block185Block200Value3 := (recoveredBlock178Block185Block200Value2) key.
    recoveredBlock178Block185Block200Value4 := [].
    recoveredBlock178Block185Block200Value5 := (recoveredBlock178Block185Block200Value1) at: (recoveredBlock178Block185Block200Value3) ifAbsent: (recoveredBlock178Block185Block200Value4).
    recoveredBlock178Block185Block200Value6 := [:recoveredBlock178Block185Block200Block219Arg1 | 
    | recoveredBlock178Block185Block200Block219Stack0 recoveredBlock178Block185Block200Block219Stack1 recoveredBlock178Block185Block200Block219Stack2 recoveredBlock178Block185Block200Block219Stack3 recoveredBlock178Block185Block200Block219Stack4 recoveredBlock178Block185Block200Block219PC recoveredBlock178Block185Block200Block219Step recoveredBlock178Block185Block200Block219Done recoveredBlock178Block185Block200Block219Result |
    recoveredBlock178Block185Block200Block219Stack0 := nil.
    recoveredBlock178Block185Block200Block219PC := 226.
    recoveredBlock178Block185Block200Block219Done := false.
    [recoveredBlock178Block185Block200Block219Done not] whileTrue: [
        recoveredBlock178Block185Block200Block219Step := recoveredBlock178Block185Block200Block219PC.
        recoveredBlock178Block185Block200Block219Step = 226 ifTrue: [
            recoveredBlock178Block185Block200Block219Stack1 := nil.
            recoveredBlock178Block185Block200Block219PC := 227.
        ].
        recoveredBlock178Block185Block200Block219Step = 227 ifTrue: [
            recoveredBlock178Block185Block200Block219Stack2 := recoveredBlock178Block185Block200Block219Arg1.
            recoveredBlock178Block185Block200Block219PC := 228.
        ].
        recoveredBlock178Block185Block200Block219Step = 228 ifTrue: [
            recoveredBlock178Block185Block200Block219Stack3 := 5.
            recoveredBlock178Block185Block200Block219PC := 230.
        ].
        recoveredBlock178Block185Block200Block219Step = 230 ifTrue: [
            recoveredBlock178Block185Block200Block219Stack2 := (recoveredBlock178Block185Block200Block219Stack2) at: (recoveredBlock178Block185Block200Block219Stack3).
            recoveredBlock178Block185Block200Block219PC := 232.
        ].
        recoveredBlock178Block185Block200Block219Step = 232 ifTrue: [
            recoveredBlock178Block185Block200Block219Stack3 := 2.
            recoveredBlock178Block185Block200Block219PC := 234.
        ].
        recoveredBlock178Block185Block200Block219Step = 234 ifTrue: [
            recoveredBlock178Block185Block200Block219Stack2 := (recoveredBlock178Block185Block200Block219Stack2) at: (recoveredBlock178Block185Block200Block219Stack3).
            recoveredBlock178Block185Block200Block219PC := 236.
        ].
        recoveredBlock178Block185Block200Block219Step = 236 ifTrue: [
            recoveredBlock178Block185Block200Block219Stack3 := 0.
            recoveredBlock178Block185Block200Block219PC := 238.
        ].
        recoveredBlock178Block185Block200Block219Step = 238 ifTrue: [
            recoveredBlock178Block185Block200Block219Stack2 := (recoveredBlock178Block185Block200Block219Stack2) > (recoveredBlock178Block185Block200Block219Stack3).
            recoveredBlock178Block185Block200Block219PC := 239.
        ].
        recoveredBlock178Block185Block200Block219Step = 239 ifTrue: [
            (recoveredBlock178Block185Block200Block219Stack2) ifTrue: [recoveredBlock178Block185Block200Block219PC := 242] ifFalse: [recoveredBlock178Block185Block200Block219PC := 282].
        ].
        recoveredBlock178Block185Block200Block219Step = 242 ifTrue: [
            recoveredBlock178Block185Block200Block219PC := 243.
        ].
        recoveredBlock178Block185Block200Block219Step = 243 ifTrue: [
            recoveredBlock178Block185Block200Block219Stack1 := recoveredBlock178Block185Arg1.
            recoveredBlock178Block185Block200Block219PC := 246.
        ].
        recoveredBlock178Block185Block200Block219Step = 246 ifTrue: [
            recoveredBlock178Block185Block200Block219Stack1 := (recoveredBlock178Block185Block200Block219Stack1) key.
            recoveredBlock178Block185Block200Block219PC := 248.
        ].
        recoveredBlock178Block185Block200Block219Step = 248 ifTrue: [
            recoveredBlock178Block185Block200Block219Stack2 := [:recoveredBlock178Block185Block200Block219Block248Arg1 | 
    | recoveredBlock178Block185Block200Block219Block248Value0 recoveredBlock178Block185Block200Block219Block248Value1 recoveredBlock178Block185Block200Block219Block248Value2 recoveredBlock178Block185Block200Block219Block248Value3 recoveredBlock178Block185Block200Block219Block248Value4 recoveredBlock178Block185Block200Block219Block248Value5 recoveredBlock178Block185Block200Block219Block248Value6 recoveredBlock178Block185Block200Block219Block248Value7 recoveredBlock178Block185Block200Block219Block248Value8 recoveredBlock178Block185Block200Block219Block248Value9 recoveredBlock178Block185Block200Block219Block248Value10 |
    recoveredBlock178Block185Block200Block219Block248Value0 := recoveredArg1.
    recoveredBlock178Block185Block200Block219Block248Value1 := (recoveredBlock178Block185Block200Block219Block248Value0) missingPort.
    recoveredBlock178Block185Block200Block219Block248Value2 := Dictionary.
    recoveredBlock178Block185Block200Block219Block248Value3 := (recoveredBlock178Block185Block200Block219Block248Value2) new.
    recoveredBlock178Block185Block200Block219Block248Value4 := recoveredBlock178Block185Block200Block219Block248Value3.
    recoveredBlock178Block185Block200Block219Block248Value5 := recoveredBlock178Block185Arg1.
    recoveredBlock178Block185Block200Block219Block248Value6 := (recoveredBlock178Block185Block200Block219Block248Value5) key.
    recoveredBlock178Block185Block200Block219Block248Value7 := recoveredBlock178Block185Arg1.
    recoveredBlock178Block185Block200Block219Block248Value8 := (recoveredBlock178Block185Block200Block219Block248Value7) value.
    (recoveredBlock178Block185Block200Block219Block248Value4) at: (recoveredBlock178Block185Block200Block219Block248Value6) put: (recoveredBlock178Block185Block200Block219Block248Value8).
    recoveredBlock178Block185Block200Block219Block248Value9 := SGMissingResultConnectorGO.
    recoveredBlock178Block185Block200Block219Block248Value10 := (recoveredBlock178Block185Block200Block219Block248Value1) updateConnectorIDsAndVisibilitiesWith: (recoveredBlock178Block185Block200Block219Block248Value3) replacementType: (recoveredBlock178Block185Block200Block219Block248Value9).
    recoveredBlock178Block185Block200Block219Block248Value10
].
            recoveredBlock178Block185Block200Block219PC := 280.
        ].
        recoveredBlock178Block185Block200Block219Step = 280 ifTrue: [
            recoveredBlock178Block185Block200Block219Stack1 := (recoveredBlock178Block185Block200Block219Stack1) ifNotNil: (recoveredBlock178Block185Block200Block219Stack2).
            recoveredBlock178Block185Block200Block219PC := 282.
        ].
        recoveredBlock178Block185Block200Block219Step = 282 ifTrue: [
            recoveredBlock178Block185Block200Block219Result := recoveredBlock178Block185Block200Block219Stack1.
            recoveredBlock178Block185Block200Block219Done := true.
        ].
    ].
    recoveredBlock178Block185Block200Block219Result
].
    recoveredBlock178Block185Block200Value7 := (recoveredBlock178Block185Block200Value5) ifNotNil: (recoveredBlock178Block185Block200Value6).
    recoveredBlock178Block185Block200Value7
].
            recoveredBlock178Block185PC := 286.
        ].
        recoveredBlock178Block185Step = 286 ifTrue: [
            (recoveredBlock178Block185Stack1) at: (recoveredBlock178Block185Stack2) ifAbsent: (recoveredBlock178Block185Stack3).
            recoveredBlock178Block185PC := 288.
        ].
        recoveredBlock178Block185Step = 288 ifTrue: [
            recoveredBlock178Block185Stack1 := nil.
            recoveredBlock178Block185PC := 289.
        ].
        recoveredBlock178Block185Step = 289 ifTrue: [
            recoveredBlock178Block185Stack2 := recoveredLocal1.
            recoveredBlock178Block185PC := 292.
        ].
        recoveredBlock178Block185Step = 292 ifTrue: [
            recoveredBlock178Block185Stack3 := recoveredBlock178Block185Arg1.
            recoveredBlock178Block185PC := 295.
        ].
        recoveredBlock178Block185Step = 295 ifTrue: [
            recoveredBlock178Block185Stack3 := (recoveredBlock178Block185Stack3) key.
            recoveredBlock178Block185PC := 297.
        ].
        recoveredBlock178Block185Step = 297 ifTrue: [
            recoveredBlock178Block185Stack2 := (recoveredBlock178Block185Stack2) includes: (recoveredBlock178Block185Stack3).
            recoveredBlock178Block185PC := 299.
        ].
        recoveredBlock178Block185Step = 299 ifTrue: [
            (recoveredBlock178Block185Stack2) ifTrue: [recoveredBlock178Block185PC := 302] ifFalse: [recoveredBlock178Block185PC := 342].
        ].
        recoveredBlock178Block185Step = 302 ifTrue: [
            recoveredBlock178Block185PC := 303.
        ].
        recoveredBlock178Block185Step = 303 ifTrue: [
            recoveredBlock178Block185Stack1 := recoveredBlock178Block185Arg1.
            recoveredBlock178Block185PC := 306.
        ].
        recoveredBlock178Block185Step = 306 ifTrue: [
            recoveredBlock178Block185Stack1 := (recoveredBlock178Block185Stack1) key.
            recoveredBlock178Block185PC := 308.
        ].
        recoveredBlock178Block185Step = 308 ifTrue: [
            recoveredBlock178Block185Stack2 := [:recoveredBlock178Block185Block308Arg1 | 
    | recoveredBlock178Block185Block308Value0 recoveredBlock178Block185Block308Value1 recoveredBlock178Block185Block308Value2 recoveredBlock178Block185Block308Value3 recoveredBlock178Block185Block308Value4 recoveredBlock178Block185Block308Value5 recoveredBlock178Block185Block308Value6 recoveredBlock178Block185Block308Value7 recoveredBlock178Block185Block308Value8 recoveredBlock178Block185Block308Value9 recoveredBlock178Block185Block308Value10 |
    recoveredBlock178Block185Block308Value0 := recoveredArg1.
    recoveredBlock178Block185Block308Value1 := (recoveredBlock178Block185Block308Value0) missingPort.
    recoveredBlock178Block185Block308Value2 := Dictionary.
    recoveredBlock178Block185Block308Value3 := (recoveredBlock178Block185Block308Value2) new.
    recoveredBlock178Block185Block308Value4 := recoveredBlock178Block185Block308Value3.
    recoveredBlock178Block185Block308Value5 := recoveredBlock178Block185Arg1.
    recoveredBlock178Block185Block308Value6 := (recoveredBlock178Block185Block308Value5) key.
    recoveredBlock178Block185Block308Value7 := recoveredBlock178Block185Arg1.
    recoveredBlock178Block185Block308Value8 := (recoveredBlock178Block185Block308Value7) value.
    (recoveredBlock178Block185Block308Value4) at: (recoveredBlock178Block185Block308Value6) put: (recoveredBlock178Block185Block308Value8).
    recoveredBlock178Block185Block308Value9 := SGMissingArgumentConnectorGO.
    recoveredBlock178Block185Block308Value10 := (recoveredBlock178Block185Block308Value1) updateConnectorIDsAndVisibilitiesWith: (recoveredBlock178Block185Block308Value3) replacementType: (recoveredBlock178Block185Block308Value9).
    recoveredBlock178Block185Block308Value10
].
            recoveredBlock178Block185PC := 340.
        ].
        recoveredBlock178Block185Step = 340 ifTrue: [
            recoveredBlock178Block185Stack1 := (recoveredBlock178Block185Stack1) ifNotNil: (recoveredBlock178Block185Stack2).
            recoveredBlock178Block185PC := 342.
        ].
        recoveredBlock178Block185Step = 342 ifTrue: [
            recoveredBlock178Block185Result := recoveredBlock178Block185Stack1.
            recoveredBlock178Block185Done := true.
        ].
    ].
    recoveredBlock178Block185Result
].
    recoveredBlock178Value2 := (recoveredBlock178Value0) associationsDo: (recoveredBlock178Value1).
    recoveredBlock178Value2
].
    (recoveredValue9) do: (recoveredValue10).
    ^self
! !

"ASDBase.ic method 0x20615a98; bytecode file offset 0xf1242c"
!SGMemoryBlockDB methodsFor: 'recovered'!
update: recoveredArg1 methods: recoveredArg2 addMissing: recoveredArg3 addHidden: recoveredArg4 progressDialog: recoveredArg5
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredLocal6 recoveredLocal7 recoveredLocal8 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
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
            recoveredLocal6 := recoveredStack1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := OrderedCollection.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := Dictionary.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredLocal8 := recoveredStack1.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack2 := [:recoveredBlock25Arg1 | 
    | recoveredBlock25Stack0 recoveredBlock25Stack1 recoveredBlock25Stack2 recoveredBlock25Stack3 recoveredBlock25PC recoveredBlock25Step recoveredBlock25Done recoveredBlock25Result |
    recoveredBlock25Stack0 := self.
    recoveredBlock25PC := 32.
    recoveredBlock25Done := false.
    [recoveredBlock25Done not] whileTrue: [
        recoveredBlock25Step := recoveredBlock25PC.
        recoveredBlock25Step = 32 ifTrue: [
            recoveredBlock25Stack1 := true.
            recoveredBlock25PC := 33.
        ].
        recoveredBlock25Step = 33 ifTrue: [
            recoveredBlock25Stack2 := recoveredBlock25Arg1.
            recoveredBlock25PC := 34.
        ].
        recoveredBlock25Step = 34 ifTrue: [
            recoveredBlock25Stack2 := (recoveredBlock25Stack2) enabled.
            recoveredBlock25PC := 35.
        ].
        recoveredBlock25Step = 35 ifTrue: [
            (recoveredBlock25Stack2) ifTrue: [recoveredBlock25PC := 42] ifFalse: [recoveredBlock25PC := 38].
        ].
        recoveredBlock25Step = 38 ifTrue: [
            recoveredBlock25PC := 39.
        ].
        recoveredBlock25Step = 39 ifTrue: [
            recoveredBlock25Stack1 := recoveredArg4.
            recoveredBlock25PC := 42.
        ].
        recoveredBlock25Step = 42 ifTrue: [
            recoveredBlock25Result := recoveredBlock25Stack1.
            recoveredBlock25Done := true.
        ].
    ].
    recoveredBlock25Result
].
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack1 := (recoveredStack1) select: (recoveredStack2).
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack2 := [:recoveredBlock51Arg1 :recoveredBlock51Arg2 | 
    | recoveredBlock51Stack0 recoveredBlock51Stack1 recoveredBlock51Stack2 recoveredBlock51Stack3 recoveredBlock51Stack4 recoveredBlock51PC recoveredBlock51Step recoveredBlock51Done recoveredBlock51Result |
    recoveredBlock51Stack0 := self.
    recoveredBlock51PC := 58.
    recoveredBlock51Done := false.
    [recoveredBlock51Done not] whileTrue: [
        recoveredBlock51Step := recoveredBlock51PC.
        recoveredBlock51Step = 58 ifTrue: [
            recoveredBlock51Stack1 := recoveredBlock51Arg2.
            recoveredBlock51PC := 61.
        ].
        recoveredBlock51Step = 61 ifTrue: [
            recoveredBlock51Stack2 := 100.
            recoveredBlock51PC := 64.
        ].
        recoveredBlock51Step = 64 ifTrue: [
            recoveredBlock51Stack1 := (recoveredBlock51Stack1) \\ (recoveredBlock51Stack2).
            recoveredBlock51PC := 65.
        ].
        recoveredBlock51Step = 65 ifTrue: [
            recoveredBlock51Stack2 := 0.
            recoveredBlock51PC := 67.
        ].
        recoveredBlock51Step = 67 ifTrue: [
            recoveredBlock51Stack1 := (recoveredBlock51Stack1) equals: (recoveredBlock51Stack2).
            recoveredBlock51PC := 69.
        ].
        recoveredBlock51Step = 69 ifTrue: [
            (recoveredBlock51Stack1) ifTrue: [recoveredBlock51PC := 72] ifFalse: [recoveredBlock51PC := 104].
        ].
        recoveredBlock51Step = 72 ifTrue: [
            recoveredBlock51Stack1 := recoveredArg5.
            recoveredBlock51PC := 75.
        ].
        recoveredBlock51Step = 75 ifTrue: [
            recoveredBlock51Stack2 := recoveredBlock51Arg2.
            recoveredBlock51PC := 78.
        ].
        recoveredBlock51Step = 78 ifTrue: [
            recoveredBlock51Stack3 := recoveredLocal2.
            recoveredBlock51PC := 81.
        ].
        recoveredBlock51Step = 81 ifTrue: [
            recoveredBlock51Stack3 := (recoveredBlock51Stack3) size.
            recoveredBlock51PC := 83.
        ].
        recoveredBlock51Step = 83 ifTrue: [
            recoveredBlock51Stack2 := (recoveredBlock51Stack2) / (recoveredBlock51Stack3).
            recoveredBlock51PC := 85.
        ].
        recoveredBlock51Step = 85 ifTrue: [
            recoveredBlock51Stack3 := (Fraction) numerator: (1) denominator: (6).
            recoveredBlock51PC := 87.
        ].
        recoveredBlock51Step = 87 ifTrue: [
            recoveredBlock51Stack2 := (recoveredBlock51Stack2) * (recoveredBlock51Stack3).
            recoveredBlock51PC := 88.
        ].
        recoveredBlock51Step = 88 ifTrue: [
            recoveredBlock51Stack3 := (Fraction) numerator: (1) denominator: (3).
            recoveredBlock51PC := 90.
        ].
        recoveredBlock51Step = 90 ifTrue: [
            recoveredBlock51Stack2 := (recoveredBlock51Stack2) + (recoveredBlock51Stack3).
            recoveredBlock51PC := 91.
        ].
        recoveredBlock51Step = 91 ifTrue: [
            (recoveredBlock51Stack1) fractionComplete: (recoveredBlock51Stack2).
            recoveredBlock51PC := 93.
        ].
        recoveredBlock51Step = 93 ifTrue: [
            recoveredBlock51Stack1 := recoveredArg5.
            recoveredBlock51PC := 96.
        ].
        recoveredBlock51Step = 96 ifTrue: [
            recoveredBlock51Stack1 := (recoveredBlock51Stack1) cancelled.
            recoveredBlock51PC := 98.
        ].
        recoveredBlock51Step = 98 ifTrue: [
            (recoveredBlock51Stack1) ifTrue: [recoveredBlock51PC := 102] ifFalse: [recoveredBlock51PC := 104].
        ].
        recoveredBlock51Step = 102 ifTrue: [
            recoveredBlock51Stack1 := nil.
            recoveredBlock51PC := 103.
        ].
        recoveredBlock51Step = 103 ifTrue: [
            ^recoveredBlock51Stack1
        ].
        recoveredBlock51Step = 104 ifTrue: [
            recoveredBlock51Stack1 := recoveredBlock51Arg1.
            recoveredBlock51PC := 107.
        ].
        recoveredBlock51Step = 107 ifTrue: [
            recoveredBlock51Stack0 := (recoveredBlock51Stack0) pinDictionaryForMethod: (recoveredBlock51Stack1).
            recoveredBlock51PC := 109.
        ].
        recoveredBlock51Step = 109 ifTrue: [
            recoveredBlock51Stack1 := recoveredBlock51Stack0.
            recoveredBlock51PC := 110.
        ].
        recoveredBlock51Step = 110 ifTrue: [
            recoveredLocal7 := recoveredBlock51Stack1.
            recoveredBlock51PC := 113.
        ].
        recoveredBlock51Step = 113 ifTrue: [
            (recoveredBlock51Stack0 == nil) ifTrue: [recoveredBlock51PC := 190] ifFalse: [recoveredBlock51PC := 116].
        ].
        recoveredBlock51Step = 116 ifTrue: [
            recoveredBlock51Stack0 := recoveredArg1.
            recoveredBlock51PC := 119.
        ].
        recoveredBlock51Step = 119 ifTrue: [
            recoveredBlock51Stack1 := recoveredBlock51Arg1.
            recoveredBlock51PC := 122.
        ].
        recoveredBlock51Step = 122 ifTrue: [
            recoveredBlock51Stack2 := recoveredLocal7.
            recoveredBlock51PC := 125.
        ].
        recoveredBlock51Step = 125 ifTrue: [
            recoveredBlock51Stack3 := recoveredBlock51Arg1.
            recoveredBlock51PC := 128.
        ].
        recoveredBlock51Step = 128 ifTrue: [
            recoveredBlock51Stack3 := (recoveredBlock51Stack3) enabled.
            recoveredBlock51PC := 129.
        ].
        recoveredBlock51Step = 129 ifTrue: [
            recoveredBlock51Stack0 := (recoveredBlock51Stack0) addInterface: (recoveredBlock51Stack1) withPinDictionary: (recoveredBlock51Stack2) enabled: (recoveredBlock51Stack3).
            recoveredBlock51PC := 132.
        ].
        recoveredBlock51Step = 132 ifTrue: [
            recoveredBlock51Stack1 := [:recoveredBlock51Block132Arg1 | 
    | recoveredBlock51Block132Stack0 recoveredBlock51Block132Stack1 recoveredBlock51Block132Stack2 recoveredBlock51Block132Stack3 recoveredBlock51Block132Stack4 recoveredBlock51Block132PC recoveredBlock51Block132Step recoveredBlock51Block132Done recoveredBlock51Block132Result |
    recoveredBlock51Block132Stack0 := nil.
    recoveredBlock51Block132PC := 138.
    recoveredBlock51Block132Done := false.
    [recoveredBlock51Block132Done not] whileTrue: [
        recoveredBlock51Block132Step := recoveredBlock51Block132PC.
        recoveredBlock51Block132Step = 138 ifTrue: [
            recoveredBlock51Block132Stack1 := 'hw'.
            recoveredBlock51Block132PC := 140.
        ].
        recoveredBlock51Block132Step = 140 ifTrue: [
            recoveredBlock51Block132Stack2 := 'call_2009403280'.
            recoveredBlock51Block132PC := 142.
        ].
        recoveredBlock51Block132Step = 142 ifTrue: [
            recoveredBlock51Block132Stack1 := (recoveredBlock51Block132Stack1) == (recoveredBlock51Block132Stack2).
            recoveredBlock51Block132PC := 143.
        ].
        recoveredBlock51Block132Step = 143 ifTrue: [
            recoveredBlock51Block132PC := 144.
        ].
        recoveredBlock51Block132Step = 144 ifTrue: [
            recoveredBlock51Block132Stack1 := recoveredLocal8.
            recoveredBlock51Block132PC := 147.
        ].
        recoveredBlock51Block132Step = 147 ifTrue: [
            recoveredBlock51Block132Stack2 := recoveredBlock51Block132Arg1.
            recoveredBlock51Block132PC := 148.
        ].
        recoveredBlock51Block132Step = 148 ifTrue: [
            recoveredBlock51Block132Stack3 := recoveredLocal7.
            recoveredBlock51Block132PC := 151.
        ].
        recoveredBlock51Block132Step = 151 ifTrue: [
            (recoveredBlock51Block132Stack1) at: (recoveredBlock51Block132Stack2) put: (recoveredBlock51Block132Stack3).
            recoveredBlock51Block132PC := 153.
        ].
        recoveredBlock51Block132Step = 153 ifTrue: [
            recoveredBlock51Block132Stack1 := nil.
            recoveredBlock51Block132PC := 154.
        ].
        recoveredBlock51Block132Step = 154 ifTrue: [
            recoveredBlock51Block132Stack2 := recoveredBlock51Block132Arg1.
            recoveredBlock51Block132PC := 155.
        ].
        recoveredBlock51Block132Step = 155 ifTrue: [
            recoveredBlock51Block132Stack2 := (recoveredBlock51Block132Stack2) isVisible.
            recoveredBlock51Block132PC := 157.
        ].
        recoveredBlock51Block132Step = 157 ifTrue: [
            (recoveredBlock51Block132Stack2) ifTrue: [recoveredBlock51Block132PC := 160] ifFalse: [recoveredBlock51Block132PC := 183].
        ].
        recoveredBlock51Block132Step = 160 ifTrue: [
            recoveredBlock51Block132Stack2 := recoveredBlock51Block132Arg1.
            recoveredBlock51Block132PC := 161.
        ].
        recoveredBlock51Block132Step = 161 ifTrue: [
            recoveredBlock51Block132Stack2 := (recoveredBlock51Block132Stack2) isSelectorPort.
            recoveredBlock51Block132PC := 163.
        ].
        recoveredBlock51Block132Step = 163 ifTrue: [
            (recoveredBlock51Block132Stack2) ifTrue: [recoveredBlock51Block132PC := 183] ifFalse: [recoveredBlock51Block132PC := 166].
        ].
        recoveredBlock51Block132Step = 166 ifTrue: [
            recoveredBlock51Block132Stack2 := recoveredBlock51Block132Arg1.
            recoveredBlock51Block132PC := 167.
        ].
        recoveredBlock51Block132Step = 167 ifTrue: [
            recoveredBlock51Block132Stack2 := (recoveredBlock51Block132Stack2) resultConnectorGO.
            recoveredBlock51Block132PC := 169.
        ].
        recoveredBlock51Block132Step = 169 ifTrue: [
            recoveredBlock51Block132Stack2 := (recoveredBlock51Block132Stack2) goesLeft.
            recoveredBlock51Block132PC := 171.
        ].
        recoveredBlock51Block132Step = 171 ifTrue: [
            (recoveredBlock51Block132Stack2) ifTrue: [recoveredBlock51Block132PC := 174] ifFalse: [recoveredBlock51Block132PC := 183].
        ].
        recoveredBlock51Block132Step = 174 ifTrue: [
            recoveredBlock51Block132PC := 175.
        ].
        recoveredBlock51Block132Step = 175 ifTrue: [
            recoveredBlock51Block132Stack1 := recoveredLocal4.
            recoveredBlock51Block132PC := 178.
        ].
        recoveredBlock51Block132Step = 178 ifTrue: [
            recoveredBlock51Block132Stack2 := recoveredBlock51Arg1.
            recoveredBlock51Block132PC := 181.
        ].
        recoveredBlock51Block132Step = 181 ifTrue: [
            recoveredBlock51Block132Stack1 := (recoveredBlock51Block132Stack1) add: (recoveredBlock51Block132Stack2).
            recoveredBlock51Block132PC := 183.
        ].
        recoveredBlock51Block132Step = 183 ifTrue: [
            recoveredBlock51Block132Result := recoveredBlock51Block132Stack1.
            recoveredBlock51Block132Done := true.
        ].
    ].
    recoveredBlock51Block132Result
].
            recoveredBlock51PC := 184.
        ].
        recoveredBlock51Step = 184 ifTrue: [
            recoveredBlock51Stack0 := (recoveredBlock51Stack0) ifNotNil: (recoveredBlock51Stack1).
            recoveredBlock51PC := 186.
        ].
        recoveredBlock51Step = 186 ifTrue: [
            recoveredBlock51PC := 239.
        ].
        recoveredBlock51Step = 190 ifTrue: [
            recoveredBlock51Stack0 := 'hw'.
            recoveredBlock51PC := 192.
        ].
        recoveredBlock51Step = 192 ifTrue: [
            recoveredBlock51Stack1 := 'call_2009402249'.
            recoveredBlock51PC := 194.
        ].
        recoveredBlock51Step = 194 ifTrue: [
            recoveredBlock51Stack0 := (recoveredBlock51Stack0) == (recoveredBlock51Stack1).
            recoveredBlock51PC := 195.
        ].
        recoveredBlock51Step = 195 ifTrue: [
            recoveredBlock51PC := 196.
        ].
        recoveredBlock51Step = 196 ifTrue: [
            recoveredBlock51Stack0 := nil.
            recoveredBlock51PC := 197.
        ].
        recoveredBlock51Step = 197 ifTrue: [
            recoveredBlock51Stack1 := recoveredArg3.
            recoveredBlock51PC := 200.
        ].
        recoveredBlock51Step = 200 ifTrue: [
            (recoveredBlock51Stack1) ifTrue: [recoveredBlock51PC := 204] ifFalse: [recoveredBlock51PC := 239].
        ].
        recoveredBlock51Step = 204 ifTrue: [
            recoveredBlock51Stack1 := recoveredBlock51Arg1.
            recoveredBlock51PC := 207.
        ].
        recoveredBlock51Step = 207 ifTrue: [
            recoveredBlock51Stack1 := (recoveredBlock51Stack1) enabled.
            recoveredBlock51PC := 208.
        ].
        recoveredBlock51Step = 208 ifTrue: [
            (recoveredBlock51Stack1) ifTrue: [recoveredBlock51PC := 212] ifFalse: [recoveredBlock51PC := 239].
        ].
        recoveredBlock51Step = 212 ifTrue: [
            recoveredBlock51PC := 213.
        ].
        recoveredBlock51Step = 213 ifTrue: [
            recoveredBlock51Stack0 := recoveredLocal6.
            recoveredBlock51PC := 216.
        ].
        recoveredBlock51Step = 216 ifTrue: [
            recoveredBlock51Stack1 := recoveredBlock51Arg1.
            recoveredBlock51PC := 219.
        ].
        recoveredBlock51Step = 219 ifTrue: [
            (recoveredBlock51Stack0) add: (recoveredBlock51Stack1).
            recoveredBlock51PC := 221.
        ].
        recoveredBlock51Step = 221 ifTrue: [
            recoveredBlock51Stack0 := nil.
            recoveredBlock51PC := 222.
        ].
        recoveredBlock51Step = 222 ifTrue: [
            recoveredBlock51Stack1 := recoveredBlock51Arg1.
            recoveredBlock51PC := 225.
        ].
        recoveredBlock51Step = 225 ifTrue: [
            recoveredBlock51Stack1 := (recoveredBlock51Stack1) hasReturnValue.
            recoveredBlock51PC := 227.
        ].
        recoveredBlock51Step = 227 ifTrue: [
            (recoveredBlock51Stack1) ifTrue: [recoveredBlock51PC := 230] ifFalse: [recoveredBlock51PC := 239].
        ].
        recoveredBlock51Step = 230 ifTrue: [
            recoveredBlock51PC := 231.
        ].
        recoveredBlock51Step = 231 ifTrue: [
            recoveredBlock51Stack0 := recoveredLocal4.
            recoveredBlock51PC := 234.
        ].
        recoveredBlock51Step = 234 ifTrue: [
            recoveredBlock51Stack1 := recoveredBlock51Arg1.
            recoveredBlock51PC := 237.
        ].
        recoveredBlock51Step = 237 ifTrue: [
            recoveredBlock51Stack0 := (recoveredBlock51Stack0) add: (recoveredBlock51Stack1).
            recoveredBlock51PC := 239.
        ].
        recoveredBlock51Step = 239 ifTrue: [
            recoveredBlock51Result := recoveredBlock51Stack0.
            recoveredBlock51Done := true.
        ].
    ].
    recoveredBlock51Result
].
            recoveredPC := 240.
        ].
        recoveredStep = 240 ifTrue: [
            (recoveredStack1) doWithIndex: (recoveredStack2).
            recoveredPC := 242.
        ].
        recoveredStep = 242 ifTrue: [
            recoveredStack1 := recoveredLocal8.
            recoveredPC := 245.
        ].
        recoveredStep = 245 ifTrue: [
            recoveredStack1 := (recoveredStack1) elements.
            recoveredPC := 247.
        ].
        recoveredStep = 247 ifTrue: [
            recoveredStack1 := (recoveredStack1) asSet.
            recoveredPC := 249.
        ].
        recoveredStep = 249 ifTrue: [
            recoveredStack2 := [:block2811e318Arg1 :block2811e318Arg2 | 
    | block2811e318Value0 block2811e318Value1 block2811e318Value2 block2811e318Value3 block2811e318Value4 block2811e318Value5 block2811e318Value6 |
    block2811e318Value0 := block2811e318Arg1.
    block2811e318Value1 := (block2811e318Value0) key.
    block2811e318Value2 := (block2811e318Value1) methodName.
    block2811e318Value3 := block2811e318Arg2.
    block2811e318Value4 := (block2811e318Value3) key.
    block2811e318Value5 := (block2811e318Value4) methodName.
    block2811e318Value6 := (block2811e318Value2) < (block2811e318Value5).
    block2811e318Value6
].
            recoveredPC := 251.
        ].
        recoveredStep = 251 ifTrue: [
            recoveredPC := 266.
        ].
        recoveredStep = 266 ifTrue: [
            recoveredStack1 := (recoveredStack1) asSortedCollection: (recoveredStack2).
            recoveredPC := 268.
        ].
        recoveredStep = 268 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 271.
        ].
        recoveredStep = 271 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 274.
        ].
        recoveredStep = 274 ifTrue: [
            recoveredStack2 := [:block2811e33cArg1 | 
    | block2811e33cLocal1 block2811e33cLocal2 block2811e33cValue0 block2811e33cValue1 block2811e33cValue2 block2811e33cValue3 block2811e33cValue4 block2811e33cValue5 block2811e33cValue6 |
    block2811e33cValue0 := block2811e33cArg1.
    block2811e33cValue1 := (block2811e33cValue0) key.
    block2811e33cLocal2 := block2811e33cValue1.
    block2811e33cValue2 := block2811e33cArg1.
    block2811e33cValue3 := (block2811e33cValue2) value.
    block2811e33cLocal1 := block2811e33cValue3.
    block2811e33cValue4 := block2811e33cLocal2.
    block2811e33cValue5 := block2811e33cLocal1.
    block2811e33cValue6 := (block2811e33cValue4) updateConnectorsWithout: (block2811e33cValue5).
    block2811e33cValue6
].
            recoveredPC := 276.
        ].
        recoveredStep = 276 ifTrue: [
            recoveredPC := 293.
        ].
        recoveredStep = 293 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 295.
        ].
        recoveredStep = 295 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 298.
        ].
        recoveredStep = 298 ifTrue: [
            recoveredStack1 := (recoveredStack1) dynamicGOInfo.
            recoveredPC := 300.
        ].
        recoveredStep = 300 ifTrue: [
            recoveredLocal5 := recoveredStack1.
            recoveredPC := 303.
        ].
        recoveredStep = 303 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 306.
        ].
        recoveredStep = 306 ifTrue: [
            recoveredStack2 := 'lastTopPos'.
            recoveredPC := 308.
        ].
        recoveredStep = 308 ifTrue: [
            recoveredStack3 := nil.
            recoveredPC := 309.
        ].
        recoveredStep = 309 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 311.
        ].
        recoveredStep = 311 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 314.
        ].
        recoveredStep = 314 ifTrue: [
            recoveredStack2 := 'lastBottomPos'.
            recoveredPC := 316.
        ].
        recoveredStep = 316 ifTrue: [
            recoveredStack3 := nil.
            recoveredPC := 317.
        ].
        recoveredStep = 317 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 319.
        ].
        recoveredStep = 319 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 322.
        ].
        recoveredStep = 322 ifTrue: [
            recoveredStack2 := 'lastInPos'.
            recoveredPC := 324.
        ].
        recoveredStep = 324 ifTrue: [
            recoveredStack3 := nil.
            recoveredPC := 325.
        ].
        recoveredStep = 325 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 327.
        ].
        recoveredStep = 327 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 330.
        ].
        recoveredStep = 330 ifTrue: [
            recoveredStack2 := 'lastOutPos'.
            recoveredPC := 332.
        ].
        recoveredStep = 332 ifTrue: [
            recoveredStack3 := nil.
            recoveredPC := 333.
        ].
        recoveredStep = 333 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 335.
        ].
        recoveredStep = 335 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 338.
        ].
        recoveredStep = 338 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 340.
        ].
        recoveredStep = 340 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 343.
        ].
        recoveredStep = 343 ifTrue: [
            recoveredStack2 := (recoveredStack2) frameGO.
            recoveredPC := 345.
        ].
        recoveredStep = 345 ifTrue: [
            recoveredStack2 := (recoveredStack2) logicFrame.
            recoveredPC := 347.
        ].
        recoveredStep = 347 ifTrue: [
            recoveredStack2 := (recoveredStack2) height.
            recoveredPC := 349.
        ].
        recoveredStep = 349 ifTrue: [
            recoveredStack3 := 10.
            recoveredPC := 351.
        ].
        recoveredStep = 351 ifTrue: [
            recoveredStack2 := (recoveredStack2) / (recoveredStack3).
            recoveredPC := 353.
        ].
        recoveredStep = 353 ifTrue: [
            recoveredStack1 := (recoveredStack1) - (recoveredStack2).
            recoveredPC := 354.
        ].
        recoveredStep = 354 ifTrue: [
            recoveredStack1 := (recoveredStack1) floor.
            recoveredPC := 356.
        ].
        recoveredStep = 356 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 359.
        ].
        recoveredStep = 359 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 362.
        ].
        recoveredStep = 362 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 364.
        ].
        recoveredStep = 364 ifTrue: [
            recoveredStack1 := (recoveredStack1) > (recoveredStack2).
            recoveredPC := 365.
        ].
        recoveredStep = 365 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 368] ifFalse: [recoveredPC := 376].
        ].
        recoveredStep = 368 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 371.
        ].
        recoveredStep = 371 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 374.
        ].
        recoveredStep = 374 ifTrue: [
            (recoveredStack1) growDown: (recoveredStack2).
            recoveredPC := 376.
        ].
        recoveredStep = 376 ifTrue: [
            recoveredStack1 := recoveredLocal6.
            recoveredPC := 379.
        ].
        recoveredStep = 379 ifTrue: [
            recoveredStack2 := [:recoveredBlock379Arg1 :recoveredBlock379Arg2 | 
    | recoveredBlock379Stack0 recoveredBlock379Stack1 recoveredBlock379Stack2 recoveredBlock379Stack3 recoveredBlock379Stack4 recoveredBlock379PC recoveredBlock379Step recoveredBlock379Done recoveredBlock379Result |
    recoveredBlock379Stack0 := self.
    recoveredBlock379PC := 386.
    recoveredBlock379Done := false.
    [recoveredBlock379Done not] whileTrue: [
        recoveredBlock379Step := recoveredBlock379PC.
        recoveredBlock379Step = 386 ifTrue: [
            recoveredBlock379Stack1 := recoveredBlock379Arg2.
            recoveredBlock379PC := 387.
        ].
        recoveredBlock379Step = 387 ifTrue: [
            recoveredBlock379Stack2 := 100.
            recoveredBlock379PC := 390.
        ].
        recoveredBlock379Step = 390 ifTrue: [
            recoveredBlock379Stack1 := (recoveredBlock379Stack1) \\ (recoveredBlock379Stack2).
            recoveredBlock379PC := 391.
        ].
        recoveredBlock379Step = 391 ifTrue: [
            recoveredBlock379Stack2 := 0.
            recoveredBlock379PC := 393.
        ].
        recoveredBlock379Step = 393 ifTrue: [
            recoveredBlock379Stack1 := (recoveredBlock379Stack1) equals: (recoveredBlock379Stack2).
            recoveredBlock379PC := 395.
        ].
        recoveredBlock379Step = 395 ifTrue: [
            (recoveredBlock379Stack1) ifTrue: [recoveredBlock379PC := 398] ifFalse: [recoveredBlock379PC := 428].
        ].
        recoveredBlock379Step = 398 ifTrue: [
            recoveredBlock379Stack1 := recoveredArg5.
            recoveredBlock379PC := 401.
        ].
        recoveredBlock379Step = 401 ifTrue: [
            recoveredBlock379Stack2 := recoveredBlock379Arg2.
            recoveredBlock379PC := 402.
        ].
        recoveredBlock379Step = 402 ifTrue: [
            recoveredBlock379Stack3 := recoveredLocal6.
            recoveredBlock379PC := 405.
        ].
        recoveredBlock379Step = 405 ifTrue: [
            recoveredBlock379Stack3 := (recoveredBlock379Stack3) size.
            recoveredBlock379PC := 407.
        ].
        recoveredBlock379Step = 407 ifTrue: [
            recoveredBlock379Stack2 := (recoveredBlock379Stack2) / (recoveredBlock379Stack3).
            recoveredBlock379PC := 409.
        ].
        recoveredBlock379Step = 409 ifTrue: [
            recoveredBlock379Stack3 := (Fraction) numerator: (1) denominator: (6).
            recoveredBlock379PC := 411.
        ].
        recoveredBlock379Step = 411 ifTrue: [
            recoveredBlock379Stack2 := (recoveredBlock379Stack2) * (recoveredBlock379Stack3).
            recoveredBlock379PC := 412.
        ].
        recoveredBlock379Step = 412 ifTrue: [
            recoveredBlock379Stack3 := (Fraction) numerator: (1) denominator: (2).
            recoveredBlock379PC := 414.
        ].
        recoveredBlock379Step = 414 ifTrue: [
            recoveredBlock379Stack2 := (recoveredBlock379Stack2) + (recoveredBlock379Stack3).
            recoveredBlock379PC := 415.
        ].
        recoveredBlock379Step = 415 ifTrue: [
            (recoveredBlock379Stack1) fractionComplete: (recoveredBlock379Stack2).
            recoveredBlock379PC := 417.
        ].
        recoveredBlock379Step = 417 ifTrue: [
            recoveredBlock379Stack1 := recoveredArg5.
            recoveredBlock379PC := 420.
        ].
        recoveredBlock379Step = 420 ifTrue: [
            recoveredBlock379Stack1 := (recoveredBlock379Stack1) cancelled.
            recoveredBlock379PC := 422.
        ].
        recoveredBlock379Step = 422 ifTrue: [
            (recoveredBlock379Stack1) ifTrue: [recoveredBlock379PC := 426] ifFalse: [recoveredBlock379PC := 428].
        ].
        recoveredBlock379Step = 426 ifTrue: [
            recoveredBlock379Stack1 := nil.
            recoveredBlock379PC := 427.
        ].
        recoveredBlock379Step = 427 ifTrue: [
            ^recoveredBlock379Stack1
        ].
        recoveredBlock379Step = 428 ifTrue: [
            recoveredBlock379Stack1 := recoveredArg1.
            recoveredBlock379PC := 431.
        ].
        recoveredBlock379Step = 431 ifTrue: [
            recoveredBlock379Stack2 := recoveredBlock379Arg1.
            recoveredBlock379PC := 432.
        ].
        recoveredBlock379Step = 432 ifTrue: [
            recoveredBlock379Stack1 := (recoveredBlock379Stack1) addInterface: (recoveredBlock379Stack2).
            recoveredBlock379PC := 434.
        ].
        recoveredBlock379Step = 434 ifTrue: [
            recoveredBlock379Result := recoveredBlock379Stack1.
            recoveredBlock379Done := true.
        ].
    ].
    recoveredBlock379Result
].
            recoveredPC := 435.
        ].
        recoveredStep = 435 ifTrue: [
            (recoveredStack1) doWithIndex: (recoveredStack2).
            recoveredPC := 437.
        ].
        recoveredStep = 437 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 440.
        ].
        recoveredStep = 440 ifTrue: [
            recoveredStack2 := 'lastTopPos'.
            recoveredPC := 442.
        ].
        recoveredStep = 442 ifTrue: [
            recoveredStack3 := [].
            recoveredPC := 444.
        ].
        recoveredStep = 444 ifTrue: [
            (recoveredStack1) removeKey: (recoveredStack2) ifAbsent: (recoveredStack3).
            recoveredPC := 446.
        ].
        recoveredStep = 446 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 449.
        ].
        recoveredStep = 449 ifTrue: [
            recoveredStack2 := 'lastBottomPos'.
            recoveredPC := 451.
        ].
        recoveredStep = 451 ifTrue: [
            recoveredStack3 := [].
            recoveredPC := 453.
        ].
        recoveredStep = 453 ifTrue: [
            (recoveredStack1) removeKey: (recoveredStack2) ifAbsent: (recoveredStack3).
            recoveredPC := 455.
        ].
        recoveredStep = 455 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 458.
        ].
        recoveredStep = 458 ifTrue: [
            recoveredStack2 := 'lastInPos'.
            recoveredPC := 460.
        ].
        recoveredStep = 460 ifTrue: [
            recoveredStack3 := [].
            recoveredPC := 462.
        ].
        recoveredStep = 462 ifTrue: [
            (recoveredStack1) removeKey: (recoveredStack2) ifAbsent: (recoveredStack3).
            recoveredPC := 464.
        ].
        recoveredStep = 464 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 467.
        ].
        recoveredStep = 467 ifTrue: [
            recoveredStack2 := 'lastOutPos'.
            recoveredPC := 469.
        ].
        recoveredStep = 469 ifTrue: [
            recoveredStack3 := [].
            recoveredPC := 471.
        ].
        recoveredStep = 471 ifTrue: [
            (recoveredStack1) removeKey: (recoveredStack2) ifAbsent: (recoveredStack3).
            recoveredPC := 473.
        ].
        recoveredStep = 473 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 476.
        ].
        recoveredStep = 476 ifTrue: [
            recoveredStack1 := (recoveredStack1) interfaceGOs.
            recoveredPC := 478.
        ].
        recoveredStep = 478 ifTrue: [
            recoveredStack2 := [:block2811e360Arg1 | 
    | block2811e360Value0 block2811e360Value1 block2811e360Value2 |
    block2811e360Value0 := ('hw') == ('call_2008404644').
    block2811e360Value1 := block2811e360Arg1.
    block2811e360Value2 := (block2811e360Value1) repositionSequenceCall.
    block2811e360Value2
].
            recoveredPC := 480.
        ].
        recoveredStep = 480 ifTrue: [
            recoveredPC := 494.
        ].
        recoveredStep = 494 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 496.
        ].
        recoveredStep = 496 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 499.
        ].
        recoveredStep = 499 ifTrue: [
            recoveredStack2 := nil.
            recoveredPC := 500.
        ].
        recoveredStep = 500 ifTrue: [
            (recoveredStack0) updateSequencesWith: (recoveredStack1) dataModelManager: (recoveredStack2).
            recoveredPC := 502.
        ].
        recoveredStep = 502 ifTrue: [
            recoveredStack0 := recoveredLocal6.
            recoveredPC := 505.
        ].
        recoveredStep = 505 ifTrue: [
            recoveredStack0 := (recoveredStack0) notEmpty.
            recoveredPC := 507.
        ].
        recoveredStep = 507 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2061695c; bytecode file offset 0xf1327c"
!SGMemoryBlockDB methodsFor: 'recovered'!
replaceAliasNamesSpecial: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) copy.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := [:recoveredBlock14Arg1 | 
    | recoveredBlock14Value0 recoveredBlock14Value1 recoveredBlock14Value2 recoveredBlock14Value3 recoveredBlock14Value4 recoveredBlock14Value5 recoveredBlock14Value6 recoveredBlock14Value7 recoveredBlock14Value8 recoveredBlock14Value9 |
    recoveredBlock14Value0 := ('hw') == ('call_71501').
    recoveredBlock14Value1 := ('hw') == ('call_79655').
    recoveredBlock14Value2 := recoveredLocal1.
    recoveredBlock14Value3 := recoveredBlock14Arg1.
    recoveredBlock14Value4 := (recoveredBlock14Value3) key.
    recoveredBlock14Value5 := (recoveredBlock14Value4) aliasAsPrintableString.
    recoveredBlock14Value6 := recoveredBlock14Arg1.
    recoveredBlock14Value7 := (recoveredBlock14Value6) value.
    recoveredBlock14Value8 := (recoveredBlock14Value7) aliasAsPrintableString.
    recoveredBlock14Value9 := (recoveredBlock14Value2) at: (recoveredBlock14Value5) put: (recoveredBlock14Value8).
    recoveredBlock14Value9
].
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            (recoveredStack1) associationsDo: (recoveredStack2).
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack0 := (recoveredStack0) selectorPorts.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 182] ifFalse: [recoveredPC := 56].
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack0 := (recoveredStack0) returnPorts.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 182] ifFalse: [recoveredPC := 62].
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack0 := (recoveredStack0) ports.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack0 := (recoveredStack0) keys.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack0 := (recoveredStack0) asArray.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack1 := [:recoveredBlock69Arg1 | 
    | recoveredBlock69Stack0 recoveredBlock69Stack1 recoveredBlock69Stack2 recoveredBlock69Stack3 recoveredBlock69Stack4 recoveredBlock69PC recoveredBlock69Step recoveredBlock69Done recoveredBlock69Result |
    recoveredBlock69Stack0 := self.
    recoveredBlock69PC := 76.
    recoveredBlock69Done := false.
    [recoveredBlock69Done not] whileTrue: [
        recoveredBlock69Step := recoveredBlock69PC.
        recoveredBlock69Step = 76 ifTrue: [
            recoveredBlock69Stack1 := nil.
            recoveredBlock69PC := 77.
        ].
        recoveredBlock69Step = 77 ifTrue: [
            recoveredBlock69Stack2 := recoveredLocal1.
            recoveredBlock69PC := 80.
        ].
        recoveredBlock69Step = 80 ifTrue: [
            recoveredBlock69Stack3 := recoveredBlock69Arg1.
            recoveredBlock69PC := 81.
        ].
        recoveredBlock69Step = 81 ifTrue: [
            recoveredBlock69Stack2 := (recoveredBlock69Stack2) includesKey: (recoveredBlock69Stack3).
            recoveredBlock69PC := 83.
        ].
        recoveredBlock69Step = 83 ifTrue: [
            (recoveredBlock69Stack2) ifTrue: [recoveredBlock69PC := 86] ifFalse: [recoveredBlock69PC := 176].
        ].
        recoveredBlock69Step = 86 ifTrue: [
            recoveredBlock69PC := 87.
        ].
        recoveredBlock69Step = 87 ifTrue: [
            recoveredBlock69Stack1 := self.
            recoveredBlock69PC := 88.
        ].
        recoveredBlock69Step = 88 ifTrue: [
            recoveredBlock69Stack1 := (recoveredBlock69Stack1) ports.
            recoveredBlock69PC := 90.
        ].
        recoveredBlock69Step = 90 ifTrue: [
            recoveredBlock69Stack2 := recoveredBlock69Arg1.
            recoveredBlock69PC := 91.
        ].
        recoveredBlock69Step = 91 ifTrue: [
            recoveredBlock69Stack1 := (recoveredBlock69Stack1) at: (recoveredBlock69Stack2).
            recoveredBlock69PC := 93.
        ].
        recoveredBlock69Step = 93 ifTrue: [
            recoveredLocal5 := recoveredBlock69Stack1.
            recoveredBlock69PC := 96.
        ].
        recoveredBlock69Step = 96 ifTrue: [
            recoveredBlock69Stack1 := self.
            recoveredBlock69PC := 97.
        ].
        recoveredBlock69Step = 97 ifTrue: [
            recoveredBlock69Stack1 := (recoveredBlock69Stack1) ports.
            recoveredBlock69PC := 99.
        ].
        recoveredBlock69Step = 99 ifTrue: [
            recoveredBlock69Stack2 := recoveredBlock69Arg1.
            recoveredBlock69PC := 100.
        ].
        recoveredBlock69Step = 100 ifTrue: [
            (recoveredBlock69Stack1) removeKey: (recoveredBlock69Stack2).
            recoveredBlock69PC := 102.
        ].
        recoveredBlock69Step = 102 ifTrue: [
            recoveredBlock69Stack1 := self.
            recoveredBlock69PC := 103.
        ].
        recoveredBlock69Step = 103 ifTrue: [
            recoveredBlock69Stack1 := (recoveredBlock69Stack1) ports.
            recoveredBlock69PC := 105.
        ].
        recoveredBlock69Step = 105 ifTrue: [
            recoveredBlock69Stack2 := recoveredLocal1.
            recoveredBlock69PC := 108.
        ].
        recoveredBlock69Step = 108 ifTrue: [
            recoveredBlock69Stack3 := recoveredBlock69Arg1.
            recoveredBlock69PC := 109.
        ].
        recoveredBlock69Step = 109 ifTrue: [
            recoveredBlock69Stack2 := (recoveredBlock69Stack2) at: (recoveredBlock69Stack3).
            recoveredBlock69PC := 111.
        ].
        recoveredBlock69Step = 111 ifTrue: [
            recoveredBlock69Stack3 := recoveredLocal5.
            recoveredBlock69PC := 114.
        ].
        recoveredBlock69Step = 114 ifTrue: [
            (recoveredBlock69Stack1) at: (recoveredBlock69Stack2) put: (recoveredBlock69Stack3).
            recoveredBlock69PC := 116.
        ].
        recoveredBlock69Step = 116 ifTrue: [
            recoveredBlock69Stack1 := recoveredLocal5.
            recoveredBlock69PC := 119.
        ].
        recoveredBlock69Step = 119 ifTrue: [
            recoveredBlock69Stack1 := (recoveredBlock69Stack1) keys.
            recoveredBlock69PC := 121.
        ].
        recoveredBlock69Step = 121 ifTrue: [
            recoveredBlock69Stack1 := (recoveredBlock69Stack1) asArray.
            recoveredBlock69PC := 123.
        ].
        recoveredBlock69Step = 123 ifTrue: [
            recoveredBlock69Stack2 := [:recoveredBlock69Block123Arg1 | 
    | recoveredBlock69Block123Stack0 recoveredBlock69Block123Stack1 recoveredBlock69Block123Stack2 recoveredBlock69Block123Stack3 recoveredBlock69Block123Stack4 recoveredBlock69Block123Stack5 recoveredBlock69Block123PC recoveredBlock69Block123Step recoveredBlock69Block123Done recoveredBlock69Block123Result |
    recoveredBlock69Block123Stack0 := nil.
    recoveredBlock69Block123PC := 130.
    recoveredBlock69Block123Done := false.
    [recoveredBlock69Block123Done not] whileTrue: [
        recoveredBlock69Block123Step := recoveredBlock69Block123PC.
        recoveredBlock69Block123Step = 130 ifTrue: [
            recoveredBlock69Block123Stack1 := nil.
            recoveredBlock69Block123PC := 131.
        ].
        recoveredBlock69Block123Step = 131 ifTrue: [
            recoveredBlock69Block123Stack2 := recoveredLocal1.
            recoveredBlock69Block123PC := 134.
        ].
        recoveredBlock69Block123Step = 134 ifTrue: [
            recoveredBlock69Block123Stack3 := recoveredBlock69Block123Arg1.
            recoveredBlock69Block123PC := 135.
        ].
        recoveredBlock69Block123Step = 135 ifTrue: [
            recoveredBlock69Block123Stack4 := [].
            recoveredBlock69Block123PC := 137.
        ].
        recoveredBlock69Block123Step = 137 ifTrue: [
            recoveredBlock69Block123Stack2 := (recoveredBlock69Block123Stack2) at: (recoveredBlock69Block123Stack3) ifAbsent: (recoveredBlock69Block123Stack4).
            recoveredBlock69Block123PC := 139.
        ].
        recoveredBlock69Block123Step = 139 ifTrue: [
            recoveredBlock69Block123Stack3 := recoveredBlock69Block123Stack2.
            recoveredBlock69Block123PC := 140.
        ].
        recoveredBlock69Block123Step = 140 ifTrue: [
            recoveredLocal3 := recoveredBlock69Block123Stack3.
            recoveredBlock69Block123PC := 143.
        ].
        recoveredBlock69Block123Step = 143 ifTrue: [
            (recoveredBlock69Block123Stack2 == nil) ifTrue: [recoveredBlock69Block123PC := 173] ifFalse: [recoveredBlock69Block123PC := 146].
        ].
        recoveredBlock69Block123Step = 146 ifTrue: [
            recoveredBlock69Block123PC := 147.
        ].
        recoveredBlock69Block123Step = 147 ifTrue: [
            recoveredBlock69Block123Stack1 := recoveredLocal5.
            recoveredBlock69Block123PC := 150.
        ].
        recoveredBlock69Block123Step = 150 ifTrue: [
            recoveredBlock69Block123Stack2 := recoveredBlock69Block123Arg1.
            recoveredBlock69Block123PC := 151.
        ].
        recoveredBlock69Block123Step = 151 ifTrue: [
            recoveredBlock69Block123Stack1 := (recoveredBlock69Block123Stack1) at: (recoveredBlock69Block123Stack2).
            recoveredBlock69Block123PC := 153.
        ].
        recoveredBlock69Block123Step = 153 ifTrue: [
            recoveredLocal2 := recoveredBlock69Block123Stack1.
            recoveredBlock69Block123PC := 156.
        ].
        recoveredBlock69Block123Step = 156 ifTrue: [
            recoveredBlock69Block123Stack1 := recoveredLocal5.
            recoveredBlock69Block123PC := 159.
        ].
        recoveredBlock69Block123Step = 159 ifTrue: [
            recoveredBlock69Block123Stack2 := recoveredBlock69Block123Arg1.
            recoveredBlock69Block123PC := 160.
        ].
        recoveredBlock69Block123Step = 160 ifTrue: [
            (recoveredBlock69Block123Stack1) removeKey: (recoveredBlock69Block123Stack2).
            recoveredBlock69Block123PC := 162.
        ].
        recoveredBlock69Block123Step = 162 ifTrue: [
            recoveredBlock69Block123Stack1 := recoveredLocal5.
            recoveredBlock69Block123PC := 165.
        ].
        recoveredBlock69Block123Step = 165 ifTrue: [
            recoveredBlock69Block123Stack2 := recoveredLocal3.
            recoveredBlock69Block123PC := 168.
        ].
        recoveredBlock69Block123Step = 168 ifTrue: [
            recoveredBlock69Block123Stack3 := recoveredLocal2.
            recoveredBlock69Block123PC := 171.
        ].
        recoveredBlock69Block123Step = 171 ifTrue: [
            recoveredBlock69Block123Stack1 := (recoveredBlock69Block123Stack1) at: (recoveredBlock69Block123Stack2) put: (recoveredBlock69Block123Stack3).
            recoveredBlock69Block123PC := 173.
        ].
        recoveredBlock69Block123Step = 173 ifTrue: [
            recoveredBlock69Block123Result := recoveredBlock69Block123Stack1.
            recoveredBlock69Block123Done := true.
        ].
    ].
    recoveredBlock69Block123Result
].
            recoveredBlock69PC := 174.
        ].
        recoveredBlock69Step = 174 ifTrue: [
            recoveredBlock69Stack1 := (recoveredBlock69Stack1) do: (recoveredBlock69Stack2).
            recoveredBlock69PC := 176.
        ].
        recoveredBlock69Step = 176 ifTrue: [
            recoveredBlock69Result := recoveredBlock69Stack1.
            recoveredBlock69Done := true.
        ].
    ].
    recoveredBlock69Result
].
            recoveredPC := 177.
        ].
        recoveredStep = 177 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 179.
        ].
        recoveredStep = 179 ifTrue: [
            recoveredPC := 415.
        ].
        recoveredStep = 182 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 183.
        ].
        recoveredStep = 183 ifTrue: [
            recoveredStack0 := (recoveredStack0) selectorPorts.
            recoveredPC := 185.
        ].
        recoveredStep = 185 ifTrue: [
            recoveredStack0 := (recoveredStack0) keys.
            recoveredPC := 187.
        ].
        recoveredStep = 187 ifTrue: [
            recoveredStack0 := (recoveredStack0) asArray.
            recoveredPC := 189.
        ].
        recoveredStep = 189 ifTrue: [
            recoveredStack1 := [:recoveredBlock189Arg1 | 
    | recoveredBlock189Stack0 recoveredBlock189Stack1 recoveredBlock189Stack2 recoveredBlock189Stack3 recoveredBlock189Stack4 recoveredBlock189PC recoveredBlock189Step recoveredBlock189Done recoveredBlock189Result |
    recoveredBlock189Stack0 := self.
    recoveredBlock189PC := 196.
    recoveredBlock189Done := false.
    [recoveredBlock189Done not] whileTrue: [
        recoveredBlock189Step := recoveredBlock189PC.
        recoveredBlock189Step = 196 ifTrue: [
            recoveredBlock189Stack1 := nil.
            recoveredBlock189PC := 197.
        ].
        recoveredBlock189Step = 197 ifTrue: [
            recoveredBlock189Stack2 := recoveredLocal1.
            recoveredBlock189PC := 200.
        ].
        recoveredBlock189Step = 200 ifTrue: [
            recoveredBlock189Stack3 := recoveredBlock189Arg1.
            recoveredBlock189PC := 201.
        ].
        recoveredBlock189Step = 201 ifTrue: [
            recoveredBlock189Stack2 := (recoveredBlock189Stack2) includesKey: (recoveredBlock189Stack3).
            recoveredBlock189PC := 203.
        ].
        recoveredBlock189Step = 203 ifTrue: [
            (recoveredBlock189Stack2) ifTrue: [recoveredBlock189PC := 206] ifFalse: [recoveredBlock189PC := 296].
        ].
        recoveredBlock189Step = 206 ifTrue: [
            recoveredBlock189PC := 207.
        ].
        recoveredBlock189Step = 207 ifTrue: [
            recoveredBlock189Stack1 := self.
            recoveredBlock189PC := 208.
        ].
        recoveredBlock189Step = 208 ifTrue: [
            recoveredBlock189Stack1 := (recoveredBlock189Stack1) selectorPorts.
            recoveredBlock189PC := 210.
        ].
        recoveredBlock189Step = 210 ifTrue: [
            recoveredBlock189Stack2 := recoveredBlock189Arg1.
            recoveredBlock189PC := 211.
        ].
        recoveredBlock189Step = 211 ifTrue: [
            recoveredBlock189Stack1 := (recoveredBlock189Stack1) at: (recoveredBlock189Stack2).
            recoveredBlock189PC := 213.
        ].
        recoveredBlock189Step = 213 ifTrue: [
            recoveredLocal5 := recoveredBlock189Stack1.
            recoveredBlock189PC := 216.
        ].
        recoveredBlock189Step = 216 ifTrue: [
            recoveredBlock189Stack1 := self.
            recoveredBlock189PC := 217.
        ].
        recoveredBlock189Step = 217 ifTrue: [
            recoveredBlock189Stack1 := (recoveredBlock189Stack1) selectorPorts.
            recoveredBlock189PC := 219.
        ].
        recoveredBlock189Step = 219 ifTrue: [
            recoveredBlock189Stack2 := recoveredBlock189Arg1.
            recoveredBlock189PC := 220.
        ].
        recoveredBlock189Step = 220 ifTrue: [
            (recoveredBlock189Stack1) removeKey: (recoveredBlock189Stack2).
            recoveredBlock189PC := 222.
        ].
        recoveredBlock189Step = 222 ifTrue: [
            recoveredBlock189Stack1 := self.
            recoveredBlock189PC := 223.
        ].
        recoveredBlock189Step = 223 ifTrue: [
            recoveredBlock189Stack1 := (recoveredBlock189Stack1) selectorPorts.
            recoveredBlock189PC := 225.
        ].
        recoveredBlock189Step = 225 ifTrue: [
            recoveredBlock189Stack2 := recoveredLocal1.
            recoveredBlock189PC := 228.
        ].
        recoveredBlock189Step = 228 ifTrue: [
            recoveredBlock189Stack3 := recoveredBlock189Arg1.
            recoveredBlock189PC := 229.
        ].
        recoveredBlock189Step = 229 ifTrue: [
            recoveredBlock189Stack2 := (recoveredBlock189Stack2) at: (recoveredBlock189Stack3).
            recoveredBlock189PC := 231.
        ].
        recoveredBlock189Step = 231 ifTrue: [
            recoveredBlock189Stack3 := recoveredLocal5.
            recoveredBlock189PC := 234.
        ].
        recoveredBlock189Step = 234 ifTrue: [
            (recoveredBlock189Stack1) at: (recoveredBlock189Stack2) put: (recoveredBlock189Stack3).
            recoveredBlock189PC := 236.
        ].
        recoveredBlock189Step = 236 ifTrue: [
            recoveredBlock189Stack1 := recoveredLocal5.
            recoveredBlock189PC := 239.
        ].
        recoveredBlock189Step = 239 ifTrue: [
            recoveredBlock189Stack1 := (recoveredBlock189Stack1) keys.
            recoveredBlock189PC := 241.
        ].
        recoveredBlock189Step = 241 ifTrue: [
            recoveredBlock189Stack1 := (recoveredBlock189Stack1) asArray.
            recoveredBlock189PC := 243.
        ].
        recoveredBlock189Step = 243 ifTrue: [
            recoveredBlock189Stack2 := [:recoveredBlock189Block243Arg1 | 
    | recoveredBlock189Block243Stack0 recoveredBlock189Block243Stack1 recoveredBlock189Block243Stack2 recoveredBlock189Block243Stack3 recoveredBlock189Block243Stack4 recoveredBlock189Block243Stack5 recoveredBlock189Block243PC recoveredBlock189Block243Step recoveredBlock189Block243Done recoveredBlock189Block243Result |
    recoveredBlock189Block243Stack0 := nil.
    recoveredBlock189Block243PC := 250.
    recoveredBlock189Block243Done := false.
    [recoveredBlock189Block243Done not] whileTrue: [
        recoveredBlock189Block243Step := recoveredBlock189Block243PC.
        recoveredBlock189Block243Step = 250 ifTrue: [
            recoveredBlock189Block243Stack1 := nil.
            recoveredBlock189Block243PC := 251.
        ].
        recoveredBlock189Block243Step = 251 ifTrue: [
            recoveredBlock189Block243Stack2 := recoveredLocal1.
            recoveredBlock189Block243PC := 254.
        ].
        recoveredBlock189Block243Step = 254 ifTrue: [
            recoveredBlock189Block243Stack3 := recoveredBlock189Block243Arg1.
            recoveredBlock189Block243PC := 255.
        ].
        recoveredBlock189Block243Step = 255 ifTrue: [
            recoveredBlock189Block243Stack4 := [].
            recoveredBlock189Block243PC := 257.
        ].
        recoveredBlock189Block243Step = 257 ifTrue: [
            recoveredBlock189Block243Stack2 := (recoveredBlock189Block243Stack2) at: (recoveredBlock189Block243Stack3) ifAbsent: (recoveredBlock189Block243Stack4).
            recoveredBlock189Block243PC := 259.
        ].
        recoveredBlock189Block243Step = 259 ifTrue: [
            recoveredBlock189Block243Stack3 := recoveredBlock189Block243Stack2.
            recoveredBlock189Block243PC := 260.
        ].
        recoveredBlock189Block243Step = 260 ifTrue: [
            recoveredLocal3 := recoveredBlock189Block243Stack3.
            recoveredBlock189Block243PC := 263.
        ].
        recoveredBlock189Block243Step = 263 ifTrue: [
            (recoveredBlock189Block243Stack2 == nil) ifTrue: [recoveredBlock189Block243PC := 293] ifFalse: [recoveredBlock189Block243PC := 266].
        ].
        recoveredBlock189Block243Step = 266 ifTrue: [
            recoveredBlock189Block243PC := 267.
        ].
        recoveredBlock189Block243Step = 267 ifTrue: [
            recoveredBlock189Block243Stack1 := recoveredLocal5.
            recoveredBlock189Block243PC := 270.
        ].
        recoveredBlock189Block243Step = 270 ifTrue: [
            recoveredBlock189Block243Stack2 := recoveredBlock189Block243Arg1.
            recoveredBlock189Block243PC := 271.
        ].
        recoveredBlock189Block243Step = 271 ifTrue: [
            recoveredBlock189Block243Stack1 := (recoveredBlock189Block243Stack1) at: (recoveredBlock189Block243Stack2).
            recoveredBlock189Block243PC := 273.
        ].
        recoveredBlock189Block243Step = 273 ifTrue: [
            recoveredLocal2 := recoveredBlock189Block243Stack1.
            recoveredBlock189Block243PC := 276.
        ].
        recoveredBlock189Block243Step = 276 ifTrue: [
            recoveredBlock189Block243Stack1 := recoveredLocal5.
            recoveredBlock189Block243PC := 279.
        ].
        recoveredBlock189Block243Step = 279 ifTrue: [
            recoveredBlock189Block243Stack2 := recoveredBlock189Block243Arg1.
            recoveredBlock189Block243PC := 280.
        ].
        recoveredBlock189Block243Step = 280 ifTrue: [
            (recoveredBlock189Block243Stack1) removeKey: (recoveredBlock189Block243Stack2).
            recoveredBlock189Block243PC := 282.
        ].
        recoveredBlock189Block243Step = 282 ifTrue: [
            recoveredBlock189Block243Stack1 := recoveredLocal5.
            recoveredBlock189Block243PC := 285.
        ].
        recoveredBlock189Block243Step = 285 ifTrue: [
            recoveredBlock189Block243Stack2 := recoveredLocal3.
            recoveredBlock189Block243PC := 288.
        ].
        recoveredBlock189Block243Step = 288 ifTrue: [
            recoveredBlock189Block243Stack3 := recoveredLocal2.
            recoveredBlock189Block243PC := 291.
        ].
        recoveredBlock189Block243Step = 291 ifTrue: [
            recoveredBlock189Block243Stack1 := (recoveredBlock189Block243Stack1) at: (recoveredBlock189Block243Stack2) put: (recoveredBlock189Block243Stack3).
            recoveredBlock189Block243PC := 293.
        ].
        recoveredBlock189Block243Step = 293 ifTrue: [
            recoveredBlock189Block243Result := recoveredBlock189Block243Stack1.
            recoveredBlock189Block243Done := true.
        ].
    ].
    recoveredBlock189Block243Result
].
            recoveredBlock189PC := 294.
        ].
        recoveredBlock189Step = 294 ifTrue: [
            recoveredBlock189Stack1 := (recoveredBlock189Stack1) do: (recoveredBlock189Stack2).
            recoveredBlock189PC := 296.
        ].
        recoveredBlock189Step = 296 ifTrue: [
            recoveredBlock189Result := recoveredBlock189Stack1.
            recoveredBlock189Done := true.
        ].
    ].
    recoveredBlock189Result
].
            recoveredPC := 297.
        ].
        recoveredStep = 297 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 299.
        ].
        recoveredStep = 299 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 300.
        ].
        recoveredStep = 300 ifTrue: [
            recoveredStack0 := (recoveredStack0) returnPorts.
            recoveredPC := 302.
        ].
        recoveredStep = 302 ifTrue: [
            recoveredStack0 := (recoveredStack0) keys.
            recoveredPC := 304.
        ].
        recoveredStep = 304 ifTrue: [
            recoveredStack0 := (recoveredStack0) asArray.
            recoveredPC := 306.
        ].
        recoveredStep = 306 ifTrue: [
            recoveredStack1 := [:recoveredBlock306Arg1 | 
    | recoveredBlock306Stack0 recoveredBlock306Stack1 recoveredBlock306Stack2 recoveredBlock306Stack3 recoveredBlock306Stack4 recoveredBlock306PC recoveredBlock306Step recoveredBlock306Done recoveredBlock306Result |
    recoveredBlock306Stack0 := self.
    recoveredBlock306PC := 312.
    recoveredBlock306Done := false.
    [recoveredBlock306Done not] whileTrue: [
        recoveredBlock306Step := recoveredBlock306PC.
        recoveredBlock306Step = 312 ifTrue: [
            recoveredBlock306Stack1 := nil.
            recoveredBlock306PC := 313.
        ].
        recoveredBlock306Step = 313 ifTrue: [
            recoveredBlock306Stack2 := recoveredLocal1.
            recoveredBlock306PC := 316.
        ].
        recoveredBlock306Step = 316 ifTrue: [
            recoveredBlock306Stack3 := recoveredBlock306Arg1.
            recoveredBlock306PC := 317.
        ].
        recoveredBlock306Step = 317 ifTrue: [
            recoveredBlock306Stack2 := (recoveredBlock306Stack2) includesKey: (recoveredBlock306Stack3).
            recoveredBlock306PC := 319.
        ].
        recoveredBlock306Step = 319 ifTrue: [
            (recoveredBlock306Stack2) ifTrue: [recoveredBlock306PC := 322] ifFalse: [recoveredBlock306PC := 412].
        ].
        recoveredBlock306Step = 322 ifTrue: [
            recoveredBlock306PC := 323.
        ].
        recoveredBlock306Step = 323 ifTrue: [
            recoveredBlock306Stack1 := self.
            recoveredBlock306PC := 324.
        ].
        recoveredBlock306Step = 324 ifTrue: [
            recoveredBlock306Stack1 := (recoveredBlock306Stack1) returnPorts.
            recoveredBlock306PC := 326.
        ].
        recoveredBlock306Step = 326 ifTrue: [
            recoveredBlock306Stack2 := recoveredBlock306Arg1.
            recoveredBlock306PC := 327.
        ].
        recoveredBlock306Step = 327 ifTrue: [
            recoveredBlock306Stack1 := (recoveredBlock306Stack1) at: (recoveredBlock306Stack2).
            recoveredBlock306PC := 329.
        ].
        recoveredBlock306Step = 329 ifTrue: [
            recoveredLocal5 := recoveredBlock306Stack1.
            recoveredBlock306PC := 332.
        ].
        recoveredBlock306Step = 332 ifTrue: [
            recoveredBlock306Stack1 := self.
            recoveredBlock306PC := 333.
        ].
        recoveredBlock306Step = 333 ifTrue: [
            recoveredBlock306Stack1 := (recoveredBlock306Stack1) returnPorts.
            recoveredBlock306PC := 335.
        ].
        recoveredBlock306Step = 335 ifTrue: [
            recoveredBlock306Stack2 := recoveredBlock306Arg1.
            recoveredBlock306PC := 336.
        ].
        recoveredBlock306Step = 336 ifTrue: [
            (recoveredBlock306Stack1) removeKey: (recoveredBlock306Stack2).
            recoveredBlock306PC := 338.
        ].
        recoveredBlock306Step = 338 ifTrue: [
            recoveredBlock306Stack1 := self.
            recoveredBlock306PC := 339.
        ].
        recoveredBlock306Step = 339 ifTrue: [
            recoveredBlock306Stack1 := (recoveredBlock306Stack1) returnPorts.
            recoveredBlock306PC := 341.
        ].
        recoveredBlock306Step = 341 ifTrue: [
            recoveredBlock306Stack2 := recoveredLocal1.
            recoveredBlock306PC := 344.
        ].
        recoveredBlock306Step = 344 ifTrue: [
            recoveredBlock306Stack3 := recoveredBlock306Arg1.
            recoveredBlock306PC := 345.
        ].
        recoveredBlock306Step = 345 ifTrue: [
            recoveredBlock306Stack2 := (recoveredBlock306Stack2) at: (recoveredBlock306Stack3).
            recoveredBlock306PC := 347.
        ].
        recoveredBlock306Step = 347 ifTrue: [
            recoveredBlock306Stack3 := recoveredLocal5.
            recoveredBlock306PC := 350.
        ].
        recoveredBlock306Step = 350 ifTrue: [
            (recoveredBlock306Stack1) at: (recoveredBlock306Stack2) put: (recoveredBlock306Stack3).
            recoveredBlock306PC := 352.
        ].
        recoveredBlock306Step = 352 ifTrue: [
            recoveredBlock306Stack1 := recoveredLocal5.
            recoveredBlock306PC := 355.
        ].
        recoveredBlock306Step = 355 ifTrue: [
            recoveredBlock306Stack1 := (recoveredBlock306Stack1) keys.
            recoveredBlock306PC := 357.
        ].
        recoveredBlock306Step = 357 ifTrue: [
            recoveredBlock306Stack1 := (recoveredBlock306Stack1) asArray.
            recoveredBlock306PC := 359.
        ].
        recoveredBlock306Step = 359 ifTrue: [
            recoveredBlock306Stack2 := [:recoveredBlock306Block359Arg1 | 
    | recoveredBlock306Block359Stack0 recoveredBlock306Block359Stack1 recoveredBlock306Block359Stack2 recoveredBlock306Block359Stack3 recoveredBlock306Block359Stack4 recoveredBlock306Block359Stack5 recoveredBlock306Block359PC recoveredBlock306Block359Step recoveredBlock306Block359Done recoveredBlock306Block359Result |
    recoveredBlock306Block359Stack0 := nil.
    recoveredBlock306Block359PC := 366.
    recoveredBlock306Block359Done := false.
    [recoveredBlock306Block359Done not] whileTrue: [
        recoveredBlock306Block359Step := recoveredBlock306Block359PC.
        recoveredBlock306Block359Step = 366 ifTrue: [
            recoveredBlock306Block359Stack1 := nil.
            recoveredBlock306Block359PC := 367.
        ].
        recoveredBlock306Block359Step = 367 ifTrue: [
            recoveredBlock306Block359Stack2 := recoveredLocal1.
            recoveredBlock306Block359PC := 370.
        ].
        recoveredBlock306Block359Step = 370 ifTrue: [
            recoveredBlock306Block359Stack3 := recoveredBlock306Block359Arg1.
            recoveredBlock306Block359PC := 371.
        ].
        recoveredBlock306Block359Step = 371 ifTrue: [
            recoveredBlock306Block359Stack4 := [].
            recoveredBlock306Block359PC := 373.
        ].
        recoveredBlock306Block359Step = 373 ifTrue: [
            recoveredBlock306Block359Stack2 := (recoveredBlock306Block359Stack2) at: (recoveredBlock306Block359Stack3) ifAbsent: (recoveredBlock306Block359Stack4).
            recoveredBlock306Block359PC := 375.
        ].
        recoveredBlock306Block359Step = 375 ifTrue: [
            recoveredBlock306Block359Stack3 := recoveredBlock306Block359Stack2.
            recoveredBlock306Block359PC := 376.
        ].
        recoveredBlock306Block359Step = 376 ifTrue: [
            recoveredLocal3 := recoveredBlock306Block359Stack3.
            recoveredBlock306Block359PC := 379.
        ].
        recoveredBlock306Block359Step = 379 ifTrue: [
            (recoveredBlock306Block359Stack2 == nil) ifTrue: [recoveredBlock306Block359PC := 409] ifFalse: [recoveredBlock306Block359PC := 382].
        ].
        recoveredBlock306Block359Step = 382 ifTrue: [
            recoveredBlock306Block359PC := 383.
        ].
        recoveredBlock306Block359Step = 383 ifTrue: [
            recoveredBlock306Block359Stack1 := recoveredLocal5.
            recoveredBlock306Block359PC := 386.
        ].
        recoveredBlock306Block359Step = 386 ifTrue: [
            recoveredBlock306Block359Stack2 := recoveredBlock306Block359Arg1.
            recoveredBlock306Block359PC := 387.
        ].
        recoveredBlock306Block359Step = 387 ifTrue: [
            recoveredBlock306Block359Stack1 := (recoveredBlock306Block359Stack1) at: (recoveredBlock306Block359Stack2).
            recoveredBlock306Block359PC := 389.
        ].
        recoveredBlock306Block359Step = 389 ifTrue: [
            recoveredLocal2 := recoveredBlock306Block359Stack1.
            recoveredBlock306Block359PC := 392.
        ].
        recoveredBlock306Block359Step = 392 ifTrue: [
            recoveredBlock306Block359Stack1 := recoveredLocal5.
            recoveredBlock306Block359PC := 395.
        ].
        recoveredBlock306Block359Step = 395 ifTrue: [
            recoveredBlock306Block359Stack2 := recoveredBlock306Block359Arg1.
            recoveredBlock306Block359PC := 396.
        ].
        recoveredBlock306Block359Step = 396 ifTrue: [
            (recoveredBlock306Block359Stack1) removeKey: (recoveredBlock306Block359Stack2).
            recoveredBlock306Block359PC := 398.
        ].
        recoveredBlock306Block359Step = 398 ifTrue: [
            recoveredBlock306Block359Stack1 := recoveredLocal5.
            recoveredBlock306Block359PC := 401.
        ].
        recoveredBlock306Block359Step = 401 ifTrue: [
            recoveredBlock306Block359Stack2 := recoveredLocal3.
            recoveredBlock306Block359PC := 404.
        ].
        recoveredBlock306Block359Step = 404 ifTrue: [
            recoveredBlock306Block359Stack3 := recoveredLocal2.
            recoveredBlock306Block359PC := 407.
        ].
        recoveredBlock306Block359Step = 407 ifTrue: [
            recoveredBlock306Block359Stack1 := (recoveredBlock306Block359Stack1) at: (recoveredBlock306Block359Stack2) put: (recoveredBlock306Block359Stack3).
            recoveredBlock306Block359PC := 409.
        ].
        recoveredBlock306Block359Step = 409 ifTrue: [
            recoveredBlock306Block359Result := recoveredBlock306Block359Stack1.
            recoveredBlock306Block359Done := true.
        ].
    ].
    recoveredBlock306Block359Result
].
            recoveredBlock306PC := 410.
        ].
        recoveredBlock306Step = 410 ifTrue: [
            recoveredBlock306Stack1 := (recoveredBlock306Stack1) do: (recoveredBlock306Stack2).
            recoveredBlock306PC := 412.
        ].
        recoveredBlock306Step = 412 ifTrue: [
            recoveredBlock306Result := recoveredBlock306Stack1.
            recoveredBlock306Done := true.
        ].
    ].
    recoveredBlock306Result
].
            recoveredPC := 413.
        ].
        recoveredStep = 413 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 415.
        ].
        recoveredStep = 415 ifTrue: [
            recoveredStack0 := Dictionary.
            recoveredPC := 417.
        ].
        recoveredStep = 417 ifTrue: [
            recoveredStack0 := (recoveredStack0) new.
            recoveredPC := 419.
        ].
        recoveredStep = 419 ifTrue: [
            recoveredLocal4 := recoveredStack0.
            recoveredPC := 422.
        ].
        recoveredStep = 422 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 423.
        ].
        recoveredStep = 423 ifTrue: [
            recoveredStack0 := (recoveredStack0) sequences.
            recoveredPC := 425.
        ].
        recoveredStep = 425 ifTrue: [
            recoveredStack1 := [:recoveredBlock425Arg1 | 
    | recoveredBlock425Stack0 recoveredBlock425Stack1 recoveredBlock425Stack2 recoveredBlock425Stack3 recoveredBlock425Stack4 recoveredBlock425Stack5 recoveredBlock425PC recoveredBlock425Step recoveredBlock425Done recoveredBlock425Result |
    recoveredBlock425Stack0 := self.
    recoveredBlock425PC := 432.
    recoveredBlock425Done := false.
    [recoveredBlock425Done not] whileTrue: [
        recoveredBlock425Step := recoveredBlock425PC.
        recoveredBlock425Step = 432 ifTrue: [
            recoveredBlock425Stack1 := recoveredLocal1.
            recoveredBlock425PC := 435.
        ].
        recoveredBlock425Step = 435 ifTrue: [
            recoveredBlock425Stack2 := recoveredBlock425Arg1.
            recoveredBlock425PC := 436.
        ].
        recoveredBlock425Step = 436 ifTrue: [
            recoveredBlock425Stack2 := (recoveredBlock425Stack2) key.
            recoveredBlock425PC := 438.
        ].
        recoveredBlock425Step = 438 ifTrue: [
            recoveredBlock425Stack1 := (recoveredBlock425Stack1) includesKey: (recoveredBlock425Stack2).
            recoveredBlock425PC := 440.
        ].
        recoveredBlock425Step = 440 ifTrue: [
            (recoveredBlock425Stack1) ifTrue: [recoveredBlock425PC := 444] ifFalse: [recoveredBlock425PC := 468].
        ].
        recoveredBlock425Step = 444 ifTrue: [
            recoveredBlock425Stack1 := recoveredLocal4.
            recoveredBlock425PC := 447.
        ].
        recoveredBlock425Step = 447 ifTrue: [
            recoveredBlock425Stack2 := recoveredLocal1.
            recoveredBlock425PC := 450.
        ].
        recoveredBlock425Step = 450 ifTrue: [
            recoveredBlock425Stack3 := recoveredBlock425Arg1.
            recoveredBlock425PC := 451.
        ].
        recoveredBlock425Step = 451 ifTrue: [
            recoveredBlock425Stack3 := (recoveredBlock425Stack3) key.
            recoveredBlock425PC := 453.
        ].
        recoveredBlock425Step = 453 ifTrue: [
            recoveredBlock425Stack2 := (recoveredBlock425Stack2) at: (recoveredBlock425Stack3).
            recoveredBlock425PC := 455.
        ].
        recoveredBlock425Step = 455 ifTrue: [
            recoveredBlock425Stack3 := self.
            recoveredBlock425PC := 456.
        ].
        recoveredBlock425Step = 456 ifTrue: [
            recoveredBlock425Stack3 := (recoveredBlock425Stack3) sequences.
            recoveredBlock425PC := 458.
        ].
        recoveredBlock425Step = 458 ifTrue: [
            recoveredBlock425Stack4 := recoveredBlock425Arg1.
            recoveredBlock425PC := 459.
        ].
        recoveredBlock425Step = 459 ifTrue: [
            recoveredBlock425Stack4 := (recoveredBlock425Stack4) key.
            recoveredBlock425PC := 461.
        ].
        recoveredBlock425Step = 461 ifTrue: [
            recoveredBlock425Stack3 := (recoveredBlock425Stack3) at: (recoveredBlock425Stack4).
            recoveredBlock425PC := 463.
        ].
        recoveredBlock425Step = 463 ifTrue: [
            recoveredBlock425Stack1 := (recoveredBlock425Stack1) at: (recoveredBlock425Stack2) put: (recoveredBlock425Stack3).
            recoveredBlock425PC := 465.
        ].
        recoveredBlock425Step = 465 ifTrue: [
            recoveredBlock425PC := 490.
        ].
        recoveredBlock425Step = 468 ifTrue: [
            recoveredBlock425Stack1 := 'Kli'.
            recoveredBlock425PC := 470.
        ].
        recoveredBlock425Step = 470 ifTrue: [
            recoveredBlock425Stack2 := 'Call_2010404077'.
            recoveredBlock425PC := 472.
        ].
        recoveredBlock425Step = 472 ifTrue: [
            recoveredBlock425Stack1 := (recoveredBlock425Stack1) == (recoveredBlock425Stack2).
            recoveredBlock425PC := 473.
        ].
        recoveredBlock425Step = 473 ifTrue: [
            recoveredBlock425PC := 474.
        ].
        recoveredBlock425Step = 474 ifTrue: [
            recoveredBlock425Stack1 := recoveredLocal4.
            recoveredBlock425PC := 477.
        ].
        recoveredBlock425Step = 477 ifTrue: [
            recoveredBlock425Stack2 := recoveredBlock425Arg1.
            recoveredBlock425PC := 478.
        ].
        recoveredBlock425Step = 478 ifTrue: [
            recoveredBlock425Stack2 := (recoveredBlock425Stack2) key.
            recoveredBlock425PC := 480.
        ].
        recoveredBlock425Step = 480 ifTrue: [
            recoveredBlock425Stack3 := self.
            recoveredBlock425PC := 481.
        ].
        recoveredBlock425Step = 481 ifTrue: [
            recoveredBlock425Stack3 := (recoveredBlock425Stack3) sequences.
            recoveredBlock425PC := 483.
        ].
        recoveredBlock425Step = 483 ifTrue: [
            recoveredBlock425Stack4 := recoveredBlock425Arg1.
            recoveredBlock425PC := 484.
        ].
        recoveredBlock425Step = 484 ifTrue: [
            recoveredBlock425Stack4 := (recoveredBlock425Stack4) key.
            recoveredBlock425PC := 486.
        ].
        recoveredBlock425Step = 486 ifTrue: [
            recoveredBlock425Stack3 := (recoveredBlock425Stack3) at: (recoveredBlock425Stack4).
            recoveredBlock425PC := 488.
        ].
        recoveredBlock425Step = 488 ifTrue: [
            recoveredBlock425Stack1 := (recoveredBlock425Stack1) at: (recoveredBlock425Stack2) put: (recoveredBlock425Stack3).
            recoveredBlock425PC := 490.
        ].
        recoveredBlock425Step = 490 ifTrue: [
            recoveredBlock425Result := recoveredBlock425Stack1.
            recoveredBlock425Done := true.
        ].
    ].
    recoveredBlock425Result
].
            recoveredPC := 491.
        ].
        recoveredStep = 491 ifTrue: [
            (recoveredStack0) associationsDo: (recoveredStack1).
            recoveredPC := 493.
        ].
        recoveredStep = 493 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 496.
        ].
        recoveredStep = 496 ifTrue: [
            recoveredStack0 := (recoveredStack0) notEmpty.
            recoveredPC := 498.
        ].
        recoveredStep = 498 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 502] ifFalse: [recoveredPC := 508].
        ].
        recoveredStep = 502 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 503.
        ].
        recoveredStep = 503 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 506.
        ].
        recoveredStep = 506 ifTrue: [
            (recoveredStack0) sequences: (recoveredStack1).
            recoveredPC := 508.
        ].
        recoveredStep = 508 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 509.
        ].
        recoveredStep = 509 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2064e438; bytecode file offset 0xf4adec"
!SGMemoryBlockDB methodsFor: 'recovered'!
checkLogic: recoveredArg1 specification: recoveredArg2 errorBlock: recoveredArg3
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) ownerSGClass.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack2 := (recoveredStack2) aliasName.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := (recoveredStack1) elementAliasName: (recoveredStack2).
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredLocal2 := recoveredStack2.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 25] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := ETASError.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack2 := 'element not defined'.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := (recoveredStack1) create: (recoveredStack2).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := (recoveredStack1) sgClass.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredLocal3 := recoveredStack2.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 52] ifFalse: [recoveredPC := 38].
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := ETASError.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack2 := 'unreadable class for element '.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack3 := recoveredLocal2.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack3 := (recoveredStack3) sgClassLabel.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack2 := (recoveredStack2) , (recoveredStack3).
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack1 := (recoveredStack1) create: (recoveredStack2).
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack1 := (recoveredStack1) isRecord.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 60] ifFalse: [recoveredPC := 62].
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack1 := (recoveredStack1) isClientServerInterface.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 70] ifFalse: [recoveredPC := 72].
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack1 := (recoveredStack1) isARDataInterface.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 80] ifFalse: [recoveredPC := 82].
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack1 := (recoveredStack1) isPrimitive.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 90] ifFalse: [recoveredPC := 98].
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredStack1 := (recoveredStack1) methods.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredPC := 103.
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            recoveredStack1 := (recoveredStack1) getCompleteMethodListForGraphics.
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            recoveredStack2 := [:recoveredBlock109Arg1 | 
    | recoveredBlock109Local1 recoveredBlock109Local2 recoveredBlock109Local3 recoveredBlock109Local4 recoveredBlock109Stack0 recoveredBlock109Stack1 recoveredBlock109Stack2 recoveredBlock109Stack3 recoveredBlock109Stack4 recoveredBlock109Stack5 recoveredBlock109PC recoveredBlock109Step recoveredBlock109Done recoveredBlock109Result |
    recoveredBlock109Stack0 := self.
    recoveredBlock109PC := 116.
    recoveredBlock109Done := false.
    [recoveredBlock109Done not] whileTrue: [
        recoveredBlock109Step := recoveredBlock109PC.
        recoveredBlock109Step = 116 ifTrue: [
            recoveredBlock109Stack1 := nil.
            recoveredBlock109PC := 117.
        ].
        recoveredBlock109Step = 117 ifTrue: [
            recoveredBlock109Stack2 := recoveredArg1.
            recoveredBlock109PC := 120.
        ].
        recoveredBlock109Step = 120 ifTrue: [
            recoveredBlock109Stack2 := (recoveredBlock109Stack2) interface.
            recoveredBlock109PC := 122.
        ].
        recoveredBlock109Step = 122 ifTrue: [
            recoveredBlock109Stack3 := [:recoveredBlock109Block122Arg1 | 
    | recoveredBlock109Block122Value0 recoveredBlock109Block122Value1 recoveredBlock109Block122Value2 recoveredBlock109Block122Value3 recoveredBlock109Block122Value4 |
    recoveredBlock109Block122Value0 := recoveredBlock109Block122Arg1.
    recoveredBlock109Block122Value1 := (recoveredBlock109Block122Value0) aliasName.
    recoveredBlock109Block122Value2 := recoveredBlock109Arg1.
    recoveredBlock109Block122Value3 := (recoveredBlock109Block122Value2) aliasName.
    recoveredBlock109Block122Value4 := (recoveredBlock109Block122Value1) equals: (recoveredBlock109Block122Value3).
    recoveredBlock109Block122Value4
].
            recoveredBlock109PC := 137.
        ].
        recoveredBlock109Step = 137 ifTrue: [
            recoveredBlock109Stack2 := (recoveredBlock109Stack2) select: (recoveredBlock109Stack3).
            recoveredBlock109PC := 139.
        ].
        recoveredBlock109Step = 139 ifTrue: [
            recoveredBlock109Stack3 := recoveredBlock109Stack2.
            recoveredBlock109PC := 140.
        ].
        recoveredBlock109Step = 140 ifTrue: [
            recoveredBlock109Local2 := recoveredBlock109Stack3.
            recoveredBlock109PC := 143.
        ].
        recoveredBlock109Step = 143 ifTrue: [
            recoveredBlock109Stack2 := (recoveredBlock109Stack2) isEmpty.
            recoveredBlock109PC := 145.
        ].
        recoveredBlock109Step = 145 ifTrue: [
            (recoveredBlock109Stack2) ifTrue: [recoveredBlock109PC := 775] ifFalse: [recoveredBlock109PC := 148].
        ].
        recoveredBlock109Step = 148 ifTrue: [
            recoveredBlock109PC := 149.
        ].
        recoveredBlock109Step = 149 ifTrue: [
            recoveredBlock109Stack1 := recoveredBlock109Local2.
            recoveredBlock109PC := 152.
        ].
        recoveredBlock109Step = 152 ifTrue: [
            recoveredBlock109Stack1 := (recoveredBlock109Stack1) size.
            recoveredBlock109PC := 154.
        ].
        recoveredBlock109Step = 154 ifTrue: [
            recoveredBlock109Stack2 := 1.
            recoveredBlock109PC := 156.
        ].
        recoveredBlock109Step = 156 ifTrue: [
            recoveredBlock109Stack1 := (recoveredBlock109Stack1) = (recoveredBlock109Stack2).
            recoveredBlock109PC := 157.
        ].
        recoveredBlock109Step = 157 ifTrue: [
            (recoveredBlock109Stack1) ifTrue: [recoveredBlock109PC := 160] ifFalse: [recoveredBlock109PC := 168].
        ].
        recoveredBlock109Step = 160 ifTrue: [
            recoveredBlock109Stack1 := recoveredBlock109Local2.
            recoveredBlock109PC := 163.
        ].
        recoveredBlock109Step = 163 ifTrue: [
            recoveredBlock109Stack1 := (recoveredBlock109Stack1) someElement.
            recoveredBlock109PC := 165.
        ].
        recoveredBlock109Step = 165 ifTrue: [
            recoveredBlock109PC := 248.
        ].
        recoveredBlock109Step = 168 ifTrue: [
            recoveredBlock109Stack1 := recoveredBlock109Arg1.
            recoveredBlock109PC := 171.
        ].
        recoveredBlock109Step = 171 ifTrue: [
            recoveredBlock109Stack1 := (recoveredBlock109Stack1) hasReturnValue.
            recoveredBlock109PC := 173.
        ].
        recoveredBlock109Step = 173 ifTrue: [
            (recoveredBlock109Stack1) ifTrue: [recoveredBlock109PC := 176] ifFalse: [recoveredBlock109PC := 214].
        ].
        recoveredBlock109Step = 176 ifTrue: [
            recoveredBlock109Stack1 := recoveredBlock109Local2.
            recoveredBlock109PC := 179.
        ].
        recoveredBlock109Step = 179 ifTrue: [
            recoveredBlock109Stack2 := [:block28122a88Arg1 | 
    | block28122a88Value0 block28122a88Value1 |
    block28122a88Value0 := block28122a88Arg1.
    block28122a88Value1 := (block28122a88Value0) isBdlOutputPort.
    block28122a88Value1
].
            recoveredBlock109PC := 181.
        ].
        recoveredBlock109Step = 181 ifTrue: [
            recoveredBlock109PC := 188.
        ].
        recoveredBlock109Step = 188 ifTrue: [
            recoveredBlock109Stack3 := [
    | recoveredBlock109Block188Value0 recoveredBlock109Block188Value1 recoveredBlock109Block188Value2 recoveredBlock109Block188Value3 recoveredBlock109Block188Value4 |
    recoveredBlock109Block188Value0 := ETASError.
    recoveredBlock109Block188Value1 := recoveredLocal2.
    recoveredBlock109Block188Value2 := (recoveredBlock109Block188Value1) sgClassLabel.
    recoveredBlock109Block188Value3 := ('logic pendant not found') , (recoveredBlock109Block188Value2).
    recoveredBlock109Block188Value4 := (recoveredBlock109Block188Value0) create: (recoveredBlock109Block188Value3).
    ^recoveredBlock109Block188Value4
].
            recoveredBlock109PC := 208.
        ].
        recoveredBlock109Step = 208 ifTrue: [
            recoveredBlock109Stack1 := (recoveredBlock109Stack1) detect: (recoveredBlock109Stack2) ifNone: (recoveredBlock109Stack3).
            recoveredBlock109PC := 210.
        ].
        recoveredBlock109Step = 210 ifTrue: [
            recoveredBlock109PC := 248.
        ].
        recoveredBlock109Step = 214 ifTrue: [
            recoveredBlock109Stack1 := recoveredBlock109Local2.
            recoveredBlock109PC := 217.
        ].
        recoveredBlock109Step = 217 ifTrue: [
            recoveredBlock109Stack2 := [:block28122aacArg1 | 
    | block28122aacValue0 block28122aacValue1 |
    block28122aacValue0 := block28122aacArg1.
    block28122aacValue1 := (block28122aacValue0) isBdlInputPort.
    block28122aacValue1
].
            recoveredBlock109PC := 219.
        ].
        recoveredBlock109Step = 219 ifTrue: [
            recoveredBlock109PC := 226.
        ].
        recoveredBlock109Step = 226 ifTrue: [
            recoveredBlock109Stack3 := [
    | recoveredBlock109Block226Value0 recoveredBlock109Block226Value1 recoveredBlock109Block226Value2 recoveredBlock109Block226Value3 recoveredBlock109Block226Value4 |
    recoveredBlock109Block226Value0 := ETASError.
    recoveredBlock109Block226Value1 := recoveredLocal2.
    recoveredBlock109Block226Value2 := (recoveredBlock109Block226Value1) sgClassLabel.
    recoveredBlock109Block226Value3 := ('logic pendant not found') , (recoveredBlock109Block226Value2).
    recoveredBlock109Block226Value4 := (recoveredBlock109Block226Value0) create: (recoveredBlock109Block226Value3).
    ^recoveredBlock109Block226Value4
].
            recoveredBlock109PC := 246.
        ].
        recoveredBlock109Step = 246 ifTrue: [
            recoveredBlock109Stack1 := (recoveredBlock109Stack1) detect: (recoveredBlock109Stack2) ifNone: (recoveredBlock109Stack3).
            recoveredBlock109PC := 248.
        ].
        recoveredBlock109Step = 248 ifTrue: [
            recoveredBlock109Local1 := recoveredBlock109Stack1.
            recoveredBlock109PC := 251.
        ].
        recoveredBlock109Step = 251 ifTrue: [
            recoveredBlock109Stack1 := nil.
            recoveredBlock109PC := 252.
        ].
        recoveredBlock109Step = 252 ifTrue: [
            recoveredBlock109Stack2 := recoveredBlock109Arg1.
            recoveredBlock109PC := 255.
        ].
        recoveredBlock109Step = 255 ifTrue: [
            recoveredBlock109Stack2 := (recoveredBlock109Stack2) hasReturnValue.
            recoveredBlock109PC := 257.
        ].
        recoveredBlock109Step = 257 ifTrue: [
            (recoveredBlock109Stack2) ifTrue: [recoveredBlock109PC := 334] ifFalse: [recoveredBlock109PC := 260].
        ].
        recoveredBlock109Step = 260 ifTrue: [
            recoveredBlock109Stack2 := recoveredLocal2.
            recoveredBlock109PC := 263.
        ].
        recoveredBlock109Step = 263 ifTrue: [
            recoveredBlock109Stack3 := recoveredBlock109Arg1.
            recoveredBlock109PC := 266.
        ].
        recoveredBlock109Step = 266 ifTrue: [
            recoveredBlock109Stack2 := (recoveredBlock109Stack2) showInputMethod: (recoveredBlock109Stack3).
            recoveredBlock109PC := 268.
        ].
        recoveredBlock109Step = 268 ifTrue: [
            (recoveredBlock109Stack2) ifTrue: [recoveredBlock109PC := 276] ifFalse: [recoveredBlock109PC := 272].
        ].
        recoveredBlock109Step = 272 ifTrue: [
            recoveredBlock109Stack2 := nil.
            recoveredBlock109PC := 273.
        ].
        recoveredBlock109Step = 273 ifTrue: [
            recoveredBlock109PC := 330.
        ].
        recoveredBlock109Step = 276 ifTrue: [
            recoveredBlock109Stack2 := self.
            recoveredBlock109PC := 277.
        ].
        recoveredBlock109Step = 277 ifTrue: [
            recoveredBlock109Stack2 := (recoveredBlock109Stack2) selectorPorts.
            recoveredBlock109PC := 279.
        ].
        recoveredBlock109Step = 279 ifTrue: [
            recoveredBlock109Stack3 := recoveredBlock109Arg1.
            recoveredBlock109PC := 282.
        ].
        recoveredBlock109Step = 282 ifTrue: [
            recoveredBlock109Stack3 := (recoveredBlock109Stack3) aliasName.
            recoveredBlock109PC := 283.
        ].
        recoveredBlock109Step = 283 ifTrue: [
            recoveredBlock109Stack4 := [
    | recoveredBlock109Block283Value0 recoveredBlock109Block283Value1 recoveredBlock109Block283Value2 recoveredBlock109Block283Value3 |
    recoveredBlock109Block283Value0 := (self) returnPorts.
    recoveredBlock109Block283Value1 := recoveredBlock109Arg1.
    recoveredBlock109Block283Value2 := (recoveredBlock109Block283Value1) aliasName.
    recoveredBlock109Block283Value3 := [:recoveredBlock109Block283Block296Arg1 | 
    | recoveredBlock109Block283Block296Value0 recoveredBlock109Block283Block296Value1 recoveredBlock109Block283Block296Value2 recoveredBlock109Block283Block296Value3 recoveredBlock109Block283Block296Value4 recoveredBlock109Block283Block296Value5 recoveredBlock109Block283Block296Value6 |
    recoveredBlock109Block283Block296Value0 := recoveredArg3.
    recoveredBlock109Block283Block296Value1 := recoveredArg1.
    recoveredBlock109Block283Block296Value2 := recoveredBlock109Arg1.
    recoveredBlock109Block283Block296Value3 := (recoveredBlock109Block283Block296Value2) completeName.
    recoveredBlock109Block283Block296Value4 := ('Call to void function ') , (recoveredBlock109Block283Block296Value3).
    recoveredBlock109Block283Block296Value5 := (recoveredBlock109Block283Block296Value4) , (' where return value is required').
    recoveredBlock109Block283Block296Value6 := (recoveredBlock109Block283Block296Value0) value: (recoveredBlock109Block283Block296Value1) value: (recoveredBlock109Block283Block296Value5).
    recoveredBlock109Block283Block296Value6
].
    (recoveredBlock109Block283Value0) at: (recoveredBlock109Block283Value2) ifPresent: (recoveredBlock109Block283Value3).
    nil
].
            recoveredBlock109PC := 328.
        ].
        recoveredBlock109Step = 328 ifTrue: [
            recoveredBlock109Stack2 := (recoveredBlock109Stack2) at: (recoveredBlock109Stack3) ifAbsent: (recoveredBlock109Stack4).
            recoveredBlock109PC := 330.
        ].
        recoveredBlock109Step = 330 ifTrue: [
            recoveredBlock109PC := 400.
        ].
        recoveredBlock109Step = 334 ifTrue: [
            recoveredBlock109Stack2 := recoveredLocal2.
            recoveredBlock109PC := 337.
        ].
        recoveredBlock109Step = 337 ifTrue: [
            recoveredBlock109Stack2 := (recoveredBlock109Stack2) showOutputMethod.
            recoveredBlock109PC := 339.
        ].
        recoveredBlock109Step = 339 ifTrue: [
            (recoveredBlock109Stack2) ifTrue: [recoveredBlock109PC := 346] ifFalse: [recoveredBlock109PC := 342].
        ].
        recoveredBlock109Step = 342 ifTrue: [
            recoveredBlock109Stack2 := nil.
            recoveredBlock109PC := 343.
        ].
        recoveredBlock109Step = 343 ifTrue: [
            recoveredBlock109PC := 400.
        ].
        recoveredBlock109Step = 346 ifTrue: [
            recoveredBlock109Stack2 := self.
            recoveredBlock109PC := 347.
        ].
        recoveredBlock109Step = 347 ifTrue: [
            recoveredBlock109Stack2 := (recoveredBlock109Stack2) returnPorts.
            recoveredBlock109PC := 349.
        ].
        recoveredBlock109Step = 349 ifTrue: [
            recoveredBlock109Stack3 := recoveredBlock109Arg1.
            recoveredBlock109PC := 352.
        ].
        recoveredBlock109Step = 352 ifTrue: [
            recoveredBlock109Stack3 := (recoveredBlock109Stack3) aliasName.
            recoveredBlock109PC := 353.
        ].
        recoveredBlock109Step = 353 ifTrue: [
            recoveredBlock109Stack4 := [
    | recoveredBlock109Block353Value0 recoveredBlock109Block353Value1 recoveredBlock109Block353Value2 recoveredBlock109Block353Value3 |
    recoveredBlock109Block353Value0 := (self) selectorPorts.
    recoveredBlock109Block353Value1 := recoveredBlock109Arg1.
    recoveredBlock109Block353Value2 := (recoveredBlock109Block353Value1) aliasName.
    recoveredBlock109Block353Value3 := [:recoveredBlock109Block353Block366Arg1 | 
    | recoveredBlock109Block353Block366Value0 recoveredBlock109Block353Block366Value1 recoveredBlock109Block353Block366Value2 recoveredBlock109Block353Block366Value3 recoveredBlock109Block353Block366Value4 recoveredBlock109Block353Block366Value5 recoveredBlock109Block353Block366Value6 |
    recoveredBlock109Block353Block366Value0 := recoveredArg3.
    recoveredBlock109Block353Block366Value1 := recoveredArg1.
    recoveredBlock109Block353Block366Value2 := recoveredBlock109Arg1.
    recoveredBlock109Block353Block366Value3 := (recoveredBlock109Block353Block366Value2) completeName.
    recoveredBlock109Block353Block366Value4 := ('Call to function ') , (recoveredBlock109Block353Block366Value3).
    recoveredBlock109Block353Block366Value5 := (recoveredBlock109Block353Block366Value4) , (' without using the return value').
    recoveredBlock109Block353Block366Value6 := (recoveredBlock109Block353Block366Value0) value: (recoveredBlock109Block353Block366Value1) value: (recoveredBlock109Block353Block366Value5).
    recoveredBlock109Block353Block366Value6
].
    (recoveredBlock109Block353Value0) at: (recoveredBlock109Block353Value2) ifPresent: (recoveredBlock109Block353Value3).
    nil
].
            recoveredBlock109PC := 398.
        ].
        recoveredBlock109Step = 398 ifTrue: [
            recoveredBlock109Stack2 := (recoveredBlock109Stack2) at: (recoveredBlock109Stack3) ifAbsent: (recoveredBlock109Stack4).
            recoveredBlock109PC := 400.
        ].
        recoveredBlock109Step = 400 ifTrue: [
            recoveredBlock109Stack3 := recoveredBlock109Stack2.
            recoveredBlock109PC := 401.
        ].
        recoveredBlock109Step = 401 ifTrue: [
            recoveredBlock109Local4 := recoveredBlock109Stack3.
            recoveredBlock109PC := 404.
        ].
        recoveredBlock109Step = 404 ifTrue: [
            (recoveredBlock109Stack2 == nil) ifTrue: [recoveredBlock109PC := 775] ifFalse: [recoveredBlock109PC := 408].
        ].
        recoveredBlock109Step = 408 ifTrue: [
            recoveredBlock109PC := 409.
        ].
        recoveredBlock109Step = 409 ifTrue: [
            recoveredBlock109Stack1 := recoveredBlock109Arg1.
            recoveredBlock109PC := 412.
        ].
        recoveredBlock109Step = 412 ifTrue: [
            recoveredBlock109Stack1 := (recoveredBlock109Stack1) arguments.
            recoveredBlock109PC := 414.
        ].
        recoveredBlock109Step = 414 ifTrue: [
            recoveredBlock109Local3 := recoveredBlock109Stack1.
            recoveredBlock109PC := 417.
        ].
        recoveredBlock109Step = 417 ifTrue: [
            recoveredBlock109Stack1 := recoveredBlock109Arg1.
            recoveredBlock109PC := 420.
        ].
        recoveredBlock109Step = 420 ifTrue: [
            recoveredBlock109Stack1 := (recoveredBlock109Stack1) returnValue.
            recoveredBlock109PC := 422.
        ].
        recoveredBlock109Step = 422 ifTrue: [
            recoveredBlock109Stack2 := [:recoveredBlock109Block422Arg1 | 
    | recoveredBlock109Block422Value0 recoveredBlock109Block422Value1 recoveredBlock109Block422Value2 recoveredBlock109Block422Value3 |
    recoveredBlock109Block422Value0 := recoveredBlock109Local3.
    recoveredBlock109Block422Value1 := recoveredBlock109Block422Arg1.
    recoveredBlock109Block422Value2 := (recoveredBlock109Block422Value0) copyWith: (recoveredBlock109Block422Value1).
    recoveredBlock109Block422Value3 := recoveredBlock109Block422Value2.
    recoveredBlock109Local3 := recoveredBlock109Block422Value3.
    recoveredBlock109Block422Value2
].
            recoveredBlock109PC := 439.
        ].
        recoveredBlock109Step = 439 ifTrue: [
            (recoveredBlock109Stack1) ifNotNil: (recoveredBlock109Stack2).
            recoveredBlock109PC := 441.
        ].
        recoveredBlock109Step = 441 ifTrue: [
            recoveredBlock109Stack1 := recoveredBlock109Local3.
            recoveredBlock109PC := 444.
        ].
        recoveredBlock109Step = 444 ifTrue: [
            recoveredBlock109Stack2 := [:recoveredBlock109Block444Arg1 :recoveredBlock109Block444Arg2 | 
    | recoveredBlock109Block444Local1 recoveredBlock109Block444Local2 recoveredBlock109Block444Stack0 recoveredBlock109Block444Stack1 recoveredBlock109Block444Stack2 recoveredBlock109Block444Stack3 recoveredBlock109Block444Stack4 recoveredBlock109Block444Stack5 recoveredBlock109Block444PC recoveredBlock109Block444Step recoveredBlock109Block444Done recoveredBlock109Block444Result |
    recoveredBlock109Block444Stack0 := nil.
    recoveredBlock109Block444PC := 450.
    recoveredBlock109Block444Done := false.
    [recoveredBlock109Block444Done not] whileTrue: [
        recoveredBlock109Block444Step := recoveredBlock109Block444PC.
        recoveredBlock109Block444Step = 450 ifTrue: [
            recoveredBlock109Block444Stack1 := nil.
            recoveredBlock109Block444PC := 451.
        ].
        recoveredBlock109Block444Step = 451 ifTrue: [
            recoveredBlock109Block444Stack2 := recoveredBlock109Local4.
            recoveredBlock109Block444PC := 454.
        ].
        recoveredBlock109Block444Step = 454 ifTrue: [
            recoveredBlock109Block444Stack3 := recoveredBlock109Block444Arg1.
            recoveredBlock109Block444PC := 457.
        ].
        recoveredBlock109Block444Step = 457 ifTrue: [
            recoveredBlock109Block444Stack3 := (recoveredBlock109Block444Stack3) aliasName.
            recoveredBlock109Block444PC := 458.
        ].
        recoveredBlock109Block444Step = 458 ifTrue: [
            recoveredBlock109Block444Stack4 := [
    | recoveredBlock109Block444Block458Value0 recoveredBlock109Block444Block458Value1 recoveredBlock109Block444Block458Value2 recoveredBlock109Block444Block458Value3 recoveredBlock109Block444Block458Value4 recoveredBlock109Block444Block458Value5 recoveredBlock109Block444Block458Value6 recoveredBlock109Block444Block458Value7 recoveredBlock109Block444Block458Value8 recoveredBlock109Block444Block458Value9 recoveredBlock109Block444Block458Value10 recoveredBlock109Block444Block458Value11 |
    recoveredBlock109Block444Block458Value0 := recoveredArg3.
    recoveredBlock109Block444Block458Value1 := recoveredArg1.
    recoveredBlock109Block444Block458Value2 := recoveredLocal2.
    recoveredBlock109Block444Block458Value3 := (recoveredBlock109Block444Block458Value2) typeLabel.
    recoveredBlock109Block444Block458Value4 := (recoveredBlock109Block444Block458Value3) , (' - graphical pin for alias not found ').
    recoveredBlock109Block444Block458Value5 := recoveredBlock109Block444Arg1.
    recoveredBlock109Block444Block458Value6 := (recoveredBlock109Block444Block458Value5) labelInCompleteName.
    recoveredBlock109Block444Block458Value7 := (recoveredBlock109Block444Block458Value4) , (recoveredBlock109Block444Block458Value6).
    recoveredBlock109Block444Block458Value8 := (recoveredBlock109Block444Block458Value7) , (' in method ').
    recoveredBlock109Block444Block458Value9 := recoveredBlock109Arg1.
    recoveredBlock109Block444Block458Value10 := (recoveredBlock109Block444Block458Value9) completeName.
    recoveredBlock109Block444Block458Value11 := (recoveredBlock109Block444Block458Value8) , (recoveredBlock109Block444Block458Value10).
    (recoveredBlock109Block444Block458Value0) value: (recoveredBlock109Block444Block458Value1) value: (recoveredBlock109Block444Block458Value11).
    nil
].
            recoveredBlock109Block444PC := 501.
        ].
        recoveredBlock109Block444Step = 501 ifTrue: [
            recoveredBlock109Block444Stack2 := (recoveredBlock109Block444Stack2) at: (recoveredBlock109Block444Stack3) ifAbsent: (recoveredBlock109Block444Stack4).
            recoveredBlock109Block444PC := 503.
        ].
        recoveredBlock109Block444Step = 503 ifTrue: [
            recoveredBlock109Block444Stack3 := recoveredBlock109Block444Stack2.
            recoveredBlock109Block444PC := 504.
        ].
        recoveredBlock109Block444Step = 504 ifTrue: [
            recoveredBlock109Block444Local2 := recoveredBlock109Block444Stack3.
            recoveredBlock109Block444PC := 507.
        ].
        recoveredBlock109Block444Step = 507 ifTrue: [
            (recoveredBlock109Block444Stack2 == nil) ifTrue: [recoveredBlock109Block444PC := 770] ifFalse: [recoveredBlock109Block444PC := 510].
        ].
        recoveredBlock109Block444Step = 510 ifTrue: [
            recoveredBlock109Block444PC := 511.
        ].
        recoveredBlock109Block444Step = 511 ifTrue: [
            recoveredBlock109Block444Stack1 := nil.
            recoveredBlock109Block444PC := 512.
        ].
        recoveredBlock109Block444Step = 512 ifTrue: [
            recoveredBlock109Block444Stack2 := recoveredBlock109Block444Local2.
            recoveredBlock109Block444PC := 515.
        ].
        recoveredBlock109Block444Step = 515 ifTrue: [
            recoveredBlock109Block444Stack3 := 4.
            recoveredBlock109Block444PC := 517.
        ].
        recoveredBlock109Block444Step = 517 ifTrue: [
            recoveredBlock109Block444Stack4 := [
    true
].
            recoveredBlock109Block444PC := 519.
        ].
        recoveredBlock109Block444Step = 519 ifTrue: [
            recoveredBlock109Block444PC := 524.
        ].
        recoveredBlock109Block444Step = 524 ifTrue: [
            recoveredBlock109Block444Stack2 := (recoveredBlock109Block444Stack2) at: (recoveredBlock109Block444Stack3) ifAbsent: (recoveredBlock109Block444Stack4).
            recoveredBlock109Block444PC := 526.
        ].
        recoveredBlock109Block444Step = 526 ifTrue: [
            (recoveredBlock109Block444Stack2) ifTrue: [recoveredBlock109Block444PC := 530] ifFalse: [recoveredBlock109Block444PC := 770].
        ].
        recoveredBlock109Block444Step = 530 ifTrue: [
            recoveredBlock109Block444PC := 531.
        ].
        recoveredBlock109Block444Step = 531 ifTrue: [
            recoveredBlock109Block444Stack1 := recoveredBlock109Block444Arg1.
            recoveredBlock109Block444PC := 534.
        ].
        recoveredBlock109Block444Step = 534 ifTrue: [
            recoveredBlock109Block444Stack1 := (recoveredBlock109Block444Stack1) isArgument.
            recoveredBlock109Block444PC := 536.
        ].
        recoveredBlock109Block444Step = 536 ifTrue: [
            (recoveredBlock109Block444Stack1) ifTrue: [recoveredBlock109Block444PC := 556] ifFalse: [recoveredBlock109Block444PC := 540].
        ].
        recoveredBlock109Block444Step = 540 ifTrue: [
            recoveredBlock109Block444Stack1 := recoveredBlock109Block444Arg1.
            recoveredBlock109Block444PC := 543.
        ].
        recoveredBlock109Block444Step = 543 ifTrue: [
            recoveredBlock109Block444Stack1 := (recoveredBlock109Block444Stack1) isReturn.
            recoveredBlock109Block444PC := 545.
        ].
        recoveredBlock109Block444Step = 545 ifTrue: [
            (recoveredBlock109Block444Stack1) ifTrue: [recoveredBlock109Block444PC := 570] ifFalse: [recoveredBlock109Block444PC := 548].
        ].
        recoveredBlock109Block444Step = 548 ifTrue: [
            recoveredBlock109Block444Stack1 := recoveredBlock109Arg1.
            recoveredBlock109Block444PC := 551.
        ].
        recoveredBlock109Block444Step = 551 ifTrue: [
            recoveredBlock109Block444Stack1 := (recoveredBlock109Block444Stack1) hasReturnValue.
            recoveredBlock109Block444PC := 553.
        ].
        recoveredBlock109Block444Step = 553 ifTrue: [
            (recoveredBlock109Block444Stack1) ifTrue: [recoveredBlock109Block444PC := 570] ifFalse: [recoveredBlock109Block444PC := 556].
        ].
        recoveredBlock109Block444Step = 556 ifTrue: [
            recoveredBlock109Block444Stack1 := recoveredBlock109Local1.
            recoveredBlock109Block444PC := 559.
        ].
        recoveredBlock109Block444Step = 559 ifTrue: [
            recoveredBlock109Block444Stack1 := (recoveredBlock109Block444Stack1) interfaceElements.
            recoveredBlock109Block444PC := 561.
        ].
        recoveredBlock109Block444Step = 561 ifTrue: [
            recoveredBlock109Block444Stack2 := recoveredBlock109Block444Arg2.
            recoveredBlock109Block444PC := 564.
        ].
        recoveredBlock109Block444Step = 564 ifTrue: [
            recoveredBlock109Block444Stack2 := (recoveredBlock109Block444Stack2) + (1).
            recoveredBlock109Block444PC := 565.
        ].
        recoveredBlock109Block444Step = 565 ifTrue: [
            recoveredBlock109Block444Stack1 := (recoveredBlock109Block444Stack1) at: (recoveredBlock109Block444Stack2).
            recoveredBlock109Block444PC := 567.
        ].
        recoveredBlock109Block444Step = 567 ifTrue: [
            recoveredBlock109Block444PC := 579.
        ].
        recoveredBlock109Block444Step = 570 ifTrue: [
            recoveredBlock109Block444Stack1 := recoveredBlock109Local1.
            recoveredBlock109Block444PC := 573.
        ].
        recoveredBlock109Block444Step = 573 ifTrue: [
            recoveredBlock109Block444Stack1 := (recoveredBlock109Block444Stack1) interfaceElements.
            recoveredBlock109Block444PC := 575.
        ].
        recoveredBlock109Block444Step = 575 ifTrue: [
            recoveredBlock109Block444Stack2 := 1.
            recoveredBlock109Block444PC := 577.
        ].
        recoveredBlock109Block444Step = 577 ifTrue: [
            recoveredBlock109Block444Stack1 := (recoveredBlock109Block444Stack1) at: (recoveredBlock109Block444Stack2).
            recoveredBlock109Block444PC := 579.
        ].
        recoveredBlock109Block444Step = 579 ifTrue: [
            recoveredBlock109Block444Local1 := recoveredBlock109Block444Stack1.
            recoveredBlock109Block444PC := 582.
        ].
        recoveredBlock109Block444Step = 582 ifTrue: [
            recoveredBlock109Block444Stack1 := recoveredBlock109Arg1.
            recoveredBlock109Block444PC := 585.
        ].
        recoveredBlock109Block444Step = 585 ifTrue: [
            recoveredBlock109Block444Stack1 := (recoveredBlock109Block444Stack1) isGetSetMethodForElement.
            recoveredBlock109Block444PC := 587.
        ].
        recoveredBlock109Block444Step = 587 ifTrue: [
            (recoveredBlock109Block444Stack1) ifTrue: [recoveredBlock109Block444PC := 639] ifFalse: [recoveredBlock109Block444PC := 590].
        ].
        recoveredBlock109Block444Step = 590 ifTrue: [
            recoveredBlock109Block444Stack1 := recoveredBlock109Block444Local1.
            recoveredBlock109Block444PC := 593.
        ].
        recoveredBlock109Block444Step = 593 ifTrue: [
            recoveredBlock109Block444Stack1 := (recoveredBlock109Block444Stack1) dataModelAliasName.
            recoveredBlock109Block444PC := 595.
        ].
        recoveredBlock109Block444Step = 595 ifTrue: [
            recoveredBlock109Block444Stack2 := recoveredBlock109Block444Arg1.
            recoveredBlock109Block444PC := 598.
        ].
        recoveredBlock109Block444Step = 598 ifTrue: [
            recoveredBlock109Block444Stack2 := (recoveredBlock109Block444Stack2) aliasName.
            recoveredBlock109Block444PC := 599.
        ].
        recoveredBlock109Block444Step = 599 ifTrue: [
            recoveredBlock109Block444Stack1 := (recoveredBlock109Block444Stack1) equals: (recoveredBlock109Block444Stack2).
            recoveredBlock109Block444PC := 601.
        ].
        recoveredBlock109Block444Step = 601 ifTrue: [
            (recoveredBlock109Block444Stack1) ifTrue: [recoveredBlock109Block444PC := 639] ifFalse: [recoveredBlock109Block444PC := 604].
        ].
        recoveredBlock109Block444Step = 604 ifTrue: [
            recoveredBlock109Block444Stack1 := recoveredArg3.
            recoveredBlock109Block444PC := 607.
        ].
        recoveredBlock109Block444Step = 607 ifTrue: [
            recoveredBlock109Block444Stack2 := recoveredArg1.
            recoveredBlock109Block444PC := 610.
        ].
        recoveredBlock109Block444Step = 610 ifTrue: [
            recoveredBlock109Block444Stack3 := recoveredLocal2.
            recoveredBlock109Block444PC := 613.
        ].
        recoveredBlock109Block444Step = 613 ifTrue: [
            recoveredBlock109Block444Stack3 := (recoveredBlock109Block444Stack3) typeLabel.
            recoveredBlock109Block444PC := 615.
        ].
        recoveredBlock109Block444Step = 615 ifTrue: [
            recoveredBlock109Block444Stack4 := ' - alias name inconsistent for argument '.
            recoveredBlock109Block444PC := 617.
        ].
        recoveredBlock109Block444Step = 617 ifTrue: [
            recoveredBlock109Block444Stack3 := (recoveredBlock109Block444Stack3) , (recoveredBlock109Block444Stack4).
            recoveredBlock109Block444PC := 619.
        ].
        recoveredBlock109Block444Step = 619 ifTrue: [
            recoveredBlock109Block444Stack4 := recoveredBlock109Block444Arg1.
            recoveredBlock109Block444PC := 622.
        ].
        recoveredBlock109Block444Step = 622 ifTrue: [
            recoveredBlock109Block444Stack4 := (recoveredBlock109Block444Stack4) labelInCompleteName.
            recoveredBlock109Block444PC := 624.
        ].
        recoveredBlock109Block444Step = 624 ifTrue: [
            recoveredBlock109Block444Stack3 := (recoveredBlock109Block444Stack3) , (recoveredBlock109Block444Stack4).
            recoveredBlock109Block444PC := 626.
        ].
        recoveredBlock109Block444Step = 626 ifTrue: [
            recoveredBlock109Block444Stack4 := ' in method '.
            recoveredBlock109Block444PC := 628.
        ].
        recoveredBlock109Block444Step = 628 ifTrue: [
            recoveredBlock109Block444Stack3 := (recoveredBlock109Block444Stack3) , (recoveredBlock109Block444Stack4).
            recoveredBlock109Block444PC := 630.
        ].
        recoveredBlock109Block444Step = 630 ifTrue: [
            recoveredBlock109Block444Stack4 := recoveredBlock109Arg1.
            recoveredBlock109Block444PC := 633.
        ].
        recoveredBlock109Block444Step = 633 ifTrue: [
            recoveredBlock109Block444Stack4 := (recoveredBlock109Block444Stack4) completeName.
            recoveredBlock109Block444PC := 635.
        ].
        recoveredBlock109Block444Step = 635 ifTrue: [
            recoveredBlock109Block444Stack3 := (recoveredBlock109Block444Stack3) , (recoveredBlock109Block444Stack4).
            recoveredBlock109Block444PC := 637.
        ].
        recoveredBlock109Block444Step = 637 ifTrue: [
            (recoveredBlock109Block444Stack1) value: (recoveredBlock109Block444Stack2) value: (recoveredBlock109Block444Stack3).
            recoveredBlock109Block444PC := 639.
        ].
        recoveredBlock109Block444Step = 639 ifTrue: [
            recoveredBlock109Block444Stack1 := recoveredBlock109Block444Local1.
            recoveredBlock109Block444PC := 642.
        ].
        recoveredBlock109Block444Step = 642 ifTrue: [
            recoveredBlock109Block444Stack1 := (recoveredBlock109Block444Stack1) externalConnector.
            recoveredBlock109Block444PC := 647.
        ].
        recoveredBlock109Block444Step = 647 ifTrue: [
            (recoveredBlock109Block444Stack1 ~~ nil) ifTrue: [recoveredBlock109Block444PC := 690] ifFalse: [recoveredBlock109Block444PC := 650].
        ].
        recoveredBlock109Block444Step = 650 ifTrue: [
            recoveredBlock109Block444Stack1 := recoveredArg3.
            recoveredBlock109Block444PC := 653.
        ].
        recoveredBlock109Block444Step = 653 ifTrue: [
            recoveredBlock109Block444Stack2 := recoveredArg1.
            recoveredBlock109Block444PC := 656.
        ].
        recoveredBlock109Block444Step = 656 ifTrue: [
            recoveredBlock109Block444Stack3 := recoveredLocal2.
            recoveredBlock109Block444PC := 659.
        ].
        recoveredBlock109Block444Step = 659 ifTrue: [
            recoveredBlock109Block444Stack3 := (recoveredBlock109Block444Stack3) typeLabel.
            recoveredBlock109Block444PC := 661.
        ].
        recoveredBlock109Block444Step = 661 ifTrue: [
            recoveredBlock109Block444Stack4 := ' - logic connector missing for argument '.
            recoveredBlock109Block444PC := 664.
        ].
        recoveredBlock109Block444Step = 664 ifTrue: [
            recoveredBlock109Block444Stack3 := (recoveredBlock109Block444Stack3) , (recoveredBlock109Block444Stack4).
            recoveredBlock109Block444PC := 666.
        ].
        recoveredBlock109Block444Step = 666 ifTrue: [
            recoveredBlock109Block444Stack4 := recoveredBlock109Block444Arg1.
            recoveredBlock109Block444PC := 669.
        ].
        recoveredBlock109Block444Step = 669 ifTrue: [
            recoveredBlock109Block444Stack4 := (recoveredBlock109Block444Stack4) labelInCompleteName.
            recoveredBlock109Block444PC := 671.
        ].
        recoveredBlock109Block444Step = 671 ifTrue: [
            recoveredBlock109Block444Stack3 := (recoveredBlock109Block444Stack3) , (recoveredBlock109Block444Stack4).
            recoveredBlock109Block444PC := 673.
        ].
        recoveredBlock109Block444Step = 673 ifTrue: [
            recoveredBlock109Block444Stack4 := ' in method '.
            recoveredBlock109Block444PC := 675.
        ].
        recoveredBlock109Block444Step = 675 ifTrue: [
            recoveredBlock109Block444Stack3 := (recoveredBlock109Block444Stack3) , (recoveredBlock109Block444Stack4).
            recoveredBlock109Block444PC := 677.
        ].
        recoveredBlock109Block444Step = 677 ifTrue: [
            recoveredBlock109Block444Stack4 := recoveredBlock109Arg1.
            recoveredBlock109Block444PC := 680.
        ].
        recoveredBlock109Block444Step = 680 ifTrue: [
            recoveredBlock109Block444Stack4 := (recoveredBlock109Block444Stack4) completeName.
            recoveredBlock109Block444PC := 682.
        ].
        recoveredBlock109Block444Step = 682 ifTrue: [
            recoveredBlock109Block444Stack3 := (recoveredBlock109Block444Stack3) , (recoveredBlock109Block444Stack4).
            recoveredBlock109Block444PC := 684.
        ].
        recoveredBlock109Block444Step = 684 ifTrue: [
            recoveredBlock109Block444Stack1 := (recoveredBlock109Block444Stack1) value: (recoveredBlock109Block444Stack2) value: (recoveredBlock109Block444Stack3).
            recoveredBlock109Block444PC := 686.
        ].
        recoveredBlock109Block444Step = 686 ifTrue: [
            recoveredBlock109Block444PC := 770.
        ].
        recoveredBlock109Block444Step = 690 ifTrue: [
            recoveredBlock109Block444Stack1 := nil.
            recoveredBlock109Block444PC := 691.
        ].
        recoveredBlock109Block444Step = 691 ifTrue: [
            recoveredBlock109Block444Stack2 := recoveredBlock109Block444Local1.
            recoveredBlock109Block444PC := 694.
        ].
        recoveredBlock109Block444Step = 694 ifTrue: [
            recoveredBlock109Block444Stack2 := (recoveredBlock109Block444Stack2) externalConnector.
            recoveredBlock109Block444PC := 699.
        ].
        recoveredBlock109Block444Step = 699 ifTrue: [
            recoveredBlock109Block444Stack2 := (recoveredBlock109Block444Stack2) isConnected.
            recoveredBlock109Block444PC := 703.
        ].
        recoveredBlock109Block444Step = 703 ifTrue: [
            (recoveredBlock109Block444Stack2) ifTrue: [recoveredBlock109Block444PC := 706] ifFalse: [recoveredBlock109Block444PC := 770].
        ].
        recoveredBlock109Block444Step = 706 ifTrue: [
            recoveredBlock109Block444PC := 707.
        ].
        recoveredBlock109Block444Step = 707 ifTrue: [
            recoveredBlock109Block444Stack1 := nil.
            recoveredBlock109Block444PC := 708.
        ].
        recoveredBlock109Block444Step = 708 ifTrue: [
            recoveredBlock109Block444Stack2 := recoveredBlock109Block444Local1.
            recoveredBlock109Block444PC := 711.
        ].
        recoveredBlock109Block444Step = 711 ifTrue: [
            recoveredBlock109Block444Stack2 := (recoveredBlock109Block444Stack2) externalConnector.
            recoveredBlock109Block444PC := 715.
        ].
        recoveredBlock109Block444Step = 715 ifTrue: [
            recoveredBlock109Block444Stack2 := (recoveredBlock109Block444Stack2) id.
            recoveredBlock109Block444PC := 719.
        ].
        recoveredBlock109Block444Step = 719 ifTrue: [
            recoveredBlock109Block444Stack3 := recoveredBlock109Block444Local2.
            recoveredBlock109Block444PC := 722.
        ].
        recoveredBlock109Block444Step = 722 ifTrue: [
            recoveredBlock109Block444Stack4 := 1.
            recoveredBlock109Block444PC := 724.
        ].
        recoveredBlock109Block444Step = 724 ifTrue: [
            recoveredBlock109Block444Stack3 := (recoveredBlock109Block444Stack3) at: (recoveredBlock109Block444Stack4).
            recoveredBlock109Block444PC := 726.
        ].
        recoveredBlock109Block444Step = 726 ifTrue: [
            recoveredBlock109Block444Stack2 := (recoveredBlock109Block444Stack2) equals: (recoveredBlock109Block444Stack3).
            recoveredBlock109Block444PC := 728.
        ].
        recoveredBlock109Block444Step = 728 ifTrue: [
            (recoveredBlock109Block444Stack2) ifTrue: [recoveredBlock109Block444PC := 770] ifFalse: [recoveredBlock109Block444PC := 732].
        ].
        recoveredBlock109Block444Step = 732 ifTrue: [
            recoveredBlock109Block444PC := 733.
        ].
        recoveredBlock109Block444Step = 733 ifTrue: [
            recoveredBlock109Block444Stack1 := recoveredArg3.
            recoveredBlock109Block444PC := 736.
        ].
        recoveredBlock109Block444Step = 736 ifTrue: [
            recoveredBlock109Block444Stack2 := recoveredArg1.
            recoveredBlock109Block444PC := 739.
        ].
        recoveredBlock109Block444Step = 739 ifTrue: [
            recoveredBlock109Block444Stack3 := recoveredLocal2.
            recoveredBlock109Block444PC := 742.
        ].
        recoveredBlock109Block444Step = 742 ifTrue: [
            recoveredBlock109Block444Stack3 := (recoveredBlock109Block444Stack3) typeLabel.
            recoveredBlock109Block444PC := 744.
        ].
        recoveredBlock109Block444Step = 744 ifTrue: [
            recoveredBlock109Block444Stack4 := ' - id inconsistent for argument '.
            recoveredBlock109Block444PC := 748.
        ].
        recoveredBlock109Block444Step = 748 ifTrue: [
            recoveredBlock109Block444Stack3 := (recoveredBlock109Block444Stack3) , (recoveredBlock109Block444Stack4).
            recoveredBlock109Block444PC := 750.
        ].
        recoveredBlock109Block444Step = 750 ifTrue: [
            recoveredBlock109Block444Stack4 := recoveredBlock109Block444Arg1.
            recoveredBlock109Block444PC := 753.
        ].
        recoveredBlock109Block444Step = 753 ifTrue: [
            recoveredBlock109Block444Stack4 := (recoveredBlock109Block444Stack4) labelInCompleteName.
            recoveredBlock109Block444PC := 755.
        ].
        recoveredBlock109Block444Step = 755 ifTrue: [
            recoveredBlock109Block444Stack3 := (recoveredBlock109Block444Stack3) , (recoveredBlock109Block444Stack4).
            recoveredBlock109Block444PC := 757.
        ].
        recoveredBlock109Block444Step = 757 ifTrue: [
            recoveredBlock109Block444Stack4 := ' in method '.
            recoveredBlock109Block444PC := 759.
        ].
        recoveredBlock109Block444Step = 759 ifTrue: [
            recoveredBlock109Block444Stack3 := (recoveredBlock109Block444Stack3) , (recoveredBlock109Block444Stack4).
            recoveredBlock109Block444PC := 761.
        ].
        recoveredBlock109Block444Step = 761 ifTrue: [
            recoveredBlock109Block444Stack4 := recoveredBlock109Arg1.
            recoveredBlock109Block444PC := 764.
        ].
        recoveredBlock109Block444Step = 764 ifTrue: [
            recoveredBlock109Block444Stack4 := (recoveredBlock109Block444Stack4) completeName.
            recoveredBlock109Block444PC := 766.
        ].
        recoveredBlock109Block444Step = 766 ifTrue: [
            recoveredBlock109Block444Stack3 := (recoveredBlock109Block444Stack3) , (recoveredBlock109Block444Stack4).
            recoveredBlock109Block444PC := 768.
        ].
        recoveredBlock109Block444Step = 768 ifTrue: [
            recoveredBlock109Block444Stack1 := (recoveredBlock109Block444Stack1) value: (recoveredBlock109Block444Stack2) value: (recoveredBlock109Block444Stack3).
            recoveredBlock109Block444PC := 770.
        ].
        recoveredBlock109Block444Step = 770 ifTrue: [
            recoveredBlock109Block444Result := recoveredBlock109Block444Stack1.
            recoveredBlock109Block444Done := true.
        ].
    ].
    recoveredBlock109Block444Result
].
            recoveredBlock109PC := 771.
        ].
        recoveredBlock109Step = 771 ifTrue: [
            recoveredBlock109Stack1 := (recoveredBlock109Stack1) doWithIndex: (recoveredBlock109Stack2).
            recoveredBlock109PC := 775.
        ].
        recoveredBlock109Step = 775 ifTrue: [
            recoveredBlock109Result := recoveredBlock109Stack1.
            recoveredBlock109Done := true.
        ].
    ].
    recoveredBlock109Result
].
            recoveredPC := 776.
        ].
        recoveredStep = 776 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 781.
        ].
        recoveredStep = 781 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

