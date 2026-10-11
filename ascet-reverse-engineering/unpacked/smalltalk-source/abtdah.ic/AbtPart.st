"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"abtdah.ic method 0x200006dc; bytecode file offset 0x10704"
!AbtPart methodsFor: 'recovered'!
initialize
    abtIsDestroyed := false.
    ^self
! !

"abtdah.ic method 0x20000998; bytecode file offset 0x109c0"
!AbtPart methodsFor: 'recovered'!
abtIsDestroyed
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := abtIsDestroyed.
    recoveredValue1 := (recoveredValue0) == (true).
    ^recoveredValue1
! !

"abtdah.ic method 0x20001438; bytecode file offset 0x11468"
!AbtPart methodsFor: 'recovered'!
userInfoAt: recoveredArg1 put: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) userInfo.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := (recoveredValue0) at: (recoveredValue1) put: (recoveredValue2).
    ^recoveredValue3
! !

"abtdah.ic method 0x20001678; bytecode file offset 0x116ac"
!AbtPart methodsFor: 'recovered'!
userInfoAt: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) userInfo.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := [].
    recoveredValue3 := (recoveredValue0) at: (recoveredValue1) ifAbsent: (recoveredValue2).
    ^recoveredValue3
! !

"abtdah.ic method 0x200029e4; bytecode file offset 0x12a14"
!AbtPart methodsFor: 'recovered'!
userInfo
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := userInfo.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 15] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := Array.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            userInfo := recoveredStack1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := userInfo.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

