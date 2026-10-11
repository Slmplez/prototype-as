"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20001f30; bytecode file offset 0x8ffcfc"
!SGSmAtomicCode methodsFor: 'recovered'!
duplicate
    ^self
! !

"ASDBase.ic method 0x20003af8; bytecode file offset 0x90206c"
!SGSmAtomicCode methodsFor: 'recovered'!
duplicateFor: recoveredArg1
    ^self
! !

"ASDBase.ic method 0x20004b68; bytecode file offset 0x90206c"
!SGSmAtomicCode methodsFor: 'recovered'!
calledMethods: recoveredArg1
    ^self
! !

"ASDBase.ic method 0x2000f22c; bytecode file offset 0x90bb38"
!SGSmAtomicCode methodsFor: 'recovered'!
replaceCode: recoveredArg1 with: recoveredArg2
    ^false
! !

"ASDBase.ic method 0x2002f484; bytecode file offset 0x934580"
!SGSmAtomicCode methodsFor: 'recovered'!
hash
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) tag.
    recoveredValue1 := (recoveredValue0) hash.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2005ddb0; bytecode file offset 0x95a674"
!SGSmAtomicCode methodsFor: 'recovered'!
buildMdl
    | recoveredValue0 |
    recoveredValue0 := codeBlock.
    (recoveredValue0) value.
    ^self
! !

"ASDBase.ic method 0x2006b510; bytecode file offset 0x96873c"
!SGSmAtomicCode methodsFor: 'recovered'!
codeBlock
    | recoveredValue0 |
    recoveredValue0 := codeBlock.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006c234; bytecode file offset 0x9692b0"
!SGSmAtomicCode methodsFor: 'recovered'!
tag
    | recoveredValue0 |
    recoveredValue0 := tag.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2007678c; bytecode file offset 0x9757c8"
!SGSmAtomicCode methodsFor: 'recovered'!
isInlinedCode
    ^true
! !

"ASDBase.ic method 0x20077c4c; bytecode file offset 0x9757c8"
!SGSmAtomicCode methodsFor: 'recovered'!
isOutlinableCode
    ^true
! !

"ASDBase.ic method 0x2007cc44; bytecode file offset 0x97c330"
!SGSmAtomicCode methodsFor: 'recovered'!
hasReturn
    ^false
! !

"ASDBase.ic method 0x2008b6e4; bytecode file offset 0x987f9c"
!SGSmAtomicCode methodsFor: 'recovered'!
codeSize
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := size.
    recoveredValue1 := (self) calledMethodsSize.
    recoveredValue2 := (recoveredValue0) + (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x200c2a00; bytecode file offset 0x9bf474"
!SGSmAtomicCode methodsFor: 'recovered'!
codeBlock: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    codeBlock := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c3004; bytecode file offset 0x9bfde0"
!SGSmAtomicCode methodsFor: 'recovered'!
tag: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    tag := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c3ad8; bytecode file offset 0x9c058c"
!SGSmAtomicCode methodsFor: 'recovered'!
codeSize: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    size := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x20145148; bytecode file offset 0xa41a14"
!SGSmAtomicCode methodsFor: 'recovered'!
= recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := (recoveredStack1) class.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := (recoveredStack2) class.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack1 == recoveredStack2) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := (recoveredStack0) tag.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) tag.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20177bec; bytecode file offset 0xa7490c"
!SGSmAtomicCode methodsFor: 'recovered'!
collectCalledMethods: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) calledMethods.
    recoveredValue1 := [:recoveredBlock5Arg1 | 
    | recoveredBlock5Value0 recoveredBlock5Value1 recoveredBlock5Value2 |
    recoveredBlock5Value0 := recoveredBlock5Arg1.
    recoveredBlock5Value1 := recoveredArg1.
    recoveredBlock5Value2 := (recoveredBlock5Value0) collectCalledMethods: (recoveredBlock5Value1).
    recoveredBlock5Value2
].
    (recoveredValue0) do: (recoveredValue1).
    ^self
! !

