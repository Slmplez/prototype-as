"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"cfsnls.ic method 0x20001218; bytecode file offset 0x24470"
!CfsOSSecurityAttributes methodsFor: 'recovered'!
nLength
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (0).
    ^recoveredValue0
! !

"cfsnls.ic method 0x20001290; bytecode file offset 0x244dc"
!CfsOSSecurityAttributes methodsFor: 'recovered'!
lpSecurityDescriptor
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (4).
    ^recoveredValue0
! !

"cfsnls.ic method 0x200032d0; bytecode file offset 0x26504"
!CfsOSSecurityAttributes methodsFor: 'recovered'!
bInheritHandle
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) int32At: (8).
    recoveredValue1 := (recoveredValue0) ~= (0).
    ^recoveredValue1
! !

"cfsnls.ic method 0x2000341c; bytecode file offset 0x2665c"
!CfsOSSecurityAttributes methodsFor: 'recovered'!
nLength: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (0) put: (recoveredValue0).
    ^self
! !

"cfsnls.ic method 0x20003470; bytecode file offset 0x266bc"
!CfsOSSecurityAttributes methodsFor: 'recovered'!
lpSecurityDescriptor: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (4) put: (recoveredValue0).
    ^self
! !

"cfsnls.ic method 0x200034dc; bytecode file offset 0x2671c"
!CfsOSSecurityAttributes methodsFor: 'recovered'!
bInheritHandle: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) int32At: (8) put: (recoveredValue0).
    ^self
! !

