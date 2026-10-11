"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20000610; bytecode file offset 0x8ffcfc"
!SGMakeARComponentNode methodsFor: 'recovered'!
dependentARSWComponent
    ^self
! !

"ASDBase.ic method 0x20002178; bytecode file offset 0x8ffcfc"
!SGMakeARComponentNode methodsFor: 'recovered'!
dependentASDModule
    ^self
! !

"ASDBase.ic method 0x20027c58; bytecode file offset 0x92454c"
!SGMakeARComponentNode methodsFor: 'recovered'!
hasSeparateInitCode
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) singleInstance.
    recoveredValue1 := (recoveredValue0) not.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2003eea8; bytecode file offset 0x93bf94"
!SGMakeARComponentNode methodsFor: 'recovered'!
baseFilenameCategory
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := SGCgCCodeSettings.
    recoveredValue1 := (recoveredValue0) filenameSWComponentKey.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20055938; bytecode file offset 0x952a9c"
!SGMakeARComponentNode methodsFor: 'recovered'!
acceptMakeNodeVisitor: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) makeARComponentNode: (self).
    ^recoveredValue1
! !

"ASDBase.ic method 0x200616f4; bytecode file offset 0x95e838"
!SGMakeARComponentNode methodsFor: 'recovered'!
asdApplicationHeaderFileName
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) asdApplicationHeaderFileNameNoExtension.
    recoveredValue1 := (recoveredValue0) , ('.h').
    ^recoveredValue1
! !

"ASDBase.ic method 0x20075544; bytecode file offset 0x9757c8"
!SGMakeARComponentNode methodsFor: 'recovered'!
isARNode
    ^true
! !

"ASDBase.ic method 0x20078034; bytecode file offset 0x9757c8"
!SGMakeARComponentNode methodsFor: 'recovered'!
isARSWComponentNode
    ^true
! !

"ASDBase.ic method 0x200b0050; bytecode file offset 0x9ac94c"
!SGMakeARComponentNode methodsFor: 'recovered'!
makeApplicationHeaderSource
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := SGMakeSource.
    recoveredValue1 := (self) initCodeStorageHandle.
    recoveredValue2 := (recoveredValue0) createApplicationHeader: (self) codeContainer: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x200b2b68; bytecode file offset 0x9af4bc"
!SGMakeARComponentNode methodsFor: 'recovered'!
asdApplicationHeaderDescription
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) module.
    recoveredValue1 := (recoveredValue0) moduleLabel.
    recoveredValue2 := (self) descriptionComponent: (recoveredValue1) category: ('ASCET Application header').
    ^recoveredValue2
! !

"ASDBase.ic method 0x200b4870; bytecode file offset 0x9b1134"
!SGMakeARComponentNode methodsFor: 'recovered'!
exportImportTimeStamp
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) moduleSourceTimeStamp.
    recoveredValue1 := super exportImportTimeStamp.
    recoveredValue2 := (recoveredValue0) max: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x200c723c; bytecode file offset 0x9c3c10"
!SGMakeARComponentNode methodsFor: 'recovered'!
singleInstance: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    singleInstance := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200d20b0; bytecode file offset 0x9ce978"
!SGMakeARComponentNode methodsFor: 'recovered'!
asdApplicationHeaderFileNameNoExtension
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) makeConfig.
    recoveredValue1 := (recoveredValue0) sgClass.
    recoveredValue2 := (recoveredValue1) label.
    recoveredValue3 := ('Asd_') , (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x200f994c; bytecode file offset 0x9f6210"
!SGMakeARComponentNode methodsFor: 'recovered'!
markActiveRecursive
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) graph.
    recoveredValue1 := (recoveredValue0) projectNode.
    (recoveredValue1) markActiveRecursive.
    super markActiveRecursive.
    ^self
! !

"ASDBase.ic method 0x20106c3c; bytecode file offset 0xa034f0"
!SGMakeARComponentNode methodsFor: 'recovered'!
singleInstance
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := singleInstance.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 13] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            singleInstance := recoveredStack1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := singleInstance.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x20117968; bytecode file offset 0xa14234"
!SGMakeARComponentNode methodsFor: 'recovered'!
rteApplicationHeaderFileName
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := (self) makeConfig.
    recoveredValue1 := (recoveredValue0) sgClass.
    recoveredValue2 := (recoveredValue1) label.
    recoveredValue3 := ('Rte_') , (recoveredValue2).
    recoveredValue4 := (recoveredValue3) , ('.h').
    ^recoveredValue4
