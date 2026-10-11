"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20068b94; bytecode file offset 0x965b90"
!SGMdAllowedElementVisitor methodsFor: 'recovered'!
checkBlock
    | recoveredValue0 |
    recoveredValue0 := checkBlock.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20069468; bytecode file offset 0x966bdc"
!SGMdAllowedElementVisitor methodsFor: 'recovered'!
innerCheckBlock
    | recoveredValue0 |
    recoveredValue0 := innerCheckBlock.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200c05f4; bytecode file offset 0x9bd228"
!SGMdAllowedElementVisitor methodsFor: 'recovered'!
checkBlock: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    checkBlock := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c1088; bytecode file offset 0x9bdf14"
!SGMdAllowedElementVisitor methodsFor: 'recovered'!
innerCheckBlock: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    innerCheckBlock := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x20442f38; bytecode file offset 0xd3f824"
!SGMdAllowedElementVisitor methodsFor: 'recovered'!
mdlAbstractDecl: recoveredArg1
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
            recoveredStack1 := (recoveredStack1) mdlClass.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) isMdlRecordType.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 79].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := (recoveredStack2) mdlClass.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := (recoveredStack2) asCgDereferencedType.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := (recoveredStack1) lookupClassInterface: (recoveredStack2).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack2 := [
    | recoveredBlock23Value0 |
    recoveredBlock23Value0 := recoveredArg1.
    ^recoveredBlock23Value0
].
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            (recoveredStack1) ifNil: (recoveredStack2).
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack1 := (recoveredStack1) instVars.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack2 := [:recoveredBlock41Arg1 | 
    | recoveredBlock41Value0 recoveredBlock41Value1 recoveredBlock41Value2 recoveredBlock41Value3 recoveredBlock41Value4 recoveredBlock41Value5 recoveredBlock41Value6 recoveredBlock41Value7 |
    recoveredBlock41Value0 := (self) class.
    recoveredBlock41Value1 := (self) genContext.
    recoveredBlock41Value2 := recoveredBlock41Arg1.
    recoveredBlock41Value3 := (self) innerCheckBlock.
    recoveredBlock41Value4 := (self) innerCheckBlock.
    recoveredBlock41Value5 := (recoveredBlock41Value0) withContext: (recoveredBlock41Value1) for: (recoveredBlock41Value2) check: (recoveredBlock41Value3) inner: (recoveredBlock41Value4).
    recoveredBlock41Value6 := [:recoveredBlock41Block63Arg1 | 
    | recoveredBlock41Block63Value0 |
    recoveredBlock41Block63Value0 := recoveredBlock41Block63Arg1.
    ^recoveredBlock41Block63Value0
].
    recoveredBlock41Value7 := (recoveredBlock41Value5) ifNotNil: (recoveredBlock41Value6).
    recoveredBlock41Value7
].
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack1 := (recoveredStack1) mdlClass.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack1 := (recoveredStack1) isCgComplexClassType.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 88] ifFalse: [recoveredPC := 92].
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack1 := checkBlock.
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            recoveredStack1 := (recoveredStack1) value: (recoveredStack2).
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 102] ifFalse: [recoveredPC := 106].
        ].
        recoveredStep = 102 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            recoveredPC := 109.
        ].
        recoveredStep = 106 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

