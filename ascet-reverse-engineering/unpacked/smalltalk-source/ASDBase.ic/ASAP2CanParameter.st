"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2000953c; bytecode file offset 0x908be4"
!ASAP2CanParameter methodsFor: 'recovered'!
baudRate
    | recoveredValue0 |
    recoveredValue0 := (self) frequency.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2004bac0; bytecode file offset 0x948384"
!ASAP2CanParameter methodsFor: 'recovered'!
frequency
    | recoveredValue0 |
    recoveredValue0 := (self) at: (4).
    ^recoveredValue0
! !

"ASDBase.ic method 0x2004bcc0; bytecode file offset 0x94877c"
!ASAP2CanParameter methodsFor: 'recovered'!
bitTimingRegister1
    | recoveredValue0 |
    recoveredValue0 := (self) at: (5).
    ^recoveredValue0
! !

"ASDBase.ic method 0x2004c004; bytecode file offset 0x948b80"
!ASAP2CanParameter methodsFor: 'recovered'!
bitTimingRegister2
    | recoveredValue0 |
    recoveredValue0 := (self) at: (6).
    ^recoveredValue0
! !

"ASDBase.ic method 0x200a6500; bytecode file offset 0x9a2f38"
!ASAP2CanParameter methodsFor: 'recovered'!
frequency: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) at: (4) put: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x200a6914; bytecode file offset 0x9a32e0"
!ASAP2CanParameter methodsFor: 'recovered'!
bitTimingRegister1: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) at: (5) put: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x200a6b3c; bytecode file offset 0x9a3694"
!ASAP2CanParameter methodsFor: 'recovered'!
bitTimingRegister2: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) at: (6) put: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x200fb214; bytecode file offset 0x9f7ee4"
!ASAP2CanParameter methodsFor: 'recovered'!
putFrequencyIn: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    (self) putNewLineIn: (recoveredValue0).
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (self) frequency.
    (self) putIn: (recoveredValue1) hex: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x200fb3b8; bytecode file offset 0x9f7ee4"
!ASAP2CanParameter methodsFor: 'recovered'!
putBitTimingRegister2In: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    (self) putNewLineIn: (recoveredValue0).
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (self) bitTimingRegister2.
    (self) putIn: (recoveredValue1) hex: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x200fb430; bytecode file offset 0x9f7ee4"
!ASAP2CanParameter methodsFor: 'recovered'!
putBitTimingRegister1In: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    (self) putNewLineIn: (recoveredValue0).
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (self) bitTimingRegister1.
    (self) putIn: (recoveredValue1) hex: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x200fd718; bytecode file offset 0x9fa1f4"
!ASAP2CanParameter methodsFor: 'recovered'!
getBitTimingRegister2: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    (self) skipComment: (recoveredValue0).
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (self) getInteger: (recoveredValue1).
    (self) bitTimingRegister2: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x200fd8a8; bytecode file offset 0x9fa1f4"
!ASAP2CanParameter methodsFor: 'recovered'!
getBitTimingRegister1: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    (self) skipComment: (recoveredValue0).
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (self) getInteger: (recoveredValue1).
    (self) bitTimingRegister1: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x200fd8bc; bytecode file offset 0x9fa1f4"
!ASAP2CanParameter methodsFor: 'recovered'!
getFrequency: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    (self) skipComment: (recoveredValue0).
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (self) getInteger: (recoveredValue1).
    (self) frequency: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x201a3b3c; bytecode file offset 0xaa0458"
!ASAP2CanParameter methodsFor: 'recovered'!
getFrom: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := recoveredArg1.
    (self) getShortBegin: (recoveredValue0).
    recoveredValue1 := recoveredArg1.
    (self) getFrequency: (recoveredValue1).
    recoveredValue2 := recoveredArg1.
    (self) getBitTimingRegister1: (recoveredValue2).
    recoveredValue3 := recoveredArg1.
    (self) getBitTimingRegister2: (recoveredValue3).
    recoveredValue4 := recoveredArg1.
    (self) getEndKeyword: (recoveredValue4).
    ^self
! !

"ASDBase.ic method 0x202608b0; bytecode file offset 0xb5d184"
!ASAP2CanParameter methodsFor: 'recovered'!
putIn: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 |
    recoveredValue0 := recoveredArg1.
    (self) putBeginIn: (recoveredValue0).
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (self) class.
    recoveredValue3 := (recoveredValue2) keyWord.
    (self) putIn: (recoveredValue1) string: (recoveredValue3).
    recoveredValue4 := recoveredArg1.
    (self) putFrequencyIn: (recoveredValue4).
    recoveredValue5 := recoveredArg1.
    (self) putBitTimingRegister1In: (recoveredValue5).
    recoveredValue6 := recoveredArg1.
    (self) putBitTimingRegister2In: (recoveredValue6).
    recoveredValue7 := recoveredArg1.
    (self) putEndIn: (recoveredValue7).
    recoveredValue8 := recoveredArg1.
    recoveredValue9 := (self) class.
    recoveredValue10 := (recoveredValue9) keyWord.
    (self) putIn: (recoveredValue8) string: (recoveredValue10).
    ^self
! !

