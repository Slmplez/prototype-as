"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20038b38; bytecode file offset 0x935c54"
!SGIlAnd methodsFor: 'recovered'!
isIleSameOperator: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) isIleAndExpr.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20055e30; bytecode file offset 0x952a9c"
!SGIlAnd methodsFor: 'recovered'!
ileAcceptNodeVisitor: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) andExpr: (self).
    ^recoveredValue1
! !

"ASDBase.ic method 0x20075f8c; bytecode file offset 0x9757c8"
!SGIlAnd methodsFor: 'recovered'!
isIleCommutativeOp
    ^true
! !

"ASDBase.ic method 0x2007797c; bytecode file offset 0x9757c8"
!SGIlAnd methodsFor: 'recovered'!
isIleAndExpr
    ^true
! !

"ASDBase.ic method 0x2008109c; bytecode file offset 0x97d958"
!SGIlAnd methodsFor: 'recovered'!
precedenceLevel
    ^110
! !

"ASDBase.ic method 0x202af9e8; bytecode file offset 0xbac2cc"
!SGIlAnd methodsFor: 'recovered'!
ileOptExpressionSimplificationRightAndLeafDo: recoveredArg1 onSuccess: recoveredArg2
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) rightExpr.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack2 := [:recoveredBlock8Arg1 | 
    | recoveredBlock8Value0 recoveredBlock8Value1 recoveredBlock8Value2 recoveredBlock8Value3 recoveredBlock8Value4 recoveredBlock8Value5 recoveredBlock8Value6 |
    recoveredBlock8Value0 := (self) leftExpr.
    recoveredBlock8Value1 := recoveredBlock8Arg1.
    recoveredBlock8Value2 := (recoveredBlock8Value0) andExpr: (recoveredBlock8Value1).
    recoveredLocal1 := recoveredBlock8Value2.
    recoveredBlock8Value3 := recoveredArg2.
    recoveredBlock8Value4 := recoveredLocal1.
    recoveredBlock8Value5 := (recoveredBlock8Value3) value: (recoveredBlock8Value4).
    recoveredBlock8Value6 := recoveredBlock8Value5.
    recoveredLocal1 := recoveredBlock8Value6.
    recoveredBlock8Value5
].
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            (recoveredStack0) ileOptExpressionSimplificationRightAndLeafDo: (recoveredStack1) onSuccess: (recoveredStack2).
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 44] ifFalse: [recoveredPC := 40].
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x202cb0d8; bytecode file offset 0xbc79a0"
!SGIlAnd methodsFor: 'recovered'!
ileOptExpressionSimplificationLeftAndLeafDo: recoveredArg1 onSuccess: recoveredArg2
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) leftExpr.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack2 := [:recoveredBlock8Arg1 | 
    | recoveredBlock8Value0 recoveredBlock8Value1 recoveredBlock8Value2 recoveredBlock8Value3 recoveredBlock8Value4 recoveredBlock8Value5 recoveredBlock8Value6 |
    recoveredBlock8Value0 := recoveredBlock8Arg1.
    recoveredBlock8Value1 := (self) rightExpr.
    recoveredBlock8Value2 := (recoveredBlock8Value0) andExpr: (recoveredBlock8Value1).
    recoveredLocal1 := recoveredBlock8Value2.
    recoveredBlock8Value3 := recoveredArg2.
    recoveredBlock8Value4 := recoveredLocal1.
    recoveredBlock8Value5 := (recoveredBlock8Value3) value: (recoveredBlock8Value4).
    recoveredBlock8Value6 := recoveredBlock8Value5.
    recoveredLocal1 := recoveredBlock8Value6.
    recoveredBlock8Value5
].
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            (recoveredStack0) ileOptExpressionSimplificationLeftAndLeafDo: (recoveredStack1) onSuccess: (recoveredStack2).
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 46] ifFalse: [recoveredPC := 42].
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20419e48; bytecode file offset 0xd16734"
!SGIlAnd methodsFor: 'recovered'!
ileOptExpressionSimplificationNoAndChildrenReverseDo: recoveredArg1 onSuccess: recoveredArg2
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) rightExpr.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack2 := [:recoveredBlock8Arg1 | 
    | recoveredBlock8Value0 recoveredBlock8Value1 recoveredBlock8Value2 recoveredBlock8Value3 recoveredBlock8Value4 recoveredBlock8Value5 recoveredBlock8Value6 |
    recoveredBlock8Value0 := (self) leftExpr.
    recoveredBlock8Value1 := recoveredBlock8Arg1.
    recoveredBlock8Value2 := (recoveredBlock8Value0) andExpr: (recoveredBlock8Value1).
    recoveredLocal1 := recoveredBlock8Value2.
    recoveredBlock8Value3 := recoveredArg2.
    recoveredBlock8Value4 := recoveredLocal1.
    recoveredBlock8Value5 := (recoveredBlock8Value3) value: (recoveredBlock8Value4).
    recoveredBlock8Value6 := recoveredBlock8Value5.
    recoveredLocal1 := recoveredBlock8Value6.
    recoveredBlock8Value5
].
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            (recoveredStack0) ileOptExpressionSimplificationNoAndChildrenReverseDo: (recoveredStack1) onSuccess: (recoveredStack2).
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 44] ifFalse: [recoveredPC := 40].
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack0 := (recoveredStack0) leftExpr.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack2 := [:recoveredBlock49Arg1 | 
    | recoveredBlock49Value0 recoveredBlock49Value1 recoveredBlock49Value2 recoveredBlock49Value3 recoveredBlock49Value4 recoveredBlock49Value5 recoveredBlock49Value6 |
    recoveredBlock49Value0 := recoveredBlock49Arg1.
    recoveredBlock49Value1 := (self) rightExpr.
    recoveredBlock49Value2 := (recoveredBlock49Value0) andExpr: (recoveredBlock49Value1).
    recoveredLocal1 := recoveredBlock49Value2.
    recoveredBlock49Value3 := recoveredArg2.
    recoveredBlock49Value4 := recoveredLocal1.
    recoveredBlock49Value5 := (recoveredBlock49Value3) value: (recoveredBlock49Value4).
    recoveredBlock49Value6 := recoveredBlock49Value5.
    recoveredLocal1 := recoveredBlock49Value6.
    recoveredBlock49Value5
].
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            (recoveredStack0) ileOptExpressionSimplificationNoAndChildrenReverseDo: (recoveredStack1) onSuccess: (recoveredStack2).
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 88] ifFalse: [recoveredPC := 84].
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredStack0 := super ileOptExpressionSimplificationNoAndChildrenReverseDo: (recoveredStack1) onSuccess: (recoveredStack2).
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20419f0c; bytecode file offset 0xd167d8"
!SGIlAnd methodsFor: 'recovered'!
ileOptExpressionSimplificationNoAndChildrenDo: recoveredArg1 onSuccess: recoveredArg2
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) leftExpr.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack2 := [:recoveredBlock8Arg1 | 
    | recoveredBlock8Value0 recoveredBlock8Value1 recoveredBlock8Value2 recoveredBlock8Value3 recoveredBlock8Value4 recoveredBlock8Value5 recoveredBlock8Value6 |
    recoveredBlock8Value0 := recoveredBlock8Arg1.
    recoveredBlock8Value1 := (self) rightExpr.
    recoveredBlock8Value2 := (recoveredBlock8Value0) andExpr: (recoveredBlock8Value1).
    recoveredLocal1 := recoveredBlock8Value2.
    recoveredBlock8Value3 := recoveredArg2.
    recoveredBlock8Value4 := recoveredLocal1.
    recoveredBlock8Value5 := (recoveredBlock8Value3) value: (recoveredBlock8Value4).
    recoveredBlock8Value6 := recoveredBlock8Value5.
    recoveredLocal1 := recoveredBlock8Value6.
    recoveredBlock8Value5
].
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            (recoveredStack0) ileOptExpressionSimplificationNoAndChildrenDo: (recoveredStack1) onSuccess: (recoveredStack2).
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 46] ifFalse: [recoveredPC := 42].
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack0 := (recoveredStack0) rightExpr.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack2 := [:recoveredBlock51Arg1 | 
    | recoveredBlock51Value0 recoveredBlock51Value1 recoveredBlock51Value2 recoveredBlock51Value3 recoveredBlock51Value4 recoveredBlock51Value5 recoveredBlock51Value6 |
    recoveredBlock51Value0 := (self) leftExpr.
    recoveredBlock51Value1 := recoveredBlock51Arg1.
    recoveredBlock51Value2 := (recoveredBlock51Value0) andExpr: (recoveredBlock51Value1).
    recoveredLocal1 := recoveredBlock51Value2.
    recoveredBlock51Value3 := recoveredArg2.
    recoveredBlock51Value4 := recoveredLocal1.
    recoveredBlock51Value5 := (recoveredBlock51Value3) value: (recoveredBlock51Value4).
    recoveredBlock51Value6 := recoveredBlock51Value5.
    recoveredLocal1 := recoveredBlock51Value6.
    recoveredBlock51Value5
].
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            (recoveredStack0) ileOptExpressionSimplificationNoAndChildrenDo: (recoveredStack1) onSuccess: (recoveredStack2).
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 88] ifFalse: [recoveredPC := 84].
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredStack0 := super ileOptExpressionSimplificationNoAndChildrenDo: (recoveredStack1) onSuccess: (recoveredStack2).
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

