"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x200059b8; bytecode file offset 0x902744"
!EtasASAP2TransferManager methodsFor: 'recovered'!
getMapSymbolForNode: recoveredArg1 manager: recoveredArg2
    ^self
! !

"ASDBase.ic method 0x2001575c; bytecode file offset 0x912098"
!EtasASAP2TransferManager methodsFor: 'recovered'!
mainController
    | recoveredValue0 |
    recoveredValue0 := MainController.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20027df4; bytecode file offset 0x934580"
!EtasASAP2TransferManager methodsFor: 'recovered'!
asam2MCOptions
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) asdProject.
    recoveredValue1 := (recoveredValue0) asam2MCOptions.
    ^recoveredValue1
! !

"ASDBase.ic method 0x200489a4; bytecode file offset 0x945288"
!EtasASAP2TransferManager methodsFor: 'recovered'!
clearNoInputQuantityOccurred
    noInputQuantityOccurred := false.
    ^self
! !

"ASDBase.ic method 0x2004a8e0; bytecode file offset 0x9471a4"
!EtasASAP2TransferManager methodsFor: 'recovered'!
setNoInputQuantityOccurred
    noInputQuantityOccurred := true.
    ^self
! !

"ASDBase.ic method 0x2006613c; bytecode file offset 0x963428"
!EtasASAP2TransferManager methodsFor: 'recovered'!
isNoInputQuantityOccurred
    | recoveredValue0 |
    recoveredValue0 := noInputQuantityOccurred.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006776c; bytecode file offset 0x9646f8"
!EtasASAP2TransferManager methodsFor: 'recovered'!
projectContext
    | recoveredValue0 |
    recoveredValue0 := projectContext.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20068754; bytecode file offset 0x965b90"
!EtasASAP2TransferManager methodsFor: 'recovered'!
a2lFile
    | recoveredValue0 |
    recoveredValue0 := a2lFile.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20069b10; bytecode file offset 0x966bdc"
!EtasASAP2TransferManager methodsFor: 'recovered'!
codeGeneration
    | recoveredValue0 |
    recoveredValue0 := codeGeneration.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006b618; bytecode file offset 0x96873c"
!EtasASAP2TransferManager methodsFor: 'recovered'!
asap2Project
    | recoveredValue0 |
    recoveredValue0 := asap2Project.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006c7fc; bytecode file offset 0x9692b0"
!EtasASAP2TransferManager methodsFor: 'recovered'!
symbols
    | recoveredValue0 |
    recoveredValue0 := symbols.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006cf08; bytecode file offset 0x969c04"
!EtasASAP2TransferManager methodsFor: 'recovered'!
logStream
    | recoveredValue0 |
    recoveredValue0 := logStream.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006df10; bytecode file offset 0x96a9dc"
!EtasASAP2TransferManager methodsFor: 'recovered'!
asap2Builder
    | recoveredValue0 |
    recoveredValue0 := asap2Builder.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200855a0; bytecode file offset 0x981e64"
!EtasASAP2TransferManager methodsFor: 'recovered'!
asdProject: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) asRBDBReference.
    asdProjectKey := recoveredValue1.
    ^self
! !

"ASDBase.ic method 0x200907c4; bytecode file offset 0x98d090"
!EtasASAP2TransferManager methodsFor: 'recovered'!
functionStackNotEmpty
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) functionStack.
    recoveredValue1 := (recoveredValue0) size.
    recoveredValue2 := (recoveredValue1) > (0).
    ^recoveredValue2
! !

"ASDBase.ic method 0x20090810; bytecode file offset 0x98d0ec"
!EtasASAP2TransferManager methodsFor: 'recovered'!
functionStackIsEmpty
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) functionStack.
    recoveredValue1 := (recoveredValue0) size.
    recoveredValue2 := (recoveredValue1) = (0).
    ^recoveredValue2
! !

"ASDBase.ic method 0x200b581c; bytecode file offset 0x9b2100"
!EtasASAP2TransferManager methodsFor: 'recovered'!
projectDefinitionFileName
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) asdProject.
    recoveredValue1 := (recoveredValue0) target.
    recoveredValue2 := (recoveredValue1) getTargetSpecificPath.
    recoveredValue3 := (recoveredValue2) , ('prj_def.a2l').
    ^recoveredValue3
! !

"ASDBase.ic method 0x200b5838; bytecode file offset 0x9b2100"
!EtasASAP2TransferManager methodsFor: 'recovered'!
dimXFileName
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) asdProject.
    recoveredValue1 := (recoveredValue0) target.
    recoveredValue2 := (recoveredValue1) getTargetSpecificPath.
    recoveredValue3 := (recoveredValue2) , ('\dim_x.a2l').
    ^recoveredValue3
! !

"ASDBase.ic method 0x200bedf8; bytecode file offset 0x9bc0b4"
!EtasASAP2TransferManager methodsFor: 'recovered'!
projectContext: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    projectContext := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c0634; bytecode file offset 0x9bd228"
!EtasASAP2TransferManager methodsFor: 'recovered'!
a2lFile: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    a2lFile := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c11b0; bytecode file offset 0x9bdf14"
!EtasASAP2TransferManager methodsFor: 'recovered'!
codeGeneration: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    codeGeneration := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c26b0; bytecode file offset 0x9bf474"
!EtasASAP2TransferManager methodsFor: 'recovered'!
asap2Project: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    asap2Project := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c33c4; bytecode file offset 0x9bfde0"
!EtasASAP2TransferManager methodsFor: 'recovered'!
symbols: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    symbols := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c405c; bytecode file offset 0x9c0bf0"
!EtasASAP2TransferManager methodsFor: 'recovered'!
setProgressDialog: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    progressDialog := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c4610; bytecode file offset 0x9c11bc"
!EtasASAP2TransferManager methodsFor: 'recovered'!
asap2Builder: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    asap2Builder := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c53a8; bytecode file offset 0x9c1f64"
!EtasASAP2TransferManager methodsFor: 'recovered'!
codeManager: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    codeManager := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c58cc; bytecode file offset 0x9c22c8"
!EtasASAP2TransferManager methodsFor: 'recovered'!
readMapFile: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    readMapFile := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200d5450; bytecode file offset 0x9d1d3c"
!EtasASAP2TransferManager methodsFor: 'recovered'!
memoryLayoutFileName
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := (self) asdProject.
    recoveredValue1 := (recoveredValue0) target.
    recoveredValue2 := (recoveredValue1) getTargetSpecificPath.
    recoveredValue3 := (recoveredValue2) asPathname.
    recoveredValue4 := (recoveredValue3) , ('mem_lay.a2l').
    ^recoveredValue4
! !

"ASDBase.ic method 0x200d9110; bytecode file offset 0x9d5b4c"
!EtasASAP2TransferManager methodsFor: 'recovered'!
cleanupStackAppendToModule: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    (self) cleanupGroupStackAppendToModule: (recoveredValue0).
    recoveredValue1 := recoveredArg1.
    (self) cleanupFunctionStackAppendToModule: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x200e6c08; bytecode file offset 0x9e34cc"
!EtasASAP2TransferManager methodsFor: 'recovered'!
getProjectNodeTreeForProject: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := EtasEMNode.
    (recoveredValue0) HierarchicalNames: (false).
    recoveredValue1 := EtasEMProjNode.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (recoveredValue1) createProjectNodeTreeForProject: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x200e78cc; bytecode file offset 0x9e41a8"
!EtasASAP2TransferManager methodsFor: 'recovered'!
pushGroup: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := ('Kk') = ('Call_46902').
    recoveredValue1 := (self) groupStack.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (recoveredValue1) addLast: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x200e78e4; bytecode file offset 0x9e41a8"
!EtasASAP2TransferManager methodsFor: 'recovered'!
pushFunction: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := ('Kk') = ('Call_46902').
    recoveredValue1 := (self) functionStack.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (recoveredValue1) addLast: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x200ee5c8; bytecode file offset 0x9eae9c"
!EtasASAP2TransferManager methodsFor: 'recovered'!
popFunction
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) functionStackNotEmpty.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 8] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) functionStack.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := (recoveredStack0) removeLast.
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
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x200ee5dc; bytecode file offset 0x9eae9c"
!EtasASAP2TransferManager methodsFor: 'recovered'!
peekFunction
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) functionStackNotEmpty.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 8] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) functionStack.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := (recoveredStack0) last.
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
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20105d28; bytecode file offset 0xa025e4"
!EtasASAP2TransferManager methodsFor: 'recovered'!
asdProject
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := asdProjectKey.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := [:block280c621cArg1 | 
    nil
].
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) getObjectIfUndefined: (recoveredStack2).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x20106704; bytecode file offset 0xa02fb8"
!EtasASAP2TransferManager methodsFor: 'recovered'!
readMapFile
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := readMapFile.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 13] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            readMapFile := recoveredStack1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := readMapFile.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x20107560; bytecode file offset 0xa03e24"
!EtasASAP2TransferManager methodsFor: 'recovered'!
groupStackNotEmpty
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := ('Kk') = ('Call_46902').
    recoveredValue1 := (self) groupStack.
    recoveredValue2 := (recoveredValue1) size.
    recoveredValue3 := (recoveredValue2) > (0).
    ^recoveredValue3
! !

"ASDBase.ic method 0x20107588; bytecode file offset 0xa03e4c"
!EtasASAP2TransferManager methodsFor: 'recovered'!
groupStackIsEmpty
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := ('Kk') = ('Call_46902').
    recoveredValue1 := (self) groupStack.
    recoveredValue2 := (recoveredValue1) size.
    recoveredValue3 := (recoveredValue2) = (0).
    ^recoveredValue3
! !

"ASDBase.ic method 0x2010ccf4; bytecode file offset 0xa095ac"
!EtasASAP2TransferManager methodsFor: 'recovered'!
logProgress: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := progressDialog.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 15] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := progressDialog.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack1) fractionComplete: (recoveredStack2).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2010e0ac; bytecode file offset 0xa0a970"
!EtasASAP2TransferManager methodsFor: 'recovered'!
initForAsdProject: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg1.
    (self) asdProject: (recoveredValue0).
    recoveredValue1 := ASDAsap2Builder.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (recoveredValue1) createAsap2BuilderForProject: (recoveredValue2).
    (self) asap2Builder: (recoveredValue3).
    ^self
! !

"ASDBase.ic method 0x20118cfc; bytecode file offset 0xa155c4"
!EtasASAP2TransferManager methodsFor: 'recovered'!
initialize
    | recoveredValue0 recoveredValue1 |
    (self) codeGeneration: (true).
    (self) clearNoInputQuantityOccurred.
    recoveredValue0 := ASAP2FileReader.
    recoveredValue1 := (recoveredValue0) new.
    (recoveredValue1) initializeReadIncludeFiles.
    ^self
! !

"ASDBase.ic method 0x20125294; bytecode file offset 0xa21b54"
!EtasASAP2TransferManager methodsFor: 'recovered'!
asap2ProjectVersion
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) asdProject.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) versionString.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := 'Version'.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2012a4c0; bytecode file offset 0xa26dec"
!EtasASAP2TransferManager methodsFor: 'recovered'!
functionStack
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := functionStack.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 15] ifFalse: [recoveredPC := 10].
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
            functionStack := recoveredStack1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := functionStack.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x201339ac; bytecode file offset 0xa3026c"
!EtasASAP2TransferManager methodsFor: 'recovered'!
logText: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) logStream.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) logStream.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack1) cr.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack0) nextPutAll: (recoveredStack1).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2014a65c; bytecode file offset 0xa46f24"
!EtasASAP2TransferManager methodsFor: 'recovered'!
createIfDataForControllerTargetDeviceLabel: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := ASAP2ModuleIFData.
    recoveredValue1 := (recoveredValue0) createDefault.
    recoveredValue2 := recoveredValue1.
    recoveredValue3 := recoveredArg1.
    (recoveredValue2) name: (recoveredValue3).
    recoveredLocal1 := recoveredValue1.
    recoveredValue4 := (self) dimXFileName.
    recoveredValue5 := recoveredLocal1.
    (self) readControllerTPBlobFromFile: (recoveredValue4) into: (recoveredValue5).
    recoveredValue6 := recoveredLocal1.
    ^recoveredValue6
! !

"ASDBase.ic method 0x2015063c; bytecode file offset 0xa4cf00"
!EtasASAP2TransferManager methodsFor: 'recovered'!
logCr
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) logStream.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) logStream.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack1) setToEnd.
            recoveredStack1 := recoveredStack0.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack1) cr.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack0) close.
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

"ASDBase.ic method 0x2015dabc; bytecode file offset 0xa5a37c"
!EtasASAP2TransferManager methodsFor: 'recovered'!
functionsWithImport
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := functionsWithImport.
    recoveredValue1 := [
    | recoveredBlock6Value0 recoveredBlock6Value1 recoveredBlock6Value2 |
    recoveredBlock6Value0 := LookupTable.
    recoveredBlock6Value1 := (recoveredBlock6Value0) new.
    recoveredBlock6Value2 := recoveredBlock6Value1.
    functionsWithImport := recoveredBlock6Value2.
    recoveredBlock6Value1
].
    recoveredValue2 := (recoveredValue0) ifNil: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x2016aa30; bytecode file offset 0xa67314"
!EtasASAP2TransferManager methodsFor: 'recovered'!
popGroup
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := 'Kk'.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := 'Call_46902'.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := (recoveredStack0) groupStackNotEmpty.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 19].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) groupStack.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := (recoveredStack0) removeLast.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2016aa4c; bytecode file offset 0xa67314"
!EtasASAP2TransferManager methodsFor: 'recovered'!
peekGroup
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := 'Kk'.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := 'Call_46902'.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := (recoveredStack0) groupStackNotEmpty.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 19].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) groupStack.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := (recoveredStack0) last.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2017468c; bytecode file offset 0xa70f54"
!EtasASAP2TransferManager methodsFor: 'recovered'!
defaultMapSymbolFor: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := ('Kk') == ('Call_79644').
    recoveredValue1 := MapMemorySymbol.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (recoveredValue1) name: (recoveredValue2) value: (4294967295) bit: (nil) type: (nil) visibility: (nil).
    ^recoveredValue3
! !

"ASDBase.ic method 0x2017756c; bytecode file offset 0xa73e38"
!EtasASAP2TransferManager methodsFor: 'recovered'!
createIfDataForDeviceLabel: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) codeManager.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) target.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack0 := (recoveredStack0) isExperimentalTarget.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) createIfDataForExperimentalTargetDeviceLabel: (recoveredStack1).
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := 'Kk'.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := 'Call_57692'.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := (recoveredStack0) == (recoveredStack1).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2017b2a0; bytecode file offset 0xa77b60"
!EtasASAP2TransferManager methodsFor: 'recovered'!
ctTasksForProject
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) asdProject.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) osLogicForCurrentTarget.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) asdProject.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) ctTasksForProject: (recoveredStack1).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredPC := 21.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2018df94; bytecode file offset 0xa8a854"
!EtasASAP2TransferManager methodsFor: 'recovered'!
setProgressTextToGarbageCollection
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := progressDialog.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 23] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := progressDialog.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack3 := 'Garbage Collection...'.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack2) messageString: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack3 := 0.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            (recoveredStack2) fractionComplete: (recoveredStack3).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2018e7b4; bytecode file offset 0xa8b078"
!EtasASAP2TransferManager methodsFor: 'recovered'!
groupStack
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := 'Kk'.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := 'Call_46902'.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := groupStack.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 21] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := OrderedCollection.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            groupStack := recoveredStack1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := groupStack.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x201a35dc; bytecode file offset 0xa9fea4"
!EtasASAP2TransferManager methodsFor: 'recovered'!
codeManager
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := codeManager.
    recoveredValue1 := [
    | recoveredBlock6Value0 recoveredBlock6Value1 recoveredBlock6Value2 |
    (self) etasCodeGenHalt.
    recoveredBlock6Value0 := (self) mainController.
    recoveredBlock6Value1 := (self) projectContext.
    recoveredBlock6Value2 := (recoveredBlock6Value0) createCodeManager: (recoveredBlock6Value1).
    ^recoveredBlock6Value2
].
    (recoveredValue0) ifNil: (recoveredValue1).
    recoveredValue2 := codeManager.
    ^recoveredValue2
! !

"ASDBase.ic method 0x201b3b4c; bytecode file offset 0xab0410"
!EtasASAP2TransferManager methodsFor: 'recovered'!
initLogStream: recoveredArg1
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
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 22] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := ReadWriteStream.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack2 := ''.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) on: (recoveredStack2).
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            logStream := recoveredStack1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := logStream.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack1) close.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredPC := 25.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            logStream := recoveredStack1.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201be050; bytecode file offset 0xaba918"
!EtasASAP2TransferManager methodsFor: 'recovered'!
getOrCreateFunction: recoveredArg1 inModule: recoveredArg2
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
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
            recoveredStack1 := (recoveredStack1) functionNamed: (recoveredStack2).
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 24] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := ASAP2Function.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) create.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack2) name: (recoveredStack3).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            (recoveredStack1) addFunction: (recoveredStack2).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x201f9210; bytecode file offset 0xaf5adc"
!EtasASAP2TransferManager methodsFor: 'recovered'!
asap2ByteOrder
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) asdProject.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) target.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 23] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) isMSBFirst.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 23].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := ETASMsbFirst.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := (recoveredStack0) create.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := ETASMsbLast.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := (recoveredStack0) create.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x202153d0; bytecode file offset 0xb11ca4"
!EtasASAP2TransferManager methodsFor: 'recovered'!
readA2lInfoFromFile: recoveredArg1 into: recoveredArg2
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := ASAP2BaseObject.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1) initializeClass.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := CfsFileStream.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack3 := ORDONLY.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) open: (recoveredStack2) oflag: (recoveredStack3).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := (recoveredStack1) isCfsError.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 22] ifFalse: [recoveredPC := 24].
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            (recoveredStack1) parse: (recoveredStack2).
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            (recoveredStack1) close.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20225a68; bytecode file offset 0xb22344"
!EtasASAP2TransferManager methodsFor: 'recovered'!
mapFileName
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) asdProject.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) target.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack0 := (recoveredStack0) isGeneric.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 24].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := ASDPathOptions.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) instance.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := (recoveredStack0) optionCodeGenerationPath.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := (recoveredStack1) asdProject.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := (recoveredStack1) target.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := (recoveredStack1) hexFileNameWithSuffix.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := (recoveredStack0) , (recoveredStack1).
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := (recoveredStack0) asdProject.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := (recoveredStack0) target.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := (recoveredStack0) getTargetSpecificPath.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := '\temp.map'.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack0 := (recoveredStack0) , (recoveredStack1).
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x202330c0; bytecode file offset 0xb2f98c"
!EtasASAP2TransferManager methodsFor: 'recovered'!
log: recoveredArg1
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
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 34] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := (recoveredStack1) notEmpty.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 34].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) logStream.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 34] ifFalse: [recoveredPC := 20].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := (recoveredStack1) logStream.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            (recoveredStack2) setToEnd.
            recoveredStack2 := recoveredStack1.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            (recoveredStack2) cr.
            recoveredStack2 := recoveredStack1.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            (recoveredStack2) nextPutAll: (recoveredStack3).
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            (recoveredStack1) close.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2024c9d4; bytecode file offset 0xb492a4"
!EtasASAP2TransferManager methodsFor: 'recovered'!
createAsap2EntryForNode: recoveredArg1 inModule: recoveredArg2
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := 'Kk'.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := 'Call_46902'.
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
            recoveredStack1 := recoveredArg1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) reference.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) isPrimitive.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 24].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := (recoveredStack1) createAsap2EntryForPrimitiveNode: (recoveredStack2) inModule: (recoveredStack3).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredPC := 36.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            (recoveredStack1) createAsap2EntryForComplexNode: (recoveredStack2) inModule: (recoveredStack3).
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := 'Kk'.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack2 := 'Call_57087'.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := (recoveredStack1) == (recoveredStack2).
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x202546a8; bytecode file offset 0xb50f88"
!EtasASAP2TransferManager methodsFor: 'recovered'!
alignmentFileName
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) asdProject.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) target.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack0 := (recoveredStack0) isGeneric.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 28].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := ASDPathOptions.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) instance.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := (recoveredStack0) optionCodeGenerationPath.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := (recoveredStack1) asdProject.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := (recoveredStack1) target.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := (recoveredStack1) hexFileNameWithSuffix.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := (recoveredStack0) , (recoveredStack1).
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := '.a2l'.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := (recoveredStack0) , (recoveredStack1).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack0 := (recoveredStack0) asdProject.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := (recoveredStack0) target.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack0 := (recoveredStack0) getTargetSpecificPath.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := '\align.a2l'.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack0 := (recoveredStack0) , (recoveredStack1).
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x202629d8; bytecode file offset 0xb5f2ac"
!EtasASAP2TransferManager methodsFor: 'recovered'!
rememberFunctionForImportNode: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) peekFunction.
    recoveredValue1 := [:recoveredBlock5Arg1 | 
    | recoveredBlock5Local1 recoveredBlock5Stack0 recoveredBlock5Stack1 recoveredBlock5Stack2 recoveredBlock5Stack3 recoveredBlock5PC recoveredBlock5Step recoveredBlock5Done recoveredBlock5Result |
    recoveredBlock5Stack0 := self.
    recoveredBlock5PC := 12.
    recoveredBlock5Done := false.
    [recoveredBlock5Done not] whileTrue: [
        recoveredBlock5Step := recoveredBlock5PC.
        recoveredBlock5Step = 12 ifTrue: [
            recoveredBlock5Stack0 := (recoveredBlock5Stack0) functionsWithImport.
            recoveredBlock5PC := 13.
        ].
        recoveredBlock5Step = 13 ifTrue: [
            recoveredBlock5Stack1 := recoveredBlock5Arg1.
            recoveredBlock5PC := 14.
        ].
        recoveredBlock5Step = 14 ifTrue: [
            recoveredBlock5Stack2 := [
    | block280dfd94Value0 block280dfd94Value1 |
    block280dfd94Value0 := Set.
    block280dfd94Value1 := (block280dfd94Value0) new.
    block280dfd94Value1
].
            recoveredBlock5PC := 16.
        ].
        recoveredBlock5Step = 16 ifTrue: [
            recoveredBlock5PC := 25.
        ].
        recoveredBlock5Step = 25 ifTrue: [
            recoveredBlock5Stack0 := (recoveredBlock5Stack0) at: (recoveredBlock5Stack1) ifAbsentPut: (recoveredBlock5Stack2).
            recoveredBlock5PC := 27.
        ].
        recoveredBlock5Step = 27 ifTrue: [
            recoveredBlock5Local1 := recoveredBlock5Stack0.
            recoveredBlock5PC := 28.
        ].
        recoveredBlock5Step = 28 ifTrue: [
            recoveredBlock5Stack0 := recoveredBlock5Local1.
            recoveredBlock5PC := 29.
        ].
        recoveredBlock5Step = 29 ifTrue: [
            recoveredBlock5Stack1 := recoveredArg1.
            recoveredBlock5PC := 32.
        ].
        recoveredBlock5Step = 32 ifTrue: [
            recoveredBlock5Stack0 := (recoveredBlock5Stack0) add: (recoveredBlock5Stack1).
            recoveredBlock5PC := 34.
        ].
        recoveredBlock5Step = 34 ifTrue: [
            recoveredBlock5Result := recoveredBlock5Stack0.
            recoveredBlock5Done := true.
        ].
    ].
    recoveredBlock5Result
].
    (recoveredValue0) ifNotNil: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x20267e98; bytecode file offset 0xb64778"
!EtasASAP2TransferManager methodsFor: 'recovered'!
readMemoryLayoutsFromFile: recoveredArg1 into: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := ASAP2BaseObject.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1) initializeClass.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack2 := OrderedCollection.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack2 := (recoveredStack2) new.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack1) memoryLayout: (recoveredStack2).
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := ETASOSHandle.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := (recoveredStack1) readFile: (recoveredStack2).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := (recoveredStack1) isError.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
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
            recoveredStack1 := RBBcrtl32DLL.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := (recoveredStack1) removeCCommentAndWhiteSpacesFromReturnStream: (recoveredStack2).
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            (recoveredStack1) parse: (recoveredStack2).
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20273f9c; bytecode file offset 0xb7087c"
!EtasASAP2TransferManager methodsFor: 'recovered'!
readControllerTPBlobFromFile: recoveredArg1 into: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := ASAP2BaseObject.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1) initializeClass.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := CfsFileStream.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack3 := ORDONLY.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) open: (recoveredStack2) oflag: (recoveredStack3).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := (recoveredStack1) isCfsError.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 22] ifFalse: [recoveredPC := 24].
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := RBBcrtl32DLL.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack2 := (recoveredStack2) contents.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := (recoveredStack1) removeCCommentAndWhiteSpacesFromReturnStream: (recoveredStack2).
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            (recoveredStack1) close.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            (recoveredStack1) parse: (recoveredStack2).
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x202b30b4; bytecode file offset 0xbaf990"
!EtasASAP2TransferManager methodsFor: 'recovered'!
getAsap2ProjectFromAsdProject
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := (Fraction) numerator: (1) denominator: (10).
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack0) logProgress: (recoveredStack1).
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack0) createASAP2Project.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) asap2Project.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) getValidModule.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            (recoveredStack0) updateAsap2ModuleFromAsdProject.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := (recoveredStack0) isNoInputQuantityOccurred.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 30] ifFalse: [recoveredPC := 35].
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := 'NOTE: Several characteristics have no source variables. Therefore NO_INPUT_QUANTITY is inserted'.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            (recoveredStack0) log: (recoveredStack1).
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack2 := '...Ready'.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            (recoveredStack1) log: (recoveredStack2).
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack1 := 1.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            (recoveredStack0) logProgress: (recoveredStack1).
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x202ca74c; bytecode file offset 0xbc7024"
!EtasASAP2TransferManager methodsFor: 'recovered'!
updateFormulasIn: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) asdProject.
    recoveredValue1 := (recoveredValue0) globalFormulas.
    recoveredLocal1 := recoveredValue1.
    (self) setProgressTextIndex: (3) fraction: (0).
    recoveredValue2 := recoveredLocal1.
    recoveredValue3 := [:recoveredBlock19Arg1 :recoveredBlock19Arg2 | 
    | recoveredBlock19Local1 recoveredBlock19Value0 recoveredBlock19Value1 recoveredBlock19Value2 recoveredBlock19Value3 recoveredBlock19Value4 recoveredBlock19Value5 recoveredBlock19Value6 recoveredBlock19Value7 |
    recoveredBlock19Value0 := recoveredBlock19Arg2.
    recoveredBlock19Value1 := recoveredLocal1.
    recoveredBlock19Value2 := (recoveredBlock19Value1) size.
    recoveredBlock19Value3 := (recoveredBlock19Value0) / (recoveredBlock19Value2).
    (self) logProgress: (recoveredBlock19Value3).
    recoveredBlock19Value4 := recoveredArg1.
    recoveredBlock19Value5 := recoveredBlock19Arg1.
    recoveredBlock19Value6 := (recoveredBlock19Value5) convertToASAP2.
    recoveredBlock19Value7 := (recoveredBlock19Value4) addCompuMethod: (recoveredBlock19Value6).
    recoveredBlock19Value7
].
    (recoveredValue2) doWithIndex: (recoveredValue3).
    ^self
! !

"ASDBase.ic method 0x202caa40; bytecode file offset 0xbc7318"
!EtasASAP2TransferManager methodsFor: 'recovered'!
setProgressTextIndex: recoveredArg1 fraction: recoveredArg2
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := progressDialog.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 47] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) class.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) progressStringIndex: (recoveredStack2).
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := '\'.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack2 := (recoveredStack2) printString.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack2 := ' of '.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack2 := 10.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack2 := (recoveredStack2) printString.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := progressDialog.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack3 := (recoveredStack3) withCrs.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            (recoveredStack2) messageString: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            (recoveredStack2) fractionComplete: (recoveredStack3).
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x202d0d64; bytecode file offset 0xbcd630"
!EtasASAP2TransferManager methodsFor: 'recovered'!
addAxisPoint: recoveredArg1 toModule: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := recoveredArg2.
    recoveredValue1 := recoveredArg1.
    (recoveredValue0) addAxisPoint: (recoveredValue1).
    recoveredValue2 := (self) peekGroup.
    recoveredValue3 := [:recoveredBlock13Arg1 | 
    | recoveredBlock13Value0 recoveredBlock13Value1 recoveredBlock13Value2 |
    recoveredBlock13Value0 := recoveredBlock13Arg1.
    recoveredBlock13Value1 := recoveredArg1.
    recoveredBlock13Value2 := (recoveredBlock13Value0) addRefCharacteristic: (recoveredBlock13Value1).
    recoveredBlock13Value2
].
    (recoveredValue2) ifNotNil: (recoveredValue3).
    recoveredValue4 := (self) peekFunction.
    recoveredValue5 := [:recoveredBlock31Arg1 | 
    | recoveredBlock31Value0 recoveredBlock31Value1 recoveredBlock31Value2 |
    recoveredBlock31Value0 := recoveredBlock31Arg1.
    recoveredBlock31Value1 := recoveredArg1.
    recoveredBlock31Value2 := (recoveredBlock31Value0) addDefCharacteristic: (recoveredBlock31Value1).
    recoveredBlock31Value2
].
    (recoveredValue4) ifNotNil: (recoveredValue5).
    ^self
