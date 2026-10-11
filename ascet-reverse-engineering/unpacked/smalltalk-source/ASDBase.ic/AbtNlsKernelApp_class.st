"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x200008f0; bytecode file offset 0x8ffcfc"
!AbtNlsKernelApp class methodsFor: 'recovered'!
_PRAGMA_AbtMsgBase
    ^self
! !

"ASDBase.ic method 0x20001708; bytecode file offset 0x8ffcfc"
!AbtNlsKernelApp class methodsFor: 'recovered'!
_PRAGMA_AbtNlsKrnConstants
    ^self
! !

"ASDBase.ic method 0x200020c8; bytecode file offset 0x8ffcfc"
!AbtNlsKernelApp class methodsFor: 'recovered'!
_PRAGMA_AbtConstants
    ^self
! !

"ASDBase.ic method 0x20002c60; bytecode file offset 0x8ffcfc"
!AbtNlsKernelApp class methodsFor: 'recovered'!
_PRAGMA_AbtGlobals
    ^self
! !

"ASDBase.ic method 0x20003148; bytecode file offset 0x8ffcfc"
!AbtNlsKernelApp class methodsFor: 'recovered'!
_PRAGMA_AbtPrimitiveNLSStrings
    ^self
! !

"ASDBase.ic method 0x20005020; bytecode file offset 0x90206c"
!AbtNlsKernelApp class methodsFor: 'recovered'!
packagingRulesFor: recoveredArg1
    ^self
! !

"ASDBase.ic method 0x2000c340; bytecode file offset 0x908bfc"
!AbtNlsKernelApp class methodsFor: 'recovered'!
"VM primitive/special entry 0x14; native fast path not reconstructed; fallback bytecodes follow."
sharedLibraryVersion
    | recoveredValue0 |
    recoveredValue0 := (self) primitiveFailed.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20013770; bytecode file offset 0x912098"
!AbtNlsKernelApp class methodsFor: 'recovered'!
stringParmReplacePrintSelector
    | recoveredValue0 |
    recoveredValue0 := StringParmReplacePrintSelector.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20013788; bytecode file offset 0x912098"
!AbtNlsKernelApp class methodsFor: 'recovered'!
pendingNlsRegistrations
    | recoveredValue0 |
    recoveredValue0 := PendingNlsRegistrations.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200144c0; bytecode file offset 0x912098"
!AbtNlsKernelApp class methodsFor: 'recovered'!
pendingInitializationMessages
    | recoveredValue0 |
    recoveredValue0 := PendingInitializationMessages.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2001ddb0; bytecode file offset 0x92209c"
!AbtNlsKernelApp class methodsFor: 'recovered'!
packagerIncludeSelectors
    ^#('messageAnnotationFormat' 'replacementRules')
! !

"ASDBase.ic method 0x200219bc; bytecode file offset 0x92209c"
!AbtNlsKernelApp class methodsFor: 'recovered'!
packagerIncludeClassNames
    ^#('AbtNlsGroup' 'AbtNlsIndexedStrings' 'AbtNlsMissingGroup' 'AbtNlsMprRequest' 'AbtNlsNonIndexedStrings' 'AbtNlsPackagedMprRequest' 'AbtNlsPackagedStringMappingRequest' 'AbtNlsRequest' 'AbtNlsStringMappingRequest')
! !

"ASDBase.ic method 0x20053fd8; bytecode file offset 0x951190"
!AbtNlsKernelApp class methodsFor: 'recovered'!
pendingNlsRegistrations: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    PendingNlsRegistrations := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x20054110; bytecode file offset 0x951190"
!AbtNlsKernelApp class methodsFor: 'recovered'!
pendingInitializationMessages: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    PendingInitializationMessages := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200546e0; bytecode file offset 0x951190"
!AbtNlsKernelApp class methodsFor: 'recovered'!
stringParmReplacePrintSelector: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    StringParmReplacePrintSelector := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x20084864; bytecode file offset 0x981ca4"
!AbtNlsKernelApp class methodsFor: 'recovered'!
abtNlsPackagingRulesFor: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) buildNlsCoordinator: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x2008cb9c; bytecode file offset 0x989498"
!AbtNlsKernelApp class methodsFor: 'recovered'!
initializeStringParmReplacePrintSelector
    (self) stringParmReplacePrintSelector: ('abtPrintString').
    ^self
