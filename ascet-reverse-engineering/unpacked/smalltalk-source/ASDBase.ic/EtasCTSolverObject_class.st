"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20021cb0; bytecode file offset 0x92209c"
!EtasCTSolverObject class methodsFor: 'recovered'!
setCTSolverMethodName
    ^'setCTSolver'
! !

"ASDBase.ic method 0x20074748; bytecode file offset 0x97102c"
!EtasCTSolverObject class methodsFor: 'recovered'!
setCTSolverMethodOID
    ^11
! !

"ASDBase.ic method 0x20122d68; bytecode file offset 0xa1f6a4"
!EtasCTSolverObject class methodsFor: 'recovered'!
createForCTNode: recoveredArg1 model: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := (self) new.
    recoveredValue1 := recoveredValue0.
    (recoveredValue1) initialize.
    recoveredValue2 := recoveredValue0.
    recoveredValue3 := recoveredArg1.
    (recoveredValue2) simNode: (recoveredValue3).
    recoveredValue4 := recoveredValue0.
    recoveredValue5 := recoveredArg2.
    (recoveredValue4) model: (recoveredValue5).
    ^recoveredValue0
! !

"ASDBase.ic method 0x201571fc; bytecode file offset 0xa53ae0"
!EtasCTSolverObject class methodsFor: 'recovered'!
createForNode: recoveredArg1 model: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := (self) new.
    recoveredValue1 := recoveredValue0.
    recoveredValue2 := OrderedCollection.
    recoveredValue3 := (recoveredValue2) new.
    (recoveredValue1) event: (recoveredValue3).
    recoveredValue4 := recoveredValue0.
    recoveredValue5 := recoveredArg1.
    (recoveredValue4) simNode: (recoveredValue5).
    recoveredValue6 := recoveredValue0.
    recoveredValue7 := recoveredArg2.
    (recoveredValue6) model: (recoveredValue7).
    ^recoveredValue0
! !