! !

"ASDBase.ic method 0x202e06ac; bytecode file offset 0xbdcf94"
!EtasASAP2TransferManager methodsFor: 'recovered'!
updateAsap2ModuleFromAsdProject
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) asap2Project.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) getValidModule.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredLocal1 := recoveredStack1.
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
            recoveredStack0 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := (recoveredStack0) updateFormulasIn: (recoveredStack1).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 22] ifFalse: [recoveredPC := 20].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := ASAP2BaseObject.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := (recoveredStack1) defaultByteOrder.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            (recoveredStack0) ByteOrder: (recoveredStack1).
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := (recoveredStack1) asdProject.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            (recoveredStack0) updateAsap2VariablesFrom: (recoveredStack1) inModule: (recoveredStack2).
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            (recoveredStack0) setProgressTextToGarbageCollection.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack0 := (recoveredStack0) library.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            (recoveredStack0) garbageCollect.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack0 := System.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            (recoveredStack0) globalGarbageCollect.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x202efefc; bytecode file offset 0xbec7e0"
!EtasASAP2TransferManager methodsFor: 'recovered'!
readAlignmentsFromFile: recoveredArg1 into: recoveredArg2
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := ASAP2BaseObject.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1) initializeClass.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := CfsFileStream.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack3 := ORDONLY.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) open: (recoveredStack2) oflag: (recoveredStack3).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := (recoveredStack1) isCfsError.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 22] ifFalse: [recoveredPC := 24].
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := (recoveredStack1) contents.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack2 := 'MOD_COMMON'.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := (recoveredStack1) includesSubstring: (recoveredStack2).
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 34] ifFalse: [recoveredPC := 42].
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            (recoveredStack1) parse: (recoveredStack2).
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredPC := 48.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack1 := (recoveredStack1) modCommon.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            (recoveredStack1) parse: (recoveredStack2).
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            (recoveredStack1) close.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x203065e0; bytecode file offset 0xc02eb4"
!EtasASAP2TransferManager methodsFor: 'recovered'!
addCharacteristic: recoveredArg1 toModule: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := ('Kk') = ('Call_46902').
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := recoveredArg1.
    (recoveredValue1) addCharacteristic: (recoveredValue2).
    recoveredValue3 := (self) peekGroup.
    recoveredValue4 := [:recoveredBlock19Arg1 | 
    | recoveredBlock19Value0 recoveredBlock19Value1 recoveredBlock19Value2 |
    recoveredBlock19Value0 := recoveredBlock19Arg1.
    recoveredBlock19Value1 := recoveredArg1.
    recoveredBlock19Value2 := (recoveredBlock19Value0) addRefCharacteristic: (recoveredBlock19Value1).
    recoveredBlock19Value2
].
    (recoveredValue3) ifNotNil: (recoveredValue4).
    recoveredValue5 := (self) peekFunction.
    recoveredValue6 := [:recoveredBlock38Arg1 | 
    | recoveredBlock38Value0 recoveredBlock38Value1 recoveredBlock38Value2 |
    recoveredBlock38Value0 := recoveredBlock38Arg1.
    recoveredBlock38Value1 := recoveredArg1.
    recoveredBlock38Value2 := (recoveredBlock38Value0) addDefCharacteristic: (recoveredBlock38Value1).
    recoveredBlock38Value2
].
    (recoveredValue5) ifNotNil: (recoveredValue6).
    ^self
! !

"ASDBase.ic method 0x20311a78; bytecode file offset 0xc0e350"
!EtasASAP2TransferManager methodsFor: 'recovered'!
cleanupGroupStackAppendToModule: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := 'Kk'.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := 'Call_46902'.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := (recoveredStack0) popGroup.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 54] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := (recoveredStack0) noOfLabels.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := (recoveredStack0) > (recoveredStack1).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 36] ifFalse: [recoveredPC := 24].
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := (recoveredStack0) subGroup.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := (recoveredStack0) size.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack0 := (recoveredStack0) > (recoveredStack1).
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 36] ifFalse: [recoveredPC := 54].
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack0 := (recoveredStack0) peekGroup.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 48] ifFalse: [recoveredPC := 44].
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            (recoveredStack0) addSubGroup: (recoveredStack1).
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            (recoveredStack0) addGroup: (recoveredStack1).
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x203215fc; bytecode file offset 0xc1ded4"
!EtasASAP2TransferManager methodsFor: 'recovered'!
cleanupFunctionStackAppendToModule: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) popFunction.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 56] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) noOfLabels.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := (recoveredStack0) > (recoveredStack1).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 38] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := (recoveredStack0) subFunction.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := (recoveredStack0) size.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := (recoveredStack0) > (recoveredStack1).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 38] ifFalse: [recoveredPC := 28].
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack0 := (recoveredStack0) functionsWithImport.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := (recoveredStack0) includesKey: (recoveredStack1).
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 38] ifFalse: [recoveredPC := 56].
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack0 := (recoveredStack0) peekFunction.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 50] ifFalse: [recoveredPC := 46].
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            (recoveredStack0) addSubFunction: (recoveredStack1).
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            (recoveredStack0) addFunction: (recoveredStack1).
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20389c78; bytecode file offset 0xc86554"
!EtasASAP2TransferManager methodsFor: 'recovered'!
addMeasurement: recoveredArg1 toModule: recoveredArg2 forElement: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := ('Kk') = ('Call_46902').
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := recoveredArg1.
    (recoveredValue1) addMeasurement: (recoveredValue2).
    recoveredValue3 := (self) peekGroup.
    recoveredValue4 := [:recoveredBlock19Arg1 | 
    | recoveredBlock19Value0 recoveredBlock19Value1 recoveredBlock19Value2 |
    recoveredBlock19Value0 := recoveredBlock19Arg1.
    recoveredBlock19Value1 := recoveredArg1.
    recoveredBlock19Value2 := (recoveredBlock19Value0) addRefMeasurement: (recoveredBlock19Value1).
    recoveredBlock19Value2
].
    (recoveredValue3) ifNotNil: (recoveredValue4).
    recoveredValue5 := (self) peekFunction.
    recoveredValue6 := [:recoveredBlock38Arg1 | 
    | recoveredBlock38Stack0 recoveredBlock38Stack1 recoveredBlock38Stack2 recoveredBlock38Stack3 recoveredBlock38PC recoveredBlock38Step recoveredBlock38Done recoveredBlock38Result |
    recoveredBlock38Stack0 := self.
    recoveredBlock38PC := 44.
    recoveredBlock38Done := false.
    [recoveredBlock38Done not] whileTrue: [
        recoveredBlock38Step := recoveredBlock38PC.
        recoveredBlock38Step = 44 ifTrue: [
            recoveredBlock38Stack1 := recoveredArg3.
            recoveredBlock38PC := 47.
        ].
        recoveredBlock38Step = 47 ifTrue: [
            recoveredBlock38Stack1 := (recoveredBlock38Stack1) isLocal.
            recoveredBlock38PC := 49.
        ].
        recoveredBlock38Step = 49 ifTrue: [
            (recoveredBlock38Stack1) ifTrue: [recoveredBlock38PC := 52] ifFalse: [recoveredBlock38PC := 62].
        ].
        recoveredBlock38Step = 52 ifTrue: [
            recoveredBlock38Stack1 := recoveredBlock38Arg1.
            recoveredBlock38PC := 53.
        ].
        recoveredBlock38Step = 53 ifTrue: [
            recoveredBlock38Stack2 := recoveredArg1.
            recoveredBlock38PC := 56.
        ].
        recoveredBlock38Step = 56 ifTrue: [
            recoveredBlock38Stack1 := (recoveredBlock38Stack1) addLocMeasurement: (recoveredBlock38Stack2).
            recoveredBlock38PC := 58.
        ].
        recoveredBlock38Step = 58 ifTrue: [
            recoveredBlock38PC := 68.
        ].
        recoveredBlock38Step = 62 ifTrue: [
            recoveredBlock38Stack1 := recoveredBlock38Arg1.
            recoveredBlock38PC := 63.
        ].
        recoveredBlock38Step = 63 ifTrue: [
            recoveredBlock38Stack2 := recoveredArg1.
            recoveredBlock38PC := 66.
        ].
        recoveredBlock38Step = 66 ifTrue: [
            recoveredBlock38Stack1 := (recoveredBlock38Stack1) addOutMeasurement: (recoveredBlock38Stack2).
            recoveredBlock38PC := 68.
        ].
        recoveredBlock38Step = 68 ifTrue: [
            recoveredBlock38Result := recoveredBlock38Stack1.
            recoveredBlock38Done := true.
        ].
    ].
    recoveredBlock38Result
].
    (recoveredValue5) ifNotNil: (recoveredValue6).
    ^self
! !

"ASDBase.ic method 0x203a6ab0; bytecode file offset 0xca3398"
!EtasASAP2TransferManager methodsFor: 'recovered'!
createAsap2EntryForComplexNode: recoveredArg1 inModule: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := 'Kk'.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := 'Call_46902'.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) asAsap2Name.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) reference.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := (recoveredStack1) comment.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := (recoveredStack0) asam2MCOptions.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := (recoveredStack0) suppressGroupInformation.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 47] ifFalse: [recoveredPC := 28].
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := (recoveredStack0) reference.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := (recoveredStack0) createAsap2Group: (recoveredStack1) node: (recoveredStack2).
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            (recoveredStack0) longName: (recoveredStack1).
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            (recoveredStack0) pushGroup: (recoveredStack1).
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack0 := (recoveredStack0) asam2MCOptions.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack0 := (recoveredStack0) suppressFunctionInformation.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 75] ifFalse: [recoveredPC := 56].
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack0 := (recoveredStack0) reference.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack0 := (recoveredStack0) createAsap2Function: (recoveredStack1) node: (recoveredStack2).
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            (recoveredStack0) longName: (recoveredStack1).
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            (recoveredStack0) pushFunction: (recoveredStack1).
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20417b80; bytecode file offset 0xd14474"
!EtasASAP2TransferManager methodsFor: 'recovered'!
createTpBlobForProject
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) codeManager.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) make.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredLocal1 := recoveredStack1.
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
            recoveredStack0 := (recoveredStack0) projectIdentifier.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := (recoveredStack0) codeManager.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := (recoveredStack0) target.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := ReadWriteStream.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := ''.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := (recoveredStack0) on: (recoveredStack1).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredLocal4 := recoveredStack0.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack2 := (recoveredStack2) printString.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            (recoveredStack1) nextPutAll: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack2 := $ .
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            (recoveredStack1) nextPut: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack2 := (recoveredStack2) targetTypeId.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack2 := (recoveredStack2) printString.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            (recoveredStack1) nextPutAll: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack2 := $ .
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            (recoveredStack1) nextPut: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack2 := (recoveredStack2) getSkipYesNo.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack2 := (recoveredStack2) asInteger.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack2 := (recoveredStack2) printString.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            (recoveredStack1) nextPutAll: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack2 := $ .
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            (recoveredStack1) nextPut: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack2 := (recoveredStack2) getSkipToLink.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack2 := (recoveredStack2) printString.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            (recoveredStack1) nextPutAll: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack2 := $ .
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            (recoveredStack1) nextPut: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack2 := (recoveredStack2) getLoaderVersion.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack2 := (recoveredStack2) printString.
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            (recoveredStack1) nextPutAll: (recoveredStack2).
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack0 := (recoveredStack0) contents.
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2043ff64; bytecode file offset 0xd3c83c"
!EtasASAP2TransferManager methodsFor: 'recovered'!
updateMaxSizeInformationFromMapFileFor: recoveredArg1 in: recoveredArg2
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
            recoveredStack1 := (recoveredStack1) reference.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) isVariantSizeConfiguredX.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 58].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := (recoveredStack1) getVariantSizeElementX.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack2 := [:recoveredBlock22Arg1 | 
    | recoveredBlock22Local1 recoveredBlock22Stack0 recoveredBlock22Stack1 recoveredBlock22Stack2 recoveredBlock22Stack3 recoveredBlock22PC recoveredBlock22Step recoveredBlock22Done recoveredBlock22Result |
    recoveredBlock22Stack0 := self.
    recoveredBlock22PC := 28.
    recoveredBlock22Done := false.
    [recoveredBlock22Done not] whileTrue: [
        recoveredBlock22Step := recoveredBlock22PC.
        recoveredBlock22Step = 28 ifTrue: [
            recoveredBlock22Stack1 := recoveredBlock22Arg1.
            recoveredBlock22PC := 29.
        ].
        recoveredBlock22Step = 29 ifTrue: [
            recoveredBlock22Stack2 := recoveredArg1.
            recoveredBlock22PC := 32.
        ].
        recoveredBlock22Step = 32 ifTrue: [
            recoveredBlock22Stack0 := (recoveredBlock22Stack0) getAddressEntryForVariantSizeElement: (recoveredBlock22Stack1) forEmNode: (recoveredBlock22Stack2).
            recoveredBlock22PC := 34.
        ].
        recoveredBlock22Step = 34 ifTrue: [
            recoveredBlock22Local1 := recoveredBlock22Stack0.
            recoveredBlock22PC := 35.
        ].
        recoveredBlock22Step = 35 ifTrue: [
            recoveredBlock22Stack0 := nil.
            recoveredBlock22PC := 36.
        ].
        recoveredBlock22Step = 36 ifTrue: [
            recoveredBlock22Stack1 := recoveredBlock22Local1.
            recoveredBlock22PC := 37.
        ].
        recoveredBlock22Step = 37 ifTrue: [
            recoveredBlock22Stack2 := 0.
            recoveredBlock22PC := 39.
        ].
        recoveredBlock22Step = 39 ifTrue: [
            recoveredBlock22Stack1 := (recoveredBlock22Stack1) >= (recoveredBlock22Stack2).
            recoveredBlock22PC := 40.
        ].
        recoveredBlock22Step = 40 ifTrue: [
            (recoveredBlock22Stack1) ifTrue: [recoveredBlock22PC := 44] ifFalse: [recoveredBlock22PC := 55].
        ].
        recoveredBlock22Step = 44 ifTrue: [
            recoveredBlock22PC := 45.
        ].
        recoveredBlock22Step = 45 ifTrue: [
            recoveredBlock22Stack0 := recoveredArg2.
            recoveredBlock22PC := 48.
        ].
        recoveredBlock22Step = 48 ifTrue: [
            recoveredBlock22Stack0 := (recoveredBlock22Stack0) matrixDim.
            recoveredBlock22PC := 50.
        ].
        recoveredBlock22Step = 50 ifTrue: [
            recoveredBlock22Stack1 := 1.
            recoveredBlock22PC := 52.
        ].
        recoveredBlock22Step = 52 ifTrue: [
            recoveredBlock22Stack2 := recoveredBlock22Local1.
            recoveredBlock22PC := 53.
        ].
        recoveredBlock22Step = 53 ifTrue: [
            recoveredBlock22Stack0 := (recoveredBlock22Stack0) at: (recoveredBlock22Stack1) put: (recoveredBlock22Stack2).
            recoveredBlock22PC := 55.
        ].
        recoveredBlock22Step = 55 ifTrue: [
            recoveredBlock22Result := recoveredBlock22Stack0.
            recoveredBlock22Done := true.
        ].
    ].
    recoveredBlock22Result
].
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            (recoveredStack1) ifNotNil: (recoveredStack2).
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack1 := (recoveredStack1) isVariantSizeConfiguredY.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 66] ifFalse: [recoveredPC := 108].
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack1 := (recoveredStack1) getVariantSizeElementY.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack2 := [:recoveredBlock71Arg1 | 
    | recoveredBlock71Local1 recoveredBlock71Stack0 recoveredBlock71Stack1 recoveredBlock71Stack2 recoveredBlock71Stack3 recoveredBlock71PC recoveredBlock71Step recoveredBlock71Done recoveredBlock71Result |
    recoveredBlock71Stack0 := self.
    recoveredBlock71PC := 78.
    recoveredBlock71Done := false.
    [recoveredBlock71Done not] whileTrue: [
        recoveredBlock71Step := recoveredBlock71PC.
        recoveredBlock71Step = 78 ifTrue: [
            recoveredBlock71Stack1 := recoveredBlock71Arg1.
            recoveredBlock71PC := 79.
        ].
        recoveredBlock71Step = 79 ifTrue: [
            recoveredBlock71Stack2 := recoveredArg1.
            recoveredBlock71PC := 82.
        ].
        recoveredBlock71Step = 82 ifTrue: [
            recoveredBlock71Stack0 := (recoveredBlock71Stack0) getAddressEntryForVariantSizeElement: (recoveredBlock71Stack1) forEmNode: (recoveredBlock71Stack2).
            recoveredBlock71PC := 84.
        ].
        recoveredBlock71Step = 84 ifTrue: [
            recoveredBlock71Local1 := recoveredBlock71Stack0.
            recoveredBlock71PC := 85.
        ].
        recoveredBlock71Step = 85 ifTrue: [
            recoveredBlock71Stack0 := nil.
            recoveredBlock71PC := 86.
        ].
        recoveredBlock71Step = 86 ifTrue: [
            recoveredBlock71Stack1 := recoveredBlock71Local1.
            recoveredBlock71PC := 87.
        ].
        recoveredBlock71Step = 87 ifTrue: [
            recoveredBlock71Stack2 := 0.
            recoveredBlock71PC := 89.
        ].
        recoveredBlock71Step = 89 ifTrue: [
            recoveredBlock71Stack1 := (recoveredBlock71Stack1) >= (recoveredBlock71Stack2).
            recoveredBlock71PC := 90.
        ].
        recoveredBlock71Step = 90 ifTrue: [
            (recoveredBlock71Stack1) ifTrue: [recoveredBlock71PC := 94] ifFalse: [recoveredBlock71PC := 105].
        ].
        recoveredBlock71Step = 94 ifTrue: [
            recoveredBlock71PC := 95.
        ].
        recoveredBlock71Step = 95 ifTrue: [
            recoveredBlock71Stack0 := recoveredArg2.
            recoveredBlock71PC := 98.
        ].
        recoveredBlock71Step = 98 ifTrue: [
            recoveredBlock71Stack0 := (recoveredBlock71Stack0) matrixDim.
            recoveredBlock71PC := 100.
        ].
        recoveredBlock71Step = 100 ifTrue: [
            recoveredBlock71Stack1 := 2.
            recoveredBlock71PC := 102.
        ].
        recoveredBlock71Step = 102 ifTrue: [
            recoveredBlock71Stack2 := recoveredBlock71Local1.
            recoveredBlock71PC := 103.
        ].
        recoveredBlock71Step = 103 ifTrue: [
            recoveredBlock71Stack0 := (recoveredBlock71Stack0) at: (recoveredBlock71Stack1) put: (recoveredBlock71Stack2).
            recoveredBlock71PC := 105.
        ].
        recoveredBlock71Step = 105 ifTrue: [
            recoveredBlock71Result := recoveredBlock71Stack0.
            recoveredBlock71Done := true.
        ].
    ].
    recoveredBlock71Result
].
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            (recoveredStack1) ifNotNil: (recoveredStack2).
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2044e9d8; bytecode file offset 0xd4b2d8"
!EtasASAP2TransferManager methodsFor: 'recovered'!
createIfDataForExperimentalTargetDeviceLabel: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := (self) codeManager.
    recoveredValue1 := (recoveredValue0) project.
    recoveredValue2 := (recoveredValue1) osLogicForCurrentTarget.
    recoveredValue3 := [:recoveredBlock7Arg1 | 
    | recoveredBlock7Value0 recoveredBlock7Value1 recoveredBlock7Value2 recoveredBlock7Value3 recoveredBlock7Value4 recoveredBlock7Value5 recoveredBlock7Value6 recoveredBlock7Value7 recoveredBlock7Value8 recoveredBlock7Value9 recoveredBlock7Value10 recoveredBlock7Value11 recoveredBlock7Value12 |
    recoveredBlock7Value0 := ASAP2ModuleIFData.
    recoveredBlock7Value1 := (recoveredBlock7Value0) create.
    recoveredBlock7Value2 := recoveredBlock7Value1.
    recoveredBlock7Value3 := recoveredArg1.
    (recoveredBlock7Value2) name: (recoveredBlock7Value3).
    recoveredLocal1 := recoveredBlock7Value1.
    recoveredBlock7Value4 := (self) createTpBlobForProject.
    recoveredBlock7Value5 := [:recoveredBlock7Block29Arg1 | 
    | recoveredBlock7Block29Value0 recoveredBlock7Block29Value1 recoveredBlock7Block29Value2 |
    recoveredBlock7Block29Value0 := recoveredLocal1.
    recoveredBlock7Block29Value1 := recoveredBlock7Block29Arg1.
    recoveredBlock7Block29Value2 := (recoveredBlock7Block29Value0) tpBlob: (recoveredBlock7Block29Value1).
    recoveredBlock7Block29Value2
].
    (recoveredBlock7Value4) ifNotNil: (recoveredBlock7Value5).
    recoveredBlock7Value6 := ('Kk') == ('Call_3001382').
    recoveredBlock7Value7 := recoveredBlock7Arg1.
    recoveredBlock7Value8 := (self) codeManager.
    recoveredBlock7Value9 := (recoveredBlock7Value8) project.
    recoveredBlock7Value10 := (recoveredBlock7Value7) tasksForProject: (recoveredBlock7Value9).
    recoveredBlock7Value11 := [:recoveredBlock7Block57Arg1 | 
    | recoveredBlock7Block57Local1 recoveredBlock7Block57Local2 recoveredBlock7Block57Stack0 recoveredBlock7Block57Stack1 recoveredBlock7Block57Stack2 recoveredBlock7Block57Stack3 recoveredBlock7Block57Stack4 recoveredBlock7Block57PC recoveredBlock7Block57Step recoveredBlock7Block57Done recoveredBlock7Block57Result |
    recoveredBlock7Block57Stack0 := nil.
    recoveredBlock7Block57PC := 64.
    recoveredBlock7Block57Done := false.
    [recoveredBlock7Block57Done not] whileTrue: [
        recoveredBlock7Block57Step := recoveredBlock7Block57PC.
        recoveredBlock7Block57Step = 64 ifTrue: [
            recoveredBlock7Block57Stack1 := recoveredBlock7Block57Arg1.
            recoveredBlock7Block57PC := 65.
        ].
        recoveredBlock7Block57Step = 65 ifTrue: [
            recoveredBlock7Block57Stack1 := (recoveredBlock7Block57Stack1) triggerObject.
            recoveredBlock7Block57PC := 67.
        ].
        recoveredBlock7Block57Step = 67 ifTrue: [
            recoveredBlock7Block57Local2 := recoveredBlock7Block57Stack1.
            recoveredBlock7Block57PC := 68.
        ].
        recoveredBlock7Block57Step = 68 ifTrue: [
            recoveredBlock7Block57Stack1 := nil.
            recoveredBlock7Block57PC := 69.
        ].
        recoveredBlock7Block57Step = 69 ifTrue: [
            recoveredBlock7Block57Stack2 := recoveredBlock7Block57Local2.
            recoveredBlock7Block57PC := 70.
        ].
        recoveredBlock7Block57Step = 70 ifTrue: [
            recoveredBlock7Block57Stack2 := (recoveredBlock7Block57Stack2) isTimerTrigger.
            recoveredBlock7Block57PC := 72.
        ].
        recoveredBlock7Block57Step = 72 ifTrue: [
            (recoveredBlock7Block57Stack2) ifTrue: [recoveredBlock7Block57PC := 82] ifFalse: [recoveredBlock7Block57PC := 76].
        ].
        recoveredBlock7Block57Step = 76 ifTrue: [
            recoveredBlock7Block57Stack2 := recoveredBlock7Block57Local2.
            recoveredBlock7Block57PC := 77.
        ].
        recoveredBlock7Block57Step = 77 ifTrue: [
            recoveredBlock7Block57Stack2 := (recoveredBlock7Block57Stack2) isSoftwareTrigger.
            recoveredBlock7Block57PC := 79.
        ].
        recoveredBlock7Block57Step = 79 ifTrue: [
            (recoveredBlock7Block57Stack2) ifTrue: [recoveredBlock7Block57PC := 82] ifFalse: [recoveredBlock7Block57PC := 103].
        ].
        recoveredBlock7Block57Step = 82 ifTrue: [
            recoveredBlock7Block57PC := 83.
        ].
        recoveredBlock7Block57Step = 83 ifTrue: [
            recoveredBlock7Block57Stack1 := nil.
            recoveredBlock7Block57PC := 84.
        ].
        recoveredBlock7Block57Step = 84 ifTrue: [
            recoveredBlock7Block57Stack2 := ASAP2Source.
            recoveredBlock7Block57PC := 86.
        ].
        recoveredBlock7Block57Step = 86 ifTrue: [
            recoveredBlock7Block57Stack3 := recoveredBlock7Block57Arg1.
            recoveredBlock7Block57PC := 87.
        ].
        recoveredBlock7Block57Step = 87 ifTrue: [
            recoveredBlock7Block57Stack2 := (recoveredBlock7Block57Stack2) createForTask: (recoveredBlock7Block57Stack3).
            recoveredBlock7Block57PC := 89.
        ].
        recoveredBlock7Block57Step = 89 ifTrue: [
            recoveredBlock7Block57Stack3 := recoveredBlock7Block57Stack2.
            recoveredBlock7Block57PC := 90.
        ].
        recoveredBlock7Block57Step = 90 ifTrue: [
            recoveredBlock7Block57Local1 := recoveredBlock7Block57Stack3.
            recoveredBlock7Block57PC := 91.
        ].
        recoveredBlock7Block57Step = 91 ifTrue: [
            (recoveredBlock7Block57Stack2 == nil) ifTrue: [recoveredBlock7Block57PC := 101] ifFalse: [recoveredBlock7Block57PC := 94].
        ].
        recoveredBlock7Block57Step = 94 ifTrue: [
            recoveredBlock7Block57PC := 95.
        ].
        recoveredBlock7Block57Step = 95 ifTrue: [
            recoveredBlock7Block57Stack1 := recoveredLocal1.
            recoveredBlock7Block57PC := 98.
        ].
        recoveredBlock7Block57Step = 98 ifTrue: [
            recoveredBlock7Block57Stack2 := recoveredBlock7Block57Local1.
            recoveredBlock7Block57PC := 99.
        ].
        recoveredBlock7Block57Step = 99 ifTrue: [
            recoveredBlock7Block57Stack1 := (recoveredBlock7Block57Stack1) addSource: (recoveredBlock7Block57Stack2).
            recoveredBlock7Block57PC := 101.
        ].
        recoveredBlock7Block57Step = 101 ifTrue: [
            recoveredBlock7Block57Stack2 := nil.
            recoveredBlock7Block57PC := 102.
        ].
        recoveredBlock7Block57Step = 102 ifTrue: [
            recoveredBlock7Block57Local1 := recoveredBlock7Block57Stack2.
            recoveredBlock7Block57PC := 103.
        ].
        recoveredBlock7Block57Step = 103 ifTrue: [
            recoveredBlock7Block57Result := recoveredBlock7Block57Stack1.
            recoveredBlock7Block57Done := true.
        ].
    ].
    recoveredBlock7Block57Result
].
    recoveredBlock7Value12 := (recoveredBlock7Value10) do: (recoveredBlock7Value11).
    recoveredBlock7Value12
].
    (recoveredValue2) ifNotNil: (recoveredValue3).
    recoveredValue4 := recoveredLocal1.
    ^recoveredValue4
! !

