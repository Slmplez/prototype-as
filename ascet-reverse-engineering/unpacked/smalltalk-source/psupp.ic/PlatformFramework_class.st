"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"psupp.ic method 0x20000020; bytecode file offset 0x153a14"
!PlatformFramework class methodsFor: 'recovered'!
_PRAGMA_PlatformGlobals
    ^self
! !

"psupp.ic method 0x200004b8; bytecode file offset 0x153f24"
!PlatformFramework class methodsFor: 'recovered'!
isStarted
    | recoveredValue0 |
    recoveredValue0 := IsStarted.
    ^recoveredValue0
! !

"psupp.ic method 0x20000f30; bytecode file offset 0x1547c8"
!PlatformFramework class methodsFor: 'recovered'!
startRun
    IsStarted := true.
    ^self
! !

"psupp.ic method 0x20008090; bytecode file offset 0x15b928"
!PlatformFramework class methodsFor: 'recovered'!
localize
    (self) initializeStringClass.
    ^self
! !

"psupp.ic method 0x2000c908; bytecode file offset 0x1601a4"
!PlatformFramework class methodsFor: 'recovered'!
preStartUp
    IsStarted := false.
    (self) startRun.
    ^self
! !

"psupp.ic method 0x2001ecc0; bytecode file offset 0x172564"
!PlatformFramework class methodsFor: 'recovered'!
loaded
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := OSCall.
    recoveredValue1 := (recoveredValue0) new.
    OS := recoveredValue1.
    (self) localize.
    ^self
! !

"psupp.ic method 0x200257e4; bytecode file offset 0x179088"
!PlatformFramework class methodsFor: 'recovered'!
packagingRulesFor: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (recoveredValue0) initializeClassVariable: ('IsStarted') to: ('false') inClassNamed: ('PlatformFramework').
    ^self
! !

"psupp.ic method 0x2003363c; bytecode file offset 0x186ef4"
!PlatformFramework class methodsFor: 'recovered'!
initializeStringClass
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
            recoveredStack1 := (recoveredStack1) current.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) isDBLocale.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            IsDBLocale := recoveredStack1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := IsDBLocale.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 28].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := EsLeadEncodedBytes.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            PlatformString := recoveredStack1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := DBString.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            NlsString := recoveredStack1.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredPC := 35.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := String.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            PlatformString := recoveredStack2.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            NlsString := recoveredStack1.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

