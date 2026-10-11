"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x200535f8; bytecode file offset 0x9505d0"
!SGAbstractDataFlowState methodsFor: 'recovered'!
merge: recoveredArg1
    (self) subclassResponsibility.
    ^self
! !

"ASDBase.ic method 0x20053a24; bytecode file offset 0x9505d0"
!SGAbstractDataFlowState methodsFor: 'recovered'!
mergeUnion: recoveredArg1
    (self) subclassResponsibility.
    ^self
! !

"ASDBase.ic method 0x20059cbc; bytecode file offset 0x9566ac"
!SGAbstractDataFlowState methodsFor: 'recovered'!
merge: recoveredArg1 condition: recoveredArg2
    (self) subclassResponsibility.
    ^self
! !

"ASDBase.ic method 0x20065ccc; bytecode file offset 0x963428"
!SGAbstractDataFlowState methodsFor: 'recovered'!
currentCondition
    | recoveredValue0 |
    recoveredValue0 := currentCondition.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20067964; bytecode file offset 0x9646f8"
!SGAbstractDataFlowState methodsFor: 'recovered'!
literalTrue
    | recoveredValue0 |
    recoveredValue0 := literalTrue.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006801c; bytecode file offset 0x965b90"
!SGAbstractDataFlowState methodsFor: 'recovered'!
literalFalse
    | recoveredValue0 |
    recoveredValue0 := literalFalse.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200bd964; bytecode file offset 0x9bb178"
!SGAbstractDataFlowState methodsFor: 'recovered'!
currentCondition: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    currentCondition := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200bf5d8; bytecode file offset 0x9bc0b4"
!SGAbstractDataFlowState methodsFor: 'recovered'!
literalTrue: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    literalTrue := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c06a4; bytecode file offset 0x9bd228"
!SGAbstractDataFlowState methodsFor: 'recovered'!
literalFalse: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    literalFalse := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x201a29b8; bytecode file offset 0xa9f290"
!SGAbstractDataFlowState methodsFor: 'recovered'!
copy
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 |
    recoveredValue0 := (self) class.
    recoveredValue1 := (recoveredValue0) create.
    recoveredValue2 := recoveredValue1.
    recoveredValue3 := (self) currentCondition.
    recoveredValue4 := (recoveredValue3) asIleCopy.
    (recoveredValue2) currentCondition: (recoveredValue4).
    recoveredValue5 := recoveredValue1.
    recoveredValue6 := (self) literalTrue.
    (recoveredValue5) literalTrue: (recoveredValue6).
    recoveredValue7 := recoveredValue1.
    recoveredValue8 := (self) literalFalse.
    (recoveredValue7) literalFalse: (recoveredValue8).
    ^recoveredValue1
! !