! !

"ASDBase.ic method 0x2009b900; bytecode file offset 0x998260"
!AbtNlsKernelApp class methodsFor: 'recovered'!
unbindSharedLibrary
    | recoveredValue0 |
    recoveredValue0 := PlatformLibrary.
    (recoveredValue0) removeMappingForLogicalName: ('Abt_Primitives').
    ^self
! !

"ASDBase.ic method 0x200a0750; bytecode file offset 0x99d3ac"
!AbtNlsKernelApp class methodsFor: 'recovered'!
removing
    (self) unbindSharedLibrary.
    (self) removeCharsetQueryMethod.
    ^self
! !

"ASDBase.ic method 0x200a0a20; bytecode file offset 0x99d3ac"
!AbtNlsKernelApp class methodsFor: 'recovered'!
failedRemove
    (self) bindSharedLibrary.
    (self) addCharsetQueryMethod.
    ^self
! !

"ASDBase.ic method 0x200b7aa4; bytecode file offset 0x9b4364"
!AbtNlsKernelApp class methodsFor: 'recovered'!
buildNlsCoordinator: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := Smalltalk.
    recoveredValue1 := recoveredArg1.
    (recoveredValue0) at: ('MyBuild') put: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x200d4f18; bytecode file offset 0x9d17d4"
!AbtNlsKernelApp class methodsFor: 'recovered'!
initializeStringParmReplacePrintSelectorIfEmpty
    | recoveredStack0 recoveredStack1 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) stringParmReplacePrintSelector.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 11] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack0) initializeStringParmReplacePrintSelector.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x200e00a8; bytecode file offset 0x9dc968"
!AbtNlsKernelApp class methodsFor: 'recovered'!
preStartUp
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := Locale.
    recoveredValue1 := Locale.
    (recoveredValue0) localePrimitiveClass: (recoveredValue1).
    (self) initializeClassData.
    ^self
! !

"ASDBase.ic method 0x200e02ec; bytecode file offset 0x9dcbc0"
!AbtNlsKernelApp class methodsFor: 'recovered'!
abtExternalizedStringBuildingInfo
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := Array.
    recoveredValue1 := (recoveredValue0) with: ('abtba?40') with: (false) with: (true).
    ^recoveredValue1
! !

"ASDBase.ic method 0x20108594; bytecode file offset 0xa04e58"
!AbtNlsKernelApp class methodsFor: 'recovered'!
loaded
    | recoveredValue0 |
    (self) bindSharedLibrary.
    (self) initializeClassDataIfEmpty.
    recoveredValue0 := (self) pendingNlsRegistrations.
    (recoveredValue0) add: (self).
    ^self
! !

"ASDBase.ic method 0x20149c2c; bytecode file offset 0xa46500"
!AbtNlsKernelApp class methodsFor: 'recovered'!
removeCharsetQueryMethod
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) firstChoiceCharsetQueryDM.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := AbtNLSCoordinator.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack0) removeCharsetQuery: (recoveredStack1).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20149c40; bytecode file offset 0xa46500"
!AbtNlsKernelApp class methodsFor: 'recovered'!
addCharsetQueryMethod
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) firstChoiceCharsetQueryDM.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := AbtNLSCoordinator.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack0) addCharsetQuery: (recoveredStack1).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201673a0; bytecode file offset 0xa63ca0"
!AbtNlsKernelApp class methodsFor: 'recovered'!
addPendingInitializationMessage: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) pendingInitializationMessages.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := OrderedCollection.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack0) pendingInitializationMessages: (recoveredStack1).
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) pendingInitializationMessages.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack0) add: (recoveredStack1).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2017e77c; bytecode file offset 0xa7b0dc"
!AbtNlsKernelApp class methodsFor: 'recovered'!
pendingMessagesRequiringAdditionalSupport
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := PendingMessagesRequiringAdditionalSupport.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := Dictionary.
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
            PendingMessagesRequiringAdditionalSupport := recoveredStack2.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredPC := 22.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := PendingMessagesRequiringAdditionalSupport.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x20187f68; bytecode file offset 0xa84874"
