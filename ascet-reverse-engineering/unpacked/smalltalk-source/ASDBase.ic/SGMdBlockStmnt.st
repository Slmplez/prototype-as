"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2002d414; bytecode file offset 0x934580"
!SGMdBlockStmnt methodsFor: 'recovered'!
notEmpty
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) children.
    recoveredValue1 := (recoveredValue0) notEmpty.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20055ec0; bytecode file offset 0x952a9c"
!SGMdBlockStmnt methodsFor: 'recovered'!
mdlAcceptNodeVisitor: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) blockStmnt: (self).
    ^recoveredValue1
! !

"ASDBase.ic method 0x2006bf2c; bytecode file offset 0x9692b0"
!SGMdBlockStmnt methodsFor: 'recovered'!
children
    | recoveredValue0 |
    recoveredValue0 := children.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006ced8; bytecode file offset 0x969c04"
!SGMdBlockStmnt methodsFor: 'recovered'!
localVars
    | recoveredValue0 |
    recoveredValue0 := localVars.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006d9d4; bytecode file offset 0x96a390"
!SGMdBlockStmnt methodsFor: 'recovered'!
avoidSource
    | recoveredValue0 |
    recoveredValue0 := avoidSource.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006dca8; bytecode file offset 0x96a9dc"
!SGMdBlockStmnt methodsFor: 'recovered'!
method
    | recoveredValue0 |
    recoveredValue0 := method.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20074dd4; bytecode file offset 0x9757c8"
!SGMdBlockStmnt methodsFor: 'recovered'!
isMdlBlock
    ^true
! !

"ASDBase.ic method 0x20078d14; bytecode file offset 0x9757c8"
!SGMdBlockStmnt methodsFor: 'recovered'!
isMdlBlockStmnt
    ^true
! !

"ASDBase.ic method 0x20096600; bytecode file offset 0x992ec4"
!SGMdBlockStmnt methodsFor: 'recovered'!
localVars: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) sorted: (recoveredValue0).
    localVars := recoveredValue1.
    ^self
! !

"ASDBase.ic method 0x200c2cb4; bytecode file offset 0x9bfde0"
!SGMdBlockStmnt methodsFor: 'recovered'!
children: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    children := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c3f94; bytecode file offset 0x9c0bf0"
!SGMdBlockStmnt methodsFor: 'recovered'!
avoidSource: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    avoidSource := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c4688; bytecode file offset 0x9c11bc"
!SGMdBlockStmnt methodsFor: 'recovered'!
method: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    method := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c4ccc; bytecode file offset 0x9c16b0"
!SGMdBlockStmnt methodsFor: 'recovered'!
isArtificialBlock: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    artificialBlock := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200f0dd8; bytecode file offset 0x9ed68c"
!SGMdBlockStmnt methodsFor: 'recovered'!
isArtificialBlock
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := artificialBlock.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := artificialBlock.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x200f7734; bytecode file offset 0x9f4e38"
!SGMdBlockStmnt methodsFor: 'recovered'!
hasMdlUnconditionalReturn
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) children.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := [:block280c48ccArg1 | 
    | block280c48ccValue0 block280c48ccValue1 |
    block280c48ccValue0 := block280c48ccArg1.
    block280c48ccValue1 := (block280c48ccValue0) hasMdlUnconditionalReturn.
    block280c48ccValue1
].
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) anySatisfy: (recoveredStack1).
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x200f7854; bytecode file offset 0x9f4e38"
!SGMdBlockStmnt methodsFor: 'recovered'!
hasEndCaseStmnt
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) children.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := [:block280c4a7cArg1 | 
    | block280c4a7cValue0 block280c4a7cValue1 |
    block280c4a7cValue0 := block280c4a7cArg1.
    block280c4a7cValue1 := (block280c4a7cValue0) hasEndCaseStmnt.
    block280c4a7cValue1
].
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) anySatisfy: (recoveredStack1).
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x200f7c14; bytecode file offset 0x9f4e38"
!SGMdBlockStmnt methodsFor: 'recovered'!
nonEmptyChildren
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) children.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := [:block280c501cArg1 | 
    | block280c501cValue0 block280c501cValue1 |
    block280c501cValue0 := block280c501cArg1.
    block280c501cValue1 := (block280c501cValue0) isMdlEmptyStmnt.
    block280c501cValue1
].
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) reject: (recoveredStack1).
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x200f84b4; bytecode file offset 0x9f4e38"
!SGMdBlockStmnt methodsFor: 'recovered'!
hasReturnStmnt
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) children.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := [:block280c5d0cArg1 | 
    | block280c5d0cValue0 block280c5d0cValue1 |
    block280c5d0cValue0 := block280c5d0cArg1.
    block280c5d0cValue1 := (block280c5d0cValue0) hasReturnStmnt.
    block280c5d0cValue1
].
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) anySatisfy: (recoveredStack1).
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x200f852c; bytecode file offset 0x9f4e38"
!SGMdBlockStmnt methodsFor: 'recovered'!
hasMdlUnconditionalReturnOrEndCase
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) children.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := [:block280c5dc0Arg1 | 
    | block280c5dc0Value0 block280c5dc0Value1 |
    block280c5dc0Value0 := block280c5dc0Arg1.
    block280c5dc0Value1 := (block280c5dc0Value0) hasMdlUnconditionalReturnOrEndCase.
    block280c5dc0Value1
].
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) anySatisfy: (recoveredStack1).
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201076f8; bytecode file offset 0xa0404c"
!SGMdBlockStmnt methodsFor: 'recovered'!
sortedVars
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := ('Rl') == ('Call_62533').
    recoveredValue1 := (self) generator.
    recoveredValue2 := (self) localVars.
    recoveredValue3 := (recoveredValue1) sortElements: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x2011980c; bytecode file offset 0xa16880"
