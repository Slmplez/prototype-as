"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20000388; bytecode file offset 0x8ffcfc"
!AbtNLSRequestAndResolutionManager methodsFor: 'recovered'!
makeCfsDependent
    ^self
! !

"ASDBase.ic method 0x2000c934; bytecode file offset 0x909658"
!AbtNLSRequestAndResolutionManager methodsFor: 'recovered'!
nlsUnregister: recoveredArg1
    ^false
! !

"ASDBase.ic method 0x2000cd94; bytecode file offset 0x909658"
!AbtNLSRequestAndResolutionManager methodsFor: 'recovered'!
nlsRegister: recoveredArg1
    ^false
! !

"ASDBase.ic method 0x2000dbf4; bytecode file offset 0x90a4b8"
!AbtNLSRequestAndResolutionManager methodsFor: 'recovered'!
migrateRequest: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2004e8f4; bytecode file offset 0x94d048"
!AbtNLSRequestAndResolutionManager methodsFor: 'recovered'!
requestClass
    (self) subclassResponsibility.
    ^self
! !

"ASDBase.ic method 0x2009b6d0; bytecode file offset 0x99803c"
!AbtNLSRequestAndResolutionManager methodsFor: 'recovered'!
relocalize
    (self) pruneDeadRequests.
    (self) resolveRequests.
    ^self
! !

"ASDBase.ic method 0x200b793c; bytecode file offset 0x9b4208"
!AbtNLSRequestAndResolutionManager methodsFor: 'recovered'!
addThenResolveRequest: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) addRequest: (recoveredValue0).
    (self) resolveRequests.
    ^self
! !

"ASDBase.ic method 0x200be56c; bytecode file offset 0x9bb178"
!AbtNLSRequestAndResolutionManager methodsFor: 'recovered'!
requestsAndResolutions: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    requestsAndResolutions := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200efc64; bytecode file offset 0x9ec528"
!AbtNLSRequestAndResolutionManager methodsFor: 'recovered'!
abtRelocalize
    | recoveredValue0 |
    recoveredValue0 := AbtNlsRequest.
    (recoveredValue0) defineEffectiveLocale.
    (self) pruneDeadRequests.
    (self) resolveRequests.
    ^self
! !

"ASDBase.ic method 0x20119734; bytecode file offset 0xa16880"
!AbtNLSRequestAndResolutionManager methodsFor: 'recovered'!
resolveRequests
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) requestsAndResolutions.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := [:block280c78c0Arg1 | 
    | block280c78c0Value0 block280c78c0Value1 |
    block280c78c0Value0 := block280c78c0Arg1.
    block280c78c0Value1 := (block280c78c0Value0) resolveIfNecessary.
    block280c78c0Value1
].
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20119ecc; bytecode file offset 0xa16880"
!AbtNLSRequestAndResolutionManager methodsFor: 'recovered'!
clearAllResolutionsRegardlessOfCachingStatus
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) requestsAndResolutions.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := [:block280c8424Arg1 | 
    | block280c8424Value0 block280c8424Value1 |
    block280c8424Value0 := block280c8424Arg1.
    block280c8424Value1 := (block280c8424Value0) clearResolution.
    block280c8424Value1
].
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2014ac78; bytecode file offset 0xa47538"
!AbtNLSRequestAndResolutionManager methodsFor: 'recovered'!
removeRequest: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) findRequest: (recoveredStack1).
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 17] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) requestsAndResolutions.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack0) remove: (recoveredStack1).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2017eda0; bytecode file offset 0xa7b65c"
!AbtNLSRequestAndResolutionManager methodsFor: 'recovered'!
requestsAndResolutions
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := requestsAndResolutions.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 10].
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
            recoveredStack2 := recoveredStack1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            requestsAndResolutions := recoveredStack2.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredPC := 22.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := requestsAndResolutions.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2018f5e8; bytecode file offset 0xa8bee8"
