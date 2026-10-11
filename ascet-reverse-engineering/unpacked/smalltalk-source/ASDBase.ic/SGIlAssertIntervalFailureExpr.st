"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x200561c0; bytecode file offset 0x952a9c"
!SGIlAssertIntervalFailureExpr methodsFor: 'recovered'!
ileAcceptNodeVisitor: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) assertIntervalFailureExpr: (self).
    ^recoveredValue1
! !

"ASDBase.ic method 0x2006bad0; bytecode file offset 0x96873c"
!SGIlAssertIntervalFailureExpr methodsFor: 'recovered'!
assertInterval
    | recoveredValue0 |
    recoveredValue0 := assertInterval.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006c51c; bytecode file offset 0x9692b0"
!SGIlAssertIntervalFailureExpr methodsFor: 'recovered'!
msgNumber
    | recoveredValue0 |
    recoveredValue0 := msgNumber.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2007c474; bytecode file offset 0x97c330"
!SGIlAssertIntervalFailureExpr methodsFor: 'recovered'!
isIleArithmeticExpr
    ^false
! !

"ASDBase.ic method 0x20158604; bytecode file offset 0xa54ec0"
!SGIlAssertIntervalFailureExpr methodsFor: 'recovered'!
initializeSource: recoveredArg1 type: recoveredArg2 expr: recoveredArg3 interval: recoveredArg4 msgNumber: recoveredArg5
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := recoveredArg3.
    super initializeSource: (recoveredValue0) type: (recoveredValue1) expr: (recoveredValue2).
    recoveredValue3 := recoveredArg4.
    assertInterval := recoveredValue3.
    recoveredValue4 := recoveredArg5.
    msgNumber := recoveredValue4.
    ^self
! !

"ASDBase.ic method 0x2021d2fc; bytecode file offset 0xb19bf0"
!SGIlAssertIntervalFailureExpr methodsFor: 'recovered'!
createOpExpr: recoveredArg1 type: recoveredArg2
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredPC recoveredStep |
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
            recoveredStack2 := (recoveredStack2) expr.
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
            recoveredStack4 := self.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack4 := (recoveredStack4) assertInterval.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack5 := self.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack5 := (recoveredStack5) msgNumber.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack0 := (recoveredStack0) createSource: (recoveredStack1) type: (recoveredStack2) expr: (recoveredStack3) interval: (recoveredStack4) msgNumber: (recoveredStack5).
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