!SGMdBlockStmnt methodsFor: 'recovered'!
semAnaCovertCaseLiteralToUdisc
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) children.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := [:block280c7a04Arg1 | 
    | block280c7a04Value0 block280c7a04Value1 |
    block280c7a04Value0 := block280c7a04Arg1.
    block280c7a04Value1 := (block280c7a04Value0) semAnaCovertCaseLiteralToUdisc.
    block280c7a04Value1
].
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2014e868; bytecode file offset 0xa4b144"
!SGMdBlockStmnt methodsFor: 'recovered'!
isMdlEmptyStmnt
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
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
            recoveredStack2 := (recoveredStack2) children.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := (recoveredStack2) size.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack3 := 1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack2 ~~ recoveredStack3) ifTrue: [recoveredPC := 19] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) children.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := (recoveredStack1) first.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := (recoveredStack1) isMdlEmptyStmnt.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x201912d4; bytecode file offset 0xa8db9c"
!SGMdBlockStmnt methodsFor: 'recovered'!
initialize
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    super initialize.
    recoveredValue0 := OrderedCollection.
    recoveredValue1 := (recoveredValue0) new.
    localVars := recoveredValue1.
    recoveredValue2 := OrderedCollection.
    recoveredValue3 := (recoveredValue2) new.
    children := recoveredValue3.
    (self) avoidSource: (false).
    ^self
! !

"ASDBase.ic method 0x201b1d38; bytecode file offset 0xaae674"
!SGMdBlockStmnt methodsFor: 'recovered'!
hasExitStmnt
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) children.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := [:block280d3f98Arg1 | 
    | block280d3f98Value0 block280d3f98Value1 |
    block280d3f98Value0 := block280d3f98Arg1.
    block280d3f98Value1 := (block280d3f98Value0) hasExitStmnt.
    block280d3f98Value1
].
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := [
    ^false
].
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            (recoveredStack0) detect: (recoveredStack1) ifNone: (recoveredStack2).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := true.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201b1d50; bytecode file offset 0xaae674"
!SGMdBlockStmnt methodsFor: 'recovered'!
hasExitOrReturnStmnt
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) children.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := [:block280d3fbcArg1 | 
    | block280d3fbcValue0 block280d3fbcValue1 |
    block280d3fbcValue0 := block280d3fbcArg1.
    block280d3fbcValue1 := (block280d3fbcValue0) hasExitOrReturnStmnt.
    block280d3fbcValue1
].
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := [
    ^false
].
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            (recoveredStack0) detect: (recoveredStack1) ifNone: (recoveredStack2).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := true.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2021ff54; bytecode file offset 0xb1c814"
!SGMdBlockStmnt methodsFor: 'recovered'!
mdlStmntCodeSizeCosts
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredLocal1 := 0.
    recoveredValue0 := (self) children.
    recoveredValue1 := [:recoveredBlock10Arg1 | 
    | recoveredBlock10Value0 recoveredBlock10Value1 recoveredBlock10Value2 recoveredBlock10Value3 recoveredBlock10Value4 |
    recoveredBlock10Value0 := recoveredLocal1.
    recoveredBlock10Value1 := recoveredBlock10Arg1.
    recoveredBlock10Value2 := (recoveredBlock10Value1) mdlStmntCodeSizeCosts.
    recoveredBlock10Value3 := (recoveredBlock10Value0) + (recoveredBlock10Value2).
    recoveredBlock10Value4 := recoveredBlock10Value3.
    recoveredLocal1 := recoveredBlock10Value4.
    recoveredBlock10Value3
].
    (recoveredValue0) do: (recoveredValue1).
    recoveredValue2 := recoveredLocal1.
    ^recoveredValue2
