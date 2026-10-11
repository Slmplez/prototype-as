"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2003ffdc; bytecode file offset 0x93d278"
!SGSmAbstractMISRACompliance methodsFor: 'recovered'!
methodStrategy
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := generator.
    recoveredValue1 := (recoveredValue0) methodStrategy.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2004e6a8; bytecode file offset 0x94d048"
!SGSmAbstractMISRACompliance methodsFor: 'recovered'!
endCase
    (self) subclassResponsibility.
    ^self
! !

"ASDBase.ic method 0x20053298; bytecode file offset 0x9505d0"
!SGSmAbstractMISRACompliance methodsFor: 'recovered'!
postProcessOutlinedMethod: recoveredArg1
    (self) subclassResponsibility.
    ^self
! !

"ASDBase.ic method 0x2005b4f8; bytecode file offset 0x957e10"
!SGSmAbstractMISRACompliance methodsFor: 'recovered'!
stateSwitch: recoveredArg1 states: recoveredArg2 stateBlock: recoveredArg3 defaultState: recoveredArg4 source: recoveredArg5 label: recoveredArg6
    (self) subclassResponsibility.
    ^self
! !

"ASDBase.ic method 0x20065ef4; bytecode file offset 0x963428"
!SGSmAbstractMISRACompliance methodsFor: 'recovered'!
generator
    | recoveredValue0 |
    recoveredValue0 := generator.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200ac728; bytecode file offset 0x9a8ff8"
!SGSmAbstractMISRACompliance methodsFor: 'recovered'!
optimizeSwitch: recoveredArg1 onChange: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := generator.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := (recoveredValue0) optimizeSwitch: (recoveredValue1) onChange: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x200bdfdc; bytecode file offset 0x9bb178"
!SGSmAbstractMISRACompliance methodsFor: 'recovered'!
generator: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    generator := recoveredValue0.
    ^self
! !