! !

"ASDBase.ic method 0x2020c490; bytecode file offset 0xb08d5c"
!SGMakeARComponentNode methodsFor: 'recovered'!
setGenerateInterface
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            super setGenerateInterface.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) hardPrerequesites.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := [:block280d9fc8Arg1 | 
    | block280d9fc8Stack0 block280d9fc8Stack1 block280d9fc8Stack2 block280d9fc8Stack3 block280d9fc8PC block280d9fc8Step block280d9fc8Done block280d9fc8Result |
    block280d9fc8Stack0 := self.
    block280d9fc8PC := 4.
    block280d9fc8Done := false.
    [block280d9fc8Done not] whileTrue: [
        block280d9fc8Step := block280d9fc8PC.
        block280d9fc8Step = 4 ifTrue: [
            block280d9fc8Stack1 := nil.
            block280d9fc8PC := 5.
        ].
        block280d9fc8Step = 5 ifTrue: [
            block280d9fc8Stack2 := block280d9fc8Arg1.
            block280d9fc8PC := 6.
        ].
        block280d9fc8Step = 6 ifTrue: [
            block280d9fc8Stack2 := (block280d9fc8Stack2) isARNode.
            block280d9fc8PC := 8.
        ].
        block280d9fc8Step = 8 ifTrue: [
            (block280d9fc8Stack2) ifTrue: [block280d9fc8PC := 12] ifFalse: [block280d9fc8PC := 15].
        ].
        block280d9fc8Step = 12 ifTrue: [
            block280d9fc8PC := 13.
        ].
        block280d9fc8Step = 13 ifTrue: [
            block280d9fc8Stack1 := block280d9fc8Arg1.
            block280d9fc8PC := 14.
        ].
        block280d9fc8Step = 14 ifTrue: [
            block280d9fc8Stack1 := (block280d9fc8Stack1) setGenerateInterface.
            block280d9fc8PC := 15.
        ].
        block280d9fc8Step = 15 ifTrue: [
            block280d9fc8Result := block280d9fc8Stack1.
            block280d9fc8Done := true.
        ].
    ].
    block280d9fc8Result
].
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2025422c; bytecode file offset 0xb50b5c"
!SGMakeARComponentNode methodsFor: 'recovered'!
analyzeController
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) hardDependents.
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
            recoveredBlock5Stack2 := (recoveredBlock5Stack2) isProjectNode.
            recoveredBlock5PC := 15.
        ].
        recoveredBlock5Step = 15 ifTrue: [
            (recoveredBlock5Stack2) ifTrue: [recoveredBlock5PC := 28] ifFalse: [recoveredBlock5PC := 18].
        ].
        recoveredBlock5Step = 18 ifTrue: [
            recoveredBlock5PC := 19.
        ].
        recoveredBlock5Step = 19 ifTrue: [
            recoveredBlock5Stack1 := self.
            recoveredBlock5PC := 20.
        ].
        recoveredBlock5Step = 20 ifTrue: [
            recoveredBlock5Stack2 := SGProject.
            recoveredBlock5PC := 22.
        ].
        recoveredBlock5Step = 22 ifTrue: [
            recoveredBlock5Stack2 := (recoveredBlock5Stack2) defaultItemLabel.
            recoveredBlock5PC := 23.
        ].
        recoveredBlock5Step = 23 ifTrue: [
            recoveredBlock5Stack3 := recoveredBlock5Arg1.
            recoveredBlock5PC := 24.
        ].
        recoveredBlock5Step = 24 ifTrue: [
            recoveredBlock5Stack3 := (recoveredBlock5Stack3) componentSource.
            recoveredBlock5PC := 26.
        ].
        recoveredBlock5Step = 26 ifTrue: [
            recoveredBlock5Stack1 := (recoveredBlock5Stack1) fatalErrorInstanceShouldBeUsedIn: (recoveredBlock5Stack2) source: (recoveredBlock5Stack3).
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
    super analyzeController.
    ^self
! !