!AbtNlsKernelApp class methodsFor: 'recovered'!
addPendingMessage: recoveredArg1 service: recoveredArg2
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) pendingMessagesRequiringAdditionalSupport.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := [
    | block280d08c0Value0 block280d08c0Value1 |
    block280d08c0Value0 := OrderedCollection.
    block280d08c0Value1 := (block280d08c0Value0) new.
    block280d08c0Value1
].
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1) ifAbsentPut: (recoveredStack2).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            (recoveredStack0) add: (recoveredStack1).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2018f230; bytecode file offset 0xa8bafc"
!AbtNlsKernelApp class methodsFor: 'recovered'!
initializeClassData
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            (recoveredStack0) initializeStringParmReplacePrintSelector.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack0 := (recoveredStack0) classesToInitialize.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := [:block280d18c8Arg1 | 
    | block280d18c8Value0 block280d18c8Value1 |
    block280d18c8Value0 := block280d18c8Arg1.
    block280d18c8Value1 := (block280d18c8Value0) initializeClassData.
    block280d18c8Value1
].
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            (recoveredStack0) addCharsetQueryMethod.
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

"ASDBase.ic method 0x2020a1f8; bytecode file offset 0xb06acc"
!AbtNlsKernelApp class methodsFor: 'recovered'!
startUp
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := AbtNLSCoordinator.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) current.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) nlsGroupManager.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) requestsAndResolutions.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack2 := [:block280d9a28Arg1 | 
    | block280d9a28Stack0 block280d9a28Stack1 block280d9a28Stack2 block280d9a28Stack3 block280d9a28PC block280d9a28Step block280d9a28Done block280d9a28Result |
    block280d9a28Stack0 := self.
    block280d9a28PC := 4.
    block280d9a28Done := false.
    [block280d9a28Done not] whileTrue: [
        block280d9a28Step := block280d9a28PC.
        block280d9a28Step = 4 ifTrue: [
            block280d9a28Stack1 := nil.
            block280d9a28PC := 5.
        ].
        block280d9a28Step = 5 ifTrue: [
            block280d9a28Stack2 := block280d9a28Arg1.
            block280d9a28PC := 6.
        ].
        block280d9a28Step = 6 ifTrue: [
            block280d9a28Stack2 := (block280d9a28Stack2) resolution.
            block280d9a28PC := 8.
        ].
        block280d9a28Step = 8 ifTrue: [
            (block280d9a28Stack2 == nil) ifTrue: [block280d9a28PC := 18] ifFalse: [block280d9a28PC := 12].
        ].
        block280d9a28Step = 12 ifTrue: [
            block280d9a28PC := 13.
        ].
        block280d9a28Step = 13 ifTrue: [
            block280d9a28Stack1 := block280d9a28Arg1.
            block280d9a28PC := 14.
        ].
        block280d9a28Step = 14 ifTrue: [
            block280d9a28Stack1 := (block280d9a28Stack1) resolution.
            block280d9a28PC := 16.
        ].
        block280d9a28Step = 16 ifTrue: [
            block280d9a28Stack1 := (block280d9a28Stack1) bindToRunningImage.
            block280d9a28PC := 18.
        ].
        block280d9a28Step = 18 ifTrue: [
            block280d9a28Result := block280d9a28Stack1.
            block280d9a28Done := true.
        ].
    ].
    block280d9a28Result
].
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2020bc94; bytecode file offset 0xb08568"
!AbtNlsKernelApp class methodsFor: 'recovered'!
processPendingInitializationMessages
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) pendingInitializationMessages.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 23] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) pendingInitializationMessages.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := [:block280d9f5cArg1 | 
    | block280d9f5cValue0 block280d9f5cValue1 block280d9f5cValue2 |
    block280d9f5cValue0 := AbtPrimitiveLoggingSupport.
    block280d9f5cValue1 := block280d9f5cArg1.
    block280d9f5cValue2 := (block280d9f5cValue0) logError: (block280d9f5cValue1).
    block280d9f5cValue2
].
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := OrderedCollection.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            (recoveredStack0) pendingInitializationMessages: (recoveredStack1).
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

