"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20006a58; bytecode file offset 0x908be4"
!SGMdSideEffectMethodCall methodsFor: 'recovered'!
hasValues
    | recoveredValue0 |
    recoveredValue0 := (self) isMdlTypeNeedsReference.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20069b70; bytecode file offset 0x966bdc"
!SGMdSideEffectMethodCall methodsFor: 'recovered'!
methodDecl
    | recoveredValue0 |
    recoveredValue0 := methodDecl.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006ad74; bytecode file offset 0x967a18"
!SGMdSideEffectMethodCall methodsFor: 'recovered'!
receiver
    | recoveredValue0 |
    recoveredValue0 := receiver.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2007524c; bytecode file offset 0x9757c8"
!SGMdSideEffectMethodCall methodsFor: 'recovered'!
isMdlSideEffectMethodCall
    ^true
! !

"ASDBase.ic method 0x20084744; bytecode file offset 0x981ca4"
!SGMdSideEffectMethodCall methodsFor: 'recovered'!
printValuesOn: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) printOn: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x200c21fc; bytecode file offset 0x9beac8"
!SGMdSideEffectMethodCall methodsFor: 'recovered'!
receiver: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    receiver := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c2400; bytecode file offset 0x9bf474"
!SGMdSideEffectMethodCall methodsFor: 'recovered'!
arguments: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    arguments := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200d5d00; bytecode file offset 0x9d25bc"
!SGMdSideEffectMethodCall methodsFor: 'recovered'!
initialize
    super initialize.
    arguments := nil.
    ^self
! !

"ASDBase.ic method 0x20107d74; bytecode file offset 0xa04634"
!SGMdSideEffectMethodCall methodsFor: 'recovered'!
isMdlTypeNeedsReference
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
            recoveredStack2 := (recoveredStack2) methodDecl.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack2 == nil) ifTrue: [recoveredPC := 15] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) methodDecl.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) mdlClass.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) isMdlTypeNeedsReference.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x20115efc; bytecode file offset 0xa127b8"
!SGMdSideEffectMethodCall methodsFor: 'recovered'!
arguments
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := arguments.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := LookupTable.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := arguments.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2015fe28; bytecode file offset 0xa5c6f4"
!SGMdSideEffectMethodCall methodsFor: 'recovered'!
values
    | recoveredStack0 recoveredStack1 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) methodHasNoAnalysisInfo.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 8] ifFalse: [recoveredPC := 11].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := #().
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
            recoveredStack0 := (recoveredStack0) methodDecl.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) analysisInfo.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := (recoveredStack0) sideEffects.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := (recoveredStack0) values.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2017836c; bytecode file offset 0xa74c2c"
!SGMdSideEffectMethodCall methodsFor: 'recovered'!
addArgument: recoveredArg1 sideEffect: recoveredArg2
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := arguments.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 15] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := LookupTable.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            arguments := recoveredStack1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := arguments.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2018f090; bytecode file offset 0xa8b950"
!SGMdSideEffectMethodCall methodsFor: 'recovered'!
methodHasNoAnalysisInfo
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
            recoveredStack2 := (recoveredStack2) methodDecl.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack2 == nil) ifTrue: [recoveredPC := 23] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := (recoveredStack2) methodDecl.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := (recoveredStack2) isMdlNoGenerateBody.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 23] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := (recoveredStack1) methodDecl.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := (recoveredStack1) analysisInfoOrNil.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := (recoveredStack1) isNil.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x201b08b0; bytecode file offset 0xaad17c"
!SGMdSideEffectMethodCall methodsFor: 'recovered'!
hash
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) arguments.
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
            recoveredStack1 := (recoveredStack1) hash.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack2 := (recoveredStack2) receiver.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack2 := (recoveredStack2) hash.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (recoveredStack2).
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := [:block280d3e9cArg1 :block280d3e9cArg2 | 
    | block280d3e9cValue0 block280d3e9cValue1 block280d3e9cValue2 block280d3e9cValue3 |
    block280d3e9cValue0 := block280d3e9cArg1.
    block280d3e9cValue1 := block280d3e9cArg2.
    block280d3e9cValue2 := (block280d3e9cValue1) hash.
    block280d3e9cValue3 := (block280d3e9cValue0) + (block280d3e9cValue2).
    block280d3e9cValue3
].
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := (recoveredStack0) inject: (recoveredStack1) into: (recoveredStack2).
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201db66c; bytecode file offset 0xad7f48"
!SGMdSideEffectMethodCall methodsFor: 'recovered'!
memorySegmentedDeclsDo: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) receiver.
    recoveredValue1 := recoveredArg1.
    (recoveredValue0) memorySegmentedDeclsDo: (recoveredValue1).
    recoveredValue2 := (self) arguments.
    recoveredValue3 := [:recoveredBlock12Arg1 | 
    | recoveredBlock12Value0 recoveredBlock12Value1 recoveredBlock12Value2 |
    recoveredBlock12Value0 := recoveredBlock12Arg1.
    recoveredBlock12Value1 := recoveredArg1.
    recoveredBlock12Value2 := (recoveredBlock12Value0) memorySegmentedDeclsDo: (recoveredBlock12Value1).
    recoveredBlock12Value2
].
    (recoveredValue2) do: (recoveredValue3).
    ^self
! !

"ASDBase.ic method 0x20234098; bytecode file offset 0xb30958"
!SGMdSideEffectMethodCall methodsFor: 'recovered'!
methodDecl: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := [
    | recoveredBlock4Stack0 recoveredBlock4Stack1 recoveredBlock4Stack2 recoveredBlock4Stack3 recoveredBlock4PC recoveredBlock4Step recoveredBlock4Done recoveredBlock4Result |
    recoveredBlock4Stack0 := self.
    recoveredBlock4PC := 10.
    recoveredBlock4Done := false.
    [recoveredBlock4Done not] whileTrue: [
        recoveredBlock4Step := recoveredBlock4PC.
        recoveredBlock4Step = 10 ifTrue: [
            recoveredBlock4Stack1 := true.
            recoveredBlock4PC := 11.
        ].
        recoveredBlock4Step = 11 ifTrue: [
            recoveredBlock4Stack2 := recoveredArg1.
            recoveredBlock4PC := 14.
        ].
        recoveredBlock4Step = 14 ifTrue: [
            (recoveredBlock4Stack2 == nil) ifTrue: [recoveredBlock4PC := 23] ifFalse: [recoveredBlock4PC := 18].
        ].
        recoveredBlock4Step = 18 ifTrue: [
            recoveredBlock4PC := 19.
        ].
        recoveredBlock4Step = 19 ifTrue: [
            recoveredBlock4Stack1 := recoveredArg1.
            recoveredBlock4PC := 22.
        ].
        recoveredBlock4Step = 22 ifTrue: [
            recoveredBlock4Stack1 := (recoveredBlock4Stack1) isMdlExecutableDecl.
            recoveredBlock4PC := 23.
        ].
        recoveredBlock4Step = 23 ifTrue: [
            recoveredBlock4Result := recoveredBlock4Stack1.
            recoveredBlock4Done := true.
        ].
    ].
    recoveredBlock4Result
].
    (self) runtimeAssert: (recoveredValue0) additionalInfo: ('SideEffectMethodCall should contain a method decl.').
    recoveredValue1 := recoveredArg1.
    methodDecl := recoveredValue1.
    ^self
! !

"ASDBase.ic method 0x2026b33c; bytecode file offset 0xb67c20"
!SGMdSideEffectMethodCall methodsFor: 'recovered'!
asConditionalInfo
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) class.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) create.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack2 := (recoveredStack2) receiver.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack2 := (recoveredStack2) asConditionalInfo.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack1) receiver: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := (recoveredStack2) arguments.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack3 := [:block280e025cArg1 | 
    | block280e025cValue0 block280e025cValue1 |
    block280e025cValue0 := block280e025cArg1.
    block280e025cValue1 := (block280e025cValue0) asConditionalInfo.
    block280e025cValue1
].
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack2 := (recoveredStack2) collect: (recoveredStack3).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            (recoveredStack1) arguments: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack2 := (recoveredStack2) methodDecl.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            (recoveredStack1) methodDecl: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack2 := true.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            (recoveredStack1) conditional: (recoveredStack2).
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20272678; bytecode file offset 0xb6ef44"
!SGMdSideEffectMethodCall methodsFor: 'recovered'!
argumentAccess: recoveredArg1 arguments: recoveredArg2
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := LookupTable.
    recoveredValue1 := (recoveredValue0) new.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := (self) arguments.
    recoveredValue3 := [:recoveredBlock11Arg1 :recoveredBlock11Arg2 | 
    | recoveredBlock11Value0 recoveredBlock11Value1 recoveredBlock11Value2 recoveredBlock11Value3 recoveredBlock11Value4 recoveredBlock11Value5 recoveredBlock11Value6 |
    recoveredBlock11Value0 := recoveredLocal1.
    recoveredBlock11Value1 := recoveredBlock11Arg1.
    recoveredBlock11Value2 := recoveredBlock11Arg2.
    recoveredBlock11Value3 := recoveredArg1.
    recoveredBlock11Value4 := recoveredArg2.
    recoveredBlock11Value5 := (recoveredBlock11Value2) resolvedAccess: (recoveredBlock11Value3) arguments: (recoveredBlock11Value4).
    recoveredBlock11Value6 := (recoveredBlock11Value0) at: (recoveredBlock11Value1) put: (recoveredBlock11Value5).
    recoveredBlock11Value6
].
    (recoveredValue2) keysAndValuesDo: (recoveredValue3).
    recoveredValue4 := recoveredLocal1.
    ^recoveredValue4
