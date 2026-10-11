"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"cfsnls.ic method 0x200014b0; bytecode file offset 0x246fc"
!CfsReadWriteFileStream class methodsFor: 'recovered'!
on: recoveredArg1
    (self) shouldNotImplement.
    ^self
! !

"cfsnls.ic method 0x20004614; bytecode file offset 0x27878"
!CfsReadWriteFileStream class methodsFor: 'recovered'!
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

"cfsnls.ic method 0x20004cb4; bytecode file offset 0x27ef8"
!CfsReadWriteFileStream class methodsFor: 'recovered'!
open: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := CfsFileStream.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := ORDWR.
    recoveredValue3 := OCREAT.
    recoveredValue4 := (recoveredValue2) bitOr: (recoveredValue3).
    recoveredValue5 := (recoveredValue0) open: (recoveredValue1) oflag: (recoveredValue4).
    ^recoveredValue5
! !

"cfsnls.ic method 0x20005dec; bytecode file offset 0x2903c"
!CfsReadWriteFileStream class methodsFor: 'recovered'!
openEmpty: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 |
    recoveredValue0 := OSCall.
    recoveredValue1 := (recoveredValue0) new.
    recoveredValue2 := recoveredArg1.
    (recoveredValue1) deleteFile: (recoveredValue2).
    recoveredValue3 := CfsFileStream.
    recoveredValue4 := recoveredArg1.
    recoveredValue5 := ORDWR.
    recoveredValue6 := OCREAT.
    recoveredValue7 := (recoveredValue5) bitOr: (recoveredValue6).
    recoveredValue8 := (recoveredValue3) open: (recoveredValue4) oflag: (recoveredValue7).
    ^recoveredValue8
! !

