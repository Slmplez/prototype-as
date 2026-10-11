"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x200b3804; bytecode file offset 0x9b00e0"
!RBDBError class methodsFor: 'recovered'!
nothingToSave
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) errorController.
    recoveredValue1 := NothingToSaveTxt.
    recoveredValue2 := ThinkTxt.
    recoveredValue3 := (recoveredValue0) message: (recoveredValue1) advice: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x200b381c; bytecode file offset 0x9b00e0"
!RBDBError class methodsFor: 'recovered'!
noOpenDB
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) errorController.
    recoveredValue1 := NoOpenDBTxt.
    recoveredValue2 := OpenDBTxt.
    recoveredValue3 := (recoveredValue0) message: (recoveredValue1) advice: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x2017b8c8; bytecode file offset 0xa781e0"
!RBDBError class methodsFor: 'recovered'!
saveCancelItem: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 |
    recoveredValue0 := SaveItTxt.
    recoveredValue1 := Array.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (recoveredValue1) with: (recoveredValue2).
    recoveredValue4 := (self) convertStringTemplate: (recoveredValue0) with: (recoveredValue3).
    recoveredLocal1 := recoveredValue4.
    recoveredValue5 := (self) errorController.
    recoveredValue6 := recoveredLocal1.
    recoveredValue7 := LostChangesTxt.
    recoveredValue8 := (recoveredValue5) confirmCancel: (recoveredValue6) advice: (recoveredValue7).
    ^recoveredValue8
! !

"ASDBase.ic method 0x2017b8ec; bytecode file offset 0xa781e0"
!RBDBError class methodsFor: 'recovered'!
saveItem: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 |
    recoveredValue0 := SaveItTxt.
    recoveredValue1 := Array.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (recoveredValue1) with: (recoveredValue2).
    recoveredValue4 := (self) convertStringTemplate: (recoveredValue0) with: (recoveredValue3).
    recoveredLocal1 := recoveredValue4.
    recoveredValue5 := (self) errorController.
    recoveredValue6 := recoveredLocal1.
    recoveredValue7 := LostChangesTxt.
    recoveredValue8 := (recoveredValue5) confirm: (recoveredValue6) advice: (recoveredValue7).
    ^recoveredValue8
! !

"ASDBase.ic method 0x2017b910; bytecode file offset 0xa781e0"
!RBDBError class methodsFor: 'recovered'!
couldNotLoad: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 |
    recoveredValue0 := CouldNotLoadTxt.
    recoveredValue1 := Array.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (recoveredValue1) with: (recoveredValue2).
    recoveredValue4 := (self) convertStringTemplate: (recoveredValue0) with: (recoveredValue3).
    recoveredLocal1 := recoveredValue4.
    recoveredValue5 := (self) errorController.
    recoveredValue6 := recoveredLocal1.
    recoveredValue7 := AskETASTxt.
    recoveredValue8 := (recoveredValue5) message: (recoveredValue6) advice: (recoveredValue7).
    ^recoveredValue8
! !