! !

"ASDBase.ic method 0x2034dc28; bytecode file offset 0xc4a504"
!SGMdSideEffectMethodCall methodsFor: 'recovered'!
inlinePrivateAdditionalMethods: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) methodDecl.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 60] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) methodDecl.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := (recoveredStack0) isMdlPrivateAdditional.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 60].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := [
    | recoveredBlock15Value0 recoveredBlock15Value1 recoveredBlock15Value2 |
    recoveredBlock15Value0 := (self) methodDecl.
    recoveredBlock15Value1 := (recoveredBlock15Value0) analysisInfoOrNil.
    recoveredBlock15Value2 := (recoveredBlock15Value1) notNil.
    recoveredBlock15Value2
].
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack2 := [
    'Analysis info should be present for additional methods.'
].
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            (recoveredStack0) ileAssert: (recoveredStack1) message: (recoveredStack2).
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := (recoveredStack0) methodDecl.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack0 := (recoveredStack0) analysisInfo.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack0 := (recoveredStack0) sideEffects.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack2 := (recoveredStack2) conditional.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 56] ifFalse: [recoveredPC := 52].
        ].
        recoveredStep = 52 ifTrue: [
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack1 := (recoveredStack1) conditional.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            (recoveredStack0) conditional: (recoveredStack1).
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20395918; bytecode file offset 0xc921f8"
!SGMdSideEffectMethodCall methodsFor: 'recovered'!
printOn: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) methodDecl.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := 'noDecl'.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack0) nextPutAll: (recoveredStack1).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredPC := 26.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := (recoveredStack1) methodDecl.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := (recoveredStack1) mdlLabel.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            (recoveredStack0) nextPutAll: (recoveredStack1).
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := '('.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            (recoveredStack0) nextPutAll: (recoveredStack1).
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := (recoveredStack0) receiver.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            (recoveredStack0) printOn: (recoveredStack1).
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack0 := (recoveredStack0) arguments.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack1 := [:recoveredBlock44Arg1 | 
    | recoveredBlock44Value0 recoveredBlock44Value1 recoveredBlock44Value2 recoveredBlock44Value3 |
    recoveredBlock44Value0 := recoveredArg1.
    (recoveredBlock44Value0) nextPutAll: (', ').
    recoveredBlock44Value1 := recoveredBlock44Arg1.
    recoveredBlock44Value2 := recoveredArg1.
    recoveredBlock44Value3 := (recoveredBlock44Value1) printOn: (recoveredBlock44Value2).
    recoveredBlock44Value3
].
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack1 := ')'.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            (recoveredStack0) nextPutAll: (recoveredStack1).
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x203e0564; bytecode file offset 0xcdce34"
!SGMdSideEffectMethodCall methodsFor: 'recovered'!
= recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) class.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) class.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) ~= (recoveredStack1).
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := (recoveredStack0) methodDecl.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := (recoveredStack1) methodDecl.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := (recoveredStack0) ~= (recoveredStack1).
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 26] ifFalse: [recoveredPC := 28].
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack0 := (recoveredStack0) arguments.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := (recoveredStack0) size.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := (recoveredStack1) arguments.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := (recoveredStack0) ~= (recoveredStack1).
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 40] ifFalse: [recoveredPC := 42].
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack0 := (recoveredStack0) arguments.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack1 := [:recoveredBlock44Arg1 :recoveredBlock44Arg2 | 
    | recoveredBlock44Stack0 recoveredBlock44Stack1 recoveredBlock44Stack2 recoveredBlock44Stack3 recoveredBlock44Stack4 recoveredBlock44Stack5 recoveredBlock44PC recoveredBlock44Step recoveredBlock44Done recoveredBlock44Result |
    recoveredBlock44Stack0 := self.
    recoveredBlock44PC := 50.
    recoveredBlock44Done := false.
    [recoveredBlock44Done not] whileTrue: [
        recoveredBlock44Step := recoveredBlock44PC.
        recoveredBlock44Step = 50 ifTrue: [
            recoveredBlock44Stack1 := nil.
            recoveredBlock44PC := 51.
        ].
        recoveredBlock44Step = 51 ifTrue: [
            recoveredBlock44Stack2 := recoveredArg1.
            recoveredBlock44PC := 54.
        ].
        recoveredBlock44Step = 54 ifTrue: [
            recoveredBlock44Stack2 := (recoveredBlock44Stack2) arguments.
            recoveredBlock44PC := 55.
        ].
        recoveredBlock44Step = 55 ifTrue: [
            recoveredBlock44Stack3 := recoveredBlock44Arg1.
            recoveredBlock44PC := 56.
        ].
        recoveredBlock44Step = 56 ifTrue: [
            recoveredBlock44Stack4 := [
    ^false
].
            recoveredBlock44PC := 64.
        ].
        recoveredBlock44Step = 64 ifTrue: [
            recoveredBlock44Stack2 := (recoveredBlock44Stack2) at: (recoveredBlock44Stack3) ifAbsent: (recoveredBlock44Stack4).
            recoveredBlock44PC := 66.
        ].
        recoveredBlock44Step = 66 ifTrue: [
            recoveredBlock44Stack3 := recoveredBlock44Arg2.
            recoveredBlock44PC := 67.
        ].
        recoveredBlock44Step = 67 ifTrue: [
            recoveredBlock44Stack2 := (recoveredBlock44Stack2) ~= (recoveredBlock44Stack3).
            recoveredBlock44PC := 68.
        ].
        recoveredBlock44Step = 68 ifTrue: [
            (recoveredBlock44Stack2) ifTrue: [recoveredBlock44PC := 72] ifFalse: [recoveredBlock44PC := 75].
        ].
        recoveredBlock44Step = 72 ifTrue: [
            recoveredBlock44PC := 73.
        ].
        recoveredBlock44Step = 73 ifTrue: [
            recoveredBlock44Stack1 := false.
            recoveredBlock44PC := 74.
        ].
        recoveredBlock44Step = 74 ifTrue: [
            ^recoveredBlock44Stack1
        ].
        recoveredBlock44Step = 75 ifTrue: [
            recoveredBlock44Result := recoveredBlock44Stack1.
            recoveredBlock44Done := true.
        ].
    ].
    recoveredBlock44Result
].
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            (recoveredStack0) keysAndValuesDo: (recoveredStack1).
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack0 := (recoveredStack0) receiver.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack1 := (recoveredStack1) receiver.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x204a7834; bytecode file offset 0xda4130"
!SGMdSideEffectMethodCall methodsFor: 'recovered'!
asDOM: recoveredArg1 context: recoveredArg2
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := super asDOM: (recoveredStack1) context: (recoveredStack2).
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := (recoveredStack0) methodDecl.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 34] ifFalse: [recoveredPC := 22].
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := 'noMethodDecl'.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack2 := true.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            (recoveredStack0) setAttribute: (recoveredStack1) value: (recoveredStack2).
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredPC := 53.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := (recoveredStack1) methodDecl.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack1 := (recoveredStack1) mdlName.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack2 := (recoveredStack2) methodDecl.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack2 := (recoveredStack2) scope.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack3 := (recoveredStack3) methodDecl.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack4 := recoveredLocal1.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            (recoveredStack0) addName: (recoveredStack1) scope: (recoveredStack2) method: (recoveredStack3) toElement: (recoveredStack4).
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack1 := (recoveredStack1) receiver.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack1 := (recoveredStack1) asDOM: (recoveredStack2) context: (recoveredStack3).
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            (recoveredStack0) appendChild: (recoveredStack1).
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack0 := (recoveredStack0) arguments.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack0 := (recoveredStack0) keys.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack1 := [:block28104e3cArg1 :block28104e3cArg2 | 
    | block28104e3cValue0 block28104e3cValue1 block28104e3cValue2 block28104e3cValue3 block28104e3cValue4 |
    block28104e3cValue0 := block28104e3cArg1.
    block28104e3cValue1 := (block28104e3cValue0) mdlLabel.
    block28104e3cValue2 := block28104e3cArg2.
    block28104e3cValue3 := (block28104e3cValue2) mdlLabel.
    block28104e3cValue4 := (block28104e3cValue1) < (block28104e3cValue3).
    block28104e3cValue4
].
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack0 := (recoveredStack0) asSortedCollection: (recoveredStack1).
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack1 := [:recoveredBlock90Arg1 | 
    | recoveredBlock90Local1 recoveredBlock90Local2 recoveredBlock90Value0 recoveredBlock90Value1 recoveredBlock90Value2 recoveredBlock90Value3 recoveredBlock90Value4 recoveredBlock90Value5 recoveredBlock90Value6 recoveredBlock90Value7 recoveredBlock90Value8 recoveredBlock90Value9 recoveredBlock90Value10 recoveredBlock90Value11 recoveredBlock90Value12 recoveredBlock90Value13 recoveredBlock90Value14 recoveredBlock90Value15 |
    recoveredBlock90Value0 := (self) arguments.
    recoveredBlock90Value1 := recoveredBlock90Arg1.
    recoveredBlock90Value2 := (recoveredBlock90Value0) at: (recoveredBlock90Value1).
    recoveredBlock90Local2 := recoveredBlock90Value2.
    recoveredBlock90Value3 := recoveredBlock90Arg1.
    recoveredBlock90Value4 := (self) methodDecl.
    recoveredBlock90Value5 := (self) methodDecl.
    recoveredBlock90Value6 := recoveredLocal1.
    recoveredBlock90Value7 := (self) varDeclElement: (recoveredBlock90Value3) ownerMethod: (recoveredBlock90Value4) method: (recoveredBlock90Value5) owner: (recoveredBlock90Value6).
    recoveredBlock90Local1 := recoveredBlock90Value7.
    recoveredBlock90Value8 := recoveredBlock90Local1.
    recoveredBlock90Value9 := recoveredBlock90Local2.
    recoveredBlock90Value10 := recoveredArg1.
    recoveredBlock90Value11 := recoveredArg2.
    recoveredBlock90Value12 := (recoveredBlock90Value9) asDOM: (recoveredBlock90Value10) context: (recoveredBlock90Value11).
    (recoveredBlock90Value8) appendChild: (recoveredBlock90Value12).
    recoveredBlock90Value13 := recoveredLocal1.
    recoveredBlock90Value14 := recoveredBlock90Local1.
    recoveredBlock90Value15 := (recoveredBlock90Value13) appendChild: (recoveredBlock90Value14).
    recoveredBlock90Value15
].
            recoveredPC := 134.
        ].
        recoveredStep = 134 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 136.
        ].
        recoveredStep = 136 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 139.
        ].
        recoveredStep = 139 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x204bf490; bytecode file offset 0xdbbd98"
