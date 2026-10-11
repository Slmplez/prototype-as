"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20015b78; bytecode file offset 0x92209c"
!SGItemWithSpec class methodsFor: 'recovered'!
dependentParametersMethodName
    ^'dependentParameters'
! !

"ASDBase.ic method 0x200178dc; bytecode file offset 0x92209c"
!SGItemWithSpec class methodsFor: 'recovered'!
terminateMethodName
    ^'terminate'
! !

"ASDBase.ic method 0x20018038; bytecode file offset 0x92209c"
!SGItemWithSpec class methodsFor: 'recovered'!
stateEventsMethodName
    ^'stateEvents'
! !

"ASDBase.ic method 0x2001937c; bytecode file offset 0x92209c"
!SGItemWithSpec class methodsFor: 'recovered'!
integrateMethodName
    ^'integrate'
! !

"ASDBase.ic method 0x2001a1bc; bytecode file offset 0x92209c"
!SGItemWithSpec class methodsFor: 'recovered'!
directOutputMethodName
    ^'directOutputs'
! !

"ASDBase.ic method 0x2001f688; bytecode file offset 0x92209c"
!SGItemWithSpec class methodsFor: 'recovered'!
nondirectOutputMethodName
    ^'nondirectOutputs'
! !

"ASDBase.ic method 0x20021404; bytecode file offset 0x92209c"
!SGItemWithSpec class methodsFor: 'recovered'!
derivativesMethodName
    ^'derivatives'
! !

"ASDBase.ic method 0x2002186c; bytecode file offset 0x92209c"
!SGItemWithSpec class methodsFor: 'recovered'!
setCTSolverMethodName
    ^'setCTSolver'
! !

"ASDBase.ic method 0x20021b48; bytecode file offset 0x92209c"
!SGItemWithSpec class methodsFor: 'recovered'!
eventsMethodName
    ^'events'
! !

"ASDBase.ic method 0x20023a08; bytecode file offset 0x92209c"
!SGItemWithSpec class methodsFor: 'recovered'!
initMethodName
    ^'init'
! !

"ASDBase.ic method 0x20025bd0; bytecode file offset 0x923928"
!SGItemWithSpec class methodsFor: 'recovered'!
updateMethodName
    ^'update'
! !

"ASDBase.ic method 0x201b52a4; bytecode file offset 0xab1b70"
!SGItemWithSpec class methodsFor: 'recovered'!
apiDiagramTypeFor: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := SGItemSpecification.
    recoveredValue1 := (recoveredValue0) allSubclasses.
    recoveredValue2 := [:recoveredBlock7Arg1 | 
    | recoveredBlock7Value0 recoveredBlock7Value1 recoveredBlock7Value2 recoveredBlock7Value3 |
    recoveredBlock7Value0 := recoveredBlock7Arg1.
    recoveredBlock7Value1 := (recoveredBlock7Value0) apiDiagramTypes.
    recoveredBlock7Value2 := recoveredArg1.
    recoveredBlock7Value3 := (recoveredBlock7Value1) includes: (recoveredBlock7Value2).
    recoveredBlock7Value3
].
    recoveredValue3 := [].
    recoveredValue4 := (recoveredValue1) detect: (recoveredValue2) ifNone: (recoveredValue3).
    ^recoveredValue4
! !

"ASDBase.ic method 0x202a83c4; bytecode file offset 0xba4ca0"
!SGItemWithSpec class methodsFor: 'recovered'!
ClassNamesItemWithSpec
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := ClassNamesItemWithSpec.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 43] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := OrderedCollection.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            ClassNamesItemWithSpec := recoveredStack1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := SGItemWithSpec.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := (recoveredStack1) allSubclasses.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack2 := [:block280e42e8Arg1 | 
    | block280e42e8Stack0 block280e42e8Stack1 block280e42e8Stack2 block280e42e8Stack3 block280e42e8PC block280e42e8Step block280e42e8Done block280e42e8Result |
    block280e42e8Stack0 := self.
    block280e42e8PC := 4.
    block280e42e8Done := false.
    [block280e42e8Done not] whileTrue: [
        block280e42e8Step := block280e42e8PC.
        block280e42e8Step = 4 ifTrue: [
            block280e42e8Stack1 := nil.
            block280e42e8PC := 5.
        ].
        block280e42e8Step = 5 ifTrue: [
            block280e42e8Stack2 := block280e42e8Arg1.
            block280e42e8PC := 6.
        ].
        block280e42e8Step = 6 ifTrue: [
            block280e42e8Stack2 := (block280e42e8Stack2) new.
            block280e42e8PC := 7.
        ].
        block280e42e8Step = 7 ifTrue: [
            block280e42e8Stack2 := (block280e42e8Stack2) isSGClass.
            block280e42e8PC := 9.
        ].
        block280e42e8Step = 9 ifTrue: [
            (block280e42e8Stack2) ifTrue: [block280e42e8PC := 12] ifFalse: [block280e42e8PC := 20].
        ].
        block280e42e8Step = 12 ifTrue: [
            block280e42e8PC := 13.
        ].
        block280e42e8Step = 13 ifTrue: [
            block280e42e8Stack1 := ClassNamesItemWithSpec.
            block280e42e8PC := 15.
        ].
        block280e42e8Step = 15 ifTrue: [
            block280e42e8Stack2 := block280e42e8Arg1.
            block280e42e8PC := 16.
        ].
        block280e42e8Step = 16 ifTrue: [
            block280e42e8Stack2 := (block280e42e8Stack2) name.
            block280e42e8PC := 18.
        ].
        block280e42e8Step = 18 ifTrue: [
            block280e42e8Stack1 := (block280e42e8Stack1) add: (block280e42e8Stack2).
            block280e42e8PC := 20.
        ].
        block280e42e8Step = 20 ifTrue: [
            block280e42e8Result := block280e42e8Stack1.
            block280e42e8Done := true.
        ].
    ].
    block280e42e8Result
].
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack1 := ClassNamesItemWithSpec.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x202f2278; bytecode file offset 0xbeeb48"
!SGItemWithSpec class methodsFor: 'recovered'!
create: recoveredArg1 specification: recoveredArg2 parent: recoveredArg3 databaseAccess: recoveredArg4
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := recoveredArg3.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack3 := recoveredArg4.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := (recoveredStack0) create: (recoveredStack1) parent: (recoveredStack2) databaseAccess: (recoveredStack3).
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack2 := (recoveredStack2) isCTClass.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack3 := recoveredLocal2.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack3 := (recoveredStack3) isProcessClass.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack4 := recoveredLocal2.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := (recoveredStack1) createCT: (recoveredStack2) module: (recoveredStack3) forClass: (recoveredStack4).
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            (recoveredStack0) addPublicSpecification: (recoveredStack1).
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := (recoveredStack0) isProcessClass.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 38] ifFalse: [recoveredPC := 46].
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            (recoveredStack0) initDefaultProcessForSpec: (recoveredStack1).
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredPC := 50.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            (recoveredStack0) initDefaultMethodsForSpec: (recoveredStack1).
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

