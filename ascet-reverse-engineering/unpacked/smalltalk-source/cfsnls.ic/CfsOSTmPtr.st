"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"cfsnls.ic method 0x20000518; bytecode file offset 0x23760"
!CfsOSTmPtr methodsFor: 'recovered'!
"VM primitive/special entry 0x15; native fast path not reconstructed; fallback bytecodes follow."
platformFunctionMktime: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := (self) primitiveFailed.
    ^recoveredValue0
! !

"cfsnls.ic method 0x20000bf8; bytecode file offset 0x23e44"
!CfsOSTmPtr methodsFor: 'recovered'!
mktime
    | recoveredValue0 |
    recoveredValue0 := (self) platformFunctionMktime: (self).
    ^recoveredValue0
! !

"cfsnls.ic method 0x2000120c; bytecode file offset 0x24470"
!CfsOSTmPtr methodsFor: 'recovered'!
tmSec
    | recoveredValue0 |
    recoveredValue0 := (self) int32At: (0).
    ^recoveredValue0
! !

"cfsnls.ic method 0x20001284; bytecode file offset 0x244dc"
!CfsOSTmPtr methodsFor: 'recovered'!
tmMin
    | recoveredValue0 |
    recoveredValue0 := (self) int32At: (4).
    ^recoveredValue0
! !

"cfsnls.ic method 0x200012f0; bytecode file offset 0x24524"
!CfsOSTmPtr methodsFor: 'recovered'!
tmHour
    | recoveredValue0 |
    recoveredValue0 := (self) int32At: (8).
    ^recoveredValue0
! !

"cfsnls.ic method 0x20001324; bytecode file offset 0x24558"
!CfsOSTmPtr methodsFor: 'recovered'!
tmMday
    | recoveredValue0 |
    recoveredValue0 := (self) int32At: (12).
    ^recoveredValue0
! !

"cfsnls.ic method 0x2000134c; bytecode file offset 0x24580"
!CfsOSTmPtr methodsFor: 'recovered'!
tmMon
    | recoveredValue0 |
    recoveredValue0 := (self) int32At: (16).
    ^recoveredValue0
! !

"cfsnls.ic method 0x20001360; bytecode file offset 0x24594"
!CfsOSTmPtr methodsFor: 'recovered'!
tmYear
    | recoveredValue0 |
    recoveredValue0 := (self) int32At: (20).
    ^recoveredValue0
! !

"cfsnls.ic method 0x20001374; bytecode file offset 0x245a8"
!CfsOSTmPtr methodsFor: 'recovered'!
tmWday
    | recoveredValue0 |
    recoveredValue0 := (self) int32At: (24).
    ^recoveredValue0
! !

"cfsnls.ic method 0x20001388; bytecode file offset 0x245c8"
!CfsOSTmPtr methodsFor: 'recovered'!
tmYday
    | recoveredValue0 |
    recoveredValue0 := (self) int32At: (28).
    ^recoveredValue0
! !

"cfsnls.ic method 0x200013a8; bytecode file offset 0x245f4"
!CfsOSTmPtr methodsFor: 'recovered'!
tmIsdst
    | recoveredValue0 |
    recoveredValue0 := (self) int32At: (32).
    ^recoveredValue0
! !

"cfsnls.ic method 0x200013c0; bytecode file offset 0x245f4"
!CfsOSTmPtr methodsFor: 'recovered'!
tmIsDst
    | recoveredValue0 |
    recoveredValue0 := (self) int32At: (32).
    ^recoveredValue0
! !

"cfsnls.ic method 0x200013e0; bytecode file offset 0x24614"
!CfsOSTmPtr methodsFor: 'recovered'!
unused1
    | recoveredValue0 |
    recoveredValue0 := (self) int32At: (36).
    ^recoveredValue0
! !

"cfsnls.ic method 0x200013f4; bytecode file offset 0x24634"
!CfsOSTmPtr methodsFor: 'recovered'!
unused2
    | recoveredValue0 |
    recoveredValue0 := (self) int32At: (40).
    ^recoveredValue0
! !

"cfsnls.ic method 0x20003410; bytecode file offset 0x2665c"
!CfsOSTmPtr methodsFor: 'recovered'!
tmSec: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) int32At: (0) put: (recoveredValue0).
    ^self
! !

"cfsnls.ic method 0x20003488; bytecode file offset 0x266bc"
!CfsOSTmPtr methodsFor: 'recovered'!
tmMin: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) int32At: (4) put: (recoveredValue0).
    ^self
! !

"cfsnls.ic method 0x200034d0; bytecode file offset 0x2671c"
!CfsOSTmPtr methodsFor: 'recovered'!
tmHour: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) int32At: (8) put: (recoveredValue0).
    ^self
! !

"cfsnls.ic method 0x20003524; bytecode file offset 0x26764"
!CfsOSTmPtr methodsFor: 'recovered'!
tmMday: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) int32At: (12) put: (recoveredValue0).
    ^self
! !

"cfsnls.ic method 0x20003560; bytecode file offset 0x26794"
!CfsOSTmPtr methodsFor: 'recovered'!
tmMon: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) int32At: (16) put: (recoveredValue0).
    ^self
! !

"cfsnls.ic method 0x20003584; bytecode file offset 0x267b8"
!CfsOSTmPtr methodsFor: 'recovered'!
tmYear: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) int32At: (20) put: (recoveredValue0).
    ^self
! !

"cfsnls.ic method 0x2000359c; bytecode file offset 0x267d0"
!CfsOSTmPtr methodsFor: 'recovered'!
tmWday: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) int32At: (24) put: (recoveredValue0).
    ^self
! !

"cfsnls.ic method 0x200035b4; bytecode file offset 0x267f4"
!CfsOSTmPtr methodsFor: 'recovered'!
tmYday: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) int32At: (28) put: (recoveredValue0).
    ^self
! !

"cfsnls.ic method 0x200035d8; bytecode file offset 0x26824"
!CfsOSTmPtr methodsFor: 'recovered'!
tmIsdst: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) int32At: (32) put: (recoveredValue0).
    ^self
! !

"cfsnls.ic method 0x200035f0; bytecode file offset 0x26824"
!CfsOSTmPtr methodsFor: 'recovered'!
tmIsDst: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) int32At: (32) put: (recoveredValue0).
    ^self
! !

