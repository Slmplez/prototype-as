"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x200f710c; bytecode file offset 0x9f3ab4"
!RBNumberError class methodsFor: 'recovered'!
noNumber
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := (self) errorController.
    recoveredValue1 := NoNumberTxt.
    recoveredValue2 := TryAgainTxt.
    recoveredValue3 := UserInterface.
    recoveredValue4 := (recoveredValue0) message: (recoveredValue1) advice: (recoveredValue2) context: (recoveredValue3).
    ^recoveredValue4
! !