"ASDBase.ic method 0x2047ed8c; bytecode file offset 0xd7b678"
!EtasASAP2TransferManager methodsFor: 'recovered'!
updatedFunctionInformationForImportedLabelsInModule: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) functionsWithImport.
    recoveredValue1 := [:recoveredBlock5Arg1 :recoveredBlock5Arg2 | 
    | recoveredBlock5Local1 recoveredBlock5Stack0 recoveredBlock5Stack1 recoveredBlock5Stack2 recoveredBlock5Stack3 recoveredBlock5PC recoveredBlock5Step recoveredBlock5Done recoveredBlock5Result |
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
            recoveredBlock5PC := 18.
        ].
        recoveredBlock5Step = 18 ifTrue: [
            recoveredBlock5Stack2 := (recoveredBlock5Stack2) name.
            recoveredBlock5PC := 19.
        ].
        recoveredBlock5Step = 19 ifTrue: [
            recoveredBlock5Stack1 := (recoveredBlock5Stack1) functionNamed: (recoveredBlock5Stack2).
            recoveredBlock5PC := 20.
        ].
        recoveredBlock5Step = 20 ifTrue: [
            recoveredBlock5Local1 := recoveredBlock5Stack1.
            recoveredBlock5PC := 23.
        ].
        recoveredBlock5Step = 23 ifTrue: [
            recoveredBlock5Stack1 := recoveredBlock5Local1.
            recoveredBlock5PC := 26.
        ].
        recoveredBlock5Step = 26 ifTrue: [
            (recoveredBlock5Stack1 ~~ nil) ifTrue: [recoveredBlock5PC := 44] ifFalse: [recoveredBlock5PC := 30].
        ].
        recoveredBlock5Step = 30 ifTrue: [
            recoveredBlock5Stack1 := recoveredBlock5Arg1.
            recoveredBlock5PC := 33.
        ].
        recoveredBlock5Step = 33 ifTrue: [
            recoveredBlock5Local1 := recoveredBlock5Stack1.
            recoveredBlock5PC := 36.
        ].
        recoveredBlock5Step = 36 ifTrue: [
            recoveredBlock5Stack1 := recoveredArg1.
            recoveredBlock5PC := 39.
        ].
        recoveredBlock5Step = 39 ifTrue: [
            recoveredBlock5Stack2 := recoveredBlock5Local1.
            recoveredBlock5PC := 42.
        ].
        recoveredBlock5Step = 42 ifTrue: [
            (recoveredBlock5Stack1) addFunction: (recoveredBlock5Stack2).
            recoveredBlock5PC := 44.
        ].
        recoveredBlock5Step = 44 ifTrue: [
            recoveredBlock5Stack1 := recoveredBlock5Arg2.
            recoveredBlock5PC := 47.
        ].
        recoveredBlock5Step = 47 ifTrue: [
            recoveredBlock5Stack2 := [:recoveredBlock5Block47Arg1 | 
    | recoveredBlock5Block47Stack0 recoveredBlock5Block47Stack1 recoveredBlock5Block47Stack2 recoveredBlock5Block47Stack3 recoveredBlock5Block47PC recoveredBlock5Block47Step recoveredBlock5Block47Done recoveredBlock5Block47Result |
    recoveredBlock5Block47Stack0 := nil.
    recoveredBlock5Block47PC := 54.
    recoveredBlock5Block47Done := false.
    [recoveredBlock5Block47Done not] whileTrue: [
        recoveredBlock5Block47Step := recoveredBlock5Block47PC.
        recoveredBlock5Block47Step = 54 ifTrue: [
            recoveredBlock5Block47Stack1 := nil.
            recoveredBlock5Block47PC := 55.
        ].
        recoveredBlock5Block47Step = 55 ifTrue: [
            recoveredBlock5Block47Stack2 := recoveredBlock5Block47Arg1.
            recoveredBlock5Block47PC := 56.
        ].
        recoveredBlock5Block47Step = 56 ifTrue: [
            recoveredBlock5Block47Stack2 := (recoveredBlock5Block47Stack2) isPrimNode.
            recoveredBlock5Block47PC := 58.
        ].
        recoveredBlock5Block47Step = 58 ifTrue: [
            (recoveredBlock5Block47Stack2) ifTrue: [recoveredBlock5Block47PC := 62] ifFalse: [recoveredBlock5Block47PC := 119].
        ].
        recoveredBlock5Block47Step = 62 ifTrue: [
            recoveredBlock5Block47PC := 63.
        ].
        recoveredBlock5Block47Step = 63 ifTrue: [
            recoveredBlock5Block47Stack1 := recoveredBlock5Block47Arg1.
            recoveredBlock5Block47PC := 64.
        ].
        recoveredBlock5Block47Step = 64 ifTrue: [
            recoveredBlock5Block47Stack1 := (recoveredBlock5Block47Stack1) isParameter.
            recoveredBlock5Block47PC := 66.
        ].
        recoveredBlock5Block47Step = 66 ifTrue: [
            (recoveredBlock5Block47Stack1) ifTrue: [recoveredBlock5Block47PC := 70] ifFalse: [recoveredBlock5Block47PC := 96].
        ].
        recoveredBlock5Block47Step = 70 ifTrue: [
            recoveredBlock5Block47Stack1 := recoveredArg1.
            recoveredBlock5Block47PC := 73.
        ].
        recoveredBlock5Block47Step = 73 ifTrue: [
            recoveredBlock5Block47Stack2 := recoveredBlock5Block47Arg1.
            recoveredBlock5Block47PC := 74.
        ].
        recoveredBlock5Block47Step = 74 ifTrue: [
            recoveredBlock5Block47Stack2 := (recoveredBlock5Block47Stack2) asAsap2Name.
            recoveredBlock5Block47PC := 76.
        ].
        recoveredBlock5Block47Step = 76 ifTrue: [
            recoveredBlock5Block47Stack1 := (recoveredBlock5Block47Stack1) characteristicNamed: (recoveredBlock5Block47Stack2).
            recoveredBlock5Block47PC := 78.
        ].
        recoveredBlock5Block47Step = 78 ifTrue: [
            recoveredBlock5Block47Stack2 := [:recoveredBlock5Block47Block78Arg1 | 
    | recoveredBlock5Block47Block78Value0 recoveredBlock5Block47Block78Value1 recoveredBlock5Block47Block78Value2 |
    recoveredBlock5Block47Block78Value0 := recoveredBlock5Local1.
    recoveredBlock5Block47Block78Value1 := recoveredBlock5Block47Block78Arg1.
    recoveredBlock5Block47Block78Value2 := (recoveredBlock5Block47Block78Value0) addRefCharacteristic: (recoveredBlock5Block47Block78Value1).
    recoveredBlock5Block47Block78Value2
].
            recoveredBlock5Block47PC := 91.
        ].
        recoveredBlock5Block47Step = 91 ifTrue: [
            recoveredBlock5Block47Stack1 := (recoveredBlock5Block47Stack1) ifNotNil: (recoveredBlock5Block47Stack2).
            recoveredBlock5Block47PC := 93.
        ].
        recoveredBlock5Block47Step = 93 ifTrue: [
            recoveredBlock5Block47PC := 119.
        ].
        recoveredBlock5Block47Step = 96 ifTrue: [
            recoveredBlock5Block47Stack1 := recoveredArg1.
            recoveredBlock5Block47PC := 99.
        ].
        recoveredBlock5Block47Step = 99 ifTrue: [
            recoveredBlock5Block47Stack2 := recoveredBlock5Block47Arg1.
            recoveredBlock5Block47PC := 100.
        ].
        recoveredBlock5Block47Step = 100 ifTrue: [
            recoveredBlock5Block47Stack2 := (recoveredBlock5Block47Stack2) asAsap2Name.
            recoveredBlock5Block47PC := 102.
        ].
        recoveredBlock5Block47Step = 102 ifTrue: [
            recoveredBlock5Block47Stack1 := (recoveredBlock5Block47Stack1) measurementNamed: (recoveredBlock5Block47Stack2).
            recoveredBlock5Block47PC := 104.
        ].
        recoveredBlock5Block47Step = 104 ifTrue: [
            recoveredBlock5Block47Stack2 := [:recoveredBlock5Block47Block104Arg1 | 
    | recoveredBlock5Block47Block104Value0 recoveredBlock5Block47Block104Value1 recoveredBlock5Block47Block104Value2 |
    recoveredBlock5Block47Block104Value0 := recoveredBlock5Local1.
    recoveredBlock5Block47Block104Value1 := recoveredBlock5Block47Block104Arg1.
    recoveredBlock5Block47Block104Value2 := (recoveredBlock5Block47Block104Value0) addInMeasurement: (recoveredBlock5Block47Block104Value1).
    recoveredBlock5Block47Block104Value2
].
            recoveredBlock5Block47PC := 117.
        ].
        recoveredBlock5Block47Step = 117 ifTrue: [
            recoveredBlock5Block47Stack1 := (recoveredBlock5Block47Stack1) ifNotNil: (recoveredBlock5Block47Stack2).
            recoveredBlock5Block47PC := 119.
        ].
        recoveredBlock5Block47Step = 119 ifTrue: [
            recoveredBlock5Block47Result := recoveredBlock5Block47Stack1.
            recoveredBlock5Block47Done := true.
        ].
    ].
    recoveredBlock5Block47Result
].
            recoveredBlock5PC := 120.
        ].
        recoveredBlock5Step = 120 ifTrue: [
            recoveredBlock5Stack1 := (recoveredBlock5Stack1) do: (recoveredBlock5Stack2).
            recoveredBlock5PC := 122.
        ].
        recoveredBlock5Step = 122 ifTrue: [
            recoveredBlock5Result := recoveredBlock5Stack1.
            recoveredBlock5Done := true.
        ].
    ].
    recoveredBlock5Result
].
    (recoveredValue0) keysAndValuesDo: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x204c705c; bytecode file offset 0xdc3944"
!EtasASAP2TransferManager methodsFor: 'recovered'!
updateMaxSizeInformationFor: recoveredArg1 in: recoveredArg2
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
            recoveredStack1 := (recoveredStack1) reference.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) isVariantSizeConfiguredX.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 79].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := (recoveredStack1) getVariantSizeElementX.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack2 := [:recoveredBlock22Arg1 | 
    | recoveredBlock22Value0 recoveredBlock22Value1 recoveredBlock22Value2 recoveredBlock22Value3 |
    recoveredBlock22Value0 := recoveredArg1.
    recoveredBlock22Value1 := (recoveredBlock22Value0) getMakeConfig.
    recoveredBlock22Value2 := [:recoveredBlock22Block32Arg1 | 
    | recoveredBlock22Block32Local1 recoveredBlock22Block32Stack0 recoveredBlock22Block32Stack1 recoveredBlock22Block32Stack2 recoveredBlock22Block32Stack3 recoveredBlock22Block32Stack4 recoveredBlock22Block32Stack5 recoveredBlock22Block32PC recoveredBlock22Block32Step recoveredBlock22Block32Done recoveredBlock22Block32Result |
    recoveredBlock22Block32Stack0 := self.
    recoveredBlock22Block32PC := 38.
    recoveredBlock22Block32Done := false.
    [recoveredBlock22Block32Done not] whileTrue: [
        recoveredBlock22Block32Step := recoveredBlock22Block32PC.
        recoveredBlock22Block32Step = 38 ifTrue: [
            recoveredBlock22Block32Stack1 := recoveredBlock22Arg1.
            recoveredBlock22Block32PC := 41.
        ].
        recoveredBlock22Block32Step = 41 ifTrue: [
            recoveredBlock22Block32Stack2 := self.
            recoveredBlock22Block32PC := 42.
        ].
        recoveredBlock22Block32Step = 42 ifTrue: [
            recoveredBlock22Block32Stack2 := (recoveredBlock22Block32Stack2) asdProject.
            recoveredBlock22Block32PC := 44.
        ].
        recoveredBlock22Block32Step = 44 ifTrue: [
            recoveredBlock22Block32Stack3 := recoveredBlock22Block32Arg1.
            recoveredBlock22Block32PC := 45.
        ].
        recoveredBlock22Block32Step = 45 ifTrue: [
            recoveredBlock22Block32Stack3 := (recoveredBlock22Block32Stack3) data.
            recoveredBlock22Block32PC := 47.
        ].
        recoveredBlock22Block32Step = 47 ifTrue: [
            recoveredBlock22Block32Stack4 := recoveredBlock22Block32Arg1.
            recoveredBlock22Block32PC := 48.
        ].
        recoveredBlock22Block32Step = 48 ifTrue: [
            recoveredBlock22Block32Stack4 := (recoveredBlock22Block32Stack4) implementation.
            recoveredBlock22Block32PC := 50.
        ].
        recoveredBlock22Block32Step = 50 ifTrue: [
            recoveredBlock22Block32Stack1 := (recoveredBlock22Block32Stack1) getValueForProject: (recoveredBlock22Block32Stack2) dataConfig: (recoveredBlock22Block32Stack3) implConfig: (recoveredBlock22Block32Stack4).
            recoveredBlock22Block32PC := 53.
        ].
        recoveredBlock22Block32Step = 53 ifTrue: [
            recoveredBlock22Block32Local1 := recoveredBlock22Block32Stack1.
            recoveredBlock22Block32PC := 54.
        ].
        recoveredBlock22Block32Step = 54 ifTrue: [
            recoveredBlock22Block32Stack1 := nil.
            recoveredBlock22Block32PC := 55.
        ].
        recoveredBlock22Block32Step = 55 ifTrue: [
            recoveredBlock22Block32Stack2 := recoveredBlock22Block32Local1.
            recoveredBlock22Block32PC := 56.
        ].
        recoveredBlock22Block32Step = 56 ifTrue: [
            recoveredBlock22Block32Stack3 := 0.
            recoveredBlock22Block32PC := 58.
        ].
        recoveredBlock22Block32Step = 58 ifTrue: [
            recoveredBlock22Block32Stack2 := (recoveredBlock22Block32Stack2) >= (recoveredBlock22Block32Stack3).
            recoveredBlock22Block32PC := 59.
        ].
        recoveredBlock22Block32Step = 59 ifTrue: [
            (recoveredBlock22Block32Stack2) ifTrue: [recoveredBlock22Block32PC := 62] ifFalse: [recoveredBlock22Block32PC := 73].
        ].
        recoveredBlock22Block32Step = 62 ifTrue: [
            recoveredBlock22Block32PC := 63.
        ].
        recoveredBlock22Block32Step = 63 ifTrue: [
            recoveredBlock22Block32Stack1 := recoveredArg2.
            recoveredBlock22Block32PC := 66.
        ].
        recoveredBlock22Block32Step = 66 ifTrue: [
            recoveredBlock22Block32Stack1 := (recoveredBlock22Block32Stack1) matrixDim.
            recoveredBlock22Block32PC := 68.
        ].
        recoveredBlock22Block32Step = 68 ifTrue: [
            recoveredBlock22Block32Stack2 := 1.
            recoveredBlock22Block32PC := 70.
        ].
        recoveredBlock22Block32Step = 70 ifTrue: [
            recoveredBlock22Block32Stack3 := recoveredBlock22Block32Local1.
            recoveredBlock22Block32PC := 71.
        ].
        recoveredBlock22Block32Step = 71 ifTrue: [
            recoveredBlock22Block32Stack1 := (recoveredBlock22Block32Stack1) at: (recoveredBlock22Block32Stack2) put: (recoveredBlock22Block32Stack3).
            recoveredBlock22Block32PC := 73.
        ].
        recoveredBlock22Block32Step = 73 ifTrue: [
            recoveredBlock22Block32Result := recoveredBlock22Block32Stack1.
            recoveredBlock22Block32Done := true.
        ].
    ].
    recoveredBlock22Block32Result
].
    recoveredBlock22Value3 := (recoveredBlock22Value1) ifNotNil: (recoveredBlock22Value2).
    recoveredBlock22Value3
].
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            (recoveredStack1) ifNotNil: (recoveredStack2).
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack1 := (recoveredStack1) isVariantSizeConfiguredY.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 88] ifFalse: [recoveredPC := 151].
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredStack1 := (recoveredStack1) getVariantSizeElementY.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredStack2 := [:recoveredBlock93Arg1 | 
    | recoveredBlock93Value0 recoveredBlock93Value1 recoveredBlock93Value2 recoveredBlock93Value3 |
    recoveredBlock93Value0 := recoveredArg1.
    recoveredBlock93Value1 := (recoveredBlock93Value0) getMakeConfig.
    recoveredBlock93Value2 := [:recoveredBlock93Block104Arg1 | 
    | recoveredBlock93Block104Local1 recoveredBlock93Block104Stack0 recoveredBlock93Block104Stack1 recoveredBlock93Block104Stack2 recoveredBlock93Block104Stack3 recoveredBlock93Block104Stack4 recoveredBlock93Block104Stack5 recoveredBlock93Block104PC recoveredBlock93Block104Step recoveredBlock93Block104Done recoveredBlock93Block104Result |
    recoveredBlock93Block104Stack0 := self.
    recoveredBlock93Block104PC := 110.
    recoveredBlock93Block104Done := false.
    [recoveredBlock93Block104Done not] whileTrue: [
        recoveredBlock93Block104Step := recoveredBlock93Block104PC.
        recoveredBlock93Block104Step = 110 ifTrue: [
            recoveredBlock93Block104Stack1 := recoveredBlock93Arg1.
            recoveredBlock93Block104PC := 113.
        ].
        recoveredBlock93Block104Step = 113 ifTrue: [
            recoveredBlock93Block104Stack2 := self.
            recoveredBlock93Block104PC := 114.
        ].
        recoveredBlock93Block104Step = 114 ifTrue: [
            recoveredBlock93Block104Stack2 := (recoveredBlock93Block104Stack2) asdProject.
            recoveredBlock93Block104PC := 116.
        ].
        recoveredBlock93Block104Step = 116 ifTrue: [
            recoveredBlock93Block104Stack3 := recoveredBlock93Block104Arg1.
            recoveredBlock93Block104PC := 117.
        ].
        recoveredBlock93Block104Step = 117 ifTrue: [
            recoveredBlock93Block104Stack3 := (recoveredBlock93Block104Stack3) data.
            recoveredBlock93Block104PC := 119.
        ].
        recoveredBlock93Block104Step = 119 ifTrue: [
            recoveredBlock93Block104Stack4 := recoveredBlock93Block104Arg1.
            recoveredBlock93Block104PC := 120.
        ].
        recoveredBlock93Block104Step = 120 ifTrue: [
            recoveredBlock93Block104Stack4 := (recoveredBlock93Block104Stack4) implementation.
            recoveredBlock93Block104PC := 122.
        ].
        recoveredBlock93Block104Step = 122 ifTrue: [
            recoveredBlock93Block104Stack1 := (recoveredBlock93Block104Stack1) getValueForProject: (recoveredBlock93Block104Stack2) dataConfig: (recoveredBlock93Block104Stack3) implConfig: (recoveredBlock93Block104Stack4).
            recoveredBlock93Block104PC := 125.
        ].
        recoveredBlock93Block104Step = 125 ifTrue: [
            recoveredBlock93Block104Local1 := recoveredBlock93Block104Stack1.
            recoveredBlock93Block104PC := 126.
        ].
        recoveredBlock93Block104Step = 126 ifTrue: [
            recoveredBlock93Block104Stack1 := nil.
            recoveredBlock93Block104PC := 127.
        ].
        recoveredBlock93Block104Step = 127 ifTrue: [
            recoveredBlock93Block104Stack2 := recoveredBlock93Block104Local1.
            recoveredBlock93Block104PC := 128.
        ].
        recoveredBlock93Block104Step = 128 ifTrue: [
            recoveredBlock93Block104Stack3 := 0.
            recoveredBlock93Block104PC := 130.
        ].
        recoveredBlock93Block104Step = 130 ifTrue: [
            recoveredBlock93Block104Stack2 := (recoveredBlock93Block104Stack2) >= (recoveredBlock93Block104Stack3).
            recoveredBlock93Block104PC := 131.
        ].
        recoveredBlock93Block104Step = 131 ifTrue: [
            (recoveredBlock93Block104Stack2) ifTrue: [recoveredBlock93Block104PC := 134] ifFalse: [recoveredBlock93Block104PC := 145].
        ].
        recoveredBlock93Block104Step = 134 ifTrue: [
            recoveredBlock93Block104PC := 135.
        ].
        recoveredBlock93Block104Step = 135 ifTrue: [
            recoveredBlock93Block104Stack1 := recoveredArg2.
            recoveredBlock93Block104PC := 138.
        ].
        recoveredBlock93Block104Step = 138 ifTrue: [
            recoveredBlock93Block104Stack1 := (recoveredBlock93Block104Stack1) matrixDim.
            recoveredBlock93Block104PC := 140.
        ].
        recoveredBlock93Block104Step = 140 ifTrue: [
            recoveredBlock93Block104Stack2 := 2.
            recoveredBlock93Block104PC := 142.
        ].
        recoveredBlock93Block104Step = 142 ifTrue: [
            recoveredBlock93Block104Stack3 := recoveredBlock93Block104Local1.
            recoveredBlock93Block104PC := 143.
        ].
        recoveredBlock93Block104Step = 143 ifTrue: [
            recoveredBlock93Block104Stack1 := (recoveredBlock93Block104Stack1) at: (recoveredBlock93Block104Stack2) put: (recoveredBlock93Block104Stack3).
            recoveredBlock93Block104PC := 145.
        ].
        recoveredBlock93Block104Step = 145 ifTrue: [
            recoveredBlock93Block104Result := recoveredBlock93Block104Stack1.
            recoveredBlock93Block104Done := true.
        ].
    ].
    recoveredBlock93Block104Result
].
    recoveredBlock93Value3 := (recoveredBlock93Value1) ifNotNil: (recoveredBlock93Value2).
    recoveredBlock93Value3
].
            recoveredPC := 149.
        ].
        recoveredStep = 149 ifTrue: [
            (recoveredStack1) ifNotNil: (recoveredStack2).
            recoveredPC := 151.
        ].
        recoveredStep = 151 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x204d207c; bytecode file offset 0xdce990"
!EtasASAP2TransferManager methodsFor: 'recovered'!
getAddressEntryForVariantSizeElement: recoveredArg1 forEmNode: recoveredArg2
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) getProject.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) target.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) currentProjectCache.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) currentBuildCache.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) generationSettings.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := (recoveredStack1) resolveSystemConstantsAtGenerationTime.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 118] ifFalse: [recoveredPC := 24].
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := (recoveredStack1) symbols.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack2 := [:recoveredBlock27Arg1 | 
    | recoveredBlock27Local1 recoveredBlock27Local2 recoveredBlock27Stack0 recoveredBlock27Stack1 recoveredBlock27Stack2 recoveredBlock27Stack3 recoveredBlock27Stack4 recoveredBlock27Stack5 recoveredBlock27Stack6 recoveredBlock27PC recoveredBlock27Step recoveredBlock27Done recoveredBlock27Result |
    recoveredBlock27Stack0 := self.
    recoveredBlock27PC := 34.
    recoveredBlock27Done := false.
    [recoveredBlock27Done not] whileTrue: [
        recoveredBlock27Step := recoveredBlock27PC.
        recoveredBlock27Step = 34 ifTrue: [
            recoveredBlock27Stack1 := nil.
            recoveredBlock27PC := 35.
        ].
        recoveredBlock27Step = 35 ifTrue: [
            recoveredBlock27Stack2 := recoveredBlock27Arg1.
            recoveredBlock27PC := 36.
        ].
        recoveredBlock27Step = 36 ifTrue: [
            recoveredBlock27Stack3 := 1.
            recoveredBlock27PC := 38.
        ].
        recoveredBlock27Step = 38 ifTrue: [
            recoveredBlock27Stack2 := (recoveredBlock27Stack2) at: (recoveredBlock27Stack3).
            recoveredBlock27PC := 40.
        ].
        recoveredBlock27Step = 40 ifTrue: [
            recoveredBlock27Stack2 := (recoveredBlock27Stack2) notEmpty.
            recoveredBlock27PC := 42.
        ].
        recoveredBlock27Step = 42 ifTrue: [
            (recoveredBlock27Stack2) ifTrue: [recoveredBlock27PC := 46] ifFalse: [recoveredBlock27PC := 112].
        ].
        recoveredBlock27Step = 46 ifTrue: [
            recoveredBlock27PC := 47.
        ].
        recoveredBlock27Step = 47 ifTrue: [
            recoveredBlock27Stack1 := recoveredArg1.
            recoveredBlock27PC := 50.
        ].
        recoveredBlock27Step = 50 ifTrue: [
            recoveredBlock27Stack1 := (recoveredBlock27Stack1) label.
            recoveredBlock27PC := 52.
        ].
        recoveredBlock27Step = 52 ifTrue: [
            recoveredBlock27Local2 := recoveredBlock27Stack1.
            recoveredBlock27PC := 53.
        ].
        recoveredBlock27Step = 53 ifTrue: [
            recoveredBlock27Stack1 := recoveredArg1.
            recoveredBlock27PC := 56.
        ].
        recoveredBlock27Step = 56 ifTrue: [
            recoveredBlock27Stack1 := (recoveredBlock27Stack1) isClassVariable.
            recoveredBlock27PC := 58.
        ].
        recoveredBlock27Step = 58 ifTrue: [
            (recoveredBlock27Stack1) ifTrue: [recoveredBlock27PC := 77] ifFalse: [recoveredBlock27PC := 62].
        ].
        recoveredBlock27Step = 62 ifTrue: [
            recoveredBlock27Stack1 := recoveredBlock27Local2.
            recoveredBlock27PC := 63.
        ].
        recoveredBlock27Step = 63 ifTrue: [
            recoveredBlock27Stack2 := '.'.
            recoveredBlock27PC := 65.
        ].
        recoveredBlock27Step = 65 ifTrue: [
            recoveredBlock27Stack1 := (recoveredBlock27Stack1) , (recoveredBlock27Stack2).
            recoveredBlock27PC := 67.
        ].
        recoveredBlock27Step = 67 ifTrue: [
            recoveredBlock27Stack2 := recoveredArg2.
            recoveredBlock27PC := 70.
        ].
        recoveredBlock27Step = 70 ifTrue: [
            recoveredBlock27Stack2 := (recoveredBlock27Stack2) parent.
            recoveredBlock27PC := 72.
        ].
        recoveredBlock27Step = 72 ifTrue: [
            recoveredBlock27Stack2 := (recoveredBlock27Stack2) mapSymbolName.
            recoveredBlock27PC := 74.
        ].
        recoveredBlock27Step = 74 ifTrue: [
            recoveredBlock27Stack1 := (recoveredBlock27Stack1) , (recoveredBlock27Stack2).
            recoveredBlock27PC := 76.
        ].
        recoveredBlock27Step = 76 ifTrue: [
            recoveredBlock27Local2 := recoveredBlock27Stack1.
            recoveredBlock27PC := 77.
        ].
        recoveredBlock27Step = 77 ifTrue: [
            recoveredBlock27Stack1 := self.
            recoveredBlock27PC := 78.
        ].
        recoveredBlock27Step = 78 ifTrue: [
            recoveredBlock27Stack2 := recoveredBlock27Arg1.
            recoveredBlock27PC := 79.
        ].
        recoveredBlock27Step = 79 ifTrue: [
            recoveredBlock27Stack3 := recoveredArg1.
            recoveredBlock27PC := 82.
        ].
        recoveredBlock27Step = 82 ifTrue: [
            recoveredBlock27Stack3 := (recoveredBlock27Stack3) label.
            recoveredBlock27PC := 84.
        ].
        recoveredBlock27Step = 84 ifTrue: [
            recoveredBlock27Stack4 := recoveredBlock27Local2.
            recoveredBlock27PC := 85.
        ].
        recoveredBlock27Step = 85 ifTrue: [
            recoveredBlock27Stack5 := recoveredBlock27Local2.
            recoveredBlock27PC := 86.
        ].
        recoveredBlock27Step = 86 ifTrue: [
            recoveredBlock27Stack1 := (recoveredBlock27Stack1) lookForMapSymbolIn: (recoveredBlock27Stack2) shortName: (recoveredBlock27Stack3) longName: (recoveredBlock27Stack4) mapName: (recoveredBlock27Stack5).
            recoveredBlock27PC := 89.
        ].
        recoveredBlock27Step = 89 ifTrue: [
            recoveredBlock27Local1 := recoveredBlock27Stack1.
            recoveredBlock27PC := 90.
        ].
        recoveredBlock27Step = 90 ifTrue: [
            recoveredBlock27Stack1 := nil.
            recoveredBlock27PC := 91.
        ].
        recoveredBlock27Step = 91 ifTrue: [
            recoveredBlock27Stack2 := recoveredBlock27Local1.
            recoveredBlock27PC := 92.
        ].
        recoveredBlock27Step = 92 ifTrue: [
            recoveredBlock27Stack2 := (recoveredBlock27Stack2) notEmpty.
            recoveredBlock27PC := 94.
        ].
        recoveredBlock27Step = 94 ifTrue: [
            (recoveredBlock27Stack2) ifTrue: [recoveredBlock27PC := 98] ifFalse: [recoveredBlock27PC := 108].
        ].
        recoveredBlock27Step = 98 ifTrue: [
            recoveredBlock27PC := 99.
        ].
        recoveredBlock27Step = 99 ifTrue: [
            recoveredBlock27Stack1 := recoveredBlock27Local1.
            recoveredBlock27PC := 100.
        ].
        recoveredBlock27Step = 100 ifTrue: [
            recoveredBlock27Stack1 := (recoveredBlock27Stack1) first.
            recoveredBlock27PC := 102.
        ].
        recoveredBlock27Step = 102 ifTrue: [
            recoveredBlock27Stack1 := (recoveredBlock27Stack1) startAddress.
            recoveredBlock27PC := 104.
        ].
        recoveredBlock27Step = 104 ifTrue: [
            recoveredBlock27Stack2 := recoveredBlock27Stack1.
            recoveredBlock27PC := 105.
        ].
        recoveredBlock27Step = 105 ifTrue: [
            recoveredLocal1 := recoveredBlock27Stack2.
            recoveredBlock27PC := 108.
        ].
        recoveredBlock27Step = 108 ifTrue: [
            recoveredBlock27Stack2 := nil.
            recoveredBlock27PC := 109.
        ].
        recoveredBlock27Step = 109 ifTrue: [
            recoveredBlock27Stack3 := recoveredBlock27Stack2.
            recoveredBlock27PC := 110.
        ].
        recoveredBlock27Step = 110 ifTrue: [
            recoveredBlock27Local2 := recoveredBlock27Stack3.
            recoveredBlock27PC := 111.
        ].
        recoveredBlock27Step = 111 ifTrue: [
            recoveredBlock27Local1 := recoveredBlock27Stack2.
            recoveredBlock27PC := 112.
        ].
        recoveredBlock27Step = 112 ifTrue: [
            recoveredBlock27Result := recoveredBlock27Stack1.
            recoveredBlock27Done := true.
        ].
    ].
    recoveredBlock27Result
].
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            (recoveredStack1) ifNotNil: (recoveredStack2).
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            recoveredPC := 152.
        ].
        recoveredStep = 118 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 121.
        ].
        recoveredStep = 121 ifTrue: [
            recoveredStack1 := (recoveredStack1) getMakeConfig.
            recoveredPC := 123.
        ].
        recoveredStep = 123 ifTrue: [
            recoveredStack2 := [:recoveredBlock123Arg1 | 
    | recoveredBlock123Value0 recoveredBlock123Value1 recoveredBlock123Value2 recoveredBlock123Value3 recoveredBlock123Value4 recoveredBlock123Value5 recoveredBlock123Value6 recoveredBlock123Value7 |
    recoveredBlock123Value0 := recoveredArg1.
    recoveredBlock123Value1 := (self) asdProject.
    recoveredBlock123Value2 := recoveredBlock123Arg1.
    recoveredBlock123Value3 := (recoveredBlock123Value2) data.
    recoveredBlock123Value4 := recoveredBlock123Arg1.
    recoveredBlock123Value5 := (recoveredBlock123Value4) implementation.
    recoveredBlock123Value6 := (recoveredBlock123Value0) getValueForProject: (recoveredBlock123Value1) dataConfig: (recoveredBlock123Value3) implConfig: (recoveredBlock123Value5).
    recoveredBlock123Value7 := recoveredBlock123Value6.
    recoveredLocal1 := recoveredBlock123Value7.
    recoveredBlock123Value6
].
            recoveredPC := 150.
        ].
        recoveredStep = 150 ifTrue: [
            (recoveredStack1) ifNotNil: (recoveredStack2).
            recoveredPC := 152.
        ].
        recoveredStep = 152 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 155.
        ].
        recoveredStep = 155 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x204df2f4; bytecode file offset 0xddbc0c"
