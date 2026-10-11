"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20009e78; bytecode file offset 0x908be4"
!ASDNumericalSolverOptions methodsFor: 'recovered'!
getGroupNameForDefaultSolver
    | recoveredValue0 |
    recoveredValue0 := (self) getGroupPrefix.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20015bb4; bytecode file offset 0x92209c"
!ASDNumericalSolverOptions methodsFor: 'recovered'!
attributeMaxIterations
    ^'Max_iterations'
! !

"ASDBase.ic method 0x20016ad8; bytecode file offset 0x92209c"
!ASDNumericalSolverOptions methodsFor: 'recovered'!
minValueLimit
    ^#[149 214 38 232 11 46 17 62]
! !

"ASDBase.ic method 0x20017498; bytecode file offset 0x92209c"
!ASDNumericalSolverOptions methodsFor: 'recovered'!
attributeMinimumH
    ^'Minimum_h'
! !

"ASDBase.ic method 0x20017864; bytecode file offset 0x92209c"
!ASDNumericalSolverOptions methodsFor: 'recovered'!
getCategoryPrefix
    ^'CTSolver_'
! !

"ASDBase.ic method 0x2001b5f0; bytecode file offset 0x92209c"
!ASDNumericalSolverOptions methodsFor: 'recovered'!
attributeDT
    ^'dT'
! !

"ASDBase.ic method 0x2001cd0c; bytecode file offset 0x92209c"
!ASDNumericalSolverOptions methodsFor: 'recovered'!
attributeAbsoluteError
    ^'Absolute_error'
! !

"ASDBase.ic method 0x2002225c; bytecode file offset 0x92209c"
!ASDNumericalSolverOptions methodsFor: 'recovered'!
attributeInitialH
    ^'Initial_h'
! !

"ASDBase.ic method 0x20022eec; bytecode file offset 0x92209c"
!ASDNumericalSolverOptions methodsFor: 'recovered'!
attributeH
    ^'h'
! !

"ASDBase.ic method 0x200247a0; bytecode file offset 0x92209c"
!ASDNumericalSolverOptions methodsFor: 'recovered'!
attributeRelativeError
    ^'Relative_error'
! !

"ASDBase.ic method 0x20024ddc; bytecode file offset 0x92209c"
!ASDNumericalSolverOptions methodsFor: 'recovered'!
getGroupPrefix
    ^'Experiment\CT-Solver'
! !

"ASDBase.ic method 0x20025478; bytecode file offset 0x92209c"
!ASDNumericalSolverOptions methodsFor: 'recovered'!
attributeMaximumH
    ^'Maximum_h'
! !

"ASDBase.ic method 0x20025930; bytecode file offset 0x923928"
!ASDNumericalSolverOptions methodsFor: 'recovered'!
attributeDefaultSolver
    ^'DefaultSolver'
! !

"ASDBase.ic method 0x20056a30; bytecode file offset 0x9536dc"
!ASDNumericalSolverOptions methodsFor: 'recovered'!
getGroupNameForSolver: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) name.
    recoveredValue2 := (self) getGroupNameForSolverNamed: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x20056c60; bytecode file offset 0x9536dc"
!ASDNumericalSolverOptions methodsFor: 'recovered'!
getCategoryNameForSolver: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) name.
    recoveredValue2 := (self) getCategoryNameForSolverNamed: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x20061848; bytecode file offset 0x95e838"
!ASDNumericalSolverOptions methodsFor: 'recovered'!
getCategoryNameForDefaultSolver
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) getCategoryPrefix.
    recoveredValue1 := (recoveredValue0) , ('DefaultSolver').
    ^recoveredValue1
! !

"ASDBase.ic method 0x200860c0; bytecode file offset 0x982a70"
!ASDNumericalSolverOptions methodsFor: 'recovered'!
getCategoryNameForSolverNamed: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) getCategoryPrefix.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue1) asCIdentifier.
    recoveredValue3 := (recoveredValue0) , (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x200ab0e8; bytecode file offset 0x9a79e4"
!ASDNumericalSolverOptions methodsFor: 'recovered'!
getGroupNameForSolverNamed: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) getGroupPrefix.
    recoveredValue1 := (recoveredValue0) , ('\').
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (recoveredValue1) , (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x200bc560; bytecode file offset 0x9b8efc"
!ASDNumericalSolverOptions methodsFor: 'recovered'!
attributeMaxIterationsSolverNamed: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := (self) attributeMaxIterations.
    recoveredValue1 := (recoveredValue0) , ('_').
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (recoveredValue2) asCIdentifier.
    recoveredValue4 := (recoveredValue1) , (recoveredValue3).
    ^recoveredValue4
! !

"ASDBase.ic method 0x200bc590; bytecode file offset 0x9b8efc"
!ASDNumericalSolverOptions methodsFor: 'recovered'!
attributeAbsoluteErrorSolverNamed: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := (self) attributeAbsoluteError.
    recoveredValue1 := (recoveredValue0) , ('_').
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (recoveredValue2) asCIdentifier.
    recoveredValue4 := (recoveredValue1) , (recoveredValue3).
    ^recoveredValue4
! !

"ASDBase.ic method 0x200bc5a8; bytecode file offset 0x9b8efc"
!ASDNumericalSolverOptions methodsFor: 'recovered'!
attributeRelativeErrorSolverNamed: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := (self) attributeRelativeError.
    recoveredValue1 := (recoveredValue0) , ('_').
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (recoveredValue2) asCIdentifier.
    recoveredValue4 := (recoveredValue1) , (recoveredValue3).
    ^recoveredValue4
! !

"ASDBase.ic method 0x200bc5c0; bytecode file offset 0x9b8efc"
!ASDNumericalSolverOptions methodsFor: 'recovered'!
attributeInitialHSolverNamed: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := (self) attributeInitialH.
    recoveredValue1 := (recoveredValue0) , ('_').
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (recoveredValue2) asCIdentifier.
    recoveredValue4 := (recoveredValue1) , (recoveredValue3).
    ^recoveredValue4
! !

"ASDBase.ic method 0x200bc5d8; bytecode file offset 0x9b8efc"
!ASDNumericalSolverOptions methodsFor: 'recovered'!
attributeMaximumHSolverNamed: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := (self) attributeMaximumH.
    recoveredValue1 := (recoveredValue0) , ('_').
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (recoveredValue2) asCIdentifier.
    recoveredValue4 := (recoveredValue1) , (recoveredValue3).
    ^recoveredValue4
! !

"ASDBase.ic method 0x200bc5f0; bytecode file offset 0x9b8efc"
!ASDNumericalSolverOptions methodsFor: 'recovered'!
attributeDTSolverNamed: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := (self) attributeDT.
    recoveredValue1 := (recoveredValue0) , ('_').
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (recoveredValue2) asCIdentifier.
    recoveredValue4 := (recoveredValue1) , (recoveredValue3).
    ^recoveredValue4
! !

"ASDBase.ic method 0x200bc620; bytecode file offset 0x9b8efc"
!ASDNumericalSolverOptions methodsFor: 'recovered'!
attributeHSolverNamed: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := (self) attributeH.
    recoveredValue1 := (recoveredValue0) , ('_').
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (recoveredValue2) asCIdentifier.
    recoveredValue4 := (recoveredValue1) , (recoveredValue3).
    ^recoveredValue4
! !

"ASDBase.ic method 0x200bc638; bytecode file offset 0x9b8efc"
!ASDNumericalSolverOptions methodsFor: 'recovered'!
attributeMinimumHSolverNamed: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := (self) attributeMinimumH.
    recoveredValue1 := (recoveredValue0) , ('_').
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (recoveredValue2) asCIdentifier.
    recoveredValue4 := (recoveredValue1) , (recoveredValue3).
    ^recoveredValue4
! !

"ASDBase.ic method 0x200cb30c; bytecode file offset 0x9c7bd8"
!ASDNumericalSolverOptions methodsFor: 'recovered'!
hasInvalidOptionValueAbsoluteError: recoveredArg1 solverName: recoveredArg2
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) value.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := recoveredLocal1.
    recoveredValue3 := (self) minValueLimit.
    recoveredValue4 := (recoveredValue2) < (recoveredValue3).
    ^recoveredValue4
! !

"ASDBase.ic method 0x200cb31c; bytecode file offset 0x9c7bd8"
!ASDNumericalSolverOptions methodsFor: 'recovered'!
hasInvalidOptionValueRelativeError: recoveredArg1 solverName: recoveredArg2
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) value.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := recoveredLocal1.
    recoveredValue3 := (self) minValueLimit.
    recoveredValue4 := (recoveredValue2) < (recoveredValue3).
    ^recoveredValue4