"ASDBase.ic method 0x20310910; bytecode file offset 0xc0d1e0"
!SGAbstractDataFlowState methodsFor: 'recovered'!
intersectConditions: recoveredArg1 and: recoveredArg2
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := LookupTable.
    recoveredValue1 := (recoveredValue0) new.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := [:recoveredBlock13Arg1 | 
    | recoveredBlock13Stack0 recoveredBlock13Stack1 recoveredBlock13Stack2 recoveredBlock13Stack3 recoveredBlock13Stack4 recoveredBlock13Stack5 recoveredBlock13Stack6 recoveredBlock13PC recoveredBlock13Step recoveredBlock13Done recoveredBlock13Result |
    recoveredBlock13Stack0 := self.
    recoveredBlock13PC := 20.
    recoveredBlock13Done := false.
    [recoveredBlock13Done not] whileTrue: [
        recoveredBlock13Step := recoveredBlock13PC.
        recoveredBlock13Step = 20 ifTrue: [
            recoveredBlock13Stack1 := nil.
            recoveredBlock13PC := 21.
        ].
        recoveredBlock13Step = 21 ifTrue: [
            recoveredBlock13Stack2 := recoveredArg2.
            recoveredBlock13PC := 24.
        ].
        recoveredBlock13Step = 24 ifTrue: [
            recoveredBlock13Stack3 := recoveredBlock13Arg1.
            recoveredBlock13PC := 25.
        ].
        recoveredBlock13Step = 25 ifTrue: [
            recoveredBlock13Stack2 := (recoveredBlock13Stack2) includesKey: (recoveredBlock13Stack3).
            recoveredBlock13PC := 26.
        ].
        recoveredBlock13Step = 26 ifTrue: [
            (recoveredBlock13Stack2) ifTrue: [recoveredBlock13PC := 30] ifFalse: [recoveredBlock13PC := 49].
        ].
        recoveredBlock13Step = 30 ifTrue: [
            recoveredBlock13PC := 31.
        ].
        recoveredBlock13Step = 31 ifTrue: [
            recoveredBlock13Stack1 := recoveredLocal1.
            recoveredBlock13PC := 34.
        ].
        recoveredBlock13Step = 34 ifTrue: [
            recoveredBlock13Stack2 := recoveredBlock13Arg1.
            recoveredBlock13PC := 35.
        ].
        recoveredBlock13Step = 35 ifTrue: [
            recoveredBlock13Stack3 := recoveredArg1.
            recoveredBlock13PC := 38.
        ].
        recoveredBlock13Step = 38 ifTrue: [
            recoveredBlock13Stack4 := recoveredBlock13Arg1.
            recoveredBlock13PC := 39.
        ].
        recoveredBlock13Step = 39 ifTrue: [
            recoveredBlock13Stack3 := (recoveredBlock13Stack3) at: (recoveredBlock13Stack4).
            recoveredBlock13PC := 40.
        ].
        recoveredBlock13Step = 40 ifTrue: [
            recoveredBlock13Stack4 := recoveredArg2.
            recoveredBlock13PC := 43.
        ].
        recoveredBlock13Step = 43 ifTrue: [
            recoveredBlock13Stack5 := recoveredBlock13Arg1.
            recoveredBlock13PC := 44.
        ].
        recoveredBlock13Step = 44 ifTrue: [
            recoveredBlock13Stack4 := (recoveredBlock13Stack4) at: (recoveredBlock13Stack5).
            recoveredBlock13PC := 45.
        ].
        recoveredBlock13Step = 45 ifTrue: [
            recoveredBlock13Stack3 := (recoveredBlock13Stack3) andExpr: (recoveredBlock13Stack4).
            recoveredBlock13PC := 47.
        ].
        recoveredBlock13Step = 47 ifTrue: [
            recoveredBlock13Stack1 := (recoveredBlock13Stack1) at: (recoveredBlock13Stack2) put: (recoveredBlock13Stack3).
            recoveredBlock13PC := 49.
        ].
        recoveredBlock13Step = 49 ifTrue: [
            recoveredBlock13Result := recoveredBlock13Stack1.
            recoveredBlock13Done := true.
        ].
    ].
    recoveredBlock13Result
].
    (recoveredValue2) keysDo: (recoveredValue3).
    recoveredValue4 := recoveredLocal1.
    ^recoveredValue4
! !

