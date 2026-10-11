"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2000a4f0; bytecode file offset 0x908be4"
!SGMdSpecialCall methodsFor: 'recovered'!
leftHandSide
    | recoveredValue0 |
    recoveredValue0 := (self) receiver.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200343e4; bytecode file offset 0x934580"
!SGMdSpecialCall methodsFor: 'recovered'!
errLabel
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) mdlName.
    recoveredValue1 := (recoveredValue0) errLabel.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20055c5c; bytecode file offset 0x952a9c"
!SGMdSpecialCall methodsFor: 'recovered'!
mdlAcceptNodeVisitor: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) specialCall: (self).
    ^recoveredValue1
! !

"ASDBase.ic method 0x20062b04; bytecode file offset 0x95f8b0"
!SGMdSpecialCall methodsFor: 'recovered'!
isMdlSpecialCallMessageReceive
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) mdlLabel.
    recoveredValue1 := (self) receiveMsgMethodName.
    recoveredValue2 := (recoveredValue0) equals: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x20062bcc; bytecode file offset 0x95f8b0"
!SGMdSpecialCall methodsFor: 'recovered'!
isMdlSpecialCallMessageSend
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) mdlLabel.
    recoveredValue1 := (self) sendMsgMethodName.
    recoveredValue2 := (recoveredValue0) equals: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x2006a71c; bytecode file offset 0x967a18"
!SGMdSpecialCall methodsFor: 'recovered'!
children
    | recoveredValue0 |
    recoveredValue0 := children.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006b8c8; bytecode file offset 0x96873c"
!SGMdSpecialCall methodsFor: 'recovered'!
mdlName
    | recoveredValue0 |
    recoveredValue0 := mdlName.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006c264; bytecode file offset 0x9692b0"
!SGMdSpecialCall methodsFor: 'recovered'!
mdlClass
    | recoveredValue0 |
    recoveredValue0 := mdlClass.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006d0f0; bytecode file offset 0x969c04"
!SGMdSpecialCall methodsFor: 'recovered'!
receiver
    | recoveredValue0 |
    recoveredValue0 := receiver.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20075dd4; bytecode file offset 0x9757c8"
!SGMdSpecialCall methodsFor: 'recovered'!
isMdlSpecialCall
    ^true
! !

"ASDBase.ic method 0x20077fa4; bytecode file offset 0x9757c8"
!SGMdSpecialCall methodsFor: 'recovered'!
isMdlModelTypedExpression
    ^true
! !

"ASDBase.ic method 0x2007ca7c; bytecode file offset 0x97c330"
!SGMdSpecialCall methodsFor: 'recovered'!
hasMdlUnconditionalReturn
    ^false
! !

"ASDBase.ic method 0x2007ed34; bytecode file offset 0x97c330"
!SGMdSpecialCall methodsFor: 'recovered'!
hasMdlConditionalExitOrReturnStmnt
    ^false
! !

"ASDBase.ic method 0x2007f724; bytecode file offset 0x97c330"
!SGMdSpecialCall methodsFor: 'recovered'!
hasMdlUnconditionalReturnOrEndCase
    ^false
! !

"ASDBase.ic method 0x2008bfc4; bytecode file offset 0x988b68"
!SGMdSpecialCall methodsFor: 'recovered'!
isMdlSpecialCallWithoutReadAccess
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) mdlLabel.
    recoveredValue1 := (#('arrayLength' 'matrixXLength' 'matrixYLength')) includes: (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x2008c000; bytecode file offset 0x988b68"
!SGMdSpecialCall methodsFor: 'recovered'!
hasReturnValue
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) mdlLabel.
    recoveredValue1 := (#('interpolateOneD' 'interpolateTwoD' 'interpolateOneDGroup' 'interpolateTwoDGroup' 'getAtOneD' 'getAtTwoD')) includes: (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x2008c0a0; bytecode file offset 0x988b68"
!SGMdSpecialCall methodsFor: 'recovered'!
isMdlSideEffectFree
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) mdlLabel.
    recoveredValue1 := (#('receiveMsg' 'arrayLength' 'matrixXLength' 'matrixYLength' 'getAtOneD' 'getXOneD' 'getValueOneD' 'getMaxSizeOneD' 'getCurrentSizeOneD' 'getAtTwoD' 'getXTwoD' 'getYTwoD' 'getValueTwoD' 'getMaxSizeXTwoD' 'getMaxSizeYTwoD' 'getCurrentSizeXTwoD' 'getCurrentSizeYTwoD' 'getXDistribution' 'getMaxSizeDistribution' 'getCurrentSizeDistribution' 'getValueOneDGroup' 'getMaxSizeOneDGroup' 'getCurrentSizeOneDGroup' 'getValueTwoDGroup' 'getMaxSizeXTwoDGroup' 'getMaxSizeYTwoDGroup' 'getCurrentSizeXTwoDGroup' 'getCurrentSizeYTwoDGroup' 'interpolateOneD' 'interpolateTwoD' 'interpolateOneDGroup' 'interpolateTwoDGroup')) includes: (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x2008c1a4; bytecode file offset 0x988b68"
!SGMdSpecialCall methodsFor: 'recovered'!
isMdlSpecialCallLength
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) mdlLabel.
    recoveredValue1 := (#('arrayLength' 'matrixXLength' 'matrixYLength')) includes: (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x200c1ad4; bytecode file offset 0x9beac8"
!SGMdSpecialCall methodsFor: 'recovered'!
children: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    children := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c28b8; bytecode file offset 0x9bf474"
!SGMdSpecialCall methodsFor: 'recovered'!
mdlName: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    mdlName := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c3124; bytecode file offset 0x9bfde0"
!SGMdSpecialCall methodsFor: 'recovered'!
mdlClass: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    mdlClass := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c3cd8; bytecode file offset 0x9c058c"
!SGMdSpecialCall methodsFor: 'recovered'!
receiver: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    receiver := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200cc8b4; bytecode file offset 0x9c9178"
!SGMdSpecialCall methodsFor: 'recovered'!
semAnaIntegerArrayLength
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := SGIaExprOptData.
    recoveredValue1 := (self) mdlClass.
    recoveredValue2 := (recoveredValue0) forImplementation: (recoveredValue1).
    (self) optData: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x200e2904; bytecode file offset 0x9df430"
!SGMdSpecialCall methodsFor: 'recovered'!
isMdlMessageSpecialCall
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
            recoveredStack2 := (recoveredStack2) isMdlSpecialCallMessageReceive.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 13] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) isMdlSpecialCallMessageSend.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2010a044; bytecode file offset 0xa06900"
