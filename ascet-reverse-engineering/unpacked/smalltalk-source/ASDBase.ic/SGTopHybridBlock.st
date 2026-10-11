"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20001238; bytecode file offset 0x8ffcfc"
!SGTopHybridBlock methodsFor: 'recovered'!
analyzeSyntax
    ^self
! !

"ASDBase.ic method 0x2006753c; bytecode file offset 0x9646f8"
!SGTopHybridBlock methodsFor: 'recovered'!
children
    | recoveredValue0 |
    recoveredValue0 := children.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20078e7c; bytecode file offset 0x9757c8"
!SGTopHybridBlock methodsFor: 'recovered'!
isTopHybridBlock
    ^true
! !

"ASDBase.ic method 0x200bea18; bytecode file offset 0x9bc0b4"
!SGTopHybridBlock methodsFor: 'recovered'!
children: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    children := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200e9270; bytecode file offset 0x9e5b3c"
!SGTopHybridBlock methodsFor: 'recovered'!
addBlock: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    (recoveredValue0) parent: (self).
    recoveredValue1 := children.
    recoveredValue2 := recoveredArg1.
    (recoveredValue1) add: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x2010bf14; bytecode file offset 0xa08928"
!SGTopHybridBlock methodsFor: 'recovered'!
analyze
    super analyzeCtBlock.
    (self) sequencingForCtProcesses.
    (self) analyzeComponent.
    ^self
! !

"ASDBase.ic method 0x201241d4; bytecode file offset 0xa20a94"
!SGTopHybridBlock methodsFor: 'recovered'!
sequencing: recoveredArg1 onBlocks: recoveredArg2 useInfo: recoveredArg3 monitorStream: recoveredArg4
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := recoveredArg3.
    recoveredValue3 := recoveredArg4.
    recoveredValue4 := super sequencing: (recoveredValue0) onBlocks: (recoveredValue1) useInfo: (recoveredValue2) monitorStream: (recoveredValue3).
    recoveredValue5 := recoveredArg3.
    (recoveredValue4) autoNumberingComponentUseNumberInfo: (recoveredValue5).
    ^self
! !

"ASDBase.ic method 0x20152210; bytecode file offset 0xa4ead8"
!SGTopHybridBlock methodsFor: 'recovered'!
analyzeCtBlock
    | recoveredStack0 recoveredStack1 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            super analyzeCtBlock.
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
            recoveredStack0 := (recoveredStack0) isCTProject.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) sequencingForCtProcesses.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack0
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

"ASDBase.ic method 0x201ca484; bytecode file offset 0xac6d54"
!SGTopHybridBlock methodsFor: 'recovered'!
buildMdlMethods
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := (self) mdlBuilder.
    recoveredValue1 := (recoveredValue0) generator.
    recoveredValue2 := (self) methods.
    recoveredValue3 := (recoveredValue1) sortElements: (recoveredValue2).
    recoveredValue4 := [:recoveredBlock9Arg1 | 
    | recoveredBlock9Value0 recoveredBlock9Value1 recoveredBlock9Value2 |
    recoveredBlock9Value0 := recoveredBlock9Arg1.
    (self) currentMethod: (recoveredBlock9Value0).
    recoveredBlock9Value1 := recoveredBlock9Arg1.
    recoveredBlock9Value2 := (recoveredBlock9Value1) buildMdl.
    recoveredBlock9Value2
].
    (recoveredValue3) do: (recoveredValue4).
    ^self
! !

