"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20076794; bytecode file offset 0x9757c8"
!SGTopCtBlock methodsFor: 'recovered'!
isTopCtBlock
    ^true
! !

"ASDBase.ic method 0x20091650; bytecode file offset 0x98e0cc"
!SGTopCtBlock methodsFor: 'recovered'!
analyzeSyntax
    super analyze.
    ^self
! !

"ASDBase.ic method 0x200d64b4; bytecode file offset 0x9d3134"
!SGTopCtBlock methodsFor: 'recovered'!
analyzeCtBlock
    super analyzeCtBlock.
    (self) sequencingForCtClass.
    ^self
! !

"ASDBase.ic method 0x200ea2a8; bytecode file offset 0x9e6c94"
!SGTopCtBlock methodsFor: 'recovered'!
createLogicMethods: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    super createLogicMethods: (recoveredValue0).
    (self) addMethodsForCT.
    ^self
! !

"ASDBase.ic method 0x2010bf2c; bytecode file offset 0xa08928"
!SGTopCtBlock methodsFor: 'recovered'!
analyze
    super analyzeCtBlock.
    (self) sequencingForCtClass.
    (self) analyzeComponent.
    ^self
! !

"ASDBase.ic method 0x20112148; bytecode file offset 0xa0ea08"
!SGTopCtBlock methodsFor: 'recovered'!
sequencing: recoveredArg1 onBlocks: recoveredArg2 useInfo: recoveredArg3 monitorStream: recoveredArg4
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := recoveredArg3.
    recoveredValue3 := recoveredArg4.
    recoveredValue4 := super sequencing: (recoveredValue0) onBlocks: (recoveredValue1) useInfo: (recoveredValue2) monitorStream: (recoveredValue3).
    (recoveredValue4) autoNumberingCt.
    ^self
! !

"ASDBase.ic method 0x2012c110; bytecode file offset 0xa289dc"
!SGTopCtBlock methodsFor: 'recovered'!
sequencingForCtClass
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := (self) sgClass.
    recoveredValue1 := (recoveredValue0) methods.
    recoveredValue2 := (recoveredValue1) first.
    recoveredValue3 := OrderedCollection.
    recoveredValue4 := (recoveredValue3) new.
    (self) sequencing: (recoveredValue2) on: (recoveredValue4) useInfo: (false).
    ^self
! !

"ASDBase.ic method 0x20173270; bytecode file offset 0xa6fb7c"
!SGTopCtBlock methodsFor: 'recovered'!
buildMdlDeclarations
    | recoveredStack0 recoveredStack1 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            super buildMdlDeclarations.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) sgClass.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := (recoveredStack0) isCTClass.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 17].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack0) buildMdlMacrosForCT.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            (recoveredStack0) checkForLmErrors.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