!EtasASAP2TransferManager methodsFor: 'recovered'!
createEntriesForCTNodes: recoveredArg1 module: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) instVars.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack2 := (recoveredStack2) classVars.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := [:block281083f4Arg1 | 
    | block281083f4Local1 block281083f4Stack0 block281083f4Stack1 block281083f4Stack2 block281083f4Stack3 block281083f4PC block281083f4Step block281083f4Done block281083f4Result |
    block281083f4Stack0 := self.
    block281083f4PC := 4.
    block281083f4Done := false.
    [block281083f4Done not] whileTrue: [
        block281083f4Step := block281083f4PC.
        block281083f4Step = 4 ifTrue: [
            block281083f4Stack1 := block281083f4Arg1.
            block281083f4PC := 5.
        ].
        block281083f4Step = 5 ifTrue: [
            block281083f4Stack1 := (block281083f4Stack1) reference.
            block281083f4PC := 7.
        ].
        block281083f4Step = 7 ifTrue: [
            block281083f4Stack2 := [:block28108418Arg1 | 
    nil
].
            block281083f4PC := 9.
        ].
        block281083f4Step = 9 ifTrue: [
            block281083f4PC := 14.
        ].
        block281083f4Step = 14 ifTrue: [
            block281083f4Stack1 := (block281083f4Stack1) sgClassIfUndefined: (block281083f4Stack2).
            block281083f4PC := 16.
        ].
        block281083f4Step = 16 ifTrue: [
            block281083f4Local1 := block281083f4Stack1.
            block281083f4PC := 17.
        ].
        block281083f4Step = 17 ifTrue: [
            block281083f4Stack1 := false.
            block281083f4PC := 18.
        ].
        block281083f4Step = 18 ifTrue: [
            block281083f4Stack2 := block281083f4Local1.
            block281083f4PC := 19.
        ].
        block281083f4Step = 19 ifTrue: [
            (block281083f4Stack2 == nil) ifTrue: [block281083f4PC := 26] ifFalse: [block281083f4PC := 22].
        ].
        block281083f4Step = 22 ifTrue: [
            block281083f4PC := 23.
        ].
        block281083f4Step = 23 ifTrue: [
            block281083f4Stack1 := block281083f4Local1.
            block281083f4PC := 24.
        ].
        block281083f4Step = 24 ifTrue: [
            block281083f4Stack1 := (block281083f4Stack1) isCTClass.
            block281083f4PC := 26.
        ].
        block281083f4Step = 26 ifTrue: [
            block281083f4Result := block281083f4Stack1.
            block281083f4Done := true.
        ].
    ].
    block281083f4Result
].
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack1 := (recoveredStack1) select: (recoveredStack2).
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack1 := 'Kk'.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack2 := 'Call_84978'.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack1 := (recoveredStack1) == (recoveredStack2).
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack1 := (recoveredStack1) notEmpty.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 60] ifFalse: [recoveredPC := 151].
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack1 := OrderedCollection.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack2 := (recoveredStack2) size.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack1 := (recoveredStack1) new: (recoveredStack2).
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack1 := (recoveredStack1) getProject.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack1 := (recoveredStack1) continuousTimeProcesses.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack2 := [:recoveredBlock79Arg1 | 
    | recoveredBlock79Local1 recoveredBlock79Stack0 recoveredBlock79Stack1 recoveredBlock79Stack2 recoveredBlock79Stack3 recoveredBlock79Stack4 recoveredBlock79PC recoveredBlock79Step recoveredBlock79Done recoveredBlock79Result |
    recoveredBlock79Stack0 := self.
    recoveredBlock79PC := 86.
    recoveredBlock79Done := false.
    [recoveredBlock79Done not] whileTrue: [
        recoveredBlock79Step := recoveredBlock79PC.
        recoveredBlock79Step = 86 ifTrue: [
            recoveredBlock79Stack1 := recoveredLocal2.
            recoveredBlock79PC := 89.
        ].
        recoveredBlock79Step = 89 ifTrue: [
            recoveredBlock79Stack2 := [:recoveredBlock79Block89Arg1 | 
    | recoveredBlock79Block89Value0 recoveredBlock79Block89Value1 recoveredBlock79Block89Value2 recoveredBlock79Block89Value3 recoveredBlock79Block89Value4 |
    recoveredBlock79Block89Value0 := recoveredBlock79Block89Arg1.
    recoveredBlock79Block89Value1 := (recoveredBlock79Block89Value0) reference.
    recoveredBlock79Block89Value2 := recoveredBlock79Arg1.
    recoveredBlock79Block89Value3 := (recoveredBlock79Block89Value2) relatedCTVariable.
    recoveredBlock79Block89Value4 := (recoveredBlock79Block89Value1) = (recoveredBlock79Block89Value3).
    recoveredBlock79Block89Value4
].
            recoveredBlock79PC := 106.
        ].
        recoveredBlock79Step = 106 ifTrue: [
            recoveredBlock79Stack3 := [].
            recoveredBlock79PC := 108.
        ].
        recoveredBlock79Step = 108 ifTrue: [
            recoveredBlock79Stack1 := (recoveredBlock79Stack1) detect: (recoveredBlock79Stack2) ifNone: (recoveredBlock79Stack3).
            recoveredBlock79PC := 110.
        ].
        recoveredBlock79Step = 110 ifTrue: [
            recoveredBlock79Local1 := recoveredBlock79Stack1.
            recoveredBlock79PC := 113.
        ].
        recoveredBlock79Step = 113 ifTrue: [
            recoveredBlock79Stack1 := nil.
            recoveredBlock79PC := 114.
        ].
        recoveredBlock79Step = 114 ifTrue: [
            recoveredBlock79Stack2 := recoveredBlock79Local1.
            recoveredBlock79PC := 117.
        ].
        recoveredBlock79Step = 117 ifTrue: [
            (recoveredBlock79Stack2 == nil) ifTrue: [recoveredBlock79PC := 134] ifFalse: [recoveredBlock79PC := 120].
        ].
        recoveredBlock79Step = 120 ifTrue: [
            recoveredBlock79PC := 121.
        ].
        recoveredBlock79Step = 121 ifTrue: [
            recoveredBlock79Stack1 := recoveredLocal1.
            recoveredBlock79PC := 124.
        ].
        recoveredBlock79Step = 124 ifTrue: [
            recoveredBlock79Stack2 := recoveredLocal2.
            recoveredBlock79PC := 127.
        ].
        recoveredBlock79Step = 127 ifTrue: [
            recoveredBlock79Stack3 := recoveredBlock79Local1.
            recoveredBlock79PC := 130.
        ].
        recoveredBlock79Step = 130 ifTrue: [
            recoveredBlock79Stack2 := (recoveredBlock79Stack2) remove: (recoveredBlock79Stack3).
            recoveredBlock79PC := 132.
        ].
        recoveredBlock79Step = 132 ifTrue: [
            recoveredBlock79Stack1 := (recoveredBlock79Stack1) add: (recoveredBlock79Stack2).
            recoveredBlock79PC := 134.
        ].
        recoveredBlock79Step = 134 ifTrue: [
            recoveredBlock79Result := recoveredBlock79Stack1.
            recoveredBlock79Done := true.
        ].
    ].
    recoveredBlock79Result
].
            recoveredPC := 135.
        ].
        recoveredStep = 135 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 137.
        ].
        recoveredStep = 137 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 140.
        ].
        recoveredStep = 140 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 143.
        ].
        recoveredStep = 143 ifTrue: [
            (recoveredStack1) addAll: (recoveredStack2).
            recoveredPC := 145.
        ].
        recoveredStep = 145 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 148.
        ].
        recoveredStep = 148 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 151.
        ].
        recoveredStep = 151 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 154.
        ].
        recoveredStep = 154 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 157.
        ].
        recoveredStep = 157 ifTrue: [
            (recoveredStack0) createFunctionEntriesForCTNodes: (recoveredStack1) module: (recoveredStack2).
            recoveredPC := 159.
        ].
        recoveredStep = 159 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 160.
        ].
        recoveredStep = 160 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x204e4610; bytecode file offset 0xde0ee0"
!EtasASAP2TransferManager methodsFor: 'recovered'!
lookForMapSymbolIn: recoveredArg1 shortName: recoveredArg2 longName: recoveredArg3
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) symbols.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) isEmpty.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 13].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := #().
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := recoveredArg3.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := recoveredArg2.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := [:recoveredBlock28Arg1 | 
    | recoveredBlock28Value0 recoveredBlock28Value1 recoveredBlock28Value2 recoveredBlock28Value3 |
    recoveredBlock28Value0 := recoveredBlock28Arg1.
    recoveredBlock28Value1 := (recoveredBlock28Value0) name.
    recoveredBlock28Value2 := recoveredLocal2.
    recoveredBlock28Value3 := (recoveredBlock28Value1) = (recoveredBlock28Value2).
    recoveredBlock28Value3
].
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack0 := (recoveredStack0) select: (recoveredStack1).
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack0 := (recoveredStack0) notEmpty.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 52] ifFalse: [recoveredPC := 56].
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack1 := [:recoveredBlock59Arg1 | 
    | recoveredBlock59Value0 recoveredBlock59Value1 recoveredBlock59Value2 recoveredBlock59Value3 recoveredBlock59Value4 recoveredBlock59Value5 |
    recoveredBlock59Value0 := recoveredBlock59Arg1.
    recoveredBlock59Value1 := (recoveredBlock59Value0) name.
    recoveredBlock59Value2 := (recoveredBlock59Value1) asUppercase.
    recoveredBlock59Value3 := recoveredLocal2.
    recoveredBlock59Value4 := (recoveredBlock59Value3) asUppercase.
    recoveredBlock59Value5 := (recoveredBlock59Value2) = (recoveredBlock59Value4).
    recoveredBlock59Value5
].
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack0 := (recoveredStack0) select: (recoveredStack1).
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack0 := (recoveredStack0) notEmpty.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 88] ifFalse: [recoveredPC := 92].
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredStack1 := [:recoveredBlock95Arg1 | 
    | recoveredBlock95Value0 recoveredBlock95Value1 recoveredBlock95Value2 recoveredBlock95Value3 |
    recoveredBlock95Value0 := recoveredBlock95Arg1.
    recoveredBlock95Value1 := (recoveredBlock95Value0) name.
    recoveredBlock95Value2 := recoveredLocal1.
    recoveredBlock95Value3 := (recoveredBlock95Value1) = (recoveredBlock95Value2).
    recoveredBlock95Value3
].
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            recoveredStack0 := (recoveredStack0) select: (recoveredStack1).
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 112.
        ].
        recoveredStep = 112 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            recoveredStack0 := (recoveredStack0) notEmpty.
            recoveredPC := 117.
        ].
        recoveredStep = 117 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 120] ifFalse: [recoveredPC := 124].
        ].
        recoveredStep = 120 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 123.
        ].
        recoveredStep = 123 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 124 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 127.
        ].
        recoveredStep = 127 ifTrue: [
            recoveredStack1 := [:recoveredBlock127Arg1 | 
    | recoveredBlock127Value0 recoveredBlock127Value1 recoveredBlock127Value2 recoveredBlock127Value3 recoveredBlock127Value4 recoveredBlock127Value5 |
    recoveredBlock127Value0 := recoveredBlock127Arg1.
    recoveredBlock127Value1 := (recoveredBlock127Value0) name.
    recoveredBlock127Value2 := (recoveredBlock127Value1) asUppercase.
    recoveredBlock127Value3 := recoveredLocal1.
    recoveredBlock127Value4 := (recoveredBlock127Value3) asUppercase.
    recoveredBlock127Value5 := (recoveredBlock127Value2) = (recoveredBlock127Value4).
    recoveredBlock127Value5
].
            recoveredPC := 145.
        ].
        recoveredStep = 145 ifTrue: [
            recoveredStack0 := (recoveredStack0) select: (recoveredStack1).
            recoveredPC := 147.
        ].
        recoveredStep = 147 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 148.
        ].
        recoveredStep = 148 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 151.
        ].
        recoveredStep = 151 ifTrue: [
            recoveredStack0 := (recoveredStack0) notEmpty.
            recoveredPC := 153.
        ].
        recoveredStep = 153 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 156] ifFalse: [recoveredPC := 160].
        ].
        recoveredStep = 156 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 159.
        ].
        recoveredStep = 159 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 160 ifTrue: [
            recoveredStack0 := #().
            recoveredPC := 162.
        ].
        recoveredStep = 162 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20514f48; bytecode file offset 0xe1185c"
!EtasASAP2TransferManager methodsFor: 'recovered'!
createAsap2EntryForPrimitiveNode: recoveredArg1 inModule: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 |
    recoveredValue0 := ('Kk') = ('Call_46902').
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue1) reference.
    recoveredValue3 := [:recoveredBlock14Arg1 | 
    | recoveredBlock14Stack0 recoveredBlock14Stack1 recoveredBlock14Stack2 recoveredBlock14Stack3 recoveredBlock14Stack4 recoveredBlock14PC recoveredBlock14Step recoveredBlock14Done recoveredBlock14Result |
    recoveredBlock14Stack0 := self.
    recoveredBlock14PC := 20.
    recoveredBlock14Done := false.
    [recoveredBlock14Done not] whileTrue: [
        recoveredBlock14Step := recoveredBlock14PC.
        recoveredBlock14Step = 20 ifTrue: [
            recoveredBlock14Stack1 := recoveredBlock14Arg1.
            recoveredBlock14PC := 23.
        ].
        recoveredBlock14Step = 23 ifTrue: [
            recoveredBlock14Stack1 := (recoveredBlock14Stack1) isResource.
            recoveredBlock14PC := 24.
        ].
        recoveredBlock14Step = 24 ifTrue: [
            (recoveredBlock14Stack1) ifTrue: [recoveredBlock14PC := 28] ifFalse: [recoveredBlock14PC := 30].
        ].
        recoveredBlock14Step = 28 ifTrue: [
            recoveredBlock14Stack1 := nil.
            recoveredBlock14PC := 29.
        ].
        recoveredBlock14Step = 29 ifTrue: [
            ^recoveredBlock14Stack1
        ].
        recoveredBlock14Step = 30 ifTrue: [
            recoveredBlock14Stack1 := recoveredBlock14Arg1.
            recoveredBlock14PC := 33.
        ].
        recoveredBlock14Step = 33 ifTrue: [
            recoveredBlock14Stack1 := (recoveredBlock14Stack1) isCalibrationRead.
            recoveredBlock14PC := 35.
        ].
        recoveredBlock14Step = 35 ifTrue: [
            (recoveredBlock14Stack1) ifTrue: [recoveredBlock14PC := 64] ifFalse: [recoveredBlock14PC := 38].
        ].
        recoveredBlock14Step = 38 ifTrue: [
            recoveredBlock14Stack1 := recoveredBlock14Arg1.
            recoveredBlock14PC := 41.
        ].
        recoveredBlock14Step = 41 ifTrue: [
            recoveredBlock14Stack1 := (recoveredBlock14Stack1) isCTElement.
            recoveredBlock14PC := 43.
        ].
        recoveredBlock14Step = 43 ifTrue: [
            (recoveredBlock14Stack1) ifTrue: [recoveredBlock14PC := 64] ifFalse: [recoveredBlock14PC := 46].
        ].
        recoveredBlock14Step = 46 ifTrue: [
            recoveredBlock14Stack1 := self.
            recoveredBlock14PC := 47.
        ].
        recoveredBlock14Step = 47 ifTrue: [
            recoveredBlock14Stack2 := 'WARNING: Element '.
            recoveredBlock14PC := 49.
        ].
        recoveredBlock14Step = 49 ifTrue: [
            recoveredBlock14Stack3 := recoveredBlock14Arg1.
            recoveredBlock14PC := 52.
        ].
        recoveredBlock14Step = 52 ifTrue: [
            recoveredBlock14Stack3 := (recoveredBlock14Stack3) typeLabel.
            recoveredBlock14PC := 54.
        ].
        recoveredBlock14Step = 54 ifTrue: [
            recoveredBlock14Stack2 := (recoveredBlock14Stack2) , (recoveredBlock14Stack3).
            recoveredBlock14PC := 56.
        ].
        recoveredBlock14Step = 56 ifTrue: [
            recoveredBlock14Stack3 := ' is suppressed in asap2 file [Read calibration not set] !!'.
            recoveredBlock14PC := 58.
        ].
        recoveredBlock14Step = 58 ifTrue: [
            recoveredBlock14Stack2 := (recoveredBlock14Stack2) , (recoveredBlock14Stack3).
            recoveredBlock14PC := 60.
        ].
        recoveredBlock14Step = 60 ifTrue: [
            (recoveredBlock14Stack1) log: (recoveredBlock14Stack2).
            recoveredBlock14PC := 62.
        ].
        recoveredBlock14Step = 62 ifTrue: [
            recoveredBlock14Stack1 := nil.
            recoveredBlock14PC := 63.
        ].
        recoveredBlock14Step = 63 ifTrue: [
            ^recoveredBlock14Stack1
        ].
        recoveredBlock14Step = 64 ifTrue: [
            recoveredBlock14Stack1 := nil.
            recoveredBlock14PC := 65.
        ].
        recoveredBlock14Step = 65 ifTrue: [
            recoveredBlock14Stack2 := recoveredBlock14Arg1.
            recoveredBlock14PC := 68.
        ].
        recoveredBlock14Step = 68 ifTrue: [
            recoveredBlock14Stack2 := (recoveredBlock14Stack2) isExported.
            recoveredBlock14PC := 70.
        ].
        recoveredBlock14Step = 70 ifTrue: [
            (recoveredBlock14Stack2) ifTrue: [recoveredBlock14PC := 74] ifFalse: [recoveredBlock14PC := 170].
        ].
        recoveredBlock14Step = 74 ifTrue: [
            recoveredBlock14PC := 75.
        ].
        recoveredBlock14Step = 75 ifTrue: [
            recoveredBlock14Stack1 := recoveredArg1.
            recoveredBlock14PC := 78.
        ].
        recoveredBlock14Step = 78 ifTrue: [
            recoveredBlock14Stack1 := (recoveredBlock14Stack1) checkIsPrototype.
            recoveredBlock14PC := 80.
        ].
        recoveredBlock14Step = 80 ifTrue: [
            (recoveredBlock14Stack1) ifTrue: [recoveredBlock14PC := 84] ifFalse: [recoveredBlock14PC := 110].
        ].
        recoveredBlock14Step = 84 ifTrue: [
            recoveredBlock14Stack1 := self.
            recoveredBlock14PC := 85.
        ].
        recoveredBlock14Step = 85 ifTrue: [
            recoveredBlock14Stack1 := (recoveredBlock14Stack1) asam2MCOptions.
            recoveredBlock14PC := 87.
        ].
        recoveredBlock14Step = 87 ifTrue: [
            recoveredBlock14Stack1 := (recoveredBlock14Stack1) suppressExportsOfPrototypesWithinASAP2.
            recoveredBlock14PC := 89.
        ].
        recoveredBlock14Step = 89 ifTrue: [
            (recoveredBlock14Stack1) ifTrue: [recoveredBlock14PC := 92] ifFalse: [recoveredBlock14PC := 110].
        ].
        recoveredBlock14Step = 92 ifTrue: [
            recoveredBlock14Stack1 := self.
            recoveredBlock14PC := 93.
        ].
        recoveredBlock14Step = 93 ifTrue: [
            recoveredBlock14Stack2 := 'WARNING: Exported element of prototyped component '.
            recoveredBlock14PC := 95.
        ].
        recoveredBlock14Step = 95 ifTrue: [
            recoveredBlock14Stack3 := recoveredBlock14Arg1.
            recoveredBlock14PC := 98.
        ].
        recoveredBlock14Step = 98 ifTrue: [
            recoveredBlock14Stack3 := (recoveredBlock14Stack3) typeLabel.
            recoveredBlock14PC := 100.
        ].
        recoveredBlock14Step = 100 ifTrue: [
            recoveredBlock14Stack2 := (recoveredBlock14Stack2) , (recoveredBlock14Stack3).
            recoveredBlock14PC := 102.
        ].
        recoveredBlock14Step = 102 ifTrue: [
            recoveredBlock14Stack3 := ' is suppressed in ASAM-2MC file !!'.
            recoveredBlock14PC := 104.
        ].
        recoveredBlock14Step = 104 ifTrue: [
            recoveredBlock14Stack2 := (recoveredBlock14Stack2) , (recoveredBlock14Stack3).
            recoveredBlock14PC := 106.
        ].
        recoveredBlock14Step = 106 ifTrue: [
            (recoveredBlock14Stack1) log: (recoveredBlock14Stack2).
            recoveredBlock14PC := 108.
        ].
        recoveredBlock14Step = 108 ifTrue: [
            recoveredBlock14Stack1 := nil.
            recoveredBlock14PC := 109.
        ].
        recoveredBlock14Step = 109 ifTrue: [
            ^recoveredBlock14Stack1
        ].
        recoveredBlock14Step = 110 ifTrue: [
            recoveredBlock14Stack1 := recoveredBlock14Arg1.
            recoveredBlock14PC := 113.
        ].
        recoveredBlock14Step = 113 ifTrue: [
            recoveredBlock14Stack1 := (recoveredBlock14Stack1) ownerSGClass.
            recoveredBlock14PC := 115.
        ].
        recoveredBlock14Step = 115 ifTrue: [
            recoveredBlock14Stack2 := [:recoveredBlock14Block115Arg1 | 
    | recoveredBlock14Block115Stack0 recoveredBlock14Block115Stack1 recoveredBlock14Block115Stack2 recoveredBlock14Block115Stack3 recoveredBlock14Block115Stack4 recoveredBlock14Block115PC recoveredBlock14Block115Step recoveredBlock14Block115Done recoveredBlock14Block115Result |
    recoveredBlock14Block115Stack0 := self.
    recoveredBlock14Block115PC := 122.
    recoveredBlock14Block115Done := false.
    [recoveredBlock14Block115Done not] whileTrue: [
        recoveredBlock14Block115Step := recoveredBlock14Block115PC.
        recoveredBlock14Block115Step = 122 ifTrue: [
            recoveredBlock14Block115Stack1 := nil.
            recoveredBlock14Block115PC := 123.
        ].
        recoveredBlock14Block115Step = 123 ifTrue: [
            recoveredBlock14Block115Stack2 := recoveredBlock14Arg1.
            recoveredBlock14Block115PC := 126.
        ].
        recoveredBlock14Block115Step = 126 ifTrue: [
            recoveredBlock14Block115Stack2 := (recoveredBlock14Block115Stack2) isParameter.
            recoveredBlock14Block115PC := 128.
        ].
        recoveredBlock14Block115Step = 128 ifTrue: [
            (recoveredBlock14Block115Stack2) ifTrue: [recoveredBlock14Block115PC := 132] ifFalse: [recoveredBlock14Block115PC := 167].
        ].
        recoveredBlock14Block115Step = 132 ifTrue: [
            recoveredBlock14Block115Stack2 := recoveredBlock14Block115Arg1.
            recoveredBlock14Block115PC := 133.
        ].
        recoveredBlock14Block115Step = 133 ifTrue: [
            recoveredBlock14Block115Stack2 := (recoveredBlock14Block115Stack2) isProject.
            recoveredBlock14Block115PC := 135.
        ].
        recoveredBlock14Block115Step = 135 ifTrue: [
            (recoveredBlock14Block115Stack2) ifTrue: [recoveredBlock14Block115PC := 167] ifFalse: [recoveredBlock14Block115PC := 138].
        ].
        recoveredBlock14Block115Step = 138 ifTrue: [
            recoveredBlock14Block115PC := 139.
        ].
        recoveredBlock14Block115Step = 139 ifTrue: [
            recoveredBlock14Block115Stack1 := nil.
            recoveredBlock14Block115PC := 140.
        ].
        recoveredBlock14Block115Step = 140 ifTrue: [
            recoveredBlock14Block115Stack2 := self.
            recoveredBlock14Block115PC := 141.
        ].
        recoveredBlock14Block115Step = 141 ifTrue: [
            recoveredBlock14Block115Stack2 := (recoveredBlock14Block115Stack2) asam2MCOptions.
            recoveredBlock14Block115PC := 143.
        ].
        recoveredBlock14Block115Step = 143 ifTrue: [
            recoveredBlock14Block115Stack2 := (recoveredBlock14Block115Stack2) suppressParameterExportsWithinASAP2.
            recoveredBlock14Block115PC := 145.
        ].
        recoveredBlock14Block115Step = 145 ifTrue: [
            (recoveredBlock14Block115Stack2) ifTrue: [recoveredBlock14Block115PC := 148] ifFalse: [recoveredBlock14Block115PC := 167].
        ].
        recoveredBlock14Block115Step = 148 ifTrue: [
            recoveredBlock14Block115PC := 149.
        ].
        recoveredBlock14Block115Step = 149 ifTrue: [
            recoveredBlock14Block115Stack1 := self.
            recoveredBlock14Block115PC := 150.
        ].
        recoveredBlock14Block115Step = 150 ifTrue: [
            recoveredBlock14Block115Stack2 := 'WARNING: Exported parameter '.
            recoveredBlock14Block115PC := 152.
        ].
        recoveredBlock14Block115Step = 152 ifTrue: [
            recoveredBlock14Block115Stack3 := recoveredBlock14Arg1.
            recoveredBlock14Block115PC := 155.
        ].
        recoveredBlock14Block115Step = 155 ifTrue: [
            recoveredBlock14Block115Stack3 := (recoveredBlock14Block115Stack3) typeLabel.
            recoveredBlock14Block115PC := 157.
        ].
        recoveredBlock14Block115Step = 157 ifTrue: [
            recoveredBlock14Block115Stack2 := (recoveredBlock14Block115Stack2) , (recoveredBlock14Block115Stack3).
            recoveredBlock14Block115PC := 159.
        ].
        recoveredBlock14Block115Step = 159 ifTrue: [
            recoveredBlock14Block115Stack3 := ' is suppressed in ASAM-2MC file !!'.
            recoveredBlock14Block115PC := 161.
        ].
        recoveredBlock14Block115Step = 161 ifTrue: [
            recoveredBlock14Block115Stack2 := (recoveredBlock14Block115Stack2) , (recoveredBlock14Block115Stack3).
            recoveredBlock14Block115PC := 163.
        ].
        recoveredBlock14Block115Step = 163 ifTrue: [
            (recoveredBlock14Block115Stack1) log: (recoveredBlock14Block115Stack2).
            recoveredBlock14Block115PC := 165.
        ].
        recoveredBlock14Block115Step = 165 ifTrue: [
            recoveredBlock14Block115Stack1 := nil.
            recoveredBlock14Block115PC := 166.
        ].
        recoveredBlock14Block115Step = 166 ifTrue: [
            ^recoveredBlock14Block115Stack1
        ].
        recoveredBlock14Block115Step = 167 ifTrue: [
            recoveredBlock14Block115Result := recoveredBlock14Block115Stack1.
            recoveredBlock14Block115Done := true.
        ].
    ].
    recoveredBlock14Block115Result
].
            recoveredBlock14PC := 168.
        ].
        recoveredBlock14Step = 168 ifTrue: [
            recoveredBlock14Stack1 := (recoveredBlock14Stack1) ifNotNil: (recoveredBlock14Stack2).
            recoveredBlock14PC := 170.
        ].
        recoveredBlock14Step = 170 ifTrue: [
            recoveredBlock14Result := recoveredBlock14Stack1.
            recoveredBlock14Done := true.
        ].
    ].
    recoveredBlock14Result
].
    (recoveredValue2) ifNotNil: (recoveredValue3).
    recoveredValue4 := recoveredArg1.
    recoveredValue5 := (recoveredValue4) reference.
    recoveredValue6 := recoveredArg2.
    recoveredValue7 := recoveredArg1.
    recoveredValue8 := (recoveredValue5) convertToAsap2Module: (recoveredValue6) emNode: (recoveredValue7) manager: (self).
    ^recoveredValue8
