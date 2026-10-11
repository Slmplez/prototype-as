"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20000d90; bytecode file offset 0x8ffcfc"
!SGLogicModel methodsFor: 'recovered'!
buildMdlOperatingSystem
    ^self
! !

"ASDBase.ic method 0x200022e0; bytecode file offset 0x8ffcfc"
!SGLogicModel methodsFor: 'recovered'!
reinitialize
    ^self
! !

"ASDBase.ic method 0x20002910; bytecode file offset 0x8ffcfc"
!SGLogicModel methodsFor: 'recovered'!
collectPreprocessedCMethods
    ^self
! !

"ASDBase.ic method 0x2000d6c4; bytecode file offset 0x90a4b8"
!SGLogicModel methodsFor: 'recovered'!
xmlCollectDependent: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20012f9c; bytecode file offset 0x912098"
!SGLogicModel methodsFor: 'recovered'!
logicMethodClass
    | recoveredValue0 |
    recoveredValue0 := SGLmMethod.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20021254; bytecode file offset 0x92209c"
!SGLogicModel methodsFor: 'recovered'!
errTitle
    ^''
! !

"ASDBase.ic method 0x20027930; bytecode file offset 0x924260"
!SGLogicModel methodsFor: 'recovered'!
isDbObject
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) dbObject.
    recoveredValue1 := (recoveredValue0) notNil.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2002abb4; bytecode file offset 0x934580"
!SGLogicModel methodsFor: 'recovered'!
implForModule
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) makeConfigForModule.
    recoveredValue1 := (recoveredValue0) implementation.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2002b8c4; bytecode file offset 0x934580"
!SGLogicModel methodsFor: 'recovered'!
lmRealType
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) logicManager.
    recoveredValue1 := (recoveredValue0) lmRealType.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2002d2b4; bytecode file offset 0x934580"
!SGLogicModel methodsFor: 'recovered'!
currentMethod
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) logicSpec.
    recoveredValue1 := (recoveredValue0) currentMethod.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2002d344; bytecode file offset 0x934580"
!SGLogicModel methodsFor: 'recovered'!
methods
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) logicSpec.
    recoveredValue1 := (recoveredValue0) methods.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2002ed34; bytecode file offset 0x934580"
!SGLogicModel methodsFor: 'recovered'!
project
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) context.
    recoveredValue1 := (recoveredValue0) project.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20032a14; bytecode file offset 0x934580"
!SGLogicModel methodsFor: 'recovered'!
isVersion
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) dbObject.
    recoveredValue1 := (recoveredValue0) isVersion.
    ^recoveredValue1
! !

"ASDBase.ic method 0x200341d4; bytecode file offset 0x934580"
!SGLogicModel methodsFor: 'recovered'!
component
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) logicManager.
    recoveredValue1 := (recoveredValue0) component.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20035aa4; bytecode file offset 0x934580"
!SGLogicModel methodsFor: 'recovered'!
context
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) logicManager.
    recoveredValue1 := (recoveredValue0) context.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20035fe4; bytecode file offset 0x934580"
!SGLogicModel methodsFor: 'recovered'!
lmVoidType
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) logicManager.
    recoveredValue1 := (recoveredValue0) lmVoidType.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20039608; bytecode file offset 0x938608"
