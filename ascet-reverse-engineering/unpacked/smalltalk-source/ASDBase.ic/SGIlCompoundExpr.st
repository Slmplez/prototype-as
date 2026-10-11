"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2003ba68; bytecode file offset 0x938608"
!SGIlCompoundExpr methodsFor: 'recovered'!
ileConvertEnumTo: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) createOpType: (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x20052e0c; bytecode file offset 0x9505d0"
!SGIlCompoundExpr methodsFor: 'recovered'!
createWithArgs: recoveredArg1
    (self) subclassResponsibility.
    ^self
! !

"ASDBase.ic method 0x20053be0; bytecode file offset 0x9505d0"
!SGIlCompoundExpr methodsFor: 'recovered'!
createNoOpArgs: recoveredArg1
    (self) subclassResponsibility.
    ^self
! !

"ASDBase.ic method 0x20054fe4; bytecode file offset 0x952a9c"
!SGIlCompoundExpr methodsFor: 'recovered'!
ileAcceptNodeVisitor: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) compoundExpr: (self).
    ^recoveredValue1
! !

"ASDBase.ic method 0x2006a2d8; bytecode file offset 0x966bdc"
!SGIlCompoundExpr methodsFor: 'recovered'!
args
    | recoveredValue0 |
    recoveredValue0 := args.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2007704c; bytecode file offset 0x9757c8"
!SGIlCompoundExpr methodsFor: 'recovered'!
copyChildrenToGetUniqueness
    ^true
! !

"ASDBase.ic method 0x200a8618; bytecode file offset 0x9a4f24"
!SGIlCompoundExpr methodsFor: 'recovered'!
args: recoveredArg1
    | recoveredValue0 |
    (self) assertSetterShouldNotBeUsed.
    recoveredValue0 := recoveredArg1.
    args := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x2015668c; bytecode file offset 0xa52fb0"
!SGIlCompoundExpr methodsFor: 'recovered'!
ileDependsOnAccessExpr: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) args.
    recoveredValue1 := [:recoveredBlock5Arg1 | 
    | recoveredBlock5Value0 recoveredBlock5Value1 recoveredBlock5Value2 |
    recoveredBlock5Value0 := recoveredBlock5Arg1.
    recoveredBlock5Value1 := recoveredArg1.
    recoveredBlock5Value2 := (recoveredBlock5Value0) ileDependsOnAccessExpr: (recoveredBlock5Value1).
    recoveredBlock5Value2
].
    recoveredValue2 := (recoveredValue0) anySatisfy: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x20157bbc; bytecode file offset 0xa54490"
!SGIlCompoundExpr methodsFor: 'recovered'!
initializeSource: recoveredArg1 type: recoveredArg2 args: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg3.
    args := recoveredValue0.
    recoveredValue1 := args.
    (recoveredValue1) markReadOnly: (true).
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := recoveredArg2.
    super initializeSource: (recoveredValue2) type: (recoveredValue3).
    ^self
! !

"ASDBase.ic method 0x2020a434; bytecode file offset 0xb06cfc"
!SGIlCompoundExpr methodsFor: 'recovered'!
hash
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := hash.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 29] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) args.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := (recoveredStack2) class.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := (recoveredStack2) hash.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack3 := [:block280d9ab8Arg1 :block280d9ab8Arg2 | 
    | block280d9ab8Value0 block280d9ab8Value1 block280d9ab8Value2 block280d9ab8Value3 |
    block280d9ab8Value0 := block280d9ab8Arg1.
    block280d9ab8Value1 := block280d9ab8Arg2.
    block280d9ab8Value2 := (block280d9ab8Value1) hash.
    block280d9ab8Value3 := (block280d9ab8Value0) + (block280d9ab8Value2).
    block280d9ab8Value3
].
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := (recoveredStack1) inject: (recoveredStack2) into: (recoveredStack3).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            hash := recoveredStack1.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := hash.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2024f1b8; bytecode file offset 0xb4ba94"
!SGIlCompoundExpr methodsFor: 'recovered'!
ileWrapperHash
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := super ileWrapperHash.
    recoveredLocal1 := recoveredValue0.
    recoveredValue1 := (self) args.
    recoveredValue2 := [:recoveredBlock13Arg1 | 
    | recoveredBlock13Value0 recoveredBlock13Value1 recoveredBlock13Value2 recoveredBlock13Value3 recoveredBlock13Value4 |
    recoveredBlock13Value0 := recoveredLocal1.
    recoveredBlock13Value1 := recoveredBlock13Arg1.
    recoveredBlock13Value2 := (recoveredBlock13Value1) ileWrapperHash.
    recoveredBlock13Value3 := (recoveredBlock13Value0) + (recoveredBlock13Value2).
    recoveredBlock13Value4 := recoveredBlock13Value3.
    recoveredLocal1 := recoveredBlock13Value4.
    recoveredBlock13Value3
].
    (recoveredValue1) do: (recoveredValue2).
    recoveredValue3 := recoveredLocal1.
    ^recoveredValue3
! !

"ASDBase.ic method 0x202fc5c0; bytecode file offset 0xbf8e94"
!SGIlCompoundExpr methodsFor: 'recovered'!
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
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) copyChildrenToGetUniqueness.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 52].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := args.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := (recoveredStack0) size.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := 1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := (recoveredStack0) > (recoveredStack1).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 24] ifFalse: [recoveredPC := 52].
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := args.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := (recoveredStack0) asSet.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := (recoveredStack0) size.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := args.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := (recoveredStack0) ~= (recoveredStack1).
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 36] ifFalse: [recoveredPC := 52].
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := args.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := [:block280e91a8Arg1 | 
    | block280e91a8Value0 block280e91a8Value1 |
    block280e91a8Value0 := block280e91a8Arg1.
    block280e91a8Value1 := (block280e91a8Value0) copy.
    block280e91a8Value1
].
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack0 := (recoveredStack0) collect: (recoveredStack1).
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            args := recoveredStack0.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

