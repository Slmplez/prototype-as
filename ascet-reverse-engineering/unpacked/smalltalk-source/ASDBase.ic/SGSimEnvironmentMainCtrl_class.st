"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20080fe0; bytecode file offset 0x97d89c"
!SGSimEnvironmentMainCtrl class methodsFor: 'recovered'!
maxSelectionSize
    ^1000
! !

"ASDBase.ic method 0x2016cac0; bytecode file offset 0xa6938c"
!SGSimEnvironmentMainCtrl class methodsFor: 'recovered'!
create: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 |
    recoveredValue0 := (self) new.
    recoveredValue1 := (recoveredValue0) initialize.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := recoveredLocal1.
    recoveredValue3 := recoveredArg1.
    (recoveredValue2) userInterface: (recoveredValue3).
    recoveredValue4 := recoveredLocal1.
    recoveredValue5 := SGSimEnvironment.
    recoveredValue6 := recoveredLocal1.
    recoveredValue7 := (recoveredValue5) create: (recoveredValue6).
    (recoveredValue4) simEnvironment: (recoveredValue7).
    recoveredValue8 := recoveredLocal1.
    ^recoveredValue8
! !

"ASDBase.ic method 0x2026bdb8; bytecode file offset 0xb6869c"
!SGSimEnvironmentMainCtrl class methodsFor: 'recovered'!
promptMaxSelectionMessageCurrentSize: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 |
    recoveredValue0 := RBUserInfo.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue1) printString.
    recoveredValue3 := ('You selected ') , (recoveredValue2).
    recoveredValue4 := (recoveredValue3) , (' elements!! You can only add a maximum of ').
    recoveredValue5 := (self) maxSelectionSize.
    recoveredValue6 := (recoveredValue5) printString.
    recoveredValue7 := (recoveredValue4) , (recoveredValue6).
    recoveredValue8 := (recoveredValue7) , (' elements.').
    recoveredValue9 := (recoveredValue0) errorMessage: (recoveredValue8).
    recoveredValue10 := recoveredValue9.
    recoveredValue11 := (self) maxSelectionSize.
    recoveredValue12 := (recoveredValue11) printString.
    recoveredValue13 := ('Reduce selection amount to at most ') , (recoveredValue12).
    recoveredValue14 := (recoveredValue13) , ('.').
    (recoveredValue10) advice: (recoveredValue14).
    recoveredValue15 := (recoveredValue9) prompt.
    ^recoveredValue15
! !

