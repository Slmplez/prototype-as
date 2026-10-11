"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20000598; bytecode file offset 0x8ffcfc"
!SGIlAbstractIdentifier methodsFor: 'recovered'!
asIleLValueCopy
    ^self
! !

"ASDBase.ic method 0x20000890; bytecode file offset 0x8ffcfc"
!SGIlAbstractIdentifier methodsFor: 'recovered'!
ileExtendedInputValue
    ^self
! !

"ASDBase.ic method 0x20000d00; bytecode file offset 0x8ffcfc"
!SGIlAbstractIdentifier methodsFor: 'recovered'!
asIleSideEffectFreeExpr
    ^self
! !

"ASDBase.ic method 0x20009b30; bytecode file offset 0x908be4"
!SGIlAbstractIdentifier methodsFor: 'recovered'!
precedenceLevel
    | recoveredValue0 |
    recoveredValue0 := (self) precedenceLevelOfIdentifier.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2000aea4; bytecode file offset 0x908be4"
!SGIlAbstractIdentifier methodsFor: 'recovered'!
ileRuntimeCosts
    | recoveredValue0 |
    recoveredValue0 := (self) ileRuntimeCostsOfExpr.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2003a04c; bytecode file offset 0x938608"
!SGIlAbstractIdentifier methodsFor: 'recovered'!
ileConvertEnumTo: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) createOpType: (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x20055908; bytecode file offset 0x952a9c"
!SGIlAbstractIdentifier methodsFor: 'recovered'!
ileDependsOnAccessExpr: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) ileMayChangeResultOfAccess: (self).
    ^recoveredValue1
! !

"ASDBase.ic method 0x20055ddc; bytecode file offset 0x952a9c"
!SGIlAbstractIdentifier methodsFor: 'recovered'!
ileAcceptNodeVisitor: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) abstractIdentifier: (self).
    ^recoveredValue1
! !

"ASDBase.ic method 0x20059ab8; bytecode file offset 0x9566ac"
!SGIlAbstractIdentifier methodsFor: 'recovered'!
createOpType: recoveredArg1 goalInterval: recoveredArg2
    (self) subclassResponsibility.
    ^self
! !

"ASDBase.ic method 0x2006a2b8; bytecode file offset 0x966bdc"
!SGIlAbstractIdentifier methodsFor: 'recovered'!
goalInterval
    | recoveredValue0 |
    recoveredValue0 := goalInterval.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20078a9c; bytecode file offset 0x9757c8"
!SGIlAbstractIdentifier methodsFor: 'recovered'!
isIleAbstractIdentifier
    ^true
! !

"ASDBase.ic method 0x2007b36c; bytecode file offset 0x97c330"
!SGIlAbstractIdentifier methodsFor: 'recovered'!
hasCtBlockScope
    ^false
! !

"ASDBase.ic method 0x2007d7e4; bytecode file offset 0x97c330"
!SGIlAbstractIdentifier methodsFor: 'recovered'!
isIleNamedTempIdentifier
    ^false
! !

"ASDBase.ic method 0x2007daa4; bytecode file offset 0x97c330"
!SGIlAbstractIdentifier methodsFor: 'recovered'!
hasCCodeScope
    ^false
! !

"ASDBase.ic method 0x200952cc; bytecode file offset 0x991c58"
!SGIlAbstractIdentifier methodsFor: 'recovered'!
createOpType: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) goalInterval.
    recoveredValue2 := (self) createOpType: (recoveredValue0) goalInterval: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x200fe8f0; bytecode file offset 0x9fb278"
!SGIlAbstractIdentifier methodsFor: 'recovered'!
printOn: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    super printOn: (recoveredValue0).
    recoveredValue1 := recoveredArg1.
    (self) printIntervalOn: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x2013acf8; bytecode file offset 0xa375b4"
!SGIlAbstractIdentifier methodsFor: 'recovered'!
type
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := type.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := (recoveredStack2) interval.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) createIleTypeFromInterval: (recoveredStack2).
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            type := recoveredStack1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := type.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x20157bd0; bytecode file offset 0xa54490"
!SGIlAbstractIdentifier methodsFor: 'recovered'!
initializeSource: recoveredArg1 type: recoveredArg2 goalInterval: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg3.
    goalInterval := recoveredValue0.
    recoveredValue1 := goalInterval.
    (recoveredValue1) markReadOnly: (true).
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := recoveredArg2.
    super initializeSource: (recoveredValue2) type: (recoveredValue3).
    ^self
! !

"ASDBase.ic method 0x20171d18; bytecode file offset 0xa6e5d8"
!SGIlAbstractIdentifier methodsFor: 'recovered'!
interval
    | recoveredStack0 recoveredStack1 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) goalInterval.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 17] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) goalInterval.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := (recoveredStack0) isEmpty.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 17] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) goalInterval.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := (recoveredStack0) ileBasicInterval.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20212e90; bytecode file offset 0xb0f758"
!SGIlAbstractIdentifier methodsFor: 'recovered'!
createOpGoalInterval: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := (recoveredStack2) goalInterval.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 21] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            (recoveredStack1) ileAssertArithmeticExpr.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := (recoveredStack1) typeOrNil.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := (recoveredStack0) createOpType: (recoveredStack1) goalInterval: (recoveredStack2).
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            (recoveredStack0) assertGoalInterval.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2033b824; bytecode file offset 0xc380f8"
!SGIlAbstractIdentifier methodsFor: 'recovered'!
ileMayAccessSameMemory: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) isIleReference.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) isIleReference.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := true.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := (recoveredStack0) isIleModelIdentifier.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 22] ifFalse: [recoveredPC := 26].
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := (recoveredStack0) hasIleAlternativelyTheSameValueAs: (recoveredStack1).
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := (recoveredStack0) isIleDirectAccessExpr.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 32] ifFalse: [recoveredPC := 38].
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := (recoveredStack1) asIleVarDeclModelIdentifier.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := (recoveredStack0) hasIleAlternativelyTheSameValueAs: (recoveredStack1).
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack0 := (recoveredStack0) isIleIndexedExpr.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 50] ifFalse: [recoveredPC := 44].
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack0 := (recoveredStack0) isIleFieldAccessExpr.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 50] ifFalse: [recoveredPC := 52].
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack0 := (recoveredStack0) isIleAbstractMethodCall.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 58] ifFalse: [recoveredPC := 60].
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack0 := true.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

