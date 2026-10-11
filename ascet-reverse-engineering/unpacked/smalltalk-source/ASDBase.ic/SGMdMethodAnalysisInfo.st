"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20029834; bytecode file offset 0x934580"
!SGMdMethodAnalysisInfo methodsFor: 'recovered'!
associatedTask
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) associatedTasksUsingMsgAccessNonOptCopyTask.
    recoveredValue1 := (recoveredValue0) someElement.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2004904c; bytecode file offset 0x945920"
!SGMdMethodAnalysisInfo methodsFor: 'recovered'!
resetCalledByProcessContainer
    calledByTasks := nil.
    ^self
! !

"ASDBase.ic method 0x20058c38; bytecode file offset 0x956284"
!SGMdMethodAnalysisInfo methodsFor: 'recovered'!
addCalledByProcessContainer: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) calledByProcessContainers.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) add: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x20065984; bytecode file offset 0x963428"
!SGMdMethodAnalysisInfo methodsFor: 'recovered'!
methodDecl
    | recoveredValue0 |
    recoveredValue0 := methodDecl.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006bb18; bytecode file offset 0x96873c"
!SGMdMethodAnalysisInfo methodsFor: 'recovered'!
sideEffects
    | recoveredValue0 |
    recoveredValue0 := sideEffects.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006c274; bytecode file offset 0x9692b0"
!SGMdMethodAnalysisInfo methodsFor: 'recovered'!
usedElements
    | recoveredValue0 |
    recoveredValue0 := usedElements.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006dac4; bytecode file offset 0x96a390"
!SGMdMethodAnalysisInfo methodsFor: 'recovered'!
referenceAnalysis
    | recoveredValue0 |
    recoveredValue0 := referenceAnalysis.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006dd80; bytecode file offset 0x96a9dc"
!SGMdMethodAnalysisInfo methodsFor: 'recovered'!
verifyCalls
    | recoveredValue0 |
    recoveredValue0 := verifyCalls.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200bdd5c; bytecode file offset 0x9bb178"
!SGMdMethodAnalysisInfo methodsFor: 'recovered'!
methodDecl: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    methodDecl := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200bf018; bytecode file offset 0x9bc0b4"
!SGMdMethodAnalysisInfo methodsFor: 'recovered'!
calledMethods: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    calledMethods := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200bfff4; bytecode file offset 0x9bd228"
!SGMdMethodAnalysisInfo methodsFor: 'recovered'!
usedResources: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    usedResources := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c1568; bytecode file offset 0x9bdf14"
!SGMdMethodAnalysisInfo methodsFor: 'recovered'!
usedMessages: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    usedMessages := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c1a6c; bytecode file offset 0x9beac8"
!SGMdMethodAnalysisInfo methodsFor: 'recovered'!
issuedRTECalls: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    issuedRTECalls := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c27f0; bytecode file offset 0x9bf474"
!SGMdMethodAnalysisInfo methodsFor: 'recovered'!
sideEffects: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    sideEffects := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c32b4; bytecode file offset 0x9bfde0"
!SGMdMethodAnalysisInfo methodsFor: 'recovered'!
usedElements: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    usedElements := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c3e34; bytecode file offset 0x9c0bf0"
!SGMdMethodAnalysisInfo methodsFor: 'recovered'!
referenceAnalysis: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    referenceAnalysis := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c4540; bytecode file offset 0x9c11bc"
!SGMdMethodAnalysisInfo methodsFor: 'recovered'!
verifyCalls: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    verifyCalls := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200ee2a0; bytecode file offset 0x9eabdc"
!SGMdMethodAnalysisInfo methodsFor: 'recovered'!
addName: recoveredArg1 scope: recoveredArg2 method: recoveredArg3 toElement: recoveredArg4
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := (self) class.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := recoveredArg3.
    recoveredValue4 := recoveredArg4.
    (recoveredValue0) addName: (recoveredValue1) scope: (recoveredValue2) method: (recoveredValue3) toElement: (recoveredValue4).
    ^self
! !

"ASDBase.ic method 0x200f76a4; bytecode file offset 0x9f4e38"
!SGMdMethodAnalysisInfo methodsFor: 'recovered'!
calledByBypassFunctions
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) calledByProcessContainers.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := [:block280c47f4Arg1 | 
    | block280c47f4Value0 block280c47f4Value1 |
    block280c47f4Value0 := block280c47f4Arg1.
    block280c47f4Value1 := (block280c47f4Value0) isMdlBypassFunction.
    block280c47f4Value1
].
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) select: (recoveredStack1).
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x200f825c; bytecode file offset 0x9f4e38"
!SGMdMethodAnalysisInfo methodsFor: 'recovered'!
calledByTasks
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) calledByProcessContainers.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := [:block280c5988Arg1 | 
    | block280c5988Value0 block280c5988Value1 |
    block280c5988Value0 := block280c5988Arg1.
    block280c5988Value1 := (block280c5988Value0) isMdlTask.
    block280c5988Value1
].
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) select: (recoveredStack1).
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x200f84fc; bytecode file offset 0x9f4e38"
!SGMdMethodAnalysisInfo methodsFor: 'recovered'!
associatedTasksUsingMsgAccessNonOptCopyTask
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) calledByTasks.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := [:block280c5d78Arg1 | 
    | block280c5d78Value0 block280c5d78Value1 |
    block280c5d78Value0 := block280c5d78Arg1.
    block280c5d78Value1 := (block280c5d78Value0) isMdlInitTask.
    block280c5d78Value1
].
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) reject: (recoveredStack1).
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20105940; bytecode file offset 0xa021f8"
!SGMdMethodAnalysisInfo methodsFor: 'recovered'!
calledMethods
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := calledMethods.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 13] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := #().
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := calledMethods.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x20105b4c; bytecode file offset 0xa02410"
!SGMdMethodAnalysisInfo methodsFor: 'recovered'!
usedResources
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := usedResources.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 13] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := #().
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := usedResources.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x201279a4; bytecode file offset 0xa24278"
!SGMdMethodAnalysisInfo methodsFor: 'recovered'!
allIssuedRTECalls
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := Set.
    recoveredValue1 := (recoveredValue0) new.
    recoveredLocal2 := recoveredValue1.
    recoveredValue2 := Set.
    recoveredValue3 := (recoveredValue2) new.
    recoveredLocal1 := recoveredValue3.
    recoveredValue4 := recoveredLocal2.
    recoveredValue5 := recoveredLocal1.
    recoveredValue6 := (self) allIssuedRTECalls: (recoveredValue4) visitedExecutables: (recoveredValue5).
    ^recoveredValue6
! !

"ASDBase.ic method 0x201279b8; bytecode file offset 0xa24278"
!SGMdMethodAnalysisInfo methodsFor: 'recovered'!
allUsedResources
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := Set.
    recoveredValue1 := (recoveredValue0) new.
    recoveredLocal2 := recoveredValue1.
    recoveredValue2 := Set.
    recoveredValue3 := (recoveredValue2) new.
    recoveredLocal1 := recoveredValue3.
    recoveredValue4 := recoveredLocal2.
    recoveredValue5 := recoveredLocal1.
    recoveredValue6 := (self) allUsedResources: (recoveredValue4) visitedExecutables: (recoveredValue5).
    ^recoveredValue6
! !