"ASDBase.ic method 0x20365bc4; bytecode file offset 0xc62498"
!SGAbstractDataFlowState methodsFor: 'recovered'!
intersectConditions: recoveredArg1 and: recoveredArg2 condition: recoveredArg3
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := LookupTable.
    recoveredValue1 := (recoveredValue0) new.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := [:recoveredBlock13Arg1 | 
    | recoveredBlock13Stack0 recoveredBlock13Stack1 recoveredBlock13Stack2 recoveredBlock13Stack3 recoveredBlock13Stack4 recoveredBlock13Stack5 recoveredBlock13Stack6 recoveredBlock13PC recoveredBlock13Step recoveredBlock13Done recoveredBlock13Result |
    recoveredBlock13Stack0 := self.
    recoveredBlock13PC := 20.
    recoveredBlock13Done := false.
    [recoveredBlock13Done not] whileTrue: [
        recoveredBlock13Step := recoveredBlock13PC.
        recoveredBlock13Step = 20 ifTrue: [
            recoveredBlock13Stack1 := nil.
            recoveredBlock13PC := 21.
        ].
        recoveredBlock13Step = 21 ifTrue: [
            recoveredBlock13Stack2 := recoveredArg2.
            recoveredBlock13PC := 24.
        ].
        recoveredBlock13Step = 24 ifTrue: [
            recoveredBlock13Stack3 := recoveredBlock13Arg1.
            recoveredBlock13PC := 25.
        ].
        recoveredBlock13Step = 25 ifTrue: [
            recoveredBlock13Stack2 := (recoveredBlock13Stack2) includesKey: (recoveredBlock13Stack3).
            recoveredBlock13PC := 26.
        ].
        recoveredBlock13Step = 26 ifTrue: [
            (recoveredBlock13Stack2) ifTrue: [recoveredBlock13PC := 30] ifFalse: [recoveredBlock13PC := 60].
        ].
        recoveredBlock13Step = 30 ifTrue: [
            recoveredBlock13PC := 31.
        ].
        recoveredBlock13Step = 31 ifTrue: [
            recoveredBlock13Stack1 := recoveredLocal1.
            recoveredBlock13PC := 34.
        ].
        recoveredBlock13Step = 34 ifTrue: [
            recoveredBlock13Stack2 := recoveredBlock13Arg1.
            recoveredBlock13PC := 35.
        ].
        recoveredBlock13Step = 35 ifTrue: [
            recoveredBlock13Stack3 := recoveredArg1.
            recoveredBlock13PC := 38.
        ].
        recoveredBlock13Step = 38 ifTrue: [
            recoveredBlock13Stack4 := recoveredBlock13Arg1.
            recoveredBlock13PC := 39.
        ].
        recoveredBlock13Step = 39 ifTrue: [
            recoveredBlock13Stack3 := (recoveredBlock13Stack3) at: (recoveredBlock13Stack4).
            recoveredBlock13PC := 40.
        ].
        recoveredBlock13Step = 40 ifTrue: [
            recoveredBlock13Stack4 := recoveredArg3.
            recoveredBlock13PC := 43.
        ].
        recoveredBlock13Step = 43 ifTrue: [
            recoveredBlock13Stack3 := (recoveredBlock13Stack3) andExpr: (recoveredBlock13Stack4).
            recoveredBlock13PC := 45.
        ].
        recoveredBlock13Step = 45 ifTrue: [
            recoveredBlock13Stack4 := recoveredArg2.
            recoveredBlock13PC := 48.
        ].
        recoveredBlock13Step = 48 ifTrue: [
            recoveredBlock13Stack5 := recoveredBlock13Arg1.
            recoveredBlock13PC := 49.
        ].
        recoveredBlock13Step = 49 ifTrue: [
            recoveredBlock13Stack4 := (recoveredBlock13Stack4) at: (recoveredBlock13Stack5).
            recoveredBlock13PC := 50.
        ].
        recoveredBlock13Step = 50 ifTrue: [
            recoveredBlock13Stack5 := recoveredArg3.
            recoveredBlock13PC := 53.
        ].
        recoveredBlock13Step = 53 ifTrue: [
            recoveredBlock13Stack5 := (recoveredBlock13Stack5) not.
            recoveredBlock13PC := 54.
        ].
        recoveredBlock13Step = 54 ifTrue: [
            recoveredBlock13Stack4 := (recoveredBlock13Stack4) andExpr: (recoveredBlock13Stack5).
            recoveredBlock13PC := 56.
        ].
        recoveredBlock13Step = 56 ifTrue: [
            recoveredBlock13Stack3 := (recoveredBlock13Stack3) orExpr: (recoveredBlock13Stack4).
            recoveredBlock13PC := 58.
        ].
        recoveredBlock13Step = 58 ifTrue: [
            recoveredBlock13Stack1 := (recoveredBlock13Stack1) at: (recoveredBlock13Stack2) put: (recoveredBlock13Stack3).
            recoveredBlock13PC := 60.
        ].
        recoveredBlock13Step = 60 ifTrue: [
            recoveredBlock13Result := recoveredBlock13Stack1.
            recoveredBlock13Done := true.
        ].
    ].
    recoveredBlock13Result
].
    (recoveredValue2) keysDo: (recoveredValue3).
    recoveredValue4 := recoveredLocal1.
    ^recoveredValue4
! !