! !

"ASDBase.ic method 0x20535acc; bytecode file offset 0xe323a0"
!EtasASAP2TransferManager methodsFor: 'recovered'!
lookForMapSymbolIn: recoveredArg1 shortName: recoveredArg2 longName: recoveredArg3 mapName: recoveredArg4
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 recoveredValue21 recoveredValue22 recoveredValue23 recoveredValue24 |
    recoveredValue0 := ('Kk') == ('Call_72918').
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue1) at: (1).
    recoveredValue3 := recoveredArg4.
    recoveredValue4 := [:recoveredBlock19Arg1 | 
    | recoveredBlock19Stack0 recoveredBlock19Stack1 recoveredBlock19Stack2 recoveredBlock19Stack3 recoveredBlock19PC recoveredBlock19Step recoveredBlock19Done recoveredBlock19Result |
    recoveredBlock19Stack0 := self.
    recoveredBlock19PC := 26.
    recoveredBlock19Done := false.
    [recoveredBlock19Done not] whileTrue: [
        recoveredBlock19Step := recoveredBlock19PC.
        recoveredBlock19Step = 26 ifTrue: [
            recoveredBlock19Stack1 := recoveredBlock19Arg1.
            recoveredBlock19PC := 27.
        ].
        recoveredBlock19Step = 27 ifTrue: [
            recoveredBlock19Stack1 := (recoveredBlock19Stack1) isCollection.
            recoveredBlock19PC := 28.
        ].
        recoveredBlock19Step = 28 ifTrue: [
            (recoveredBlock19Stack1) ifTrue: [recoveredBlock19PC := 32] ifFalse: [recoveredBlock19PC := 34].
        ].
        recoveredBlock19Step = 32 ifTrue: [
            recoveredBlock19Stack1 := recoveredBlock19Arg1.
            recoveredBlock19PC := 33.
        ].
        recoveredBlock19Step = 33 ifTrue: [
            ^recoveredBlock19Stack1
        ].
        recoveredBlock19Step = 34 ifTrue: [
            recoveredBlock19Stack1 := Array.
            recoveredBlock19PC := 36.
        ].
        recoveredBlock19Step = 36 ifTrue: [
            recoveredBlock19Stack2 := recoveredBlock19Arg1.
            recoveredBlock19PC := 37.
        ].
        recoveredBlock19Step = 37 ifTrue: [
            recoveredBlock19Stack1 := (recoveredBlock19Stack1) with: (recoveredBlock19Stack2).
            recoveredBlock19PC := 39.
        ].
        recoveredBlock19Step = 39 ifTrue: [
            ^recoveredBlock19Stack1
        ].
    ].
    recoveredBlock19Result
].
    (recoveredValue2) at: (recoveredValue3) ifPresent: (recoveredValue4).
    recoveredValue5 := recoveredArg1.
    recoveredValue6 := (recoveredValue5) at: (2).
    recoveredValue7 := recoveredArg4.
    recoveredValue8 := [:recoveredBlock52Arg1 | 
    | recoveredBlock52Stack0 recoveredBlock52Stack1 recoveredBlock52Stack2 recoveredBlock52Stack3 recoveredBlock52PC recoveredBlock52Step recoveredBlock52Done recoveredBlock52Result |
    recoveredBlock52Stack0 := self.
    recoveredBlock52PC := 58.
    recoveredBlock52Done := false.
    [recoveredBlock52Done not] whileTrue: [
        recoveredBlock52Step := recoveredBlock52PC.
        recoveredBlock52Step = 58 ifTrue: [
            recoveredBlock52Stack1 := recoveredBlock52Arg1.
            recoveredBlock52PC := 59.
        ].
        recoveredBlock52Step = 59 ifTrue: [
            recoveredBlock52Stack1 := (recoveredBlock52Stack1) isCollection.
            recoveredBlock52PC := 60.
        ].
        recoveredBlock52Step = 60 ifTrue: [
            (recoveredBlock52Stack1) ifTrue: [recoveredBlock52PC := 64] ifFalse: [recoveredBlock52PC := 66].
        ].
        recoveredBlock52Step = 64 ifTrue: [
            recoveredBlock52Stack1 := recoveredBlock52Arg1.
            recoveredBlock52PC := 65.
        ].
        recoveredBlock52Step = 65 ifTrue: [
            ^recoveredBlock52Stack1
        ].
        recoveredBlock52Step = 66 ifTrue: [
            recoveredBlock52Stack1 := Array.
            recoveredBlock52PC := 68.
        ].
        recoveredBlock52Step = 68 ifTrue: [
            recoveredBlock52Stack2 := recoveredBlock52Arg1.
            recoveredBlock52PC := 69.
        ].
        recoveredBlock52Step = 69 ifTrue: [
            recoveredBlock52Stack1 := (recoveredBlock52Stack1) with: (recoveredBlock52Stack2).
            recoveredBlock52PC := 71.
        ].
        recoveredBlock52Step = 71 ifTrue: [
            ^recoveredBlock52Stack1
        ].
    ].
    recoveredBlock52Result
].
    (recoveredValue6) at: (recoveredValue7) ifPresent: (recoveredValue8).
    recoveredValue9 := recoveredArg1.
    recoveredValue10 := (recoveredValue9) at: (1).
    recoveredValue11 := recoveredArg3.
    recoveredValue12 := [:recoveredBlock84Arg1 | 
    | recoveredBlock84Stack0 recoveredBlock84Stack1 recoveredBlock84Stack2 recoveredBlock84Stack3 recoveredBlock84PC recoveredBlock84Step recoveredBlock84Done recoveredBlock84Result |
    recoveredBlock84Stack0 := self.
    recoveredBlock84PC := 90.
    recoveredBlock84Done := false.
    [recoveredBlock84Done not] whileTrue: [
        recoveredBlock84Step := recoveredBlock84PC.
        recoveredBlock84Step = 90 ifTrue: [
            recoveredBlock84Stack1 := recoveredBlock84Arg1.
            recoveredBlock84PC := 91.
        ].
        recoveredBlock84Step = 91 ifTrue: [
            recoveredBlock84Stack1 := (recoveredBlock84Stack1) isCollection.
            recoveredBlock84PC := 92.
        ].
        recoveredBlock84Step = 92 ifTrue: [
            (recoveredBlock84Stack1) ifTrue: [recoveredBlock84PC := 96] ifFalse: [recoveredBlock84PC := 98].
        ].
        recoveredBlock84Step = 96 ifTrue: [
            recoveredBlock84Stack1 := recoveredBlock84Arg1.
            recoveredBlock84PC := 97.
        ].
        recoveredBlock84Step = 97 ifTrue: [
            ^recoveredBlock84Stack1
        ].
        recoveredBlock84Step = 98 ifTrue: [
            recoveredBlock84Stack1 := Array.
            recoveredBlock84PC := 100.
        ].
        recoveredBlock84Step = 100 ifTrue: [
            recoveredBlock84Stack2 := recoveredBlock84Arg1.
            recoveredBlock84PC := 101.
        ].
        recoveredBlock84Step = 101 ifTrue: [
            recoveredBlock84Stack1 := (recoveredBlock84Stack1) with: (recoveredBlock84Stack2).
            recoveredBlock84PC := 103.
        ].
        recoveredBlock84Step = 103 ifTrue: [
            ^recoveredBlock84Stack1
        ].
    ].
    recoveredBlock84Result
].
    (recoveredValue10) at: (recoveredValue11) ifPresent: (recoveredValue12).
    recoveredValue13 := recoveredArg1.
    recoveredValue14 := (recoveredValue13) at: (2).
    recoveredValue15 := recoveredArg3.
    recoveredValue16 := [:recoveredBlock116Arg1 | 
    | recoveredBlock116Stack0 recoveredBlock116Stack1 recoveredBlock116Stack2 recoveredBlock116Stack3 recoveredBlock116PC recoveredBlock116Step recoveredBlock116Done recoveredBlock116Result |
    recoveredBlock116Stack0 := self.
    recoveredBlock116PC := 122.
    recoveredBlock116Done := false.
    [recoveredBlock116Done not] whileTrue: [
        recoveredBlock116Step := recoveredBlock116PC.
        recoveredBlock116Step = 122 ifTrue: [
            recoveredBlock116Stack1 := recoveredBlock116Arg1.
            recoveredBlock116PC := 123.
        ].
        recoveredBlock116Step = 123 ifTrue: [
            recoveredBlock116Stack1 := (recoveredBlock116Stack1) isCollection.
            recoveredBlock116PC := 124.
        ].
        recoveredBlock116Step = 124 ifTrue: [
            (recoveredBlock116Stack1) ifTrue: [recoveredBlock116PC := 128] ifFalse: [recoveredBlock116PC := 130].
        ].
        recoveredBlock116Step = 128 ifTrue: [
            recoveredBlock116Stack1 := recoveredBlock116Arg1.
            recoveredBlock116PC := 129.
        ].
        recoveredBlock116Step = 129 ifTrue: [
            ^recoveredBlock116Stack1
        ].
        recoveredBlock116Step = 130 ifTrue: [
            recoveredBlock116Stack1 := Array.
            recoveredBlock116PC := 132.
        ].
        recoveredBlock116Step = 132 ifTrue: [
            recoveredBlock116Stack2 := recoveredBlock116Arg1.
            recoveredBlock116PC := 133.
        ].
        recoveredBlock116Step = 133 ifTrue: [
            recoveredBlock116Stack1 := (recoveredBlock116Stack1) with: (recoveredBlock116Stack2).
            recoveredBlock116PC := 135.
        ].
        recoveredBlock116Step = 135 ifTrue: [
            ^recoveredBlock116Stack1
        ].
    ].
    recoveredBlock116Result
].
    (recoveredValue14) at: (recoveredValue15) ifPresent: (recoveredValue16).
    recoveredValue17 := recoveredArg1.
    recoveredValue18 := (recoveredValue17) at: (1).
    recoveredValue19 := recoveredArg2.
    recoveredValue20 := [:recoveredBlock148Arg1 | 
    | recoveredBlock148Stack0 recoveredBlock148Stack1 recoveredBlock148Stack2 recoveredBlock148Stack3 recoveredBlock148PC recoveredBlock148Step recoveredBlock148Done recoveredBlock148Result |
    recoveredBlock148Stack0 := self.
    recoveredBlock148PC := 154.
    recoveredBlock148Done := false.
    [recoveredBlock148Done not] whileTrue: [
        recoveredBlock148Step := recoveredBlock148PC.
        recoveredBlock148Step = 154 ifTrue: [
            recoveredBlock148Stack1 := recoveredBlock148Arg1.
            recoveredBlock148PC := 155.
        ].
        recoveredBlock148Step = 155 ifTrue: [
            recoveredBlock148Stack1 := (recoveredBlock148Stack1) isCollection.
            recoveredBlock148PC := 156.
        ].
        recoveredBlock148Step = 156 ifTrue: [
            (recoveredBlock148Stack1) ifTrue: [recoveredBlock148PC := 160] ifFalse: [recoveredBlock148PC := 162].
        ].
        recoveredBlock148Step = 160 ifTrue: [
            recoveredBlock148Stack1 := recoveredBlock148Arg1.
            recoveredBlock148PC := 161.
        ].
        recoveredBlock148Step = 161 ifTrue: [
            ^recoveredBlock148Stack1
        ].
        recoveredBlock148Step = 162 ifTrue: [
            recoveredBlock148Stack1 := Array.
            recoveredBlock148PC := 164.
        ].
        recoveredBlock148Step = 164 ifTrue: [
            recoveredBlock148Stack2 := recoveredBlock148Arg1.
            recoveredBlock148PC := 165.
        ].
        recoveredBlock148Step = 165 ifTrue: [
            recoveredBlock148Stack1 := (recoveredBlock148Stack1) with: (recoveredBlock148Stack2).
            recoveredBlock148PC := 167.
        ].
        recoveredBlock148Step = 167 ifTrue: [
            ^recoveredBlock148Stack1
        ].
    ].
    recoveredBlock148Result
].
    (recoveredValue18) at: (recoveredValue19) ifPresent: (recoveredValue20).
    recoveredValue21 := recoveredArg1.
    recoveredValue22 := (recoveredValue21) at: (2).
    recoveredValue23 := recoveredArg2.
    recoveredValue24 := [:recoveredBlock180Arg1 | 
    | recoveredBlock180Stack0 recoveredBlock180Stack1 recoveredBlock180Stack2 recoveredBlock180Stack3 recoveredBlock180PC recoveredBlock180Step recoveredBlock180Done recoveredBlock180Result |
    recoveredBlock180Stack0 := self.
    recoveredBlock180PC := 186.
    recoveredBlock180Done := false.
    [recoveredBlock180Done not] whileTrue: [
        recoveredBlock180Step := recoveredBlock180PC.
        recoveredBlock180Step = 186 ifTrue: [
            recoveredBlock180Stack1 := recoveredBlock180Arg1.
            recoveredBlock180PC := 187.
        ].
        recoveredBlock180Step = 187 ifTrue: [
            recoveredBlock180Stack1 := (recoveredBlock180Stack1) isCollection.
            recoveredBlock180PC := 188.
        ].
        recoveredBlock180Step = 188 ifTrue: [
            (recoveredBlock180Stack1) ifTrue: [recoveredBlock180PC := 192] ifFalse: [recoveredBlock180PC := 194].
        ].
        recoveredBlock180Step = 192 ifTrue: [
            recoveredBlock180Stack1 := recoveredBlock180Arg1.
            recoveredBlock180PC := 193.
        ].
        recoveredBlock180Step = 193 ifTrue: [
            ^recoveredBlock180Stack1
        ].
        recoveredBlock180Step = 194 ifTrue: [
            recoveredBlock180Stack1 := Array.
            recoveredBlock180PC := 196.
        ].
        recoveredBlock180Step = 196 ifTrue: [
            recoveredBlock180Stack2 := recoveredBlock180Arg1.
            recoveredBlock180PC := 197.
        ].
        recoveredBlock180Step = 197 ifTrue: [
            recoveredBlock180Stack1 := (recoveredBlock180Stack1) with: (recoveredBlock180Stack2).
            recoveredBlock180PC := 199.
        ].
        recoveredBlock180Step = 199 ifTrue: [
            ^recoveredBlock180Stack1
        ].
    ].
    recoveredBlock180Result
].
    (recoveredValue22) at: (recoveredValue23) ifPresent: (recoveredValue24).
    ^#()
! !

"ASDBase.ic method 0x20553428; bytecode file offset 0xe4fd38"
!EtasASAP2TransferManager methodsFor: 'recovered'!
asap2TypeForMapFileType: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack2 := 2.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := (recoveredStack1) < (recoveredStack2).
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := (recoveredStack1) asLowercase.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack2 := 'void'.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
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
            recoveredStack1 := recoveredArg1.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := (recoveredStack1) asLowercase.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack2 := 'f10'.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 38] ifFalse: [recoveredPC := 40].
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack1 := (recoveredStack1) asLowercase.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack2 := 'f4'.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 50] ifFalse: [recoveredPC := 53].
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack1 := 'FLOAT32_IEEE'.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack1 := (recoveredStack1) asLowercase.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack2 := 'f8'.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 64] ifFalse: [recoveredPC := 67].
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack1 := 'FLOAT64_IEEE'.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack1 := #($b $m $u).
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack3 := 1.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack4 := [
    ^nil
].
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack2 := (recoveredStack2) at: (recoveredStack3) ifAbsent: (recoveredStack4).
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack2 := (recoveredStack2) asLowercase.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack1 := (recoveredStack1) includes: (recoveredStack2).
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 90] ifFalse: [recoveredPC := 98].
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack1 := 'U'.
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredPC := 132.
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack1 := #($n $s).
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            recoveredStack3 := 1.
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            recoveredStack4 := [
    ^nil
].
            recoveredPC := 114.
        ].
        recoveredStep = 114 ifTrue: [
            recoveredStack2 := (recoveredStack2) at: (recoveredStack3) ifAbsent: (recoveredStack4).
            recoveredPC := 116.
        ].
        recoveredStep = 116 ifTrue: [
            recoveredStack2 := (recoveredStack2) asLowercase.
            recoveredPC := 117.
        ].
        recoveredStep = 117 ifTrue: [
            recoveredStack1 := (recoveredStack1) includes: (recoveredStack2).
            recoveredPC := 119.
        ].
        recoveredStep = 119 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 122] ifFalse: [recoveredPC := 130].
        ].
        recoveredStep = 122 ifTrue: [
            recoveredStack1 := 'S'.
            recoveredPC := 124.
        ].
        recoveredStep = 124 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 127.
        ].
        recoveredStep = 127 ifTrue: [
            recoveredPC := 132.
        ].
        recoveredStep = 130 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 131.
        ].
        recoveredStep = 131 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 132 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 135.
        ].
        recoveredStep = 135 ifTrue: [
            recoveredStack2 := 2.
            recoveredPC := 137.
        ].
        recoveredStep = 137 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 140.
        ].
        recoveredStep = 140 ifTrue: [
            recoveredStack3 := (recoveredStack3) size.
            recoveredPC := 141.
        ].
        recoveredStep = 141 ifTrue: [
            recoveredStack1 := (recoveredStack1) copyFrom: (recoveredStack2) to: (recoveredStack3).
            recoveredPC := 143.
        ].
        recoveredStep = 143 ifTrue: [
            recoveredStack1 := (recoveredStack1) asLowercase.
            recoveredPC := 144.
        ].
        recoveredStep = 144 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 145.
        ].
        recoveredStep = 145 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 148.
        ].
        recoveredStep = 148 ifTrue: [
            recoveredStack2 := '8'.
            recoveredPC := 150.
        ].
        recoveredStep = 150 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 151.
        ].
        recoveredStep = 151 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 154] ifFalse: [recoveredPC := 162].
        ].
        recoveredStep = 154 ifTrue: [
            recoveredStack1 := 'BYTE'.
            recoveredPC := 156.
        ].
        recoveredStep = 156 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 159.
        ].
        recoveredStep = 159 ifTrue: [
            recoveredPC := 200.
        ].
        recoveredStep = 162 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 165.
        ].
        recoveredStep = 165 ifTrue: [
            recoveredStack2 := '16'.
            recoveredPC := 167.
        ].
        recoveredStep = 167 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 168.
        ].
        recoveredStep = 168 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 172] ifFalse: [recoveredPC := 180].
        ].
        recoveredStep = 172 ifTrue: [
            recoveredStack1 := 'WORD'.
            recoveredPC := 174.
        ].
        recoveredStep = 174 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 177.
        ].
        recoveredStep = 177 ifTrue: [
            recoveredPC := 200.
        ].
        recoveredStep = 180 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 183.
        ].
        recoveredStep = 183 ifTrue: [
            recoveredStack2 := '32'.
            recoveredPC := 185.
        ].
        recoveredStep = 185 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 186.
        ].
        recoveredStep = 186 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 190] ifFalse: [recoveredPC := 198].
        ].
        recoveredStep = 190 ifTrue: [
            recoveredStack1 := 'LONG'.
            recoveredPC := 192.
        ].
        recoveredStep = 192 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 195.
        ].
        recoveredStep = 195 ifTrue: [
            recoveredPC := 200.
        ].
        recoveredStep = 198 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 199.
        ].
        recoveredStep = 199 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 200 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 203.
        ].
        recoveredStep = 203 ifTrue: [
            recoveredStack1 := (recoveredStack1) isNil.
            recoveredPC := 204.
        ].
        recoveredStep = 204 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 207.
        ].
        recoveredStep = 207 ifTrue: [
            recoveredStack2 := (recoveredStack2) isNil.
            recoveredPC := 208.
        ].
        recoveredStep = 208 ifTrue: [
            recoveredStack1 := (recoveredStack1) | (recoveredStack2).
            recoveredPC := 210.
        ].
        recoveredStep = 210 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 214] ifFalse: [recoveredPC := 216].
        ].
        recoveredStep = 214 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 215.
        ].
        recoveredStep = 215 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 216 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 219.
        ].
        recoveredStep = 219 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 222.
        ].
        recoveredStep = 222 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 224.
        ].
        recoveredStep = 224 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x20566734; bytecode file offset 0xe63090"
!EtasASAP2TransferManager methodsFor: 'recovered'!
updateAsap2VariablesFrom: recoveredArg1 inModule: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredLocal6 recoveredLocal7 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := 'Kk'.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := 'Call_46902'.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := (recoveredStack0) projectContext.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) hasUI.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 42].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := RBWorkingDialog.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := (recoveredStack1) projectContext.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := (recoveredStack1) userInterface.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := (recoveredStack1) shell.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := (recoveredStack0) for: (recoveredStack1).
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack2 := 'Analyzing project...'.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            (recoveredStack1) messageString: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack2 := 'ASAM-2MC'.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            (recoveredStack1) title: (recoveredStack2).
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            (recoveredStack0) open.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack0 := (recoveredStack0) getProjectNodeTreeForProject: (recoveredStack1).
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredLocal7 := recoveredStack0.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack0 := recoveredLocal7.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 60] ifFalse: [recoveredPC := 58].
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack1 := recoveredLocal7.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            (recoveredStack0) createEntriesForCTNodes: (recoveredStack1) module: (recoveredStack2).
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack0 := Set.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack0 := (recoveredStack0) new.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack0 := [:recoveredBlock76Arg1 | 
    | recoveredBlock76Stack0 recoveredBlock76Stack1 recoveredBlock76Stack2 recoveredBlock76Stack3 recoveredBlock76Stack4 recoveredBlock76PC recoveredBlock76Step recoveredBlock76Done recoveredBlock76Result |
    recoveredBlock76Stack0 := self.
    recoveredBlock76PC := 82.
    recoveredBlock76Done := false.
    [recoveredBlock76Done not] whileTrue: [
        recoveredBlock76Step := recoveredBlock76PC.
        recoveredBlock76Step = 82 ifTrue: [
            recoveredBlock76Stack1 := true.
            recoveredBlock76PC := 83.
        ].
        recoveredBlock76Step = 83 ifTrue: [
            recoveredBlock76Stack2 := recoveredBlock76Arg1.
            recoveredBlock76PC := 84.
        ].
        recoveredBlock76Step = 84 ifTrue: [
            recoveredBlock76Stack3 := recoveredLocal3.
            recoveredBlock76PC := 87.
        ].
        recoveredBlock76Step = 87 ifTrue: [
            recoveredBlock76Stack2 := (recoveredBlock76Stack2) checkAsap2IsAlreadyVisited: (recoveredBlock76Stack3).
            recoveredBlock76PC := 89.
        ].
        recoveredBlock76Step = 89 ifTrue: [
            (recoveredBlock76Stack2) ifTrue: [recoveredBlock76PC := 96] ifFalse: [recoveredBlock76PC := 92].
        ].
        recoveredBlock76Step = 92 ifTrue: [
            recoveredBlock76PC := 93.
        ].
        recoveredBlock76Step = 93 ifTrue: [
            recoveredBlock76Stack1 := recoveredBlock76Arg1.
            recoveredBlock76PC := 94.
        ].
        recoveredBlock76Step = 94 ifTrue: [
            recoveredBlock76Stack1 := (recoveredBlock76Stack1) abortConditionForAsapWalkthrough.
            recoveredBlock76PC := 96.
        ].
        recoveredBlock76Step = 96 ifTrue: [
            recoveredBlock76Result := recoveredBlock76Stack1.
            recoveredBlock76Done := true.
        ].
    ].
    recoveredBlock76Result
].
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            recoveredLocal5 := recoveredStack0.
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack0 := [:recoveredBlock100Arg1 | 
    | recoveredBlock100Stack0 recoveredBlock100Stack1 recoveredBlock100Stack2 recoveredBlock100Stack3 recoveredBlock100PC recoveredBlock100Step recoveredBlock100Done recoveredBlock100Result |
    recoveredBlock100Stack0 := self.
    recoveredBlock100PC := 106.
    recoveredBlock100Done := false.
    [recoveredBlock100Done not] whileTrue: [
        recoveredBlock100Step := recoveredBlock100PC.
        recoveredBlock100Step = 106 ifTrue: [
            recoveredBlock100Stack1 := nil.
            recoveredBlock100PC := 107.
        ].
        recoveredBlock100Step = 107 ifTrue: [
            recoveredBlock100Stack2 := recoveredBlock100Arg1.
            recoveredBlock100PC := 108.
        ].
        recoveredBlock100Step = 108 ifTrue: [
            recoveredBlock100Stack2 := (recoveredBlock100Stack2) reference.
            recoveredBlock100PC := 110.
        ].
        recoveredBlock100Step = 110 ifTrue: [
            recoveredBlock100Stack2 := (recoveredBlock100Stack2) isPrimitive.
            recoveredBlock100PC := 112.
        ].
        recoveredBlock100Step = 112 ifTrue: [
            (recoveredBlock100Stack2) ifTrue: [recoveredBlock100PC := 123] ifFalse: [recoveredBlock100PC := 116].
        ].
        recoveredBlock100Step = 116 ifTrue: [
            recoveredBlock100PC := 117.
        ].
        recoveredBlock100Step = 117 ifTrue: [
            recoveredBlock100Stack1 := self.
            recoveredBlock100PC := 118.
        ].
        recoveredBlock100Step = 118 ifTrue: [
            recoveredBlock100Stack2 := recoveredArg2.
            recoveredBlock100PC := 121.
        ].
        recoveredBlock100Step = 121 ifTrue: [
            recoveredBlock100Stack1 := (recoveredBlock100Stack1) cleanupStackAppendToModule: (recoveredBlock100Stack2).
            recoveredBlock100PC := 123.
        ].
        recoveredBlock100Step = 123 ifTrue: [
            recoveredBlock100Result := recoveredBlock100Stack1.
            recoveredBlock100Done := true.
        ].
    ].
    recoveredBlock100Result
].
            recoveredPC := 124.
        ].
        recoveredStep = 124 ifTrue: [
            recoveredLocal4 := recoveredStack0.
            recoveredPC := 127.
        ].
        recoveredStep = 127 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 128.
        ].
        recoveredStep = 128 ifTrue: [
            recoveredStack0 := (recoveredStack0) symbols.
            recoveredPC := 130.
        ].
        recoveredStep = 130 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 154] ifFalse: [recoveredPC := 134].
        ].
        recoveredStep = 134 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 135.
        ].
        recoveredStep = 135 ifTrue: [
            recoveredStack0 := (recoveredStack0) symbols.
            recoveredPC := 137.
        ].
        recoveredStep = 137 ifTrue: [
            recoveredStack1 := 1.
            recoveredPC := 139.
        ].
        recoveredStep = 139 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1).
            recoveredPC := 141.
        ].
        recoveredStep = 141 ifTrue: [
            recoveredStack0 := (recoveredStack0) isEmpty.
            recoveredPC := 143.
        ].
        recoveredStep = 143 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 146] ifFalse: [recoveredPC := 154].
        ].
        recoveredStep = 146 ifTrue: [
            recoveredStack0 := SGMonitorStreamDummy.
            recoveredPC := 148.
        ].
        recoveredStep = 148 ifTrue: [
            recoveredStack0 := (recoveredStack0) create.
            recoveredPC := 150.
        ].
        recoveredStep = 150 ifTrue: [
            recoveredStack1 := 'no map file , no address information available'.
            recoveredPC := 152.
        ].
        recoveredStep = 152 ifTrue: [
            (recoveredStack0) addText: (recoveredStack1).
            recoveredPC := 154.
        ].
        recoveredStep = 154 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 157.
        ].
        recoveredStep = 157 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 167] ifFalse: [recoveredPC := 160].
        ].
        recoveredStep = 160 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 163.
        ].
        recoveredStep = 163 ifTrue: [
            recoveredStack1 := 'Generating ASAM-2MC file...'.
            recoveredPC := 165.
        ].
        recoveredStep = 165 ifTrue: [
            (recoveredStack0) messageString: (recoveredStack1).
            recoveredPC := 167.
        ].
        recoveredStep = 167 ifTrue: [
            recoveredStack0 := recoveredLocal7.
            recoveredPC := 170.
        ].
        recoveredStep = 170 ifTrue: [
            recoveredStack1 := [:recoveredBlock170Arg1 | 
    | recoveredBlock170Value0 recoveredBlock170Value1 recoveredBlock170Value2 |
    recoveredBlock170Value0 := recoveredBlock170Arg1.
    recoveredBlock170Value1 := recoveredArg2.
    recoveredBlock170Value2 := (self) createAsap2EntryForNode: (recoveredBlock170Value0) inModule: (recoveredBlock170Value1).
    recoveredBlock170Value2
].
            recoveredPC := 183.
        ].
        recoveredStep = 183 ifTrue: [
            recoveredStack2 := recoveredLocal5.
            recoveredPC := 186.
        ].
        recoveredStep = 186 ifTrue: [
            recoveredStack3 := recoveredLocal4.
            recoveredPC := 189.
        ].
        recoveredStep = 189 ifTrue: [
            (recoveredStack0) walkThroughFromClass: (recoveredStack1) abortCondition: (recoveredStack2) cleanUpAction: (recoveredStack3).
            recoveredPC := 192.
        ].
        recoveredStep = 192 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 193.
        ].
        recoveredStep = 193 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 196.
        ].
        recoveredStep = 196 ifTrue: [
            (recoveredStack0) updatedFunctionInformationForImportedLabelsInModule: (recoveredStack1).
            recoveredPC := 198.
        ].
        recoveredStep = 198 ifTrue: [
            recoveredStack0 := 'Kk'.
            recoveredPC := 200.
        ].
        recoveredStep = 200 ifTrue: [
            recoveredStack1 := 'Call_59018'.
            recoveredPC := 202.
        ].
        recoveredStep = 202 ifTrue: [
            recoveredStack0 := (recoveredStack0) == (recoveredStack1).
            recoveredPC := 203.
        ].
        recoveredStep = 203 ifTrue: [
            recoveredPC := 204.
        ].
        recoveredStep = 204 ifTrue: [
            recoveredStack0 := recoveredArg2.
            recoveredPC := 207.
        ].
        recoveredStep = 207 ifTrue: [
            recoveredStack1 := 'ident'.
            recoveredPC := 209.
        ].
        recoveredStep = 209 ifTrue: [
            recoveredStack0 := (recoveredStack0) compuMethodNamed: (recoveredStack1).
            recoveredPC := 211.
        ].
        recoveredStep = 211 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 226] ifFalse: [recoveredPC := 214].
        ].
        recoveredStep = 214 ifTrue: [
            recoveredStack0 := RBFormulaId.
            recoveredPC := 216.
        ].
        recoveredStep = 216 ifTrue: [
            recoveredStack0 := (recoveredStack0) createIdent.
            recoveredPC := 218.
        ].
        recoveredStep = 218 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 221.
        ].
        recoveredStep = 221 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 222.
        ].
        recoveredStep = 222 ifTrue: [
            recoveredStack2 := (recoveredStack2) asap2Builder.
            recoveredPC := 224.
        ].
        recoveredStep = 224 ifTrue: [
            (recoveredStack0) convertToASAP2ForModule: (recoveredStack1) usingBuilder: (recoveredStack2).
            recoveredPC := 226.
        ].
        recoveredStep = 226 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 229.
        ].
        recoveredStep = 229 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 237] ifFalse: [recoveredPC := 232].
        ].
        recoveredStep = 232 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 235.
        ].
        recoveredStep = 235 ifTrue: [
            (recoveredStack0) close.
            recoveredPC := 237.
        ].
        recoveredStep = 237 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 238.
        ].
        recoveredStep = 238 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x205a4aac; bytecode file offset 0xea13e0"