!AbtNLSRequestAndResolutionManager methodsFor: 'recovered'!
makeResident
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) requestsAndResolutions.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := [:block280d19e8Arg1 | 
    | block280d19e8Stack0 block280d19e8Stack1 block280d19e8Stack2 block280d19e8Stack3 block280d19e8PC block280d19e8Step block280d19e8Done block280d19e8Result |
    block280d19e8Stack0 := self.
    block280d19e8PC := 4.
    block280d19e8Done := false.
    [block280d19e8Done not] whileTrue: [
        block280d19e8Step := block280d19e8PC.
        block280d19e8Step = 4 ifTrue: [
            block280d19e8Stack1 := nil.
            block280d19e8PC := 5.
        ].
        block280d19e8Step = 5 ifTrue: [
            block280d19e8Stack2 := block280d19e8Arg1.
            block280d19e8PC := 6.
        ].
        block280d19e8Step = 6 ifTrue: [
            block280d19e8Stack2 := (block280d19e8Stack2) abtIsNlsRequest.
            block280d19e8PC := 7.
        ].
        block280d19e8Step = 7 ifTrue: [
            (block280d19e8Stack2) ifTrue: [block280d19e8PC := 10] ifFalse: [block280d19e8PC := 13].
        ].
        block280d19e8Step = 10 ifTrue: [
            block280d19e8PC := 11.
        ].
        block280d19e8Step = 11 ifTrue: [
            block280d19e8Stack1 := block280d19e8Arg1.
            block280d19e8PC := 12.
        ].
        block280d19e8Step = 12 ifTrue: [
            block280d19e8Stack1 := (block280d19e8Stack1) makeResident.
            block280d19e8PC := 13.
        ].
        block280d19e8Step = 13 ifTrue: [
            block280d19e8Result := block280d19e8Stack1.
            block280d19e8Done := true.
        ].
    ].
    block280d19e8Result
].
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20196a78; bytecode file offset 0xa9351c"
!AbtNLSRequestAndResolutionManager methodsFor: 'recovered'!
findRequest: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) requestsAndResolutions.
    recoveredValue1 := [:recoveredBlock5Arg1 | 
    | recoveredBlock5Value0 recoveredBlock5Value1 recoveredBlock5Value2 recoveredBlock5Value3 |
    recoveredBlock5Value0 := recoveredBlock5Arg1.
    recoveredBlock5Value1 := (recoveredBlock5Value0) request.
    recoveredBlock5Value2 := recoveredArg1.
    recoveredBlock5Value3 := (recoveredBlock5Value1) = (recoveredBlock5Value2).
    recoveredBlock5Value3
].
    recoveredValue2 := [].
    recoveredValue3 := (recoveredValue0) detect: (recoveredValue1) ifNone: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x201ed8dc; bytecode file offset 0xaea1a8"
