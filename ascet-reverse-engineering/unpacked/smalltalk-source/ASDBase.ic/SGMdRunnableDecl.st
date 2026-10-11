"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20022ea4; bytecode file offset 0x92209c"
!SGMdRunnableDecl methodsFor: 'recovered'!
errLabelKind
    ^'runnable'
! !

"ASDBase.ic method 0x20027900; bytecode file offset 0x924260"
!SGMdRunnableDecl methodsFor: 'recovered'!
isMdlServerRunnableDecl
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) operationDecl.
    recoveredValue1 := (recoveredValue0) notNil.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2003e7d8; bytecode file offset 0x93bf94"
!SGMdRunnableDecl methodsFor: 'recovered'!
arCategory
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := SGCgAutosarSettings.
    recoveredValue1 := (recoveredValue0) categoryRunnable.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20054ffc; bytecode file offset 0x952a9c"
!SGMdRunnableDecl methodsFor: 'recovered'!
mdlAcceptNodeVisitor: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) mdlRunnableDecl: (self).
    ^recoveredValue1
! !

"ASDBase.ic method 0x2006fa68; bytecode file offset 0x96c42c"
!SGMdRunnableDecl methodsFor: 'recovered'!
operationDecl
    | recoveredValue0 |
    recoveredValue0 := operationDecl.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20070160; bytecode file offset 0x96cb7c"
!SGMdRunnableDecl methodsFor: 'recovered'!
arEvent
    | recoveredValue0 |
    recoveredValue0 := arEvent.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2007052c; bytecode file offset 0x96ce40"
!SGMdRunnableDecl methodsFor: 'recovered'!
dtVariable
    | recoveredValue0 |
    recoveredValue0 := dtVariable.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20077ad4; bytecode file offset 0x9757c8"
!SGMdRunnableDecl methodsFor: 'recovered'!
isMdlRunnableDecl
    ^true
! !

"ASDBase.ic method 0x200c60fc; bytecode file offset 0x9c29e8"
!SGMdRunnableDecl methodsFor: 'recovered'!
operationDecl: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    operationDecl := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c6650; bytecode file offset 0x9c3164"
!SGMdRunnableDecl methodsFor: 'recovered'!
arEvent: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    arEvent := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c6abc; bytecode file offset 0x9c3470"
!SGMdRunnableDecl methodsFor: 'recovered'!
dtVariable: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    dtVariable := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200f7434; bytecode file offset 0x9f4e38"
!SGMdRunnableDecl methodsFor: 'recovered'!
hasRteDtReadAccess
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) allIssuedRTECalls.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := [:block280c444cArg1 | 
    | block280c444cValue0 block280c444cValue1 |
    block280c444cValue0 := block280c444cArg1.
    block280c444cValue1 := (block280c444cValue0) isMdlRteDtRead.
    block280c444cValue1
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
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x200f7644; bytecode file offset 0x9f4e38"
!SGMdRunnableDecl methodsFor: 'recovered'!
isMdlReadWriteIRVCopiesRunnable
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) allIssuedRTECalls.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := [:block280c4764Arg1 | 
    | block280c4764Value0 block280c4764Value1 |
    block280c4764Value0 := block280c4764Arg1.
    block280c4764Value1 := (block280c4764Value0) isRteIrvIWriteRef.
    block280c4764Value1
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
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2013bd84; bytecode file offset 0xa38640"
!SGMdRunnableDecl methodsFor: 'recovered'!
allIssuedRTECalls
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := allIssuedRteCalls.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := super allIssuedRTECalls.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := allIssuedRteCalls.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2013be14; bytecode file offset 0xa386d0"
!SGMdRunnableDecl methodsFor: 'recovered'!
allUsedMsgs
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := allUsedMsgs.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := super allUsedMsgs.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := allUsedMsgs.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2017bdb4; bytecode file offset 0xa78674"
!SGMdRunnableDecl methodsFor: 'recovered'!
analyzeAllIssuedRteCalls: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := Set.
    recoveredValue1 := (recoveredValue0) new.
    allIssuedRteCalls := recoveredValue1.
    recoveredValue2 := Set.
    recoveredValue3 := (recoveredValue2) new.
    recoveredLocal1 := recoveredValue3.
    recoveredValue4 := allIssuedRteCalls.
    recoveredValue5 := recoveredLocal1.
    recoveredValue6 := recoveredArg1.
    recoveredValue7 := (self) analyzeAllIssuedRTECalls: (recoveredValue4) visited: (recoveredValue5) calledMethodsTable: (recoveredValue6) runnableDecl: (self).
    ^recoveredValue7
! !

"ASDBase.ic method 0x201cb1b0; bytecode file offset 0xac7a78"
!SGMdRunnableDecl methodsFor: 'recovered'!
requiresMdlRteDtWrite
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) arEvent.
    recoveredValue1 := [:recoveredBlock5Arg1 | 
    | recoveredBlock5Stack0 recoveredBlock5Stack1 recoveredBlock5Stack2 recoveredBlock5Stack3 recoveredBlock5PC recoveredBlock5Step recoveredBlock5Done recoveredBlock5Result |
    recoveredBlock5Stack0 := self.
    recoveredBlock5PC := 12.
    recoveredBlock5Done := false.
    [recoveredBlock5Done not] whileTrue: [
        recoveredBlock5Step := recoveredBlock5PC.
        recoveredBlock5Step = 12 ifTrue: [
            recoveredBlock5Stack1 := false.
            recoveredBlock5PC := 13.
        ].
        recoveredBlock5Step = 13 ifTrue: [
            recoveredBlock5Stack2 := recoveredBlock5Arg1.
            recoveredBlock5PC := 14.
        ].
        recoveredBlock5Step = 14 ifTrue: [
            recoveredBlock5Stack2 := (recoveredBlock5Stack2) isMdlARTimingEvent.
            recoveredBlock5PC := 15.
        ].
        recoveredBlock5Step = 15 ifTrue: [
            (recoveredBlock5Stack2) ifTrue: [recoveredBlock5PC := 18] ifFalse: [recoveredBlock5PC := 22].
        ].
        recoveredBlock5Step = 18 ifTrue: [
            recoveredBlock5PC := 19.
        ].
        recoveredBlock5Step = 19 ifTrue: [
            recoveredBlock5Stack1 := self.
            recoveredBlock5PC := 20.
        ].
        recoveredBlock5Step = 20 ifTrue: [
            recoveredBlock5Stack1 := (recoveredBlock5Stack1) generator.
            recoveredBlock5PC := 21.
        ].
        recoveredBlock5Step = 21 ifTrue: [
            recoveredBlock5Stack1 := (recoveredBlock5Stack1) supportsRteDtAccess.
            recoveredBlock5PC := 22.
        ].
        recoveredBlock5Step = 22 ifTrue: [
            ^recoveredBlock5Stack1
        ].
    ].
    recoveredBlock5Result
].
    (recoveredValue0) ifNotNil: (recoveredValue1).
    ^false
! !

