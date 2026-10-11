"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20022730; bytecode file offset 0x92209c"
!ControlSequence methodsFor: 'recovered'!
asCebraFormat
    ^'X'
! !

"ASDBase.ic method 0x2002f2c4; bytecode file offset 0x934580"
!ControlSequence methodsFor: 'recovered'!
asCebraString
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) controlCharacter.
    recoveredValue1 := (recoveredValue0) asString.
    ^recoveredValue1
! !

"ASDBase.ic method 0x200665a4; bytecode file offset 0x963428"
!ControlSequence methodsFor: 'recovered'!
controlCharacter
    | recoveredValue0 |
    recoveredValue0 := controlCharacter.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20072138; bytecode file offset 0x96ee04"
!ControlSequence methodsFor: 'recovered'!
asCebraLength
    ^1
! !

"ASDBase.ic method 0x200be0d4; bytecode file offset 0x9bb178"
!ControlSequence methodsFor: 'recovered'!
controlCharacter: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    controlCharacter := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200e1f58; bytecode file offset 0x9de890"
!ControlSequence methodsFor: 'recovered'!
asString
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) controlCharacter.
    recoveredValue1 := (recoveredValue0) asString.
    recoveredValue2 := ('<control sequence ') , (recoveredValue1).
    recoveredValue3 := (recoveredValue2) , ('>').
    ^recoveredValue3
! !

"ASDBase.ic method 0x200e91c8; bytecode file offset 0x9e5a90"
!ControlSequence methodsFor: 'recovered'!
printOn: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) controlCharacter.
    recoveredValue2 := (recoveredValue1) asString.
    recoveredValue3 := ('$') , (recoveredValue2).
    (recoveredValue0) nextPutAll: (recoveredValue3).
    ^self
! !

