"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2004ff8c; bytecode file offset 0x94d048"
!SgmlDTD methodsFor: 'recovered'!
reinitialize
    (self) initialize.
    ^self
! !

"ASDBase.ic method 0x20065954; bytecode file offset 0x963428"
!SgmlDTD methodsFor: 'recovered'!
name
    | recoveredValue0 |
    recoveredValue0 := name.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20067564; bytecode file offset 0x9646f8"
!SgmlDTD methodsFor: 'recovered'!
owner
    | recoveredValue0 |
    recoveredValue0 := owner.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200692dc; bytecode file offset 0x965b90"
!SgmlDTD methodsFor: 'recovered'!
elements
    | recoveredValue0 |
    recoveredValue0 := elements.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20069e10; bytecode file offset 0x966bdc"
!SgmlDTD methodsFor: 'recovered'!
entities
    | recoveredValue0 |
    recoveredValue0 := entities.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006a5b4; bytecode file offset 0x967a18"
!SgmlDTD methodsFor: 'recovered'!
parameterEntities
    | recoveredValue0 |
    recoveredValue0 := parameterEntities.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006b408; bytecode file offset 0x96873c"
!SgmlDTD methodsFor: 'recovered'!
processingInstructions
    | recoveredValue0 |
    recoveredValue0 := processingInstructions.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006bfb4; bytecode file offset 0x9692b0"
!SgmlDTD methodsFor: 'recovered'!
notations
    | recoveredValue0 |
    recoveredValue0 := notations.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006d208; bytecode file offset 0x969c04"
!SgmlDTD methodsFor: 'recovered'!
rootElements
    | recoveredValue0 |
    recoveredValue0 := rootElements.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006d664; bytecode file offset 0x96a390"
!SgmlDTD methodsFor: 'recovered'!
defaultFileExtension
    | recoveredValue0 |
    recoveredValue0 := defaultFileExtension.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2007bb94; bytecode file offset 0x97c330"
!SgmlDTD methodsFor: 'recovered'!
abtIsDummyDTD
    ^false
! !

"ASDBase.ic method 0x2008ee90; bytecode file offset 0x98b80c"
!SgmlDTD methodsFor: 'recovered'!
register
    | recoveredValue0 |
    recoveredValue0 := (self) class.
    (recoveredValue0) registerDTD: (self).
    ^self
! !

"ASDBase.ic method 0x2008eea0; bytecode file offset 0x98b80c"
!SgmlDTD methodsFor: 'recovered'!
deregister
    | recoveredValue0 |
    recoveredValue0 := (self) class.
    (recoveredValue0) deregisterDTD: (self).
    ^self
! !

"ASDBase.ic method 0x2009a138; bytecode file offset 0x997194"
!SgmlDTD methodsFor: 'recovered'!
entityNamed: recoveredArg1 ifAbsent: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) entities.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := (recoveredValue0) at: (recoveredValue1) ifAbsent: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x200b3be8; bytecode file offset 0x9b04a8"
!SgmlDTD methodsFor: 'recovered'!
reinitializeDependents
    | recoveredValue0 |
    recoveredValue0 := (self) class.
    (recoveredValue0) broadcast: ('reinitializeFor:') with: (self).
    ^self
! !

"ASDBase.ic method 0x200bc65c; bytecode file offset 0x9b8f1c"
!SgmlDTD methodsFor: 'recovered'!
addRootElementNamed: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) rootElements.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (self) elementNamed: (recoveredValue1).
    (recoveredValue0) add: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x200be66c; bytecode file offset 0x9bb178"
