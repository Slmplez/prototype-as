"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20000138; bytecode file offset 0x8ffcfc"
!SGIlAbstractConstant methodsFor: 'recovered'!
asIleSideEffectFreeExpr
    ^self
! !

"ASDBase.ic method 0x20000900; bytecode file offset 0x8ffcfc"
!SGIlAbstractConstant methodsFor: 'recovered'!
ileOptimizeExprByTrueFalseDistinction
    ^self
! !

"ASDBase.ic method 0x20004a98; bytecode file offset 0x90206c"
!SGIlAbstractConstant methodsFor: 'recovered'!
createOpGoalInterval: recoveredArg1
    ^self
! !

"ASDBase.ic method 0x20006b60; bytecode file offset 0x908be4"
!SGIlAbstractConstant methodsFor: 'recovered'!
ileNativeInitValue
    | recoveredValue0 |
    recoveredValue0 := (self) value.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20008120; bytecode file offset 0x908be4"
!SGIlAbstractConstant methodsFor: 'recovered'!
precedenceLevel
    | recoveredValue0 |
    recoveredValue0 := (self) precedenceLevelOfIdentifier.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2000cb0c; bytecode file offset 0x909658"
!SGIlAbstractConstant methodsFor: 'recovered'!
ileDependsOnAccessExpr: recoveredArg1
    ^false
! !

"ASDBase.ic method 0x20031394; bytecode file offset 0x934580"
!SGIlAbstractConstant methodsFor: 'recovered'!
isIleInfinite
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) value.
    recoveredValue1 := (recoveredValue0) isInfinite.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20033a94; bytecode file offset 0x934580"
!SGIlAbstractConstant methodsFor: 'recovered'!
getInterval
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) value.
    recoveredValue1 := (recoveredValue0) asInterval.
    ^recoveredValue1
! !

"ASDBase.ic method 0x200374b4; bytecode file offset 0x934580"
!SGIlAbstractConstant methodsFor: 'recovered'!
interval
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) value.
    recoveredValue1 := (recoveredValue0) asInterval.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20055e3c; bytecode file offset 0x952a9c"
!SGIlAbstractConstant methodsFor: 'recovered'!
ileAcceptNodeVisitor: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) abstractConstant: (self).
    ^recoveredValue1
! !

"ASDBase.ic method 0x2006a148; bytecode file offset 0x966bdc"
!SGIlAbstractConstant methodsFor: 'recovered'!
value
    | recoveredValue0 |
    recoveredValue0 := value.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20074be4; bytecode file offset 0x9757c8"
!SGIlAbstractConstant methodsFor: 'recovered'!
isIleConstant
    ^true
! !

"ASDBase.ic method 0x20074f0c; bytecode file offset 0x9757c8"
!SGIlAbstractConstant methodsFor: 'recovered'!
isIleMISRAConstant
    ^true
! !

"ASDBase.ic method 0x200763ac; bytecode file offset 0x9757c8"
!SGIlAbstractConstant methodsFor: 'recovered'!
isIleCompileTimeConstantExpr
    ^true
! !

"ASDBase.ic method 0x20077cec; bytecode file offset 0x9757c8"
!SGIlAbstractConstant methodsFor: 'recovered'!
hasIleConstantChildrenOnly
    ^true
! !

"ASDBase.ic method 0x20079b5c; bytecode file offset 0x97c330"
!SGIlAbstractConstant methodsFor: 'recovered'!
isIlePrepareCastDone
    ^false
! !

"ASDBase.ic method 0x20085ce8; bytecode file offset 0x982678"
!SGIlAbstractConstant methodsFor: 'recovered'!
isIleIdenticalConstant: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) value.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue1) value.
    recoveredValue3 := (recoveredValue0) = (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x200a85f4; bytecode file offset 0x9a4f24"
!SGIlAbstractConstant methodsFor: 'recovered'!
value: recoveredArg1
    | recoveredValue0 |
    (self) assertSetterShouldNotBeUsed.
    recoveredValue0 := recoveredArg1.
    value := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c9640; bytecode file offset 0x9c5efc"
!SGIlAbstractConstant methodsFor: 'recovered'!
maxWithConstant: recoveredArg1 type: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) ileBuilder.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := (recoveredValue0) maxLeftConst: (recoveredValue1) rightConst: (self) type: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x200cd110; bytecode file offset 0x9c99d4"
!SGIlAbstractConstant methodsFor: 'recovered'!
ileWrapperHash
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := SGIlAbstractConstant.
    recoveredValue1 := (recoveredValue0) hash.
    recoveredValue2 := (self) value.
    recoveredValue3 := (recoveredValue2) asFloat.
    recoveredValue4 := (recoveredValue3) hash.
    recoveredValue5 := (recoveredValue1) + (recoveredValue4).
    ^recoveredValue5
! !

"ASDBase.ic method 0x20101c60; bytecode file offset 0x9fe54c"
!SGIlAbstractConstant methodsFor: 'recovered'!
initializeSource: recoveredArg1 type: recoveredArg2 value: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg3.
    value := recoveredValue0.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    super initializeSource: (recoveredValue1) type: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x2016f364; bytecode file offset 0xa6bc24"
!SGIlAbstractConstant methodsFor: 'recovered'!
hash
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := hash.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 19] ifFalse: [recoveredPC := 10].
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
            recoveredStack1 := (recoveredStack1) hash.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := (recoveredStack2) value.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := (recoveredStack2) hash.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (recoveredStack2).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            hash := recoveredStack1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := hash.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2023ec40; bytecode file offset 0xb3b518"
!SGIlAbstractConstant methodsFor: 'recovered'!
printOn: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := recoveredArg1.
    super printOn: (recoveredValue0).
    recoveredValue1 := recoveredArg1.
    (self) printIntervalOn: (recoveredValue1).
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := recoveredValue2.
    (recoveredValue3) cr.
    recoveredValue4 := recoveredValue2.
    (recoveredValue4) nextPutAll: (' (').
    recoveredValue5 := recoveredValue2.
    recoveredValue6 := (self) value.
    recoveredValue7 := (recoveredValue6) asString.
    (recoveredValue5) nextPutAll: (recoveredValue7).
    (recoveredValue2) nextPutAll: (')').
    ^self
! !