"ASDBase.ic method 0x2012a08c; bytecode file offset 0xa269a8"
!SGMdMethodAnalysisInfo methodsFor: 'recovered'!
calledByProcessContainers
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := calledByTasks.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 15] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := Set.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            calledByTasks := recoveredStack1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := calledByTasks.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x201523a0; bytecode file offset 0xa4ec5c"
!SGMdMethodAnalysisInfo methodsFor: 'recovered'!
usedMessages
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := usedMessages.
    recoveredValue1 := [
    ^#()
].
    (recoveredValue0) ifNil: (recoveredValue1).
    recoveredValue2 := usedMessages.
    ^recoveredValue2
! !

"ASDBase.ic method 0x201523c4; bytecode file offset 0xa4ec90"
!SGMdMethodAnalysisInfo methodsFor: 'recovered'!
issuedRTECalls
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := issuedRTECalls.
    recoveredValue1 := [
    ^#()
].
    (recoveredValue0) ifNil: (recoveredValue1).
    recoveredValue2 := issuedRTECalls.
    ^recoveredValue2
! !

"ASDBase.ic method 0x2015735c; bytecode file offset 0xa53c1c"
!SGMdMethodAnalysisInfo methodsFor: 'recovered'!
analyseSideEffects: recoveredArg1 arguments: recoveredArg2
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) sideEffects.
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
            recoveredStack0 := (recoveredStack0) sideEffects.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) analyseSideEffects: (recoveredStack1) arguments: (recoveredStack2).
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack1) sequencePoint.
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

"ASDBase.ic method 0x2015b840; bytecode file offset 0xa58108"
!SGMdMethodAnalysisInfo methodsFor: 'recovered'!
allUsedMsgs
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := LookupTable.
    recoveredValue1 := (recoveredValue0) new.
    recoveredLocal2 := recoveredValue1.
    recoveredValue2 := Set.
    recoveredValue3 := (recoveredValue2) new.
    recoveredLocal1 := recoveredValue3.
    recoveredValue4 := recoveredLocal2.
    recoveredValue5 := recoveredLocal1.
    (self) allUsedMsgs: (recoveredValue4) visitedExecutables: (recoveredValue5).
    recoveredValue6 := recoveredLocal2.
    recoveredValue7 := (recoveredValue6) values.
    ^recoveredValue7
! !

"ASDBase.ic method 0x201f29ec; bytecode file offset 0xaef2b0"
!SGMdMethodAnalysisInfo methodsFor: 'recovered'!
initialize
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    super initialize.
    recoveredValue0 := OrderedCollection.
    recoveredValue1 := (recoveredValue0) new.
    calledMethods := recoveredValue1.
    recoveredValue2 := OrderedCollection.
    recoveredValue3 := (recoveredValue2) new.
    usedResources := recoveredValue3.
    recoveredValue4 := OrderedCollection.
    recoveredValue5 := (recoveredValue4) new.
    issuedRTECalls := recoveredValue5.
    recoveredValue6 := OrderedCollection.
    recoveredValue7 := (recoveredValue6) new.
    usedMessages := recoveredValue7.
    ^self
! !