!SgmlDTD methodsFor: 'recovered'!
name: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    name := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200bed60; bytecode file offset 0x9bc0b4"
!SgmlDTD methodsFor: 'recovered'!
owner: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    owner := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200bfa44; bytecode file offset 0x9bd228"
!SgmlDTD methodsFor: 'recovered'!
elements: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    elements := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c0da8; bytecode file offset 0x9bdf14"
!SgmlDTD methodsFor: 'recovered'!
entities: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    entities := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c1a1c; bytecode file offset 0x9beac8"
!SgmlDTD methodsFor: 'recovered'!
parameterEntities: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    parameterEntities := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c2398; bytecode file offset 0x9bf474"
!SgmlDTD methodsFor: 'recovered'!
processingInstructions: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    processingInstructions := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c2d8c; bytecode file offset 0x9bfde0"
!SgmlDTD methodsFor: 'recovered'!
notations: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    notations := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c3550; bytecode file offset 0x9c058c"
!SgmlDTD methodsFor: 'recovered'!
rootElements: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    rootElements := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c40ec; bytecode file offset 0x9c0bf0"
!SgmlDTD methodsFor: 'recovered'!
defaultFileExtension: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    defaultFileExtension := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200e92e0; bytecode file offset 0x9e5bf0"
!SgmlDTD methodsFor: 'recovered'!
addParameterEntity: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    (recoveredValue0) dtd: (self).
    recoveredValue1 := (self) parameterEntities.
    recoveredValue2 := recoveredArg1.
    (recoveredValue1) addEntity: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x200e92f4; bytecode file offset 0x9e5bf0"
!SgmlDTD methodsFor: 'recovered'!
addProcessingInstruction: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    (recoveredValue0) dtd: (self).
    recoveredValue1 := (self) processingInstructions.
    recoveredValue2 := recoveredArg1.
    (recoveredValue1) add: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x200e931c; bytecode file offset 0x9e5bf0"
!SgmlDTD methodsFor: 'recovered'!
addEntity: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    (recoveredValue0) dtd: (self).
    recoveredValue1 := (self) entities.
    recoveredValue2 := recoveredArg1.
    (recoveredValue1) addEntity: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x2010de14; bytecode file offset 0xa0a6d8"
!SgmlDTD methodsFor: 'recovered'!
addNotation: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := recoveredArg1.
    (recoveredValue0) dtd: (self).
    recoveredValue1 := (self) notations.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (recoveredValue2) name.
    recoveredValue4 := recoveredArg1.
    (recoveredValue1) at: (recoveredValue3) put: (recoveredValue4).
    ^self
! !

"ASDBase.ic method 0x201ce1f4; bytecode file offset 0xacaab8"
!SgmlDTD methodsFor: 'recovered'!
entityDeclarationForCharacter: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) entities.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := [
    | recoveredBlock8Value0 recoveredBlock8Value1 recoveredBlock8Value2 recoveredBlock8Value3 |
    recoveredBlock8Value0 := SgmlEntitySet.
    recoveredBlock8Value1 := recoveredArg1.
    recoveredBlock8Value2 := [].
    recoveredBlock8Value3 := (recoveredBlock8Value0) entityForCharacter: (recoveredBlock8Value1) ifAbsent: (recoveredBlock8Value2).
    recoveredBlock8Value3
].
    recoveredValue3 := (recoveredValue0) entityForCharacter: (recoveredValue1) ifAbsent: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x201db77c; bytecode file offset 0xad8044"
!SgmlDTD methodsFor: 'recovered'!
getOrAddElementNamed: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := (self) elements.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue1) asUppercase.
    recoveredValue3 := [
    | recoveredBlock9Value0 recoveredBlock9Value1 recoveredBlock9Value2 |
    recoveredBlock9Value0 := SgmlElementDeclaration.
    recoveredBlock9Value1 := recoveredArg1.
    recoveredBlock9Value2 := (recoveredBlock9Value0) dtd: (self) name: (recoveredBlock9Value1).
    recoveredBlock9Value2
].
    recoveredValue4 := (recoveredValue0) at: (recoveredValue2) ifAbsentPut: (recoveredValue3).
    ^recoveredValue4
! !