!SGMdSpecialCall methodsFor: 'recovered'!
isPureFloat
    | recoveredStack0 recoveredStack1 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) optData.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) optData.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) needsFloatType.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20117c24; bytecode file offset 0xa14518"
!SGMdSpecialCall methodsFor: 'recovered'!
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
            recoveredStack2 := (recoveredStack2) isMdlSpecialCallLength.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) receiver.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) mdlClass.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) isCgVariableArray.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) not.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x20160c54; bytecode file offset 0xa5d518"
!SGMdSpecialCall methodsFor: 'recovered'!
firstArg
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) children.
    recoveredValue1 := [
    | recoveredBlock7Value0 |
    recoveredBlock7Value0 := (self) mdlFatalExpect: ('argument for special function call').
    recoveredBlock7Value0
].
    recoveredValue2 := (recoveredValue0) at: (1) ifAbsent: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x20160c84; bytecode file offset 0xa5d548"
!SGMdSpecialCall methodsFor: 'recovered'!
secondArg
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) children.
    recoveredValue1 := [
    | recoveredBlock7Value0 |
    recoveredBlock7Value0 := (self) mdlFatalExpect: ('argument for special function call').
    recoveredBlock7Value0
].
    recoveredValue2 := (recoveredValue0) at: (2) ifAbsent: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x201af964; bytecode file offset 0xaac248"
!SGMdSpecialCall methodsFor: 'recovered'!
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
            recoveredStack2 := (recoveredStack2) receiver.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := (recoveredStack2) isMdlSideEffectExpr.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 25] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) children.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := [:block280d3b18Arg1 | 
    | block280d3b18Value0 block280d3b18Value1 |
    block280d3b18Value0 := block280d3b18Arg1.
    block280d3b18Value1 := (block280d3b18Value0) isMdlSideEffectExpr.
    block280d3b18Value1
].
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := (recoveredStack1) anySatisfy: (recoveredStack2).
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x201e25cc; bytecode file offset 0xadee98"
!SGMdSpecialCall methodsFor: 'recovered'!
assignExpr
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := [
    false
].
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := [
    'SGMdSpecialCall>>#assignExpr should not be called any more'
].
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            (recoveredStack0) ileAssert: (recoveredStack1) message: (recoveredStack2).
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := (recoveredStack0) children.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := (recoveredStack0) first.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x203a9558; bytecode file offset 0xca5e38"
!SGMdSpecialCall methodsFor: 'recovered'!
printOn: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) receiver.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 22] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) receiver.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack0) printOn: (recoveredStack1).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := '.'.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            (recoveredStack0) nextPutAll: (recoveredStack1).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := (recoveredStack1) mdlName.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := (recoveredStack1) mdlLabel.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            (recoveredStack0) nextPutAll: (recoveredStack1).
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := '('.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            (recoveredStack0) nextPutAll: (recoveredStack1).
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack0 := (recoveredStack0) children.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := [:recoveredBlock42Arg1 | 
    | recoveredBlock42Value0 recoveredBlock42Value1 recoveredBlock42Value2 |
    recoveredBlock42Value0 := recoveredBlock42Arg1.
    recoveredBlock42Value1 := recoveredArg1.
    recoveredBlock42Value2 := (recoveredBlock42Value0) printOn: (recoveredBlock42Value1).
    recoveredBlock42Value2
].
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack2 := [
    | recoveredBlock54Value0 recoveredBlock54Value1 |
    recoveredBlock54Value0 := recoveredArg1.
    recoveredBlock54Value1 := (recoveredBlock54Value0) nextPutAll: (', ').
    recoveredBlock54Value1
].
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            (recoveredStack0) do: (recoveredStack1) separatedBy: (recoveredStack2).
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack1 := ')'.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            (recoveredStack0) nextPutAll: (recoveredStack1).
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

