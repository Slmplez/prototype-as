"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20049e4c; bytecode file offset 0x947128"
!SGEsdlStrategy class methodsFor: 'recovered'!
create
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) createWriteStream.
    recoveredValue1 := (self) createOn: (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x200bd774; bytecode file offset 0x9ba038"
!SGEsdlStrategy class methodsFor: 'recovered'!
createOn: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := (self) new.
    recoveredValue1 := (recoveredValue0) initialize.
    recoveredValue2 := recoveredValue1.
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := (recoveredValue3) asESDLCodeStream.
    (recoveredValue2) sourceStream: (recoveredValue4).
    ^recoveredValue1
! !

