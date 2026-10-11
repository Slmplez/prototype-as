"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"abtdbh.ic method 0x20000324; bytecode file offset 0x11e40"
!AbtNlsRequest class methodsFor: 'recovered'!
effectiveLocale
    | recoveredValue0 |
    recoveredValue0 := EffectiveLocale.
    ^recoveredValue0
! !

"abtdbh.ic method 0x200003f8; bytecode file offset 0x11ee4"
!AbtNlsRequest class methodsFor: 'recovered'!
defaultResolveSelector
    ^'cannotResolve'
! !

"abtdbh.ic method 0x20000760; bytecode file offset 0x12288"
!AbtNlsRequest class methodsFor: 'recovered'!
effectiveLocale: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    EffectiveLocale := recoveredValue0.
    ^self
! !

"abtdbh.ic method 0x20000bdc; bytecode file offset 0x126b4"
!AbtNlsRequest class methodsFor: 'recovered'!
resolveSelector
    | recoveredXValue0 |
    recoveredXValue0 := recoveredLegacyIvar15.
    ^recoveredXValue0
! !

"abtdbh.ic method 0x20000f04; bytecode file offset 0x12a0c"
!AbtNlsRequest class methodsFor: 'recovered'!
restoreDefaultResolveSelector
    | recoveredValue0 |
    recoveredValue0 := (self) defaultResolveSelector.
    (self) resolveSelector: (recoveredValue0).
    ^self
! !

"abtdbh.ic method 0x20000f24; bytecode file offset 0x12a0c"
!AbtNlsRequest class methodsFor: 'recovered'!
initializeClassData
    | recoveredValue0 |
    recoveredValue0 := (self) defaultResolveSelector.
    (self) resolveSelector: (recoveredValue0).
    ^self
! !

"abtdbh.ic method 0x20001164; bytecode file offset 0x12c3c"
!AbtNlsRequest class methodsFor: 'recovered'!
request: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) new.
    recoveredValue1 := recoveredValue0.
    recoveredValue2 := recoveredArg1.
    (recoveredValue1) request: (recoveredValue2).
    ^recoveredValue0
! !

"abtdbh.ic method 0x200018bc; bytecode file offset 0x1339c"
!AbtNlsRequest class methodsFor: 'recovered'!
resolveSelector: recoveredXArg1
    | recoveredXValue0 |
    recoveredXValue0 := recoveredXArg1.
    recoveredLegacyIvar15 := recoveredXValue0.
    ^self
! !

"abtdbh.ic method 0x20001ed8; bytecode file offset 0x139b4"
!AbtNlsRequest class methodsFor: 'recovered'!
initializeClassDataIfEmpty
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) resolveSelector.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 13] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := (recoveredStack1) defaultResolveSelector.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack0) resolveSelector: (recoveredStack1).
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"abtdbh.ic method 0x20002568; bytecode file offset 0x14054"
!AbtNlsRequest class methodsFor: 'recovered'!
defineEffectiveLocale
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := ExceptionalEvent.
    recoveredValue1 := AbtNLSCoordinator.
    recoveredValue2 := (recoveredValue1) current.
    recoveredValue3 := (recoveredValue2) language.
    recoveredValue4 := AbtNLSCoordinator.
    recoveredValue5 := (recoveredValue4) current.
    recoveredValue6 := (recoveredValue5) territory.
    recoveredValue7 := (recoveredValue0) with: (recoveredValue3) with: (recoveredValue6).
    (self) effectiveLocale: (recoveredValue7).
    ^self
! !

