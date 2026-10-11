"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2006eac8; bytecode file offset 0x96b41c"
!SGSmInlinedNonOutlinableCode methodsFor: 'recovered'!
afterOptimizedBlock
    | recoveredValue0 |
    recoveredValue0 := afterOptimizedBlock.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200847e0; bytecode file offset 0x981ca4"
!SGSmInlinedNonOutlinableCode methodsFor: 'recovered'!
calledMethods: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) calledMethodsList: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x20086cec; bytecode file offset 0x98376c"
!SGSmInlinedNonOutlinableCode methodsFor: 'recovered'!
replaceCode: recoveredArg1 with: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := (self) replaceCodeList: (recoveredValue0) with: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x200c50d8; bytecode file offset 0x9c1afc"
!SGSmInlinedNonOutlinableCode methodsFor: 'recovered'!
afterOptimizedBlock: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    afterOptimizedBlock := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x20126d10; bytecode file offset 0xa235cc"
!SGSmInlinedNonOutlinableCode methodsFor: 'recovered'!
replacePrivateMethod: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) replacePrivateMethodList: (recoveredStack1).
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 15].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack0) calculateSize.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x202539f4; bytecode file offset 0xb502c0"
!SGSmInlinedNonOutlinableCode methodsFor: 'recovered'!
buildMdl
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) mdlBuilder.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := source.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack0) source: (recoveredStack1).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := beforeCode.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack0) value.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := list.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := [:block280df0c8Arg1 | 
    | block280df0c8Value0 block280df0c8Value1 |
    block280df0c8Value0 := block280df0c8Arg1.
    block280df0c8Value1 := (block280df0c8Value0) buildMdl.
    block280df0c8Value1
].
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := afterCode.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            (recoveredStack0) value.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack0 := (recoveredStack0) mdlBuilder.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := source.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            (recoveredStack0) source: (recoveredStack1).
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2026b56c; bytecode file offset 0xb67e44"
!SGSmInlinedNonOutlinableCode methodsFor: 'recovered'!
duplicate
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) outlineStrategy.
    recoveredValue1 := (recoveredValue0) allCode.
    recoveredValue2 := [
    | recoveredBlock7Value0 recoveredBlock7Value1 recoveredBlock7Value2 recoveredBlock7Value3 recoveredBlock7Value4 recoveredBlock7Value5 recoveredBlock7Value6 recoveredBlock7Value7 recoveredBlock7Value8 |
    recoveredBlock7Value0 := SGSmOutlinableNonOutlinableCode.
    recoveredBlock7Value1 := beforeCode.
    recoveredBlock7Value2 := (self) duplicateList.
    recoveredBlock7Value3 := afterCode.
    recoveredBlock7Value4 := (self) source.
    recoveredBlock7Value5 := (self) label.
    recoveredBlock7Value6 := (self) outlineStrategy.
    recoveredBlock7Value7 := (self) beginEndSize.
    recoveredBlock7Value8 := (recoveredBlock7Value0) createBefore: (recoveredBlock7Value1) sequence: (recoveredBlock7Value2) afterBlock: (recoveredBlock7Value3) source: (recoveredBlock7Value4) label: (recoveredBlock7Value5) outlineStrategy: (recoveredBlock7Value6) beginEndSize: (recoveredBlock7Value7).
    recoveredBlock7Value8
].
    recoveredValue3 := (recoveredValue1) at: (self) ifAbsent: (recoveredValue2).
    ^recoveredValue3
! !

