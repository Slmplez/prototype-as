"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20006de8; bytecode file offset 0x908be4"
!SGIlServiceExpr methodsFor: 'recovered'!
serviceSpecificationKey
    | recoveredValue0 |
    recoveredValue0 := (self) serviceFullKey.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2000ad3c; bytecode file offset 0x908be4"
!SGIlServiceExpr methodsFor: 'recovered'!
precedenceLevel
    | recoveredValue0 |
    recoveredValue0 := (self) precedenceLevelOfIdentifier.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20016f70; bytecode file offset 0x92209c"
!SGIlServiceExpr methodsFor: 'recovered'!
ileRoundedName
    ^'Rounded'
! !

"ASDBase.ic method 0x20031b44; bytecode file offset 0x934580"
!SGIlServiceExpr methodsFor: 'recovered'!
serviceTable
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) generator.
    recoveredValue1 := (recoveredValue0) serviceTable.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2003b924; bytecode file offset 0x938608"
!SGIlServiceExpr methodsFor: 'recovered'!
changeIleType: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) createOpType: (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x2004e87c; bytecode file offset 0x94d048"
!SGIlServiceExpr methodsFor: 'recovered'!
serviceFullKey
    (self) subclassResponsibility.
    ^self
! !

"ASDBase.ic method 0x20050448; bytecode file offset 0x94d048"
!SGIlServiceExpr methodsFor: 'recovered'!
calculateInterval
    (self) subclassResponsibility.
    ^self
! !

"ASDBase.ic method 0x20050c30; bytecode file offset 0x94d4ec"
!SGIlServiceExpr methodsFor: 'recovered'!
interval
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) ileBuilder.
    recoveredValue1 := (recoveredValue0) getIntervalFromExpr: (self).
    ^recoveredValue1
! !

"ASDBase.ic method 0x20055a34; bytecode file offset 0x952a9c"
!SGIlServiceExpr methodsFor: 'recovered'!
ileAcceptNodeVisitor: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) serviceExpr: (self).
    ^recoveredValue1
! !

"ASDBase.ic method 0x2006b570; bytecode file offset 0x96873c"
!SGIlServiceExpr methodsFor: 'recovered'!
goalInterval
    | recoveredValue0 |
    recoveredValue0 := goalInterval.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006c284; bytecode file offset 0x9692b0"
!SGIlServiceExpr methodsFor: 'recovered'!
ileBasicIntervalOrNil
    | recoveredValue0 |
    recoveredValue0 := interval.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20077e0c; bytecode file offset 0x9757c8"
!SGIlServiceExpr methodsFor: 'recovered'!
isIleArithmeticExpr
    ^true
! !

"ASDBase.ic method 0x2007849c; bytecode file offset 0x9757c8"
!SGIlServiceExpr methodsFor: 'recovered'!
isIleServiceExpr
    ^true
! !

"ASDBase.ic method 0x2007a014; bytecode file offset 0x97c330"
!SGIlServiceExpr methodsFor: 'recovered'!
isIleFloatTypedExpr
    ^false
! !

"ASDBase.ic method 0x2007a7b4; bytecode file offset 0x97c330"
!SGIlServiceExpr methodsFor: 'recovered'!
isIleConstantExpr
    ^false
! !

"ASDBase.ic method 0x2007c6bc; bytecode file offset 0x97c330"
!SGIlServiceExpr methodsFor: 'recovered'!
isMISRAComplexExpr
    ^false
! !

"ASDBase.ic method 0x2007f7dc; bytecode file offset 0x97c330"
!SGIlServiceExpr methodsFor: 'recovered'!
hasIleFloatConstant
    ^false
! !

"ASDBase.ic method 0x200a87ec; bytecode file offset 0x9a50f8"
!SGIlServiceExpr methodsFor: 'recovered'!
interval: recoveredArg1
    | recoveredValue0 |
    (self) assertSetterShouldNotBeUsed.
    recoveredValue0 := recoveredArg1.
    interval := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200aae78; bytecode file offset 0x9a7774"
!SGIlServiceExpr methodsFor: 'recovered'!
createOpExpr: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := (self) expander.
    (recoveredValue0) ileFatalExpect: ('Cannot create a service expression').
    ^self
! !

"ASDBase.ic method 0x201316dc; bytecode file offset 0xa2dfa4"
!SGIlServiceExpr methodsFor: 'recovered'!
addServiceArgs: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredValue0.
    recoveredValue2 := (self) serviceFullKey.
    (recoveredValue1) currentServiceKey: (recoveredValue2).
    recoveredValue3 := (self) source.
    (recoveredValue0) errorSource: (recoveredValue3).
    recoveredValue4 := recoveredArg1.
    recoveredValue5 := (recoveredValue4) currentArguments.
    ^recoveredValue5
! !

"ASDBase.ic method 0x2013acc8; bytecode file offset 0xa375b4"
!SGIlServiceExpr methodsFor: 'recovered'!
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

"ASDBase.ic method 0x201586d0; bytecode file offset 0xa54f8c"
!SGIlServiceExpr methodsFor: 'recovered'!
initializeSource: recoveredArg1 type: recoveredArg2 leftExpr: recoveredArg3 interval: recoveredArg4 goalInterval: recoveredArg5
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := recoveredArg4.
    interval := recoveredValue0.
    recoveredValue1 := recoveredArg5.
    goalInterval := recoveredValue1.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := recoveredArg2.
    recoveredValue4 := recoveredArg3.
    super initializeSource: (recoveredValue2) type: (recoveredValue3) leftExpr: (recoveredValue4).
    ^self
! !

"ASDBase.ic method 0x20173548; bytecode file offset 0xa6fe08"
!SGIlServiceExpr methodsFor: 'recovered'!
ileBasicInterval
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := interval.
    recoveredValue1 := [
    | recoveredBlock6Value0 |
    recoveredBlock6Value0 := super ileBasicInterval.
    ^recoveredBlock6Value0
].
    (recoveredValue0) ifNil: (recoveredValue1).
    recoveredValue2 := interval.
    ^recoveredValue2
! !

"ASDBase.ic method 0x201f2b94; bytecode file offset 0xaef458"
!SGIlServiceExpr methodsFor: 'recovered'!
initialize
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            super initialize.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := interval.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) calculateInterval.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            interval := recoveredStack0.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := interval.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            (recoveredStack0) markReadOnly: (recoveredStack1).
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := goalInterval.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            (recoveredStack0) markReadOnly: (recoveredStack1).
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