! !

"ASDBase.ic method 0x200dfc2c; bytecode file offset 0x9dc4ec"
!ASDNumericalSolverOptions methodsFor: 'recovered'!
hasInvalidOptionValueDT: recoveredArg1 solverName: recoveredArg2
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) value.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := recoveredLocal1.
    recoveredValue3 := Float.
    recoveredValue4 := (recoveredValue3) epsilon.
    recoveredValue5 := (recoveredValue2) < (recoveredValue4).
    ^recoveredValue5
! !

"ASDBase.ic method 0x200eb55c; bytecode file offset 0x9e7ee4"
!ASDNumericalSolverOptions methodsFor: 'recovered'!
optionNumericalSolverParameterMinimumHForSolverNamed: recoveredArg1 set: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) attributeMinimumHSolverNamed: (recoveredValue0).
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := [].
    recoveredValue4 := (self) optionAt: (recoveredValue1) putValue: (recoveredValue2) ifAbsent: (recoveredValue3).
    ^recoveredValue4
! !

"ASDBase.ic method 0x200eb570; bytecode file offset 0x9e7ee4"
!ASDNumericalSolverOptions methodsFor: 'recovered'!
optionNumericalSolverParameterMaxIterationsForSolverNamed: recoveredArg1 set: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) attributeMaxIterationsSolverNamed: (recoveredValue0).
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := [].
    recoveredValue4 := (self) optionAt: (recoveredValue1) putValue: (recoveredValue2) ifAbsent: (recoveredValue3).
    ^recoveredValue4
! !

"ASDBase.ic method 0x200eb584; bytecode file offset 0x9e7ee4"
!ASDNumericalSolverOptions methodsFor: 'recovered'!
optionNumericalSolverParameterDTForSolverNamed: recoveredArg1 set: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) attributeDTSolverNamed: (recoveredValue0).
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := [].
    recoveredValue4 := (self) optionAt: (recoveredValue1) putValue: (recoveredValue2) ifAbsent: (recoveredValue3).
    ^recoveredValue4
! !

"ASDBase.ic method 0x200eb598; bytecode file offset 0x9e7ee4"
!ASDNumericalSolverOptions methodsFor: 'recovered'!
optionNumericalSolverParameterMaximumHForSolverNamed: recoveredArg1 set: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) attributeMaximumHSolverNamed: (recoveredValue0).
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := [].
    recoveredValue4 := (self) optionAt: (recoveredValue1) putValue: (recoveredValue2) ifAbsent: (recoveredValue3).
    ^recoveredValue4
! !

"ASDBase.ic method 0x200eb5ac; bytecode file offset 0x9e7ee4"
!ASDNumericalSolverOptions methodsFor: 'recovered'!
optionNumericalSolverParameterInitialHForSolverNamed: recoveredArg1 set: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) attributeInitialHSolverNamed: (recoveredValue0).
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := [].
    recoveredValue4 := (self) optionAt: (recoveredValue1) putValue: (recoveredValue2) ifAbsent: (recoveredValue3).
    ^recoveredValue4
! !

"ASDBase.ic method 0x200eb5c0; bytecode file offset 0x9e7ee4"
!ASDNumericalSolverOptions methodsFor: 'recovered'!
optionNumericalSolverParameterHForSolverNamed: recoveredArg1 set: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) attributeHSolverNamed: (recoveredValue0).
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := [].
    recoveredValue4 := (self) optionAt: (recoveredValue1) putValue: (recoveredValue2) ifAbsent: (recoveredValue3).
    ^recoveredValue4
! !

"ASDBase.ic method 0x200eb5e8; bytecode file offset 0x9e7ee4"
!ASDNumericalSolverOptions methodsFor: 'recovered'!
optionNumericalSolverParameterAbsoluteErrorForSolverNamed: recoveredArg1 set: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) attributeAbsoluteErrorSolverNamed: (recoveredValue0).
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := [].
    recoveredValue4 := (self) optionAt: (recoveredValue1) putValue: (recoveredValue2) ifAbsent: (recoveredValue3).
    ^recoveredValue4
! !

"ASDBase.ic method 0x200eb610; bytecode file offset 0x9e7ee4"
!ASDNumericalSolverOptions methodsFor: 'recovered'!
optionNumericalSolverParameterRelativeErrorForSolverNamed: recoveredArg1 set: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) attributeRelativeErrorSolverNamed: (recoveredValue0).
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := [].
    recoveredValue4 := (self) optionAt: (recoveredValue1) putValue: (recoveredValue2) ifAbsent: (recoveredValue3).
    ^recoveredValue4
! !