!SGLogicModel methodsFor: 'recovered'!
dbXmlDeepCopy: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) dbXmlGenericDeepCopy: (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x2003d1a8; bytecode file offset 0x93bf94"
!SGLogicModel methodsFor: 'recovered'!
nilVariables
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := OrderedCollection.
    recoveredValue1 := (recoveredValue0) new.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2003d1b8; bytecode file offset 0x93bf94"
!SGLogicModel methodsFor: 'recovered'!
mdlBuilder
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := SGLmManager.
    recoveredValue1 := (recoveredValue0) mdlBuilder.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2003d218; bytecode file offset 0x93bf94"
!SGLogicModel methodsFor: 'recovered'!
logicManager
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := SGLmElement.
    recoveredValue1 := (recoveredValue0) logicManager.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2003d448; bytecode file offset 0x93bf94"
!SGLogicModel methodsFor: 'recovered'!
errorHandler
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := SGLmElement.
    recoveredValue1 := (recoveredValue0) errorHandler.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2003d998; bytecode file offset 0x93bf94"
!SGLogicModel methodsFor: 'recovered'!
makeConfigForModule
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := SGLmManager.
    recoveredValue1 := (recoveredValue0) makeConfigForModule.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2003dca8; bytecode file offset 0x93bf94"
!SGLogicModel methodsFor: 'recovered'!
sgClass
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := SGLmElement.
    recoveredValue1 := (recoveredValue0) sgClass.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2003df48; bytecode file offset 0x93bf94"
!SGLogicModel methodsFor: 'recovered'!
checkForLmErrors
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := SGLmElement.
    recoveredValue1 := (recoveredValue0) checkForLmErrors.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2003e7b8; bytecode file offset 0x93bf94"
!SGLogicModel methodsFor: 'recovered'!
signalLmError
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := SGLmElement.
    recoveredValue1 := (recoveredValue0) signalLmError.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2003eaf8; bytecode file offset 0x93bf94"
!SGLogicModel methodsFor: 'recovered'!
logicSpec
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := SGLmElement.
    recoveredValue1 := (recoveredValue0) logicSpec.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2004e030; bytecode file offset 0x94d048"
!SGLogicModel methodsFor: 'recovered'!
analyzeSyntax
    (self) subclassResponsibility.
    ^self
! !

"ASDBase.ic method 0x20051a24; bytecode file offset 0x94f0e0"
!SGLogicModel methodsFor: 'recovered'!
createEdition
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) dbObject.
    recoveredValue1 := (recoveredValue0) editNewVersion.
    recoveredValue2 := (recoveredValue1) modified.
    ^recoveredValue2
! !

"ASDBase.ic method 0x2005c144; bytecode file offset 0x958ab0"
!SGLogicModel methodsFor: 'recovered'!
initESDLController
    | recoveredValue0 |
    recoveredValue0 := SGLmManager.
    (recoveredValue0) initESDLController.
    ^self
! !

"ASDBase.ic method 0x2005d1c0; bytecode file offset 0x959af0"
!SGLogicModel methodsFor: 'recovered'!
dbXmlClearModifyRecursive
    | recoveredValue0 |
    recoveredValue0 := dbObject.
    (recoveredValue0) dbXmlClearModifyRecursive.
    ^self
! !

"ASDBase.ic method 0x200642f4; bytecode file offset 0x961970"
!SGLogicModel methodsFor: 'recovered'!
modified
    | recoveredValue0 |
    recoveredValue0 := (self) dbObject.
    (recoveredValue0) setModify.
    ^self
! !

"ASDBase.ic method 0x20066824; bytecode file offset 0x963428"
!SGLogicModel methodsFor: 'recovered'!
dbObject
    | recoveredValue0 |
    recoveredValue0 := dbObject.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20073540; bytecode file offset 0x970b34"
!SGLogicModel methodsFor: 'recovered'!
source
    ^nil
! !

"ASDBase.ic method 0x20074b0c; bytecode file offset 0x9757c8"
!SGLogicModel methodsFor: 'recovered'!
dbXmlIsDbObject
    ^true
! !

"ASDBase.ic method 0x2007a4d4; bytecode file offset 0x97c330"
!SGLogicModel methodsFor: 'recovered'!
isASDLUnit
    ^false
! !

"ASDBase.ic method 0x2007ad34; bytecode file offset 0x97c330"
!SGLogicModel methodsFor: 'recovered'!
isStateMachine
    ^false
! !

"ASDBase.ic method 0x2007b804; bytecode file offset 0x97c330"
!SGLogicModel methodsFor: 'recovered'!
isCCodeBlock
    ^false
! !

