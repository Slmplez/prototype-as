"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x200560e8; bytecode file offset 0x952a9c"
!SGMdBinaryLogicExpr methodsFor: 'recovered'!
mdlAcceptNodeVisitor: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) binaryLogicExpr: (self).
    ^recoveredValue1
! !

"ASDBase.ic method 0x2006c124; bytecode file offset 0x9692b0"
!SGMdBinaryLogicExpr methodsFor: 'recovered'!
leftChild
    | recoveredValue0 |
    recoveredValue0 := leftChild.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006d5c4; bytecode file offset 0x96a390"
!SGMdBinaryLogicExpr methodsFor: 'recovered'!
rightChild
    | recoveredValue0 |
    recoveredValue0 := rightChild.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200c2d6c; bytecode file offset 0x9bfde0"
!SGMdBinaryLogicExpr methodsFor: 'recovered'!
leftChild: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    leftChild := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c3fc4; bytecode file offset 0x9c0bf0"
!SGMdBinaryLogicExpr methodsFor: 'recovered'!
rightChild: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    rightChild := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200cc2f4; bytecode file offset 0x9c8f90"
!SGMdBinaryLogicExpr methodsFor: 'recovered'!
children
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := Array.
    recoveredValue1 := (self) rightChild.
    recoveredValue2 := (self) leftChild.
    recoveredValue3 := (recoveredValue0) with: (recoveredValue1) with: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x2013cedc; bytecode file offset 0xa397ec"
!SGMdBinaryLogicExpr methodsFor: 'recovered'!
isMdlNonModifiableExpr
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := super isMdlNonModifiableExpr.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) rightChild.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := (recoveredStack1) isMdlNonModifiableExpr.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2013d520; bytecode file offset 0xa39df4"
!SGMdBinaryLogicExpr methodsFor: 'recovered'!
isMdlSideEffectExpr
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := super isMdlSideEffectExpr.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) rightChild.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := (recoveredStack1) isMdlSideEffectExpr.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x20406aec; bytecode file offset 0xd033e4"
!SGMdBinaryLogicExpr methodsFor: 'recovered'!
printOn: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredStack7 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack2 := $(.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack1) nextPut: (recoveredStack2).
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := (recoveredStack0) leftChild.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack0) printOn: (recoveredStack1).
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := [
    | recoveredBlock15Value0 |
    recoveredBlock15Value0 := (self) operator.
    recoveredBlock15Value0
].
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack2 := 'and'.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack3 := [
    ' && '
].
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack4 := 'or'.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack5 := [
    ' || '
].
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack6 := [
    | recoveredBlock45Stack0 recoveredBlock45Stack1 recoveredBlock45Stack2 recoveredBlock45Stack3 recoveredBlock45PC recoveredBlock45Step recoveredBlock45Done recoveredBlock45Result |
    recoveredBlock45Stack0 := self.
    recoveredBlock45PC := 52.
    recoveredBlock45Done := false.
    [recoveredBlock45Done not] whileTrue: [
        recoveredBlock45Step := recoveredBlock45PC.
        recoveredBlock45Step = 52 ifTrue: [
            recoveredBlock45Stack1 := [
    false
].
            recoveredBlock45PC := 54.
        ].
        recoveredBlock45Step = 54 ifTrue: [
            recoveredBlock45PC := 60.
        ].
        recoveredBlock45Step = 60 ifTrue: [
            recoveredBlock45Stack2 := [
    | recoveredBlock45Block60Value0 recoveredBlock45Block60Value1 |
    recoveredBlock45Block60Value0 := (self) operator.
    recoveredBlock45Block60Value1 := ('Unknown operation ') , (recoveredBlock45Block60Value0).
    recoveredBlock45Block60Value1
].
            recoveredBlock45PC := 73.
        ].
        recoveredBlock45Step = 73 ifTrue: [
            (recoveredBlock45Stack0) ileAssert: (recoveredBlock45Stack1) message: (recoveredBlock45Stack2).
            recoveredBlock45PC := 75.
        ].
        recoveredBlock45Step = 75 ifTrue: [
            recoveredBlock45Stack0 := nil.
            recoveredBlock45PC := 76.
        ].
        recoveredBlock45Step = 76 ifTrue: [
            recoveredBlock45Result := recoveredBlock45Stack0.
            recoveredBlock45Done := true.
        ].
    ].
    recoveredBlock45Result
].
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack1 := (recoveredStack1) case: (recoveredStack2) do: (recoveredStack3) case: (recoveredStack4) do: (recoveredStack5) others: (recoveredStack6).
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            (recoveredStack0) nextPutAll: (recoveredStack1).
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack0 := (recoveredStack0) rightChild.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            (recoveredStack0) printOn: (recoveredStack1).
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack1 := $).
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            (recoveredStack0) nextPut: (recoveredStack1).
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

