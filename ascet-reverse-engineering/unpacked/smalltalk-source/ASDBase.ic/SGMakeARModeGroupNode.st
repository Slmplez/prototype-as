"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20034974; bytecode file offset 0x934580"
!SGMakeARModeGroupNode methodsFor: 'recovered'!
enabledForModuleCodeGeneration
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) currentBuildCache.
    recoveredValue1 := (recoveredValue0) isOSCategoryAUTOSAR.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20055428; bytecode file offset 0x952a9c"
!SGMakeARModeGroupNode methodsFor: 'recovered'!
acceptMakeNodeVisitor: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) makeARModeGroupNode: (self).
    ^recoveredValue1
! !

"ASDBase.ic method 0x20078374; bytecode file offset 0x9757c8"
!SGMakeARModeGroupNode methodsFor: 'recovered'!
isARModeGroupNode
    ^true
! !

"ASDBase.ic method 0x2007856c; bytecode file offset 0x9757c8"
!SGMakeARModeGroupNode methodsFor: 'recovered'!
isARNode
    ^true
! !

"ASDBase.ic method 0x20254284; bytecode file offset 0xb50b5c"
!SGMakeARModeGroupNode methodsFor: 'recovered'!
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
            recoveredBlock5Stack2 := (recoveredBlock5Stack2) isARSRInterfaceNode.
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
            recoveredBlock5Stack2 := ASDElementInterfaceSpecification.
            recoveredBlock5PC := 22.
        ].
        recoveredBlock5Step = 22 ifTrue: [
            recoveredBlock5Stack2 := (recoveredBlock5Stack2) label.
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