"ASDBase.ic method 0x2007c184; bytecode file offset 0x97c330"
!SGLogicModel methodsFor: 'recovered'!
isTopCtBlock
    ^false
! !

"ASDBase.ic method 0x2007f374; bytecode file offset 0x97c330"
!SGLogicModel methodsFor: 'recovered'!
isProjectLogic
    ^false
! !

"ASDBase.ic method 0x2007f9dc; bytecode file offset 0x97c330"
!SGLogicModel methodsFor: 'recovered'!
isTopHybridBlock
    ^false
! !

"ASDBase.ic method 0x2009255c; bytecode file offset 0x98ef64"
!SGLogicModel methodsFor: 'recovered'!
performRecursive: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := dbObject.
    recoveredValue1 := recoveredArg1.
    (recoveredValue0) perform: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x200bb970; bytecode file offset 0x9b823c"
!SGLogicModel methodsFor: 'recovered'!
createLogicMethodsForAnalyzeSyntax: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) createLogicMethods: (recoveredValue0).
    (self) analyzeSyntax.
    ^self
! !

"ASDBase.ic method 0x200bdb8c; bytecode file offset 0x9bb178"
!SGLogicModel methodsFor: 'recovered'!
dbObject: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    dbObject := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200d6540; bytecode file offset 0x9d3134"
!SGLogicModel methodsFor: 'recovered'!
initialize
    super initialize.
    (self) reinitialize.
    ^self
! !

"ASDBase.ic method 0x200e3dc0; bytecode file offset 0x9e06a4"
!SGLogicModel methodsFor: 'recovered'!
analyze
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) errorHandler.
    recoveredValue1 := (self) errTitle.
    recoveredValue2 := ('Analyzing ') , (recoveredValue1).
    (recoveredValue0) title: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x2011b8e4; bytecode file offset 0xa181a4"
!SGLogicModel methodsFor: 'recovered'!
setStateTest
    | recoveredStack0 recoveredStack1 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) dbObject.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 11] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack0) initializeRBDBObject.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) dbObject.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack0) setStateTest.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20136350; bytecode file offset 0xa32cdc"
!SGLogicModel methodsFor: 'recovered'!
bdlSyntaxErrNo: recoveredArg1 with: recoveredArg2 source: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := (self) errorHandler.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := Array.
    recoveredValue3 := recoveredArg2.
    recoveredValue4 := (recoveredValue2) with: (recoveredValue3).
    recoveredValue5 := recoveredArg3.
    (recoveredValue0) syntaxErrorNo: (recoveredValue1) args: (recoveredValue4) category: ('Bdl') source: (recoveredValue5).
    ^self
! !

"ASDBase.ic method 0x2014f354; bytecode file offset 0xa4bc1c"
!SGLogicModel methodsFor: 'recovered'!
buildMdlDeclarations
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) methods.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := [:block280ccf18Arg1 | 
    | block280ccf18Value0 block280ccf18Value1 |
    block280ccf18Value0 := block280ccf18Arg1.
    block280ccf18Value1 := (block280ccf18Value0) buildMdlDeclaration.
    block280ccf18Value1
].
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack0) checkForLmErrors.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2015755c; bytecode file offset 0xa53fc8"
!SGLogicModel methodsFor: 'recovered'!
lmSyntaxErrorNo: recoveredArg1 with: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := (self) errorHandler.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := Array.
    recoveredValue3 := recoveredArg2.
    recoveredValue4 := (recoveredValue2) with: (recoveredValue3).
    recoveredValue5 := (self) source.
    (recoveredValue0) syntaxErrorNo: (recoveredValue1) args: (recoveredValue4) category: ('Lm') source: (recoveredValue5).
    ^self
! !

"ASDBase.ic method 0x2015761c; bytecode file offset 0xa53fc8"
!SGLogicModel methodsFor: 'recovered'!
bdlSyntaxErrNo: recoveredArg1 with: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := (self) errorHandler.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := Array.
    recoveredValue3 := recoveredArg2.
    recoveredValue4 := (recoveredValue2) with: (recoveredValue3).
    recoveredValue5 := (self) source.
    (recoveredValue0) syntaxErrorNo: (recoveredValue1) args: (recoveredValue4) category: ('Bdl') source: (recoveredValue5).
    ^self
