"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"xxx_dyn.ic method 0x20004690; bytecode file offset 0x6592c"
!SmallInteger methodsFor: 'recovered'!
sstIsExportKey
    ^true
! !

"xxx_dyn.ic method 0x200046b8; bytecode file offset 0x6592c"
!SmallInteger methodsFor: 'recovered'!
sstIsComponentName
    ^true
! !

"xxx_dyn.ic method 0x20004d9c; bytecode file offset 0x65e64"
!SmallInteger methodsFor: 'recovered'!
sstIn: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) sstIn: (recoveredValue0) context: (nil).
    ^recoveredValue1
! !

"xxx_dyn.ic method 0x20009530; bytecode file offset 0x6a5fc"
!SmallInteger methodsFor: 'recovered'!
sstIn: recoveredArg1 context: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := SstRemoteReference.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := (recoveredValue0) forKey: (self) in: (recoveredValue1) context: (recoveredValue2).
    ^recoveredValue3
! !