"ASDBase.ic method 0x2020f76c; bytecode file offset 0xb0c03c"
!SgmlDTD methodsFor: 'recovered'!
parameterEntityNamed: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) parameterEntities.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := [
    | recoveredBlock8Value0 recoveredBlock8Value1 recoveredBlock8Value2 recoveredBlock8Value3 |
    recoveredBlock8Value0 := SgmlSyntaxError.
    recoveredBlock8Value1 := recoveredArg1.
    recoveredBlock8Value2 := (recoveredBlock8Value0) code: ('UnknownParameterEntity') text: ('Parameter entity "%1" is unknown') with: (recoveredBlock8Value1).
    recoveredBlock8Value3 := (recoveredBlock8Value2) signalException.
    ^recoveredBlock8Value3
].
    recoveredValue3 := (recoveredValue0) entityNamed: (recoveredValue1) ifAbsent: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x20229408; bytecode file offset 0xb25cdc"
!SgmlDTD methodsFor: 'recovered'!
elementNamed: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := (self) elements.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue1) asUppercase.
    recoveredValue3 := [
    | recoveredBlock9Value0 recoveredBlock9Value1 recoveredBlock9Value2 recoveredBlock9Value3 |
    recoveredBlock9Value0 := SgmlSyntaxError.
    recoveredBlock9Value1 := recoveredArg1.
    recoveredBlock9Value2 := (recoveredBlock9Value0) code: ('unknownTag') text: ('Tag %1 is unknown') with: (recoveredBlock9Value1).
    recoveredBlock9Value3 := (recoveredBlock9Value2) signalException.
    ^recoveredBlock9Value3
].
    recoveredValue4 := (recoveredValue0) at: (recoveredValue2) ifAbsent: (recoveredValue3).
    ^recoveredValue4
! !

"ASDBase.ic method 0x2023bffc; bytecode file offset 0xb388d8"
!SgmlDTD methodsFor: 'recovered'!
checkConsistency
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) elements.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := [:block280ddcacArg1 | 
    | block280ddcacStack0 block280ddcacStack1 block280ddcacStack2 block280ddcacStack3 block280ddcacStack4 block280ddcacStack5 block280ddcacPC block280ddcacStep block280ddcacDone block280ddcacResult |
    block280ddcacStack0 := self.
    block280ddcacPC := 4.
    block280ddcacDone := false.
    [block280ddcacDone not] whileTrue: [
        block280ddcacStep := block280ddcacPC.
        block280ddcacStep = 4 ifTrue: [
            block280ddcacStack1 := nil.
            block280ddcacPC := 5.
        ].
        block280ddcacStep = 5 ifTrue: [
            block280ddcacStack2 := block280ddcacArg1.
            block280ddcacPC := 6.
        ].
        block280ddcacStep = 6 ifTrue: [
            block280ddcacStack2 := (block280ddcacStack2) contents.
            block280ddcacPC := 7.
        ].
        block280ddcacStep = 7 ifTrue: [
            (block280ddcacStack2 ~~ nil) ifTrue: [block280ddcacPC := 25] ifFalse: [block280ddcacPC := 10].
        ].
        block280ddcacStep = 10 ifTrue: [
            block280ddcacPC := 11.
        ].
        block280ddcacStep = 11 ifTrue: [
            block280ddcacStack1 := SgmlSyntaxError.
            block280ddcacPC := 13.
        ].
        block280ddcacStep = 13 ifTrue: [
            block280ddcacStack2 := 'ElementNotDeclared'.
            block280ddcacPC := 15.
        ].
        block280ddcacStep = 15 ifTrue: [
            block280ddcacStack3 := 'SGML DTD Error:  %1 used but not declared'.
            block280ddcacPC := 17.
        ].
        block280ddcacStep = 17 ifTrue: [
            block280ddcacStack4 := block280ddcacArg1.
            block280ddcacPC := 18.
        ].
        block280ddcacStep = 18 ifTrue: [
            block280ddcacStack4 := (block280ddcacStack4) name.
            block280ddcacPC := 20.
        ].
        block280ddcacStep = 20 ifTrue: [
            block280ddcacStack1 := (block280ddcacStack1) code: (block280ddcacStack2) text: (block280ddcacStack3) with: (block280ddcacStack4).
            block280ddcacPC := 23.
        ].
        block280ddcacStep = 23 ifTrue: [
            block280ddcacStack1 := (block280ddcacStack1) signalException.
            block280ddcacPC := 25.
        ].
        block280ddcacStep = 25 ifTrue: [
            block280ddcacResult := block280ddcacStack1.
            block280ddcacDone := true.
        ].
    ].
    block280ddcacResult
].
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
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

