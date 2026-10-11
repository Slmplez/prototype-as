"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20002fc8; bytecode file offset 0x8ffcfc"
!SGMdPackedExprAssignment methodsFor: 'recovered'!
asMdlVariableArray
    ^self
! !

"ASDBase.ic method 0x20026b18; bytecode file offset 0x923928"
!SGMdPackedExprAssignment methodsFor: 'recovered'!
errLabel
    ^'(PackedExprAssignment)'
! !

"ASDBase.ic method 0x20055188; bytecode file offset 0x952a9c"
!SGMdPackedExprAssignment methodsFor: 'recovered'!
mdlAcceptNodeVisitor: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) mdlPackedExprAssignment: (self).
    ^recoveredValue1
! !

"ASDBase.ic method 0x2006a66c; bytecode file offset 0x967a18"
!SGMdPackedExprAssignment methodsFor: 'recovered'!
exprs
    | recoveredValue0 |
    recoveredValue0 := exprs.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006b7d0; bytecode file offset 0x96873c"
!SGMdPackedExprAssignment methodsFor: 'recovered'!
mdlClass
    | recoveredValue0 |
    recoveredValue0 := mdlClass.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200733d0; bytecode file offset 0x970b34"
!SGMdPackedExprAssignment methodsFor: 'recovered'!
mdlReferenceVarDecl
    ^nil
! !

"ASDBase.ic method 0x20075394; bytecode file offset 0x9757c8"
!SGMdPackedExprAssignment methodsFor: 'recovered'!
isMdlPackedExprAssignment
    ^true
! !

"ASDBase.ic method 0x200c1794; bytecode file offset 0x9beac8"
!SGMdPackedExprAssignment methodsFor: 'recovered'!
exprs: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    exprs := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c27c0; bytecode file offset 0x9bf474"
!SGMdPackedExprAssignment methodsFor: 'recovered'!
mdlClass: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    mdlClass := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200f74ac; bytecode file offset 0x9f4e38"
!SGMdPackedExprAssignment methodsFor: 'recovered'!
evaluateMdlConstantValue
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) exprs.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := [:block280c4500Arg1 | 
    | block280c4500Value0 block280c4500Value1 |
    block280c4500Value0 := block280c4500Arg1.
    block280c4500Value1 := (block280c4500Value0) evaluateMdlConstantValue.
    block280c4500Value1
].
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) collect: (recoveredStack1).
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20180760; bytecode file offset 0xa7d02c"
!SGMdPackedExprAssignment methodsFor: 'recovered'!
mdlNativeInitValue
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := 'evaluateMdlConstantValue'.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack0) assertDeprecated: (recoveredStack1).
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) exprs.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := [:block280d00bcArg1 | 
    | block280d00bcValue0 block280d00bcValue1 |
    block280d00bcValue0 := block280d00bcArg1.
    block280d00bcValue1 := (block280d00bcValue0) mdlNativeInitValue.
    block280d00bcValue1
].
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := (recoveredStack0) collect: (recoveredStack1).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x202ff9f4; bytecode file offset 0xbfc2c8"
!SGMdPackedExprAssignment methodsFor: 'recovered'!
errLabelInitValue
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := (self) reserveTempStream.
    recoveredLocal1 := recoveredValue0.
    recoveredValue1 := recoveredLocal1.
    (recoveredValue1) nextPut: ($().
    recoveredValue2 := (self) exprs.
    recoveredValue3 := [:recoveredBlock18Arg1 | 
    | recoveredBlock18Value0 recoveredBlock18Value1 recoveredBlock18Value2 recoveredBlock18Value3 recoveredBlock18Value4 |
    recoveredBlock18Value0 := recoveredLocal1.
    recoveredBlock18Value1 := recoveredBlock18Value0.
    recoveredBlock18Value2 := recoveredBlock18Arg1.
    recoveredBlock18Value3 := (recoveredBlock18Value2) errLabelInitValue.
    (recoveredBlock18Value1) nextPutAll: (recoveredBlock18Value3).
    recoveredBlock18Value4 := (recoveredBlock18Value0) nextPutAll: (', ').
    recoveredBlock18Value4
].
    (recoveredValue2) do: (recoveredValue3).
    recoveredValue4 := recoveredLocal1.
    (recoveredValue4) nextPut: ($)).
    recoveredValue5 := recoveredLocal1.
    recoveredValue6 := (recoveredValue5) releaseGetContents.
    ^recoveredValue6