"ASDBase.ic method 0x200f8184; bytecode file offset 0x9f4e38"
!ASDNumericalSolverOptions methodsFor: 'recovered'!
stringCollection
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) getAllAvailableSolvers.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := [:block280c5844Arg1 | 
    | block280c5844Value0 block280c5844Value1 |
    block280c5844Value0 := block280c5844Arg1.
    block280c5844Value1 := (block280c5844Value0) name.
    block280c5844Value1
].
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) collect: (recoveredStack1).
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x200f8454; bytecode file offset 0x9f4e38"
!ASDNumericalSolverOptions methodsFor: 'recovered'!
valueCollection
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) getAllAvailableSolvers.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := [:block280c5c7cArg1 | 
    | block280c5c7cValue0 block280c5c7cValue1 |
    block280c5c7cValue0 := block280c5c7cArg1.
    block280c5c7cValue1 := (block280c5c7cValue0) id.
    block280c5c7cValue1
].
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) collect: (recoveredStack1).
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201296e8; bytecode file offset 0xa25fb4"
!ASDNumericalSolverOptions methodsFor: 'recovered'!
getAllAvailableSolvers
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := availableSolvers.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 15] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) class.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) getAllAvailableSolvers.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            availableSolvers := recoveredStack1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := availableSolvers.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x20142890; bytecode file offset 0xa3f21c"
!ASDNumericalSolverOptions methodsFor: 'recovered'!
optionNumericalSolverParameterMinimumHForSolverNamed: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) attributeMinimumHSolverNamed: (recoveredStack2).
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := [
    | block280cc0e4Value0 block280cc0e4Value1 |
    block280cc0e4Value0 := ASDNumericalSolverOptions.
    block280cc0e4Value1 := (block280cc0e4Value0) defaultMinimumH.
    block280cc0e4Value1
].
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := (recoveredStack0) optionAt: (recoveredStack1) ifAbsent: (recoveredStack2).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201428ac; bytecode file offset 0xa3f21c"
!ASDNumericalSolverOptions methodsFor: 'recovered'!
optionNumericalSolverParameterInitialHForSolverNamed: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) attributeInitialHSolverNamed: (recoveredStack2).
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := [
    | block280cc108Value0 block280cc108Value1 |
    block280cc108Value0 := ASDNumericalSolverOptions.
    block280cc108Value1 := (block280cc108Value0) defaultInitialH.
    block280cc108Value1
].
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := (recoveredStack0) optionAt: (recoveredStack1) ifAbsent: (recoveredStack2).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201428c8; bytecode file offset 0xa3f21c"
!ASDNumericalSolverOptions methodsFor: 'recovered'!
optionNumericalSolverParameterAbsoluteErrorForSolverNamed: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) attributeAbsoluteErrorSolverNamed: (recoveredStack2).
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := [
    | block280cc12cValue0 block280cc12cValue1 |
    block280cc12cValue0 := ASDNumericalSolverOptions.
    block280cc12cValue1 := (block280cc12cValue0) defaultAbsoluteError.
    block280cc12cValue1
].
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := (recoveredStack0) optionAt: (recoveredStack1) ifAbsent: (recoveredStack2).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201428e4; bytecode file offset 0xa3f21c"
!ASDNumericalSolverOptions methodsFor: 'recovered'!
optionNumericalSolverParameterMaximumHForSolverNamed: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) attributeMaximumHSolverNamed: (recoveredStack2).
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := [
    | block280cc150Value0 block280cc150Value1 |
    block280cc150Value0 := ASDNumericalSolverOptions.
    block280cc150Value1 := (block280cc150Value0) defaultMaximumH.
    block280cc150Value1
].
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := (recoveredStack0) optionAt: (recoveredStack1) ifAbsent: (recoveredStack2).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20142900; bytecode file offset 0xa3f21c"
!ASDNumericalSolverOptions methodsFor: 'recovered'!
optionNumericalSolverParameterHForSolverNamed: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) attributeHSolverNamed: (recoveredStack2).
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := [
    | block280cc174Value0 block280cc174Value1 |
    block280cc174Value0 := ASDNumericalSolverOptions.
    block280cc174Value1 := (block280cc174Value0) defaultH.
    block280cc174Value1
].
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := (recoveredStack0) optionAt: (recoveredStack1) ifAbsent: (recoveredStack2).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2014291c; bytecode file offset 0xa3f21c"
!ASDNumericalSolverOptions methodsFor: 'recovered'!
optionNumericalSolverParameterRelativeErrorForSolverNamed: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) attributeRelativeErrorSolverNamed: (recoveredStack2).
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := [
    | block280cc198Value0 block280cc198Value1 |
    block280cc198Value0 := ASDNumericalSolverOptions.
    block280cc198Value1 := (block280cc198Value0) defaultRelativeError.
    block280cc198Value1
].
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := (recoveredStack0) optionAt: (recoveredStack1) ifAbsent: (recoveredStack2).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20142938; bytecode file offset 0xa3f21c"
!ASDNumericalSolverOptions methodsFor: 'recovered'!
optionNumericalSolverParameterDTForSolverNamed: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) attributeDTSolverNamed: (recoveredStack2).
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := [
    | block280cc1bcValue0 block280cc1bcValue1 |
    block280cc1bcValue0 := ASDNumericalSolverOptions.
    block280cc1bcValue1 := (block280cc1bcValue0) defaultDT.
    block280cc1bcValue1
].
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := (recoveredStack0) optionAt: (recoveredStack1) ifAbsent: (recoveredStack2).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20142954; bytecode file offset 0xa3f21c"
!ASDNumericalSolverOptions methodsFor: 'recovered'!
optionNumericalSolverParameterMaxIterationsForSolverNamed: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) attributeMaxIterationsSolverNamed: (recoveredStack2).
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := [
    | block280cc1e0Value0 block280cc1e0Value1 |
    block280cc1e0Value0 := ASDNumericalSolverOptions.
    block280cc1e0Value1 := (block280cc1e0Value0) defaultMaxIterations.
    block280cc1e0Value1
].
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := (recoveredStack0) optionAt: (recoveredStack1) ifAbsent: (recoveredStack2).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2014be70; bytecode file offset 0xa48730"
!ASDNumericalSolverOptions methodsFor: 'recovered'!
hasInvalidOptionValueMinimumH: recoveredArg1 solverName: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) value.
    recoveredLocal2 := recoveredValue1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := (self) optionNumericalSolverParameterMaximumHForSolverNamed: (recoveredValue2).
    recoveredLocal3 := recoveredValue3.
    recoveredValue4 := recoveredArg2.
    recoveredValue5 := (self) optionNumericalSolverParameterInitialHForSolverNamed: (recoveredValue4).
    recoveredLocal1 := recoveredValue5.
    recoveredValue6 := recoveredLocal1.
    recoveredValue7 := recoveredLocal2.
    recoveredValue8 := (recoveredValue6) < (recoveredValue7).
    ^recoveredValue8
! !

"ASDBase.ic method 0x2014be98; bytecode file offset 0xa48758"
!ASDNumericalSolverOptions methodsFor: 'recovered'!
hasInvalidOptionValueMaximumH: recoveredArg1 solverName: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) value.
    recoveredLocal3 := recoveredValue1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := (self) optionNumericalSolverParameterMinimumHForSolverNamed: (recoveredValue2).
    recoveredLocal2 := recoveredValue3.
    recoveredValue4 := recoveredArg2.
    recoveredValue5 := (self) optionNumericalSolverParameterInitialHForSolverNamed: (recoveredValue4).
    recoveredLocal1 := recoveredValue5.
    recoveredValue6 := recoveredLocal1.
    recoveredValue7 := recoveredLocal3.
    recoveredValue8 := (recoveredValue6) > (recoveredValue7).
    ^recoveredValue8
! !

