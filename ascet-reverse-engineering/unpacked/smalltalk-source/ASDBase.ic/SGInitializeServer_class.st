"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x200d9fa8; bytecode file offset 0x9d6868"
!SGInitializeServer class methodsFor: 'recovered'!
createForDatamodelManager: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) new.
    recoveredValue1 := recoveredValue0.
    (recoveredValue1) initialize.
    recoveredValue2 := recoveredValue0.
    recoveredValue3 := recoveredArg1.
    (recoveredValue2) datamodelManager: (recoveredValue3).
    ^recoveredValue0
! !

"ASDBase.ic method 0x203964a4; bytecode file offset 0xc92d8c"
!SGInitializeServer class methodsFor: 'recovered'!
controlTypes
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 |
    recoveredValue0 := Dictionary.
    recoveredValue1 := (recoveredValue0) new.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := recoveredLocal1.
    recoveredValue3 := recoveredValue2.
    (recoveredValue3) at: ('ControlsMux') put: (nil).
    recoveredValue4 := recoveredValue2.
    (recoveredValue4) at: ('ControlsIfThen') put: (1).
    recoveredValue5 := recoveredValue2.
    (recoveredValue5) at: ('ControlsIfThenElse') put: (1).
    recoveredValue6 := recoveredValue2.
    (recoveredValue6) at: ('ControlsWhile') put: (1).
    recoveredValue7 := recoveredValue2.
    (recoveredValue7) at: ('ControlsCase') put: (nil).
    recoveredValue8 := recoveredValue2.
    (recoveredValue8) at: ('ControlsSwitch') put: (nil).
    recoveredValue9 := recoveredValue2.
    (recoveredValue9) at: ('ControlsBreak') put: (nil).
    recoveredValue10 := recoveredValue2.
    (recoveredValue10) at: ('ControlsRteAccess') put: (nil).
    recoveredValue11 := recoveredValue2.
    (recoveredValue11) at: ('ControlsRteInvoke') put: (nil).
    recoveredValue12 := recoveredValue2.
    (recoveredValue12) at: ('ControlsRteStatus') put: (nil).
    recoveredValue13 := recoveredLocal1.
    ^recoveredValue13
! !

"ASDBase.ic method 0x204f8e74; bytecode file offset 0xdf579c"
!SGInitializeServer class methodsFor: 'recovered'!
operatorClasses
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 recoveredValue21 recoveredValue22 recoveredValue23 recoveredValue24 recoveredValue25 recoveredValue26 recoveredValue27 recoveredValue28 recoveredValue29 recoveredValue30 recoveredValue31 recoveredValue32 recoveredValue33 recoveredValue34 recoveredValue35 recoveredValue36 recoveredValue37 recoveredValue38 recoveredValue39 recoveredValue40 recoveredValue41 recoveredValue42 recoveredValue43 recoveredValue44 recoveredValue45 recoveredValue46 recoveredValue47 recoveredValue48 recoveredValue49 |
    recoveredValue0 := Dictionary.
    recoveredValue1 := (recoveredValue0) new.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := recoveredLocal1.
    recoveredValue3 := recoveredValue2.
    recoveredValue4 := SGOperatorGO.
    (recoveredValue3) at: ('OperationsAdd') put: (recoveredValue4).
    recoveredValue5 := recoveredValue2.
    recoveredValue6 := SGOperatorGO.
    (recoveredValue5) at: ('OperationsSub') put: (recoveredValue6).
    recoveredValue7 := recoveredValue2.
    recoveredValue8 := SGOperatorGO.
    (recoveredValue7) at: ('OperationsMul') put: (recoveredValue8).
    recoveredValue9 := recoveredValue2.
    recoveredValue10 := SGOperatorGO.
    (recoveredValue9) at: ('OperationsDiv') put: (recoveredValue10).
    recoveredValue11 := recoveredValue2.
    recoveredValue12 := SGOperatorGO.
    (recoveredValue11) at: ('OperationsMod') put: (recoveredValue12).
    recoveredValue13 := recoveredValue2.
    recoveredValue14 := SGOperatorGO.
    (recoveredValue13) at: ('OperationsAnd') put: (recoveredValue14).
    recoveredValue15 := recoveredValue2.
    recoveredValue16 := SGOperatorGO.
    (recoveredValue15) at: ('OperationsOr') put: (recoveredValue16).
    recoveredValue17 := recoveredValue2.
    recoveredValue18 := SGOperatorGO.
    (recoveredValue17) at: ('OperationsGreater') put: (recoveredValue18).
    recoveredValue19 := recoveredValue2.
    recoveredValue20 := SGOperatorGO.
    (recoveredValue19) at: ('OperationsSmaller') put: (recoveredValue20).
    recoveredValue21 := recoveredValue2.
    recoveredValue22 := SGOperatorGO.
    (recoveredValue21) at: ('OperationsSmallerEqual') put: (recoveredValue22).
    recoveredValue23 := recoveredValue2.
    recoveredValue24 := SGOperatorGO.
    (recoveredValue23) at: ('OperationsGreaterEqual') put: (recoveredValue24).
    recoveredValue25 := recoveredValue2.
    recoveredValue26 := SGOperatorGO.
    (recoveredValue25) at: ('OperationsEqual') put: (recoveredValue26).
    recoveredValue27 := recoveredValue2.
    recoveredValue28 := SGOperatorGO.
    (recoveredValue27) at: ('OperationsNotEqual') put: (recoveredValue28).
    recoveredValue29 := recoveredValue2.
    recoveredValue30 := SGOperatorGO.
    (recoveredValue29) at: ('OperationsAbs') put: (recoveredValue30).
    recoveredValue31 := recoveredValue2.
    recoveredValue32 := SGOperatorGO.
    (recoveredValue31) at: ('OperationsMin') put: (recoveredValue32).
    recoveredValue33 := recoveredValue2.
    recoveredValue34 := SGOperatorGO.
    (recoveredValue33) at: ('OperationsMax') put: (recoveredValue34).
    recoveredValue35 := recoveredValue2.
    recoveredValue36 := SGOperatorGO.
    (recoveredValue35) at: ('OperationsBetween') put: (recoveredValue36).
    recoveredValue37 := recoveredValue2.
    recoveredValue38 := SGOperatorGO.
    (recoveredValue37) at: ('OperationsNot') put: (recoveredValue38).
    recoveredValue39 := recoveredValue2.
    recoveredValue40 := SGOperatorGO.
    (recoveredValue39) at: ('OperationsNeg') put: (recoveredValue40).
    recoveredValue41 := recoveredValue2.
    recoveredValue42 := SGOperatorGO.
    (recoveredValue41) at: ('OperationsVerify') put: (recoveredValue42).
    recoveredValue43 := recoveredValue2.
    recoveredValue44 := ASDConversionGO.
    (recoveredValue43) at: ('OperationsWrapAround') put: (recoveredValue44).
    recoveredValue45 := recoveredValue2.
    recoveredValue46 := ASDConversionGO.
    (recoveredValue45) at: ('OperationsLimit') put: (recoveredValue46).
    recoveredValue47 := recoveredValue2.
    recoveredValue48 := ASDAssertGO.
    (recoveredValue47) at: ('OperationsAssert') put: (recoveredValue48).
    recoveredValue49 := recoveredLocal1.
    ^recoveredValue49