!EtasASAP2TransferManager methodsFor: 'recovered'!
createFunctionEntriesForCTNodes: recoveredArg1 module: recoveredArg2
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
            recoveredStack1 := (recoveredStack1) notEmpty.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 296].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) ctTasksForProject.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack2 := [:recoveredBlock20Arg1 | 
    | recoveredBlock20Value0 recoveredBlock20Value1 recoveredBlock20Value2 recoveredBlock20Value3 recoveredBlock20Value4 recoveredBlock20Value5 recoveredBlock20Value6 |
    recoveredBlock20Value0 := recoveredBlock20Arg1.
    recoveredBlock20Value1 := (recoveredBlock20Value0) reference.
    recoveredBlock20Value2 := recoveredArg2.
    recoveredBlock20Value3 := recoveredBlock20Arg1.
    recoveredBlock20Value4 := (recoveredBlock20Value1) convertToAsap2Module: (recoveredBlock20Value2) emNode: (recoveredBlock20Value3) manager: (self).
    recoveredBlock20Value5 := [:recoveredBlock20Block40Arg1 | 
    | recoveredBlock20Block40Local1 recoveredBlock20Block40Local2 recoveredBlock20Block40Local3 recoveredBlock20Block40Local4 recoveredBlock20Block40Local5 recoveredBlock20Block40Stack0 recoveredBlock20Block40Stack1 recoveredBlock20Block40Stack2 recoveredBlock20Block40Stack3 recoveredBlock20Block40Stack4 recoveredBlock20Block40Stack5 recoveredBlock20Block40PC recoveredBlock20Block40Step recoveredBlock20Block40Done recoveredBlock20Block40Result |
    recoveredBlock20Block40Stack0 := self.
    recoveredBlock20Block40PC := 46.
    recoveredBlock20Block40Done := false.
    [recoveredBlock20Block40Done not] whileTrue: [
        recoveredBlock20Block40Step := recoveredBlock20Block40PC.
        recoveredBlock20Block40Step = 46 ifTrue: [
            recoveredBlock20Block40Stack1 := 'Kk'.
            recoveredBlock20Block40PC := 48.
        ].
        recoveredBlock20Block40Step = 48 ifTrue: [
            recoveredBlock20Block40Stack2 := 'Call_3001384'.
            recoveredBlock20Block40PC := 50.
        ].
        recoveredBlock20Block40Step = 50 ifTrue: [
            recoveredBlock20Block40Stack1 := (recoveredBlock20Block40Stack1) == (recoveredBlock20Block40Stack2).
            recoveredBlock20Block40PC := 51.
        ].
        recoveredBlock20Block40Step = 51 ifTrue: [
            recoveredBlock20Block40PC := 52.
        ].
        recoveredBlock20Block40Step = 52 ifTrue: [
            recoveredBlock20Block40Stack1 := recoveredLocal3.
            recoveredBlock20Block40PC := 55.
        ].
        recoveredBlock20Block40Step = 55 ifTrue: [
            (recoveredBlock20Block40Stack1 ~~ nil) ifTrue: [recoveredBlock20Block40PC := 82] ifFalse: [recoveredBlock20Block40PC := 58].
        ].
        recoveredBlock20Block40Step = 58 ifTrue: [
            recoveredBlock20Block40Stack1 := self.
            recoveredBlock20Block40PC := 59.
        ].
        recoveredBlock20Block40Step = 59 ifTrue: [
            recoveredBlock20Block40Stack2 := 'CT_Function'.
            recoveredBlock20Block40PC := 61.
        ].
        recoveredBlock20Block40Step = 61 ifTrue: [
            recoveredBlock20Block40Stack3 := recoveredArg2.
            recoveredBlock20Block40PC := 64.
        ].
        recoveredBlock20Block40Step = 64 ifTrue: [
            recoveredBlock20Block40Stack1 := (recoveredBlock20Block40Stack1) getOrCreateFunction: (recoveredBlock20Block40Stack2) inModule: (recoveredBlock20Block40Stack3).
            recoveredBlock20Block40PC := 66.
        ].
        recoveredBlock20Block40Step = 66 ifTrue: [
            recoveredLocal3 := recoveredBlock20Block40Stack1.
            recoveredBlock20Block40PC := 69.
        ].
        recoveredBlock20Block40Step = 69 ifTrue: [
            recoveredBlock20Block40Stack1 := 'Kk'.
            recoveredBlock20Block40PC := 71.
        ].
        recoveredBlock20Block40Step = 71 ifTrue: [
            recoveredBlock20Block40Stack2 := 'Call_70613'.
            recoveredBlock20Block40PC := 73.
        ].
        recoveredBlock20Block40Step = 73 ifTrue: [
            recoveredBlock20Block40Stack1 := (recoveredBlock20Block40Stack1) == (recoveredBlock20Block40Stack2).
            recoveredBlock20Block40PC := 74.
        ].
        recoveredBlock20Block40Step = 74 ifTrue: [
            recoveredBlock20Block40PC := 75.
        ].
        recoveredBlock20Block40Step = 75 ifTrue: [
            recoveredBlock20Block40Stack1 := recoveredLocal3.
            recoveredBlock20Block40PC := 78.
        ].
        recoveredBlock20Block40Step = 78 ifTrue: [
            recoveredBlock20Block40Stack2 := 'ASCET generated function list for CT'.
            recoveredBlock20Block40PC := 80.
        ].
        recoveredBlock20Block40Step = 80 ifTrue: [
            (recoveredBlock20Block40Stack1) longName: (recoveredBlock20Block40Stack2).
            recoveredBlock20Block40PC := 82.
        ].
        recoveredBlock20Block40Step = 82 ifTrue: [
            recoveredBlock20Block40Stack1 := recoveredLocal3.
            recoveredBlock20Block40PC := 85.
        ].
        recoveredBlock20Block40Step = 85 ifTrue: [
            recoveredBlock20Block40Stack2 := recoveredBlock20Block40Arg1.
            recoveredBlock20Block40PC := 88.
        ].
        recoveredBlock20Block40Step = 88 ifTrue: [
            (recoveredBlock20Block40Stack1) addDefCharacteristic: (recoveredBlock20Block40Stack2).
            recoveredBlock20Block40PC := 90.
        ].
        recoveredBlock20Block40Step = 90 ifTrue: [
            recoveredBlock20Block40Stack1 := recoveredLocal1.
            recoveredBlock20Block40PC := 93.
        ].
        recoveredBlock20Block40Step = 93 ifTrue: [
            (recoveredBlock20Block40Stack1 == nil) ifTrue: [recoveredBlock20Block40PC := 209] ifFalse: [recoveredBlock20Block40PC := 96].
        ].
        recoveredBlock20Block40Step = 96 ifTrue: [
            recoveredBlock20Block40Stack1 := self.
            recoveredBlock20Block40PC := 97.
        ].
        recoveredBlock20Block40Step = 97 ifTrue: [
            recoveredBlock20Block40Stack1 := (recoveredBlock20Block40Stack1) asdProject.
            recoveredBlock20Block40PC := 99.
        ].
        recoveredBlock20Block40Step = 99 ifTrue: [
            recoveredBlock20Block40Stack2 := recoveredBlock20Arg1.
            recoveredBlock20Block40PC := 102.
        ].
        recoveredBlock20Block40Step = 102 ifTrue: [
            recoveredBlock20Block40Stack2 := (recoveredBlock20Block40Stack2) reference.
            recoveredBlock20Block40PC := 103.
        ].
        recoveredBlock20Block40Step = 103 ifTrue: [
            recoveredBlock20Block40Stack1 := (recoveredBlock20Block40Stack1) simulateProcessNameForVariable: (recoveredBlock20Block40Stack2).
            recoveredBlock20Block40PC := 105.
        ].
        recoveredBlock20Block40Step = 105 ifTrue: [
            recoveredBlock20Block40Local5 := recoveredBlock20Block40Stack1.
            recoveredBlock20Block40PC := 108.
        ].
        recoveredBlock20Block40Step = 108 ifTrue: [
            recoveredBlock20Block40Stack1 := recoveredLocal1.
            recoveredBlock20Block40PC := 111.
        ].
        recoveredBlock20Block40Step = 111 ifTrue: [
            recoveredBlock20Block40Stack2 := [:recoveredBlock20Block40Block111Arg1 | 
    | recoveredBlock20Block40Block111Value0 recoveredBlock20Block40Block111Value1 recoveredBlock20Block40Block111Value2 recoveredBlock20Block40Block111Value3 |
    recoveredBlock20Block40Block111Value0 := recoveredBlock20Block40Block111Arg1.
    recoveredBlock20Block40Block111Value1 := (recoveredBlock20Block40Block111Value0) name.
    recoveredBlock20Block40Block111Value2 := recoveredBlock20Block40Local5.
    recoveredBlock20Block40Block111Value3 := (recoveredBlock20Block40Block111Value1) = (recoveredBlock20Block40Block111Value2).
    recoveredBlock20Block40Block111Value3
].
            recoveredBlock20Block40PC := 126.
        ].
        recoveredBlock20Block40Step = 126 ifTrue: [
            recoveredBlock20Block40Stack3 := [].
            recoveredBlock20Block40PC := 128.
        ].
        recoveredBlock20Block40Step = 128 ifTrue: [
            recoveredBlock20Block40Stack1 := (recoveredBlock20Block40Stack1) detect: (recoveredBlock20Block40Stack2) ifNone: (recoveredBlock20Block40Stack3).
            recoveredBlock20Block40PC := 130.
        ].
        recoveredBlock20Block40Step = 130 ifTrue: [
            recoveredBlock20Block40Stack2 := recoveredBlock20Block40Stack1.
            recoveredBlock20Block40PC := 131.
        ].
        recoveredBlock20Block40Step = 131 ifTrue: [
            recoveredBlock20Block40Local4 := recoveredBlock20Block40Stack2.
            recoveredBlock20Block40PC := 134.
        ].
        recoveredBlock20Block40Step = 134 ifTrue: [
            (recoveredBlock20Block40Stack1 == nil) ifTrue: [recoveredBlock20Block40PC := 201] ifFalse: [recoveredBlock20Block40PC := 138].
        ].
        recoveredBlock20Block40Step = 138 ifTrue: [
            recoveredBlock20Block40Stack1 := recoveredBlock20Block40Local4.
            recoveredBlock20Block40PC := 141.
        ].
        recoveredBlock20Block40Step = 141 ifTrue: [
            recoveredBlock20Block40Stack1 := (recoveredBlock20Block40Stack1) triggerObject.
            recoveredBlock20Block40PC := 143.
        ].
        recoveredBlock20Block40Step = 143 ifTrue: [
            recoveredBlock20Block40Stack1 := (recoveredBlock20Block40Stack1) isTimerTrigger.
            recoveredBlock20Block40PC := 145.
        ].
        recoveredBlock20Block40Step = 145 ifTrue: [
            (recoveredBlock20Block40Stack1) ifTrue: [recoveredBlock20Block40PC := 148] ifFalse: [recoveredBlock20Block40PC := 201].
        ].
        recoveredBlock20Block40Step = 148 ifTrue: [
            recoveredBlock20Block40Stack1 := recoveredBlock20Block40Local4.
            recoveredBlock20Block40PC := 151.
        ].
        recoveredBlock20Block40Step = 151 ifTrue: [
            recoveredBlock20Block40Stack1 := (recoveredBlock20Block40Stack1) triggerObject.
            recoveredBlock20Block40PC := 153.
        ].
        recoveredBlock20Block40Step = 153 ifTrue: [
            recoveredBlock20Block40Stack1 := (recoveredBlock20Block40Stack1) period.
            recoveredBlock20Block40PC := 155.
        ].
        recoveredBlock20Block40Step = 155 ifTrue: [
            recoveredBlock20Block40Local1 := recoveredBlock20Block40Stack1.
            recoveredBlock20Block40PC := 158.
        ].
        recoveredBlock20Block40Step = 158 ifTrue: [
            recoveredBlock20Block40Stack1 := 0.
            recoveredBlock20Block40PC := 160.
        ].
        recoveredBlock20Block40Step = 160 ifTrue: [
            recoveredBlock20Block40Local3 := recoveredBlock20Block40Stack1.
            recoveredBlock20Block40PC := 163.
        ].
        recoveredBlock20Block40Step = 163 ifTrue: [
            recoveredBlock20Block40Stack1 := recoveredBlock20Block40Local1.
            recoveredBlock20Block40PC := 166.
        ].
        recoveredBlock20Block40Step = 166 ifTrue: [
            recoveredBlock20Block40Stack2 := 1000000.
            recoveredBlock20Block40PC := 168.
        ].
        recoveredBlock20Block40Step = 168 ifTrue: [
            recoveredBlock20Block40Stack1 := (recoveredBlock20Block40Stack1) * (recoveredBlock20Block40Stack2).
            recoveredBlock20Block40PC := 169.
        ].
        recoveredBlock20Block40Step = 169 ifTrue: [
            recoveredBlock20Block40Stack1 := (recoveredBlock20Block40Stack1) rounded.
            recoveredBlock20Block40PC := 171.
        ].
        recoveredBlock20Block40Step = 171 ifTrue: [
            recoveredBlock20Block40Local2 := recoveredBlock20Block40Stack1.
            recoveredBlock20Block40PC := 174.
        ].
        recoveredBlock20Block40Step = 174 ifTrue: [
            recoveredBlock20Block40Stack1 := recoveredBlock20Block40Arg1.
            recoveredBlock20Block40PC := 177.
        ].
        recoveredBlock20Block40Step = 177 ifTrue: [
            recoveredBlock20Block40Stack2 := Array.
            recoveredBlock20Block40PC := 179.
        ].
        recoveredBlock20Block40Step = 179 ifTrue: [
            recoveredBlock20Block40Stack3 := recoveredBlock20Block40Local3.
            recoveredBlock20Block40PC := 182.
        ].
        recoveredBlock20Block40Step = 182 ifTrue: [
            recoveredBlock20Block40Stack4 := recoveredBlock20Block40Local2.
            recoveredBlock20Block40PC := 185.
        ].
        recoveredBlock20Block40Step = 185 ifTrue: [
            recoveredBlock20Block40Stack2 := (recoveredBlock20Block40Stack2) with: (recoveredBlock20Block40Stack3) with: (recoveredBlock20Block40Stack4).
            recoveredBlock20Block40PC := 187.
        ].
        recoveredBlock20Block40Step = 187 ifTrue: [
            (recoveredBlock20Block40Stack1) maxRefresh: (recoveredBlock20Block40Stack2).
            recoveredBlock20Block40PC := 189.
        ].
        recoveredBlock20Block40Step = 189 ifTrue: [
            recoveredBlock20Block40Stack1 := nil.
            recoveredBlock20Block40PC := 190.
        ].
        recoveredBlock20Block40Step = 190 ifTrue: [
            recoveredBlock20Block40Stack2 := recoveredBlock20Block40Stack1.
            recoveredBlock20Block40PC := 191.
        ].
        recoveredBlock20Block40Step = 191 ifTrue: [
            recoveredBlock20Block40Local3 := recoveredBlock20Block40Stack2.
            recoveredBlock20Block40PC := 194.
        ].
        recoveredBlock20Block40Step = 194 ifTrue: [
            recoveredBlock20Block40Stack2 := recoveredBlock20Block40Stack1.
            recoveredBlock20Block40PC := 195.
        ].
        recoveredBlock20Block40Step = 195 ifTrue: [
            recoveredBlock20Block40Local2 := recoveredBlock20Block40Stack2.
            recoveredBlock20Block40PC := 198.
        ].
        recoveredBlock20Block40Step = 198 ifTrue: [
            recoveredBlock20Block40Local1 := recoveredBlock20Block40Stack1.
            recoveredBlock20Block40PC := 201.
        ].
        recoveredBlock20Block40Step = 201 ifTrue: [
            recoveredBlock20Block40Stack1 := nil.
            recoveredBlock20Block40PC := 202.
        ].
        recoveredBlock20Block40Step = 202 ifTrue: [
            recoveredBlock20Block40Stack2 := recoveredBlock20Block40Stack1.
            recoveredBlock20Block40PC := 203.
        ].
        recoveredBlock20Block40Step = 203 ifTrue: [
            recoveredBlock20Block40Local5 := recoveredBlock20Block40Stack2.
            recoveredBlock20Block40PC := 206.
        ].
        recoveredBlock20Block40Step = 206 ifTrue: [
            recoveredBlock20Block40Local4 := recoveredBlock20Block40Stack1.
            recoveredBlock20Block40PC := 209.
        ].
        recoveredBlock20Block40Step = 209 ifTrue: [
            recoveredBlock20Block40Stack1 := nil.
            recoveredBlock20Block40PC := 210.
        ].
        recoveredBlock20Block40Step = 210 ifTrue: [
            recoveredBlock20Block40Stack2 := recoveredBlock20Arg1.
            recoveredBlock20Block40PC := 213.
        ].
        recoveredBlock20Block40Step = 213 ifTrue: [
            recoveredBlock20Block40Stack2 := (recoveredBlock20Block40Stack2) reference.
            recoveredBlock20Block40PC := 214.
        ].
        recoveredBlock20Block40Step = 214 ifTrue: [
            recoveredBlock20Block40Stack3 := [:block28115b40Arg1 | 
    nil
].
            recoveredBlock20Block40PC := 216.
        ].
        recoveredBlock20Block40Step = 216 ifTrue: [
            recoveredBlock20Block40PC := 222.
        ].
        recoveredBlock20Block40Step = 222 ifTrue: [
            recoveredBlock20Block40Stack2 := (recoveredBlock20Block40Stack2) sgClassIfUndefined: (recoveredBlock20Block40Stack3).
            recoveredBlock20Block40PC := 224.
        ].
        recoveredBlock20Block40Step = 224 ifTrue: [
            recoveredBlock20Block40Stack2 := (recoveredBlock20Block40Stack2) specification.
            recoveredBlock20Block40PC := 226.
        ].
        recoveredBlock20Block40Step = 226 ifTrue: [
            recoveredBlock20Block40Stack2 := (recoveredBlock20Block40Stack2) isCCodeSpecification.
            recoveredBlock20Block40PC := 228.
        ].
        recoveredBlock20Block40Step = 228 ifTrue: [
            (recoveredBlock20Block40Stack2) ifTrue: [recoveredBlock20Block40PC := 232] ifFalse: [recoveredBlock20Block40PC := 278].
        ].
        recoveredBlock20Block40Step = 232 ifTrue: [
            recoveredBlock20Block40PC := 233.
        ].
        recoveredBlock20Block40Step = 233 ifTrue: [
            recoveredBlock20Block40Stack1 := 'Kk'.
            recoveredBlock20Block40PC := 235.
        ].
        recoveredBlock20Block40Step = 235 ifTrue: [
            recoveredBlock20Block40Stack2 := 'Call_3001384'.
            recoveredBlock20Block40PC := 237.
        ].
        recoveredBlock20Block40Step = 237 ifTrue: [
            recoveredBlock20Block40Stack1 := (recoveredBlock20Block40Stack1) == (recoveredBlock20Block40Stack2).
            recoveredBlock20Block40PC := 238.
        ].
        recoveredBlock20Block40Step = 238 ifTrue: [
            recoveredBlock20Block40PC := 239.
        ].
        recoveredBlock20Block40Step = 239 ifTrue: [
            recoveredBlock20Block40Stack1 := recoveredLocal2.
            recoveredBlock20Block40PC := 242.
        ].
        recoveredBlock20Block40Step = 242 ifTrue: [
            (recoveredBlock20Block40Stack1 ~~ nil) ifTrue: [recoveredBlock20Block40PC := 270] ifFalse: [recoveredBlock20Block40PC := 246].
        ].
        recoveredBlock20Block40Step = 246 ifTrue: [
            recoveredBlock20Block40Stack1 := self.
            recoveredBlock20Block40PC := 247.
        ].
        recoveredBlock20Block40Step = 247 ifTrue: [
            recoveredBlock20Block40Stack2 := 'CT_Workaround'.
            recoveredBlock20Block40PC := 249.
        ].
        recoveredBlock20Block40Step = 249 ifTrue: [
            recoveredBlock20Block40Stack3 := recoveredArg2.
            recoveredBlock20Block40PC := 252.
        ].
        recoveredBlock20Block40Step = 252 ifTrue: [
            recoveredBlock20Block40Stack1 := (recoveredBlock20Block40Stack1) getOrCreateFunction: (recoveredBlock20Block40Stack2) inModule: (recoveredBlock20Block40Stack3).
            recoveredBlock20Block40PC := 254.
        ].
        recoveredBlock20Block40Step = 254 ifTrue: [
            recoveredLocal2 := recoveredBlock20Block40Stack1.
            recoveredBlock20Block40PC := 257.
        ].
        recoveredBlock20Block40Step = 257 ifTrue: [
            recoveredBlock20Block40Stack1 := 'Kk'.
            recoveredBlock20Block40PC := 259.
        ].
        recoveredBlock20Block40Step = 259 ifTrue: [
            recoveredBlock20Block40Stack2 := 'Call_70613'.
            recoveredBlock20Block40PC := 261.
        ].
        recoveredBlock20Block40Step = 261 ifTrue: [
            recoveredBlock20Block40Stack1 := (recoveredBlock20Block40Stack1) == (recoveredBlock20Block40Stack2).
            recoveredBlock20Block40PC := 262.
        ].
        recoveredBlock20Block40Step = 262 ifTrue: [
            recoveredBlock20Block40PC := 263.
        ].
        recoveredBlock20Block40Step = 263 ifTrue: [
            recoveredBlock20Block40Stack1 := recoveredLocal2.
            recoveredBlock20Block40PC := 266.
        ].
        recoveredBlock20Block40Step = 266 ifTrue: [
            recoveredBlock20Block40Stack2 := 'ASCET generated function list for CT'.
            recoveredBlock20Block40PC := 268.
        ].
        recoveredBlock20Block40Step = 268 ifTrue: [
            (recoveredBlock20Block40Stack1) longName: (recoveredBlock20Block40Stack2).
            recoveredBlock20Block40PC := 270.
        ].
        recoveredBlock20Block40Step = 270 ifTrue: [
            recoveredBlock20Block40Stack1 := recoveredLocal2.
            recoveredBlock20Block40PC := 273.
        ].
        recoveredBlock20Block40Step = 273 ifTrue: [
            recoveredBlock20Block40Stack2 := recoveredBlock20Block40Arg1.
            recoveredBlock20Block40PC := 276.
        ].
        recoveredBlock20Block40Step = 276 ifTrue: [
            recoveredBlock20Block40Stack1 := (recoveredBlock20Block40Stack1) addDefCharacteristic: (recoveredBlock20Block40Stack2).
            recoveredBlock20Block40PC := 278.
        ].
        recoveredBlock20Block40Step = 278 ifTrue: [
            recoveredBlock20Block40Result := recoveredBlock20Block40Stack1.
            recoveredBlock20Block40Done := true.
        ].
    ].
    recoveredBlock20Block40Result
].
    recoveredBlock20Value6 := (recoveredBlock20Value4) ifNotNil: (recoveredBlock20Value5).
    recoveredBlock20Value6
].
            recoveredPC := 282.
        ].
        recoveredStep = 282 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 284.
        ].
        recoveredStep = 284 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 285.
        ].
        recoveredStep = 285 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 286.
        ].
        recoveredStep = 286 ifTrue: [
            recoveredLocal3 := recoveredStack2.
            recoveredPC := 289.
        ].
        recoveredStep = 289 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 290.
        ].
        recoveredStep = 290 ifTrue: [
            recoveredLocal2 := recoveredStack2.
            recoveredPC := 293.
        ].
        recoveredStep = 293 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 296.
        ].
        recoveredStep = 296 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x205afa04; bytecode file offset 0xeac35c"