"ASDBase.ic method 0x2042316c; bytecode file offset 0xd1fa40"
!SGAbstractDataFlowState methodsFor: 'recovered'!
unionConditions: recoveredArg1 and: recoveredArg2
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) isEmpty.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 17].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) copy.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := (recoveredStack1) isEmpty.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 24] ifFalse: [recoveredPC := 29].
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := (recoveredStack1) copy.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := (recoveredStack1) copy.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack2 := [:recoveredBlock39Arg1 :recoveredBlock39Arg2 | 
    | recoveredBlock39Local1 recoveredBlock39Stack0 recoveredBlock39Stack1 recoveredBlock39Stack2 recoveredBlock39Stack3 recoveredBlock39Stack4 recoveredBlock39Stack5 recoveredBlock39PC recoveredBlock39Step recoveredBlock39Done recoveredBlock39Result |
    recoveredBlock39Stack0 := self.
    recoveredBlock39PC := 46.
    recoveredBlock39Done := false.
    [recoveredBlock39Done not] whileTrue: [
        recoveredBlock39Step := recoveredBlock39PC.
        recoveredBlock39Step = 46 ifTrue: [
            recoveredBlock39Stack1 := recoveredArg2.
            recoveredBlock39PC := 49.
        ].
        recoveredBlock39Step = 49 ifTrue: [
            recoveredBlock39Stack2 := recoveredBlock39Arg1.
            recoveredBlock39PC := 50.
        ].
        recoveredBlock39Step = 50 ifTrue: [
            recoveredBlock39Stack1 := (recoveredBlock39Stack1) includesKey: (recoveredBlock39Stack2).
            recoveredBlock39PC := 51.
        ].
        recoveredBlock39Step = 51 ifTrue: [
            (recoveredBlock39Stack1) ifTrue: [recoveredBlock39PC := 54] ifFalse: [recoveredBlock39PC := 88].
        ].
        recoveredBlock39Step = 54 ifTrue: [
            recoveredBlock39Stack1 := recoveredArg2.
            recoveredBlock39PC := 57.
        ].
        recoveredBlock39Step = 57 ifTrue: [
            recoveredBlock39Stack2 := recoveredBlock39Arg1.
            recoveredBlock39PC := 58.
        ].
        recoveredBlock39Step = 58 ifTrue: [
            recoveredBlock39Stack1 := (recoveredBlock39Stack1) at: (recoveredBlock39Stack2).
            recoveredBlock39PC := 59.
        ].
        recoveredBlock39Step = 59 ifTrue: [
            recoveredBlock39Local1 := recoveredBlock39Stack1.
            recoveredBlock39PC := 60.
        ].
        recoveredBlock39Step = 60 ifTrue: [
            recoveredBlock39Stack1 := recoveredBlock39Arg2.
            recoveredBlock39PC := 61.
        ].
        recoveredBlock39Step = 61 ifTrue: [
            recoveredBlock39Stack2 := recoveredBlock39Local1.
            recoveredBlock39PC := 62.
        ].
        recoveredBlock39Step = 62 ifTrue: [
            recoveredBlock39Stack1 := (recoveredBlock39Stack1) isIleIdentical: (recoveredBlock39Stack2).
            recoveredBlock39PC := 64.
        ].
        recoveredBlock39Step = 64 ifTrue: [
            (recoveredBlock39Stack1) ifTrue: [recoveredBlock39PC := 68] ifFalse: [recoveredBlock39PC := 72].
        ].
        recoveredBlock39Step = 68 ifTrue: [
            recoveredBlock39Stack1 := nil.
            recoveredBlock39PC := 69.
        ].
        recoveredBlock39Step = 69 ifTrue: [
            recoveredBlock39PC := 82.
        ].
        recoveredBlock39Step = 72 ifTrue: [
            recoveredBlock39Stack1 := recoveredLocal1.
            recoveredBlock39PC := 75.
        ].
        recoveredBlock39Step = 75 ifTrue: [
            recoveredBlock39Stack2 := recoveredBlock39Arg1.
            recoveredBlock39PC := 76.
        ].
        recoveredBlock39Step = 76 ifTrue: [
            recoveredBlock39Stack3 := recoveredBlock39Arg2.
            recoveredBlock39PC := 77.
        ].
        recoveredBlock39Step = 77 ifTrue: [
            recoveredBlock39Stack4 := recoveredBlock39Local1.
            recoveredBlock39PC := 78.
        ].
        recoveredBlock39Step = 78 ifTrue: [
            recoveredBlock39Stack3 := (recoveredBlock39Stack3) orExpr: (recoveredBlock39Stack4).
            recoveredBlock39PC := 80.
        ].
        recoveredBlock39Step = 80 ifTrue: [
            recoveredBlock39Stack1 := (recoveredBlock39Stack1) at: (recoveredBlock39Stack2) put: (recoveredBlock39Stack3).
            recoveredBlock39PC := 82.
        ].
        recoveredBlock39Step = 82 ifTrue: [
            recoveredBlock39Stack2 := nil.
            recoveredBlock39PC := 83.
        ].
        recoveredBlock39Step = 83 ifTrue: [
            recoveredBlock39Local1 := recoveredBlock39Stack2.
            recoveredBlock39PC := 84.
        ].
        recoveredBlock39Step = 84 ifTrue: [
            recoveredBlock39PC := 95.
        ].
        recoveredBlock39Step = 88 ifTrue: [
            recoveredBlock39Stack1 := recoveredLocal1.
            recoveredBlock39PC := 91.
        ].
        recoveredBlock39Step = 91 ifTrue: [
            recoveredBlock39Stack2 := recoveredBlock39Arg1.
            recoveredBlock39PC := 92.
        ].
        recoveredBlock39Step = 92 ifTrue: [
            recoveredBlock39Stack3 := recoveredBlock39Arg2.
            recoveredBlock39PC := 93.
        ].
        recoveredBlock39Step = 93 ifTrue: [
            recoveredBlock39Stack1 := (recoveredBlock39Stack1) at: (recoveredBlock39Stack2) put: (recoveredBlock39Stack3).
            recoveredBlock39PC := 95.
        ].
        recoveredBlock39Step = 95 ifTrue: [
            recoveredBlock39Result := recoveredBlock39Stack1.
            recoveredBlock39Done := true.
        ].
    ].
    recoveredBlock39Result
].
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            (recoveredStack1) keysAndValuesDo: (recoveredStack2).
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

