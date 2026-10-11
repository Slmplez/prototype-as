"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20001930; bytecode file offset 0x8ffcfc"
!SGMakeARDataInterfaceNode methodsFor: 'recovered'!
analyzeInitInstCodeGeneration
    ^self
! !

"ASDBase.ic method 0x20002150; bytecode file offset 0x8ffcfc"
!SGMakeARDataInterfaceNode methodsFor: 'recovered'!
analyzeModuleCodeGeneration
    ^self
! !

"ASDBase.ic method 0x20055410; bytecode file offset 0x952a9c"
!SGMakeARDataInterfaceNode methodsFor: 'recovered'!
acceptMakeNodeVisitor: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) makeARSRInterfaceNode: (self).
    ^recoveredValue1
! !

"ASDBase.ic method 0x2005e720; bytecode file offset 0x95affc"
!SGMakeARDataInterfaceNode methodsFor: 'recovered'!
setARCalPrmInterface
    kind := 'CalPrmInterface'.
    ^self
! !

"ASDBase.ic method 0x2005e72c; bytecode file offset 0x95affc"
!SGMakeARDataInterfaceNode methodsFor: 'recovered'!
setARSRInterface
    kind := 'SRInterface'.
    ^self
! !

"ASDBase.ic method 0x2005e738; bytecode file offset 0x95affc"
!SGMakeARDataInterfaceNode methodsFor: 'recovered'!
setARNVDataInterface
    kind := 'NVDataInterface'.
    ^self
! !

"ASDBase.ic method 0x20076184; bytecode file offset 0x9757c8"
!SGMakeARDataInterfaceNode methodsFor: 'recovered'!
isARNode
    ^true
! !

"ASDBase.ic method 0x200767e4; bytecode file offset 0x9757c8"
!SGMakeARDataInterfaceNode methodsFor: 'recovered'!
isARSRInterfaceNode
    ^true
! !

"ASDBase.ic method 0x20118988; bytecode file offset 0xa1525c"
!SGMakeARDataInterfaceNode methodsFor: 'recovered'!
needsGenerateInitInstCode
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := (recoveredStack2) needsFileOut.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := flags.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := (recoveredStack2) bitInitCode.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) isBitSet: (recoveredStack2).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2013015c; bytecode file offset 0xa2ca44"
!SGMakeARDataInterfaceNode methodsFor: 'recovered'!
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

"ASDBase.ic method 0x20363f9c; bytecode file offset 0xc6088c"
!SGMakeARDataInterfaceNode methodsFor: 'recovered'!
analyzeController
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := (recoveredStack1) interfaceGenerateOptions.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack0 := (recoveredStack0) interfaceGenOptionChange: (recoveredStack1).
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 13].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack0) mustGenerateInterface.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := (recoveredStack0) latestProjectInfluencesTimeStamp.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack2 := (recoveredStack2) interfaceGenerateTimeStamp.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := (recoveredStack0) checkModelMoreRecentTimeStamp: (recoveredStack1) generationTimeStamp: (recoveredStack2).
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 26] ifFalse: [recoveredPC := 29].
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            (recoveredStack0) mustGenerateInterface.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := (recoveredStack0) hardDependents.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := [:recoveredBlock32Arg1 | 
    | recoveredBlock32Stack0 recoveredBlock32Stack1 recoveredBlock32Stack2 recoveredBlock32Stack3 recoveredBlock32Stack4 recoveredBlock32PC recoveredBlock32Step recoveredBlock32Done recoveredBlock32Result |
    recoveredBlock32Stack0 := self.
    recoveredBlock32PC := 38.
    recoveredBlock32Done := false.
    [recoveredBlock32Done not] whileTrue: [
        recoveredBlock32Step := recoveredBlock32PC.
        recoveredBlock32Step = 38 ifTrue: [
            recoveredBlock32Stack1 := nil.
            recoveredBlock32PC := 39.
        ].
        recoveredBlock32Step = 39 ifTrue: [
            recoveredBlock32Stack2 := recoveredBlock32Arg1.
            recoveredBlock32PC := 40.
        ].
        recoveredBlock32Step = 40 ifTrue: [
            recoveredBlock32Stack2 := (recoveredBlock32Stack2) isARSWComponentNode.
            recoveredBlock32PC := 42.
        ].
        recoveredBlock32Step = 42 ifTrue: [
            (recoveredBlock32Stack2) ifTrue: [recoveredBlock32PC := 57] ifFalse: [recoveredBlock32PC := 46].
        ].
        recoveredBlock32Step = 46 ifTrue: [
            recoveredBlock32PC := 47.
        ].
        recoveredBlock32Step = 47 ifTrue: [
            recoveredBlock32Stack1 := self.
            recoveredBlock32PC := 48.
        ].
        recoveredBlock32Step = 48 ifTrue: [
            recoveredBlock32Stack2 := ARAtomicSoftwareComponent.
            recoveredBlock32PC := 50.
        ].
        recoveredBlock32Step = 50 ifTrue: [
            recoveredBlock32Stack2 := (recoveredBlock32Stack2) defaultItemLabel.
            recoveredBlock32PC := 52.
        ].
        recoveredBlock32Step = 52 ifTrue: [
            recoveredBlock32Stack3 := recoveredBlock32Arg1.
            recoveredBlock32PC := 53.
        ].
        recoveredBlock32Step = 53 ifTrue: [
            recoveredBlock32Stack3 := (recoveredBlock32Stack3) componentSource.
            recoveredBlock32PC := 55.
        ].
        recoveredBlock32Step = 55 ifTrue: [
            recoveredBlock32Stack1 := (recoveredBlock32Stack1) fatalErrorInstanceShouldBeUsedIn: (recoveredBlock32Stack2) source: (recoveredBlock32Stack3).
            recoveredBlock32PC := 57.
        ].
        recoveredBlock32Step = 57 ifTrue: [
            recoveredBlock32Result := recoveredBlock32Stack1.
            recoveredBlock32Done := true.
        ].
    ].
    recoveredBlock32Result
].
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            super analyzeController.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

