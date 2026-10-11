"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2000a79c; bytecode file offset 0x908be4"
!EtasCharacterCheckObject methodsFor: 'recovered'!
getChar
    | recoveredValue0 |
    recoveredValue0 := (self) character.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2002bb94; bytecode file offset 0x934580"
!EtasCharacterCheckObject methodsFor: 'recovered'!
cursorPosition
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) stringUpToChar.
    recoveredValue1 := (recoveredValue0) size.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2006659c; bytecode file offset 0x963428"
!EtasCharacterCheckObject methodsFor: 'recovered'!
character
    | recoveredValue0 |
    recoveredValue0 := character.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200670d4; bytecode file offset 0x9646f8"
!EtasCharacterCheckObject methodsFor: 'recovered'!
stringUpToChar
    | recoveredValue0 |
    recoveredValue0 := stringUpToChar.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200bd97c; bytecode file offset 0x9bb178"
!EtasCharacterCheckObject methodsFor: 'recovered'!
character: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    character := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200bf550; bytecode file offset 0x9bc0b4"
!EtasCharacterCheckObject methodsFor: 'recovered'!
stringUpToChar: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    stringUpToChar := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200fa734; bytecode file offset 0x9f7070"
!EtasCharacterCheckObject methodsFor: 'recovered'!
initialize
    super initialize.
    (self) stringUpToChar: ('').
    ^self
! !

