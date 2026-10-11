"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20005328; bytecode file offset 0x90206c"
!SGIlNot methodsFor: 'recovered'!
createOpGoalInterval: recoveredArg1
    ^self
! !

"ASDBase.ic method 0x2000ab38; bytecode file offset 0x908be4"
!SGIlNot methodsFor: 'recovered'!
ileLogicalComplement
    | recoveredValue0 |
    recoveredValue0 := (self) leftExpr.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2002d8b4; bytecode file offset 0x934580"
!SGIlNot methodsFor: 'recovered'!
ileWrapperHash
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) leftExpr.
    recoveredValue1 := (recoveredValue0) ileWrapperHash.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20054dc8; bytecode file offset 0x952a9c"
!SGIlNot methodsFor: 'recovered'!
ileAcceptNodeVisitor: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) notExpr: (self).
    ^recoveredValue1
! !

"ASDBase.ic method 0x20075074; bytecode file offset 0x9757c8"
!SGIlNot methodsFor: 'recovered'!
isIleBooleanTypedExpr
    ^true
! !

"ASDBase.ic method 0x2007872c; bytecode file offset 0x9757c8"
!SGIlNot methodsFor: 'recovered'!
isIleNotExpr
    ^true
! !

"ASDBase.ic method 0x200787e4; bytecode file offset 0x9757c8"
!SGIlNot methodsFor: 'recovered'!
isIleLogicalComplementable
    ^true
! !

"ASDBase.ic method 0x20079bdc; bytecode file offset 0x97c330"
!SGIlNot methodsFor: 'recovered'!
isIleArithmeticExpr
    ^false
! !

"ASDBase.ic method 0x20097784; bytecode file offset 0x995850"
!SGIlNot methodsFor: 'recovered'!
collectConditionObjects: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) leftExpr.
    recoveredValue1 := recoveredArg1.
    (recoveredValue0) collectConditionObjects: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x200ae608; bytecode file offset 0x9ab034"
!SGIlNot methodsFor: 'recovered'!
assertCondContext: recoveredArg1 message: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) leftExpr.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    (recoveredValue0) assertCondContext: (recoveredValue1) message: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x20177adc; bytecode file offset 0xa7439c"
!SGIlNot methodsFor: 'recovered'!
createOpLeftExpr: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) ileBuilder.
    recoveredValue1 := (self) source.
    recoveredValue2 := [
    | recoveredBlock7Value0 recoveredBlock7Value1 |
    recoveredBlock7Value0 := recoveredArg1.
    recoveredBlock7Value1 := (recoveredBlock7Value0) not.
    recoveredBlock7Value1
].
    recoveredValue3 := (recoveredValue0) useSource: (recoveredValue1) for: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x201cea6c; bytecode file offset 0xacb334"
!SGIlNot methodsFor: 'recovered'!
createOpExpr: recoveredArg1 type: recoveredArg2
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
            recoveredStack2 := (recoveredStack2) leftExpr.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack1 ~~ recoveredStack2) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := (recoveredStack2) typeOrNil.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack1 ~~ recoveredStack2) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := (recoveredStack0) class.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := (recoveredStack1) source.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := (recoveredStack0) createSource: (recoveredStack1) type: (recoveredStack2) leftExpr: (recoveredStack3).
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

