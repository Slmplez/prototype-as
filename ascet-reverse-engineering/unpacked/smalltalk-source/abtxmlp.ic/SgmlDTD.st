"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"abtxmlp.ic method 0x20000974; bytecode file offset 0x19160"
!SgmlDTD methodsFor: 'recovered'!
reinitialize
    (self) initialize.
    ^self
! !

"abtxmlp.ic method 0x20000d2c; bytecode file offset 0x19564"
!SgmlDTD methodsFor: 'recovered'!
name
    | recoveredValue0 |
    recoveredValue0 := name.
    ^recoveredValue0
! !

"abtxmlp.ic method 0x20000de0; bytecode file offset 0x19600"
!SgmlDTD methodsFor: 'recovered'!
owner
    | recoveredValue0 |
    recoveredValue0 := owner.
    ^recoveredValue0
! !

"abtxmlp.ic method 0x20000e74; bytecode file offset 0x1967c"
!SgmlDTD methodsFor: 'recovered'!
elements
    | recoveredValue0 |
    recoveredValue0 := elements.
    ^recoveredValue0
! !

"abtxmlp.ic method 0x20000eb0; bytecode file offset 0x19700"
!SgmlDTD methodsFor: 'recovered'!
entities
    | recoveredValue0 |
    recoveredValue0 := entities.
    ^recoveredValue0
! !

"abtxmlp.ic method 0x20000f34; bytecode file offset 0x19774"
!SgmlDTD methodsFor: 'recovered'!
parameterEntities
    | recoveredValue0 |
    recoveredValue0 := parameterEntities.
    ^recoveredValue0
! !

"abtxmlp.ic method 0x20000fd0; bytecode file offset 0x197d8"
!SgmlDTD methodsFor: 'recovered'!
processingInstructions
    | recoveredValue0 |
    recoveredValue0 := processingInstructions.
    ^recoveredValue0
! !

"abtxmlp.ic method 0x20001014; bytecode file offset 0x19834"
!SgmlDTD methodsFor: 'recovered'!
notations
    | recoveredValue0 |
    recoveredValue0 := notations.
    ^recoveredValue0
! !

"abtxmlp.ic method 0x20001080; bytecode file offset 0x19878"
!SgmlDTD methodsFor: 'recovered'!
rootElements
    | recoveredValue0 |
    recoveredValue0 := rootElements.
    ^recoveredValue0
! !

"abtxmlp.ic method 0x200010ac; bytecode file offset 0x198a4"
!SgmlDTD methodsFor: 'recovered'!
defaultFileExtension
    | recoveredValue0 |
    recoveredValue0 := defaultFileExtension.
    ^recoveredValue0
! !

"abtxmlp.ic method 0x200012c8; bytecode file offset 0x19ba0"
!SgmlDTD methodsFor: 'recovered'!
abtIsDummyDTD
    ^false
! !

"abtxmlp.ic method 0x20001710; bytecode file offset 0x19f10"
!SgmlDTD methodsFor: 'recovered'!
deregister
    | recoveredValue0 |
    recoveredValue0 := (self) class.
    (recoveredValue0) deregisterDTD: (self).
    ^self
! !

"abtxmlp.ic method 0x20001720; bytecode file offset 0x19f10"
!SgmlDTD methodsFor: 'recovered'!
register
    | recoveredValue0 |
    recoveredValue0 := (self) class.
    (recoveredValue0) registerDTD: (self).
    ^self
! !

"abtxmlp.ic method 0x20001b64; bytecode file offset 0x1a3a4"
!SgmlDTD methodsFor: 'recovered'!
entityNamed: recoveredArg1 ifAbsent: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) entities.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := (recoveredValue0) at: (recoveredValue1) ifAbsent: (recoveredValue2).
    ^recoveredValue3
! !

"abtxmlp.ic method 0x20002204; bytecode file offset 0x1a9f8"
!SgmlDTD methodsFor: 'recovered'!
reinitializeDependents
    | recoveredValue0 |
    recoveredValue0 := (self) class.
    (recoveredValue0) broadcast: ('reinitializeFor:') with: (self).
    ^self
! !

"abtxmlp.ic method 0x2000237c; bytecode file offset 0x1ab70"
!SgmlDTD methodsFor: 'recovered'!
addRootElementNamed: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) rootElements.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (self) elementNamed: (recoveredValue1).
    (recoveredValue0) add: (recoveredValue2).
    ^self
! !

