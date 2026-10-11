"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"HwAccessETarget.ic method 0x200004a0; bytecode file offset 0xce84"
!TGAccessRtioManager class methodsFor: 'recovered'!
pid
    ^0
! !

"HwAccessETarget.ic method 0x20001800; bytecode file offset 0xe1fc"
!TGAccessRtioManager class methodsFor: 'recovered'!
initializeCMethods
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := Dictionary.
    recoveredValue1 := (recoveredValue0) new.
    CMethods := recoveredValue1.
    recoveredValue2 := CMethods.
    recoveredValue3 := recoveredValue2.
    (recoveredValue3) at: ('rewindHwTable()') put: (26).
    recoveredValue4 := recoveredValue2.
    (recoveredValue4) at: ('getNextHwTableEntry()') put: (27).
    ^self
! !