! !

"ASDBase.ic method 0x204f8fa0; bytecode file offset 0xdf5914"
!SGInitializeServer class methodsFor: 'recovered'!
operatorTypes
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 recoveredValue21 recoveredValue22 recoveredValue23 recoveredValue24 recoveredValue25 recoveredValue26 |
    recoveredValue0 := Dictionary.
    recoveredValue1 := (recoveredValue0) new.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := recoveredLocal1.
    recoveredValue3 := recoveredValue2.
    (recoveredValue3) at: ('OperationsAdd') put: ('+').
    recoveredValue4 := recoveredValue2.
    (recoveredValue4) at: ('OperationsSub') put: ('-').
    recoveredValue5 := recoveredValue2.
    (recoveredValue5) at: ('OperationsMul') put: ('*').
    recoveredValue6 := recoveredValue2.
    (recoveredValue6) at: ('OperationsDiv') put: ('/').
    recoveredValue7 := recoveredValue2.
    (recoveredValue7) at: ('OperationsMod') put: ('%').
    recoveredValue8 := recoveredValue2.
    (recoveredValue8) at: ('OperationsAnd') put: ('&').
    recoveredValue9 := recoveredValue2.
    (recoveredValue9) at: ('OperationsOr') put: ('|').
    recoveredValue10 := recoveredValue2.
    (recoveredValue10) at: ('OperationsGreater') put: ('>').
    recoveredValue11 := recoveredValue2.
    (recoveredValue11) at: ('OperationsSmaller') put: ('<').
    recoveredValue12 := recoveredValue2.
    (recoveredValue12) at: ('OperationsSmallerEqual') put: ('<=').
    recoveredValue13 := recoveredValue2.
    (recoveredValue13) at: ('OperationsGreaterEqual') put: ('>=').
    recoveredValue14 := recoveredValue2.
    (recoveredValue14) at: ('OperationsEqual') put: ('=').
    recoveredValue15 := recoveredValue2.
    (recoveredValue15) at: ('OperationsNotEqual') put: ('!!=').
    recoveredValue16 := recoveredValue2.
    (recoveredValue16) at: ('OperationsAbs') put: ('abs').
    recoveredValue17 := recoveredValue2.
    (recoveredValue17) at: ('OperationsMin') put: ('min').
    recoveredValue18 := recoveredValue2.
    (recoveredValue18) at: ('OperationsMax') put: ('max').
    recoveredValue19 := recoveredValue2.
    (recoveredValue19) at: ('OperationsBetween') put: ('bet').
    recoveredValue20 := recoveredValue2.
    (recoveredValue20) at: ('OperationsNot') put: ('not').
    recoveredValue21 := recoveredValue2.
    (recoveredValue21) at: ('OperationsNeg') put: ('neg').
    recoveredValue22 := recoveredValue2.
    (recoveredValue22) at: ('OperationsVerify') put: ('verify').
    recoveredValue23 := recoveredValue2.
    (recoveredValue23) at: ('OperationsWrapAround') put: ('conversion').
    recoveredValue24 := recoveredValue2.
    (recoveredValue24) at: ('OperationsLimit') put: ('conversion').
    recoveredValue25 := recoveredValue2.
    (recoveredValue25) at: ('OperationsAssert') put: ('assert').
    recoveredValue26 := recoveredLocal1.
    ^recoveredValue26
! !

