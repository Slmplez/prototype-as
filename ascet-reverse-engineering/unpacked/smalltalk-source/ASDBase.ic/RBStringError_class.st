"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x200f6fa0; bytecode file offset 0x9f3ab4"
!RBStringError class methodsFor: 'recovered'!
duplicated
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := (self) errorController.
    recoveredValue1 := NoDuplicateTxt.
    recoveredValue2 := ChangeStringTxt.
    recoveredValue3 := UserInterface.
    recoveredValue4 := (recoveredValue0) message: (recoveredValue1) advice: (recoveredValue2) context: (recoveredValue3).
    ^recoveredValue4
! !

"ASDBase.ic method 0x201aaf44; bytecode file offset 0xaa7908"
!RBStringError class methodsFor: 'recovered'!
noUniqueItem: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 |
    recoveredValue0 := NameNotUniqueTxt.
    recoveredValue1 := Array.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (recoveredValue1) with: (recoveredValue2).
    recoveredValue4 := (self) convertStringTemplate: (recoveredValue0) with: (recoveredValue3).
    recoveredLocal1 := recoveredValue4.
    recoveredValue5 := (self) errorController.
    recoveredValue6 := recoveredLocal1.
    recoveredValue7 := TryAgainTxt.
    recoveredValue8 := UserInterface.
    recoveredValue9 := (recoveredValue5) message: (recoveredValue6) advice: (recoveredValue7) context: (recoveredValue8).
    ^recoveredValue9
! !

"ASDBase.ic method 0x201b8e00; bytecode file offset 0xab56d8"
!RBStringError class methodsFor: 'recovered'!
lineTooLong: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 |
    recoveredValue0 := LineTooLongTxt.
    recoveredValue1 := Array.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (recoveredValue2) printString.
    recoveredValue4 := (recoveredValue1) with: (recoveredValue3).
    recoveredValue5 := (self) convertStringTemplate: (recoveredValue0) with: (recoveredValue4).
    recoveredLocal1 := recoveredValue5.
    recoveredValue6 := (self) errorController.
    recoveredValue7 := recoveredLocal1.
    recoveredValue8 := LineTruncatedTxt.
    recoveredValue9 := UserInterface.
    recoveredValue10 := (recoveredValue6) message: (recoveredValue7) advice: (recoveredValue8) context: (recoveredValue9).
    ^recoveredValue10
! !

"ASDBase.ic method 0x201d2994; bytecode file offset 0xacf2e0"
!RBStringError class methodsFor: 'recovered'!
invalidItem: recoveredArg1 for: recoveredArg2
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 |
    recoveredValue0 := InValidNameTxt.
    recoveredValue1 := Array.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := recoveredArg2.
    recoveredValue4 := (recoveredValue1) with: (recoveredValue2) with: (recoveredValue3).
    recoveredValue5 := (self) convertStringTemplate: (recoveredValue0) with: (recoveredValue4).
    recoveredLocal1 := recoveredValue5.
    recoveredValue6 := (self) errorController.
    recoveredValue7 := recoveredLocal1.
    recoveredValue8 := TryAgainTxt.
    recoveredValue9 := UserInterface.
    recoveredValue10 := (recoveredValue6) message: (recoveredValue7) advice: (recoveredValue8) context: (recoveredValue9).
    ^recoveredValue10
! !

