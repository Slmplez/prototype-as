"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"cfsnls.ic method 0x200014bc; bytecode file offset 0x246fc"
!CfsReadFileStream class methodsFor: 'recovered'!
on: recoveredArg1
    (self) shouldNotImplement.
    ^self
! !

"cfsnls.ic method 0x200015c0; bytecode file offset 0x24800"
!CfsReadFileStream class methodsFor: 'recovered'!
open: recoveredArg1 oflag: recoveredArg2
    (self) shouldNotImplement.
    ^self
! !

"cfsnls.ic method 0x200015cc; bytecode file offset 0x24800"
!CfsReadFileStream class methodsFor: 'recovered'!
read: recoveredArg1 type: recoveredArg2
    (self) shouldNotImplement.
    ^self
! !

"cfsnls.ic method 0x20001600; bytecode file offset 0x24834"
!CfsReadFileStream class methodsFor: 'recovered'!
write: recoveredArg1 mode: recoveredArg2 check: recoveredArg3 type: recoveredArg4
    (self) shouldNotImplement.
    ^self
! !

"cfsnls.ic method 0x20003bc0; bytecode file offset 0x26dfc"
!CfsReadFileStream class methodsFor: 'recovered'!
open: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := CfsFileStream.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := ORDONLY.
    recoveredValue3 := (recoveredValue0) open: (recoveredValue1) oflag: (recoveredValue2).
    ^recoveredValue3
! !

"cfsnls.ic method 0x2000463c; bytecode file offset 0x27878"
!CfsReadFileStream class methodsFor: 'recovered'!
privateOn: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) new.
    recoveredValue1 := recoveredValue0.
    recoveredValue2 := recoveredArg1.
    (recoveredValue1) fileDescriptor: (recoveredValue2).
    recoveredValue3 := recoveredValue0.
    (recoveredValue3) initialize.
    ^recoveredValue0
! !