"ASDBase.ic method 0x202ba964; bytecode file offset 0xbb7260"
!ASDNumericalSolverOptions methodsFor: 'recovered'!
hasInvalidOptionValueH: recoveredArg1 solverName: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) value.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) optionNumericalSolverParameterDTForSolverNamed: (recoveredStack1).
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := Float.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) epsilon.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) < (recoveredStack1).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 22].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := true.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := (recoveredStack0) > (recoveredStack1).
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 28] ifFalse: [recoveredPC := 30].
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := true.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := (recoveredStack0) / (recoveredStack1).
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := (recoveredStack0) asInteger.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack0 := (recoveredStack0) - (recoveredStack1).
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack0 := (recoveredStack0) abs.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack1 := (recoveredStack1) minValueLimit.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack0 := (recoveredStack0) > (recoveredStack1).
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x202ba98c; bytecode file offset 0xbb7260"
!ASDNumericalSolverOptions methodsFor: 'recovered'!
hasInvalidOptionValueInitialH: recoveredArg1 solverName: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) value.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) optionNumericalSolverParameterDTForSolverNamed: (recoveredStack1).
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := Float.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) epsilon.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) < (recoveredStack1).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 22].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := true.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := (recoveredStack0) > (recoveredStack1).
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 28] ifFalse: [recoveredPC := 30].
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := true.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := (recoveredStack0) / (recoveredStack1).
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := (recoveredStack0) asInteger.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack0 := (recoveredStack0) - (recoveredStack1).
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack0 := (recoveredStack0) abs.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack1 := (recoveredStack1) minValueLimit.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack0 := (recoveredStack0) > (recoveredStack1).
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x202f7854; bytecode file offset 0xbf412c"
!ASDNumericalSolverOptions methodsFor: 'recovered'!
optionNumericalSolverDefaultSolver
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := (recoveredStack1) attributeDefaultSolver.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := [
    | block280e8c08Value0 block280e8c08Value1 block280e8c08Value2 |
    block280e8c08Value0 := ASDNumericalSolverOptions.
    block280e8c08Value1 := (block280e8c08Value0) defaultSolver.
    block280e8c08Value2 := (block280e8c08Value1) id.
    block280e8c08Value2
].
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := (recoveredStack0) optionAt: (recoveredStack1) ifAbsent: (recoveredStack2).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := (recoveredStack0) getAllAvailableSolvers.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := [:recoveredBlock26Arg1 | 
    | recoveredBlock26Value0 recoveredBlock26Value1 recoveredBlock26Value2 recoveredBlock26Value3 |
    recoveredBlock26Value0 := recoveredBlock26Arg1.
    recoveredBlock26Value1 := (recoveredBlock26Value0) id.
    recoveredBlock26Value2 := recoveredLocal1.
    recoveredBlock26Value3 := (recoveredBlock26Value1) = (recoveredBlock26Value2).
    recoveredBlock26Value3
].
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack2 := [
    | block280e8c2cValue0 block280e8c2cValue1 |
    block280e8c2cValue0 := ASDNumericalSolverOptions.
    block280e8c2cValue1 := (block280e8c2cValue0) defaultSolver.
    block280e8c2cValue1
].
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack0 := (recoveredStack0) detect: (recoveredStack1) ifNone: (recoveredStack2).
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x203c46ec; bytecode file offset 0xcc0ff8"
!ASDNumericalSolverOptions methodsFor: 'recovered'!
initializeNumericalSolverParameterDefaultSolver
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredStack7 recoveredStack8 recoveredStack9 recoveredStack10 recoveredStack11 recoveredStack12 recoveredStack13 recoveredStack14 recoveredStack15 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := EtasXMLOptionEntry.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := (recoveredStack2) getCategoryNameForDefaultSolver.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack3 := (recoveredStack3) attributeDefaultSolver.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack4 := EtasEnumerationOption.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack5 := 'Default Solver'.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack6 := 'Solver used as default in experiment.'.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack7 := 'Solver for new CT components'.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack8 := self.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack8 := (recoveredStack8) valueCollection.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack8 := (recoveredStack8) first.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack9 := self.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack9 := (recoveredStack9) valueCollection.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack9 := (recoveredStack9) first.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack10 := self.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack10 := (recoveredStack10) getGroupNameForDefaultSolver.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack11 := [
    true
].
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack12 := [
    true
].
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack13 := 'STATION'.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack14 := nil.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack4 := (recoveredStack4) label: (recoveredStack5) description: (recoveredStack6) toolTip: (recoveredStack7) value: (recoveredStack8) default: (recoveredStack9) group: (recoveredStack10) visible: (recoveredStack11) sensitive: (recoveredStack12) type: (recoveredStack13) userField: (recoveredStack14).
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack5 := recoveredStack4.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack6 := self.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack6 := (recoveredStack6) valueCollection.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            (recoveredStack5) valueCollection: (recoveredStack6).
            recoveredStack5 := recoveredStack4.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack6 := self.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack6 := (recoveredStack6) stringCollection.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            (recoveredStack5) stringCollection: (recoveredStack6).
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack5 := [:block280f6918Arg1 | 
    | block280f6918Value0 block280f6918Value1 |
    block280f6918Value0 := block280f6918Arg1.
    block280f6918Value1 := (block280f6918Value0) asInteger.
    block280f6918Value1
].
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack4 := (recoveredStack4) xmlConversionBlock: (recoveredStack5).
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack5 := self.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack5 := (recoveredStack5) stationOptionFile.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack1 := (recoveredStack1) xmlCategory: (recoveredStack2) attributeName: (recoveredStack3) optionClass: (recoveredStack4) optionFile: (recoveredStack5).
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x203f29dc; bytecode file offset 0xcef2cc"
!ASDNumericalSolverOptions methodsFor: 'recovered'!
initialize
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    super initialize.
    recoveredValue0 := (self) options.
    recoveredValue1 := (self) initializeNumericalSolverParameterDefaultSolver.
    (recoveredValue0) add: (recoveredValue1).
    recoveredValue2 := (self) getAllAvailableSolvers.
    recoveredValue3 := [:recoveredBlock17Arg1 | 
    | recoveredBlock17Value0 recoveredBlock17Value1 recoveredBlock17Value2 recoveredBlock17Value3 recoveredBlock17Value4 recoveredBlock17Value5 recoveredBlock17Value6 recoveredBlock17Value7 recoveredBlock17Value8 recoveredBlock17Value9 recoveredBlock17Value10 recoveredBlock17Value11 recoveredBlock17Value12 recoveredBlock17Value13 recoveredBlock17Value14 recoveredBlock17Value15 recoveredBlock17Value16 recoveredBlock17Value17 recoveredBlock17Value18 recoveredBlock17Value19 recoveredBlock17Value20 recoveredBlock17Value21 recoveredBlock17Value22 recoveredBlock17Value23 recoveredBlock17Value24 |
    recoveredBlock17Value0 := (self) options.
    recoveredBlock17Value1 := recoveredBlock17Arg1.
    recoveredBlock17Value2 := (self) initializeNumericalSolverParameterDTFor: (recoveredBlock17Value1).
    (recoveredBlock17Value0) add: (recoveredBlock17Value2).
    recoveredBlock17Value3 := (self) options.
    recoveredBlock17Value4 := recoveredBlock17Arg1.
    recoveredBlock17Value5 := (self) initializeNumericalSolverParameterHFor: (recoveredBlock17Value4).
    (recoveredBlock17Value3) add: (recoveredBlock17Value5).
    recoveredBlock17Value6 := (self) options.
    recoveredBlock17Value7 := recoveredBlock17Arg1.
    recoveredBlock17Value8 := (self) initializeNumericalSolverParameterInitialHFor: (recoveredBlock17Value7).
    (recoveredBlock17Value6) add: (recoveredBlock17Value8).
    recoveredBlock17Value9 := (self) options.
    recoveredBlock17Value10 := recoveredBlock17Arg1.
    recoveredBlock17Value11 := (self) initializeNumericalSolverParameterMinimumHFor: (recoveredBlock17Value10).
    (recoveredBlock17Value9) add: (recoveredBlock17Value11).
    recoveredBlock17Value12 := (self) options.
    recoveredBlock17Value13 := recoveredBlock17Arg1.
    recoveredBlock17Value14 := (self) initializeNumericalSolverParameterMaximumHFor: (recoveredBlock17Value13).
    (recoveredBlock17Value12) add: (recoveredBlock17Value14).
    recoveredBlock17Value15 := (self) options.
    recoveredBlock17Value16 := recoveredBlock17Arg1.
    recoveredBlock17Value17 := (self) initializeNumericalSolverParameterRelativeErrorFor: (recoveredBlock17Value16).
    (recoveredBlock17Value15) add: (recoveredBlock17Value17).
    recoveredBlock17Value18 := (self) options.
    recoveredBlock17Value19 := recoveredBlock17Arg1.
    recoveredBlock17Value20 := (self) initializeNumericalSolverParameterAbsoluteErrorFor: (recoveredBlock17Value19).
    (recoveredBlock17Value18) add: (recoveredBlock17Value20).
    recoveredBlock17Value21 := (self) options.
    recoveredBlock17Value22 := recoveredBlock17Arg1.
    recoveredBlock17Value23 := (self) initializeNumericalSolverParameterMaxIterations: (recoveredBlock17Value22).
    recoveredBlock17Value24 := (recoveredBlock17Value21) add: (recoveredBlock17Value23).
    recoveredBlock17Value24
].
    (recoveredValue2) do: (recoveredValue3).
    ^self
! !