!AbtNLSRequestAndResolutionManager methodsFor: 'recovered'!
addRequest: recoveredArg1
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
            recoveredStack0 := (recoveredStack0) findRequest: (recoveredStack1).
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 24] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) requestsAndResolutions.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) requestClass.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := (recoveredStack1) request: (recoveredStack2).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            (recoveredStack0) addLast: (recoveredStack1).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredPC := 27.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            (recoveredStack0) clearResolution.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x203da8c0; bytecode file offset 0xcd71a4"
!AbtNLSRequestAndResolutionManager methodsFor: 'recovered'!
pruneDeadRequests
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) requestsAndResolutions.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := [:recoveredBlock5Arg1 :recoveredBlock5Arg2 | 
    | recoveredBlock5Stack0 recoveredBlock5Stack1 recoveredBlock5Stack2 recoveredBlock5Stack3 recoveredBlock5Stack4 recoveredBlock5Stack5 recoveredBlock5PC recoveredBlock5Step recoveredBlock5Done recoveredBlock5Result |
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
            recoveredBlock5Stack2 := (recoveredBlock5Stack2) abtIsNlsRequest.
            recoveredBlock5PC := 15.
        ].
        recoveredBlock5Step = 15 ifTrue: [
            (recoveredBlock5Stack2) ifTrue: [recoveredBlock5PC := 27] ifFalse: [recoveredBlock5PC := 18].
        ].
        recoveredBlock5Step = 18 ifTrue: [
            recoveredBlock5PC := 19.
        ].
        recoveredBlock5Step = 19 ifTrue: [
            recoveredBlock5Stack1 := self.
            recoveredBlock5PC := 20.
        ].
        recoveredBlock5Step = 20 ifTrue: [
            recoveredBlock5Stack1 := (recoveredBlock5Stack1) requestsAndResolutions.
            recoveredBlock5PC := 21.
        ].
        recoveredBlock5Step = 21 ifTrue: [
            recoveredBlock5Stack2 := recoveredBlock5Arg2.
            recoveredBlock5PC := 22.
        ].
        recoveredBlock5Step = 22 ifTrue: [
            recoveredBlock5Stack3 := self.
            recoveredBlock5PC := 23.
        ].
        recoveredBlock5Step = 23 ifTrue: [
            recoveredBlock5Stack4 := recoveredBlock5Arg1.
            recoveredBlock5PC := 24.
        ].
        recoveredBlock5Step = 24 ifTrue: [
            recoveredBlock5Stack3 := (recoveredBlock5Stack3) migrateRequest: (recoveredBlock5Stack4).
            recoveredBlock5PC := 25.
        ].
        recoveredBlock5Step = 25 ifTrue: [
            recoveredBlock5Stack1 := (recoveredBlock5Stack1) at: (recoveredBlock5Stack2) put: (recoveredBlock5Stack3).
            recoveredBlock5PC := 27.
        ].
        recoveredBlock5Step = 27 ifTrue: [
            recoveredBlock5Result := recoveredBlock5Stack1.
            recoveredBlock5Done := true.
        ].
    ].
    recoveredBlock5Result
].
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            (recoveredStack0) doWithIndex: (recoveredStack1).
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack0 := (recoveredStack0) requestsAndResolutions.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := [:block280f7e9cArg1 | 
    | block280f7e9cStack0 block280f7e9cStack1 block280f7e9cStack2 block280f7e9cStack3 block280f7e9cPC block280f7e9cStep block280f7e9cDone block280f7e9cResult |
    block280f7e9cStack0 := self.
    block280f7e9cPC := 4.
    block280f7e9cDone := false.
    [block280f7e9cDone not] whileTrue: [
        block280f7e9cStep := block280f7e9cPC.
        block280f7e9cStep = 4 ifTrue: [
            block280f7e9cStack1 := true.
            block280f7e9cPC := 5.
        ].
        block280f7e9cStep = 5 ifTrue: [
            block280f7e9cStack2 := block280f7e9cArg1.
            block280f7e9cPC := 6.
        ].
        block280f7e9cStep = 6 ifTrue: [
            (block280f7e9cStack2 == nil) ifTrue: [block280f7e9cPC := 34] ifFalse: [block280f7e9cPC := 10].
        ].
        block280f7e9cStep = 10 ifTrue: [
            block280f7e9cPC := 11.
        ].
        block280f7e9cStep = 11 ifTrue: [
            block280f7e9cStack1 := true.
            block280f7e9cPC := 12.
        ].
        block280f7e9cStep = 12 ifTrue: [
            block280f7e9cStack2 := block280f7e9cArg1.
            block280f7e9cPC := 13.
        ].
        block280f7e9cStep = 13 ifTrue: [
            block280f7e9cStack2 := (block280f7e9cStack2) request.
            block280f7e9cPC := 15.
        ].
        block280f7e9cStep = 15 ifTrue: [
            (block280f7e9cStack2 == nil) ifTrue: [block280f7e9cPC := 34] ifFalse: [block280f7e9cPC := 18].
        ].
        block280f7e9cStep = 18 ifTrue: [
            block280f7e9cPC := 19.
        ].
        block280f7e9cStep = 19 ifTrue: [
            block280f7e9cStack1 := false.
            block280f7e9cPC := 20.
        ].
        block280f7e9cStep = 20 ifTrue: [
            block280f7e9cStack2 := block280f7e9cArg1.
            block280f7e9cPC := 21.
        ].
        block280f7e9cStep = 21 ifTrue: [
            block280f7e9cStack2 := (block280f7e9cStack2) request.
            block280f7e9cPC := 23.
        ].
        block280f7e9cStep = 23 ifTrue: [
            block280f7e9cStack2 := (block280f7e9cStack2) isClass.
            block280f7e9cPC := 25.
        ].
        block280f7e9cStep = 25 ifTrue: [
            (block280f7e9cStack2) ifTrue: [block280f7e9cPC := 28] ifFalse: [block280f7e9cPC := 34].
        ].
        block280f7e9cStep = 28 ifTrue: [
            block280f7e9cPC := 29.
        ].
        block280f7e9cStep = 29 ifTrue: [
            block280f7e9cStack1 := block280f7e9cArg1.
            block280f7e9cPC := 30.
        ].
        block280f7e9cStep = 30 ifTrue: [
            block280f7e9cStack1 := (block280f7e9cStack1) request.
            block280f7e9cPC := 32.
        ].
        block280f7e9cStep = 32 ifTrue: [
            block280f7e9cStack1 := (block280f7e9cStack1) isRemoved.
            block280f7e9cPC := 34.
        ].
        block280f7e9cStep = 34 ifTrue: [
            block280f7e9cResult := block280f7e9cStack1.
            block280f7e9cDone := true.
        ].
    ].
    block280f7e9cResult
].
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack0 := (recoveredStack0) select: (recoveredStack1).
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack1 := [:recoveredBlock71Arg1 | 
    | recoveredBlock71Value0 recoveredBlock71Value1 recoveredBlock71Value2 |
    recoveredBlock71Value0 := (self) requestsAndResolutions.
    recoveredBlock71Value1 := recoveredBlock71Arg1.
    recoveredBlock71Value2 := (recoveredBlock71Value0) remove: (recoveredBlock71Value1).
    recoveredBlock71Value2
].
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

