"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x200034a0; bytecode file offset 0x90206c"
!SGMdAbstractMethodCall methodsFor: 'recovered'!
semAnaNoStackVariable: recoveredArg1
    ^self
! !

"ASDBase.ic method 0x20006e6c; bytecode file offset 0x908be4"
!SGMdAbstractMethodCall methodsFor: 'recovered'!
children
    | recoveredValue0 |
    recoveredValue0 := (self) allChildren.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20007964; bytecode file offset 0x908be4"
!SGMdAbstractMethodCall methodsFor: 'recovered'!
mdlExprCodeSizeCosts
    | recoveredValue0 |
    recoveredValue0 := (self) exprSize.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20007d84; bytecode file offset 0x908be4"
!SGMdAbstractMethodCall methodsFor: 'recovered'!
mdlStmntCodeSizeCosts
    | recoveredValue0 |
    recoveredValue0 := (self) mdlExprCodeSizeCosts.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20025ccc; bytecode file offset 0x923928"
!SGMdAbstractMethodCall methodsFor: 'recovered'!
reasonHasMdlArrayRefStructOnStack
    ^'result of method call has variable reference struct on stack'
! !

"ASDBase.ic method 0x20033de4; bytecode file offset 0x934580"
!SGMdAbstractMethodCall methodsFor: 'recovered'!
mdlComponentClassType
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) mdlClass.
    recoveredValue1 := (recoveredValue0) mdlComponentClassType.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2004f71c; bytecode file offset 0x94d048"
!SGMdAbstractMethodCall methodsFor: 'recovered'!
errLabel
    (self) subclassResponsibility.
    ^self
! !

"ASDBase.ic method 0x20055d1c; bytecode file offset 0x952a9c"
!SGMdAbstractMethodCall methodsFor: 'recovered'!
mdlAcceptNodeVisitor: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) abstractMethodCall: (self).
    ^recoveredValue1
! !

"ASDBase.ic method 0x2006a75c; bytecode file offset 0x967a18"
!SGMdAbstractMethodCall methodsFor: 'recovered'!
argChildren
    | recoveredValue0 |
    recoveredValue0 := argChildren.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006b1d0; bytecode file offset 0x96873c"
!SGMdAbstractMethodCall methodsFor: 'recovered'!
argReceiver
    | recoveredValue0 |
    recoveredValue0 := argReceiver.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200739c0; bytecode file offset 0x970b34"
!SGMdAbstractMethodCall methodsFor: 'recovered'!
mdlKey
    ^nil
! !

"ASDBase.ic method 0x20074954; bytecode file offset 0x9757c8"
!SGMdAbstractMethodCall methodsFor: 'recovered'!
isMdlModelTypedExpression
    ^true
! !

"ASDBase.ic method 0x200789f4; bytecode file offset 0x9757c8"
!SGMdAbstractMethodCall methodsFor: 'recovered'!
isMdlAbstractMethodCall
    ^true
! !

"ASDBase.ic method 0x2007969c; bytecode file offset 0x97c330"
!SGMdAbstractMethodCall methodsFor: 'recovered'!
hasMdlUnconditionalReturn
    ^false
! !

"ASDBase.ic method 0x2007f714; bytecode file offset 0x97c330"
!SGMdAbstractMethodCall methodsFor: 'recovered'!
hasMdlUnconditionalReturnOrEndCase
    ^false
! !

"ASDBase.ic method 0x20096f80; bytecode file offset 0x99385c"
!SGMdAbstractMethodCall methodsFor: 'recovered'!
ansiCArrayAccess: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := (self) generator.
    (recoveredValue0) semAnaANSICAtMethodCall: (self).
    ^self
! !

"ASDBase.ic method 0x200c1da4; bytecode file offset 0x9beac8"
!SGMdAbstractMethodCall methodsFor: 'recovered'!
argChildren: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    argChildren := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c2a90; bytecode file offset 0x9bf474"
!SGMdAbstractMethodCall methodsFor: 'recovered'!
argReceiver: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    argReceiver := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x20181f34; bytecode file offset 0xa7e800"
!SGMdAbstractMethodCall methodsFor: 'recovered'!
exprSize
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) argChildren.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) class.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) mdlMethodCallCodeSizeCosts.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack2 := [:block280d0320Arg1 :block280d0320Arg2 | 
    | block280d0320Value0 block280d0320Value1 block280d0320Value2 block280d0320Value3 |
    block280d0320Value0 := block280d0320Arg1.
    block280d0320Value1 := block280d0320Arg2.
    block280d0320Value2 := (block280d0320Value1) exprSize.
    block280d0320Value3 := (block280d0320Value0) + (block280d0320Value2).
    block280d0320Value3
].
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := (recoveredStack0) inject: (recoveredStack1) into: (recoveredStack2).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201b86cc; bytecode file offset 0xab4f94"
!SGMdAbstractMethodCall methodsFor: 'recovered'!
allChildren
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) argReceiver.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 11] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) argChildren.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) argChildren.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) asOrderedCollection.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := (recoveredStack1) argReceiver.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            (recoveredStack0) addFirst: (recoveredStack1).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := (recoveredStack0) asArray.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20372d44; bytecode file offset 0xc6f618"
!SGMdAbstractMethodCall methodsFor: 'recovered'!
isDirectInOutArgument: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) genIleType.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) isMdlTypeNeedsReference.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 67].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := [
    | recoveredBlock17Value0 recoveredBlock17Value1 |
    recoveredBlock17Value0 := recoveredLocal1.
    recoveredBlock17Value1 := (recoveredBlock17Value0) isMdlTypeNeedsReference.
    recoveredBlock17Value1
].
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack2 := [
    'Inconsitent types for Out or InOut argument'
].
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            (recoveredStack0) ileAssert: (recoveredStack1) message: (recoveredStack2).
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := [
    | recoveredBlock40Value0 recoveredBlock40Value1 recoveredBlock40Value2 |
    recoveredBlock40Value0 := recoveredArg1.
    recoveredBlock40Value1 := recoveredLocal1.
    recoveredBlock40Value2 := (recoveredBlock40Value0) equalsType: (recoveredBlock40Value1).
    recoveredBlock40Value2
].
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack2 := [
    'Unequal types for Out or InOut argument'
].
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            (recoveredStack0) ileAssert: (recoveredStack1) message: (recoveredStack2).
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack0 := true.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