!EtasASAP2TransferManager methodsFor: 'recovered'!
getMapSymbolForShortName: recoveredArg1 node: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredLocal6 recoveredLocal7 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := 'Kk'.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := 'Call_79644'.
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
            recoveredStack1 := recoveredArg2.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) reference.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) isVirtual.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 35].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := (recoveredStack1) reference.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := (recoveredStack1) isParameter.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 35] ifFalse: [recoveredPC := 28].
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := (recoveredStack1) defaultMapSymbolFor: (recoveredStack2).
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := (recoveredStack1) parent.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := (recoveredStack1) makeConfig.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := (recoveredStack1) implementation.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredLocal7 := recoveredStack1.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack1 := recoveredLocal7.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 80] ifFalse: [recoveredPC := 54].
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack1 := (recoveredStack1) reference.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack1 := (recoveredStack1) label.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack2 := '_'.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack2 := (recoveredStack2) reference.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack2 := (recoveredStack2) ownerSGClass.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack2 := (recoveredStack2) label.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack2 := (recoveredStack2) asUppercase.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredPC := 114.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack1 := (recoveredStack1) reference.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack1 := (recoveredStack1) label.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack2 := '_'.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack2 := recoveredLocal7.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredStack2 := (recoveredStack2) sgClass.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredStack2 := (recoveredStack2) label.
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            recoveredStack2 := (recoveredStack2) asUppercase.
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            recoveredStack2 := '_'.
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            recoveredStack2 := recoveredLocal7.
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            recoveredStack2 := (recoveredStack2) label.
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            recoveredStack2 := (recoveredStack2) asUppercase.
            recoveredPC := 112.
        ].
        recoveredStep = 112 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 114.
        ].
        recoveredStep = 114 ifTrue: [
            recoveredLocal6 := recoveredStack1.
            recoveredPC := 117.
        ].
        recoveredStep = 117 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 120.
        ].
        recoveredStep = 120 ifTrue: [
            recoveredStack1 := (recoveredStack1) mapSymbolName.
            recoveredPC := 122.
        ].
        recoveredStep = 122 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 125.
        ].
        recoveredStep = 125 ifTrue: [
            recoveredStack0 := (recoveredStack0) symbols.
            recoveredPC := 127.
        ].
        recoveredStep = 127 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 128.
        ].
        recoveredStep = 128 ifTrue: [
            recoveredLocal5 := recoveredStack1.
            recoveredPC := 131.
        ].
        recoveredStep = 131 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 304] ifFalse: [recoveredPC := 134].
        ].
        recoveredStep = 134 ifTrue: [
            recoveredStack0 := recoveredLocal5.
            recoveredPC := 137.
        ].
        recoveredStep = 137 ifTrue: [
            recoveredStack1 := 1.
            recoveredPC := 139.
        ].
        recoveredStep = 139 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1).
            recoveredPC := 141.
        ].
        recoveredStep = 141 ifTrue: [
            recoveredStack0 := (recoveredStack0) notEmpty.
            recoveredPC := 143.
        ].
        recoveredStep = 143 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 146] ifFalse: [recoveredPC := 304].
        ].
        recoveredStep = 146 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 147.
        ].
        recoveredStep = 147 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 150.
        ].
        recoveredStep = 150 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 153.
        ].
        recoveredStep = 153 ifTrue: [
            recoveredStack3 := recoveredLocal6.
            recoveredPC := 156.
        ].
        recoveredStep = 156 ifTrue: [
            recoveredStack4 := recoveredLocal2.
            recoveredPC := 159.
        ].
        recoveredStep = 159 ifTrue: [
            recoveredStack0 := (recoveredStack0) lookForMapSymbolIn: (recoveredStack1) shortName: (recoveredStack2) longName: (recoveredStack3) mapName: (recoveredStack4).
            recoveredPC := 162.
        ].
        recoveredStep = 162 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 163.
        ].
        recoveredStep = 163 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 166.
        ].
        recoveredStep = 166 ifTrue: [
            recoveredStack0 := (recoveredStack0) isEmpty.
            recoveredPC := 168.
        ].
        recoveredStep = 168 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 172] ifFalse: [recoveredPC := 192].
        ].
        recoveredStep = 172 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 173.
        ].
        recoveredStep = 173 ifTrue: [
            recoveredStack1 := 'WARNING: No adresses for: %1 in map file %2'.
            recoveredPC := 175.
        ].
        recoveredStep = 175 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 178.
        ].
        recoveredStep = 178 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 179.
        ].
        recoveredStep = 179 ifTrue: [
            recoveredStack3 := (recoveredStack3) mapFileName.
            recoveredPC := 181.
        ].
        recoveredStep = 181 ifTrue: [
            recoveredStack1 := (recoveredStack1) bindWith: (recoveredStack2) with: (recoveredStack3).
            recoveredPC := 183.
        ].
        recoveredStep = 183 ifTrue: [
            (recoveredStack0) log: (recoveredStack1).
            recoveredPC := 185.
        ].
        recoveredStep = 185 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 186.
        ].
        recoveredStep = 186 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 189.
        ].
        recoveredStep = 189 ifTrue: [
            recoveredStack0 := (recoveredStack0) defaultMapSymbolFor: (recoveredStack1).
            recoveredPC := 191.
        ].
        recoveredStep = 191 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 192 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 195.
        ].
        recoveredStep = 195 ifTrue: [
            recoveredStack0 := (recoveredStack0) first.
            recoveredPC := 197.
        ].
        recoveredStep = 197 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 200.
        ].
        recoveredStep = 200 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 203.
        ].
        recoveredStep = 203 ifTrue: [
            recoveredStack0 := (recoveredStack0) size.
            recoveredPC := 205.
        ].
        recoveredStep = 205 ifTrue: [
            recoveredStack1 := 1.
            recoveredPC := 207.
        ].
        recoveredStep = 207 ifTrue: [
            recoveredStack0 := (recoveredStack0) > (recoveredStack1).
            recoveredPC := 208.
        ].
        recoveredStep = 208 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 212] ifFalse: [recoveredPC := 304].
        ].
        recoveredStep = 212 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 215.
        ].
        recoveredStep = 215 ifTrue: [
            recoveredStack1 := [:block281169e0Arg1 | 
    | block281169e0Value0 block281169e0Value1 |
    block281169e0Value0 := block281169e0Arg1.
    block281169e0Value1 := (block281169e0Value0) value.
    block281169e0Value1
].
            recoveredPC := 217.
        ].
        recoveredStep = 217 ifTrue: [
            recoveredPC := 224.
        ].
        recoveredStep = 224 ifTrue: [
            recoveredStack0 := (recoveredStack0) collect: (recoveredStack1).
            recoveredPC := 226.
        ].
        recoveredStep = 226 ifTrue: [
            recoveredStack0 := (recoveredStack0) asSet.
            recoveredPC := 228.
        ].
        recoveredStep = 228 ifTrue: [
            recoveredStack0 := (recoveredStack0) size.
            recoveredPC := 230.
        ].
        recoveredStep = 230 ifTrue: [
            recoveredStack1 := 1.
            recoveredPC := 232.
        ].
        recoveredStep = 232 ifTrue: [
            recoveredStack0 := (recoveredStack0) > (recoveredStack1).
            recoveredPC := 233.
        ].
        recoveredStep = 233 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 236] ifFalse: [recoveredPC := 304].
        ].
        recoveredStep = 236 ifTrue: [
            recoveredStack0 := ReadWriteStream.
            recoveredPC := 238.
        ].
        recoveredStep = 238 ifTrue: [
            recoveredStack1 := ''.
            recoveredPC := 240.
        ].
        recoveredStep = 240 ifTrue: [
            recoveredStack0 := (recoveredStack0) on: (recoveredStack1).
            recoveredPC := 242.
        ].
        recoveredStep = 242 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 245.
        ].
        recoveredStep = 245 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 248.
        ].
        recoveredStep = 248 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 249.
        ].
        recoveredStep = 249 ifTrue: [
            recoveredStack2 := 'Error: Multiple adresses for: '.
            recoveredPC := 251.
        ].
        recoveredStep = 251 ifTrue: [
            (recoveredStack1) nextPutAll: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 254.
        ].
        recoveredStep = 254 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 257.
        ].
        recoveredStep = 257 ifTrue: [
            (recoveredStack1) nextPutAll: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 260.
        ].
        recoveredStep = 260 ifTrue: [
            recoveredStack2 := ' in map file '.
            recoveredPC := 262.
        ].
        recoveredStep = 262 ifTrue: [
            (recoveredStack1) nextPutAll: (recoveredStack2).
            recoveredPC := 264.
        ].
        recoveredStep = 264 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 265.
        ].
        recoveredStep = 265 ifTrue: [
            recoveredStack1 := (recoveredStack1) mapFileName.
            recoveredPC := 267.
        ].
        recoveredStep = 267 ifTrue: [
            (recoveredStack0) nextPutAll: (recoveredStack1).
            recoveredPC := 269.
        ].
        recoveredStep = 269 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 272.
        ].
        recoveredStep = 272 ifTrue: [
            recoveredStack1 := [:recoveredBlock272Arg1 | 
    | recoveredBlock272Value0 recoveredBlock272Value1 recoveredBlock272Value2 recoveredBlock272Value3 |
    recoveredBlock272Value0 := recoveredLocal1.
    (recoveredBlock272Value0) cr.
    recoveredBlock272Value1 := recoveredBlock272Arg1.
    recoveredBlock272Value2 := recoveredLocal1.
    recoveredBlock272Value3 := (recoveredBlock272Value1) printOn: (recoveredBlock272Value2).
    recoveredBlock272Value3
].
            recoveredPC := 290.
        ].
        recoveredStep = 290 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 292.
        ].
        recoveredStep = 292 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 293.
        ].
        recoveredStep = 293 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 296.
        ].
        recoveredStep = 296 ifTrue: [
            recoveredStack1 := (recoveredStack1) contents.
            recoveredPC := 298.
        ].
        recoveredStep = 298 ifTrue: [
            (recoveredStack0) log: (recoveredStack1).
            recoveredPC := 300.
        ].
        recoveredStep = 300 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 301.
        ].
        recoveredStep = 301 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 304.
        ].
        recoveredStep = 304 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 307.
        ].
        recoveredStep = 307 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x206065d0; bytecode file offset 0xf02f20"
!EtasASAP2TransferManager methodsFor: 'recovered'!
setMapFileInfo: recoveredArg1 forAsap2Object: recoveredArg2 node: recoveredArg3
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
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 318] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack2 := (recoveredStack2) value.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            (recoveredStack1) address: (recoveredStack2).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := (recoveredStack1) bitMask.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredLocal3 := recoveredStack2.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 60] ifFalse: [recoveredPC := 38].
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack1 := (recoveredStack1) ~= (recoveredStack2).
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 48] ifFalse: [recoveredPC := 60].
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            (recoveredStack1) bitMask: (recoveredStack2).
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredPC := 141.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack1 := (recoveredStack1) reference.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack1 := (recoveredStack1) sgClassKey.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack1 := (recoveredStack1) isSGBoolean.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 72] ifFalse: [recoveredPC := 141].
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack1 := 'Kk'.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack2 := 'Call_66088'.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack1 := (recoveredStack1) == (recoveredStack2).
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack1 := (recoveredStack1) isCalibrationNode.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 86] ifFalse: [recoveredPC := 134].
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack1 := 'Kk'.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack2 := 'Call_79644'.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack1 := (recoveredStack1) == (recoveredStack2).
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack1 := 'UNKNOWN'.
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack1 := (recoveredStack1) type.
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            recoveredStack2 := [:recoveredBlock102Arg1 | 
    | recoveredBlock102Value0 recoveredBlock102Value1 recoveredBlock102Value2 |
    recoveredBlock102Value0 := recoveredBlock102Arg1.
    recoveredBlock102Value1 := (recoveredBlock102Value0) asUppercase.
    recoveredBlock102Value2 := recoveredBlock102Value1.
    recoveredLocal2 := recoveredBlock102Value2.
    recoveredBlock102Value1
].
            recoveredPC := 116.
        ].
        recoveredStep = 116 ifTrue: [
            (recoveredStack1) ifNotNil: (recoveredStack2).
            recoveredPC := 118.
        ].
        recoveredStep = 118 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 121.
        ].
        recoveredStep = 121 ifTrue: [
            recoveredStack2 := 'STANDARD_VALUE_'.
            recoveredPC := 123.
        ].
        recoveredStep = 123 ifTrue: [
            recoveredStack3 := recoveredLocal2.
            recoveredPC := 126.
        ].
        recoveredStep = 126 ifTrue: [
            recoveredStack2 := (recoveredStack2) , (recoveredStack3).
            recoveredPC := 128.
        ].
        recoveredStep = 128 ifTrue: [
            (recoveredStack1) recordLayout: (recoveredStack2).
            recoveredPC := 130.
        ].
        recoveredStep = 130 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 131.
        ].
        recoveredStep = 131 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 134.
        ].
        recoveredStep = 134 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 137.
        ].
        recoveredStep = 137 ifTrue: [
            recoveredStack2 := 1.
            recoveredPC := 139.
        ].
        recoveredStep = 139 ifTrue: [
            (recoveredStack1) bitMask: (recoveredStack2).
            recoveredPC := 141.
        ].
        recoveredStep = 141 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 144.
        ].
        recoveredStep = 144 ifTrue: [
            recoveredStack1 := (recoveredStack1) reference.
            recoveredPC := 146.
        ].
        recoveredStep = 146 ifTrue: [
            recoveredStack1 := (recoveredStack1) sgClassKey.
            recoveredPC := 148.
        ].
        recoveredStep = 148 ifTrue: [
            recoveredStack1 := (recoveredStack1) needsAsap2Dimension.
            recoveredPC := 150.
        ].
        recoveredStep = 150 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 154] ifFalse: [recoveredPC := 220].
        ].
        recoveredStep = 154 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 157.
        ].
        recoveredStep = 157 ifTrue: [
            recoveredStack1 := (recoveredStack1) dimensions.
            recoveredPC := 159.
        ].
        recoveredStep = 159 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 160.
        ].
        recoveredStep = 160 ifTrue: [
            recoveredLocal2 := recoveredStack2.
            recoveredPC := 163.
        ].
        recoveredStep = 163 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 216] ifFalse: [recoveredPC := 166].
        ].
        recoveredStep = 166 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 169.
        ].
        recoveredStep = 169 ifTrue: [
            recoveredStack2 := 1.
            recoveredPC := 171.
        ].
        recoveredStep = 171 ifTrue: [
            recoveredStack3 := [
    0
].
            recoveredPC := 173.
        ].
        recoveredStep = 173 ifTrue: [
            recoveredPC := 179.
        ].
        recoveredStep = 179 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2) ifAbsent: (recoveredStack3).
            recoveredPC := 181.
        ].
        recoveredStep = 181 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 184.
        ].
        recoveredStep = 184 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 187.
        ].
        recoveredStep = 187 ifTrue: [
            recoveredStack1 := (recoveredStack1) isCalibrationNode.
            recoveredPC := 189.
        ].
        recoveredStep = 189 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 192] ifFalse: [recoveredPC := 204].
        ].
        recoveredStep = 192 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 195.
        ].
        recoveredStep = 195 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 198.
        ].
        recoveredStep = 198 ifTrue: [
            (recoveredStack1) number: (recoveredStack2).
            recoveredPC := 200.
        ].
        recoveredStep = 200 ifTrue: [
            recoveredPC := 212.
        ].
        recoveredStep = 204 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 207.
        ].
        recoveredStep = 207 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 210.
        ].
        recoveredStep = 210 ifTrue: [
            (recoveredStack1) arraySize: (recoveredStack2).
            recoveredPC := 212.
        ].
        recoveredStep = 212 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 213.
        ].
        recoveredStep = 213 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 216.
        ].
        recoveredStep = 216 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 217.
        ].
        recoveredStep = 217 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 220.
        ].
        recoveredStep = 220 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 223.
        ].
        recoveredStep = 223 ifTrue: [
            recoveredStack1 := (recoveredStack1) isPathObjectBasedController.
            recoveredPC := 225.
        ].
        recoveredStep = 225 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 228] ifFalse: [recoveredPC := 237].
        ].
        recoveredStep = 228 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 229.
        ].
        recoveredStep = 229 ifTrue: [
            recoveredStack2 := recoveredArg3.
            recoveredPC := 232.
        ].
        recoveredStep = 232 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 235.
        ].
        recoveredStep = 235 ifTrue: [
            (recoveredStack1) updateMaxSizeInformationFromMapFileFor: (recoveredStack2) in: (recoveredStack3).
            recoveredPC := 237.
        ].
        recoveredStep = 237 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 240.
        ].
        recoveredStep = 240 ifTrue: [
            recoveredStack1 := (recoveredStack1) isPathPhysicalExperiment.
            recoveredPC := 242.
        ].
        recoveredStep = 242 ifTrue: [
            recoveredStack2 := recoveredArg3.
            recoveredPC := 245.
        ].
        recoveredStep = 245 ifTrue: [
            recoveredStack2 := (recoveredStack2) isPathQuantizedExperiment.
            recoveredPC := 247.
        ].
        recoveredStep = 247 ifTrue: [
            recoveredStack1 := (recoveredStack1) | (recoveredStack2).
            recoveredPC := 249.
        ].
        recoveredStep = 249 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 310] ifFalse: [recoveredPC := 252].
        ].
        recoveredStep = 252 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 255.
        ].
        recoveredStep = 255 ifTrue: [
            recoveredStack1 := (recoveredStack1) isExperimentalTarget.
            recoveredPC := 257.
        ].
        recoveredStep = 257 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 310] ifFalse: [recoveredPC := 260].
        ].
        recoveredStep = 260 ifTrue: [
            recoveredStack1 := 'Kk'.
            recoveredPC := 262.
        ].
        recoveredStep = 262 ifTrue: [
            recoveredStack2 := 'Call_66088'.
            recoveredPC := 264.
        ].
        recoveredStep = 264 ifTrue: [
            recoveredStack1 := (recoveredStack1) == (recoveredStack2).
            recoveredPC := 265.
        ].
        recoveredStep = 265 ifTrue: [
            recoveredPC := 266.
        ].
        recoveredStep = 266 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 269.
        ].
        recoveredStep = 269 ifTrue: [
            recoveredStack1 := (recoveredStack1) isMeasureNode.
            recoveredPC := 271.
        ].
        recoveredStep = 271 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 274] ifFalse: [recoveredPC := 310].
        ].
        recoveredStep = 274 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 277.
        ].
        recoveredStep = 277 ifTrue: [
            recoveredStack1 := (recoveredStack1) type.
            recoveredPC := 279.
        ].
        recoveredStep = 279 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 310] ifFalse: [recoveredPC := 282].
        ].
        recoveredStep = 282 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 283.
        ].
        recoveredStep = 283 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 286.
        ].
        recoveredStep = 286 ifTrue: [
            recoveredStack2 := (recoveredStack2) type.
            recoveredPC := 288.
        ].
        recoveredStep = 288 ifTrue: [
            recoveredStack1 := (recoveredStack1) asap2TypeForMapFileType: (recoveredStack2).
            recoveredPC := 290.
        ].
        recoveredStep = 290 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 291.
        ].
        recoveredStep = 291 ifTrue: [
            recoveredLocal2 := recoveredStack2.
            recoveredPC := 294.
        ].
        recoveredStep = 294 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 306] ifFalse: [recoveredPC := 298].
        ].
        recoveredStep = 298 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 301.
        ].
        recoveredStep = 301 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 304.
        ].
        recoveredStep = 304 ifTrue: [
            (recoveredStack1) dataType: (recoveredStack2).
            recoveredPC := 306.
        ].
        recoveredStep = 306 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 307.
        ].
        recoveredStep = 307 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 310.
        ].
        recoveredStep = 310 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 311.
        ].
        recoveredStep = 311 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 314.
        ].
        recoveredStep = 314 ifTrue: [
            recoveredPC := 456.
        ].
        recoveredStep = 318 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 321.
        ].
        recoveredStep = 321 ifTrue: [
            recoveredStack1 := (recoveredStack1) reference.
            recoveredPC := 323.
        ].
        recoveredStep = 323 ifTrue: [
            recoveredStack1 := (recoveredStack1) isPrimitive.
            recoveredPC := 325.
        ].
        recoveredStep = 325 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 328] ifFalse: [recoveredPC := 456].
        ].
        recoveredStep = 328 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 331.
        ].
        recoveredStep = 331 ifTrue: [
            recoveredStack1 := (recoveredStack1) reference.
            recoveredPC := 333.
        ].
        recoveredStep = 333 ifTrue: [
            recoveredStack1 := (recoveredStack1) sgClass.
            recoveredPC := 335.
        ].
        recoveredStep = 335 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 336.
        ].
        recoveredStep = 336 ifTrue: [
            recoveredLocal3 := recoveredStack2.
            recoveredPC := 339.
        ].
        recoveredStep = 339 ifTrue: [
            recoveredStack1 := (recoveredStack1) hasBasicType.
            recoveredPC := 341.
        ].
        recoveredStep = 341 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 344] ifFalse: [recoveredPC := 352].
        ].
        recoveredStep = 344 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 347.
        ].
        recoveredStep = 347 ifTrue: [
            recoveredStack1 := (recoveredStack1) basicType.
            recoveredPC := 349.
        ].
        recoveredStep = 349 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 352.
        ].
        recoveredStep = 352 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 355.
        ].
        recoveredStep = 355 ifTrue: [
            recoveredStack1 := (recoveredStack1) isSGBoolean.
            recoveredPC := 357.
        ].
        recoveredStep = 357 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 360] ifFalse: [recoveredPC := 367].
        ].
        recoveredStep = 360 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 363.
        ].
        recoveredStep = 363 ifTrue: [
            recoveredStack2 := 1.
            recoveredPC := 365.
        ].
        recoveredStep = 365 ifTrue: [
            (recoveredStack1) bitMask: (recoveredStack2).
            recoveredPC := 367.
        ].
        recoveredStep = 367 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 370.
        ].
        recoveredStep = 370 ifTrue: [
            recoveredStack1 := (recoveredStack1) reference.
            recoveredPC := 372.
        ].
        recoveredStep = 372 ifTrue: [
            recoveredStack1 := (recoveredStack1) sgClass.
            recoveredPC := 374.
        ].
        recoveredStep = 374 ifTrue: [
            recoveredStack1 := (recoveredStack1) needsAsap2Dimension.
            recoveredPC := 376.
        ].
        recoveredStep = 376 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 380] ifFalse: [recoveredPC := 452].
        ].
        recoveredStep = 380 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 383.
        ].
        recoveredStep = 383 ifTrue: [
            recoveredStack1 := (recoveredStack1) isPathObjectBasedController.
            recoveredPC := 385.
        ].
        recoveredStep = 385 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 388] ifFalse: [recoveredPC := 400].
        ].
        recoveredStep = 388 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 389.
        ].
        recoveredStep = 389 ifTrue: [
            recoveredStack2 := recoveredArg3.
            recoveredPC := 392.
        ].
        recoveredStep = 392 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 395.
        ].
        recoveredStep = 395 ifTrue: [
            (recoveredStack1) updateMaxSizeInformationFor: (recoveredStack2) in: (recoveredStack3).
            recoveredPC := 397.
        ].
        recoveredStep = 397 ifTrue: [
            recoveredPC := 452.
        ].
        recoveredStep = 400 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 403.
        ].
        recoveredStep = 403 ifTrue: [
            recoveredStack1 := (recoveredStack1) reference.
            recoveredPC := 405.
        ].
        recoveredStep = 405 ifTrue: [
            recoveredStack1 := (recoveredStack1) sgClass.
            recoveredPC := 407.
        ].
        recoveredStep = 407 ifTrue: [
            recoveredStack1 := (recoveredStack1) asap2Dimension.
            recoveredPC := 409.
        ].
        recoveredStep = 409 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 412.
        ].
        recoveredStep = 412 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 415.
        ].
        recoveredStep = 415 ifTrue: [
            recoveredStack1 := (recoveredStack1) isCalibrationNode.
            recoveredPC := 417.
        ].
        recoveredStep = 417 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 420] ifFalse: [recoveredPC := 432].
        ].
        recoveredStep = 420 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 423.
        ].
        recoveredStep = 423 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 426.
        ].
        recoveredStep = 426 ifTrue: [
            (recoveredStack1) number: (recoveredStack2).
            recoveredPC := 428.
        ].
        recoveredStep = 428 ifTrue: [
            recoveredPC := 448.
        ].
        recoveredStep = 432 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 435.
        ].
        recoveredStep = 435 ifTrue: [
            recoveredStack1 := (recoveredStack1) isMeasureNode.
            recoveredPC := 437.
        ].
        recoveredStep = 437 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 440] ifFalse: [recoveredPC := 448].
        ].
        recoveredStep = 440 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 443.
        ].
        recoveredStep = 443 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 446.
        ].
        recoveredStep = 446 ifTrue: [
            (recoveredStack1) arraySize: (recoveredStack2).
            recoveredPC := 448.
        ].
        recoveredStep = 448 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 449.
        ].
        recoveredStep = 449 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 452.
        ].
        recoveredStep = 452 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 453.
        ].
        recoveredStep = 453 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 456.
        ].
        recoveredStep = 456 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 459.
        ].
        recoveredStep = 459 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x206461e0; bytecode file offset 0xf42bf8"