"ASDBase.ic method 0x202175c8; bytecode file offset 0xb13e9c"
!AbtNlsKernelApp class methodsFor: 'recovered'!
classesToInitialize
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 |
    recoveredValue0 := OrderedCollection.
    recoveredValue1 := (recoveredValue0) new.
    recoveredValue2 := recoveredValue1.
    recoveredValue3 := AbtCharacterTranslator.
    (recoveredValue2) add: (recoveredValue3).
    recoveredValue4 := recoveredValue1.
    recoveredValue5 := AbtNLSCoordinator.
    (recoveredValue4) add: (recoveredValue5).
    recoveredValue6 := recoveredValue1.
    recoveredValue7 := AbtNlsStringMappingRequest.
    (recoveredValue6) add: (recoveredValue7).
    recoveredValue8 := recoveredValue1.
    recoveredValue9 := AbtNlsMprRequest.
    (recoveredValue8) add: (recoveredValue9).
    recoveredValue10 := recoveredValue1.
    recoveredValue11 := AbtMRI.
    (recoveredValue10) add: (recoveredValue11).
    ^recoveredValue1
! !

"ASDBase.ic method 0x20252308; bytecode file offset 0xb4ebe4"
!AbtNlsKernelApp class methodsFor: 'recovered'!
initializeClassDataIfEmpty
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack1) initializeStringParmReplacePrintSelectorIfEmpty.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack0) addCharsetQueryMethod.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := (recoveredStack0) pendingNlsRegistrations.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 21] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := Set.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            (recoveredStack0) pendingNlsRegistrations: (recoveredStack1).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := (recoveredStack0) classesToInitialize.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := [:block280deef4Arg1 | 
    | block280deef4Value0 block280deef4Value1 |
    block280deef4Value0 := block280deef4Arg1.
    block280deef4Value1 := (block280deef4Value0) initializeClassDataIfEmpty.
    block280deef4Value1
].
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2029c658; bytecode file offset 0xb98f24"
!AbtNlsKernelApp class methodsFor: 'recovered'!
processPendingMessagesRequiringAdditionalSupportFor: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) pendingMessagesRequiringAdditionalSupport.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack2 := [
    ^self
].
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1) ifAbsent: (recoveredStack2).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := (recoveredStack0) pendingMessagesRequiringAdditionalSupport.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            (recoveredStack0) removeKey: (recoveredStack1).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := [:block280e3934Arg1 | 
    | block280e3934Value0 block280e3934Value1 |
    block280e3934Value0 := block280e3934Arg1.
    block280e3934Value1 := (block280e3934Value0) send.
    block280e3934Value1
].
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x202e56e4; bytecode file offset 0xbe1fc4"
!AbtNlsKernelApp class methodsFor: 'recovered'!
firstChoiceCharsetQueryDM
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := System.
    recoveredValue1 := (recoveredValue0) subsystemType: ('OS').
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := [:recoveredBlock14Arg1 | 
    | recoveredBlock14Stack0 recoveredBlock14Stack1 recoveredBlock14Stack2 recoveredBlock14Stack3 recoveredBlock14Stack4 recoveredBlock14Stack5 recoveredBlock14PC recoveredBlock14Step recoveredBlock14Done recoveredBlock14Result |
    recoveredBlock14Stack0 := self.
    recoveredBlock14PC := 20.
    recoveredBlock14Done := false.
    [recoveredBlock14Done not] whileTrue: [
        recoveredBlock14Step := recoveredBlock14PC.
        recoveredBlock14Step = 20 ifTrue: [
            recoveredBlock14Stack1 := nil.
            recoveredBlock14PC := 21.
        ].
        recoveredBlock14Step = 21 ifTrue: [
            recoveredBlock14Stack2 := recoveredLocal1.
            recoveredBlock14PC := 24.
        ].
        recoveredBlock14Step = 24 ifTrue: [
            recoveredBlock14Stack3 := recoveredBlock14Arg1.
            recoveredBlock14PC := 25.
        ].
        recoveredBlock14Step = 25 ifTrue: [
            recoveredBlock14Stack3 := (recoveredBlock14Stack3) first.
            recoveredBlock14PC := 27.
        ].
        recoveredBlock14Step = 27 ifTrue: [
            recoveredBlock14Stack2 := (recoveredBlock14Stack2) = (recoveredBlock14Stack3).
            recoveredBlock14PC := 28.
        ].
        recoveredBlock14Step = 28 ifTrue: [
            (recoveredBlock14Stack2) ifTrue: [recoveredBlock14PC := 32] ifFalse: [recoveredBlock14PC := 46].
        ].
        recoveredBlock14Step = 32 ifTrue: [
            recoveredBlock14PC := 33.
        ].
        recoveredBlock14Step = 33 ifTrue: [
            recoveredBlock14Stack1 := DirectedMessage.
            recoveredBlock14PC := 35.
        ].
        recoveredBlock14Step = 35 ifTrue: [
            recoveredBlock14Stack2 := recoveredBlock14Arg1.
            recoveredBlock14PC := 36.
        ].
        recoveredBlock14Step = 36 ifTrue: [
            recoveredBlock14Stack2 := (recoveredBlock14Stack2) last.
            recoveredBlock14PC := 38.
        ].
        recoveredBlock14Step = 38 ifTrue: [
            recoveredBlock14Stack3 := #().
            recoveredBlock14PC := 40.
        ].
        recoveredBlock14Step = 40 ifTrue: [
            recoveredBlock14Stack4 := AbtNLSCoordinator.
            recoveredBlock14PC := 42.
        ].
        recoveredBlock14Step = 42 ifTrue: [
            recoveredBlock14Stack1 := (recoveredBlock14Stack1) selector: (recoveredBlock14Stack2) arguments: (recoveredBlock14Stack3) receiver: (recoveredBlock14Stack4).
            recoveredBlock14PC := 45.
        ].
        recoveredBlock14Step = 45 ifTrue: [
            ^recoveredBlock14Stack1
        ].
        recoveredBlock14Step = 46 ifTrue: [
            recoveredBlock14Result := recoveredBlock14Stack1.
            recoveredBlock14Done := true.
        ].
    ].
    recoveredBlock14Result
].
    (#(#('OS/2' 'getCurrentCharacterSetFromLocalePlatformId') #('UNIX' 'getCurrentCharacterSetFromLocaleCodeSet') #('MVS' 'getMvsCurrentCharacterSetFromLocalePlatformId'))) do: (recoveredValue2).
    ^nil
! !

"ASDBase.ic method 0x2039d144; bytecode file offset 0xc99a38"
!AbtNlsKernelApp class methodsFor: 'recovered'!
bindSharedLibrary
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := System.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) osType.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := 'MVS'.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 66] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := 'abtprc'.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := System.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack2 := (recoveredStack2) vaVersionId.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := [
    | recoveredBlock25Value0 recoveredBlock25Value1 recoveredBlock25Value2 recoveredBlock25Value3 recoveredBlock25Value4 |
    recoveredBlock25Value0 := PlatformLibrary.
    recoveredBlock25Value1 := recoveredLocal1.
    recoveredBlock25Value2 := (recoveredBlock25Value0) logicalName: (recoveredBlock25Value1).
    recoveredBlock25Value3 := (recoveredBlock25Value2) getAddress: ('abtVersion').
    recoveredBlock25Value4 := (recoveredBlock25Value3) notNil.
    recoveredBlock25Value4
].
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack2 := ExError.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack3 := [:block280f4170Arg1 | 
    | block280f4170Value0 block280f4170Value1 |
    block280f4170Value0 := block280f4170Arg1.
    block280f4170Value1 := (block280f4170Value0) exitWith: (false).
    block280f4170Value1
].
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack1 := (recoveredStack1) when: (recoveredStack2) do: (recoveredStack3).
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 66] ifFalse: [recoveredPC := 62].
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack1 := PlatformLibrary.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack2 := 'Abt_Primitives'.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            (recoveredStack1) mapLogicalName: (recoveredStack2) toPhysicalName: (recoveredStack3).
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

