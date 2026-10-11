"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20072a28; bytecode file offset 0x96f3cc"
!ASAP2KWP2000Mode class methodsFor: 'recovered'!
fixedSize
    ^3
! !

"ASDBase.ic method 0x202eace8; bytecode file offset 0xbe75dc"
!ASAP2KWP2000Mode class methodsFor: 'recovered'!
initializeKeyWords
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    super initializeKeyWords.
    recoveredValue0 := (self) keyWords.
    recoveredValue1 := recoveredValue0.
    (recoveredValue1) at: ('AVAILABLE_ON') put: ('getAvailable:').
    recoveredValue2 := recoveredValue0.
    (recoveredValue2) at: ('AVAILABLE') put: ('getAvailable:').
    recoveredValue3 := recoveredValue0.
    (recoveredValue3) at: ('MAX_NO_OF_SIGNALS') put: ('getMaxNumberOfSignals:').
    (recoveredValue0) at: ('MAX_NO_OF_BYTES') put: ('getMaxNumberOfBytes:').
    recoveredValue4 := (self) options.
    recoveredValue5 := Association.
    recoveredValue6 := (recoveredValue5) key: ('AVAILABLE') value: ('putIn:available:').
    (recoveredValue4) add: (recoveredValue6).
    ^self
! !

