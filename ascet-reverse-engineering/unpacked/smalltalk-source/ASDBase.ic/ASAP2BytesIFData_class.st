"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2001e704; bytecode file offset 0x92209c"
!ASAP2BytesIFData class methodsFor: 'recovered'!
keyWord
    ^'IF_DATA'
! !

"ASDBase.ic method 0x201e8aa4; bytecode file offset 0xae5368"
!ASAP2BytesIFData class methodsFor: 'recovered'!
initializeKeyWords: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) options.
    recoveredValue2 := [
    | recoveredBlock8Value0 recoveredBlock8Value1 |
    recoveredBlock8Value0 := recoveredArg1.
    recoveredBlock8Value1 := (recoveredBlock8Value0) initializeKeyWords.
    recoveredBlock8Value1
].
    (recoveredValue1) ifNil: (recoveredValue2).
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := (recoveredValue3) options.
    (self) options: (recoveredValue4).
    ^self
! !