!SGMdSideEffectMethodCall methodsFor: 'recovered'!
updateMethodDecls: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) receiver.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack0) updateMethodDecls: (recoveredStack1).
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) arguments.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := [:recoveredBlock12Arg1 :recoveredBlock12Arg2 | 
    | recoveredBlock12Value0 recoveredBlock12Value1 recoveredBlock12Value2 |
    recoveredBlock12Value0 := recoveredBlock12Arg2.
    recoveredBlock12Value1 := recoveredArg1.
    recoveredBlock12Value2 := (recoveredBlock12Value0) updateMethodDecls: (recoveredBlock12Value1).
    recoveredBlock12Value2
].
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            (recoveredStack0) keysAndValuesDo: (recoveredStack1).
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := (recoveredStack0) methodHasNoAnalysisInfo.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 147] ifFalse: [recoveredPC := 32].
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack0 := (recoveredStack0) methodDecl.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack0 := (recoveredStack0) scope.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack1 := (recoveredStack1) classId.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack2 := (recoveredStack2) implId.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack0 := (recoveredStack0) findClass: (recoveredStack1) impl: (recoveredStack2).
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack1 := [
    | recoveredBlock59Value0 recoveredBlock59Value1 |
    recoveredBlock59Value0 := recoveredLocal1.
    recoveredBlock59Value1 := (recoveredBlock59Value0) notNil.
    recoveredBlock59Value1
].
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack2 := [
    'The class interface is not found'
].
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            (recoveredStack0) ileAssert: (recoveredStack1) message: (recoveredStack2).
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 139] ifFalse: [recoveredPC := 88].
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack1 := (recoveredStack1) methods.
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack2 := [:recoveredBlock94Arg1 | 
    | recoveredBlock94Value0 recoveredBlock94Value1 recoveredBlock94Value2 recoveredBlock94Value3 recoveredBlock94Value4 |
    recoveredBlock94Value0 := recoveredBlock94Arg1.
    recoveredBlock94Value1 := (recoveredBlock94Value0) mdlName.
    recoveredBlock94Value2 := (self) methodDecl.
    recoveredBlock94Value3 := (recoveredBlock94Value2) mdlName.
    recoveredBlock94Value4 := (recoveredBlock94Value1) equals: (recoveredBlock94Value3).
    recoveredBlock94Value4
].
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            recoveredStack3 := [].
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            recoveredStack1 := (recoveredStack1) detect: (recoveredStack2) ifNone: (recoveredStack3).
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            (recoveredStack0) methodDecl: (recoveredStack1).
            recoveredPC := 117.
        ].
        recoveredStep = 117 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 118.
        ].
        recoveredStep = 118 ifTrue: [
            recoveredStack1 := [
    | recoveredBlock118Value0 recoveredBlock118Value1 |
    recoveredBlock118Value0 := (self) methodDecl.
    recoveredBlock118Value1 := (recoveredBlock118Value0) notNil.
    recoveredBlock118Value1
].
            recoveredPC := 128.
        ].
        recoveredStep = 128 ifTrue: [
            recoveredStack2 := [
    'The method decl is not found in the current class interface'
].
            recoveredPC := 130.
        ].
        recoveredStep = 130 ifTrue: [
            recoveredPC := 137.
        ].
        recoveredStep = 137 ifTrue: [
            (recoveredStack0) ileAssert: (recoveredStack1) message: (recoveredStack2).
            recoveredPC := 139.
        ].
        recoveredStep = 139 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 140.
        ].
        recoveredStep = 140 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 141.
        ].
        recoveredStep = 141 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 144.
        ].
        recoveredStep = 144 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 147.
        ].
        recoveredStep = 147 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 148.
        ].
        recoveredStep = 148 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x204c7f1c; bytecode file offset 0xdc4824"
!SGMdSideEffectMethodCall methodsFor: 'recovered'!
resolvedAccess: recoveredArg1 arguments: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) receiver.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) resolvedAccess: (recoveredStack1) arguments: (recoveredStack2).
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := LookupTable.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := (recoveredStack0) new.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := (recoveredStack0) arguments.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := [:recoveredBlock25Arg1 :recoveredBlock25Arg2 | 
    | recoveredBlock25Value0 recoveredBlock25Value1 recoveredBlock25Value2 recoveredBlock25Value3 recoveredBlock25Value4 recoveredBlock25Value5 recoveredBlock25Value6 |
    recoveredBlock25Value0 := recoveredLocal2.
    recoveredBlock25Value1 := recoveredBlock25Arg1.
    recoveredBlock25Value2 := recoveredBlock25Arg2.
    recoveredBlock25Value3 := recoveredArg1.
    recoveredBlock25Value4 := recoveredArg2.
    recoveredBlock25Value5 := (recoveredBlock25Value2) resolvedAccess: (recoveredBlock25Value3) arguments: (recoveredBlock25Value4).
    recoveredBlock25Value6 := (recoveredBlock25Value0) at: (recoveredBlock25Value1) put: (recoveredBlock25Value5).
    recoveredBlock25Value6
].
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            (recoveredStack0) keysAndValuesDo: (recoveredStack1).
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack0 := (recoveredStack0) methodHasNoAnalysisInfo.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 56] ifFalse: [recoveredPC := 92].
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack0 := (recoveredStack0) class.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack0 := (recoveredStack0) create.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            (recoveredStack1) receiver: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            (recoveredStack1) arguments: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack2 := (recoveredStack2) conditional.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            (recoveredStack1) conditional: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack2 := (recoveredStack2) hasValues.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            (recoveredStack1) hasValues: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredStack2 := (recoveredStack2) source.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            (recoveredStack1) source: (recoveredStack2).
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredStack0 := (recoveredStack0) methodDecl.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredStack0 := (recoveredStack0) analysisInfo.
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            recoveredStack0 := (recoveredStack0) sideEffects.
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            recoveredStack0 := (recoveredStack0) resolvedAccess: (recoveredStack1) arguments: (recoveredStack2).
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 114.
        ].
        recoveredStep = 114 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 117.
        ].
        recoveredStep = 117 ifTrue: [
            recoveredStack2 := (recoveredStack2) conditional.
            recoveredPC := 119.
        ].
        recoveredStep = 119 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 126] ifFalse: [recoveredPC := 122].
        ].
        recoveredStep = 122 ifTrue: [
            recoveredPC := 123.
        ].
        recoveredStep = 123 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 124.
        ].
        recoveredStep = 124 ifTrue: [
            recoveredStack1 := (recoveredStack1) conditional.
            recoveredPC := 126.
        ].
        recoveredStep = 126 ifTrue: [
            (recoveredStack0) conditional: (recoveredStack1).
            recoveredPC := 128.
        ].
        recoveredStep = 128 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 131.
        ].
        recoveredStep = 131 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 132.
        ].
        recoveredStep = 132 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 135.
        ].
        recoveredStep = 135 ifTrue: [
            recoveredStack2 := (recoveredStack2) hasValues.
            recoveredPC := 137.
        ].
        recoveredStep = 137 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 144] ifFalse: [recoveredPC := 140].
        ].
        recoveredStep = 140 ifTrue: [
            recoveredPC := 141.
        ].
        recoveredStep = 141 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 142.
        ].
        recoveredStep = 142 ifTrue: [
            recoveredStack1 := (recoveredStack1) hasValues.
            recoveredPC := 144.
        ].
        recoveredStep = 144 ifTrue: [
            (recoveredStack0) hasValues: (recoveredStack1).
            recoveredPC := 146.
        ].
        recoveredStep = 146 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 149.
        ].
        recoveredStep = 149 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x205331cc; bytecode file offset 0xe2fadc"
