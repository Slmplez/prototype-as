"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20001aa8; bytecode file offset 0x8ffcfc"
!SGBdlPort methodsFor: 'recovered'!
resetSequence
    ^self
! !

"ASDBase.ic method 0x200041e8; bytecode file offset 0x90206c"
!SGBdlPort methodsFor: 'recovered'!
hasTempVar: recoveredArg1
    ^self
! !

"ASDBase.ic method 0x20004740; bytecode file offset 0x90206c"
!SGBdlPort methodsFor: 'recovered'!
numberSequence: recoveredArg1
    ^self
! !

"ASDBase.ic method 0x20005770; bytecode file offset 0x90206c"
!SGBdlPort methodsFor: 'recovered'!
bdlPrereqArgumentIfFail: recoveredArg1
    ^self
! !

"ASDBase.ic method 0x20005d38; bytecode file offset 0x902744"
!SGBdlPort methodsFor: 'recovered'!
bdlPrereqArgument: recoveredArg1 ifFail: recoveredArg2
    ^self
! !

"ASDBase.ic method 0x20028024; bytecode file offset 0x934580"
!SGBdlPort methodsFor: 'recovered'!
connectedDataModelRef
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) block.
    recoveredValue1 := (recoveredValue0) dataModelRef.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20028b74; bytecode file offset 0x934580"
!SGBdlPort methodsFor: 'recovered'!
id
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) block.
    recoveredValue1 := (recoveredValue0) id.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2002f5e4; bytecode file offset 0x934580"
!SGBdlPort methodsFor: 'recovered'!
errLabel
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) block.
    recoveredValue1 := (recoveredValue0) errLabel.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20033a44; bytecode file offset 0x934580"
!SGBdlPort methodsFor: 'recovered'!
fullSequenceNumber
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) block.
    recoveredValue1 := (recoveredValue0) fullSequenceNumber.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20040bac; bytecode file offset 0x93d83c"
!SGBdlPort methodsFor: 'recovered'!
interfaceEntryPoint
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := interfaceElements.
    recoveredValue1 := (recoveredValue0) first.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20052d1c; bytecode file offset 0x9505d0"
!SGBdlPort methodsFor: 'recovered'!
buildMdlAccessOp: recoveredArg1
    (self) buildMdl.
    ^self
! !

"ASDBase.ic method 0x20059df4; bytecode file offset 0x9566ac"
!SGBdlPort methodsFor: 'recovered'!
collectHardPrerequisitesIn: recoveredArg1 forAnalyzingUnit: recoveredArg2
    (self) subclassResponsibility.
    ^self
! !

"ASDBase.ic method 0x20066634; bytecode file offset 0x963428"
!SGBdlPort methodsFor: 'recovered'!
block
    | recoveredValue0 |
    recoveredValue0 := block.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20067dbc; bytecode file offset 0x9646f8"
!SGBdlPort methodsFor: 'recovered'!
interfaceElements
    | recoveredValue0 |
    recoveredValue0 := interfaceElements.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2007a7bc; bytecode file offset 0x97c330"
!SGBdlPort methodsFor: 'recovered'!
isDerivative
    ^false
! !

"ASDBase.ic method 0x2007b2cc; bytecode file offset 0x97c330"
!SGBdlPort methodsFor: 'recovered'!
isSGCtSelectorPort
    ^false
! !

"ASDBase.ic method 0x2007bc74; bytecode file offset 0x97c330"
!SGBdlPort methodsFor: 'recovered'!
isDefaultMethod
    ^false
! !

"ASDBase.ic method 0x2007bd1c; bytecode file offset 0x97c330"
!SGBdlPort methodsFor: 'recovered'!
isNonDirectOutput
    ^false
! !

"ASDBase.ic method 0x2007c50c; bytecode file offset 0x97c330"
!SGBdlPort methodsFor: 'recovered'!
isCtOutput
    ^false
! !

"ASDBase.ic method 0x2007c8b4; bytecode file offset 0x97c330"
!SGBdlPort methodsFor: 'recovered'!
isCtInput
    ^false
! !

"ASDBase.ic method 0x2007ce0c; bytecode file offset 0x97c330"
!SGBdlPort methodsFor: 'recovered'!
isDirectOutput
    ^false
! !

"ASDBase.ic method 0x2007d044; bytecode file offset 0x97c330"
!SGBdlPort methodsFor: 'recovered'!
getDirectInput
    ^false
! !

"ASDBase.ic method 0x2007d424; bytecode file offset 0x97c330"
!SGBdlPort methodsFor: 'recovered'!
isBdlReturnPort
    ^false
! !

"ASDBase.ic method 0x2007d8ec; bytecode file offset 0x97c330"
!SGBdlPort methodsFor: 'recovered'!
hasTempVar
    ^false
! !

"ASDBase.ic method 0x2007eebc; bytecode file offset 0x97c330"
!SGBdlPort methodsFor: 'recovered'!
isSGCtReturnPort
    ^false
! !

