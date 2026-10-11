"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"cfsnls.ic method 0x2000064c; bytecode file offset 0x23880"
!CfsWriteFileStream class methodsFor: 'recovered'!
read: recoveredArg1 type: recoveredArg2
    | recoveredValue0 |
    recoveredValue0 := (self) shouldNotImplement.
    ^recoveredValue0
! !

"cfsnls.ic method 0x2000082c; bytecode file offset 0x23a60"
!CfsWriteFileStream class methodsFor: 'recovered'!
write: recoveredArg1 mode: recoveredArg2 check: recoveredArg3 type: recoveredArg4
    | recoveredValue0 |
    recoveredValue0 := (self) shouldNotImplement.
    ^recoveredValue0
! !

"cfsnls.ic method 0x200014c8; bytecode file offset 0x246fc"
!CfsWriteFileStream class methodsFor: 'recovered'!
on: recoveredArg1
    (self) shouldNotImplement.
    ^self
! !

"cfsnls.ic method 0x200015b4; bytecode file offset 0x24800"
!CfsWriteFileStream class methodsFor: 'recovered'!
open: recoveredArg1 oflag: recoveredArg2
    (self) shouldNotImplement.
    ^self
! !

"cfsnls.ic method 0x20004628; bytecode file offset 0x27878"
!CfsWriteFileStream class methodsFor: 'recovered'!
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

"cfsnls.ic method 0x20004c98; bytecode file offset 0x27ef8"
!CfsWriteFileStream class methodsFor: 'recovered'!
open: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := CfsFileStream.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := OWRONLY.
    recoveredValue3 := OCREAT.
    recoveredValue4 := (recoveredValue2) bitOr: (recoveredValue3).
    recoveredValue5 := (recoveredValue0) open: (recoveredValue1) oflag: (recoveredValue4).
    ^recoveredValue5
! !

"cfsnls.ic method 0x200053cc; bytecode file offset 0x28614"
!CfsWriteFileStream class methodsFor: 'recovered'!
openEmptyNoDelete: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := CfsFileStream.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := OWRONLY.
    recoveredValue3 := OCREAT.
    recoveredValue4 := (recoveredValue2) bitOr: (recoveredValue3).
    recoveredValue5 := OTRUNC.
    recoveredValue6 := (recoveredValue4) bitOr: (recoveredValue5).
    recoveredValue7 := (recoveredValue0) open: (recoveredValue1) oflag: (recoveredValue6).
    ^recoveredValue7
! !

"cfsnls.ic method 0x20006a64; bytecode file offset 0x29cb8"
!CfsWriteFileStream class methodsFor: 'recovered'!
openEmpty: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 |
    recoveredValue0 := OSCall.
    recoveredValue1 := (recoveredValue0) new.
    recoveredValue2 := recoveredArg1.
    (recoveredValue1) deleteFile: (recoveredValue2).
    recoveredValue3 := CfsFileStream.
    recoveredValue4 := recoveredArg1.
    recoveredValue5 := OWRONLY.
    recoveredValue6 := OCREAT.
    recoveredValue7 := OTRUNC.
    recoveredValue8 := (recoveredValue6) bitOr: (recoveredValue7).
    recoveredValue9 := (recoveredValue5) bitOr: (recoveredValue8).
    recoveredValue10 := (recoveredValue3) open: (recoveredValue4) oflag: (recoveredValue9).
    ^recoveredValue10
! !

