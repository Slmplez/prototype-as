"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2000b438; bytecode file offset 0x908be4"
!SGAccessElement methodsFor: 'recovered'!
address
    | recoveredValue0 |
    recoveredValue0 := (self) oidNumber.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2002f744; bytecode file offset 0x934580"
!SGAccessElement methodsFor: 'recovered'!
getSemaphore
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) class.
    recoveredValue1 := (recoveredValue0) getSemaphore.
    ^recoveredValue1
! !

"ASDBase.ic method 0x200401c8; bytecode file offset 0x93d278"
!SGAccessElement methodsFor: 'recovered'!
implType
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := charElement.
    recoveredValue1 := (recoveredValue0) getImplType.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20057db8; bytecode file offset 0x956284"
!SGAccessElement methodsFor: 'recovered'!
semaphoreCritical: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) getSemaphore.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) critical: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x20066e04; bytecode file offset 0x9646f8"
!SGAccessElement methodsFor: 'recovered'!
oidNumber
    | recoveredValue0 |
    recoveredValue0 := oidNumber.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20067d3c; bytecode file offset 0x9646f8"
!SGAccessElement methodsFor: 'recovered'!
asap3Address
    | recoveredValue0 |
    recoveredValue0 := oidNumber.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2007a8ec; bytecode file offset 0x97c330"
!SGAccessElement methodsFor: 'recovered'!
canCheckMonotony
    ^false
! !

"ASDBase.ic method 0x200b1dec; bytecode file offset 0x9ae708"
!SGAccessElement methodsFor: 'recovered'!
loggingChannelGroup
    | recoveredValue0 |
    recoveredValue0 := ('hw') == ('call_84818').
    ^nil
! !

"ASDBase.ic method 0x200bddb4; bytecode file offset 0x9bb178"
!SGAccessElement methodsFor: 'recovered'!
charElement: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    charElement := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200bea80; bytecode file offset 0x9bc0b4"
!SGAccessElement methodsFor: 'recovered'!
oidNumber: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    oidNumber := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x201b2ed8; bytecode file offset 0xaaf7a8"
!SGAccessElement methodsFor: 'recovered'!
printOn: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredValue0.
    recoveredValue2 := (self) class.
    recoveredValue3 := (recoveredValue2) name.
    (recoveredValue1) nextPutAll: (recoveredValue3).
    (recoveredValue0) cr.
    recoveredValue4 := recoveredArg1.
    recoveredValue5 := oidNumber.
    recoveredValue6 := (recoveredValue5) printString.
    recoveredValue7 := ('oidNumber: ') , (recoveredValue6).
    (recoveredValue4) nextPutAll: (recoveredValue7).
    recoveredValue8 := recoveredArg1.
    ^recoveredValue8
! !