!SGMdSideEffectMethodCall methodsFor: 'recovered'!
fromDOM: recoveredArg1 in: recoveredArg2 context: recoveredArg3
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack3 := recoveredArg3.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            super fromDOM: (recoveredStack1) in: (recoveredStack2) context: (recoveredStack3).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := 'noMethodDecl'.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := (recoveredStack0) getAttribute: (recoveredStack1).
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := 'true'.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 62] ifFalse: [recoveredPC := 30].
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := SGMdMethodAnalysisInfo.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack2 := recoveredArg3.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := (recoveredStack0) getMethodDeclFrom: (recoveredStack1) context: (recoveredStack2).
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 52] ifFalse: [recoveredPC := 48].
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            (recoveredStack0) methodDecl: (recoveredStack1).
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack0 := LookupTable.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack0 := (recoveredStack0) new.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack0 := recoveredArg3.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack0 := (recoveredStack0) copy.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack2 := (recoveredStack2) methodDecl.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            (recoveredStack1) methodDecl: (recoveredStack2).
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack0 := (recoveredStack0) contents.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack1 := [:recoveredBlock88Arg1 | 
    | recoveredBlock88Local1 recoveredBlock88Local2 recoveredBlock88Local3 recoveredBlock88Stack0 recoveredBlock88Stack1 recoveredBlock88Stack2 recoveredBlock88Stack3 recoveredBlock88Stack4 recoveredBlock88PC recoveredBlock88Step recoveredBlock88Done recoveredBlock88Result |
    recoveredBlock88Stack0 := self.
    recoveredBlock88PC := 94.
    recoveredBlock88Done := false.
    [recoveredBlock88Done not] whileTrue: [
        recoveredBlock88Step := recoveredBlock88PC.
        recoveredBlock88Step = 94 ifTrue: [
            recoveredBlock88Stack0 := (recoveredBlock88Stack0) receiver.
            recoveredBlock88PC := 96.
        ].
        recoveredBlock88Step = 96 ifTrue: [
            (recoveredBlock88Stack0 ~~ nil) ifTrue: [recoveredBlock88PC := 128] ifFalse: [recoveredBlock88PC := 100].
        ].
        recoveredBlock88Step = 100 ifTrue: [
            recoveredBlock88Stack0 := SGMdAbstractSideEffectAccess.
            recoveredBlock88PC := 102.
        ].
        recoveredBlock88Step = 102 ifTrue: [
            recoveredBlock88Stack1 := recoveredBlock88Arg1.
            recoveredBlock88PC := 103.
        ].
        recoveredBlock88Step = 103 ifTrue: [
            recoveredBlock88Stack2 := recoveredArg2.
            recoveredBlock88PC := 106.
        ].
        recoveredBlock88Step = 106 ifTrue: [
            recoveredBlock88Stack3 := recoveredArg3.
            recoveredBlock88PC := 109.
        ].
        recoveredBlock88Step = 109 ifTrue: [
            recoveredBlock88Stack0 := (recoveredBlock88Stack0) fromDOM: (recoveredBlock88Stack1) in: (recoveredBlock88Stack2) context: (recoveredBlock88Stack3).
            recoveredBlock88PC := 112.
        ].
        recoveredBlock88Step = 112 ifTrue: [
            recoveredBlock88Stack1 := recoveredBlock88Stack0.
            recoveredBlock88PC := 113.
        ].
        recoveredBlock88Step = 113 ifTrue: [
            recoveredBlock88Local1 := recoveredBlock88Stack1.
            recoveredBlock88PC := 114.
        ].
        recoveredBlock88Step = 114 ifTrue: [
            (recoveredBlock88Stack0 ~~ nil) ifTrue: [recoveredBlock88PC := 120] ifFalse: [recoveredBlock88PC := 118].
        ].
        recoveredBlock88Step = 118 ifTrue: [
            recoveredBlock88Stack0 := recoveredBlock88Local1.
            recoveredBlock88PC := 119.
        ].
        recoveredBlock88Step = 119 ifTrue: [
            ^recoveredBlock88Stack0
        ].
        recoveredBlock88Step = 120 ifTrue: [
            recoveredBlock88Stack0 := self.
            recoveredBlock88PC := 121.
        ].
        recoveredBlock88Step = 121 ifTrue: [
            recoveredBlock88Stack1 := recoveredBlock88Local1.
            recoveredBlock88PC := 122.
        ].
        recoveredBlock88Step = 122 ifTrue: [
            recoveredBlock88Stack0 := (recoveredBlock88Stack0) receiver: (recoveredBlock88Stack1).
            recoveredBlock88PC := 124.
        ].
        recoveredBlock88Step = 124 ifTrue: [
            recoveredBlock88PC := 193.
        ].
        recoveredBlock88Step = 128 ifTrue: [
            recoveredBlock88Stack0 := SGMdMethodAnalysisInfo.
            recoveredBlock88PC := 130.
        ].
        recoveredBlock88Step = 130 ifTrue: [
            recoveredBlock88Stack1 := recoveredBlock88Arg1.
            recoveredBlock88PC := 131.
        ].
        recoveredBlock88Step = 131 ifTrue: [
            recoveredBlock88Stack2 := recoveredLocal2.
            recoveredBlock88PC := 134.
        ].
        recoveredBlock88Step = 134 ifTrue: [
            recoveredBlock88Stack0 := (recoveredBlock88Stack0) getVarDeclFrom: (recoveredBlock88Stack1) context: (recoveredBlock88Stack2).
            recoveredBlock88PC := 136.
        ].
        recoveredBlock88Step = 136 ifTrue: [
            recoveredBlock88Stack1 := recoveredBlock88Stack0.
            recoveredBlock88PC := 137.
        ].
        recoveredBlock88Step = 137 ifTrue: [
            recoveredBlock88Local3 := recoveredBlock88Stack1.
            recoveredBlock88PC := 138.
        ].
        recoveredBlock88Step = 138 ifTrue: [
            (recoveredBlock88Stack0 ~~ nil) ifTrue: [recoveredBlock88PC := 144] ifFalse: [recoveredBlock88PC := 142].
        ].
        recoveredBlock88Step = 142 ifTrue: [
            recoveredBlock88Stack0 := nil.
            recoveredBlock88PC := 143.
        ].
        recoveredBlock88Step = 143 ifTrue: [
            ^recoveredBlock88Stack0
        ].
        recoveredBlock88Step = 144 ifTrue: [
            recoveredBlock88Stack0 := recoveredBlock88Arg1.
            recoveredBlock88PC := 145.
        ].
        recoveredBlock88Step = 145 ifTrue: [
            recoveredBlock88Stack0 := (recoveredBlock88Stack0) contents.
            recoveredBlock88PC := 147.
        ].
        recoveredBlock88Step = 147 ifTrue: [
            recoveredBlock88Stack0 := (recoveredBlock88Stack0) size.
            recoveredBlock88PC := 149.
        ].
        recoveredBlock88Step = 149 ifTrue: [
            recoveredBlock88Stack1 := 1.
            recoveredBlock88PC := 151.
        ].
        recoveredBlock88Step = 151 ifTrue: [
            recoveredBlock88Stack0 := (recoveredBlock88Stack0) ~= (recoveredBlock88Stack1).
            recoveredBlock88PC := 152.
        ].
        recoveredBlock88Step = 152 ifTrue: [
            (recoveredBlock88Stack0) ifTrue: [recoveredBlock88PC := 156] ifFalse: [recoveredBlock88PC := 162].
        ].
        recoveredBlock88Step = 156 ifTrue: [
            recoveredBlock88Stack0 := recoveredArg3.
            recoveredBlock88PC := 159.
        ].
        recoveredBlock88Step = 159 ifTrue: [
            recoveredBlock88Stack0 := (recoveredBlock88Stack0) failedToLoadAnalysisInfo.
            recoveredBlock88PC := 161.
        ].
        recoveredBlock88Step = 161 ifTrue: [
            ^recoveredBlock88Stack0
        ].
        recoveredBlock88Step = 162 ifTrue: [
            recoveredBlock88Stack0 := SGMdAbstractSideEffectAccess.
            recoveredBlock88PC := 164.
        ].
        recoveredBlock88Step = 164 ifTrue: [
            recoveredBlock88Stack1 := recoveredBlock88Arg1.
            recoveredBlock88PC := 165.
        ].
        recoveredBlock88Step = 165 ifTrue: [
            recoveredBlock88Stack1 := (recoveredBlock88Stack1) contents.
            recoveredBlock88PC := 167.
        ].
        recoveredBlock88Step = 167 ifTrue: [
            recoveredBlock88Stack1 := (recoveredBlock88Stack1) first.
            recoveredBlock88PC := 169.
        ].
        recoveredBlock88Step = 169 ifTrue: [
            recoveredBlock88Stack2 := recoveredArg2.
            recoveredBlock88PC := 172.
        ].
        recoveredBlock88Step = 172 ifTrue: [
            recoveredBlock88Stack3 := recoveredArg3.
            recoveredBlock88PC := 175.
        ].
        recoveredBlock88Step = 175 ifTrue: [
            recoveredBlock88Stack0 := (recoveredBlock88Stack0) fromDOM: (recoveredBlock88Stack1) in: (recoveredBlock88Stack2) context: (recoveredBlock88Stack3).
            recoveredBlock88PC := 178.
        ].
        recoveredBlock88Step = 178 ifTrue: [
            recoveredBlock88Stack1 := recoveredBlock88Stack0.
            recoveredBlock88PC := 179.
        ].
        recoveredBlock88Step = 179 ifTrue: [
            recoveredBlock88Local2 := recoveredBlock88Stack1.
            recoveredBlock88PC := 180.
        ].
        recoveredBlock88Step = 180 ifTrue: [
            (recoveredBlock88Stack0 ~~ nil) ifTrue: [recoveredBlock88PC := 186] ifFalse: [recoveredBlock88PC := 184].
        ].
        recoveredBlock88Step = 184 ifTrue: [
            recoveredBlock88Stack0 := recoveredBlock88Local2.
            recoveredBlock88PC := 185.
        ].
        recoveredBlock88Step = 185 ifTrue: [
            ^recoveredBlock88Stack0
        ].
        recoveredBlock88Step = 186 ifTrue: [
            recoveredBlock88Stack0 := recoveredLocal3.
            recoveredBlock88PC := 189.
        ].
        recoveredBlock88Step = 189 ifTrue: [
            recoveredBlock88Stack1 := recoveredBlock88Local3.
            recoveredBlock88PC := 190.
        ].
        recoveredBlock88Step = 190 ifTrue: [
            recoveredBlock88Stack2 := recoveredBlock88Local2.
            recoveredBlock88PC := 191.
        ].
        recoveredBlock88Step = 191 ifTrue: [
            recoveredBlock88Stack0 := (recoveredBlock88Stack0) at: (recoveredBlock88Stack1) put: (recoveredBlock88Stack2).
            recoveredBlock88PC := 193.
        ].
        recoveredBlock88Step = 193 ifTrue: [
            recoveredBlock88Result := recoveredBlock88Stack0.
            recoveredBlock88Done := true.
        ].
    ].
    recoveredBlock88Result
].
            recoveredPC := 194.
        ].
        recoveredStep = 194 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 196.
        ].
        recoveredStep = 196 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 197.
        ].
        recoveredStep = 197 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 200.
        ].
        recoveredStep = 200 ifTrue: [
            (recoveredStack0) arguments: (recoveredStack1).
            recoveredPC := 202.
        ].
        recoveredStep = 202 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 203.
        ].
        recoveredStep = 203 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2054dd2c; bytecode file offset 0xe4a648"