"ASDBase.ic method 0x20262944; bytecode file offset 0xb5f20c"
!SgmlDTD methodsFor: 'recovered'!
entityDeclarationNamed: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) entities.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := [
    | recoveredBlock8Value0 recoveredBlock8Value1 recoveredBlock8Value2 recoveredBlock8Value3 |
    recoveredBlock8Value0 := SgmlEntitySet.
    recoveredBlock8Value1 := recoveredArg1.
    recoveredBlock8Value2 := [
    | recoveredBlock8Block19Value0 recoveredBlock8Block19Value1 recoveredBlock8Block19Value2 |
    recoveredBlock8Block19Value0 := SgmlUnknownEntity.
    recoveredBlock8Block19Value1 := recoveredArg1.
    recoveredBlock8Block19Value2 := (recoveredBlock8Block19Value0) on: (recoveredBlock8Block19Value1).
    recoveredBlock8Block19Value2
].
    recoveredBlock8Value3 := (recoveredBlock8Value0) entityNamed: (recoveredBlock8Value1) ifAbsent: (recoveredBlock8Value2).
    recoveredBlock8Value3
].
    recoveredValue3 := (recoveredValue0) entityNamed: (recoveredValue1) ifAbsent: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x202a50b8; bytecode file offset 0xba19a4"
!SgmlDTD methodsFor: 'recovered'!
parseFrom: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 |
    (self) initialize.
    recoveredValue0 := ReadWriteStream.
    recoveredValue1 := String.
    recoveredValue2 := (recoveredValue1) new.
    recoveredValue3 := (recoveredValue0) on: (recoveredValue2).
    recoveredLocal1 := recoveredValue3.
    recoveredValue4 := SgmlDTDPreprocessor.
    recoveredValue5 := (recoveredValue4) usingDTD: (self).
    recoveredValue6 := recoveredValue5.
    recoveredValue7 := recoveredArg1.
    (recoveredValue6) inputStream: (recoveredValue7).
    recoveredValue8 := recoveredValue5.
    recoveredValue9 := recoveredLocal1.
    (recoveredValue8) outputStream: (recoveredValue9).
    (recoveredValue5) preprocess.
    recoveredValue10 := recoveredLocal1.
    (recoveredValue10) reset.
    recoveredValue11 := SgmlDocumentParser.
    recoveredValue12 := (recoveredValue11) usingDTD: (self).
    recoveredValue13 := recoveredLocal1.
    (recoveredValue12) parseStream: (recoveredValue13).
    (self) checkConsistency.
    ^self
! !

"ASDBase.ic method 0x2031ac50; bytecode file offset 0xc17540"
!SgmlDTD methodsFor: 'recovered'!
initialize
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 |
    recoveredValue0 := SgmlEntitySet.
    recoveredValue1 := (recoveredValue0) name: ('DTD Entities') owner: (self).
    (self) entities: (recoveredValue1).
    recoveredValue2 := SgmlEntitySet.
    recoveredValue3 := (recoveredValue2) name: ('DTD Parameter Entities') owner: (self).
    (self) parameterEntities: (recoveredValue3).
    recoveredValue4 := Dictionary.
    recoveredValue5 := (recoveredValue4) new.
    (self) notations: (recoveredValue5).
    recoveredValue6 := Dictionary.
    recoveredValue7 := (recoveredValue6) new.
    (self) elements: (recoveredValue7).
    recoveredValue8 := Set.
    recoveredValue9 := (recoveredValue8) new.
    (self) processingInstructions: (recoveredValue9).
    recoveredValue10 := Set.
    recoveredValue11 := (recoveredValue10) new.
    (self) rootElements: (recoveredValue11).
    (self) defaultFileExtension: ('sml').
    ^self
! !

