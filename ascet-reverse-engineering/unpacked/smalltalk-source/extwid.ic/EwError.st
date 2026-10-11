"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"extwid.ic method 0x20004348; bytecode file offset 0x5512c"
!EwError methodsFor: 'recovered'!
isEwError
    ^true
! !

"extwid.ic method 0x20004d8c; bytecode file offset 0x55b60"
!EwError methodsFor: 'recovered'!
errorString
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) class.
    recoveredValue1 := (recoveredValue0) messageDictionary.
    recoveredValue2 := (self) errorCode.
    recoveredValue3 := (recoveredValue1) at: (recoveredValue2).
    ^recoveredValue3
! !

"extwid.ic method 0x20011d04; bytecode file offset 0x62b00"
!EwError methodsFor: 'recovered'!
printOn: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredValue0.
    recoveredValue2 := (self) class.
    recoveredValue3 := (recoveredValue2) name.
    (recoveredValue1) nextPutAll: (recoveredValue3).
    recoveredValue4 := recoveredValue0.
    (recoveredValue4) nextPutAll: (' (').
    recoveredValue5 := recoveredValue0.
    recoveredValue6 := (self) errorString.
    (recoveredValue5) nextPutAll: (recoveredValue6).
    (recoveredValue0) nextPutAll: (')').
    ^self
! !