! !

"ASDBase.ic method 0x201721a0; bytecode file offset 0xa6ea64"
!SGLogicModel methodsFor: 'recovered'!
buildMdlMethods
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) methods.
    recoveredValue1 := [:recoveredBlock5Arg1 | 
    | recoveredBlock5Value0 recoveredBlock5Value1 recoveredBlock5Value2 |
    recoveredBlock5Value0 := recoveredBlock5Arg1.
    (self) currentMethod: (recoveredBlock5Value0).
    recoveredBlock5Value1 := recoveredBlock5Arg1.
    recoveredBlock5Value2 := (recoveredBlock5Value1) buildMdl.
    recoveredBlock5Value2
].
    (recoveredValue0) do: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x20179830; bytecode file offset 0xa7623c"
!SGLogicModel methodsFor: 'recovered'!
lmErrorNo: recoveredArg1 with: recoveredArg2 with: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := (self) errorHandler.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := Array.
    recoveredValue3 := recoveredArg2.
    recoveredValue4 := recoveredArg3.
    recoveredValue5 := (recoveredValue2) with: (recoveredValue3) with: (recoveredValue4).
    recoveredValue6 := (self) source.
    (recoveredValue0) generalErrorNo: (recoveredValue1) args: (recoveredValue5) category: ('Lm') source: (recoveredValue6).
    ^self
! !

