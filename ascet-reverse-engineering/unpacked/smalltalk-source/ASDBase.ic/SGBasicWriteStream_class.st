"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x200abfd8; bytecode file offset 0x9a894c"
!SGBasicWriteStream class methodsFor: 'recovered'!
createWithStream: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) new.
    recoveredValue1 := (recoveredValue0) initialize.
    recoveredValue2 := recoveredValue1.
    recoveredValue3 := recoveredArg1.
    (recoveredValue2) writeStream: (recoveredValue3).
    ^recoveredValue1
! !

"ASDBase.ic method 0x2011495c; bytecode file offset 0xa1122c"
!SGBasicWriteStream class methodsFor: 'recovered'!
create
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := WriteStream.
    recoveredValue1 := Locale.
    recoveredValue2 := (recoveredValue1) current.
    recoveredValue3 := (recoveredValue2) preferredStringClass.
    recoveredValue4 := (recoveredValue3) new.
    recoveredValue5 := (recoveredValue0) on: (recoveredValue4).
    recoveredValue6 := (self) createWithStream: (recoveredValue5).
    ^recoveredValue6
! !

"ASDBase.ic method 0x201302e8; bytecode file offset 0xa2cbb8"
!SGBasicWriteStream class methodsFor: 'recovered'!
create: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := WriteStream.
    recoveredValue1 := Locale.
    recoveredValue2 := (recoveredValue1) current.
    recoveredValue3 := (recoveredValue2) preferredStringClass.
    recoveredValue4 := recoveredArg1.
    recoveredValue5 := (recoveredValue3) new: (recoveredValue4).
    recoveredValue6 := (recoveredValue0) on: (recoveredValue5).
    recoveredValue7 := (self) createWithStream: (recoveredValue6).
    ^recoveredValue7
! !