"ASDBase.ic method 0x204b4d30; bytecode file offset 0xdb162c"
!EtasCTSolverObject class methodsFor: 'recovered'!
setCTSolverMethodArguments
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 recoveredValue21 recoveredValue22 recoveredValue23 recoveredValue24 recoveredValue25 recoveredValue26 recoveredValue27 recoveredValue28 recoveredValue29 recoveredValue30 recoveredValue31 recoveredValue32 recoveredValue33 recoveredValue34 recoveredValue35 recoveredValue36 recoveredValue37 recoveredValue38 recoveredValue39 recoveredValue40 recoveredValue41 recoveredValue42 recoveredValue43 recoveredValue44 recoveredValue45 recoveredValue46 recoveredValue47 recoveredValue48 recoveredValue49 recoveredValue50 recoveredValue51 recoveredValue52 recoveredValue53 recoveredValue54 recoveredValue55 recoveredValue56 |
    recoveredValue0 := OrderedCollection.
    recoveredValue1 := (recoveredValue0) new.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := recoveredLocal1.
    recoveredValue3 := RBArithmeticElement.
    recoveredValue4 := RBInt32Unsigned.
    recoveredValue5 := (recoveredValue4) createDefault.
    recoveredValue6 := (recoveredValue3) createForType: (recoveredValue5).
    recoveredValue7 := (recoveredValue6) name: ('noOfSolver').
    (recoveredValue2) add: (recoveredValue7).
    recoveredValue8 := recoveredLocal1.
    recoveredValue9 := RBArithmeticElement.
    recoveredValue10 := RBFloat.
    recoveredValue11 := (recoveredValue10) createDefault.
    recoveredValue12 := (recoveredValue9) createForType: (recoveredValue11).
    recoveredValue13 := (recoveredValue12) name: ('t_0').
    (recoveredValue8) add: (recoveredValue13).
    recoveredValue14 := recoveredLocal1.
    recoveredValue15 := RBArithmeticElement.
    recoveredValue16 := RBFloat.
    recoveredValue17 := (recoveredValue16) createDefault.
    recoveredValue18 := (recoveredValue15) createForType: (recoveredValue17).
    recoveredValue19 := (recoveredValue18) name: ('h').
    (recoveredValue14) add: (recoveredValue19).
    recoveredValue20 := recoveredLocal1.
    recoveredValue21 := RBArithmeticElement.
    recoveredValue22 := RBFloat.
    recoveredValue23 := (recoveredValue22) createDefault.
    recoveredValue24 := (recoveredValue21) createForType: (recoveredValue23).
    recoveredValue25 := (recoveredValue24) name: ('h_start').
    (recoveredValue20) add: (recoveredValue25).
    recoveredValue26 := recoveredLocal1.
    recoveredValue27 := RBArithmeticElement.
    recoveredValue28 := RBFloat.
    recoveredValue29 := (recoveredValue28) createDefault.
    recoveredValue30 := (recoveredValue27) createForType: (recoveredValue29).
    recoveredValue31 := (recoveredValue30) name: ('h_min').
    (recoveredValue26) add: (recoveredValue31).
    recoveredValue32 := recoveredLocal1.
    recoveredValue33 := RBArithmeticElement.
    recoveredValue34 := RBFloat.
    recoveredValue35 := (recoveredValue34) createDefault.
    recoveredValue36 := (recoveredValue33) createForType: (recoveredValue35).
    recoveredValue37 := (recoveredValue36) name: ('h_max').
    (recoveredValue32) add: (recoveredValue37).
    recoveredValue38 := recoveredLocal1.
    recoveredValue39 := RBArithmeticElement.
    recoveredValue40 := RBFloat.
    recoveredValue41 := (recoveredValue40) createDefault.
    recoveredValue42 := (recoveredValue39) createForType: (recoveredValue41).
    recoveredValue43 := (recoveredValue42) name: ('err_abs').
    (recoveredValue38) add: (recoveredValue43).
    recoveredValue44 := recoveredLocal1.
    recoveredValue45 := RBArithmeticElement.
    recoveredValue46 := RBFloat.
    recoveredValue47 := (recoveredValue46) createDefault.
    recoveredValue48 := (recoveredValue45) createForType: (recoveredValue47).
    recoveredValue49 := (recoveredValue48) name: ('err_rel').
    (recoveredValue44) add: (recoveredValue49).
    recoveredValue50 := recoveredLocal1.
    recoveredValue51 := RBArithmeticElement.
    recoveredValue52 := RBInt32Unsigned.
    recoveredValue53 := (recoveredValue52) createDefault.
    recoveredValue54 := (recoveredValue51) createForType: (recoveredValue53).
    recoveredValue55 := (recoveredValue54) name: ('k_max').
    (recoveredValue50) add: (recoveredValue55).
    recoveredValue56 := recoveredLocal1.
    ^recoveredValue56
! !

