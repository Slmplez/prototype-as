"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"cfsnls.ic method 0x200009ac; bytecode file offset 0x23c4c"
!ObjectSwapper class methodsFor: 'recovered'!
initialGroupOfEncodedClasses
    | recoveredValue0 |
    recoveredValue0 := InitialGroupOfEncodedClasses.
    ^recoveredValue0
! !

"cfsnls.ic method 0x20000e44; bytecode file offset 0x2415c"
!ObjectSwapper class methodsFor: 'recovered'!
supportedPlatforms
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := EswMutationSupport.
    recoveredValue1 := (recoveredValue0) supportedPlatforms.
    ^recoveredValue1
! !

"cfsnls.ic method 0x200011e8; bytecode file offset 0x24420"
!ObjectSwapper class methodsFor: 'recovered'!
new
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) defaultSize.
    recoveredValue1 := (self) new: (recoveredValue0).
    ^recoveredValue1
! !

"cfsnls.ic method 0x20002088; bytecode file offset 0x252b8"
!ObjectSwapper class methodsFor: 'recovered'!
defaultSize
    ^10240
! !

"cfsnls.ic method 0x200020b8; bytecode file offset 0x252e8"
!ObjectSwapper class methodsFor: 'recovered'!
firstNewVersionNumber
    ^1025
! !

"cfsnls.ic method 0x200020fc; bytecode file offset 0x2532c"
!ObjectSwapper class methodsFor: 'recovered'!
versionNumber
    ^1027
! !

"cfsnls.ic method 0x200022f0; bytecode file offset 0x25520"
!ObjectSwapper class methodsFor: 'recovered'!
esPlatformCode
    ^8096
! !

"cfsnls.ic method 0x20002304; bytecode file offset 0x25534"
!ObjectSwapper class methodsFor: 'recovered'!
maxNumberOfInternalEncodedClasses
    ^50
! !

"cfsnls.ic method 0x20004684; bytecode file offset 0x278fc"
!ObjectSwapper class methodsFor: 'recovered'!
with: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := super new.
    recoveredValue1 := recoveredValue0.
    recoveredValue2 := recoveredArg1.
    (recoveredValue1) initializeWith: (recoveredValue2).
    ^recoveredValue0
! !

"cfsnls.ic method 0x200046c0; bytecode file offset 0x278fc"
!ObjectSwapper class methodsFor: 'recovered'!
new: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := super new.
    recoveredValue1 := recoveredValue0.
    recoveredValue2 := recoveredArg1.
    (recoveredValue1) initializeFor: (recoveredValue2).
    ^recoveredValue0
! !

"cfsnls.ic method 0x200054dc; bytecode file offset 0x2871c"
!ObjectSwapper class methodsFor: 'recovered'!
platformOfCode: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) supportedPlatforms.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := [
    '?'
].
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1) ifAbsent: (recoveredStack2).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"cfsnls.ic method 0x2000fa8c; bytecode file offset 0x32d10"
!ObjectSwapper class methodsFor: 'recovered'!
initialize
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 recoveredValue21 recoveredValue22 recoveredValue23 recoveredValue24 recoveredValue25 recoveredValue26 recoveredValue27 recoveredValue28 recoveredValue29 recoveredValue30 recoveredValue31 recoveredValue32 recoveredValue33 recoveredValue34 recoveredValue35 recoveredValue36 recoveredValue37 |
    recoveredValue0 := Array.
    recoveredValue1 := (recoveredValue0) new: (18).
    recoveredValue2 := recoveredValue1.
    recoveredValue3 := String.
    (recoveredValue2) at: (1) put: (recoveredValue3).
    recoveredValue4 := recoveredValue1.
    recoveredValue5 := Symbol.
    (recoveredValue4) at: (2) put: (recoveredValue5).
    recoveredValue6 := recoveredValue1.
    recoveredValue7 := Array.
    (recoveredValue6) at: (3) put: (recoveredValue7).
    recoveredValue8 := recoveredValue1.
    recoveredValue9 := Class.
    (recoveredValue8) at: (4) put: (recoveredValue9).
    recoveredValue10 := recoveredValue1.
    recoveredValue11 := Metaclass.
    (recoveredValue10) at: (5) put: (recoveredValue11).
    recoveredValue12 := recoveredValue1.
    recoveredValue13 := True.
    (recoveredValue12) at: (6) put: (recoveredValue13).
    recoveredValue14 := recoveredValue1.
    recoveredValue15 := False.
    (recoveredValue14) at: (7) put: (recoveredValue15).
    recoveredValue16 := recoveredValue1.
    recoveredValue17 := UndefinedObject.
    (recoveredValue16) at: (8) put: (recoveredValue17).
    recoveredValue18 := recoveredValue1.
    recoveredValue19 := Character.
    (recoveredValue18) at: (9) put: (recoveredValue19).
    recoveredValue20 := recoveredValue1.
    recoveredValue21 := SmallInteger.
    (recoveredValue20) at: (10) put: (recoveredValue21).
    recoveredValue22 := recoveredValue1.
    recoveredValue23 := ByteArray.
    (recoveredValue22) at: (11) put: (recoveredValue23).
    recoveredValue24 := recoveredValue1.
    recoveredValue25 := EswInstVarNamesArray.
    (recoveredValue24) at: (12) put: (recoveredValue25).
    recoveredValue26 := recoveredValue1.
    recoveredValue27 := EswPrivateString.
    (recoveredValue26) at: (13) put: (recoveredValue27).
    recoveredValue28 := recoveredValue1.
    recoveredValue29 := EsAtom.
    (recoveredValue28) at: (14) put: (recoveredValue29).
    recoveredValue30 := recoveredValue1.
    recoveredValue31 := Float.
    (recoveredValue30) at: (15) put: (recoveredValue31).
    recoveredValue32 := recoveredValue1.
    recoveredValue33 := EswRootArray.
    (recoveredValue32) at: (16) put: (recoveredValue33).
    recoveredValue34 := recoveredValue1.
    recoveredValue35 := EswIdentityUnlinkedObject.
    (recoveredValue34) at: (17) put: (recoveredValue35).
    recoveredValue36 := recoveredValue1.
    recoveredValue37 := EswPrivateArray.
    (recoveredValue36) at: (18) put: (recoveredValue37).
    InitialGroupOfEncodedClasses := recoveredValue1.
    ^self
! !