!SGMdSideEffectMethodCall methodsFor: 'recovered'!
analyseSideEffects: recoveredArg1 arguments: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := OrderedCollection.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredLocal5 := recoveredStack1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := (recoveredStack2) receiver.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack4 := recoveredArg2.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack2 := (recoveredStack2) analyseSideEffects: (recoveredStack3) arguments: (recoveredStack4).
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            (recoveredStack1) add: (recoveredStack2).
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := (recoveredStack0) arguments.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := [:recoveredBlock27Arg1 :recoveredBlock27Arg2 | 
    | recoveredBlock27Value0 recoveredBlock27Value1 recoveredBlock27Value2 recoveredBlock27Value3 recoveredBlock27Value4 recoveredBlock27Value5 |
    recoveredBlock27Value0 := recoveredLocal5.
    recoveredBlock27Value1 := recoveredBlock27Arg2.
    recoveredBlock27Value2 := recoveredArg1.
    recoveredBlock27Value3 := recoveredArg2.
    recoveredBlock27Value4 := (recoveredBlock27Value1) analyseSideEffects: (recoveredBlock27Value2) arguments: (recoveredBlock27Value3).
    recoveredBlock27Value5 := (recoveredBlock27Value0) add: (recoveredBlock27Value4).
    recoveredBlock27Value5
].
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            (recoveredStack0) keysAndValuesDo: (recoveredStack1).
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack0 := SGMdUndefinedOrderSideEffectAnalysisInfo.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack2 := (recoveredStack2) source.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack0 := (recoveredStack0) create: (recoveredStack1) source: (recoveredStack2).
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredLocal4 := recoveredStack0.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack0 := (recoveredStack0) methodHasNoAnalysisInfo.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack0 := (recoveredStack0) analyseSideEffects: (recoveredStack1) arguments: (recoveredStack2).
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            (recoveredStack0) sequencePoint.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 204] ifFalse: [recoveredPC := 96].
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            recoveredStack0 := (recoveredStack0) methodDecl.
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            recoveredStack0 := (recoveredStack0) analysisInfo.
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            recoveredStack0 := (recoveredStack0) sideEffects.
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 142] ifFalse: [recoveredPC := 106].
        ].
        recoveredStep = 106 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            recoveredStack1 := [
    false
].
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            recoveredPC := 114.
        ].
        recoveredStep = 114 ifTrue: [
            recoveredStack2 := [
    'No analysis information available, but there should be'
].
            recoveredPC := 116.
        ].
        recoveredStep = 116 ifTrue: [
            recoveredPC := 123.
        ].
        recoveredStep = 123 ifTrue: [
            (recoveredStack0) ileAssert: (recoveredStack1) message: (recoveredStack2).
            recoveredPC := 125.
        ].
        recoveredStep = 125 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 126.
        ].
        recoveredStep = 126 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 129.
        ].
        recoveredStep = 129 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 132.
        ].
        recoveredStep = 132 ifTrue: [
            recoveredStack3 := recoveredLocal2.
            recoveredPC := 135.
        ].
        recoveredStep = 135 ifTrue: [
            (recoveredStack0) analyseSideEffects: (recoveredStack1) arguments: (recoveredStack2) noMethodDecl: (recoveredStack3).
            recoveredPC := 138.
        ].
        recoveredStep = 138 ifTrue: [
            recoveredPC := 196.
        ].
        recoveredStep = 142 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 143.
        ].
        recoveredStep = 143 ifTrue: [
            recoveredStack0 := (recoveredStack0) methodDecl.
            recoveredPC := 145.
        ].
        recoveredStep = 145 ifTrue: [
            recoveredStack0 := (recoveredStack0) analysisInfo.
            recoveredPC := 147.
        ].
        recoveredStep = 147 ifTrue: [
            recoveredStack0 := (recoveredStack0) sideEffects.
            recoveredPC := 149.
        ].
        recoveredStep = 149 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 150.
        ].
        recoveredStep = 150 ifTrue: [
            recoveredStack1 := (recoveredStack1) receiver.
            recoveredPC := 151.
        ].
        recoveredStep = 151 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 154.
        ].
        recoveredStep = 154 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 157.
        ].
        recoveredStep = 157 ifTrue: [
            recoveredStack1 := (recoveredStack1) resolvedAccess: (recoveredStack2) arguments: (recoveredStack3).
            recoveredPC := 159.
        ].
        recoveredStep = 159 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 160.
        ].
        recoveredStep = 160 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 163.
        ].
        recoveredStep = 163 ifTrue: [
            recoveredStack4 := recoveredArg2.
            recoveredPC := 166.
        ].
        recoveredStep = 166 ifTrue: [
            recoveredStack2 := (recoveredStack2) argumentAccess: (recoveredStack3) arguments: (recoveredStack4).
            recoveredPC := 168.
        ].
        recoveredStep = 168 ifTrue: [
            recoveredStack0 := (recoveredStack0) analyseSideEffects: (recoveredStack1) arguments: (recoveredStack2).
            recoveredPC := 170.
        ].
        recoveredStep = 170 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 173.
        ].
        recoveredStep = 173 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 176.
        ].
        recoveredStep = 176 ifTrue: [
            (recoveredStack0) removeLocalVariables.
            recoveredPC := 178.
        ].
        recoveredStep = 178 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 181.
        ].
        recoveredStep = 181 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 182.
        ].
        recoveredStep = 182 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 185.
        ].
        recoveredStep = 185 ifTrue: [
            (recoveredStack1) mergeInfo: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 188.
        ].
        recoveredStep = 188 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 191.
        ].
        recoveredStep = 191 ifTrue: [
            recoveredStack2 := (recoveredStack2) values.
            recoveredPC := 193.
        ].
        recoveredStep = 193 ifTrue: [
            (recoveredStack1) addAllValues: (recoveredStack2).
            recoveredPC := 195.
        ].
        recoveredStep = 195 ifTrue: [
            recoveredPC := 196.
        ].
        recoveredStep = 196 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 197.
        ].
        recoveredStep = 197 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 200.
        ].
        recoveredStep = 200 ifTrue: [
            recoveredPC := 217.
        ].
        recoveredStep = 204 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 205.
        ].
        recoveredStep = 205 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 208.
        ].
        recoveredStep = 208 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 211.
        ].
        recoveredStep = 211 ifTrue: [
            recoveredStack3 := recoveredLocal2.
            recoveredPC := 214.
        ].
        recoveredStep = 214 ifTrue: [
            (recoveredStack0) analyseSideEffects: (recoveredStack1) arguments: (recoveredStack2) noMethodDecl: (recoveredStack3).
            recoveredPC := 217.
        ].
        recoveredStep = 217 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 220.
        ].
        recoveredStep = 220 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x205c816c; bytecode file offset 0xec4aa8"
