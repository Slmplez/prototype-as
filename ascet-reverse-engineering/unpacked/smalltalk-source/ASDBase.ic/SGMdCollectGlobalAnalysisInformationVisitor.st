"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20067d7c; bytecode file offset 0x9646f8"
!SGMdCollectGlobalAnalysisInformationVisitor methodsFor: 'recovered'!
calledMethods
    | recoveredValue0 |
    recoveredValue0 := calledMethods.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20068bc4; bytecode file offset 0x965b90"
!SGMdCollectGlobalAnalysisInformationVisitor methodsFor: 'recovered'!
usedResources
    | recoveredValue0 |
    recoveredValue0 := usedResources.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006a328; bytecode file offset 0x966bdc"
!SGMdCollectGlobalAnalysisInformationVisitor methodsFor: 'recovered'!
issuedRTECalls
    | recoveredValue0 |
    recoveredValue0 := issuedRTECalls.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20085760; bytecode file offset 0x98204c"
!SGMdCollectGlobalAnalysisInformationVisitor methodsFor: 'recovered'!
compoundArithmethicExpression: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) rootExpr.
    recoveredValue2 := (recoveredValue1) mdlAcceptNodeVisitor: (self).
    ^recoveredValue2
! !

"ASDBase.ic method 0x200bf020; bytecode file offset 0x9bc0b4"
!SGMdCollectGlobalAnalysisInformationVisitor methodsFor: 'recovered'!
calledMethods: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    calledMethods := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200bfffc; bytecode file offset 0x9bd228"
!SGMdCollectGlobalAnalysisInformationVisitor methodsFor: 'recovered'!
usedResources: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    usedResources := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c0e10; bytecode file offset 0x9bdf14"
!SGMdCollectGlobalAnalysisInformationVisitor methodsFor: 'recovered'!
issuedRTECalls: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    issuedRTECalls := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200ff86c; bytecode file offset 0x9fc130"
!SGMdCollectGlobalAnalysisInformationVisitor methodsFor: 'recovered'!
autosarRTECall: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) issuedRTECalls.
    recoveredValue1 := recoveredArg1.
    (recoveredValue0) add: (recoveredValue1).
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := super autosarRTECall: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x20145390; bytecode file offset 0xa41ca0"
!SGMdCollectGlobalAnalysisInformationVisitor methodsFor: 'recovered'!
externBlock: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) code.
    recoveredValue2 := [:recoveredBlock6Arg1 | 
    | recoveredBlock6Value0 recoveredBlock6Value1 |
    recoveredBlock6Value0 := recoveredBlock6Arg1.
    recoveredBlock6Value1 := (recoveredBlock6Value0) mdlAcceptNodeVisitor: (self).
    recoveredBlock6Value1
].
    (recoveredValue1) do: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x201cb99c; bytecode file offset 0xac8274"
