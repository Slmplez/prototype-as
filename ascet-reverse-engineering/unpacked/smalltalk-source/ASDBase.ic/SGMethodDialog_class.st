"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x200e2fd8; bytecode file offset 0x9df890"
!SGMethodDialog class methodsFor: 'recovered'!
minSize
    | recoveredValue0 |
    recoveredValue0 := (330) @ (470).
    ^recoveredValue0
! !

"ASDBase.ic method 0x201ace04; bytecode file offset 0xaa96d0"
!SGMethodDialog class methodsFor: 'recovered'!
createForMethod: recoveredArg1 sgClass: recoveredArg2 context: recoveredArg3
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 |
    recoveredValue0 := (self) new.
    recoveredValue1 := recoveredValue0.
    recoveredValue2 := SGMethodCtrl.
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := recoveredArg2.
    recoveredValue5 := recoveredArg3.
    recoveredValue6 := (recoveredValue2) createForMethod: (recoveredValue3) sgClass: (recoveredValue4) context: (recoveredValue5).
    (recoveredValue1) uiController: (recoveredValue6).
    recoveredLocal1 := recoveredValue0.
    recoveredValue7 := recoveredLocal1.
    recoveredValue8 := (recoveredValue7) uiController.
    recoveredValue9 := recoveredLocal1.
    (recoveredValue8) userInterface: (recoveredValue9).
    recoveredValue10 := recoveredLocal1.
    ^recoveredValue10
! !

"ASDBase.ic method 0x20272f20; bytecode file offset 0xb6f800"
!SGMethodDialog class methodsFor: 'recovered'!
createForMethod: recoveredArg1 specController: recoveredArg2 sgClass: recoveredArg3 context: recoveredArg4
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 |
    recoveredValue0 := (self) new.
    recoveredValue1 := recoveredValue0.
    recoveredValue2 := SGMethodCtrl.
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := recoveredArg3.
    recoveredValue5 := recoveredArg4.
    recoveredValue6 := (recoveredValue2) createForMethod: (recoveredValue3) sgClass: (recoveredValue4) context: (recoveredValue5).
    recoveredValue7 := recoveredValue6.
    recoveredValue8 := recoveredArg3.
    recoveredValue9 := (recoveredValue8) defaultReturnType.
    (recoveredValue7) defaultReturnType: (recoveredValue9).
    recoveredValue10 := recoveredArg3.
    recoveredValue11 := (recoveredValue10) allowedReturnTypes.
    recoveredValue12 := (recoveredValue6) typeTemplates: (recoveredValue11).
    (recoveredValue1) uiController: (recoveredValue12).
    recoveredValue13 := recoveredValue0.
    recoveredValue14 := recoveredArg2.
    (recoveredValue13) specController: (recoveredValue14).
    recoveredLocal1 := recoveredValue0.
    recoveredValue15 := recoveredLocal1.
    recoveredValue16 := (recoveredValue15) uiController.
    recoveredValue17 := recoveredLocal1.
    (recoveredValue16) userInterface: (recoveredValue17).
    recoveredValue18 := recoveredLocal1.
    ^recoveredValue18
! !

