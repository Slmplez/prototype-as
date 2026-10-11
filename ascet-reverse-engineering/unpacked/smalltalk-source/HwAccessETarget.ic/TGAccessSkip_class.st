"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"HwAccessETarget.ic method 0x200004c8; bytecode file offset 0xceac"
!TGAccessSkip class methodsFor: 'recovered'!
pid
    ^4096
! !

"HwAccessETarget.ic method 0x20001788; bytecode file offset 0xe184"
!TGAccessSkip class methodsFor: 'recovered'!
initializeCMethods
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := Dictionary.
    recoveredValue1 := (recoveredValue0) new.
    CMethods := recoveredValue1.
    recoveredValue2 := CMethods.
    recoveredValue3 := recoveredValue2.
    (recoveredValue3) at: ('boot()') put: (1).
    recoveredValue4 := recoveredValue2.
    (recoveredValue4) at: ('skip()') put: (2).
    ^self
! !