!SGMdCollectGlobalAnalysisInformationVisitor methodsFor: 'recovered'!
specialCall: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := #('reserveRes' 'releaseRes').
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := (recoveredStack2) mdlLabel.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) includes: (recoveredStack2).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 21].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) usedResources.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := (recoveredStack2) receiver.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := (recoveredStack2) varDecl.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            (recoveredStack1) add: (recoveredStack2).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := super specialCall: (recoveredStack1).
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201ed50c; bytecode file offset 0xae9ddc"
!SGMdCollectGlobalAnalysisInformationVisitor methodsFor: 'recovered'!
methodCall: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := (recoveredStack1) methodDecl.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) isMdlMethodDecl.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) isMdlProcessDecl.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 23].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := (recoveredStack1) calledMethods.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            (recoveredStack1) add: (recoveredStack2).
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := super methodCall: (recoveredStack1).
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x204232a4; bytecode file offset 0xd1fbc0"
!SGMdCollectGlobalAnalysisInformationVisitor methodsFor: 'recovered'!
anyBlockStmnt: recoveredArg1 methodDecl: recoveredArg2 mdlBuilder: recoveredArg3
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 recoveredValue21 recoveredValue22 recoveredValue23 recoveredValue24 recoveredValue25 recoveredValue26 recoveredValue27 recoveredValue28 recoveredValue29 recoveredValue30 recoveredValue31 recoveredValue32 recoveredValue33 recoveredValue34 recoveredValue35 recoveredValue36 recoveredValue37 recoveredValue38 recoveredValue39 recoveredValue40 recoveredValue41 recoveredValue42 |
    recoveredValue0 := Set.
    recoveredValue1 := (recoveredValue0) new.
    (self) calledMethods: (recoveredValue1).
    recoveredValue2 := Set.
    recoveredValue3 := (recoveredValue2) new.
    (self) usedResources: (recoveredValue3).
    recoveredValue4 := OrderedCollection.
    recoveredValue5 := (recoveredValue4) new.
    (self) issuedRTECalls: (recoveredValue5).
    recoveredValue6 := recoveredArg1.
    (recoveredValue6) mdlAcceptNodeVisitor: (self).
    recoveredValue7 := SGMdValidateMessageUsageVisitor.
    recoveredValue8 := (recoveredValue7) create.
    recoveredValue9 := recoveredArg1.
    recoveredValue10 := recoveredArg2.
    (recoveredValue8) analyzeMessageUsage: (recoveredValue9) methodDecl: (recoveredValue10).
    recoveredValue11 := SGMdSideEffectAnalysisVisitor.
    recoveredValue12 := (recoveredValue11) create.
    recoveredLocal1 := recoveredValue12.
    recoveredValue13 := SGMdMethodAnalysisInfo.
    recoveredValue14 := (recoveredValue13) create.
    recoveredValue15 := recoveredValue14.
    recoveredValue16 := (self) calledMethods.
    (recoveredValue15) calledMethods: (recoveredValue16).
    recoveredValue17 := recoveredValue14.
    recoveredValue18 := (self) usedResources.
    (recoveredValue17) usedResources: (recoveredValue18).
    recoveredValue19 := recoveredValue14.
    recoveredValue20 := (self) issuedRTECalls.
    (recoveredValue19) issuedRTECalls: (recoveredValue20).
    recoveredValue21 := recoveredValue14.
    recoveredValue22 := recoveredLocal1.
    recoveredValue23 := recoveredArg1.
    recoveredValue24 := recoveredArg2.
    recoveredValue25 := (recoveredValue22) analyzeSideEffects: (recoveredValue23) methodDecl: (recoveredValue24).
    (recoveredValue21) sideEffects: (recoveredValue25).
    recoveredValue26 := recoveredValue14.
    recoveredValue27 := recoveredLocal1.
    recoveredValue28 := (recoveredValue27) referenceAnalysis.
    (recoveredValue26) referenceAnalysis: (recoveredValue28).
    recoveredValue29 := recoveredValue14.
    recoveredValue30 := recoveredLocal1.
    recoveredValue31 := (recoveredValue30) verifyCalls.
    (recoveredValue29) verifyCalls: (recoveredValue31).
    recoveredValue32 := recoveredValue14.
    recoveredValue33 := SGMdMessageUsageAnalysisVisitor.
    recoveredValue34 := (recoveredValue33) create.
    recoveredValue35 := recoveredArg1.
    recoveredValue36 := recoveredArg2.
    recoveredValue37 := (recoveredValue34) analyzeMessageUsage: (recoveredValue35) methodDecl: (recoveredValue36).
    (recoveredValue32) usedMessages: (recoveredValue37).
    recoveredValue38 := recoveredValue14.
    recoveredValue39 := SGMdUsedElementsForMemorySectionPropagationVisitor.
    recoveredValue40 := (recoveredValue39) create.
    recoveredValue41 := recoveredArg1.
    recoveredValue42 := (recoveredValue40) analyzseUsedElements: (recoveredValue41).
    (recoveredValue38) usedElements: (recoveredValue42).
    ^recoveredValue14
! !