"ASDBase.ic method 0x2050640c; bytecode file offset 0xe02d08"
!EtasCTSolverObject class methodsFor: 'recovered'!
ctExperimentMethods
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 recoveredValue21 recoveredValue22 recoveredValue23 recoveredValue24 recoveredValue25 recoveredValue26 recoveredValue27 recoveredValue28 recoveredValue29 recoveredValue30 recoveredValue31 recoveredValue32 recoveredValue33 recoveredValue34 recoveredValue35 recoveredValue36 recoveredValue37 recoveredValue38 recoveredValue39 recoveredValue40 recoveredValue41 recoveredValue42 recoveredValue43 recoveredValue44 recoveredValue45 recoveredValue46 recoveredValue47 |
    recoveredValue0 := Array.
    recoveredValue1 := (recoveredValue0) new: (11).
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := recoveredLocal1.
    recoveredValue3 := MCSSimProcedure.
    recoveredValue4 := (recoveredValue3) createName: ('init').
    recoveredValue5 := recoveredValue4.
    (recoveredValue5) isCT: (true).
    (recoveredValue2) at: (1) put: (recoveredValue4).
    recoveredValue6 := recoveredLocal1.
    recoveredValue7 := MCSSimProcedure.
    recoveredValue8 := (recoveredValue7) createName: ('derivatives').
    recoveredValue9 := recoveredValue8.
    (recoveredValue9) isCT: (true).
    (recoveredValue6) at: (2) put: (recoveredValue8).
    recoveredValue10 := recoveredLocal1.
    recoveredValue11 := MCSSimProcedure.
    recoveredValue12 := (recoveredValue11) createName: ('update').
    recoveredValue13 := recoveredValue12.
    (recoveredValue13) isCT: (true).
    (recoveredValue10) at: (3) put: (recoveredValue12).
    recoveredValue14 := recoveredLocal1.
    recoveredValue15 := MCSSimProcedure.
    recoveredValue16 := (recoveredValue15) createName: ('directOutputs').
    recoveredValue17 := recoveredValue16.
    (recoveredValue17) isCT: (true).
    (recoveredValue14) at: (4) put: (recoveredValue16).
    recoveredValue18 := recoveredLocal1.
    recoveredValue19 := MCSSimProcedure.
    recoveredValue20 := (recoveredValue19) createName: ('nondirectOutputs').
    recoveredValue21 := recoveredValue20.
    (recoveredValue21) isCT: (true).
    (recoveredValue18) at: (5) put: (recoveredValue20).
    recoveredValue22 := recoveredLocal1.
    recoveredValue23 := MCSSimProcedure.
    recoveredValue24 := (recoveredValue23) createName: ('terminate').
    recoveredValue25 := recoveredValue24.
    (recoveredValue25) isCT: (true).
    (recoveredValue22) at: (6) put: (recoveredValue24).
    recoveredValue26 := recoveredLocal1.
    recoveredValue27 := MCSSimProcedure.
    recoveredValue28 := (recoveredValue27) createName: ('stateEvents').
    recoveredValue29 := recoveredValue28.
    (recoveredValue29) isCT: (true).
    (recoveredValue26) at: (7) put: (recoveredValue28).
    recoveredValue30 := recoveredLocal1.
    recoveredValue31 := MCSSimProcedure.
    recoveredValue32 := (recoveredValue31) createName: ('events').
    recoveredValue33 := recoveredValue32.
    (recoveredValue33) isCT: (true).
    (recoveredValue30) at: (8) put: (recoveredValue32).
    recoveredValue34 := recoveredLocal1.
    recoveredValue35 := MCSSimProcedure.
    recoveredValue36 := (recoveredValue35) createName: ('dependentParameters').
    recoveredValue37 := recoveredValue36.
    (recoveredValue37) isCT: (true).
    (recoveredValue34) at: (9) put: (recoveredValue36).
    recoveredValue38 := recoveredLocal1.
    recoveredValue39 := MCSSimProcedure.
    recoveredValue40 := (recoveredValue39) createName: ('integrate').
    recoveredValue41 := recoveredValue40.
    (recoveredValue41) isCT: (true).
    (recoveredValue38) at: (10) put: (recoveredValue40).
    recoveredValue42 := recoveredLocal1.
    recoveredValue43 := MCSSimProcedure.
    recoveredValue44 := (recoveredValue43) createName: ('setCTSolver').
    recoveredValue45 := recoveredValue44.
    (recoveredValue45) isCT: (true).
    recoveredValue46 := (self) addSetCTSolverMethodArguments: (recoveredValue44).
    (recoveredValue42) at: (11) put: (recoveredValue46).
    recoveredValue47 := recoveredLocal1.
    ^recoveredValue47
! !