"abtxmlp.ic method 0x20002464; bytecode file offset 0x1ac8c"
!SgmlDTD methodsFor: 'recovered'!
name: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    name := recoveredValue0.
    ^self
! !

"abtxmlp.ic method 0x20002530; bytecode file offset 0x1ad18"
!SgmlDTD methodsFor: 'recovered'!
owner: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    owner := recoveredValue0.
    ^self
! !

"abtxmlp.ic method 0x20002584; bytecode file offset 0x1ad9c"
!SgmlDTD methodsFor: 'recovered'!
elements: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    elements := recoveredValue0.
    ^self
! !

"abtxmlp.ic method 0x20002620; bytecode file offset 0x1ae20"
!SgmlDTD methodsFor: 'recovered'!
entities: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    entities := recoveredValue0.
    ^self
! !

"abtxmlp.ic method 0x20002654; bytecode file offset 0x1ae94"
!SgmlDTD methodsFor: 'recovered'!
parameterEntities: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    parameterEntities := recoveredValue0.
    ^self
! !

"abtxmlp.ic method 0x20002700; bytecode file offset 0x1aef0"
!SgmlDTD methodsFor: 'recovered'!
processingInstructions: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    processingInstructions := recoveredValue0.
    ^self
! !

"abtxmlp.ic method 0x2000273c; bytecode file offset 0x1af34"
!SgmlDTD methodsFor: 'recovered'!
notations: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    notations := recoveredValue0.
    ^self
! !

"abtxmlp.ic method 0x20002788; bytecode file offset 0x1af78"
!SgmlDTD methodsFor: 'recovered'!
rootElements: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    rootElements := recoveredValue0.
    ^self
! !

"abtxmlp.ic method 0x200027a4; bytecode file offset 0x1afa4"
!SgmlDTD methodsFor: 'recovered'!
defaultFileExtension: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    defaultFileExtension := recoveredValue0.
    ^self
! !

"abtxmlp.ic method 0x20002cf0; bytecode file offset 0x1b50c"
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

"abtxmlp.ic method 0x20002d04; bytecode file offset 0x1b50c"
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

"abtxmlp.ic method 0x20002d18; bytecode file offset 0x1b50c"
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

"abtxmlp.ic method 0x20003428; bytecode file offset 0x1bc20"
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

"abtxmlp.ic method 0x2000506c; bytecode file offset 0x1d864"
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

"abtxmlp.ic method 0x200051b4; bytecode file offset 0x1d9b0"
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

"abtxmlp.ic method 0x200059d0; bytecode file offset 0x1e1f8"
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

"abtxmlp.ic method 0x20005bf8; bytecode file offset 0x1e400"
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

"abtxmlp.ic method 0x20005e44; bytecode file offset 0x1e654"
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
            recoveredStack1 := #(268447522 nil 28 8388611 nil nil).
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

"abtxmlp.ic method 0x200063b0; bytecode file offset 0x1ebac"
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

"abtxmlp.ic method 0x20006b40; bytecode file offset 0x1f360"
!SgmlDTD methodsFor: 'recovered'!
parseFrom: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 |
    (self) initialize.
    recoveredValue0 := EsWeakSet.
    recoveredValue1 := Bag.
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

"abtxmlp.ic method 0x20007974; bytecode file offset 0x20198"
!SgmlDTD methodsFor: 'recovered'!
initialize
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 |
    recoveredValue0 := SgmlEntitySet.
    recoveredValue1 := (recoveredValue0) name: ('DTD Entities') owner: (self).
    (self) entities: (recoveredValue1).
    recoveredValue2 := SgmlEntitySet.
    recoveredValue3 := (recoveredValue2) name: ('DTD Parameter Entities') owner: (self).
    (self) parameterEntities: (recoveredValue3).
    recoveredValue4 := SystemExceptions.
    recoveredValue5 := (recoveredValue4) new.
    (self) notations: (recoveredValue5).
    recoveredValue6 := SystemExceptions.
    recoveredValue7 := (recoveredValue6) new.
    (self) elements: (recoveredValue7).
    recoveredValue8 := CurrentStringClass.
    recoveredValue9 := (recoveredValue8) new.
    (self) processingInstructions: (recoveredValue9).
    recoveredValue10 := CurrentStringClass.
    recoveredValue11 := (recoveredValue10) new.
    (self) rootElements: (recoveredValue11).
    (self) defaultFileExtension: ('sml').
    ^self
! !

