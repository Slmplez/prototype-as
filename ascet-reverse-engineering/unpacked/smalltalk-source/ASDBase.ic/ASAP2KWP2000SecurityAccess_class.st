"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2002105c; bytecode file offset 0x92209c"
!ASAP2KWP2000SecurityAccess class methodsFor: 'recovered'!
members
    ^#('accessMode' 'seedAndKeyCalculation' 'delayTime' 'seedKey')
! !

"ASDBase.ic method 0x20023b70; bytecode file offset 0x92209c"
!ASAP2KWP2000SecurityAccess class methodsFor: 'recovered'!
keyWord
    ^'SECURITY_ACCESS'
! !

"ASDBase.ic method 0x20072d48; bytecode file offset 0x96f6d4"
!ASAP2KWP2000SecurityAccess class methodsFor: 'recovered'!
fixedSize
    ^4
! !

"ASDBase.ic method 0x201f338c; bytecode file offset 0xaefc68"
!ASAP2KWP2000SecurityAccess class methodsFor: 'recovered'!
initializeKeyWords
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    super initializeKeyWords.
    recoveredValue0 := (self) keyWords.
    (recoveredValue0) at: ('SEED_KEY') put: ('getSeedKey:').
    recoveredValue1 := options.
    recoveredValue2 := Association.
    recoveredValue3 := (recoveredValue2) key: ('SEED_KEY') value: ('putIn:seedKey:').
    (recoveredValue1) add: (recoveredValue3).
    ^self
! !