"ASDBase.ic method 0x20195774; bytecode file offset 0xa9203c"
!SGLogicModel methodsFor: 'recovered'!
currentMethod: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) methods.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 15] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) logicSpec.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack0) currentMethod: (recoveredStack1).
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := 17.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack2 := (recoveredStack2) name.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            (recoveredStack0) lmSyntaxErrorNo: (recoveredStack1) with: (recoveredStack2).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2027b9e0; bytecode file offset 0xb782a8"
!SGLogicModel methodsFor: 'recovered'!
createLogicMethods: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 40] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := [:recoveredBlock13Arg1 | 
    | recoveredBlock13Value0 recoveredBlock13Value1 recoveredBlock13Value2 recoveredBlock13Value3 recoveredBlock13Value4 recoveredBlock13Value5 recoveredBlock13Value6 |
    recoveredBlock13Value0 := recoveredBlock13Arg1.
    recoveredBlock13Value1 := (self) createLogicMethod: (recoveredBlock13Value0).
    recoveredLocal1 := recoveredBlock13Value1.
    recoveredBlock13Value2 := recoveredLocal1.
    recoveredBlock13Value3 := recoveredBlock13Arg1.
    (recoveredBlock13Value2) createVariablesFrom: (recoveredBlock13Value3).
    recoveredBlock13Value4 := (self) methods.
    recoveredBlock13Value5 := recoveredLocal1.
    recoveredBlock13Value6 := (recoveredBlock13Value4) add: (recoveredBlock13Value5).
    recoveredBlock13Value6
].
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x202b4b64; bytecode file offset 0xbb1450"
!SGLogicModel methodsFor: 'recovered'!
createLogicMethod: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) logicMethodClass.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) create.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := SGLmElement.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack2 := (recoveredStack2) createMdlNameForExecutable: (recoveredStack3).
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack1) mdlName: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := SGLmElement.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack3 := (recoveredStack3) aliasName.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack2 := (recoveredStack2) getImplementationForMethodAliasName: (recoveredStack3).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            (recoveredStack1) implementation: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            (recoveredStack1) dataModelRef: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack2 := (recoveredStack2) isPublic.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            (recoveredStack1) public: (recoveredStack2).
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack2 := (recoveredStack2) isProcess.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 44] ifFalse: [recoveredPC := 40].
        ].
        recoveredStep = 40 ifTrue: [
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := (recoveredStack1) isRunnable.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack0 := (recoveredStack0) process: (recoveredStack1).
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2034ce24; bytecode file offset 0xc4971c"
!SGLogicModel methodsFor: 'recovered'!
addMethodsForCT
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 |
    recoveredValue0 := SGLmGeneratedMethod.
    recoveredValue1 := (recoveredValue0) create.
    recoveredValue2 := (self) class.
    recoveredValue3 := (self) class.
    recoveredValue4 := (recoveredValue3) setInputsMethodName.
    recoveredValue5 := (recoveredValue2) createMdlName: (recoveredValue4).
    recoveredValue6 := (recoveredValue1) mdlName: (recoveredValue5).
    recoveredLocal1 := recoveredValue6.
    recoveredValue7 := (self) logicManager.
    recoveredValue8 := (recoveredValue7) inputVariables.
    recoveredValue9 := [:recoveredBlock23Arg1 | 
    | recoveredBlock23Value0 recoveredBlock23Value1 recoveredBlock23Value2 recoveredBlock23Value3 recoveredBlock23Value4 recoveredBlock23Value5 |
    recoveredBlock23Value0 := recoveredLocal1.
    recoveredBlock23Value1 := SGLmMethodData.
    recoveredBlock23Value2 := recoveredBlock23Arg1.
    recoveredBlock23Value3 := (recoveredBlock23Value2) dataModelRef.
    recoveredBlock23Value4 := (recoveredBlock23Value1) createForInput: (recoveredBlock23Value3).
    recoveredBlock23Value5 := (recoveredBlock23Value0) addArgument: (recoveredBlock23Value4).
    recoveredBlock23Value5
].
    (recoveredValue8) do: (recoveredValue9).
    recoveredValue10 := (self) methods.
    recoveredValue11 := recoveredLocal1.
    (recoveredValue10) add: (recoveredValue11).
    recoveredValue12 := (self) methods.
    recoveredValue13 := SGLmGeneratedMethod.
    recoveredValue14 := (recoveredValue13) createLogicMethodsForCtSimulation.
    (recoveredValue12) addAll: (recoveredValue14).
    ^self
! !

"ASDBase.ic method 0x2059358c; bytecode file offset 0xe8feb8"
!SGLogicModel methodsFor: 'recovered'!
buildMdlMacrosForCT
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 recoveredValue21 recoveredValue22 recoveredValue23 recoveredValue24 recoveredValue25 recoveredValue26 recoveredValue27 recoveredValue28 recoveredValue29 recoveredValue30 recoveredValue31 recoveredValue32 recoveredValue33 recoveredValue34 recoveredValue35 recoveredValue36 recoveredValue37 recoveredValue38 recoveredValue39 recoveredValue40 recoveredValue41 recoveredValue42 recoveredValue43 recoveredValue44 recoveredValue45 recoveredValue46 recoveredValue47 recoveredValue48 recoveredValue49 recoveredValue50 recoveredValue51 recoveredValue52 recoveredValue53 recoveredValue54 recoveredValue55 recoveredValue56 recoveredValue57 recoveredValue58 recoveredValue59 recoveredValue60 recoveredValue61 recoveredValue62 recoveredValue63 recoveredValue64 recoveredValue65 recoveredValue66 recoveredValue67 recoveredValue68 recoveredValue69 recoveredValue70 recoveredValue71 recoveredValue72 recoveredValue73 recoveredValue74 recoveredValue75 recoveredValue76 recoveredValue77 recoveredValue78 recoveredValue79 recoveredValue80 recoveredValue81 recoveredValue82 recoveredValue83 recoveredValue84 recoveredValue85 recoveredValue86 recoveredValue87 recoveredValue88 recoveredValue89 recoveredValue90 recoveredValue91 recoveredValue92 recoveredValue93 recoveredValue94 recoveredValue95 recoveredValue96 recoveredValue97 recoveredValue98 |
    recoveredValue0 := (self) mdlBuilder.
    recoveredValue1 := (recoveredValue0) asMdlMacroBuilder.
    recoveredValue2 := recoveredValue1.
    recoveredValue3 := (self) class.
    recoveredValue4 := (recoveredValue3) getTimeMethodName.
    recoveredValue5 := SGCgTypeFactory.
    recoveredValue6 := (self) lmRealType.
    recoveredValue7 := (recoveredValue5) createType: (recoveredValue6) implementation: (nil).
    (recoveredValue2) macro: (recoveredValue4) return: (recoveredValue7).
    recoveredValue8 := recoveredValue1.
    (recoveredValue8) block.
    recoveredValue9 := recoveredValue1.
    recoveredValue10 := (self) class.
    recoveredValue11 := (recoveredValue10) ctBlockVarName.
    (recoveredValue9) id: (recoveredValue11).
    recoveredValue12 := recoveredValue1.
    recoveredValue13 := (self) class.
    recoveredValue14 := (recoveredValue13) getTimeMethodName.
    recoveredValue15 := (recoveredValue14) , (' (%1)').
    recoveredValue16 := (self) mdlBuilder.
    recoveredValue17 := (recoveredValue16) mdlRealType.
    (recoveredValue12) exprANSIC: (recoveredValue15) numOfExprs: (1) mdlClass: (recoveredValue17).
    recoveredValue18 := recoveredValue1.
    (recoveredValue18) return.
    recoveredValue19 := recoveredValue1.
    (recoveredValue19) endBlock.
    recoveredValue20 := recoveredValue1.
    (recoveredValue20) endMacro.
    recoveredValue21 := recoveredValue1.
    recoveredValue22 := (self) class.
    recoveredValue23 := (recoveredValue22) getDTMethodName.
    recoveredValue24 := SGCgTypeFactory.
    recoveredValue25 := (self) lmRealType.
    recoveredValue26 := (recoveredValue24) createType: (recoveredValue25) implementation: (nil).
    (recoveredValue21) macro: (recoveredValue23) return: (recoveredValue26).
    recoveredValue27 := recoveredValue1.
    (recoveredValue27) block.
    recoveredValue28 := recoveredValue1.
    recoveredValue29 := (self) class.
    recoveredValue30 := (recoveredValue29) getDTMethodName.
    recoveredValue31 := (recoveredValue30) , (' ()').
    recoveredValue32 := (self) mdlBuilder.
    recoveredValue33 := (recoveredValue32) mdlRealType.
    (recoveredValue28) exprANSIC: (recoveredValue31) numOfExprs: (0) mdlClass: (recoveredValue33).
    recoveredValue34 := recoveredValue1.
    (recoveredValue34) return.
    recoveredValue35 := recoveredValue1.
    (recoveredValue35) endBlock.
    recoveredValue36 := recoveredValue1.
    (recoveredValue36) endMacro.
    recoveredValue37 := recoveredValue1.
    recoveredValue38 := (self) class.
    recoveredValue39 := (recoveredValue38) getIntegrationStepsizeMethodName.
    recoveredValue40 := SGCgTypeFactory.
    recoveredValue41 := (self) lmRealType.
    recoveredValue42 := (recoveredValue40) createType: (recoveredValue41) implementation: (nil).
    (recoveredValue37) macro: (recoveredValue39) return: (recoveredValue42).
    recoveredValue43 := recoveredValue1.
    (recoveredValue43) block.
    recoveredValue44 := recoveredValue1.
    recoveredValue45 := (self) class.
    recoveredValue46 := (recoveredValue45) ctBlockVarName.
    (recoveredValue44) id: (recoveredValue46).
    recoveredValue47 := recoveredValue1.
    recoveredValue48 := (self) class.
    recoveredValue49 := (recoveredValue48) getIntegrationStepsizeMethodName.
    recoveredValue50 := (recoveredValue49) , (' (%1)').
    recoveredValue51 := (self) mdlBuilder.
    recoveredValue52 := (recoveredValue51) mdlRealType.
    (recoveredValue47) exprANSIC: (recoveredValue50) numOfExprs: (1) mdlClass: (recoveredValue52).
    recoveredValue53 := recoveredValue1.
    (recoveredValue53) return.
    recoveredValue54 := recoveredValue1.
    (recoveredValue54) endBlock.
    recoveredValue55 := recoveredValue1.
    (recoveredValue55) endMacro.
    recoveredValue56 := recoveredValue1.
    recoveredValue57 := (self) class.
    recoveredValue58 := (recoveredValue57) setContinuousStateMethodName.
    recoveredValue59 := SGCgTypeFactory.
    recoveredValue60 := (self) lmVoidType.
    recoveredValue61 := (recoveredValue59) createType: (recoveredValue60) implementation: (nil).
    (recoveredValue56) macro: (recoveredValue58) return: (recoveredValue61).
    recoveredValue62 := recoveredValue1.
    recoveredValue63 := SGCgTypeFactory.
    recoveredValue64 := (self) lmRealType.
    recoveredValue65 := (recoveredValue63) createType: (recoveredValue64) implementation: (nil).
    (recoveredValue62) parmDecl: ('state') class: (recoveredValue65).
    recoveredValue66 := recoveredValue1.
    recoveredValue67 := SGCgTypeFactory.
    recoveredValue68 := (self) lmRealType.
    recoveredValue69 := (recoveredValue67) createType: (recoveredValue68) implementation: (nil).
    (recoveredValue66) parmDecl: ('value') class: (recoveredValue69).
    recoveredValue70 := recoveredValue1.
    (recoveredValue70) block.
    recoveredValue71 := recoveredValue1.
    recoveredValue72 := (self) class.
    recoveredValue73 := (recoveredValue72) ctBlockVarName.
    (recoveredValue71) id: (recoveredValue73).
    recoveredValue74 := recoveredValue1.
    (recoveredValue74) id: ('state').
    recoveredValue75 := recoveredValue1.
    (recoveredValue75) id: ('value').
    recoveredValue76 := recoveredValue1.
    recoveredValue77 := (self) class.
    recoveredValue78 := (recoveredValue77) setContinuousStateMethodName.
    recoveredValue79 := (recoveredValue78) , ('(%1,&%2,%3)').
    (recoveredValue76) exprANSIC: (recoveredValue79) numOfExprs: (3).
    recoveredValue80 := recoveredValue1.
    (recoveredValue80) endStmnt.
    recoveredValue81 := recoveredValue1.
    (recoveredValue81) endBlock.
    recoveredValue82 := recoveredValue1.
    (recoveredValue82) endMacro.
    recoveredValue83 := recoveredValue1.
    recoveredValue84 := (self) class.
    recoveredValue85 := (recoveredValue84) resetCTSolverMethodName.
    recoveredValue86 := SGCgTypeFactory.
    recoveredValue87 := (self) lmVoidType.
    recoveredValue88 := (recoveredValue86) createType: (recoveredValue87) implementation: (nil).
    (recoveredValue83) macro: (recoveredValue85) return: (recoveredValue88).
    recoveredValue89 := recoveredValue1.
    (recoveredValue89) block.
    recoveredValue90 := recoveredValue1.
    recoveredValue91 := (self) class.
    recoveredValue92 := (recoveredValue91) ctBlockVarName.
    (recoveredValue90) id: (recoveredValue92).
    recoveredValue93 := recoveredValue1.
    recoveredValue94 := (self) class.
    recoveredValue95 := (recoveredValue94) resetCTSolverMethodName.
    recoveredValue96 := (recoveredValue95) , (' (%1)').
    (recoveredValue93) exprANSIC: (recoveredValue96) numOfExprs: (1).
    recoveredValue97 := recoveredValue1.
    (recoveredValue97) endStmnt.
    recoveredValue98 := recoveredValue1.
    (recoveredValue98) endBlock.
    (recoveredValue1) endMacro.
    ^self
! !

