"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"HwAccessETarget.ic method 0x20000488; bytecode file offset 0xce84"
!TGAccessOperatingSystem class methodsFor: 'recovered'!
pid
    ^0
! !

"HwAccessETarget.ic method 0x200017c4; bytecode file offset 0xe1c0"
!TGAccessOperatingSystem class methodsFor: 'recovered'!
initializeCMethods
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := Dictionary.
    recoveredValue1 := (recoveredValue0) new.
    CMethods := recoveredValue1.
    recoveredValue2 := CMethods.
    recoveredValue3 := recoveredValue2.
    (recoveredValue3) at: ('stopUserMode()') put: (4).
    recoveredValue4 := recoveredValue2.
    (recoveredValue4) at: ('getOpMode()') put: (6).
    ^self
! !