"ASDBase.ic method 0x2040e5ac; bytecode file offset 0xd0aeac"
!ASDNumericalSolverOptions methodsFor: 'recovered'!
initializeNumericalSolverParameterMaxIterations: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredStack7 recoveredStack8 recoveredStack9 recoveredStack10 recoveredStack11 recoveredStack12 recoveredStack13 recoveredStack14 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) attributeMaxIterations.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) name.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) attributeMaxIterationsSolverNamed: (recoveredStack1).
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := EtasXMLOptionEntry.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := (recoveredStack1) getCategoryNameForSolver: (recoveredStack2).
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack3 := EtasNumericOption.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack4 := 'Max. iterations'.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack5 := 'Max. iterations is the maximum number of iterations used to calculate the h parameter. Once the specified number of steps has been carried out, the h value at that point will be used'.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack6 := 'Maximum number of iterations'.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack7 := 100.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack8 := 100.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack9 := self.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack10 := recoveredArg1.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack9 := (recoveredStack9) getGroupNameForSolver: (recoveredStack10).
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack10 := [
    | recoveredBlock50Value0 recoveredBlock50Value1 recoveredBlock50Value2 recoveredBlock50Value3 |
    recoveredBlock50Value0 := recoveredArg1.
    recoveredBlock50Value1 := (recoveredBlock50Value0) fieldNames.
    recoveredBlock50Value2 := recoveredLocal1.
    recoveredBlock50Value3 := (recoveredBlock50Value1) includes: (recoveredBlock50Value2).
    recoveredBlock50Value3
].
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack11 := [
    true
].
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack12 := 'STATION'.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack13 := nil.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack3 := (recoveredStack3) label: (recoveredStack4) description: (recoveredStack5) toolTip: (recoveredStack6) value: (recoveredStack7) default: (recoveredStack8) group: (recoveredStack9) visible: (recoveredStack10) sensitive: (recoveredStack11) type: (recoveredStack12) userField: (recoveredStack13).
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack4 := recoveredStack3.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack5 := 0.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            (recoveredStack4) min: (recoveredStack5).
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack4 := 1000.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack3 := (recoveredStack3) max: (recoveredStack4).
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack4 := self.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredStack4 := (recoveredStack4) stationOptionFile.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredStack0 := (recoveredStack0) xmlCategory: (recoveredStack1) attributeName: (recoveredStack2) optionClass: (recoveredStack3) optionFile: (recoveredStack4).
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20472320; bytecode file offset 0xd6ec40"
!ASDNumericalSolverOptions methodsFor: 'recovered'!
initializeNumericalSolverParameterDTFor: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredStack7 recoveredStack8 recoveredStack9 recoveredStack10 recoveredStack11 recoveredStack12 recoveredStack13 recoveredStack14 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) attributeDT.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) name.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := (recoveredStack0) attributeDTSolverNamed: (recoveredStack1).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := EtasXMLOptionEntry.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := (recoveredStack1) getCategoryNameForSolver: (recoveredStack2).
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack3 := EtasFloatOption.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack4 := 'dT'.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack5 := 'dT is the communication time frame, i.e. the interval in which the block communicates with the outside. The value of dT has to be positive.'.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack6 := 'communication time frame'.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack7 := #[154 153 153 153 153 153 169 63].
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack8 := #[154 153 153 153 153 153 169 63].
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack9 := self.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack10 := recoveredArg1.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack9 := (recoveredStack9) getGroupNameForSolver: (recoveredStack10).
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack10 := [
    | recoveredBlock52Value0 recoveredBlock52Value1 recoveredBlock52Value2 recoveredBlock52Value3 |
    recoveredBlock52Value0 := recoveredArg1.
    recoveredBlock52Value1 := (recoveredBlock52Value0) fieldNames.
    recoveredBlock52Value2 := recoveredLocal2.
    recoveredBlock52Value3 := (recoveredBlock52Value1) includes: (recoveredBlock52Value2).
    recoveredBlock52Value3
].
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack11 := [
    true
].
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack12 := 'STATION'.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack13 := nil.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack3 := (recoveredStack3) label: (recoveredStack4) description: (recoveredStack5) toolTip: (recoveredStack6) value: (recoveredStack7) default: (recoveredStack8) group: (recoveredStack9) visible: (recoveredStack10) sensitive: (recoveredStack11) type: (recoveredStack12) userField: (recoveredStack13).
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack4 := recoveredStack3.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack5 := #[123 20 174 71 225 122 116 63].
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            (recoveredStack4) incrementValue: (recoveredStack5).
            recoveredStack4 := recoveredStack3.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack5 := [:recoveredBlock88Arg1 | 
    | recoveredBlock88Value0 recoveredBlock88Value1 recoveredBlock88Value2 recoveredBlock88Value3 recoveredBlock88Value4 |
    recoveredBlock88Value0 := recoveredBlock88Arg1.
    recoveredBlock88Value1 := recoveredBlock88Arg1.
    recoveredBlock88Value2 := recoveredLocal1.
    recoveredBlock88Value3 := (self) hasInvalidOptionValueDT: (recoveredBlock88Value1) solverName: (recoveredBlock88Value2).
    recoveredBlock88Value4 := (recoveredBlock88Value0) invalid: (recoveredBlock88Value3).
    recoveredBlock88Value4
].
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            (recoveredStack4) updateField: (recoveredStack5).
            recoveredStack4 := recoveredStack3.
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            recoveredStack5 := #[0 0 0 0 0 0 0 0].
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            (recoveredStack4) min: (recoveredStack5).
            recoveredPC := 112.
        ].
        recoveredStep = 112 ifTrue: [
            recoveredStack4 := #[0 0 0 0 0 0 240 63].
            recoveredPC := 114.
        ].
        recoveredStep = 114 ifTrue: [
            recoveredStack3 := (recoveredStack3) max: (recoveredStack4).
            recoveredPC := 116.
        ].
        recoveredStep = 116 ifTrue: [
            recoveredStack4 := self.
            recoveredPC := 117.
        ].
        recoveredStep = 117 ifTrue: [
            recoveredStack4 := (recoveredStack4) stationOptionFile.
            recoveredPC := 119.
        ].
        recoveredStep = 119 ifTrue: [
            recoveredStack0 := (recoveredStack0) xmlCategory: (recoveredStack1) attributeName: (recoveredStack2) optionClass: (recoveredStack3) optionFile: (recoveredStack4).
            recoveredPC := 122.
        ].
        recoveredStep = 122 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20479af0; bytecode file offset 0xd76654"