!EtasASAP2TransferManager methodsFor: 'recovered'!
createASAP2Project
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredLocal6 recoveredLocal7 recoveredLocal8 recoveredLocal9 recoveredLocal10 recoveredLocal11 recoveredLocal12 recoveredLocal13 recoveredLocal14 recoveredLocal15 recoveredLocal16 recoveredLocal17 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredStack7 recoveredStack8 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := ASAP2ProjectHeader.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) create.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack3 := (recoveredStack3) asdProject.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack3 := (recoveredStack3) label.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack2) name: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack3 := (recoveredStack3) asdProject.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack3 := (recoveredStack3) comment.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            (recoveredStack2) longName: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack3 := '000'.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            (recoveredStack2) version: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack3 := 'ASD'.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            (recoveredStack2) projectNo: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack3 := ASAP2Version.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack3 := (recoveredStack3) create.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack4 := recoveredStack3.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack5 := 51.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            (recoveredStack4) minor: (recoveredStack5).
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            (recoveredStack2) asapVersion: (recoveredStack3).
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredLocal17 := recoveredStack1.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack1 := ASAP2ModuleCommon.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack2 := (recoveredStack2) asdProject.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack2 := (recoveredStack2) label.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack3 := 'Common definitions'.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack4 := nil.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack5 := nil.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack6 := self.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack6 := (recoveredStack6) asap2ByteOrder.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack7 := nil.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack1 := (recoveredStack1) create: (recoveredStack2) longName: (recoveredStack3) sRecLayout: (recoveredStack4) deposit: (recoveredStack5) byteOrder: (recoveredStack6) dataSize: (recoveredStack7).
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredLocal14 := recoveredStack1.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack1 := ASAP2ModuleParameter.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack1 := (recoveredStack1) create.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack3 := (recoveredStack3) asdProject.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack3 := (recoveredStack3) label.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            (recoveredStack2) name: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack3 := (recoveredStack3) asdProject.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack3 := (recoveredStack3) comment.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            (recoveredStack2) longName: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack3 := (recoveredStack3) asap2ProjectVersion.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            (recoveredStack2) version: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack3 := 'xxx'.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            (recoveredStack2) supplier: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredStack3 := 'xxx'.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            (recoveredStack2) customer: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack3 := 'xxx'.
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            (recoveredStack2) customerNo: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            recoveredStack3 := MainController.
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            recoveredStack3 := (recoveredStack3) userName.
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            (recoveredStack2) user: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            recoveredStack3 := 'xxx'.
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            (recoveredStack2) phoneNo: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            recoveredStack3 := 'NO_ECU'.
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            (recoveredStack2) ecu: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 118.
        ].
        recoveredStep = 118 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 119.
        ].
        recoveredStep = 119 ifTrue: [
            recoveredStack3 := (recoveredStack3) asdProject.
            recoveredPC := 120.
        ].
        recoveredStep = 120 ifTrue: [
            recoveredStack3 := (recoveredStack3) targetOptions.
            recoveredPC := 122.
        ].
        recoveredStep = 122 ifTrue: [
            recoveredStack3 := (recoveredStack3) cpuType.
            recoveredPC := 124.
        ].
        recoveredStep = 124 ifTrue: [
            (recoveredStack2) cpuType: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 127.
        ].
        recoveredStep = 127 ifTrue: [
            recoveredStack3 := 1.
            recoveredPC := 129.
        ].
        recoveredStep = 129 ifTrue: [
            (recoveredStack2) noOfInterface: (recoveredStack3).
            recoveredPC := 131.
        ].
        recoveredStep = 131 ifTrue: [
            recoveredLocal15 := recoveredStack1.
            recoveredPC := 134.
        ].
        recoveredStep = 134 ifTrue: [
            recoveredStack1 := 'Kk'.
            recoveredPC := 136.
        ].
        recoveredStep = 136 ifTrue: [
            recoveredStack2 := 'Call_87755'.
            recoveredPC := 138.
        ].
        recoveredStep = 138 ifTrue: [
            recoveredStack1 := (recoveredStack1) == (recoveredStack2).
            recoveredPC := 139.
        ].
        recoveredStep = 139 ifTrue: [
            recoveredPC := 140.
        ].
        recoveredStep = 140 ifTrue: [
            recoveredStack1 := ASAP2Module.
            recoveredPC := 142.
        ].
        recoveredStep = 142 ifTrue: [
            recoveredStack1 := (recoveredStack1) create.
            recoveredPC := 143.
        ].
        recoveredStep = 143 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 144.
        ].
        recoveredStep = 144 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 145.
        ].
        recoveredStep = 145 ifTrue: [
            recoveredStack3 := (recoveredStack3) asdProject.
            recoveredPC := 146.
        ].
        recoveredStep = 146 ifTrue: [
            recoveredStack3 := (recoveredStack3) label.
            recoveredPC := 147.
        ].
        recoveredStep = 147 ifTrue: [
            (recoveredStack2) name: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 150.
        ].
        recoveredStep = 150 ifTrue: [
            recoveredStack3 := 'Generated by ETAS from Project '.
            recoveredPC := 152.
        ].
        recoveredStep = 152 ifTrue: [
            recoveredStack4 := self.
            recoveredPC := 153.
        ].
        recoveredStep = 153 ifTrue: [
            recoveredStack4 := (recoveredStack4) asdProject.
            recoveredPC := 154.
        ].
        recoveredStep = 154 ifTrue: [
            recoveredStack4 := (recoveredStack4) label.
            recoveredPC := 155.
        ].
        recoveredStep = 155 ifTrue: [
            recoveredStack3 := (recoveredStack3) , (recoveredStack4).
            recoveredPC := 157.
        ].
        recoveredStep = 157 ifTrue: [
            (recoveredStack2) longName: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 160.
        ].
        recoveredStep = 160 ifTrue: [
            recoveredStack3 := recoveredLocal15.
            recoveredPC := 163.
        ].
        recoveredStep = 163 ifTrue: [
            (recoveredStack2) modPar: (recoveredStack3).
            recoveredPC := 165.
        ].
        recoveredStep = 165 ifTrue: [
            recoveredStack2 := recoveredLocal14.
            recoveredPC := 168.
        ].
        recoveredStep = 168 ifTrue: [
            recoveredStack1 := (recoveredStack1) modCommon: (recoveredStack2).
            recoveredPC := 170.
        ].
        recoveredStep = 170 ifTrue: [
            recoveredLocal16 := recoveredStack1.
            recoveredPC := 173.
        ].
        recoveredStep = 173 ifTrue: [
            recoveredStack1 := recoveredLocal16.
            recoveredPC := 176.
        ].
        recoveredStep = 176 ifTrue: [
            recoveredStack1 := (recoveredStack1) ifData.
            recoveredPC := 178.
        ].
        recoveredStep = 178 ifTrue: [
            recoveredLocal13 := recoveredStack1.
            recoveredPC := 181.
        ].
        recoveredStep = 181 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 182.
        ].
        recoveredStep = 182 ifTrue: [
            recoveredStack1 := (recoveredStack1) alignmentFileName.
            recoveredPC := 184.
        ].
        recoveredStep = 184 ifTrue: [
            recoveredStack2 := recoveredLocal16.
            recoveredPC := 187.
        ].
        recoveredStep = 187 ifTrue: [
            recoveredStack0 := (recoveredStack0) readAlignmentsFromFile: (recoveredStack1) into: (recoveredStack2).
            recoveredPC := 189.
        ].
        recoveredStep = 189 ifTrue: [
            recoveredStack0 := (recoveredStack0) isCfsError.
            recoveredPC := 191.
        ].
        recoveredStep = 191 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 194] ifFalse: [recoveredPC := 208].
        ].
        recoveredStep = 194 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 195.
        ].
        recoveredStep = 195 ifTrue: [
            recoveredStack1 := 'NOTE: Could not read alignments from: '.
            recoveredPC := 197.
        ].
        recoveredStep = 197 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 198.
        ].
        recoveredStep = 198 ifTrue: [
            recoveredStack2 := (recoveredStack2) alignmentFileName.
            recoveredPC := 200.
        ].
        recoveredStep = 200 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 202.
        ].
        recoveredStep = 202 ifTrue: [
            recoveredStack2 := ' Using default settings.'.
            recoveredPC := 204.
        ].
        recoveredStep = 204 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 206.
        ].
        recoveredStep = 206 ifTrue: [
            (recoveredStack0) log: (recoveredStack1).
            recoveredPC := 208.
        ].
        recoveredStep = 208 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 209.
        ].
        recoveredStep = 209 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 210.
        ].
        recoveredStep = 210 ifTrue: [
            recoveredStack1 := (recoveredStack1) projectDefinitionFileName.
            recoveredPC := 212.
        ].
        recoveredStep = 212 ifTrue: [
            recoveredStack2 := recoveredLocal15.
            recoveredPC := 215.
        ].
        recoveredStep = 215 ifTrue: [
            recoveredStack0 := (recoveredStack0) readA2lInfoFromFile: (recoveredStack1) into: (recoveredStack2).
            recoveredPC := 217.
        ].
        recoveredStep = 217 ifTrue: [
            recoveredStack0 := (recoveredStack0) isCfsError.
            recoveredPC := 219.
        ].
        recoveredStep = 219 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 222] ifFalse: [recoveredPC := 232].
        ].
        recoveredStep = 222 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 223.
        ].
        recoveredStep = 223 ifTrue: [
            recoveredStack1 := 'NOTE: Could not read project definition from: '.
            recoveredPC := 225.
        ].
        recoveredStep = 225 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 226.
        ].
        recoveredStep = 226 ifTrue: [
            recoveredStack2 := (recoveredStack2) projectDefinitionFileName.
            recoveredPC := 228.
        ].
        recoveredStep = 228 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 230.
        ].
        recoveredStep = 230 ifTrue: [
            (recoveredStack0) log: (recoveredStack1).
            recoveredPC := 232.
        ].
        recoveredStep = 232 ifTrue: [
            recoveredStack0 := LookupTable.
            recoveredPC := 234.
        ].
        recoveredStep = 234 ifTrue: [
            recoveredStack0 := (recoveredStack0) new.
            recoveredPC := 236.
        ].
        recoveredStep = 236 ifTrue: [
            recoveredLocal11 := recoveredStack0.
            recoveredPC := 239.
        ].
        recoveredStep = 239 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 240.
        ].
        recoveredStep = 240 ifTrue: [
            recoveredStack0 := (recoveredStack0) asdProject.
            recoveredPC := 241.
        ].
        recoveredStep = 241 ifTrue: [
            recoveredStack0 := (recoveredStack0) getOrCreateClassDataConfig.
            recoveredPC := 243.
        ].
        recoveredStep = 243 ifTrue: [
            recoveredLocal10 := recoveredStack0.
            recoveredPC := 246.
        ].
        recoveredStep = 246 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 247.
        ].
        recoveredStep = 247 ifTrue: [
            recoveredStack0 := (recoveredStack0) asdProject.
            recoveredPC := 248.
        ].
        recoveredStep = 248 ifTrue: [
            recoveredStack0 := (recoveredStack0) exportedVariables.
            recoveredPC := 250.
        ].
        recoveredStep = 250 ifTrue: [
            recoveredStack1 := [:recoveredBlock250Arg1 | 
    | recoveredBlock250Local1 recoveredBlock250Local2 recoveredBlock250Stack0 recoveredBlock250Stack1 recoveredBlock250Stack2 recoveredBlock250Stack3 recoveredBlock250Stack4 recoveredBlock250PC recoveredBlock250Step recoveredBlock250Done recoveredBlock250Result |
    recoveredBlock250Stack0 := self.
    recoveredBlock250PC := 256.
    recoveredBlock250Done := false.
    [recoveredBlock250Done not] whileTrue: [
        recoveredBlock250Step := recoveredBlock250PC.
        recoveredBlock250Step = 256 ifTrue: [
            recoveredBlock250Stack1 := nil.
            recoveredBlock250PC := 257.
        ].
        recoveredBlock250Step = 257 ifTrue: [
            recoveredBlock250Stack2 := recoveredBlock250Arg1.
            recoveredBlock250PC := 258.
        ].
        recoveredBlock250Step = 258 ifTrue: [
            recoveredBlock250Stack2 := (recoveredBlock250Stack2) isPrimitive.
            recoveredBlock250PC := 260.
        ].
        recoveredBlock250Step = 260 ifTrue: [
            (recoveredBlock250Stack2) ifTrue: [recoveredBlock250PC := 264] ifFalse: [recoveredBlock250PC := 319].
        ].
        recoveredBlock250Step = 264 ifTrue: [
            recoveredBlock250Stack2 := recoveredBlock250Arg1.
            recoveredBlock250PC := 265.
        ].
        recoveredBlock250Step = 265 ifTrue: [
            recoveredBlock250Stack2 := (recoveredBlock250Stack2) isConstantOrSystemConstant.
            recoveredBlock250PC := 267.
        ].
        recoveredBlock250Step = 267 ifTrue: [
            (recoveredBlock250Stack2) ifTrue: [recoveredBlock250PC := 270] ifFalse: [recoveredBlock250PC := 319].
        ].
        recoveredBlock250Step = 270 ifTrue: [
            recoveredBlock250PC := 271.
        ].
        recoveredBlock250Step = 271 ifTrue: [
            recoveredBlock250Stack1 := recoveredLocal10.
            recoveredBlock250PC := 274.
        ].
        recoveredBlock250Step = 274 ifTrue: [
            recoveredBlock250Stack2 := recoveredBlock250Arg1.
            recoveredBlock250PC := 275.
        ].
        recoveredBlock250Step = 275 ifTrue: [
            recoveredBlock250Stack1 := (recoveredBlock250Stack1) configForElement: (recoveredBlock250Stack2).
            recoveredBlock250PC := 279.
        ].
        recoveredBlock250Step = 279 ifTrue: [
            recoveredBlock250Stack2 := recoveredBlock250Stack1.
            recoveredBlock250PC := 280.
        ].
        recoveredBlock250Step = 280 ifTrue: [
            recoveredBlock250Local2 := recoveredBlock250Stack2.
            recoveredBlock250PC := 281.
        ].
        recoveredBlock250Step = 281 ifTrue: [
            (recoveredBlock250Stack1 ~~ nil) ifTrue: [recoveredBlock250PC := 290] ifFalse: [recoveredBlock250PC := 284].
        ].
        recoveredBlock250Step = 284 ifTrue: [
            recoveredBlock250Stack1 := 0.
            recoveredBlock250PC := 286.
        ].
        recoveredBlock250Step = 286 ifTrue: [
            recoveredBlock250Local1 := recoveredBlock250Stack1.
            recoveredBlock250PC := 287.
        ].
        recoveredBlock250Step = 287 ifTrue: [
            recoveredBlock250PC := 292.
        ].
        recoveredBlock250Step = 290 ifTrue: [
            recoveredBlock250Stack1 := recoveredBlock250Local2.
            recoveredBlock250PC := 291.
        ].
        recoveredBlock250Step = 291 ifTrue: [
            recoveredBlock250Local1 := recoveredBlock250Stack1.
            recoveredBlock250PC := 292.
        ].
        recoveredBlock250Step = 292 ifTrue: [
            recoveredBlock250Stack1 := recoveredLocal11.
            recoveredBlock250PC := 295.
        ].
        recoveredBlock250Step = 295 ifTrue: [
            recoveredBlock250Stack2 := recoveredBlock250Arg1.
            recoveredBlock250PC := 296.
        ].
        recoveredBlock250Step = 296 ifTrue: [
            recoveredBlock250Stack2 := (recoveredBlock250Stack2) label.
            recoveredBlock250PC := 297.
        ].
        recoveredBlock250Step = 297 ifTrue: [
            recoveredBlock250Stack2 := (recoveredBlock250Stack2) withQuotesAndPoint.
            recoveredBlock250PC := 301.
        ].
        recoveredBlock250Step = 301 ifTrue: [
            recoveredBlock250Stack3 := recoveredBlock250Local1.
            recoveredBlock250PC := 302.
        ].
        recoveredBlock250Step = 302 ifTrue: [
            recoveredBlock250Stack3 := (recoveredBlock250Stack3) printString.
            recoveredBlock250PC := 307.
        ].
        recoveredBlock250Step = 307 ifTrue: [
            recoveredBlock250Stack3 := (recoveredBlock250Stack3) withQuotesAndPoint.
            recoveredBlock250PC := 311.
        ].
        recoveredBlock250Step = 311 ifTrue: [
            recoveredBlock250Stack1 := (recoveredBlock250Stack1) at: (recoveredBlock250Stack2) put: (recoveredBlock250Stack3).
            recoveredBlock250PC := 315.
        ].
        recoveredBlock250Step = 315 ifTrue: [
            recoveredBlock250Stack2 := nil.
            recoveredBlock250PC := 316.
        ].
        recoveredBlock250Step = 316 ifTrue: [
            recoveredBlock250Stack3 := recoveredBlock250Stack2.
            recoveredBlock250PC := 317.
        ].
        recoveredBlock250Step = 317 ifTrue: [
            recoveredBlock250Local2 := recoveredBlock250Stack3.
            recoveredBlock250PC := 318.
        ].
        recoveredBlock250Step = 318 ifTrue: [
            recoveredBlock250Local1 := recoveredBlock250Stack2.
            recoveredBlock250PC := 319.
        ].
        recoveredBlock250Step = 319 ifTrue: [
            recoveredBlock250Result := recoveredBlock250Stack1.
            recoveredBlock250Done := true.
        ].
    ].
    recoveredBlock250Result
].
            recoveredPC := 320.
        ].
        recoveredStep = 320 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 325.
        ].
        recoveredStep = 325 ifTrue: [
            recoveredStack0 := recoveredLocal15.
            recoveredPC := 328.
        ].
        recoveredStep = 328 ifTrue: [
            recoveredStack1 := recoveredLocal11.
            recoveredPC := 331.
        ].
        recoveredStep = 331 ifTrue: [
            (recoveredStack0) systemConstant: (recoveredStack1).
            recoveredPC := 335.
        ].
        recoveredStep = 335 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 336.
        ].
        recoveredStep = 336 ifTrue: [
            recoveredStack0 := (recoveredStack0) asdProject.
            recoveredPC := 337.
        ].
        recoveredStep = 337 ifTrue: [
            recoveredStack0 := (recoveredStack0) target.
            recoveredPC := 341.
        ].
        recoveredStep = 341 ifTrue: [
            recoveredStack0 := (recoveredStack0) isExperimentalTarget.
            recoveredPC := 345.
        ].
        recoveredStep = 345 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 348] ifFalse: [recoveredPC := 358].
        ].
        recoveredStep = 348 ifTrue: [
            recoveredStack0 := 'E_TARGET'.
            recoveredPC := 352.
        ].
        recoveredStep = 352 ifTrue: [
            recoveredLocal6 := recoveredStack0.
            recoveredPC := 355.
        ].
        recoveredStep = 355 ifTrue: [
            recoveredPC := 633.
        ].
        recoveredStep = 358 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 359.
        ].
        recoveredStep = 359 ifTrue: [
            recoveredStack0 := (recoveredStack0) readMapFile.
            recoveredPC := 363.
        ].
        recoveredStep = 363 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 366] ifFalse: [recoveredPC := 633].
        ].
        recoveredStep = 366 ifTrue: [
            recoveredStack0 := 'ASAP1B_ETK'.
            recoveredPC := 370.
        ].
        recoveredStep = 370 ifTrue: [
            recoveredLocal6 := recoveredStack0.
            recoveredPC := 373.
        ].
        recoveredStep = 373 ifTrue: [
            recoveredStack0 := 'Kk'.
            recoveredPC := 375.
        ].
        recoveredStep = 375 ifTrue: [
            recoveredStack1 := 'Call_66606'.
            recoveredPC := 378.
        ].
        recoveredStep = 378 ifTrue: [
            recoveredStack0 := (recoveredStack0) == (recoveredStack1).
            recoveredPC := 379.
        ].
        recoveredStep = 379 ifTrue: [
            recoveredPC := 380.
        ].
        recoveredStep = 380 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 381.
        ].
        recoveredStep = 381 ifTrue: [
            recoveredStack0 := (recoveredStack0) codeManager.
            recoveredPC := 385.
        ].
        recoveredStep = 385 ifTrue: [
            recoveredStack0 := (recoveredStack0) getMapFile.
            recoveredPC := 389.
        ].
        recoveredStep = 389 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 390.
        ].
        recoveredStep = 390 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 393.
        ].
        recoveredStep = 393 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 406] ifFalse: [recoveredPC := 396].
        ].
        recoveredStep = 396 ifTrue: [
            recoveredStack0 := recoveredLocal5.
            recoveredPC := 399.
        ].
        recoveredStep = 399 ifTrue: [
            recoveredStack0 := (recoveredStack0) isString.
            recoveredPC := 403.
        ].
        recoveredStep = 403 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 406] ifFalse: [recoveredPC := 416].
        ].
        recoveredStep = 406 ifTrue: [
            recoveredStack0 := #().
            recoveredPC := 410.
        ].
        recoveredStep = 410 ifTrue: [
            recoveredLocal5 := recoveredStack0.
            recoveredPC := 413.
        ].
        recoveredStep = 413 ifTrue: [
            recoveredPC := 426.
        ].
        recoveredStep = 416 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 419.
        ].
        recoveredStep = 419 ifTrue: [
            recoveredStack0 := (recoveredStack0) variableSymbols.
            recoveredPC := 423.
        ].
        recoveredStep = 423 ifTrue: [
            recoveredLocal5 := recoveredStack0.
            recoveredPC := 426.
        ].
        recoveredStep = 426 ifTrue: [
            recoveredStack0 := Array.
            recoveredPC := 430.
        ].
        recoveredStep = 430 ifTrue: [
            recoveredStack1 := 2.
            recoveredPC := 432.
        ].
        recoveredStep = 432 ifTrue: [
            recoveredStack0 := (recoveredStack0) new: (recoveredStack1).
            recoveredPC := 437.
        ].
        recoveredStep = 437 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 440.
        ].
        recoveredStep = 440 ifTrue: [
            recoveredStack0 := LookupTable.
            recoveredPC := 442.
        ].
        recoveredStep = 442 ifTrue: [
            recoveredStack0 := (recoveredStack0) new.
            recoveredPC := 444.
        ].
        recoveredStep = 444 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 447.
        ].
        recoveredStep = 447 ifTrue: [
            recoveredStack0 := LookupTable.
            recoveredPC := 449.
        ].
        recoveredStep = 449 ifTrue: [
            recoveredStack0 := (recoveredStack0) new.
            recoveredPC := 451.
        ].
        recoveredStep = 451 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 454.
        ].
        recoveredStep = 454 ifTrue: [
            recoveredStack0 := recoveredLocal5.
            recoveredPC := 457.
        ].
        recoveredStep = 457 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 613] ifFalse: [recoveredPC := 460].
        ].
        recoveredStep = 460 ifTrue: [
            recoveredStack0 := recoveredLocal5.
            recoveredPC := 463.
        ].
        recoveredStep = 463 ifTrue: [
            recoveredStack1 := [:recoveredBlock463Arg1 | 
    | recoveredBlock463Value0 recoveredBlock463Value1 recoveredBlock463Value2 recoveredBlock463Value3 recoveredBlock463Value4 recoveredBlock463Value5 recoveredBlock463Value6 recoveredBlock463Value7 recoveredBlock463Value8 recoveredBlock463Value9 recoveredBlock463Value10 recoveredBlock463Value11 |
    recoveredBlock463Value0 := recoveredLocal2.
    recoveredBlock463Value1 := recoveredBlock463Arg1.
    recoveredBlock463Value2 := (recoveredBlock463Value1) name.
    recoveredBlock463Value3 := [
    | recoveredBlock463Block481Value0 recoveredBlock463Block481Value1 recoveredBlock463Block481Value2 |
    recoveredBlock463Block481Value0 := OrderedCollection.
    recoveredBlock463Block481Value1 := recoveredBlock463Arg1.
    recoveredBlock463Block481Value2 := (recoveredBlock463Block481Value0) with: (recoveredBlock463Block481Value1).
    recoveredBlock463Block481Value2
].
    recoveredBlock463Value4 := [:recoveredBlock463Block500Arg1 | 
    | recoveredBlock463Block500Value0 recoveredBlock463Block500Value1 recoveredBlock463Block500Value2 |
    recoveredBlock463Block500Value0 := recoveredBlock463Block500Arg1.
    recoveredBlock463Block500Value1 := recoveredBlock463Arg1.
    recoveredBlock463Block500Value2 := (recoveredBlock463Block500Value0) add: (recoveredBlock463Block500Value1).
    recoveredBlock463Block500Value2
].
    (recoveredBlock463Value0) at: (recoveredBlock463Value2) ifAbsentPut: (recoveredBlock463Value3) ifPresent: (recoveredBlock463Value4).
    recoveredBlock463Value5 := recoveredLocal1.
    recoveredBlock463Value6 := recoveredBlock463Arg1.
    recoveredBlock463Value7 := (recoveredBlock463Value6) name.
    recoveredBlock463Value8 := (recoveredBlock463Value7) asUppercase.
    recoveredBlock463Value9 := [
    | recoveredBlock463Block535Value0 recoveredBlock463Block535Value1 recoveredBlock463Block535Value2 |
    recoveredBlock463Block535Value0 := OrderedCollection.
    recoveredBlock463Block535Value1 := recoveredBlock463Arg1.
    recoveredBlock463Block535Value2 := (recoveredBlock463Block535Value0) with: (recoveredBlock463Block535Value1).
    recoveredBlock463Block535Value2
].
    recoveredBlock463Value10 := [:recoveredBlock463Block554Arg1 | 
    | recoveredBlock463Block554Value0 recoveredBlock463Block554Value1 recoveredBlock463Block554Value2 |
    recoveredBlock463Block554Value0 := recoveredBlock463Block554Arg1.
    recoveredBlock463Block554Value1 := recoveredBlock463Arg1.
    recoveredBlock463Block554Value2 := (recoveredBlock463Block554Value0) add: (recoveredBlock463Block554Value1).
    recoveredBlock463Block554Value2
].
    recoveredBlock463Value11 := (recoveredBlock463Value5) at: (recoveredBlock463Value8) ifAbsentPut: (recoveredBlock463Value9) ifPresent: (recoveredBlock463Value10).
    recoveredBlock463Value11
].
            recoveredPC := 576.
        ].
        recoveredStep = 576 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 581.
        ].
        recoveredStep = 581 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 584.
        ].
        recoveredStep = 584 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 585.
        ].
        recoveredStep = 585 ifTrue: [
            recoveredStack2 := 1.
            recoveredPC := 587.
        ].
        recoveredStep = 587 ifTrue: [
            recoveredStack3 := recoveredLocal2.
            recoveredPC := 590.
        ].
        recoveredStep = 590 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 595.
        ].
        recoveredStep = 595 ifTrue: [
            recoveredStack1 := 2.
            recoveredPC := 597.
        ].
        recoveredStep = 597 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 600.
        ].
        recoveredStep = 600 ifTrue: [
            (recoveredStack0) at: (recoveredStack1) put: (recoveredStack2).
            recoveredPC := 605.
        ].
        recoveredStep = 605 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 606.
        ].
        recoveredStep = 606 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 609.
        ].
        recoveredStep = 609 ifTrue: [
            (recoveredStack0) symbols: (recoveredStack1).
            recoveredPC := 613.
        ].
        recoveredStep = 613 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 614.
        ].
        recoveredStep = 614 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 615.
        ].
        recoveredStep = 615 ifTrue: [
            recoveredLocal5 := recoveredStack1.
            recoveredPC := 618.
        ].
        recoveredStep = 618 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 619.
        ].
        recoveredStep = 619 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 622.
        ].
        recoveredStep = 622 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 623.
        ].
        recoveredStep = 623 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 626.
        ].
        recoveredStep = 626 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 627.
        ].
        recoveredStep = 627 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 630.
        ].
        recoveredStep = 630 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 633.
        ].
        recoveredStep = 633 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 634.
        ].
        recoveredStep = 634 ifTrue: [
            recoveredStack1 := recoveredLocal6.
            recoveredPC := 637.
        ].
        recoveredStep = 637 ifTrue: [
            recoveredStack0 := (recoveredStack0) createIfDataForDeviceLabel: (recoveredStack1).
            recoveredPC := 641.
        ].
        recoveredStep = 641 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 642.
        ].
        recoveredStep = 642 ifTrue: [
            recoveredLocal7 := recoveredStack1.
            recoveredPC := 645.
        ].
        recoveredStep = 645 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 667] ifFalse: [recoveredPC := 648].
        ].
        recoveredStep = 648 ifTrue: [
            recoveredStack0 := recoveredLocal13.
            recoveredPC := 651.
        ].
        recoveredStep = 651 ifTrue: [
            recoveredStack1 := recoveredLocal7.
            recoveredPC := 654.
        ].
        recoveredStep = 654 ifTrue: [
            recoveredStack1 := (recoveredStack1) name.
            recoveredPC := 659.
        ].
        recoveredStep = 659 ifTrue: [
            recoveredStack2 := recoveredLocal7.
            recoveredPC := 662.
        ].
        recoveredStep = 662 ifTrue: [
            (recoveredStack0) at: (recoveredStack1) put: (recoveredStack2).
            recoveredPC := 667.
        ].
        recoveredStep = 667 ifTrue: [
            recoveredStack0 := 'Kk'.
            recoveredPC := 669.
        ].
        recoveredStep = 669 ifTrue: [
            recoveredStack1 := 'Call_87755'.
            recoveredPC := 671.
        ].
        recoveredStep = 671 ifTrue: [
            recoveredStack0 := (recoveredStack0) == (recoveredStack1).
            recoveredPC := 672.
        ].
        recoveredStep = 672 ifTrue: [
            recoveredPC := 673.
        ].
        recoveredStep = 673 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 674.
        ].
        recoveredStep = 674 ifTrue: [
            recoveredStack1 := ASAP2Project.
            recoveredPC := 678.
        ].
        recoveredStep = 678 ifTrue: [
            recoveredStack1 := (recoveredStack1) create.
            recoveredPC := 679.
        ].
        recoveredStep = 679 ifTrue: [
            (recoveredStack0) asap2Project: (recoveredStack1).
            recoveredPC := 683.
        ].
        recoveredStep = 683 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 684.
        ].
        recoveredStep = 684 ifTrue: [
            recoveredStack0 := (recoveredStack0) asap2Project.
            recoveredPC := 689.
        ].
        recoveredStep = 689 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 690.
        ].
        recoveredStep = 690 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 691.
        ].
        recoveredStep = 691 ifTrue: [
            recoveredStack2 := (recoveredStack2) asdProject.
            recoveredPC := 692.
        ].
        recoveredStep = 692 ifTrue: [
            recoveredStack2 := (recoveredStack2) label.
            recoveredPC := 693.
        ].
        recoveredStep = 693 ifTrue: [
            (recoveredStack1) name: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 696.
        ].
        recoveredStep = 696 ifTrue: [
            recoveredStack2 := 'Generated by ETAS from Project '.
            recoveredPC := 698.
        ].
        recoveredStep = 698 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 699.
        ].
        recoveredStep = 699 ifTrue: [
            recoveredStack3 := (recoveredStack3) asdProject.
            recoveredPC := 700.
        ].
        recoveredStep = 700 ifTrue: [
            recoveredStack3 := (recoveredStack3) label.
            recoveredPC := 701.
        ].
        recoveredStep = 701 ifTrue: [
            recoveredStack2 := (recoveredStack2) , (recoveredStack3).
            recoveredPC := 703.
        ].
        recoveredStep = 703 ifTrue: [
            (recoveredStack1) longName: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 706.
        ].
        recoveredStep = 706 ifTrue: [
            recoveredStack2 := recoveredLocal17.
            recoveredPC := 709.
        ].
        recoveredStep = 709 ifTrue: [
            (recoveredStack1) header: (recoveredStack2).
            recoveredPC := 713.
        ].
        recoveredStep = 713 ifTrue: [
            recoveredStack1 := OrderedCollection.
            recoveredPC := 716.
        ].
        recoveredStep = 716 ifTrue: [
            recoveredStack2 := recoveredLocal16.
            recoveredPC := 719.
        ].
        recoveredStep = 719 ifTrue: [
            recoveredStack1 := (recoveredStack1) with: (recoveredStack2).
            recoveredPC := 723.
        ].
        recoveredStep = 723 ifTrue: [
            (recoveredStack0) modules: (recoveredStack1).
            recoveredPC := 727.
        ].
        recoveredStep = 727 ifTrue: [
            recoveredStack0 := recoveredLocal16.
            recoveredPC := 730.
        ].
        recoveredStep = 730 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