"ASDBase.ic method 0x20515550; bytecode file offset 0xe11e58"
!EtasCTSolverObject class methodsFor: 'recovered'!
addSetCTSolverMethodArguments: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 recoveredValue21 recoveredValue22 recoveredValue23 recoveredValue24 recoveredValue25 recoveredValue26 recoveredValue27 recoveredValue28 recoveredValue29 recoveredValue30 recoveredValue31 recoveredValue32 recoveredValue33 recoveredValue34 recoveredValue35 recoveredValue36 recoveredValue37 recoveredValue38 recoveredValue39 recoveredValue40 recoveredValue41 recoveredValue42 recoveredValue43 recoveredValue44 recoveredValue45 recoveredValue46 recoveredValue47 recoveredValue48 recoveredValue49 recoveredValue50 recoveredValue51 recoveredValue52 recoveredValue53 recoveredValue54 recoveredValue55 recoveredValue56 recoveredValue57 recoveredValue58 |
    recoveredValue0 := OrderedCollection.
    recoveredValue1 := (recoveredValue0) new.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := recoveredLocal1.
    recoveredValue3 := RBArithmeticElement.
    recoveredValue4 := RBInt32Unsigned.
    recoveredValue5 := (recoveredValue4) createDefault.
    recoveredValue6 := (recoveredValue3) createForType: (recoveredValue5).
    recoveredValue7 := (recoveredValue6) name: ('noOfSolver').
    (recoveredValue2) add: (recoveredValue7).
    recoveredValue8 := recoveredLocal1.
    recoveredValue9 := RBArithmeticElement.
    recoveredValue10 := RBFloat.
    recoveredValue11 := (recoveredValue10) createDefault.
    recoveredValue12 := (recoveredValue9) createForType: (recoveredValue11).
    recoveredValue13 := (recoveredValue12) name: ('t_0').
    (recoveredValue8) add: (recoveredValue13).
    recoveredValue14 := recoveredLocal1.
    recoveredValue15 := RBArithmeticElement.
    recoveredValue16 := RBFloat.
    recoveredValue17 := (recoveredValue16) createDefault.
    recoveredValue18 := (recoveredValue15) createForType: (recoveredValue17).
    recoveredValue19 := (recoveredValue18) name: ('h').
    (recoveredValue14) add: (recoveredValue19).
    recoveredValue20 := recoveredLocal1.
    recoveredValue21 := RBArithmeticElement.
    recoveredValue22 := RBFloat.
    recoveredValue23 := (recoveredValue22) createDefault.
    recoveredValue24 := (recoveredValue21) createForType: (recoveredValue23).
    recoveredValue25 := (recoveredValue24) name: ('h_start').
    (recoveredValue20) add: (recoveredValue25).
    recoveredValue26 := recoveredLocal1.
    recoveredValue27 := RBArithmeticElement.
    recoveredValue28 := RBFloat.
    recoveredValue29 := (recoveredValue28) createDefault.
    recoveredValue30 := (recoveredValue27) createForType: (recoveredValue29).
    recoveredValue31 := (recoveredValue30) name: ('h_min').
    (recoveredValue26) add: (recoveredValue31).
    recoveredValue32 := recoveredLocal1.
    recoveredValue33 := RBArithmeticElement.
    recoveredValue34 := RBFloat.
    recoveredValue35 := (recoveredValue34) createDefault.
    recoveredValue36 := (recoveredValue33) createForType: (recoveredValue35).
    recoveredValue37 := (recoveredValue36) name: ('h_max').
    (recoveredValue32) add: (recoveredValue37).
    recoveredValue38 := recoveredLocal1.
    recoveredValue39 := RBArithmeticElement.
    recoveredValue40 := RBFloat.
    recoveredValue41 := (recoveredValue40) createDefault.
    recoveredValue42 := (recoveredValue39) createForType: (recoveredValue41).
    recoveredValue43 := (recoveredValue42) name: ('err_abs').
    (recoveredValue38) add: (recoveredValue43).
    recoveredValue44 := recoveredLocal1.
    recoveredValue45 := RBArithmeticElement.
    recoveredValue46 := RBFloat.
    recoveredValue47 := (recoveredValue46) createDefault.
    recoveredValue48 := (recoveredValue45) createForType: (recoveredValue47).
    recoveredValue49 := (recoveredValue48) name: ('err_rel').
    (recoveredValue44) add: (recoveredValue49).
    recoveredValue50 := recoveredLocal1.
    recoveredValue51 := RBArithmeticElement.
    recoveredValue52 := RBInt32Unsigned.
    recoveredValue53 := (recoveredValue52) createDefault.
    recoveredValue54 := (recoveredValue51) createForType: (recoveredValue53).
    recoveredValue55 := (recoveredValue54) name: ('k_max').
    (recoveredValue50) add: (recoveredValue55).
    recoveredValue56 := recoveredLocal1.
    recoveredValue57 := [:recoveredBlock166Arg1 | 
    | recoveredBlock166Value0 recoveredBlock166Value1 recoveredBlock166Value2 recoveredBlock166Value3 recoveredBlock166Value4 |
    recoveredBlock166Value0 := recoveredArg1.
    recoveredBlock166Value1 := recoveredBlock166Arg1.
    recoveredBlock166Value2 := recoveredBlock166Arg1.
    recoveredBlock166Value3 := (recoveredBlock166Value2) name.
    recoveredBlock166Value4 := (recoveredBlock166Value0) addArgument: (recoveredBlock166Value1) name: (recoveredBlock166Value3).
    recoveredBlock166Value4
].
    (recoveredValue56) do: (recoveredValue57).
    recoveredValue58 := recoveredArg1.
    ^recoveredValue58
! !

