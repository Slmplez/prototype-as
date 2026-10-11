"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"winsys.ic method 0x20002a28; bytecode file offset 0x7ed00"
!CgFontScaled methodsFor: 'recovered'!
vals
    | recoveredValue0 |
    recoveredValue0 := vals.
    ^recoveredValue0
! !

"winsys.ic method 0x20002cd0; bytecode file offset 0x7efc0"
!CgFontScaled methodsFor: 'recovered'!
bitmap
    | recoveredValue0 |
    recoveredValue0 := bitmap.
    ^recoveredValue0
! !

"winsys.ic method 0x20002f28; bytecode file offset 0x7f220"
!CgFontScaled methodsFor: 'recovered'!
font
    | recoveredValue0 |
    recoveredValue0 := font.
    ^recoveredValue0
! !

"winsys.ic method 0x200071a4; bytecode file offset 0x8346c"
!CgFontScaled methodsFor: 'recovered'!
vals: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    vals := recoveredValue0.
    ^self
! !

"winsys.ic method 0x2000731c; bytecode file offset 0x836b4"
!CgFontScaled methodsFor: 'recovered'!
bitmap: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    bitmap := recoveredValue0.
    ^self
! !

"winsys.ic method 0x200075dc; bytecode file offset 0x838d4"
!CgFontScaled methodsFor: 'recovered'!
font: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    font := recoveredValue0.
    ^self
! !

"winsys.ic method 0x2000b520; bytecode file offset 0x876e8"
!CgFontScaled methodsFor: 'recovered'!
isAnamorphic
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
            recoveredStack2 := font.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack2 == nil) ifTrue: [recoveredPC := 15] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := font.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) info.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) anamorphic.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