! !

"ASDBase.ic method 0x2031832c; bytecode file offset 0xc14c04"
!SGMdPackedExprAssignment methodsFor: 'recovered'!
asMdlComplementServiceExpr: recoveredArg1
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
            recoveredStack1 := (recoveredStack1) isMdlMatrix.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 20].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) asCgColumnType.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredPC := 24.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := (recoveredStack1) componentType.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := (recoveredStack1) exprs.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack2 := [:recoveredBlock29Arg1 | 
    | recoveredBlock29Value0 recoveredBlock29Value1 recoveredBlock29Value2 |
    recoveredBlock29Value0 := recoveredBlock29Arg1.
    recoveredBlock29Value1 := recoveredLocal1.
    recoveredBlock29Value2 := (recoveredBlock29Value0) asMdlComplementServiceExpr: (recoveredBlock29Value1).
    recoveredBlock29Value2
].
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack1 := (recoveredStack1) collect: (recoveredStack2).
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            (recoveredStack0) exprs: (recoveredStack1).
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack1 := (recoveredStack1) asRedundantModelType.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            (recoveredStack0) mdlClass: (recoveredStack1).
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2031d320; bytecode file offset 0xc19be8"
!SGMdPackedExprAssignment methodsFor: 'recovered'!
mdlHasSameValueAs: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) class.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack2 := (recoveredStack2) class.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := (recoveredStack1) exprs.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack2 := (recoveredStack2) exprs.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack2 := (recoveredStack2) size.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 30] ifFalse: [recoveredPC := 28].
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := (recoveredStack1) exprs.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack2 := (recoveredStack2) exprs.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack3 := [:recoveredBlock36Arg1 :recoveredBlock36Arg2 | 
    | recoveredBlock36Stack0 recoveredBlock36Stack1 recoveredBlock36Stack2 recoveredBlock36Stack3 recoveredBlock36Stack4 recoveredBlock36PC recoveredBlock36Step recoveredBlock36Done recoveredBlock36Result |
    recoveredBlock36Stack0 := self.
    recoveredBlock36PC := 42.
    recoveredBlock36Done := false.
    [recoveredBlock36Done not] whileTrue: [
        recoveredBlock36Step := recoveredBlock36PC.
        recoveredBlock36Step = 42 ifTrue: [
            recoveredBlock36Stack1 := nil.
            recoveredBlock36PC := 43.
        ].
        recoveredBlock36Step = 43 ifTrue: [
            recoveredBlock36Stack2 := recoveredBlock36Arg1.
            recoveredBlock36PC := 44.
        ].
        recoveredBlock36Step = 44 ifTrue: [
            recoveredBlock36Stack3 := recoveredBlock36Arg2.
            recoveredBlock36PC := 45.
        ].
        recoveredBlock36Step = 45 ifTrue: [
            recoveredBlock36Stack2 := (recoveredBlock36Stack2) mdlHasSameValueAs: (recoveredBlock36Stack3).
            recoveredBlock36PC := 46.
        ].
        recoveredBlock36Step = 46 ifTrue: [
            (recoveredBlock36Stack2) ifTrue: [recoveredBlock36PC := 53] ifFalse: [recoveredBlock36PC := 50].
        ].
        recoveredBlock36Step = 50 ifTrue: [
            recoveredBlock36PC := 51.
        ].
        recoveredBlock36Step = 51 ifTrue: [
            recoveredBlock36Stack1 := false.
            recoveredBlock36PC := 52.
        ].
        recoveredBlock36Step = 52 ifTrue: [
            ^recoveredBlock36Stack1
        ].
        recoveredBlock36Step = 53 ifTrue: [
            recoveredBlock36Result := recoveredBlock36Stack1.
            recoveredBlock36Done := true.
        ].
    ].
    recoveredBlock36Result
].
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            (recoveredStack1) with: (recoveredStack2) do: (recoveredStack3).
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