!ASDNumericalSolverOptions methodsFor: 'recovered'!
initializeNumericalSolverParameterAbsoluteErrorFor: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredStack7 recoveredStack8 recoveredStack9 recoveredStack10 recoveredStack11 recoveredStack12 recoveredStack13 recoveredStack14 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) attributeAbsoluteError.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) name.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := (recoveredStack1) name.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := (recoveredStack0) attributeAbsoluteErrorSolverNamed: (recoveredStack1).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := EtasXMLOptionEntry.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := (recoveredStack1) getCategoryNameForSolver: (recoveredStack2).
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack3 := EtasFloatOption.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack4 := 'Absolute Error'.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack5 := 'Absolute error allowed for the calculation of h; available for solvers with variable step size.'.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack6 := 'Absolute error for h'.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack7 := #[141 237 181 160 247 198 176 62].
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack8 := #[141 237 181 160 247 198 176 62].
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack9 := self.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack10 := recoveredArg1.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack9 := (recoveredStack9) getGroupNameForSolver: (recoveredStack10).
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack10 := [
    | recoveredBlock53Value0 recoveredBlock53Value1 recoveredBlock53Value2 recoveredBlock53Value3 |
    recoveredBlock53Value0 := recoveredArg1.
    recoveredBlock53Value1 := (recoveredBlock53Value0) fieldNames.
    recoveredBlock53Value2 := recoveredLocal2.
    recoveredBlock53Value3 := (recoveredBlock53Value1) includes: (recoveredBlock53Value2).
    recoveredBlock53Value3
].
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack11 := [
    true
].
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack12 := 'STATION'.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack13 := nil.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack3 := (recoveredStack3) label: (recoveredStack4) description: (recoveredStack5) toolTip: (recoveredStack6) value: (recoveredStack7) default: (recoveredStack8) group: (recoveredStack9) visible: (recoveredStack10) sensitive: (recoveredStack11) type: (recoveredStack12) userField: (recoveredStack13).
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack4 := recoveredStack3.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack5 := #[72 175 188 154 242 215 122 62].
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            (recoveredStack4) incrementValue: (recoveredStack5).
            recoveredStack4 := recoveredStack3.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack5 := [:recoveredBlock90Arg1 | 
    | recoveredBlock90Value0 recoveredBlock90Value1 recoveredBlock90Value2 recoveredBlock90Value3 recoveredBlock90Value4 |
    recoveredBlock90Value0 := recoveredBlock90Arg1.
    recoveredBlock90Value1 := recoveredBlock90Arg1.
    recoveredBlock90Value2 := recoveredLocal1.
    recoveredBlock90Value3 := (self) hasInvalidOptionValueAbsoluteError: (recoveredBlock90Value1) solverName: (recoveredBlock90Value2).
    recoveredBlock90Value4 := (recoveredBlock90Value0) invalid: (recoveredBlock90Value3).
    recoveredBlock90Value4
].
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            (recoveredStack4) updateField: (recoveredStack5).
            recoveredStack4 := recoveredStack3.
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            recoveredStack5 := #[0 0 0 0 0 0 0 0].
            recoveredPC := 112.
        ].
        recoveredStep = 112 ifTrue: [
            (recoveredStack4) min: (recoveredStack5).
            recoveredPC := 114.
        ].
        recoveredStep = 114 ifTrue: [
            recoveredStack4 := #[0 0 0 0 0 0 240 63].
            recoveredPC := 116.
        ].
        recoveredStep = 116 ifTrue: [
            recoveredStack3 := (recoveredStack3) max: (recoveredStack4).
            recoveredPC := 118.
        ].
        recoveredStep = 118 ifTrue: [
            recoveredStack4 := self.
            recoveredPC := 119.
        ].
        recoveredStep = 119 ifTrue: [
            recoveredStack4 := (recoveredStack4) stationOptionFile.
            recoveredPC := 121.
        ].
        recoveredStep = 121 ifTrue: [
            recoveredStack0 := (recoveredStack0) xmlCategory: (recoveredStack1) attributeName: (recoveredStack2) optionClass: (recoveredStack3) optionFile: (recoveredStack4).
            recoveredPC := 124.
        ].
        recoveredStep = 124 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20479b64; bytecode file offset 0xd76654"
!ASDNumericalSolverOptions methodsFor: 'recovered'!
initializeNumericalSolverParameterRelativeErrorFor: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredStack7 recoveredStack8 recoveredStack9 recoveredStack10 recoveredStack11 recoveredStack12 recoveredStack13 recoveredStack14 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) attributeRelativeError.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) name.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := (recoveredStack1) name.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := (recoveredStack0) attributeRelativeErrorSolverNamed: (recoveredStack1).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := EtasXMLOptionEntry.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := (recoveredStack1) getCategoryNameForSolver: (recoveredStack2).
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack3 := EtasFloatOption.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack4 := 'Relative Error'.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack5 := 'Relative error allowed for the calculation of h; available for solvers with variable step size.'.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack6 := 'Relative error for h'.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack7 := #[141 237 181 160 247 198 176 62].
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack8 := #[141 237 181 160 247 198 176 62].
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack9 := self.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack10 := recoveredArg1.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack9 := (recoveredStack9) getGroupNameForSolver: (recoveredStack10).
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack10 := [
    | recoveredBlock53Value0 recoveredBlock53Value1 recoveredBlock53Value2 recoveredBlock53Value3 |
    recoveredBlock53Value0 := recoveredArg1.
    recoveredBlock53Value1 := (recoveredBlock53Value0) fieldNames.
    recoveredBlock53Value2 := recoveredLocal2.
    recoveredBlock53Value3 := (recoveredBlock53Value1) includes: (recoveredBlock53Value2).
    recoveredBlock53Value3
].
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack11 := [
    true
].
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack12 := 'STATION'.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack13 := nil.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack3 := (recoveredStack3) label: (recoveredStack4) description: (recoveredStack5) toolTip: (recoveredStack6) value: (recoveredStack7) default: (recoveredStack8) group: (recoveredStack9) visible: (recoveredStack10) sensitive: (recoveredStack11) type: (recoveredStack12) userField: (recoveredStack13).
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack4 := recoveredStack3.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack5 := #[72 175 188 154 242 215 122 62].
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            (recoveredStack4) incrementValue: (recoveredStack5).
            recoveredStack4 := recoveredStack3.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack5 := [:recoveredBlock90Arg1 | 
    | recoveredBlock90Value0 recoveredBlock90Value1 recoveredBlock90Value2 recoveredBlock90Value3 recoveredBlock90Value4 |
    recoveredBlock90Value0 := recoveredBlock90Arg1.
    recoveredBlock90Value1 := recoveredBlock90Arg1.
    recoveredBlock90Value2 := recoveredLocal1.
    recoveredBlock90Value3 := (self) hasInvalidOptionValueRelativeError: (recoveredBlock90Value1) solverName: (recoveredBlock90Value2).
    recoveredBlock90Value4 := (recoveredBlock90Value0) invalid: (recoveredBlock90Value3).
    recoveredBlock90Value4
].
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            (recoveredStack4) updateField: (recoveredStack5).
            recoveredStack4 := recoveredStack3.
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            recoveredStack5 := #[0 0 0 0 0 0 0 0].
            recoveredPC := 112.
        ].
        recoveredStep = 112 ifTrue: [
            (recoveredStack4) min: (recoveredStack5).
            recoveredPC := 114.
        ].
        recoveredStep = 114 ifTrue: [
            recoveredStack4 := #[0 0 0 0 0 0 240 63].
            recoveredPC := 116.
        ].
        recoveredStep = 116 ifTrue: [
            recoveredStack3 := (recoveredStack3) max: (recoveredStack4).
            recoveredPC := 118.
        ].
        recoveredStep = 118 ifTrue: [
            recoveredStack4 := self.
            recoveredPC := 119.
        ].
        recoveredStep = 119 ifTrue: [
            recoveredStack4 := (recoveredStack4) stationOptionFile.
            recoveredPC := 121.
        ].
        recoveredStep = 121 ifTrue: [
            recoveredStack0 := (recoveredStack0) xmlCategory: (recoveredStack1) attributeName: (recoveredStack2) optionClass: (recoveredStack3) optionFile: (recoveredStack4).
            recoveredPC := 124.
        ].
        recoveredStep = 124 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20479bd8; bytecode file offset 0xd76654"
