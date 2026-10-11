"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20002ae0; bytecode file offset 0x8ffcfc"
!SGMakeARCSInterfaceNode methodsFor: 'recovered'!
analyzeModuleCodeGeneration
    ^self
! !

"ASDBase.ic method 0x200557e8; bytecode file offset 0x952a9c"
!SGMakeARCSInterfaceNode methodsFor: 'recovered'!
acceptMakeNodeVisitor: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) makeARCSInterfaceNode: (self).
    ^recoveredValue1
! !

"ASDBase.ic method 0x200752b4; bytecode file offset 0x9757c8"
!SGMakeARCSInterfaceNode methodsFor: 'recovered'!
isARNode
    ^true
! !

"ASDBase.ic method 0x200d3a48; bytecode file offset 0x9d0380"
!SGMakeARCSInterfaceNode methodsFor: 'recovered'!
analyze
    (self) analyzeModuleCodeGeneration.
    super analyze.
    ^self
! !

"ASDBase.ic method 0x200ef648; bytecode file offset 0x9ebf0c"
!SGMakeARCSInterfaceNode methodsFor: 'recovered'!
collectBothResolvedAndUnresolvedPrerequesites
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := Array.
    recoveredValue1 := OrderedCollection.
    recoveredValue2 := (recoveredValue1) new.
    recoveredValue3 := OrderedCollection.
    recoveredValue4 := (recoveredValue3) new.
    recoveredValue5 := (recoveredValue0) with: (recoveredValue2) with: (recoveredValue4).
    ^recoveredValue5
! !

"ASDBase.ic method 0x20130148; bytecode file offset 0xa2ca44"
!SGMakeARCSInterfaceNode methodsFor: 'recovered'!
moduleGenerateTimeStamp
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) moduleCodeStorageHandle.
    recoveredValue1 := [
    ^0
].
    recoveredValue2 := (recoveredValue0) ifNil: (recoveredValue1).
    recoveredValue3 := (recoveredValue2) rteTimeStamp.
    ^recoveredValue3
! !

"ASDBase.ic method 0x20254258; bytecode file offset 0xb50b5c"
!SGMakeARCSInterfaceNode methodsFor: 'recovered'!
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
            recoveredBlock5Stack2 := (recoveredBlock5Stack2) isARSWComponentNode.
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
            recoveredBlock5Stack2 := ARAtomicSoftwareComponent.
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

"ASDBase.ic method 0x20346a98; bytecode file offset 0xc433ac"
!SGMakeARCSInterfaceNode methodsFor: 'recovered'!
collectHardPrerequesites
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := super collectHardPrerequesites.
    recoveredLocal1 := recoveredValue0.
    recoveredValue1 := (self) module.
    recoveredValue2 := (recoveredValue1) sgClass.
    recoveredValue3 := [:recoveredBlock14Arg1 | 
    | recoveredBlock14Value0 recoveredBlock14Value1 recoveredBlock14Value2 |
    recoveredBlock14Value0 := recoveredBlock14Arg1.
    recoveredBlock14Value1 := [:recoveredBlock14Block21Arg1 | 
    | recoveredBlock14Block21Stack0 recoveredBlock14Block21Stack1 recoveredBlock14Block21Stack2 recoveredBlock14Block21Stack3 recoveredBlock14Block21Stack4 recoveredBlock14Block21Stack5 recoveredBlock14Block21PC recoveredBlock14Block21Step recoveredBlock14Block21Done recoveredBlock14Block21Result |
    recoveredBlock14Block21Stack0 := self.
    recoveredBlock14Block21PC := 28.
    recoveredBlock14Block21Done := false.
    [recoveredBlock14Block21Done not] whileTrue: [
        recoveredBlock14Block21Step := recoveredBlock14Block21PC.
        recoveredBlock14Block21Step = 28 ifTrue: [
            recoveredBlock14Block21Stack1 := nil.
            recoveredBlock14Block21PC := 29.
        ].
        recoveredBlock14Block21Step = 29 ifTrue: [
            recoveredBlock14Block21Stack2 := recoveredBlock14Block21Arg1.
            recoveredBlock14Block21PC := 30.
        ].
        recoveredBlock14Block21Step = 30 ifTrue: [
            recoveredBlock14Block21Stack2 := (recoveredBlock14Block21Stack2) isUserDefined.
            recoveredBlock14Block21PC := 32.
        ].
        recoveredBlock14Block21Step = 32 ifTrue: [
            (recoveredBlock14Block21Stack2) ifTrue: [recoveredBlock14Block21PC := 36] ifFalse: [recoveredBlock14Block21PC := 53].
        ].
        recoveredBlock14Block21Step = 36 ifTrue: [
            recoveredBlock14Block21PC := 37.
        ].
        recoveredBlock14Block21Step = 37 ifTrue: [
            recoveredBlock14Block21Stack1 := self.
            recoveredBlock14Block21PC := 38.
        ].
        recoveredBlock14Block21Step = 38 ifTrue: [
            recoveredBlock14Block21Stack2 := self.
            recoveredBlock14Block21PC := 39.
        ].
        recoveredBlock14Block21Step = 39 ifTrue: [
            recoveredBlock14Block21Stack2 := (recoveredBlock14Block21Stack2) module.
            recoveredBlock14Block21PC := 40.
        ].
        recoveredBlock14Block21Step = 40 ifTrue: [
            recoveredBlock14Block21Stack3 := recoveredBlock14Block21Arg1.
            recoveredBlock14Block21PC := 41.
        ].
        recoveredBlock14Block21Step = 41 ifTrue: [
            recoveredBlock14Block21Stack4 := self.
            recoveredBlock14Block21PC := 42.
        ].
        recoveredBlock14Block21Step = 42 ifTrue: [
            recoveredBlock14Block21Stack4 := (recoveredBlock14Block21Stack4) exceptionBlock.
            recoveredBlock14Block21PC := 44.
        ].
        recoveredBlock14Block21Step = 44 ifTrue: [
            recoveredBlock14Block21Stack2 := (recoveredBlock14Block21Stack2) checkedMakeConfigForElement: (recoveredBlock14Block21Stack3) ifFail: (recoveredBlock14Block21Stack4).
            recoveredBlock14Block21PC := 46.
        ].
        recoveredBlock14Block21Step = 46 ifTrue: [
            recoveredBlock14Block21Stack2 := (recoveredBlock14Block21Stack2) asDefaultConfig.
            recoveredBlock14Block21PC := 48.
        ].
        recoveredBlock14Block21Step = 48 ifTrue: [
            recoveredBlock14Block21Stack3 := recoveredLocal1.
            recoveredBlock14Block21PC := 51.
        ].
        recoveredBlock14Block21Step = 51 ifTrue: [
            recoveredBlock14Block21Stack1 := (recoveredBlock14Block21Stack1) addIfNew: (recoveredBlock14Block21Stack2) to: (recoveredBlock14Block21Stack3).
            recoveredBlock14Block21PC := 53.
        ].
        recoveredBlock14Block21Step = 53 ifTrue: [
            recoveredBlock14Block21Result := recoveredBlock14Block21Stack1.
            recoveredBlock14Block21Done := true.
        ].
    ].
    recoveredBlock14Block21Result
].
    recoveredBlock14Value2 := (recoveredBlock14Value0) allMethodElementsDo: (recoveredBlock14Value1).
    recoveredBlock14Value2
].
    (recoveredValue2) ifNotNil: (recoveredValue3).
    recoveredValue4 := recoveredLocal1.
    ^recoveredValue4
! !