"ASDBase.ic method 0x2041de00; bytecode file offset 0xd1a708"
!SGTopHybridBlock methodsFor: 'recovered'!
sequencingForCtProcesses
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := ('Rl') == ('Call_71565').
    recoveredValue1 := OrderedCollection.
    recoveredValue2 := (recoveredValue1) new.
    recoveredLocal1 := recoveredValue2.
    recoveredValue3 := (self) children.
    recoveredValue4 := [:recoveredBlock18Arg1 | 
    | recoveredBlock18Stack0 recoveredBlock18Stack1 recoveredBlock18Stack2 recoveredBlock18Stack3 recoveredBlock18PC recoveredBlock18Step recoveredBlock18Done recoveredBlock18Result |
    recoveredBlock18Stack0 := self.
    recoveredBlock18PC := 24.
    recoveredBlock18Done := false.
    [recoveredBlock18Done not] whileTrue: [
        recoveredBlock18Step := recoveredBlock18PC.
        recoveredBlock18Step = 24 ifTrue: [
            recoveredBlock18Stack1 := recoveredBlock18Arg1.
            recoveredBlock18PC := 25.
        ].
        recoveredBlock18Step = 25 ifTrue: [
            recoveredBlock18Stack1 := (recoveredBlock18Stack1) representsBdlCTClass.
            recoveredBlock18PC := 27.
        ].
        recoveredBlock18Step = 27 ifTrue: [
            (recoveredBlock18Stack1) ifTrue: [recoveredBlock18PC := 30] ifFalse: [recoveredBlock18PC := 40].
        ].
        recoveredBlock18Step = 30 ifTrue: [
            recoveredBlock18Stack1 := recoveredLocal1.
            recoveredBlock18PC := 33.
        ].
        recoveredBlock18Step = 33 ifTrue: [
            recoveredBlock18Stack2 := recoveredBlock18Arg1.
            recoveredBlock18PC := 34.
        ].
        recoveredBlock18Step = 34 ifTrue: [
            recoveredBlock18Stack1 := (recoveredBlock18Stack1) addFirst: (recoveredBlock18Stack2).
            recoveredBlock18PC := 36.
        ].
        recoveredBlock18Step = 36 ifTrue: [
            recoveredBlock18PC := 46.
        ].
        recoveredBlock18Step = 40 ifTrue: [
            recoveredBlock18Stack1 := recoveredLocal1.
            recoveredBlock18PC := 43.
        ].
        recoveredBlock18Step = 43 ifTrue: [
            recoveredBlock18Stack2 := recoveredBlock18Arg1.
            recoveredBlock18PC := 44.
        ].
        recoveredBlock18Step = 44 ifTrue: [
            recoveredBlock18Stack1 := (recoveredBlock18Stack1) addLast: (recoveredBlock18Stack2).
            recoveredBlock18PC := 46.
        ].
        recoveredBlock18Step = 46 ifTrue: [
            recoveredBlock18Result := recoveredBlock18Stack1.
            recoveredBlock18Done := true.
        ].
    ].
    recoveredBlock18Result
].
    (recoveredValue3) do: (recoveredValue4).
    recoveredValue5 := (self) sgClass.
    recoveredValue6 := (recoveredValue5) methods.
    recoveredValue7 := [:recoveredBlock54Arg1 | 
    | recoveredBlock54Local1 recoveredBlock54Value0 recoveredBlock54Value1 recoveredBlock54Value2 recoveredBlock54Value3 recoveredBlock54Value4 recoveredBlock54Value5 recoveredBlock54Value6 recoveredBlock54Value7 recoveredBlock54Value8 recoveredBlock54Value9 recoveredBlock54Value10 recoveredBlock54Value11 recoveredBlock54Value12 |
    recoveredBlock54Value0 := recoveredBlock54Arg1.
    recoveredBlock54Value1 := (self) createLogicMethodForSequencing: (recoveredBlock54Value0).
    recoveredBlock54Local1 := recoveredBlock54Value1.
    recoveredBlock54Value2 := recoveredBlock54Local1.
    (recoveredBlock54Value2) startSequencing: (1).
    recoveredBlock54Value3 := recoveredBlock54Local1.
    (self) currentMethod: (recoveredBlock54Value3).
    recoveredBlock54Value4 := recoveredBlock54Local1.
    recoveredBlock54Value5 := recoveredLocal1.
    recoveredBlock54Value6 := WriteStream.
    recoveredBlock54Value7 := Locale.
    recoveredBlock54Value8 := (recoveredBlock54Value7) current.
    recoveredBlock54Value9 := (recoveredBlock54Value8) preferredStringClass.
    recoveredBlock54Value10 := (recoveredBlock54Value9) new: (10).
    recoveredBlock54Value11 := (recoveredBlock54Value6) on: (recoveredBlock54Value10).
    recoveredBlock54Value12 := (self) sequencing: (recoveredBlock54Value4) onBlocks: (recoveredBlock54Value5) useInfo: (false) monitorStream: (recoveredBlock54Value11).
    recoveredBlock54Value12
].
    (recoveredValue6) do: (recoveredValue7).
    ^self
! !

