"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20002070; bytecode file offset 0x8ffcfc"
!AbtNlsCfsSupportApp class methodsFor: 'recovered'!
_PRAGMA_AbtNlsKrnCfsConstants
    ^self
! !

"ASDBase.ic method 0x20054410; bytecode file offset 0x951190"
!AbtNlsCfsSupportApp class methodsFor: 'recovered'!
cfsSupportEstablished: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    CfsSupportEstablished := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x2005bccc; bytecode file offset 0x9585b4"
!AbtNlsCfsSupportApp class methodsFor: 'recovered'!
cfsSupportEstablished
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := CfsSupportEstablished.
    recoveredValue1 := (recoveredValue0) == (true).
    ^recoveredValue1
! !

"ASDBase.ic method 0x2005bf54; bytecode file offset 0x958ab0"
!AbtNlsCfsSupportApp class methodsFor: 'recovered'!
localize
    | recoveredValue0 |
    recoveredValue0 := AbtNLSCoordinator.
    (recoveredValue0) abtRelocalize.
    ^self
! !

"ASDBase.ic method 0x200b2f2c; bytecode file offset 0x9af848"
!AbtNlsCfsSupportApp class methodsFor: 'recovered'!
failedRemove
    (self) establishCfsSupport: (true).
    (self) finalizeCfsSupport.
    ^self
! !

"ASDBase.ic method 0x200b334c; bytecode file offset 0x9afc08"
!AbtNlsCfsSupportApp class methodsFor: 'recovered'!
removing
    (self) removeCfsSupport.
    (self) cfsSupportEstablished: (false).
    ^self
! !

"ASDBase.ic method 0x200e0378; bytecode file offset 0x9dcc38"
!AbtNlsCfsSupportApp class methodsFor: 'recovered'!
preStartUp
    | recoveredValue0 |
    recoveredValue0 := AbtLocale.
    (recoveredValue0) icStartupInProgress: (false).
    (self) establishCfsSupport: (false).
    ^self
! !

"ASDBase.ic method 0x201e1dac; bytecode file offset 0xade688"
!AbtNlsCfsSupportApp class methodsFor: 'recovered'!
removeCfsSupport
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := AbtNLSCoordinator.
    recoveredValue1 := (recoveredValue0) current.
    (recoveredValue1) makeResident.
    recoveredValue2 := AbtCharacterTranslator.
    (recoveredValue2) translationDisabled: (true).
    recoveredValue3 := AbtNlsMprRequest.
    (recoveredValue3) restoreDefaultResolveSelector.
    recoveredValue4 := AbtNlsStringMappingRequest.
    (recoveredValue4) restoreDefaultResolveSelector.
    recoveredValue5 := Locale.
    recoveredValue6 := Locale.
    (recoveredValue5) localePrimitiveClass: (recoveredValue6).
    ^self
! !

"ASDBase.ic method 0x20209d40; bytecode file offset 0xb06620"
!AbtNlsCfsSupportApp class methodsFor: 'recovered'!
startUp
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := AbtLocale.
    (recoveredValue0) readLocaleOverrides.
    recoveredValue1 := AbtNLSCoordinator.
    (recoveredValue1) readCachingOptions.
    (self) finalizeCfsSupport.
    recoveredValue2 := AbtNlsKernelApp.
    (recoveredValue2) processPendingInitializationMessages.
    recoveredValue3 := AbtNLSCoordinator.
    recoveredValue4 := (recoveredValue3) current.
    (recoveredValue4) processRegistrations.
    recoveredValue5 := AbtNlsKernelApp.
    (recoveredValue5) processPendingMessagesRequiringAdditionalSupportFor: ('nlscfs').
    ^self
! !

"ASDBase.ic method 0x202174ec; bytecode file offset 0xb13dbc"
!AbtNlsCfsSupportApp class methodsFor: 'recovered'!
loaded
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := AbtLocale.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1) resetActionTable.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := System.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := (recoveredStack1) imageStarted.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 19] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := AbtLocale.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := true.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack1) icStartupInProgress: (recoveredStack2).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            (recoveredStack0) establishCfsSupport: (recoveredStack1).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := System.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := (recoveredStack0) imageStarted.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 28] ifFalse: [recoveredPC := 31].
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            (recoveredStack0) finalizeCfsSupport.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20260960; bytecode file offset 0xb5d244"
!AbtNlsCfsSupportApp class methodsFor: 'recovered'!
establishCfsSupport: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := Locale.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := AbtLocale.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack1) localePrimitiveClass: (recoveredStack2).
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := AbtCharacterTranslator.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := false.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack1) translationDisabled: (recoveredStack2).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 26].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := AbtNLSCoordinator.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := (recoveredStack1) current.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            (recoveredStack1) makeCfsDependent.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := AbtNlsMprRequest.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack2 := 'cfsResolve'.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            (recoveredStack1) resolveSelector: (recoveredStack2).
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := AbtNlsStringMappingRequest.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack2 := 'cfsResolve'.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            (recoveredStack1) resolveSelector: (recoveredStack2).
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20287210; bytecode file offset 0xb83ae4"
!AbtNlsCfsSupportApp class methodsFor: 'recovered'!
packagerIncludeSelectors
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := Set.
    recoveredValue1 := (recoveredValue0) new.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := recoveredLocal1.
    (recoveredValue2) add: ('actionTable').
    recoveredValue3 := AbtLocale.
    recoveredValue4 := (recoveredValue3) actionTable.
    recoveredValue5 := [:recoveredBlock20Arg1 | 
    | recoveredBlock20Value0 recoveredBlock20Value1 recoveredBlock20Value2 recoveredBlock20Value3 |
    recoveredBlock20Value0 := recoveredLocal1.
    recoveredBlock20Value1 := recoveredBlock20Arg1.
    recoveredBlock20Value2 := (recoveredBlock20Value1) value.
    recoveredBlock20Value3 := (recoveredBlock20Value0) add: (recoveredBlock20Value2).
    recoveredBlock20Value3
].
    (recoveredValue4) associationsDo: (recoveredValue5).
    recoveredValue6 := recoveredLocal1.
    recoveredValue7 := (recoveredValue6) asArray.
    ^recoveredValue7
! !

"ASDBase.ic method 0x202f40c4; bytecode file offset 0xbf09a4"
!AbtNlsCfsSupportApp class methodsFor: 'recovered'!
finalizeCfsSupport
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) cfsSupportEstablished.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 8] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := AbtNLSCoordinator.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack0) abtRelocalize.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := AbtNlsKernelApp.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := (recoveredStack0) pendingNlsRegistrations.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 47] ifFalse: [recoveredPC := 22].
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := AbtNlsKernelApp.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := (recoveredStack0) pendingNlsRegistrations.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := (recoveredStack0) copy.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := [:block280e8788Arg1 | 
    | block280e8788Value0 block280e8788Value1 block280e8788Value2 block280e8788Value3 block280e8788Value4 |
    block280e8788Value0 := block280e8788Arg1.
    (block280e8788Value0) abtRegisterExternalStrings.
    block280e8788Value1 := AbtNlsKernelApp.
    block280e8788Value2 := (block280e8788Value1) pendingNlsRegistrations.
    block280e8788Value3 := block280e8788Arg1.
    block280e8788Value4 := (block280e8788Value2) remove: (block280e8788Value3).
    block280e8788Value4
].
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            (recoveredStack0) cfsSupportEstablished: (recoveredStack1).
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

