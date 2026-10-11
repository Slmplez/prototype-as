"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"xxx_dyn.ic method 0x20004668; bytecode file offset 0x6592c"
!Symbol methodsFor: 'recovered'!
sstIsExportKey
    ^true
! !

"xxx_dyn.ic method 0x20009124; bytecode file offset 0x6a1f0"
!Symbol methodsFor: 'recovered'!
sstIn: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := SstRemoteReference.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) forKey: (self) in: (recoveredValue1) context: (nil).
    ^recoveredValue2
! !

"xxx_dyn.ic method 0x20009510; bytecode file offset 0x6a5fc"
!Symbol methodsFor: 'recovered'!
sstIn: recoveredArg1 context: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := SstRemoteReference.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := (recoveredValue0) forKey: (self) in: (recoveredValue1) context: (recoveredValue2).
    ^recoveredValue3
! !