!SGMdSideEffectMethodCall methodsFor: 'recovered'!
analyseSideEffects: recoveredArg1 arguments: recoveredArg2 noMethodDecl: recoveredArg3
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 |
    recoveredValue0 := OrderedCollection.
    recoveredValue1 := (recoveredValue0) new.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := (self) arguments.
    recoveredValue3 := [:recoveredBlock11Arg1 :recoveredBlock11Arg2 | 
    | recoveredBlock11Local1 recoveredBlock11Local2 recoveredBlock11Local3 recoveredBlock11Stack0 recoveredBlock11Stack1 recoveredBlock11Stack2 recoveredBlock11Stack3 recoveredBlock11Stack4 recoveredBlock11PC recoveredBlock11Step recoveredBlock11Done recoveredBlock11Result |
    recoveredBlock11Stack0 := self.
    recoveredBlock11PC := 18.
    recoveredBlock11Done := false.
    [recoveredBlock11Done not] whileTrue: [
        recoveredBlock11Step := recoveredBlock11PC.
        recoveredBlock11Step = 18 ifTrue: [
            recoveredBlock11Stack1 := recoveredBlock11Arg1.
            recoveredBlock11PC := 21.
        ].
        recoveredBlock11Step = 21 ifTrue: [
            recoveredBlock11Stack1 := (recoveredBlock11Stack1) mdlClass.
            recoveredBlock11PC := 22.
        ].
        recoveredBlock11Step = 22 ifTrue: [
            (recoveredBlock11Stack1 ~~ nil) ifTrue: [recoveredBlock11PC := 30] ifFalse: [recoveredBlock11PC := 26].
        ].
        recoveredBlock11Step = 26 ifTrue: [
            recoveredBlock11Stack1 := nil.
            recoveredBlock11PC := 27.
        ].
        recoveredBlock11Step = 27 ifTrue: [
            recoveredBlock11PC := 306.
        ].
        recoveredBlock11Step = 30 ifTrue: [
            recoveredBlock11Stack1 := recoveredBlock11Arg1.
            recoveredBlock11PC := 33.
        ].
        recoveredBlock11Step = 33 ifTrue: [
            recoveredBlock11Stack1 := (recoveredBlock11Stack1) mdlClass.
            recoveredBlock11PC := 34.
        ].
        recoveredBlock11Step = 34 ifTrue: [
            recoveredBlock11Stack1 := (recoveredBlock11Stack1) isMdlTypeNeedsReference.
            recoveredBlock11PC := 36.
        ].
        recoveredBlock11Step = 36 ifTrue: [
            (recoveredBlock11Stack1) ifTrue: [recoveredBlock11PC := 40] ifFalse: [recoveredBlock11PC := 144].
        ].
        recoveredBlock11Step = 40 ifTrue: [
            recoveredBlock11Stack1 := recoveredBlock11Arg1.
            recoveredBlock11PC := 43.
        ].
        recoveredBlock11Step = 43 ifTrue: [
            recoveredBlock11Stack1 := (recoveredBlock11Stack1) mdlClass.
            recoveredBlock11PC := 44.
        ].
        recoveredBlock11Step = 44 ifTrue: [
            recoveredBlock11Stack1 := (recoveredBlock11Stack1) isMdlArray.
            recoveredBlock11PC := 46.
        ].
        recoveredBlock11Step = 46 ifTrue: [
            (recoveredBlock11Stack1) ifTrue: [recoveredBlock11PC := 60] ifFalse: [recoveredBlock11PC := 50].
        ].
        recoveredBlock11Step = 50 ifTrue: [
            recoveredBlock11Stack1 := recoveredBlock11Arg1.
            recoveredBlock11PC := 53.
        ].
        recoveredBlock11Step = 53 ifTrue: [
            recoveredBlock11Stack1 := (recoveredBlock11Stack1) mdlClass.
            recoveredBlock11PC := 54.
        ].
        recoveredBlock11Step = 54 ifTrue: [
            recoveredBlock11Stack1 := (recoveredBlock11Stack1) isMdlMatrix.
            recoveredBlock11PC := 56.
        ].
        recoveredBlock11Step = 56 ifTrue: [
            (recoveredBlock11Stack1) ifTrue: [recoveredBlock11PC := 60] ifFalse: [recoveredBlock11PC := 76].
        ].
        recoveredBlock11Step = 60 ifTrue: [
            recoveredBlock11Stack1 := self.
            recoveredBlock11PC := 61.
        ].
        recoveredBlock11Step = 61 ifTrue: [
            recoveredBlock11Stack2 := recoveredBlock11Arg2.
            recoveredBlock11PC := 64.
        ].
        recoveredBlock11Step = 64 ifTrue: [
            recoveredBlock11Stack3 := recoveredBlock11Arg1.
            recoveredBlock11PC := 67.
        ].
        recoveredBlock11Step = 67 ifTrue: [
            recoveredBlock11Stack3 := (recoveredBlock11Stack3) mdlClass.
            recoveredBlock11PC := 68.
        ].
        recoveredBlock11Step = 68 ifTrue: [
            recoveredBlock11Stack1 := (recoveredBlock11Stack1) anyArrayIndexAccess: (recoveredBlock11Stack2) mdlClass: (recoveredBlock11Stack3).
            recoveredBlock11PC := 70.
        ].
        recoveredBlock11Step = 70 ifTrue: [
            recoveredBlock11Local3 := recoveredBlock11Stack1.
            recoveredBlock11PC := 73.
        ].
        recoveredBlock11Step = 73 ifTrue: [
            recoveredBlock11PC := 141.
        ].
        recoveredBlock11Step = 76 ifTrue: [
            recoveredBlock11Stack1 := recoveredBlock11Arg1.
            recoveredBlock11PC := 79.
        ].
        recoveredBlock11Step = 79 ifTrue: [
            recoveredBlock11Stack1 := (recoveredBlock11Stack1) mdlClass.
            recoveredBlock11PC := 80.
        ].
        recoveredBlock11Step = 80 ifTrue: [
            recoveredBlock11Stack1 := (recoveredBlock11Stack1) isMdlComplexClassNoEnumType.
            recoveredBlock11PC := 82.
        ].
        recoveredBlock11Step = 82 ifTrue: [
            (recoveredBlock11Stack1) ifTrue: [recoveredBlock11PC := 86] ifFalse: [recoveredBlock11PC := 98].
        ].
        recoveredBlock11Step = 86 ifTrue: [
            recoveredBlock11Stack1 := self.
            recoveredBlock11PC := 87.
        ].
        recoveredBlock11Step = 87 ifTrue: [
            recoveredBlock11Stack2 := recoveredBlock11Arg2.
            recoveredBlock11PC := 90.
        ].
        recoveredBlock11Step = 90 ifTrue: [
            recoveredBlock11Stack1 := (recoveredBlock11Stack1) anyRecordFieldAccess: (recoveredBlock11Stack2).
            recoveredBlock11PC := 92.
        ].
        recoveredBlock11Step = 92 ifTrue: [
            recoveredBlock11Local3 := recoveredBlock11Stack1.
            recoveredBlock11PC := 95.
        ].
        recoveredBlock11Step = 95 ifTrue: [
            recoveredBlock11PC := 141.
        ].
        recoveredBlock11Step = 98 ifTrue: [
            recoveredBlock11Stack1 := self.
            recoveredBlock11PC := 99.
        ].
        recoveredBlock11Step = 99 ifTrue: [
            recoveredBlock11Stack2 := [
    | recoveredBlock11Block99Stack0 recoveredBlock11Block99Stack1 recoveredBlock11Block99Stack2 recoveredBlock11Block99Stack3 recoveredBlock11Block99PC recoveredBlock11Block99Step recoveredBlock11Block99Done recoveredBlock11Block99Result |
    recoveredBlock11Block99Stack0 := nil.
    recoveredBlock11Block99PC := 106.
    recoveredBlock11Block99Done := false.
    [recoveredBlock11Block99Done not] whileTrue: [
        recoveredBlock11Block99Step := recoveredBlock11Block99PC.
        recoveredBlock11Block99Step = 106 ifTrue: [
            recoveredBlock11Block99Stack1 := true.
            recoveredBlock11Block99PC := 107.
        ].
        recoveredBlock11Block99Step = 107 ifTrue: [
            recoveredBlock11Block99Stack2 := recoveredBlock11Arg1.
            recoveredBlock11Block99PC := 110.
        ].
        recoveredBlock11Block99Step = 110 ifTrue: [
            recoveredBlock11Block99Stack2 := (recoveredBlock11Block99Stack2) mdlClass.
            recoveredBlock11Block99PC := 111.
        ].
        recoveredBlock11Block99Step = 111 ifTrue: [
            recoveredBlock11Block99Stack2 := (recoveredBlock11Block99Stack2) isMdlCharTable.
            recoveredBlock11Block99PC := 113.
        ].
        recoveredBlock11Block99Step = 113 ifTrue: [
            (recoveredBlock11Block99Stack2) ifTrue: [recoveredBlock11Block99PC := 123] ifFalse: [recoveredBlock11Block99PC := 116].
        ].
        recoveredBlock11Block99Step = 116 ifTrue: [
            recoveredBlock11Block99PC := 117.
        ].
        recoveredBlock11Block99Step = 117 ifTrue: [
            recoveredBlock11Block99Stack1 := recoveredBlock11Arg1.
            recoveredBlock11Block99PC := 120.
        ].
        recoveredBlock11Block99Step = 120 ifTrue: [
            recoveredBlock11Block99Stack1 := (recoveredBlock11Block99Stack1) mdlClass.
            recoveredBlock11Block99PC := 121.
        ].
        recoveredBlock11Block99Step = 121 ifTrue: [
            recoveredBlock11Block99Stack1 := (recoveredBlock11Block99Stack1) isMdlDistribution.
            recoveredBlock11Block99PC := 123.
        ].
        recoveredBlock11Block99Step = 123 ifTrue: [
            recoveredBlock11Block99Result := recoveredBlock11Block99Stack1.
            recoveredBlock11Block99Done := true.
        ].
    ].
    recoveredBlock11Block99Result
].
            recoveredBlock11PC := 124.
        ].
        recoveredBlock11Step = 124 ifTrue: [
            recoveredBlock11Stack3 := [
    'Char table or distribution expected'
].
            recoveredBlock11PC := 126.
        ].
        recoveredBlock11Step = 126 ifTrue: [
            recoveredBlock11PC := 133.
        ].
        recoveredBlock11Step = 133 ifTrue: [
            (recoveredBlock11Stack1) ileAssert: (recoveredBlock11Stack2) message: (recoveredBlock11Stack3).
            recoveredBlock11PC := 135.
        ].
        recoveredBlock11Step = 135 ifTrue: [
            recoveredBlock11Stack1 := recoveredBlock11Arg2.
            recoveredBlock11PC := 138.
        ].
        recoveredBlock11Step = 138 ifTrue: [
            recoveredBlock11Local3 := recoveredBlock11Stack1.
            recoveredBlock11PC := 141.
        ].
        recoveredBlock11Step = 141 ifTrue: [
            recoveredBlock11PC := 150.
        ].
        recoveredBlock11Step = 144 ifTrue: [
            recoveredBlock11Stack1 := recoveredBlock11Arg2.
            recoveredBlock11PC := 147.
        ].
        recoveredBlock11Step = 147 ifTrue: [
            recoveredBlock11Local3 := recoveredBlock11Stack1.
            recoveredBlock11PC := 150.
        ].
        recoveredBlock11Step = 150 ifTrue: [
            recoveredBlock11Stack1 := self.
            recoveredBlock11PC := 151.
        ].
        recoveredBlock11Step = 151 ifTrue: [
            recoveredBlock11Stack1 := (recoveredBlock11Stack1) analysisInfo.
            recoveredBlock11PC := 153.
        ].
        recoveredBlock11Step = 153 ifTrue: [
            recoveredBlock11Local2 := recoveredBlock11Stack1.
            recoveredBlock11PC := 156.
        ].
        recoveredBlock11Step = 156 ifTrue: [
            recoveredBlock11Stack1 := recoveredBlock11Arg1.
            recoveredBlock11PC := 159.
        ].
        recoveredBlock11Step = 159 ifTrue: [
            recoveredBlock11Stack1 := (recoveredBlock11Stack1) isMdlArgumentUsageIn.
            recoveredBlock11PC := 161.
        ].
        recoveredBlock11Step = 161 ifTrue: [
            (recoveredBlock11Stack1) ifTrue: [recoveredBlock11PC := 164] ifFalse: [recoveredBlock11PC := 184].
        ].
        recoveredBlock11Step = 164 ifTrue: [
            recoveredBlock11Stack1 := recoveredBlock11Arg1.
            recoveredBlock11PC := 167.
        ].
        recoveredBlock11Step = 167 ifTrue: [
            recoveredBlock11Stack1 := (recoveredBlock11Stack1) mdlClass.
            recoveredBlock11PC := 168.
        ].
        recoveredBlock11Step = 168 ifTrue: [
            recoveredBlock11Stack1 := (recoveredBlock11Stack1) isMdlBaseClassType.
            recoveredBlock11PC := 170.
        ].
        recoveredBlock11Step = 170 ifTrue: [
            (recoveredBlock11Stack1) ifTrue: [recoveredBlock11PC := 198] ifFalse: [recoveredBlock11PC := 174].
        ].
        recoveredBlock11Step = 174 ifTrue: [
            recoveredBlock11Stack1 := recoveredBlock11Arg1.
            recoveredBlock11PC := 177.
        ].
        recoveredBlock11Step = 177 ifTrue: [
            recoveredBlock11Stack1 := (recoveredBlock11Stack1) mdlClass.
            recoveredBlock11PC := 178.
        ].
        recoveredBlock11Step = 178 ifTrue: [
            recoveredBlock11Stack1 := (recoveredBlock11Stack1) isMdlEnumType.
            recoveredBlock11PC := 180.
        ].
        recoveredBlock11Step = 180 ifTrue: [
            (recoveredBlock11Stack1) ifTrue: [recoveredBlock11PC := 198] ifFalse: [recoveredBlock11PC := 184].
        ].
        recoveredBlock11Step = 184 ifTrue: [
            recoveredBlock11Stack1 := recoveredBlock11Local3.
            recoveredBlock11PC := 187.
        ].
        recoveredBlock11Step = 187 ifTrue: [
            recoveredBlock11Stack2 := recoveredArg1.
            recoveredBlock11PC := 190.
        ].
        recoveredBlock11Step = 190 ifTrue: [
            recoveredBlock11Stack3 := recoveredArg2.
            recoveredBlock11PC := 193.
        ].
        recoveredBlock11Step = 193 ifTrue: [
            recoveredBlock11Stack1 := (recoveredBlock11Stack1) analyseWriteSideEffects: (recoveredBlock11Stack2) arguments: (recoveredBlock11Stack3).
            recoveredBlock11PC := 195.
        ].
        recoveredBlock11Step = 195 ifTrue: [
            recoveredBlock11Local1 := recoveredBlock11Stack1.
            recoveredBlock11PC := 198.
        ].
        recoveredBlock11Step = 198 ifTrue: [
            recoveredBlock11Stack1 := recoveredBlock11Arg1.
            recoveredBlock11PC := 201.
        ].
        recoveredBlock11Step = 201 ifTrue: [
            recoveredBlock11Stack1 := (recoveredBlock11Stack1) isMdlArgumentUsageIn.
            recoveredBlock11PC := 203.
        ].
        recoveredBlock11Step = 203 ifTrue: [
            (recoveredBlock11Stack1) ifTrue: [recoveredBlock11PC := 206] ifFalse: [recoveredBlock11PC := 238].
        ].
        recoveredBlock11Step = 206 ifTrue: [
            recoveredBlock11Stack1 := recoveredBlock11Arg1.
            recoveredBlock11PC := 209.
        ].
        recoveredBlock11Step = 209 ifTrue: [
            recoveredBlock11Stack1 := (recoveredBlock11Stack1) mdlClass.
            recoveredBlock11PC := 210.
        ].
        recoveredBlock11Step = 210 ifTrue: [
            recoveredBlock11Stack1 := (recoveredBlock11Stack1) isMdlBaseClassType.
            recoveredBlock11PC := 212.
        ].
        recoveredBlock11Step = 212 ifTrue: [
            (recoveredBlock11Stack1) ifTrue: [recoveredBlock11PC := 238] ifFalse: [recoveredBlock11PC := 216].
        ].
        recoveredBlock11Step = 216 ifTrue: [
            recoveredBlock11Stack1 := recoveredBlock11Arg1.
            recoveredBlock11PC := 219.
        ].
        recoveredBlock11Step = 219 ifTrue: [
            recoveredBlock11Stack1 := (recoveredBlock11Stack1) mdlClass.
            recoveredBlock11PC := 220.
        ].
        recoveredBlock11Step = 220 ifTrue: [
            recoveredBlock11Stack1 := (recoveredBlock11Stack1) isMdlEnumType.
            recoveredBlock11PC := 222.
        ].
        recoveredBlock11Step = 222 ifTrue: [
            (recoveredBlock11Stack1) ifTrue: [recoveredBlock11PC := 238] ifFalse: [recoveredBlock11PC := 226].
        ].
        recoveredBlock11Step = 226 ifTrue: [
            recoveredBlock11Stack1 := recoveredBlock11Local2.
            recoveredBlock11PC := 229.
        ].
        recoveredBlock11Step = 229 ifTrue: [
            recoveredBlock11Stack2 := recoveredBlock11Local1.
            recoveredBlock11PC := 232.
        ].
        recoveredBlock11Step = 232 ifTrue: [
            recoveredBlock11Stack2 := (recoveredBlock11Stack2) lValue.
            recoveredBlock11PC := 234.
        ].
        recoveredBlock11Step = 234 ifTrue: [
            recoveredBlock11Stack2 := (recoveredBlock11Stack2) asConditionalInfo.
            recoveredBlock11PC := 236.
        ].
        recoveredBlock11Step = 236 ifTrue: [
            (recoveredBlock11Stack1) addReadAccess: (recoveredBlock11Stack2).
            recoveredBlock11PC := 238.
        ].
        recoveredBlock11Step = 238 ifTrue: [
            recoveredBlock11Stack1 := recoveredBlock11Arg1.
            recoveredBlock11PC := 241.
        ].
        recoveredBlock11Step = 241 ifTrue: [
            recoveredBlock11Stack1 := (recoveredBlock11Stack1) isMdlArgumentUsageOut.
            recoveredBlock11PC := 243.
        ].
        recoveredBlock11Step = 243 ifTrue: [
            (recoveredBlock11Stack1) ifTrue: [recoveredBlock11PC := 246] ifFalse: [recoveredBlock11PC := 256].
        ].
        recoveredBlock11Step = 246 ifTrue: [
            recoveredBlock11Stack1 := recoveredBlock11Local2.
            recoveredBlock11PC := 249.
        ].
        recoveredBlock11Step = 249 ifTrue: [
            recoveredBlock11Stack2 := recoveredBlock11Local1.
            recoveredBlock11PC := 252.
        ].
        recoveredBlock11Step = 252 ifTrue: [
            recoveredBlock11Stack2 := (recoveredBlock11Stack2) lValue.
            recoveredBlock11PC := 254.
        ].
        recoveredBlock11Step = 254 ifTrue: [
            (recoveredBlock11Stack1) addPendingWriteAccess: (recoveredBlock11Stack2).
            recoveredBlock11PC := 256.
        ].
        recoveredBlock11Step = 256 ifTrue: [
            recoveredBlock11Stack1 := recoveredBlock11Arg1.
            recoveredBlock11PC := 259.
        ].
        recoveredBlock11Step = 259 ifTrue: [
            recoveredBlock11Stack1 := (recoveredBlock11Stack1) isMdlArgumentUsageInOut.
            recoveredBlock11PC := 261.
        ].
        recoveredBlock11Step = 261 ifTrue: [
            (recoveredBlock11Stack1) ifTrue: [recoveredBlock11PC := 264] ifFalse: [recoveredBlock11PC := 286].
        ].
        recoveredBlock11Step = 264 ifTrue: [
            recoveredBlock11Stack1 := recoveredBlock11Local2.
            recoveredBlock11PC := 267.
        ].
        recoveredBlock11Step = 267 ifTrue: [
            recoveredBlock11Stack2 := recoveredBlock11Stack1.
            recoveredBlock11PC := 268.
        ].
        recoveredBlock11Step = 268 ifTrue: [
            recoveredBlock11Stack3 := recoveredBlock11Local1.
            recoveredBlock11PC := 271.
        ].
        recoveredBlock11Step = 271 ifTrue: [
            recoveredBlock11Stack3 := (recoveredBlock11Stack3) lValue.
            recoveredBlock11PC := 273.
        ].
        recoveredBlock11Step = 273 ifTrue: [
            recoveredBlock11Stack3 := (recoveredBlock11Stack3) asConditionalInfo.
            recoveredBlock11PC := 275.
        ].
        recoveredBlock11Step = 275 ifTrue: [
            (recoveredBlock11Stack2) addPendingWriteAccess: (recoveredBlock11Stack3).
            recoveredBlock11PC := 277.
        ].
        recoveredBlock11Step = 277 ifTrue: [
            recoveredBlock11Stack2 := recoveredBlock11Local1.
            recoveredBlock11PC := 280.
        ].
        recoveredBlock11Step = 280 ifTrue: [
            recoveredBlock11Stack2 := (recoveredBlock11Stack2) lValue.
            recoveredBlock11PC := 282.
        ].
        recoveredBlock11Step = 282 ifTrue: [
            recoveredBlock11Stack2 := (recoveredBlock11Stack2) asConditionalInfo.
            recoveredBlock11PC := 284.
        ].
        recoveredBlock11Step = 284 ifTrue: [
            (recoveredBlock11Stack1) addReadAccess: (recoveredBlock11Stack2).
            recoveredBlock11PC := 286.
        ].
        recoveredBlock11Step = 286 ifTrue: [
            recoveredBlock11Stack1 := recoveredLocal1.
            recoveredBlock11PC := 289.
        ].
        recoveredBlock11Step = 289 ifTrue: [
            recoveredBlock11Stack2 := recoveredBlock11Local2.
            recoveredBlock11PC := 292.
        ].
        recoveredBlock11Step = 292 ifTrue: [
            recoveredBlock11Stack1 := (recoveredBlock11Stack1) add: (recoveredBlock11Stack2).
            recoveredBlock11PC := 294.
        ].
        recoveredBlock11Step = 294 ifTrue: [
            recoveredBlock11Stack2 := nil.
            recoveredBlock11PC := 295.
        ].
        recoveredBlock11Step = 295 ifTrue: [
            recoveredBlock11Stack3 := recoveredBlock11Stack2.
            recoveredBlock11PC := 296.
        ].
        recoveredBlock11Step = 296 ifTrue: [
            recoveredBlock11Local3 := recoveredBlock11Stack3.
            recoveredBlock11PC := 299.
        ].
        recoveredBlock11Step = 299 ifTrue: [
            recoveredBlock11Stack3 := recoveredBlock11Stack2.
            recoveredBlock11PC := 300.
        ].
        recoveredBlock11Step = 300 ifTrue: [
            recoveredBlock11Local2 := recoveredBlock11Stack3.
            recoveredBlock11PC := 303.
        ].
        recoveredBlock11Step = 303 ifTrue: [
            recoveredBlock11Local1 := recoveredBlock11Stack2.
            recoveredBlock11PC := 306.
        ].
        recoveredBlock11Step = 306 ifTrue: [
            recoveredBlock11Result := recoveredBlock11Stack1.
            recoveredBlock11Done := true.
        ].
    ].
    recoveredBlock11Result
].
    (recoveredValue2) keysAndValuesDo: (recoveredValue3).
    recoveredValue4 := recoveredArg3.
    recoveredValue5 := SGMdUndefinedOrderSideEffectAnalysisInfo.
    recoveredValue6 := recoveredLocal1.
    recoveredValue7 := (self) source.
    recoveredValue8 := (recoveredValue5) create: (recoveredValue6) source: (recoveredValue7).
    recoveredValue9 := recoveredArg1.
    recoveredValue10 := recoveredArg2.
    recoveredValue11 := (recoveredValue8) analyseSideEffects: (recoveredValue9) arguments: (recoveredValue10).
    (recoveredValue4) mergeInfo: (recoveredValue11).
    recoveredValue12 := recoveredArg3.
    (recoveredValue12) sequencePoint.
    ^self
! !

