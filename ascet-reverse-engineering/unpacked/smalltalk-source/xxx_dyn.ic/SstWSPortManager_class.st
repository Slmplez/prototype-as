"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"xxx_dyn.ic method 0x200043cc; bytecode file offset 0x654a8"
!SstWSPortManager class methodsFor: 'recovered'!
endpointCreationStrategies
    | recoveredValue0 |
    recoveredValue0 := endpointCreationStrategies.
    ^recoveredValue0
! !

"xxx_dyn.ic method 0x20006238; bytecode file offset 0x67374"
!SstWSPortManager class methodsFor: 'recovered'!
register: recoveredArg1 as: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) endpointCreationStrategies.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (recoveredValue0) at: (recoveredValue1) put: (recoveredValue2).
    ^recoveredValue3
! !

"xxx_dyn.ic method 0x20006f8c; bytecode file offset 0x681b0"
!SstWSPortManager class methodsFor: 'recovered'!
unregister: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) endpointCreationStrategies.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := [].
    recoveredValue3 := (recoveredValue0) removeKey: (recoveredValue1) ifAbsent: (recoveredValue2).
    ^recoveredValue3
! !

"xxx_dyn.ic method 0x20006ff0; bytecode file offset 0x681b0"
!SstWSPortManager class methodsFor: 'recovered'!
strategyNamed: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) endpointCreationStrategies.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := [].
    recoveredValue3 := (recoveredValue0) at: (recoveredValue1) ifAbsent: (recoveredValue2).
    ^recoveredValue3
! !

"xxx_dyn.ic method 0x200088fc; bytecode file offset 0x699e8"
!SstWSPortManager class methodsFor: 'recovered'!
endpointCreationStrategies: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    endpointCreationStrategies := recoveredValue0.
    ^self
! !

"xxx_dyn.ic method 0x2000dbf0; bytecode file offset 0x6ecc8"
!SstWSPortManager class methodsFor: 'recovered'!
setupAfterLoad
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) endpointCreationStrategies.
    recoveredValue1 := [
    | recoveredBlock5Value0 recoveredBlock5Value1 recoveredBlock5Value2 |
    recoveredBlock5Value0 := LookupTable.
    recoveredBlock5Value1 := (recoveredBlock5Value0) new.
    recoveredBlock5Value2 := (self) endpointCreationStrategies: (recoveredBlock5Value1).
    recoveredBlock5Value2
].
    (recoveredValue0) ifNil: (recoveredValue1).
    ^self
! !