"ASDBase.ic method 0x20099888; bytecode file offset 0x9961d0"
!SGBdlPort methodsFor: 'recovered'!
collectHardPrerequisitesIn: recoveredArg1 forSequencingUnit: recoveredArg2
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    (self) collectHardPrerequisitesIn: (recoveredValue0) forAnalyzingUnit: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x200be134; bytecode file offset 0x9bb178"
!SGBdlPort methodsFor: 'recovered'!
block: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    block := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200bea00; bytecode file offset 0x9bc0b4"
!SGBdlPort methodsFor: 'recovered'!
interfaceElements: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    interfaceElements := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200d4770; bytecode file offset 0x9d1030"
!SGBdlPort methodsFor: 'recovered'!
interfaceArguments
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) interfaceElements.
    recoveredValue1 := (self) interfaceElements.
    recoveredValue2 := (recoveredValue1) size.
    recoveredValue3 := (recoveredValue0) copyFrom: (2) to: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x200f79a4; bytecode file offset 0x9f4e38"
!SGBdlPort methodsFor: 'recovered'!
isConnected
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) interfaceElements.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := [:block280c4c74Arg1 | 
    | block280c4c74Value0 block280c4c74Value1 |
    block280c4c74Value0 := block280c4c74Arg1.
    block280c4c74Value1 := (block280c4c74Value0) isConnected.
    block280c4c74Value1
].
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) conform: (recoveredStack1).
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2010bd0c; bytecode file offset 0xa085f0"
!SGBdlPort methodsFor: 'recovered'!
initialize
    | recoveredValue0 recoveredValue1 |
    super initialize.
    recoveredValue0 := Array.
    recoveredValue1 := (recoveredValue0) new.
    (self) interfaceElements: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x20124884; bytecode file offset 0xa21168"
!SGBdlPort methodsFor: 'recovered'!
backReferences
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := Dictionary.
    recoveredValue1 := (recoveredValue0) new.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := recoveredLocal1.
    (recoveredValue2) at: ('interfaceElements') put: ('port').
    recoveredValue3 := recoveredLocal1.
    ^recoveredValue3
! !

"ASDBase.ic method 0x20150f34; bytecode file offset 0xa4d7fc"
!SGBdlPort methodsFor: 'recovered'!
interfaceElement
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) interfaceElements.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) isEmpty.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 15].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := 'interfaceElement'.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack0) fatalExpect: (recoveredStack1).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := (recoveredStack0) interfaceElements.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := (recoveredStack0) first.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201dd34c; bytecode file offset 0xad9c1c"
!SGBdlPort methodsFor: 'recovered'!
addArgument
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 |
    recoveredValue0 := SGInterfaceElement.
    recoveredValue1 := (recoveredValue0) create.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := recoveredLocal1.
    (recoveredValue2) addArgumentConnector.
    recoveredValue3 := recoveredLocal1.
    (recoveredValue3) port: (self).
    recoveredValue4 := interfaceElements.
    recoveredValue5 := Array.
    recoveredValue6 := recoveredLocal1.
    recoveredValue7 := (recoveredValue5) with: (recoveredValue6).
    recoveredValue8 := (recoveredValue4) , (recoveredValue7).
    interfaceElements := recoveredValue8.
    recoveredValue9 := recoveredLocal1.
    ^recoveredValue9
! !

"ASDBase.ic method 0x201eb788; bytecode file offset 0xae8060"
!SGBdlPort methodsFor: 'recovered'!
addResult
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 |
    recoveredValue0 := SGInterfaceElement.
    recoveredValue1 := (recoveredValue0) create.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := recoveredLocal1.
    (recoveredValue2) port: (self).
    recoveredValue3 := recoveredLocal1.
    (recoveredValue3) addResultConnector.
    recoveredValue4 := Array.
    recoveredValue5 := recoveredLocal1.
    recoveredValue6 := (recoveredValue4) with: (recoveredValue5).
    recoveredValue7 := (self) interfaceElements.
    recoveredValue8 := (recoveredValue6) , (recoveredValue7).
    (self) interfaceElements: (recoveredValue8).
    recoveredValue9 := recoveredLocal1.
    ^recoveredValue9
! !

"ASDBase.ic method 0x2023c558; bytecode file offset 0xb38e2c"
!SGBdlPort methodsFor: 'recovered'!
buildMdl
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) mdlBuilder.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) source.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack0) source: (recoveredStack1).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := (recoveredStack0) hasTempVar.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 26].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) logicModel.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := (recoveredStack0) currentMethod.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            (recoveredStack0) buildMdlWithTempVar: (recoveredStack1).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredPC := 34.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := (recoveredStack0) logicModel.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack0 := (recoveredStack0) currentMethod.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            (recoveredStack0) buildMdlWithoutTempVar: (recoveredStack1).
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

"ASDBase.ic method 0x203080d0; bytecode file offset 0xc049c0"
!SGBdlPort methodsFor: 'recovered'!
fatalExpectAliasName: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := 'missing element in datamodel - probably deleted. '.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := 'Advice: store again graphic of >'.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack2 := (recoveredStack2) sgClass.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack2 := (recoveredStack2) label.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := '<'.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 22] ifFalse: [recoveredPC := 36].
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack2 := ' and - if specified by graphic - also >'.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack2 := (recoveredStack2) block.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack2 := (recoveredStack2) errLabel.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack2 := '<'.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := (recoveredStack0) errorHandler.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack2 := Array.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack2 := (recoveredStack2) with: (recoveredStack3).
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack3 := (recoveredStack3) source.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack3 := (recoveredStack3) asMissingElementSource.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            (recoveredStack0) fatalNo: (recoveredStack1) args: (recoveredStack2) source: (recoveredStack3).
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

