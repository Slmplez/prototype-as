"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"cfsnls.ic method 0x20000ddc; bytecode file offset 0x2401c"
!EswClassEncoder methodsFor: 'recovered'!
reserve: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) incrementNextCodeBy: (recoveredValue0).
    ^recoveredValue1
! !

"cfsnls.ic method 0x20000fc8; bytecode file offset 0x241f8"
!EswClassEncoder methodsFor: 'recovered'!
size
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := nextCode.
    recoveredValue1 := (recoveredValue0) + (-1).
    ^recoveredValue1
! !

"cfsnls.ic method 0x20001ad0; bytecode file offset 0x24d00"
!EswClassEncoder methodsFor: 'recovered'!
nextCode
    | recoveredValue0 |
    recoveredValue0 := nextCode.
    ^recoveredValue0
! !

"cfsnls.ic method 0x20002524; bytecode file offset 0x25754"
!EswClassEncoder methodsFor: 'recovered'!
initialize: recoveredArg1
    nextCode := 1.
    ^self
! !

"cfsnls.ic method 0x200029d8; bytecode file offset 0x25c08"
!EswClassEncoder methodsFor: 'recovered'!
incrementNextCode
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := nextCode.
    recoveredValue1 := (recoveredValue0) + (1).
    nextCode := recoveredValue1.
    ^self
! !

"cfsnls.ic method 0x200033a0; bytecode file offset 0x265d0"
!EswClassEncoder methodsFor: 'recovered'!
incrementNextCodeBy: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := nextCode.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) + (recoveredValue1).
    nextCode := recoveredValue2.
    ^self
! !

"cfsnls.ic method 0x20005904; bytecode file offset 0x28b3c"
!EswClassEncoder methodsFor: 'recovered'!
reserveUpTo: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := (recoveredStack2) size.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) > (recoveredStack2).
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 19].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack3 := (recoveredStack3) size.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := (recoveredStack2) - (recoveredStack3).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack1) reserve: (recoveredStack2).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