!ASDNumericalSolverOptions methodsFor: 'recovered'!
initializeNumericalSolverParameterMaximumHFor: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredStack7 recoveredStack8 recoveredStack9 recoveredStack10 recoveredStack11 recoveredStack12 recoveredStack13 recoveredStack14 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) attributeMaximumH.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) name.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := (recoveredStack1) name.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := (recoveredStack0) attributeMaximumHSolverNamed: (recoveredStack1).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := EtasXMLOptionEntry.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := (recoveredStack1) getCategoryNameForSolver: (recoveredStack2).
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack3 := EtasFloatOption.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack4 := 'Maximum h'.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack5 := 'Maximum limit for the h parameter which is calculated according to the model dynamics when the variable step size solvers are used. Maximum h must be less than or equal to dT.'.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack6 := 'Maximum for the h parameter'.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack7 := #[123 20 174 71 225 122 116 63].
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack8 := #[123 20 174 71 225 122 116 63].
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack9 := self.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack10 := recoveredArg1.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack9 := (recoveredStack9) getGroupNameForSolver: (recoveredStack10).
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack10 := [
    | recoveredBlock53Value0 recoveredBlock53Value1 recoveredBlock53Value2 recoveredBlock53Value3 |
    recoveredBlock53Value0 := recoveredArg1.
    recoveredBlock53Value1 := (recoveredBlock53Value0) fieldNames.
    recoveredBlock53Value2 := recoveredLocal2.
    recoveredBlock53Value3 := (recoveredBlock53Value1) includes: (recoveredBlock53Value2).
    recoveredBlock53Value3
].
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack11 := [
    true
].
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack12 := 'STATION'.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack13 := nil.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack3 := (recoveredStack3) label: (recoveredStack4) description: (recoveredStack5) toolTip: (recoveredStack6) value: (recoveredStack7) default: (recoveredStack8) group: (recoveredStack9) visible: (recoveredStack10) sensitive: (recoveredStack11) type: (recoveredStack12) userField: (recoveredStack13).
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack4 := recoveredStack3.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack5 := #[252 169 241 210 77 98 64 63].
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            (recoveredStack4) incrementValue: (recoveredStack5).
            recoveredStack4 := recoveredStack3.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack5 := [:recoveredBlock90Arg1 | 
    | recoveredBlock90Value0 recoveredBlock90Value1 recoveredBlock90Value2 recoveredBlock90Value3 recoveredBlock90Value4 |
    recoveredBlock90Value0 := recoveredBlock90Arg1.
    recoveredBlock90Value1 := recoveredBlock90Arg1.
    recoveredBlock90Value2 := recoveredLocal1.
    recoveredBlock90Value3 := (self) hasInvalidOptionValueMaximumH: (recoveredBlock90Value1) solverName: (recoveredBlock90Value2).
    recoveredBlock90Value4 := (recoveredBlock90Value0) invalid: (recoveredBlock90Value3).
    recoveredBlock90Value4
].
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            (recoveredStack4) updateField: (recoveredStack5).
            recoveredStack4 := recoveredStack3.
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            recoveredStack5 := #[0 0 0 0 0 0 0 0].
            recoveredPC := 112.
        ].
        recoveredStep = 112 ifTrue: [
            (recoveredStack4) min: (recoveredStack5).
            recoveredPC := 114.
        ].
        recoveredStep = 114 ifTrue: [
            recoveredStack4 := #[0 0 0 0 0 0 240 63].
            recoveredPC := 116.
        ].
        recoveredStep = 116 ifTrue: [
            recoveredStack3 := (recoveredStack3) max: (recoveredStack4).
            recoveredPC := 118.
        ].
        recoveredStep = 118 ifTrue: [
            recoveredStack4 := self.
            recoveredPC := 119.
        ].
        recoveredStep = 119 ifTrue: [
            recoveredStack4 := (recoveredStack4) stationOptionFile.
            recoveredPC := 121.
        ].
        recoveredStep = 121 ifTrue: [
            recoveredStack0 := (recoveredStack0) xmlCategory: (recoveredStack1) attributeName: (recoveredStack2) optionClass: (recoveredStack3) optionFile: (recoveredStack4).
            recoveredPC := 124.
        ].
        recoveredStep = 124 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20479c4c; bytecode file offset 0xd76654"
!ASDNumericalSolverOptions methodsFor: 'recovered'!
initializeNumericalSolverParameterMinimumHFor: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredStack7 recoveredStack8 recoveredStack9 recoveredStack10 recoveredStack11 recoveredStack12 recoveredStack13 recoveredStack14 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) attributeMinimumH.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) name.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := (recoveredStack1) name.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := (recoveredStack0) attributeMinimumHSolverNamed: (recoveredStack1).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := EtasXMLOptionEntry.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := (recoveredStack1) getCategoryNameForSolver: (recoveredStack2).
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack3 := EtasFloatOption.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack4 := 'Minimum h'.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack5 := 'Minimum limit for the h parameter which is calculated according to the model dynamics when the variable step size solvers are used. Maximum h must be less than or equal to dT.'.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack6 := 'Minimum for the h parameter'.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack7 := #[45 67 28 235 226 54 10 63].
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack8 := #[45 67 28 235 226 54 10 63].
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack9 := self.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack10 := recoveredArg1.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack9 := (recoveredStack9) getGroupNameForSolver: (recoveredStack10).
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack10 := [
    | recoveredBlock53Value0 recoveredBlock53Value1 recoveredBlock53Value2 recoveredBlock53Value3 |
    recoveredBlock53Value0 := recoveredArg1.
    recoveredBlock53Value1 := (recoveredBlock53Value0) fieldNames.
    recoveredBlock53Value2 := recoveredLocal2.
    recoveredBlock53Value3 := (recoveredBlock53Value1) includes: (recoveredBlock53Value2).
    recoveredBlock53Value3
].
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack11 := [
    true
].
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack12 := 'STATION'.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack13 := nil.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack3 := (recoveredStack3) label: (recoveredStack4) description: (recoveredStack5) toolTip: (recoveredStack6) value: (recoveredStack7) default: (recoveredStack8) group: (recoveredStack9) visible: (recoveredStack10) sensitive: (recoveredStack11) type: (recoveredStack12) userField: (recoveredStack13).
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack4 := recoveredStack3.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack5 := #[241 104 227 136 181 248 212 62].
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            (recoveredStack4) incrementValue: (recoveredStack5).
            recoveredStack4 := recoveredStack3.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack5 := [:recoveredBlock90Arg1 | 
    | recoveredBlock90Value0 recoveredBlock90Value1 recoveredBlock90Value2 recoveredBlock90Value3 recoveredBlock90Value4 |
    recoveredBlock90Value0 := recoveredBlock90Arg1.
    recoveredBlock90Value1 := recoveredBlock90Arg1.
    recoveredBlock90Value2 := recoveredLocal1.
    recoveredBlock90Value3 := (self) hasInvalidOptionValueMinimumH: (recoveredBlock90Value1) solverName: (recoveredBlock90Value2).
    recoveredBlock90Value4 := (recoveredBlock90Value0) invalid: (recoveredBlock90Value3).
    recoveredBlock90Value4
].
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            (recoveredStack4) updateField: (recoveredStack5).
            recoveredStack4 := recoveredStack3.
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            recoveredStack5 := #[0 0 0 0 0 0 0 0].
            recoveredPC := 112.
        ].
        recoveredStep = 112 ifTrue: [
            (recoveredStack4) min: (recoveredStack5).
            recoveredPC := 114.
        ].
        recoveredStep = 114 ifTrue: [
            recoveredStack4 := #[0 0 0 0 0 0 240 63].
            recoveredPC := 116.
        ].
        recoveredStep = 116 ifTrue: [
            recoveredStack3 := (recoveredStack3) max: (recoveredStack4).
            recoveredPC := 118.
        ].
        recoveredStep = 118 ifTrue: [
            recoveredStack4 := self.
            recoveredPC := 119.
        ].
        recoveredStep = 119 ifTrue: [
            recoveredStack4 := (recoveredStack4) stationOptionFile.
            recoveredPC := 121.
        ].
        recoveredStep = 121 ifTrue: [
            recoveredStack0 := (recoveredStack0) xmlCategory: (recoveredStack1) attributeName: (recoveredStack2) optionClass: (recoveredStack3) optionFile: (recoveredStack4).
            recoveredPC := 124.
        ].
        recoveredStep = 124 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20479cc0; bytecode file offset 0xd76654"
