"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"HwAccessETarget.ic method 0x200004b4; bytecode file offset 0xce98"
!TGAccessAdmin class methodsFor: 'recovered'!
pid
    ^2048
! !

"HwAccessETarget.ic method 0x2000406c; bytecode file offset 0x10a98"
!TGAccessAdmin class methodsFor: 'recovered'!
initializeCMethods
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 |
    recoveredValue0 := Dictionary.
    recoveredValue1 := (recoveredValue0) new.
    CMethods := recoveredValue1.
    recoveredValue2 := CMethods.
    recoveredValue3 := recoveredValue2.
    (recoveredValue3) at: ('testFlashEPROM()') put: (1).
    recoveredValue4 := recoveredValue2.
    (recoveredValue4) at: ('eraseFlashEPROM()') put: (2).
    recoveredValue5 := recoveredValue2.
    (recoveredValue5) at: ('programFlashEPROM()') put: (3).
    recoveredValue6 := recoveredValue2.
    (recoveredValue6) at: ('programRAM()') put: (4).
    recoveredValue7 := recoveredValue2.
    (recoveredValue7) at: ('startPPC()') put: (5).
    recoveredValue8 := recoveredValue2.
    (recoveredValue8) at: ('stopPPC()') put: (6).
    recoveredValue9 := recoveredValue2.
    (recoveredValue9) at: ('readTransputerID()') put: (10).
    recoveredValue10 := recoveredValue2.
    (recoveredValue10) at: ('programRAMFast()') put: (12).
    recoveredValue11 := recoveredValue2.
    (recoveredValue11) at: ('checkFTR3FlashEPROM()') put: (13).
    recoveredValue12 := recoveredValue2.
    (recoveredValue12) at: ('eraseFTR3FlashEPROM()') put: (14).
    recoveredValue13 := recoveredValue2.
    (recoveredValue13) at: ('programFTR3FlashEPROM()') put: (15).
    recoveredValue14 := recoveredValue2.
    (recoveredValue14) at: ('programROMFast()') put: (16).
    recoveredValue15 := recoveredValue2.
    (recoveredValue15) at: ('vmeSysReset()') put: (17).
    recoveredValue16 := recoveredValue2.
    (recoveredValue16) at: ('getVersion()') put: (18).
    ^self
! !