! !

"ASDBase.ic method 0x20277a8c; bytecode file offset 0xb74360"
!SGMdBlockStmnt methodsFor: 'recovered'!
hasReturnStmnt: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) children.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) isEmpty.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 20].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := 25.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := (recoveredStack2) errLabel.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack0) mdlSemErrNo: (recoveredStack1) with: (recoveredStack2).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredPC := 39.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := (recoveredStack0) hasMdlUnconditionalReturn.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 39] ifFalse: [recoveredPC := 26].
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := 25.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack2 := (recoveredStack2) errLabel.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack3 := (recoveredStack3) source.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack3 := (recoveredStack3) endSource.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            (recoveredStack0) mdlSemErrNo: (recoveredStack1) with: (recoveredStack2) source: (recoveredStack3).
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2028f33c; bytecode file offset 0xb8bc0c"
!SGMdBlockStmnt methodsFor: 'recovered'!
printOn: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredValue0.
    (recoveredValue1) nextPutAll: ('{').
    (recoveredValue0) cr.
    recoveredValue2 := (self) children.
    recoveredValue3 := [:recoveredBlock15Arg1 | 
    | recoveredBlock15Value0 recoveredBlock15Value1 recoveredBlock15Value2 |
    recoveredBlock15Value0 := recoveredBlock15Arg1.
    recoveredBlock15Value1 := recoveredArg1.
    recoveredBlock15Value2 := (recoveredBlock15Value0) printOn: (recoveredBlock15Value1).
    recoveredBlock15Value2
].
    (recoveredValue2) do: (recoveredValue3).
    recoveredValue4 := recoveredArg1.
    recoveredValue5 := recoveredValue4.
    (recoveredValue5) nextPutAll: ('}').
    (recoveredValue4) cr.
    ^self
! !

"ASDBase.ic method 0x202cd904; bytecode file offset 0xbca1f8"
!SGMdBlockStmnt methodsFor: 'recovered'!
asMdlMethodBody
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 |
    recoveredValue0 := SGMdMethodBody.
    recoveredValue1 := (recoveredValue0) create.
    recoveredValue2 := recoveredValue1.
    recoveredValue3 := (self) source.
    (recoveredValue2) source: (recoveredValue3).
    recoveredValue4 := recoveredValue1.
    recoveredValue5 := (self) comment.
    (recoveredValue4) comments: (recoveredValue5).
    recoveredValue6 := recoveredValue1.
    recoveredValue7 := (self) userData.
    (recoveredValue6) userData: (recoveredValue7).
    recoveredValue8 := recoveredValue1.
    recoveredValue9 := (self) mdlClass.
    (recoveredValue8) mdlClass: (recoveredValue9).
    recoveredValue10 := recoveredValue1.
    recoveredValue11 := (self) children.
    (recoveredValue10) children: (recoveredValue11).
    recoveredValue12 := recoveredValue1.
    recoveredValue13 := (self) localVars.
    (recoveredValue12) localVars: (recoveredValue13).
    recoveredValue14 := recoveredValue1.
    recoveredValue15 := (self) avoidSource.
    (recoveredValue14) avoidSource: (recoveredValue15).
    ^recoveredValue1
! !

"ASDBase.ic method 0x202f4dec; bytecode file offset 0xbf16e4"
!SGMdBlockStmnt methodsFor: 'recovered'!
asMdlMethodBody: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 |
    recoveredValue0 := SGMdMethodBody.
    recoveredValue1 := (recoveredValue0) create.
    recoveredValue2 := recoveredValue1.
    recoveredValue3 := (self) source.
    (recoveredValue2) source: (recoveredValue3).
    recoveredValue4 := recoveredValue1.
    recoveredValue5 := (self) comment.
    (recoveredValue4) comments: (recoveredValue5).
    recoveredValue6 := recoveredValue1.
    recoveredValue7 := (self) userData.
    (recoveredValue6) userData: (recoveredValue7).
    recoveredValue8 := recoveredValue1.
    recoveredValue9 := (self) mdlClass.
    (recoveredValue8) mdlClass: (recoveredValue9).
    recoveredValue10 := recoveredValue1.
    recoveredValue11 := (self) children.
    (recoveredValue10) children: (recoveredValue11).
    recoveredValue12 := recoveredValue1.
    recoveredValue13 := (self) localVars.
    (recoveredValue12) localVars: (recoveredValue13).
    recoveredValue14 := recoveredValue1.
    recoveredValue15 := (self) avoidSource.
    (recoveredValue14) avoidSource: (recoveredValue15).
    recoveredValue16 := recoveredValue1.
    recoveredValue17 := recoveredArg1.
    (recoveredValue16) method: (recoveredValue17).
    ^recoveredValue1
! !

