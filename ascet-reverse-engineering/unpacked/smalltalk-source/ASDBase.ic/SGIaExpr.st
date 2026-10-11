"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2002cb34; bytecode file offset 0x934580"
!SGIaExpr methodsFor: 'recovered'!
isFloatTypedExpr
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) ileExpr.
    recoveredValue1 := (recoveredValue0) isIleFloatTypedExpr.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20031f04; bytecode file offset 0x934580"
!SGIaExpr methodsFor: 'recovered'!
getPropagatedImplType
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) ileExpr.
    recoveredValue1 := (recoveredValue0) getIlePropagatedImplType.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20037b94; bytecode file offset 0x934580"
!SGIaExpr methodsFor: 'recovered'!
isMoebiusFixedPointTypeExpr
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) ileExpr.
    recoveredValue1 := (recoveredValue0) isIleMoebiusFixedPointTypeExpr.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2003eb98; bytecode file offset 0x93bf94"
!SGIaExpr methodsFor: 'recovered'!
currentIaBuilder
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := SGIaBuilder.
    recoveredValue1 := (recoveredValue0) current.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2003edc8; bytecode file offset 0x93bf94"
!SGIaExpr methodsFor: 'recovered'!
ileBuilder
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := SGIleBuilder.
    recoveredValue1 := (recoveredValue0) current.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2003f398; bytecode file offset 0x93bf94"
!SGIaExpr methodsFor: 'recovered'!
adaptIntervalAttributes
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := SGCgAdaptIntervalAttributes.
    recoveredValue1 := (recoveredValue0) create.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20051330; bytecode file offset 0x94f0e0"
!SGIaExpr methodsFor: 'recovered'!
formulaName
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) ileExpr.
    recoveredValue1 := (recoveredValue0) type.
    recoveredValue2 := (recoveredValue1) formulaName.
    ^recoveredValue2
! !

"ASDBase.ic method 0x20052564; bytecode file offset 0x94f0e0"
!SGIaExpr methodsFor: 'recovered'!
getImplType
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) ileExpr.
    recoveredValue1 := (recoveredValue0) type.
    recoveredValue2 := (recoveredValue1) getImplType.
    ^recoveredValue2
! !

"ASDBase.ic method 0x2006696c; bytecode file offset 0x963428"
!SGIaExpr methodsFor: 'recovered'!
ileExpr
    | recoveredValue0 |
    recoveredValue0 := ileExpr.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2007f9ac; bytecode file offset 0x97c330"
!SGIaExpr methodsFor: 'recovered'!
isIaScalarTypedExpr
    ^false
! !

"ASDBase.ic method 0x20099460; bytecode file offset 0x995e2c"
!SGIaExpr methodsFor: 'recovered'!
rem: recoveredArg1 resultInterval: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := (recoveredValue0) remFromExpr: (self) resultInterval: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x2009f680; bytecode file offset 0x99c9e0"
!SGIaExpr methodsFor: 'recovered'!
asIleReferencedExpr
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) ileExpr.
    recoveredValue1 := (recoveredValue0) asIleReferencedExpr.
    (self) ileExpr: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x200bdefc; bytecode file offset 0x9bb178"
!SGIaExpr methodsFor: 'recovered'!
ileExpr: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    ileExpr := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c9500; bytecode file offset 0x9c5efc"
!SGIaExpr methodsFor: 'recovered'!
remFromExpr: recoveredArg1 resultInterval: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) currentIaBuilder.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := (recoveredValue0) createRemLeftExpr: (recoveredValue1) rightExpr: (self) resultInterval: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x200e6f64; bytecode file offset 0x9e3828"
!SGIaExpr methodsFor: 'recovered'!
asReciprocalExpr: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := SGIaScalarTypedExpr.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) forImplementation: (recoveredValue1).
    recoveredValue3 := recoveredValue2.
    recoveredValue4 := (self) ileExpr.
    (recoveredValue3) ileExpr: (recoveredValue4).
    ^recoveredValue2
! !

"ASDBase.ic method 0x20153e10; bytecode file offset 0xa506f4"
!SGIaExpr methodsFor: 'recovered'!
limitServiceExprToGoalInterval: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
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
            recoveredStack2 := (recoveredStack2) ileExpr.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := (recoveredStack2) ileBasicInterval.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) includes: (recoveredStack2).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 19] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := (recoveredStack2) ileExpr.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := (recoveredStack2) ileLimitToGoalInterval: (recoveredStack3).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack1) ileExpr: (recoveredStack2).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201769a0; bytecode file offset 0xa7327c"
!SGIaExpr methodsFor: 'recovered'!
printOn: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := recoveredArg1.
    super printOn: (recoveredValue0).
    recoveredValue1 := recoveredArg1.
    (recoveredValue1) cr.
    recoveredValue2 := (self) ileExpr.
    recoveredValue3 := recoveredArg1.
    (recoveredValue2) printOn: (recoveredValue3).
    recoveredValue4 := recoveredArg1.
    (recoveredValue4) cr.
    ^self
! !