"ASDBase.ic method 0x2035aa64; bytecode file offset 0xc57340"
!SGMdMethodAnalysisInfo methodsFor: 'recovered'!
inlineMethodAnalysisInfo: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) calledMethods.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) calledMethods.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack0) addAll: (recoveredStack1).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := (recoveredStack0) usedResources.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) usedResources.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack0) addAll: (recoveredStack1).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := (recoveredStack0) usedMessages.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := (recoveredStack1) usedMessages.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            (recoveredStack0) addAll: (recoveredStack1).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := (recoveredStack0) issuedRTECalls.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := (recoveredStack1) issuedRTECalls.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            (recoveredStack0) addAll: (recoveredStack1).
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := (recoveredStack0) usedElements.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := (recoveredStack1) usedElements.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            (recoveredStack0) addAll: (recoveredStack1).
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := (recoveredStack0) referenceAnalysis.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 56] ifFalse: [recoveredPC := 44].
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack1 := (recoveredStack1) referenceAnalysis.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack1 := (recoveredStack1) copy.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            (recoveredStack0) referenceAnalysis: (recoveredStack1).
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredPC := 64.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack0 := (recoveredStack0) referenceAnalysis.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack1 := (recoveredStack1) referenceAnalysis.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            (recoveredStack0) merge: (recoveredStack1).
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20363378; bytecode file offset 0xc5fc8c"
!SGMdMethodAnalysisInfo methodsFor: 'recovered'!
allUsedResources: recoveredArg1 visitedExecutables: recoveredArg2
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) includes: (recoveredStack2).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := recoveredArg1.
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
            recoveredStack2 := self.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack2 := (recoveredStack2) usedResources.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            (recoveredStack1) addAll: (recoveredStack2).
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            (recoveredStack1) add: (recoveredStack2).
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack0 := (recoveredStack0) calledMethods.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := [:recoveredBlock31Arg1 | 
    | recoveredBlock31Stack0 recoveredBlock31Stack1 recoveredBlock31Stack2 recoveredBlock31Stack3 recoveredBlock31Stack4 recoveredBlock31PC recoveredBlock31Step recoveredBlock31Done recoveredBlock31Result |
    recoveredBlock31Stack0 := self.
    recoveredBlock31PC := 38.
    recoveredBlock31Done := false.
    [recoveredBlock31Done not] whileTrue: [
        recoveredBlock31Step := recoveredBlock31PC.
        recoveredBlock31Step = 38 ifTrue: [
            recoveredBlock31Stack1 := recoveredBlock31Arg1.
            recoveredBlock31PC := 39.
        ].
        recoveredBlock31Step = 39 ifTrue: [
            recoveredBlock31Stack1 := (recoveredBlock31Stack1) analysisInfoOrNil.
            recoveredBlock31PC := 41.
        ].
        recoveredBlock31Step = 41 ifTrue: [
            (recoveredBlock31Stack1 ~~ nil) ifTrue: [recoveredBlock31PC := 49] ifFalse: [recoveredBlock31PC := 44].
        ].
        recoveredBlock31Step = 44 ifTrue: [
            recoveredBlock31Stack1 := self.
            recoveredBlock31PC := 45.
        ].
        recoveredBlock31Step = 45 ifTrue: [
            recoveredBlock31Stack2 := 'Global analysis information not available'.
            recoveredBlock31PC := 47.
        ].
        recoveredBlock31Step = 47 ifTrue: [
            (recoveredBlock31Stack1) mdlFatalExpect: (recoveredBlock31Stack2).
            recoveredBlock31PC := 49.
        ].
        recoveredBlock31Step = 49 ifTrue: [
            recoveredBlock31Stack1 := recoveredBlock31Arg1.
            recoveredBlock31PC := 50.
        ].
        recoveredBlock31Step = 50 ifTrue: [
            recoveredBlock31Stack1 := (recoveredBlock31Stack1) analysisInfo.
            recoveredBlock31PC := 52.
        ].
        recoveredBlock31Step = 52 ifTrue: [
            recoveredBlock31Stack2 := recoveredArg1.
            recoveredBlock31PC := 55.
        ].
        recoveredBlock31Step = 55 ifTrue: [
            recoveredBlock31Stack3 := recoveredArg2.
            recoveredBlock31PC := 58.
        ].
        recoveredBlock31Step = 58 ifTrue: [
            recoveredBlock31Stack1 := (recoveredBlock31Stack1) allUsedResources: (recoveredBlock31Stack2) visitedExecutables: (recoveredBlock31Stack3).
            recoveredBlock31PC := 60.
        ].
        recoveredBlock31Step = 60 ifTrue: [
            recoveredBlock31Result := recoveredBlock31Stack1.
            recoveredBlock31Done := true.
        ].
    ].
    recoveredBlock31Result
].
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x203633ac; bytecode file offset 0xc5fc8c"
!SGMdMethodAnalysisInfo methodsFor: 'recovered'!
allIssuedRTECalls: recoveredArg1 visitedExecutables: recoveredArg2
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) includes: (recoveredStack2).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := recoveredArg1.
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
            recoveredStack2 := self.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack2 := (recoveredStack2) issuedRTECalls.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            (recoveredStack1) addAll: (recoveredStack2).
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            (recoveredStack1) add: (recoveredStack2).
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack0 := (recoveredStack0) calledMethods.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := [:recoveredBlock31Arg1 | 
    | recoveredBlock31Stack0 recoveredBlock31Stack1 recoveredBlock31Stack2 recoveredBlock31Stack3 recoveredBlock31Stack4 recoveredBlock31PC recoveredBlock31Step recoveredBlock31Done recoveredBlock31Result |
    recoveredBlock31Stack0 := self.
    recoveredBlock31PC := 38.
    recoveredBlock31Done := false.
    [recoveredBlock31Done not] whileTrue: [
        recoveredBlock31Step := recoveredBlock31PC.
        recoveredBlock31Step = 38 ifTrue: [
            recoveredBlock31Stack1 := recoveredBlock31Arg1.
            recoveredBlock31PC := 39.
        ].
        recoveredBlock31Step = 39 ifTrue: [
            recoveredBlock31Stack1 := (recoveredBlock31Stack1) analysisInfoOrNil.
            recoveredBlock31PC := 41.
        ].
        recoveredBlock31Step = 41 ifTrue: [
            (recoveredBlock31Stack1 ~~ nil) ifTrue: [recoveredBlock31PC := 49] ifFalse: [recoveredBlock31PC := 44].
        ].
        recoveredBlock31Step = 44 ifTrue: [
            recoveredBlock31Stack1 := self.
            recoveredBlock31PC := 45.
        ].
        recoveredBlock31Step = 45 ifTrue: [
            recoveredBlock31Stack2 := 'Global analysis information not available'.
            recoveredBlock31PC := 47.
        ].
        recoveredBlock31Step = 47 ifTrue: [
            (recoveredBlock31Stack1) mdlFatalExpect: (recoveredBlock31Stack2).
            recoveredBlock31PC := 49.
        ].
        recoveredBlock31Step = 49 ifTrue: [
            recoveredBlock31Stack1 := recoveredBlock31Arg1.
            recoveredBlock31PC := 50.
        ].
        recoveredBlock31Step = 50 ifTrue: [
            recoveredBlock31Stack1 := (recoveredBlock31Stack1) analysisInfo.
            recoveredBlock31PC := 52.
        ].
        recoveredBlock31Step = 52 ifTrue: [
            recoveredBlock31Stack2 := recoveredArg1.
            recoveredBlock31PC := 55.
        ].
        recoveredBlock31Step = 55 ifTrue: [
            recoveredBlock31Stack3 := recoveredArg2.
            recoveredBlock31PC := 58.
        ].
        recoveredBlock31Step = 58 ifTrue: [
            recoveredBlock31Stack1 := (recoveredBlock31Stack1) allIssuedRTECalls: (recoveredBlock31Stack2) visitedExecutables: (recoveredBlock31Stack3).
            recoveredBlock31PC := 60.
        ].
        recoveredBlock31Step = 60 ifTrue: [
            recoveredBlock31Result := recoveredBlock31Stack1.
            recoveredBlock31Done := true.
        ].
    ].
    recoveredBlock31Result
].
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2038b0d8; bytecode file offset 0xc879c4"
!SGMdMethodAnalysisInfo methodsFor: 'recovered'!
inlinePrivateAdditionalMethods: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) calledMethods.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := [:block280f35c4Arg1 | 
    | block280f35c4Value0 block280f35c4Value1 |
    block280f35c4Value0 := block280f35c4Arg1.
    block280f35c4Value1 := (block280f35c4Value0) isMdlPrivateAdditional.
    block280f35c4Value1
].
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) anySatisfy: (recoveredStack1).
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := self.
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
            recoveredStack0 := (recoveredStack0) calledMethods.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := Set.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            (recoveredStack0) calledMethods: (recoveredStack1).
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := [:recoveredBlock31Arg1 | 
    | recoveredBlock31Stack0 recoveredBlock31Stack1 recoveredBlock31Stack2 recoveredBlock31Stack3 recoveredBlock31PC recoveredBlock31Step recoveredBlock31Done recoveredBlock31Result |
    recoveredBlock31Stack0 := self.
    recoveredBlock31PC := 38.
    recoveredBlock31Done := false.
    [recoveredBlock31Done not] whileTrue: [
        recoveredBlock31Step := recoveredBlock31PC.
        recoveredBlock31Step = 38 ifTrue: [
            recoveredBlock31Stack1 := recoveredBlock31Arg1.
            recoveredBlock31PC := 39.
        ].
        recoveredBlock31Step = 39 ifTrue: [
            recoveredBlock31Stack1 := (recoveredBlock31Stack1) isMdlPrivateAdditional.
            recoveredBlock31PC := 40.
        ].
        recoveredBlock31Step = 40 ifTrue: [
            (recoveredBlock31Stack1) ifTrue: [recoveredBlock31PC := 44] ifFalse: [recoveredBlock31PC := 54].
        ].
        recoveredBlock31Step = 44 ifTrue: [
            recoveredBlock31Stack1 := self.
            recoveredBlock31PC := 45.
        ].
        recoveredBlock31Step = 45 ifTrue: [
            recoveredBlock31Stack2 := recoveredBlock31Arg1.
            recoveredBlock31PC := 46.
        ].
        recoveredBlock31Step = 46 ifTrue: [
            recoveredBlock31Stack2 := (recoveredBlock31Stack2) analysisInfo.
            recoveredBlock31PC := 48.
        ].
        recoveredBlock31Step = 48 ifTrue: [
            recoveredBlock31Stack1 := (recoveredBlock31Stack1) inlineMethodAnalysisInfo: (recoveredBlock31Stack2).
            recoveredBlock31PC := 50.
        ].
        recoveredBlock31Step = 50 ifTrue: [
            recoveredBlock31PC := 59.
        ].
        recoveredBlock31Step = 54 ifTrue: [
            recoveredBlock31Stack1 := self.
            recoveredBlock31PC := 55.
        ].
        recoveredBlock31Step = 55 ifTrue: [
            recoveredBlock31Stack1 := (recoveredBlock31Stack1) calledMethods.
            recoveredBlock31PC := 56.
        ].
        recoveredBlock31Step = 56 ifTrue: [
            recoveredBlock31Stack2 := recoveredBlock31Arg1.
            recoveredBlock31PC := 57.
        ].
        recoveredBlock31Step = 57 ifTrue: [
            recoveredBlock31Stack1 := (recoveredBlock31Stack1) add: (recoveredBlock31Stack2).
            recoveredBlock31PC := 59.
        ].
        recoveredBlock31Step = 59 ifTrue: [
            recoveredBlock31Result := recoveredBlock31Stack1.
            recoveredBlock31Done := true.
        ].
    ].
    recoveredBlock31Result
].
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack1 := (recoveredStack1) sideEffects.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack1 := (recoveredStack1) inlinePrivateAdditionalMethods: (recoveredStack2).
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            (recoveredStack0) sideEffects: (recoveredStack1).
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x203febac; bytecode file offset 0xcfb498"
!SGMdMethodAnalysisInfo methodsFor: 'recovered'!
updateMethodDecls: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) sideEffects.
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
            recoveredStack0 := (recoveredStack0) sideEffects.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack0) updateMethodDecls: (recoveredStack1).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := (recoveredStack0) imports.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := (recoveredStack0) isOrderedCollection.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 92] ifFalse: [recoveredPC := 24].
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := (recoveredStack0) imports.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := (recoveredStack0) isDictionary.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 92] ifFalse: [recoveredPC := 34].
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack0 := (recoveredStack0) calledMethods.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack0 := (recoveredStack0) notEmpty.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 42] ifFalse: [recoveredPC := 92].
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack0 := OrderedCollection.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack0 := (recoveredStack0) new.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack0 := (recoveredStack0) calledMethods.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack1 := [:recoveredBlock52Arg1 | 
    | recoveredBlock52Value0 recoveredBlock52Value1 recoveredBlock52Value2 recoveredBlock52Value3 recoveredBlock52Value4 |
    recoveredBlock52Value0 := recoveredArg1.
    recoveredBlock52Value1 := recoveredBlock52Arg1.
    recoveredBlock52Value2 := (recoveredBlock52Value0) lookupMethodDecl: (recoveredBlock52Value1).
    recoveredBlock52Value3 := [:recoveredBlock52Block64Arg1 | 
    | recoveredBlock52Block64Value0 recoveredBlock52Block64Value1 recoveredBlock52Block64Value2 |
    recoveredBlock52Block64Value0 := recoveredLocal1.
    recoveredBlock52Block64Value1 := recoveredBlock52Block64Arg1.
    recoveredBlock52Block64Value2 := (recoveredBlock52Block64Value0) add: (recoveredBlock52Block64Value1).
    recoveredBlock52Block64Value2
].
    recoveredBlock52Value4 := (recoveredBlock52Value2) ifNotNil: (recoveredBlock52Value3).
    recoveredBlock52Value4
].
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            (recoveredStack0) calledMethods: (recoveredStack1).
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20436b80; bytecode file offset 0xd3346c"
!SGMdMethodAnalysisInfo methodsFor: 'recovered'!
allUsedMsgs: recoveredArg1 visitedExecutables: recoveredArg2
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) includes: (recoveredStack2).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := (recoveredStack0) usedMessages.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := [:recoveredBlock17Arg1 | 
    | recoveredBlock17Value0 recoveredBlock17Value1 recoveredBlock17Value2 recoveredBlock17Value3 recoveredBlock17Value4 recoveredBlock17Value5 |
    recoveredBlock17Value0 := recoveredArg1.
    recoveredBlock17Value1 := recoveredBlock17Arg1.
    recoveredBlock17Value2 := (recoveredBlock17Value1) mdlMessageKey.
    recoveredBlock17Value3 := [
    | recoveredBlock17Block31Value0 recoveredBlock17Block31Value1 |
    recoveredBlock17Block31Value0 := recoveredBlock17Arg1.
    recoveredBlock17Block31Value1 := (recoveredBlock17Block31Value0) copy.
    recoveredBlock17Block31Value1
].
    recoveredBlock17Value4 := [:recoveredBlock17Block43Arg1 | 
    | recoveredBlock17Block43Value0 recoveredBlock17Block43Value1 recoveredBlock17Block43Value2 |
    recoveredBlock17Block43Value0 := recoveredBlock17Block43Arg1.
    recoveredBlock17Block43Value1 := recoveredBlock17Arg1.
    recoveredBlock17Block43Value2 := (recoveredBlock17Block43Value0) mergeWith: (recoveredBlock17Block43Value1).
    recoveredBlock17Block43Value2
].
    recoveredBlock17Value5 := (recoveredBlock17Value0) at: (recoveredBlock17Value2) ifAbsentPut: (recoveredBlock17Value3) ifPresent: (recoveredBlock17Value4).
    recoveredBlock17Value5
].
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack0 := recoveredArg2.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            (recoveredStack0) add: (recoveredStack1).
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack0 := (recoveredStack0) calledMethods.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack1 := [:recoveredBlock72Arg1 | 
    | recoveredBlock72Stack0 recoveredBlock72Stack1 recoveredBlock72Stack2 recoveredBlock72Stack3 recoveredBlock72Stack4 recoveredBlock72PC recoveredBlock72Step recoveredBlock72Done recoveredBlock72Result |
    recoveredBlock72Stack0 := self.
    recoveredBlock72PC := 78.
    recoveredBlock72Done := false.
    [recoveredBlock72Done not] whileTrue: [
        recoveredBlock72Step := recoveredBlock72PC.
        recoveredBlock72Step = 78 ifTrue: [
            recoveredBlock72Stack1 := recoveredBlock72Arg1.
            recoveredBlock72PC := 79.
        ].
        recoveredBlock72Step = 79 ifTrue: [
            recoveredBlock72Stack1 := (recoveredBlock72Stack1) analysisInfoOrNil.
            recoveredBlock72PC := 81.
        ].
        recoveredBlock72Step = 81 ifTrue: [
            (recoveredBlock72Stack1 ~~ nil) ifTrue: [recoveredBlock72PC := 89] ifFalse: [recoveredBlock72PC := 84].
        ].
        recoveredBlock72Step = 84 ifTrue: [
            recoveredBlock72Stack1 := self.
            recoveredBlock72PC := 85.
        ].
        recoveredBlock72Step = 85 ifTrue: [
            recoveredBlock72Stack2 := 'Global analysis information not available'.
            recoveredBlock72PC := 87.
        ].
        recoveredBlock72Step = 87 ifTrue: [
            (recoveredBlock72Stack1) mdlFatalExpect: (recoveredBlock72Stack2).
            recoveredBlock72PC := 89.
        ].
        recoveredBlock72Step = 89 ifTrue: [
            recoveredBlock72Stack1 := recoveredBlock72Arg1.
            recoveredBlock72PC := 90.
        ].
        recoveredBlock72Step = 90 ifTrue: [
            recoveredBlock72Stack1 := (recoveredBlock72Stack1) analysisInfo.
            recoveredBlock72PC := 92.
        ].
        recoveredBlock72Step = 92 ifTrue: [
            recoveredBlock72Stack2 := recoveredArg1.
            recoveredBlock72PC := 95.
        ].
        recoveredBlock72Step = 95 ifTrue: [
            recoveredBlock72Stack3 := recoveredArg2.
            recoveredBlock72PC := 98.
        ].
        recoveredBlock72Step = 98 ifTrue: [
            recoveredBlock72Stack1 := (recoveredBlock72Stack1) allUsedMsgs: (recoveredBlock72Stack2) visitedExecutables: (recoveredBlock72Stack3).
            recoveredBlock72PC := 100.
        ].
        recoveredBlock72Step = 100 ifTrue: [
            recoveredBlock72Result := recoveredBlock72Stack1.
            recoveredBlock72Done := true.
        ].
    ].
    recoveredBlock72Result
].
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2062cc94; bytecode file offset 0xf2960c"
!SGMdMethodAnalysisInfo methodsFor: 'recovered'!
asDOM: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack2 := (recoveredStack2) class.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack2 := (recoveredStack2) xmlElementName.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := (recoveredStack1) createElement: (recoveredStack2).
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredLocal5 := recoveredStack1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := 'name'.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack3 := (recoveredStack3) methodDecl.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack3 := (recoveredStack3) mdlName.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack3 := (recoveredStack3) mdlLabel.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            (recoveredStack1) setAttribute: (recoveredStack2) value: (recoveredStack3).
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack2 := 'alias'.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack3 := (recoveredStack3) methodDecl.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack3 := (recoveredStack3) mdlName.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack3 := (recoveredStack3) mdlKey.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack3 := (recoveredStack3) aliasAsIdString.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            (recoveredStack1) setAttribute: (recoveredStack2) value: (recoveredStack3).
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack0 := (recoveredStack0) calledMethods.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack1 := [:recoveredBlock46Arg1 | 
    | recoveredBlock46Local1 recoveredBlock46Value0 recoveredBlock46Value1 recoveredBlock46Value2 recoveredBlock46Value3 recoveredBlock46Value4 recoveredBlock46Value5 recoveredBlock46Value6 recoveredBlock46Value7 recoveredBlock46Value8 recoveredBlock46Value9 recoveredBlock46Value10 recoveredBlock46Value11 recoveredBlock46Value12 |
    recoveredBlock46Value0 := recoveredArg1.
    recoveredBlock46Value1 := (self) class.
    recoveredBlock46Value2 := (recoveredBlock46Value1) xmlCalledMethodName.
    recoveredBlock46Value3 := (recoveredBlock46Value0) createElement: (recoveredBlock46Value2).
    recoveredBlock46Local1 := recoveredBlock46Value3.
    recoveredBlock46Value4 := recoveredBlock46Arg1.
    recoveredBlock46Value5 := (recoveredBlock46Value4) mdlName.
    recoveredBlock46Value6 := recoveredBlock46Arg1.
    recoveredBlock46Value7 := (recoveredBlock46Value6) scope.
    recoveredBlock46Value8 := (self) methodDecl.
    recoveredBlock46Value9 := recoveredBlock46Local1.
    (self) addName: (recoveredBlock46Value5) scope: (recoveredBlock46Value7) method: (recoveredBlock46Value8) toElement: (recoveredBlock46Value9).
    recoveredBlock46Value10 := recoveredLocal5.
    recoveredBlock46Value11 := recoveredBlock46Local1.
    recoveredBlock46Value12 := (recoveredBlock46Value10) appendChild: (recoveredBlock46Value11).
    recoveredBlock46Value12
].
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack0 := (recoveredStack0) usedResources.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack1 := [:recoveredBlock86Arg1 | 
    | recoveredBlock86Local1 recoveredBlock86Value0 recoveredBlock86Value1 recoveredBlock86Value2 recoveredBlock86Value3 recoveredBlock86Value4 recoveredBlock86Value5 recoveredBlock86Value6 recoveredBlock86Value7 recoveredBlock86Value8 recoveredBlock86Value9 recoveredBlock86Value10 recoveredBlock86Value11 |
    recoveredBlock86Value0 := recoveredArg1.
    recoveredBlock86Value1 := (self) class.
    recoveredBlock86Value2 := (recoveredBlock86Value1) xmlResourceName.
    recoveredBlock86Value3 := (recoveredBlock86Value0) createElement: (recoveredBlock86Value2).
    recoveredBlock86Local1 := recoveredBlock86Value3.
    recoveredBlock86Value4 := recoveredBlock86Arg1.
    recoveredBlock86Value5 := recoveredBlock86Arg1.
    recoveredBlock86Value6 := (recoveredBlock86Value5) scope.
    recoveredBlock86Value7 := (self) methodDecl.
    recoveredBlock86Value8 := recoveredBlock86Local1.
    (self) addName: (recoveredBlock86Value4) scope: (recoveredBlock86Value6) method: (recoveredBlock86Value7) toElement: (recoveredBlock86Value8).
    recoveredBlock86Value9 := recoveredLocal5.
    recoveredBlock86Value10 := recoveredBlock86Local1.
    recoveredBlock86Value11 := (recoveredBlock86Value9) appendChild: (recoveredBlock86Value10).
    recoveredBlock86Value11
].
            recoveredPC := 119.
        ].
        recoveredStep = 119 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 121.
        ].
        recoveredStep = 121 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 122.
        ].
        recoveredStep = 122 ifTrue: [
            recoveredStack0 := (recoveredStack0) usedMessages.
            recoveredPC := 124.
        ].
        recoveredStep = 124 ifTrue: [
            recoveredStack1 := [:recoveredBlock124Arg1 | 
    | recoveredBlock124Local1 recoveredBlock124Value0 recoveredBlock124Value1 recoveredBlock124Value2 recoveredBlock124Value3 recoveredBlock124Value4 recoveredBlock124Value5 recoveredBlock124Value6 recoveredBlock124Value7 recoveredBlock124Value8 recoveredBlock124Value9 recoveredBlock124Value10 recoveredBlock124Value11 recoveredBlock124Value12 recoveredBlock124Value13 recoveredBlock124Value14 recoveredBlock124Value15 recoveredBlock124Value16 recoveredBlock124Value17 recoveredBlock124Value18 recoveredBlock124Value19 recoveredBlock124Value20 recoveredBlock124Value21 |
    recoveredBlock124Value0 := recoveredArg1.
    recoveredBlock124Value1 := (self) class.
    recoveredBlock124Value2 := (recoveredBlock124Value1) xmlMessageName.
    recoveredBlock124Value3 := (recoveredBlock124Value0) createElement: (recoveredBlock124Value2).
    recoveredBlock124Local1 := recoveredBlock124Value3.
    recoveredBlock124Value4 := recoveredBlock124Arg1.
    recoveredBlock124Value5 := (recoveredBlock124Value4) msgDecl.
    recoveredBlock124Value6 := recoveredBlock124Arg1.
    recoveredBlock124Value7 := (recoveredBlock124Value6) msgDecl.
    recoveredBlock124Value8 := (recoveredBlock124Value7) scope.
    recoveredBlock124Value9 := (self) methodDecl.
    recoveredBlock124Value10 := recoveredBlock124Local1.
    (self) addName: (recoveredBlock124Value5) scope: (recoveredBlock124Value8) method: (recoveredBlock124Value9) toElement: (recoveredBlock124Value10).
    recoveredBlock124Value11 := recoveredBlock124Local1.
    recoveredBlock124Value12 := recoveredBlock124Arg1.
    recoveredBlock124Value13 := (recoveredBlock124Value12) msgUsage.
    recoveredBlock124Value14 := (recoveredBlock124Value13) asString.
    (recoveredBlock124Value11) setAttribute: ('usage') value: (recoveredBlock124Value14).
    recoveredBlock124Value15 := recoveredBlock124Local1.
    recoveredBlock124Value16 := recoveredBlock124Arg1.
    recoveredBlock124Value17 := (recoveredBlock124Value16) msgAccess.
    recoveredBlock124Value18 := (recoveredBlock124Value17) asString.
    (recoveredBlock124Value15) setAttribute: ('access') value: (recoveredBlock124Value18).
    recoveredBlock124Value19 := recoveredLocal5.
    recoveredBlock124Value20 := recoveredBlock124Local1.
    recoveredBlock124Value21 := (recoveredBlock124Value19) appendChild: (recoveredBlock124Value20).
    recoveredBlock124Value21
].
            recoveredPC := 181.
        ].
        recoveredStep = 181 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 183.
        ].
        recoveredStep = 183 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 184.
        ].
        recoveredStep = 184 ifTrue: [
            recoveredStack0 := (recoveredStack0) issuedRTECalls.
            recoveredPC := 186.
        ].
        recoveredStep = 186 ifTrue: [
            recoveredStack1 := [:recoveredBlock186Arg1 | 
    | recoveredBlock186Local1 recoveredBlock186Local2 recoveredBlock186Stack0 recoveredBlock186Stack1 recoveredBlock186Stack2 recoveredBlock186Stack3 recoveredBlock186Stack4 recoveredBlock186Stack5 recoveredBlock186Stack6 recoveredBlock186PC recoveredBlock186Step recoveredBlock186Done recoveredBlock186Result |
    recoveredBlock186Stack0 := self.
    recoveredBlock186PC := 192.
    recoveredBlock186Done := false.
    [recoveredBlock186Done not] whileTrue: [
        recoveredBlock186Step := recoveredBlock186PC.
        recoveredBlock186Step = 192 ifTrue: [
            recoveredBlock186Stack1 := recoveredArg1.
            recoveredBlock186PC := 195.
        ].
        recoveredBlock186Step = 195 ifTrue: [
            recoveredBlock186Stack2 := self.
            recoveredBlock186PC := 196.
        ].
        recoveredBlock186Step = 196 ifTrue: [
            recoveredBlock186Stack2 := (recoveredBlock186Stack2) class.
            recoveredBlock186PC := 197.
        ].
        recoveredBlock186Step = 197 ifTrue: [
            recoveredBlock186Stack2 := (recoveredBlock186Stack2) xmlRTECallName.
            recoveredBlock186PC := 199.
        ].
        recoveredBlock186Step = 199 ifTrue: [
            recoveredBlock186Stack1 := (recoveredBlock186Stack1) createElement: (recoveredBlock186Stack2).
            recoveredBlock186PC := 200.
        ].
        recoveredBlock186Step = 200 ifTrue: [
            recoveredBlock186Local2 := recoveredBlock186Stack1.
            recoveredBlock186PC := 203.
        ].
        recoveredBlock186Step = 203 ifTrue: [
            recoveredBlock186Stack1 := recoveredBlock186Local2.
            recoveredBlock186PC := 206.
        ].
        recoveredBlock186Step = 206 ifTrue: [
            recoveredBlock186Stack2 := 'name'.
            recoveredBlock186PC := 208.
        ].
        recoveredBlock186Step = 208 ifTrue: [
            recoveredBlock186Stack3 := recoveredBlock186Arg1.
            recoveredBlock186PC := 211.
        ].
        recoveredBlock186Step = 211 ifTrue: [
            recoveredBlock186Stack3 := (recoveredBlock186Stack3) name.
            recoveredBlock186PC := 213.
        ].
        recoveredBlock186Step = 213 ifTrue: [
            (recoveredBlock186Stack1) setAttribute: (recoveredBlock186Stack2) value: (recoveredBlock186Stack3).
            recoveredBlock186PC := 215.
        ].
        recoveredBlock186Step = 215 ifTrue: [
            recoveredBlock186Stack1 := recoveredBlock186Arg1.
            recoveredBlock186PC := 218.
        ].
        recoveredBlock186Step = 218 ifTrue: [
            recoveredBlock186Stack1 := (recoveredBlock186Stack1) operation.
            recoveredBlock186PC := 220.
        ].
        recoveredBlock186Step = 220 ifTrue: [
            (recoveredBlock186Stack1 == nil) ifTrue: [recoveredBlock186PC := 269] ifFalse: [recoveredBlock186PC := 224].
        ].
        recoveredBlock186Step = 224 ifTrue: [
            recoveredBlock186Stack1 := recoveredArg1.
            recoveredBlock186PC := 227.
        ].
        recoveredBlock186Step = 227 ifTrue: [
            recoveredBlock186Stack2 := self.
            recoveredBlock186PC := 228.
        ].
        recoveredBlock186Step = 228 ifTrue: [
            recoveredBlock186Stack2 := (recoveredBlock186Stack2) class.
            recoveredBlock186PC := 229.
        ].
        recoveredBlock186Step = 229 ifTrue: [
            recoveredBlock186Stack2 := (recoveredBlock186Stack2) xmlOperationName.
            recoveredBlock186PC := 231.
        ].
        recoveredBlock186Step = 231 ifTrue: [
            recoveredBlock186Stack1 := (recoveredBlock186Stack1) createElement: (recoveredBlock186Stack2).
            recoveredBlock186PC := 232.
        ].
        recoveredBlock186Step = 232 ifTrue: [
            recoveredBlock186Local1 := recoveredBlock186Stack1.
            recoveredBlock186PC := 235.
        ].
        recoveredBlock186Step = 235 ifTrue: [
            recoveredBlock186Stack1 := self.
            recoveredBlock186PC := 236.
        ].
        recoveredBlock186Step = 236 ifTrue: [
            recoveredBlock186Stack2 := recoveredBlock186Arg1.
            recoveredBlock186PC := 239.
        ].
        recoveredBlock186Step = 239 ifTrue: [
            recoveredBlock186Stack2 := (recoveredBlock186Stack2) operation.
            recoveredBlock186PC := 241.
        ].
        recoveredBlock186Step = 241 ifTrue: [
            recoveredBlock186Stack3 := recoveredBlock186Arg1.
            recoveredBlock186PC := 244.
        ].
        recoveredBlock186Step = 244 ifTrue: [
            recoveredBlock186Stack3 := (recoveredBlock186Stack3) operation.
            recoveredBlock186PC := 246.
        ].
        recoveredBlock186Step = 246 ifTrue: [
            recoveredBlock186Stack3 := (recoveredBlock186Stack3) scope.
            recoveredBlock186PC := 248.
        ].
        recoveredBlock186Step = 248 ifTrue: [
            recoveredBlock186Stack4 := self.
            recoveredBlock186PC := 249.
        ].
        recoveredBlock186Step = 249 ifTrue: [
            recoveredBlock186Stack4 := (recoveredBlock186Stack4) methodDecl.
            recoveredBlock186PC := 251.
        ].
        recoveredBlock186Step = 251 ifTrue: [
            recoveredBlock186Stack5 := recoveredBlock186Local1.
            recoveredBlock186PC := 254.
        ].
        recoveredBlock186Step = 254 ifTrue: [
            (recoveredBlock186Stack1) addName: (recoveredBlock186Stack2) scope: (recoveredBlock186Stack3) method: (recoveredBlock186Stack4) toElement: (recoveredBlock186Stack5).
            recoveredBlock186PC := 257.
        ].
        recoveredBlock186Step = 257 ifTrue: [
            recoveredBlock186Stack1 := recoveredBlock186Local2.
            recoveredBlock186PC := 260.
        ].
        recoveredBlock186Step = 260 ifTrue: [
            recoveredBlock186Stack2 := recoveredBlock186Local1.
            recoveredBlock186PC := 263.
        ].
        recoveredBlock186Step = 263 ifTrue: [
            (recoveredBlock186Stack1) appendChild: (recoveredBlock186Stack2).
            recoveredBlock186PC := 265.
        ].
        recoveredBlock186Step = 265 ifTrue: [
            recoveredBlock186Stack1 := nil.
            recoveredBlock186PC := 266.
        ].
        recoveredBlock186Step = 266 ifTrue: [
            recoveredBlock186Local1 := recoveredBlock186Stack1.
            recoveredBlock186PC := 269.
        ].
        recoveredBlock186Step = 269 ifTrue: [
            recoveredBlock186Stack1 := recoveredBlock186Arg1.
            recoveredBlock186PC := 272.
        ].
        recoveredBlock186Step = 272 ifTrue: [
            recoveredBlock186Stack1 := (recoveredBlock186Stack1) argReceiver.
            recoveredBlock186PC := 274.
        ].
        recoveredBlock186Step = 274 ifTrue: [
            recoveredBlock186Stack1 := (recoveredBlock186Stack1) accessChain.
            recoveredBlock186PC := 276.
        ].
        recoveredBlock186Step = 276 ifTrue: [
            recoveredBlock186Stack2 := [:recoveredBlock186Block276Arg1 | 
    | recoveredBlock186Block276Local1 recoveredBlock186Block276Value0 recoveredBlock186Block276Value1 recoveredBlock186Block276Value2 recoveredBlock186Block276Value3 recoveredBlock186Block276Value4 recoveredBlock186Block276Value5 recoveredBlock186Block276Value6 recoveredBlock186Block276Value7 recoveredBlock186Block276Value8 recoveredBlock186Block276Value9 recoveredBlock186Block276Value10 recoveredBlock186Block276Value11 |
    recoveredBlock186Block276Value0 := recoveredArg1.
    recoveredBlock186Block276Value1 := (self) class.
    recoveredBlock186Block276Value2 := (recoveredBlock186Block276Value1) xmlVarDeclName.
    recoveredBlock186Block276Value3 := (recoveredBlock186Block276Value0) createElement: (recoveredBlock186Block276Value2).
    recoveredBlock186Block276Local1 := recoveredBlock186Block276Value3.
    recoveredBlock186Block276Value4 := recoveredBlock186Block276Arg1.
    recoveredBlock186Block276Value5 := recoveredBlock186Block276Arg1.
    recoveredBlock186Block276Value6 := (recoveredBlock186Block276Value5) scope.
    recoveredBlock186Block276Value7 := (self) methodDecl.
    recoveredBlock186Block276Value8 := recoveredBlock186Block276Local1.
    (self) addName: (recoveredBlock186Block276Value4) scope: (recoveredBlock186Block276Value6) method: (recoveredBlock186Block276Value7) toElement: (recoveredBlock186Block276Value8).
    recoveredBlock186Block276Value9 := recoveredBlock186Local2.
    recoveredBlock186Block276Value10 := recoveredBlock186Block276Local1.
    recoveredBlock186Block276Value11 := (recoveredBlock186Block276Value9) appendChild: (recoveredBlock186Block276Value10).
    recoveredBlock186Block276Value11
].
            recoveredBlock186PC := 309.
        ].
        recoveredBlock186Step = 309 ifTrue: [
            (recoveredBlock186Stack1) do: (recoveredBlock186Stack2).
            recoveredBlock186PC := 311.
        ].
        recoveredBlock186Step = 311 ifTrue: [
            recoveredBlock186Stack1 := recoveredLocal5.
            recoveredBlock186PC := 314.
        ].
        recoveredBlock186Step = 314 ifTrue: [
            recoveredBlock186Stack2 := recoveredBlock186Local2.
            recoveredBlock186PC := 317.
        ].
        recoveredBlock186Step = 317 ifTrue: [
            recoveredBlock186Stack1 := (recoveredBlock186Stack1) appendChild: (recoveredBlock186Stack2).
            recoveredBlock186PC := 319.
        ].
        recoveredBlock186Step = 319 ifTrue: [
            recoveredBlock186Result := recoveredBlock186Stack1.
            recoveredBlock186Done := true.
        ].
    ].
    recoveredBlock186Result
].
            recoveredPC := 320.
        ].
        recoveredStep = 320 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 322.
        ].
        recoveredStep = 322 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 323.
        ].
        recoveredStep = 323 ifTrue: [
            recoveredStack0 := (recoveredStack0) sideEffects.
            recoveredPC := 325.
        ].
        recoveredStep = 325 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 406] ifFalse: [recoveredPC := 328].
        ].
        recoveredStep = 328 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 331.
        ].
        recoveredStep = 331 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 332.
        ].
        recoveredStep = 332 ifTrue: [
            recoveredStack1 := (recoveredStack1) class.
            recoveredPC := 333.
        ].
        recoveredStep = 333 ifTrue: [
            recoveredStack1 := (recoveredStack1) xmlSideEffectsName.
            recoveredPC := 335.
        ].
        recoveredStep = 335 ifTrue: [
            recoveredStack0 := (recoveredStack0) createElement: (recoveredStack1).
            recoveredPC := 336.
        ].
        recoveredStep = 336 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 339.
        ].
        recoveredStep = 339 ifTrue: [
            recoveredStack0 := SGGeneratorFactory.
            recoveredPC := 341.
        ].
        recoveredStep = 341 ifTrue: [
            recoveredStack0 := (recoveredStack0) create.
            recoveredPC := 343.
        ].
        recoveredStep = 343 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 344.
        ].
        recoveredStep = 344 ifTrue: [
            recoveredStack1 := (recoveredStack1) methodDecl.
            recoveredPC := 346.
        ].
        recoveredStep = 346 ifTrue: [
            recoveredStack0 := (recoveredStack0) createGlobalAnalysisMethodContext: (recoveredStack1).
            recoveredPC := 348.
        ].
        recoveredStep = 348 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 351.
        ].
        recoveredStep = 351 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 352.
        ].
        recoveredStep = 352 ifTrue: [
            recoveredStack0 := (recoveredStack0) sideEffects.
            recoveredPC := 354.
        ].
        recoveredStep = 354 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 357.
        ].
        recoveredStep = 357 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 360.
        ].
        recoveredStep = 360 ifTrue: [
            recoveredStack0 := (recoveredStack0) asDOM: (recoveredStack1) context: (recoveredStack2).
            recoveredPC := 362.
        ].
        recoveredStep = 362 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 365.
        ].
        recoveredStep = 365 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 368.
        ].
        recoveredStep = 368 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 371.
        ].
        recoveredStep = 371 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 374.
        ].
        recoveredStep = 374 ifTrue: [
            recoveredStack1 := (recoveredStack1) sourceMapAsXML: (recoveredStack2).
            recoveredPC := 376.
        ].
        recoveredStep = 376 ifTrue: [
            (recoveredStack0) appendChild: (recoveredStack1).
            recoveredPC := 378.
        ].
        recoveredStep = 378 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 381.
        ].
        recoveredStep = 381 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 384.
        ].
        recoveredStep = 384 ifTrue: [
            (recoveredStack0) appendChild: (recoveredStack1).
            recoveredPC := 386.
        ].
        recoveredStep = 386 ifTrue: [
            recoveredStack0 := recoveredLocal5.
            recoveredPC := 389.
        ].
        recoveredStep = 389 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 392.
        ].
        recoveredStep = 392 ifTrue: [
            (recoveredStack0) appendChild: (recoveredStack1).
            recoveredPC := 394.
        ].
        recoveredStep = 394 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 395.
        ].
        recoveredStep = 395 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 396.
        ].
        recoveredStep = 396 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 399.
        ].
        recoveredStep = 399 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 400.
        ].
        recoveredStep = 400 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 403.
        ].
        recoveredStep = 403 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 406.
        ].
        recoveredStep = 406 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 407.
        ].
        recoveredStep = 407 ifTrue: [
            recoveredStack0 := (recoveredStack0) usedElements.
            recoveredPC := 409.
        ].
        recoveredStep = 409 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 459] ifFalse: [recoveredPC := 412].
        ].
        recoveredStep = 412 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 415.
        ].
        recoveredStep = 415 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 416.
        ].
        recoveredStep = 416 ifTrue: [
            recoveredStack1 := (recoveredStack1) class.
            recoveredPC := 417.
        ].
        recoveredStep = 417 ifTrue: [
            recoveredStack1 := (recoveredStack1) xmlUsedElementsName.
            recoveredPC := 419.
        ].
        recoveredStep = 419 ifTrue: [
            recoveredStack0 := (recoveredStack0) createElement: (recoveredStack1).
            recoveredPC := 420.
        ].
        recoveredStep = 420 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 423.
        ].
        recoveredStep = 423 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 424.
        ].
        recoveredStep = 424 ifTrue: [
            recoveredStack0 := (recoveredStack0) usedElements.
            recoveredPC := 426.
        ].
        recoveredStep = 426 ifTrue: [
            recoveredStack1 := [:recoveredBlock426Arg1 | 
    | recoveredBlock426Value0 recoveredBlock426Value1 recoveredBlock426Value2 recoveredBlock426Value3 recoveredBlock426Value4 |
    recoveredBlock426Value0 := (self) class.
    recoveredBlock426Value1 := recoveredBlock426Arg1.
    recoveredBlock426Value2 := (self) methodDecl.
    recoveredBlock426Value3 := recoveredLocal3.
    recoveredBlock426Value4 := (recoveredBlock426Value0) varDeclElement: (recoveredBlock426Value1) ownerMethod: (nil) method: (recoveredBlock426Value2) owner: (recoveredBlock426Value3).
    recoveredBlock426Value4
].
            recoveredPC := 445.
        ].
        recoveredStep = 445 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 447.
        ].
        recoveredStep = 447 ifTrue: [
            recoveredStack0 := recoveredLocal5.
            recoveredPC := 450.
        ].
        recoveredStep = 450 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 453.
        ].
        recoveredStep = 453 ifTrue: [
            (recoveredStack0) appendChild: (recoveredStack1).
            recoveredPC := 455.
        ].
        recoveredStep = 455 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 456.
        ].
        recoveredStep = 456 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 459.
        ].
        recoveredStep = 459 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 460.
        ].
        recoveredStep = 460 ifTrue: [
            recoveredStack0 := (recoveredStack0) referenceAnalysis.
            recoveredPC := 462.
        ].
        recoveredStep = 462 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 544] ifFalse: [recoveredPC := 466].
        ].
        recoveredStep = 466 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 469.
        ].
        recoveredStep = 469 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 470.
        ].
        recoveredStep = 470 ifTrue: [
            recoveredStack1 := (recoveredStack1) class.
            recoveredPC := 471.
        ].
        recoveredStep = 471 ifTrue: [
            recoveredStack1 := (recoveredStack1) xmlReferenceAnalysisName.
            recoveredPC := 473.
        ].
        recoveredStep = 473 ifTrue: [
            recoveredStack0 := (recoveredStack0) createElement: (recoveredStack1).
            recoveredPC := 474.
        ].
        recoveredStep = 474 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 477.
        ].
        recoveredStep = 477 ifTrue: [
            recoveredStack0 := SGGeneratorFactory.
            recoveredPC := 479.
        ].
        recoveredStep = 479 ifTrue: [
            recoveredStack0 := (recoveredStack0) create.
            recoveredPC := 481.
        ].
        recoveredStep = 481 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 482.
        ].
        recoveredStep = 482 ifTrue: [
            recoveredStack1 := (recoveredStack1) methodDecl.
            recoveredPC := 484.
        ].
        recoveredStep = 484 ifTrue: [
            recoveredStack0 := (recoveredStack0) createGlobalAnalysisMethodContext: (recoveredStack1).
            recoveredPC := 486.
        ].
        recoveredStep = 486 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 489.
        ].
        recoveredStep = 489 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 490.
        ].
        recoveredStep = 490 ifTrue: [
            recoveredStack0 := (recoveredStack0) referenceAnalysis.
            recoveredPC := 492.
        ].
        recoveredStep = 492 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 495.
        ].
        recoveredStep = 495 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 498.
        ].
        recoveredStep = 498 ifTrue: [
            recoveredStack0 := (recoveredStack0) asDOM: (recoveredStack1) context: (recoveredStack2).
            recoveredPC := 500.
        ].
        recoveredStep = 500 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 503.
        ].
        recoveredStep = 503 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 506.
        ].
        recoveredStep = 506 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 509.
        ].
        recoveredStep = 509 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 512.
        ].
        recoveredStep = 512 ifTrue: [
            recoveredStack1 := (recoveredStack1) sourceMapAsXML: (recoveredStack2).
            recoveredPC := 514.
        ].
        recoveredStep = 514 ifTrue: [
            (recoveredStack0) appendChild: (recoveredStack1).
            recoveredPC := 516.
        ].
        recoveredStep = 516 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 519.
        ].
        recoveredStep = 519 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 522.
        ].
        recoveredStep = 522 ifTrue: [
            (recoveredStack0) appendChild: (recoveredStack1).
            recoveredPC := 524.
        ].
        recoveredStep = 524 ifTrue: [
            recoveredStack0 := recoveredLocal5.
            recoveredPC := 527.
        ].
        recoveredStep = 527 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 530.
        ].
        recoveredStep = 530 ifTrue: [
            (recoveredStack0) appendChild: (recoveredStack1).
            recoveredPC := 532.
        ].
        recoveredStep = 532 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 533.
        ].
        recoveredStep = 533 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 534.
        ].
        recoveredStep = 534 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 537.
        ].
        recoveredStep = 537 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 538.
        ].
        recoveredStep = 538 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 541.
        ].
        recoveredStep = 541 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 544.
        ].
        recoveredStep = 544 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 545.
        ].
        recoveredStep = 545 ifTrue: [
            recoveredStack0 := (recoveredStack0) verifyCalls.
            recoveredPC := 547.
        ].
        recoveredStep = 547 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 597] ifFalse: [recoveredPC := 550].
        ].
        recoveredStep = 550 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 553.
        ].
        recoveredStep = 553 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 554.
        ].
        recoveredStep = 554 ifTrue: [
            recoveredStack1 := (recoveredStack1) class.
            recoveredPC := 555.
        ].
        recoveredStep = 555 ifTrue: [
            recoveredStack1 := (recoveredStack1) xmlVerifyCalls.
            recoveredPC := 557.
        ].
        recoveredStep = 557 ifTrue: [
            recoveredStack0 := (recoveredStack0) createElement: (recoveredStack1).
            recoveredPC := 558.
        ].
        recoveredStep = 558 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 561.
        ].
        recoveredStep = 561 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 562.
        ].
        recoveredStep = 562 ifTrue: [
            recoveredStack0 := (recoveredStack0) verifyCalls.
            recoveredPC := 564.
        ].
        recoveredStep = 564 ifTrue: [
            recoveredStack1 := [:recoveredBlock564Arg1 | 
    | recoveredBlock564Value0 recoveredBlock564Value1 recoveredBlock564Value2 recoveredBlock564Value3 recoveredBlock564Value4 |
    recoveredBlock564Value0 := (self) class.
    recoveredBlock564Value1 := recoveredBlock564Arg1.
    recoveredBlock564Value2 := (self) methodDecl.
    recoveredBlock564Value3 := recoveredLocal3.
    recoveredBlock564Value4 := (recoveredBlock564Value0) varDeclElement: (recoveredBlock564Value1) ownerMethod: (nil) method: (recoveredBlock564Value2) owner: (recoveredBlock564Value3).
    recoveredBlock564Value4
].
            recoveredPC := 583.
        ].
        recoveredStep = 583 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 585.
        ].
        recoveredStep = 585 ifTrue: [
            recoveredStack0 := recoveredLocal5.
            recoveredPC := 588.
        ].
        recoveredStep = 588 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 591.
        ].
        recoveredStep = 591 ifTrue: [
            (recoveredStack0) appendChild: (recoveredStack1).
            recoveredPC := 593.
        ].
        recoveredStep = 593 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 594.
        ].
        recoveredStep = 594 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 597.
        ].
        recoveredStep = 597 ifTrue: [
            recoveredStack0 := recoveredLocal5.
            recoveredPC := 600.
        ].
        recoveredStep = 600 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