!ASDNumericalSolverOptions methodsFor: 'recovered'!
initializeNumericalSolverParameterHFor: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredStack7 recoveredStack8 recoveredStack9 recoveredStack10 recoveredStack11 recoveredStack12 recoveredStack13 recoveredStack14 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) attributeH.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) name.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := (recoveredStack1) name.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := (recoveredStack0) attributeHSolverNamed: (recoveredStack1).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := EtasXMLOptionEntry.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := (recoveredStack1) getCategoryNameForSolver: (recoveredStack2).
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack3 := EtasFloatOption.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack4 := 'h'.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack5 := 'h is the integration step size, i.e. the interval for internal calculations. The value of h must be a factor of dT.'.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack6 := 'integration step size'.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack7 := #[252 169 241 210 77 98 64 63].
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack8 := #[252 169 241 210 77 98 64 63].
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack9 := self.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack10 := recoveredArg1.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack9 := (recoveredStack9) getGroupNameForSolver: (recoveredStack10).
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack10 := [
    | recoveredBlock53Value0 recoveredBlock53Value1 recoveredBlock53Value2 recoveredBlock53Value3 |
    recoveredBlock53Value0 := recoveredArg1.
    recoveredBlock53Value1 := (recoveredBlock53Value0) fieldNames.
    recoveredBlock53Value2 := recoveredLocal2.
    recoveredBlock53Value3 := (recoveredBlock53Value1) includes: (recoveredBlock53Value2).
    recoveredBlock53Value3
].
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack11 := [
    true
].
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack12 := 'STATION'.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack13 := nil.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack3 := (recoveredStack3) label: (recoveredStack4) description: (recoveredStack5) toolTip: (recoveredStack6) value: (recoveredStack7) default: (recoveredStack8) group: (recoveredStack9) visible: (recoveredStack10) sensitive: (recoveredStack11) type: (recoveredStack12) userField: (recoveredStack13).
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack4 := recoveredStack3.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack5 := #[45 67 28 235 226 54 10 63].
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            (recoveredStack4) incrementValue: (recoveredStack5).
            recoveredStack4 := recoveredStack3.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack5 := [:recoveredBlock90Arg1 | 
    | recoveredBlock90Value0 recoveredBlock90Value1 recoveredBlock90Value2 recoveredBlock90Value3 recoveredBlock90Value4 |
    recoveredBlock90Value0 := recoveredBlock90Arg1.
    recoveredBlock90Value1 := recoveredBlock90Arg1.
    recoveredBlock90Value2 := recoveredLocal1.
    recoveredBlock90Value3 := (self) hasInvalidOptionValueH: (recoveredBlock90Value1) solverName: (recoveredBlock90Value2).
    recoveredBlock90Value4 := (recoveredBlock90Value0) invalid: (recoveredBlock90Value3).
    recoveredBlock90Value4
].
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            (recoveredStack4) updateField: (recoveredStack5).
            recoveredStack4 := recoveredStack3.
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            recoveredStack5 := #[0 0 0 0 0 0 0 0].
            recoveredPC := 112.
        ].
        recoveredStep = 112 ifTrue: [
            (recoveredStack4) min: (recoveredStack5).
            recoveredPC := 114.
        ].
        recoveredStep = 114 ifTrue: [
            recoveredStack4 := #[0 0 0 0 0 0 240 63].
            recoveredPC := 116.
        ].
        recoveredStep = 116 ifTrue: [
            recoveredStack3 := (recoveredStack3) max: (recoveredStack4).
            recoveredPC := 118.
        ].
        recoveredStep = 118 ifTrue: [
            recoveredStack4 := self.
            recoveredPC := 119.
        ].
        recoveredStep = 119 ifTrue: [
            recoveredStack4 := (recoveredStack4) stationOptionFile.
            recoveredPC := 121.
        ].
        recoveredStep = 121 ifTrue: [
            recoveredStack0 := (recoveredStack0) xmlCategory: (recoveredStack1) attributeName: (recoveredStack2) optionClass: (recoveredStack3) optionFile: (recoveredStack4).
            recoveredPC := 124.
        ].
        recoveredStep = 124 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20479d34; bytecode file offset 0xd76654"
!ASDNumericalSolverOptions methodsFor: 'recovered'!
initializeNumericalSolverParameterInitialHFor: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredStack7 recoveredStack8 recoveredStack9 recoveredStack10 recoveredStack11 recoveredStack12 recoveredStack13 recoveredStack14 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) attributeInitialH.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) name.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := (recoveredStack1) name.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := (recoveredStack0) attributeInitialHSolverNamed: (recoveredStack1).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := EtasXMLOptionEntry.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := (recoveredStack1) getCategoryNameForSolver: (recoveredStack2).
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack3 := EtasFloatOption.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack4 := 'Initial h'.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack5 := 'Initial h is the integration step size for solvers with variable step size'.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack6 := 'Initial integration step size'.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack7 := #[252 169 241 210 77 98 64 63].
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack8 := #[252 169 241 210 77 98 64 63].
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack9 := self.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack10 := recoveredArg1.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack9 := (recoveredStack9) getGroupNameForSolver: (recoveredStack10).
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack10 := [
    | recoveredBlock53Value0 recoveredBlock53Value1 recoveredBlock53Value2 recoveredBlock53Value3 |
    recoveredBlock53Value0 := recoveredArg1.
    recoveredBlock53Value1 := (recoveredBlock53Value0) fieldNames.
    recoveredBlock53Value2 := recoveredLocal2.
    recoveredBlock53Value3 := (recoveredBlock53Value1) includes: (recoveredBlock53Value2).
    recoveredBlock53Value3
].
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack11 := [
    true
].
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack12 := 'STATION'.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack13 := nil.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack3 := (recoveredStack3) label: (recoveredStack4) description: (recoveredStack5) toolTip: (recoveredStack6) value: (recoveredStack7) default: (recoveredStack8) group: (recoveredStack9) visible: (recoveredStack10) sensitive: (recoveredStack11) type: (recoveredStack12) userField: (recoveredStack13).
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack4 := recoveredStack3.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack5 := #[45 67 28 235 226 54 10 63].
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            (recoveredStack4) incrementValue: (recoveredStack5).
            recoveredStack4 := recoveredStack3.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack5 := [:recoveredBlock90Arg1 | 
    | recoveredBlock90Value0 recoveredBlock90Value1 recoveredBlock90Value2 recoveredBlock90Value3 recoveredBlock90Value4 |
    recoveredBlock90Value0 := recoveredBlock90Arg1.
    recoveredBlock90Value1 := recoveredBlock90Arg1.
    recoveredBlock90Value2 := recoveredLocal1.
    recoveredBlock90Value3 := (self) hasInvalidOptionValueInitialH: (recoveredBlock90Value1) solverName: (recoveredBlock90Value2).
    recoveredBlock90Value4 := (recoveredBlock90Value0) invalid: (recoveredBlock90Value3).
    recoveredBlock90Value4
].
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            (recoveredStack4) updateField: (recoveredStack5).
            recoveredStack4 := recoveredStack3.
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            recoveredStack5 := #[0 0 0 0 0 0 0 0].
            recoveredPC := 112.
        ].
        recoveredStep = 112 ifTrue: [
            (recoveredStack4) min: (recoveredStack5).
            recoveredPC := 114.
        ].
        recoveredStep = 114 ifTrue: [
            recoveredStack4 := #[0 0 0 0 0 0 240 63].
            recoveredPC := 116.
        ].
        recoveredStep = 116 ifTrue: [
            recoveredStack3 := (recoveredStack3) max: (recoveredStack4).
            recoveredPC := 118.
        ].
        recoveredStep = 118 ifTrue: [
            recoveredStack4 := self.
            recoveredPC := 119.
        ].
        recoveredStep = 119 ifTrue: [
            recoveredStack4 := (recoveredStack4) stationOptionFile.
            recoveredPC := 121.
        ].
        recoveredStep = 121 ifTrue: [
            recoveredStack0 := (recoveredStack0) xmlCategory: (recoveredStack1) attributeName: (recoveredStack2) optionClass: (recoveredStack3) optionFile: (recoveredStack4).
            recoveredPC := 124.
        ].
        recoveredStep = 124 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

