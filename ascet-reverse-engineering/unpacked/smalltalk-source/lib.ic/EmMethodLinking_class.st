"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"lib.ic method 0x20000028; bytecode file offset 0x3c0a8"
!EmMethodLinking class methodsFor: 'recovered'!
_PRAGMA_NlsCatEMdsES
    ^self
! !

"lib.ic method 0x200007e0; bytecode file offset 0x3c804"
!EmMethodLinking class methodsFor: 'recovered'!
packagerIgnoreSelectors
    ^#('linker:' 'useLinker:' 'image')
! !

"lib.ic method 0x2000392c; bytecode file offset 0x3f96c"
!EmMethodLinking class methodsFor: 'recovered'!
localize
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := NlsCatEMdsES.
    recoveredValue1 := (self) defaultMessagesLocale.
    (recoveredValue0) relocalizeTo: (recoveredValue1).
    ^self
! !

"lib.ic method 0x2000a2a0; bytecode file offset 0x462d8"
!EmMethodLinking class methodsFor: 'recovered'!
removing
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := System.
    recoveredValue1 := (recoveredValue0) globalNamespace.
    recoveredValue2 := [
    ^self
].
    recoveredValue3 := (recoveredValue1) classAt: ('EmMethodEdition') ifAbsent: (recoveredValue2).
    recoveredValue4 := recoveredValue3.
    (recoveredValue4) linker: (nil).
    (recoveredValue3) useLinker: (false).
    ^self
! !

"lib.ic method 0x2000a82c; bytecode file offset 0x4688c"
!EmMethodLinking class methodsFor: 'recovered'!
linkErrorException
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := LinkErrorException.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 25] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := ExError.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) newChild.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            LinkErrorException := recoveredStack1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := LinkErrorException.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := NlsCatEMdsES.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack3 := 'MxEMdsES1'.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack2 := (recoveredStack2) residentMsg: (recoveredStack3).
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            (recoveredStack1) description: (recoveredStack2).
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := LinkErrorException.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"lib.ic method 0x2000c714; bytecode file offset 0x48758"
!EmMethodLinking class methodsFor: 'recovered'!
loaded
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    (self) localize.
    recoveredValue0 := System.
    recoveredValue1 := (recoveredValue0) globalNamespace.
    recoveredValue2 := [
    ^self
].
    recoveredValue3 := (recoveredValue1) classAt: ('EmMethodEdition') ifAbsent: (recoveredValue2).
    recoveredValue4 := recoveredValue3.
    recoveredValue5 := EmMethodLinker.
    recoveredValue6 := (recoveredValue5) new.
    (recoveredValue4) linker: (recoveredValue6).
    (recoveredValue3) useLinker: (true).
    ^self
! !

