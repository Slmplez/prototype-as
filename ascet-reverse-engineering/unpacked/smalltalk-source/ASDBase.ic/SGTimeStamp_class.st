"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x200ac2dc; bytecode file offset 0x9a8bc4"
!SGTimeStamp class methodsFor: 'recovered'!
new: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := super new.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) seconds: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x201153fc; bytecode file offset 0xa11cc8"
!SGTimeStamp class methodsFor: 'recovered'!
now
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := Date.
    recoveredValue1 := (recoveredValue0) today.
    recoveredValue2 := (recoveredValue1) asSeconds.
    recoveredValue3 := Time.
    recoveredValue4 := (recoveredValue3) now.
    recoveredValue5 := (recoveredValue4) asSeconds.
    recoveredValue6 := (recoveredValue2) + (recoveredValue5).
    recoveredValue7 := (self) new: (recoveredValue6).
    ^recoveredValue7
! !

