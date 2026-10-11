"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"kernel.ic method 0x200015ec; bytecode file offset 0x4c844"
!Locale methodsFor: 'recovered'!
lcNumeric
    | recoveredValue0 |
    recoveredValue0 := CurrentLCNumeric.
    ^recoveredValue0
! !

"kernel.ic method 0x2000161c; bytecode file offset 0x4c844"
!Locale methodsFor: 'recovered'!
lcTime
    | recoveredValue0 |
    recoveredValue0 := CurrentLCTime.
    ^recoveredValue0
! !

"kernel.ic method 0x20001628; bytecode file offset 0x4c844"
!Locale methodsFor: 'recovered'!
lcMessages
    | recoveredValue0 |
    recoveredValue0 := CurrentLCMessages.
    ^recoveredValue0
! !

"kernel.ic method 0x200016dc; bytecode file offset 0x4c844"
!Locale methodsFor: 'recovered'!
lcCType
    | recoveredValue0 |
    recoveredValue0 := CurrentLCCType.
    ^recoveredValue0
! !

"kernel.ic method 0x200018bc; bytecode file offset 0x4c844"
!Locale methodsFor: 'recovered'!
lcMonetary
    | recoveredValue0 |
    recoveredValue0 := CurrentLCMonetary.
    ^recoveredValue0
! !

"kernel.ic method 0x20001904; bytecode file offset 0x4c844"
!Locale methodsFor: 'recovered'!
lcCollate
    | recoveredValue0 |
    recoveredValue0 := CurrentLCCollate.
    ^recoveredValue0
! !

"kernel.ic method 0x20003e0c; bytecode file offset 0x4ed88"
!Locale methodsFor: 'recovered'!
platformStringClass
    | recoveredValue0 |
    recoveredValue0 := platformStringClass.
    ^recoveredValue0
! !

"kernel.ic method 0x20003f88; bytecode file offset 0x4eebc"
!Locale methodsFor: 'recovered'!
language
    | recoveredValue0 |
    recoveredValue0 := language.
    ^recoveredValue0
! !

"kernel.ic method 0x2000400c; bytecode file offset 0x4ef68"
!Locale methodsFor: 'recovered'!
territory
    | recoveredValue0 |
    recoveredValue0 := territory.
    ^recoveredValue0
! !

"kernel.ic method 0x20004078; bytecode file offset 0x4efbc"
!Locale methodsFor: 'recovered'!
countryAbbreviation
    | recoveredValue0 |
    recoveredValue0 := countryAbbreviation.
    ^recoveredValue0
! !

"kernel.ic method 0x200040ec; bytecode file offset 0x4f000"
!Locale methodsFor: 'recovered'!
platformId
    | recoveredValue0 |
    recoveredValue0 := platformId.
    ^recoveredValue0
! !

"kernel.ic method 0x20004118; bytecode file offset 0x4f02c"
!Locale methodsFor: 'recovered'!
codeSet
    | recoveredValue0 |
    recoveredValue0 := codeSet.
    ^recoveredValue0
! !

"kernel.ic method 0x2000413c; bytecode file offset 0x4f070"
!Locale methodsFor: 'recovered'!
keyboard
    | recoveredValue0 |
    recoveredValue0 := keyboard.
    ^recoveredValue0
! !

"kernel.ic method 0x200077d4; bytecode file offset 0x52760"
!Locale methodsFor: 'recovered'!
language: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    language := recoveredValue0.
    ^self
! !

"kernel.ic method 0x200078f8; bytecode file offset 0x5280c"
!Locale methodsFor: 'recovered'!
territory: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    territory := recoveredValue0.
    ^self
! !

"kernel.ic method 0x20007924; bytecode file offset 0x52860"
!Locale methodsFor: 'recovered'!
countryAbbreviation: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    countryAbbreviation := recoveredValue0.
    ^self
! !

"kernel.ic method 0x200079bc; bytecode file offset 0x528d8"
!Locale methodsFor: 'recovered'!
codeSet: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    codeSet := recoveredValue0.
    ^self
! !

"kernel.ic method 0x200079e8; bytecode file offset 0x52914"
!Locale methodsFor: 'recovered'!
keyboard: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    keyboard := recoveredValue0.
    ^self
! !

"kernel.ic method 0x2000b064; bytecode file offset 0x55f7c"
!Locale methodsFor: 'recovered'!
preferredStringClass
    | recoveredStack0 recoveredStack1 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) isDBLocale.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 8] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := DBString.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredPC := 16.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := String.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"kernel.ic method 0x2000c3f8; bytecode file offset 0x57308"
!Locale methodsFor: 'recovered'!
isDBLocale
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack2 := platformStringIndex.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := (recoveredStack2) isInteger.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := platformStringIndex.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := 1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := (recoveredStack1) > (recoveredStack2).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"kernel.ic method 0x20014b84; bytecode file offset 0x5faa4"
!Locale methodsFor: 'recovered'!
printOn: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredValue0.
    (recoveredValue1) nextPutAll: ('Locale(').
    recoveredValue2 := recoveredValue0.
    recoveredValue3 := (self) language.
    (recoveredValue2) nextPutAll: (recoveredValue3).
    recoveredValue4 := recoveredValue0.
    (recoveredValue4) nextPut: ($-).
    recoveredValue5 := recoveredValue0.
    recoveredValue6 := (self) territory.
    (recoveredValue5) nextPutAll: (recoveredValue6).
    (recoveredValue0) nextPut: ($)).
    ^self
! !

"kernel.ic method 0x200158a4; bytecode file offset 0x607c4"
!Locale methodsFor: 'recovered'!
initializePlatformStringClass
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := platformStringIndex.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) isInteger.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 32].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := platformStringIndex.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := 1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack3 := PlatformStringClasses.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack3 := (recoveredStack3) size.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := (recoveredStack1) between: (recoveredStack2) and: (recoveredStack3).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 22] ifFalse: [recoveredPC := 32].
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := PlatformStringClasses.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack2 := platformStringIndex.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            platformStringClass := recoveredStack1.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredPC := 36.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := String.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            platformStringClass := recoveredStack1.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

