"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20060404; bytecode file offset 0x95ccc0"
!SGBasicTempWriteStream methodsFor: 'recovered'!
releaseGetContents
    | recoveredValue0 |
    (self) releaseTempStream.
    recoveredValue0 := (self) contents.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20090820; bytecode file offset 0x98d0ec"
!SGBasicTempWriteStream methodsFor: 'recovered'!
isEmpty
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) writeStream.
    recoveredValue1 := (recoveredValue0) position.
    recoveredValue2 := (recoveredValue1) = (0).
    ^recoveredValue2
! !

"ASDBase.ic method 0x200a1658; bytecode file offset 0x99dfb8"
!SGBasicTempWriteStream methodsFor: 'recovered'!
releaseTempStream
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) class.
    recoveredValue1 := (self) writeStream.
    (recoveredValue0) pushStream: (recoveredValue1).
    ^self
! !

