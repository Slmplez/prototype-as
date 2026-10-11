"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x200236c0; bytecode file offset 0x92209c"
!SGIlAbstractCastArithServiceTransformation class methodsFor: 'recovered'!
label
    ^'AbstractServiceCasting'
! !

"ASDBase.ic method 0x20096c40; bytecode file offset 0x9937fc"
!SGIlAbstractCastArithServiceTransformation class methodsFor: 'recovered'!
create: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) new.
    recoveredValue1 := recoveredValue0.
    recoveredValue2 := recoveredArg1.
    (recoveredValue1) castExprTransformation: (recoveredValue2).
    ^recoveredValue0
! !

"ASDBase.ic method 0x20349ba8; bytecode file offset 0xc4647c"
!SGIlAbstractCastArithServiceTransformation class methodsFor: 'recovered'!
serviceTypes
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := ServiceTypes.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 61] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := RBInteger.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) allImplTypes.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := [:block280ee704Arg1 :block280ee704Arg2 | 
    | block280ee704Stack0 block280ee704Stack1 block280ee704Stack2 block280ee704Stack3 block280ee704Stack4 block280ee704PC block280ee704Step block280ee704Done block280ee704Result |
    block280ee704Stack0 := self.
    block280ee704PC := 4.
    block280ee704Done := false.
    [block280ee704Done not] whileTrue: [
        block280ee704Step := block280ee704PC.
        block280ee704Step = 4 ifTrue: [
            block280ee704Stack1 := true.
            block280ee704PC := 5.
        ].
        block280ee704Step = 5 ifTrue: [
            block280ee704Stack2 := block280ee704Arg1.
            block280ee704PC := 6.
        ].
        block280ee704Step = 6 ifTrue: [
            block280ee704Stack2 := (block280ee704Stack2) byteSize.
            block280ee704PC := 8.
        ].
        block280ee704Step = 8 ifTrue: [
            block280ee704Stack3 := block280ee704Arg2.
            block280ee704PC := 9.
        ].
        block280ee704Step = 9 ifTrue: [
            block280ee704Stack3 := (block280ee704Stack3) byteSize.
            block280ee704PC := 11.
        ].
        block280ee704Step = 11 ifTrue: [
            block280ee704Stack2 := (block280ee704Stack2) < (block280ee704Stack3).
            block280ee704PC := 12.
        ].
        block280ee704Step = 12 ifTrue: [
            (block280ee704Stack2) ifTrue: [block280ee704PC := 40] ifFalse: [block280ee704PC := 16].
        ].
        block280ee704Step = 16 ifTrue: [
            block280ee704PC := 17.
        ].
        block280ee704Step = 17 ifTrue: [
            block280ee704Stack1 := false.
            block280ee704PC := 18.
        ].
        block280ee704Step = 18 ifTrue: [
            block280ee704Stack2 := block280ee704Arg1.
            block280ee704PC := 19.
        ].
        block280ee704Step = 19 ifTrue: [
            block280ee704Stack2 := (block280ee704Stack2) byteSize.
            block280ee704PC := 21.
        ].
        block280ee704Step = 21 ifTrue: [
            block280ee704Stack3 := block280ee704Arg2.
            block280ee704PC := 22.
        ].
        block280ee704Step = 22 ifTrue: [
            block280ee704Stack3 := (block280ee704Stack3) byteSize.
            block280ee704PC := 24.
        ].
        block280ee704Step = 24 ifTrue: [
            block280ee704Stack2 := (block280ee704Stack2) = (block280ee704Stack3).
            block280ee704PC := 25.
        ].
        block280ee704Step = 25 ifTrue: [
            (block280ee704Stack2) ifTrue: [block280ee704PC := 28] ifFalse: [block280ee704PC := 40].
        ].
        block280ee704Step = 28 ifTrue: [
            block280ee704PC := 29.
        ].
        block280ee704Step = 29 ifTrue: [
            block280ee704Stack1 := true.
            block280ee704PC := 30.
        ].
        block280ee704Step = 30 ifTrue: [
            block280ee704Stack2 := block280ee704Arg1.
            block280ee704PC := 31.
        ].
        block280ee704Step = 31 ifTrue: [
            block280ee704Stack2 := (block280ee704Stack2) isSigned.
            block280ee704PC := 33.
        ].
        block280ee704Step = 33 ifTrue: [
            (block280ee704Stack2) ifTrue: [block280ee704PC := 36] ifFalse: [block280ee704PC := 40].
        ].
        block280ee704Step = 36 ifTrue: [
            block280ee704PC := 37.
        ].
        block280ee704Step = 37 ifTrue: [
            block280ee704Stack1 := block280ee704Arg2.
            block280ee704PC := 38.
        ].
        block280ee704Step = 38 ifTrue: [
            block280ee704Stack1 := (block280ee704Stack1) isSigned.
            block280ee704PC := 40.
        ].
        block280ee704Step = 40 ifTrue: [
            block280ee704Result := block280ee704Stack1.
            block280ee704Done := true.
        ].
    ].
    block280ee704Result
].
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack1 := (recoveredStack1) asSortedCollection: (recoveredStack2).
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack1 := (recoveredStack1) asArray.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            ServiceTypes := recoveredStack1.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack1 := ServiceTypes.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

