"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x200148b0; bytecode file offset 0x912098"
!AbtNlsRequest class methodsFor: 'recovered'!
effectiveLocale
    | recoveredValue0 |
    recoveredValue0 := EffectiveLocale.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2001b104; bytecode file offset 0x92209c"
!AbtNlsRequest class methodsFor: 'recovered'!
defaultResolveSelector
    ^'cannotResolve'
! !

"ASDBase.ic method 0x20054560; bytecode file offset 0x951190"
!AbtNlsRequest class methodsFor: 'recovered'!
effectiveLocale: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    EffectiveLocale := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x2006f588; bytecode file offset 0x96bf7c"
!AbtNlsRequest class methodsFor: 'recovered'!
resolveSelector
    | recoveredValue0 |
    recoveredValue0 := resolveSelector.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2008cf84; bytecode file offset 0x989db0"
!AbtNlsRequest class methodsFor: 'recovered'!
initializeClassData
    | recoveredValue0 |
    recoveredValue0 := (self) defaultResolveSelector.
    (self) resolveSelector: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x2008d4c4; bytecode file offset 0x989db0"
!AbtNlsRequest class methodsFor: 'recovered'!
restoreDefaultResolveSelector
    | recoveredValue0 |
    recoveredValue0 := (self) defaultResolveSelector.
    (self) resolveSelector: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x20096cc0; bytecode file offset 0x9937fc"
!AbtNlsRequest class methodsFor: 'recovered'!
request: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) new.
    recoveredValue1 := recoveredValue0.
    recoveredValue2 := recoveredArg1.
    (recoveredValue1) request: (recoveredValue2).
    ^recoveredValue0
! !

"ASDBase.ic method 0x200c5b18; bytecode file offset 0x9c25bc"
!AbtNlsRequest class methodsFor: 'recovered'!
resolveSelector: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    resolveSelector := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200f9520; bytecode file offset 0x9f5de0"
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

"ASDBase.ic method 0x2015be40; bytecode file offset 0xa58710"
!AbtNlsRequest class methodsFor: 'recovered'!
defineEffectiveLocale
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := Array.
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

