"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"xxx_dyn.ic method 0x20001498; bytecode file offset 0x626a4"
!SstHttpServerSupport class methodsFor: 'recovered'!
instanceMethodCategories
    ^#('SST-API Developer' 'SST-API User' 'SST-Internal')
! !

"xxx_dyn.ic method 0x200014b0; bytecode file offset 0x626a4"
!SstHttpServerSupport class methodsFor: 'recovered'!
classMethodCategories
    ^#('SST-API Developer' 'SST-API User' 'SST-Internal')
! !

"xxx_dyn.ic method 0x20002880; bytecode file offset 0x63b1c"
!SstHttpServerSupport class methodsFor: 'recovered'!
failedRemove
    (self) loaded.
    ^self
! !

"xxx_dyn.ic method 0x20005db0; bytecode file offset 0x66f2c"
!SstHttpServerSupport class methodsFor: 'recovered'!
packagingRulesFor: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) symbol.
    (recoveredValue0) doNotReduceSubApplicationNamed: (recoveredValue1).
    ^self
! !

"xxx_dyn.ic method 0x20006588; bytecode file offset 0x67680"
!SstHttpServerSupport class methodsFor: 'recovered'!
cleanUpBeforeRemove
    | recoveredValue0 |
    recoveredValue0 := SstInvocationHandler.
    (recoveredValue0) unregisterScheme: ('http').
    ^self
! !

"xxx_dyn.ic method 0x200096bc; bytecode file offset 0x6a794"
!SstHttpServerSupport class methodsFor: 'recovered'!
setupAfterLoadNonInherited
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := SstInvocationHandler.
    recoveredValue1 := SstInvocationConfiguration.
    recoveredValue2 := (recoveredValue1) httpConfiguration.
    (recoveredValue0) register: (recoveredValue2) asScheme: ('http').
    ^self
! !

"xxx_dyn.ic method 0x20018810; bytecode file offset 0x79c2c"
!SstHttpServerSupport class methodsFor: 'recovered'!
loaded
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := defined.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := [:block2800b274Arg1 | 
    | block2800b274Stack0 block2800b274Stack1 block2800b274Stack2 block2800b274Stack3 block2800b274Stack4 block2800b274PC block2800b274Step block2800b274Done block2800b274Result |
    block2800b274Stack0 := self.
    block2800b274PC := 4.
    block2800b274Done := false.
    [block2800b274Done not] whileTrue: [
        block2800b274Step := block2800b274PC.
        block2800b274Step = 4 ifTrue: [
            block2800b274Stack1 := block2800b274Arg1.
            block2800b274PC := 5.
        ].
        block2800b274Step = 5 ifTrue: [
            block2800b274Stack2 := 'setupAfterLoad'.
            block2800b274PC := 7.
        ].
        block2800b274Step = 7 ifTrue: [
            block2800b274Stack1 := (block2800b274Stack1) respondsTo: (block2800b274Stack2).
            block2800b274PC := 8.
        ].
        block2800b274Step = 8 ifTrue: [
            (block2800b274Stack1) ifTrue: [block2800b274PC := 12] ifFalse: [block2800b274PC := 15].
        ].
        block2800b274Step = 12 ifTrue: [
            block2800b274Stack1 := block2800b274Arg1.
            block2800b274PC := 13.
        ].
        block2800b274Step = 13 ifTrue: [
            (block2800b274Stack1) setupAfterLoad.
            block2800b274PC := 15.
        ].
        block2800b274Step = 15 ifTrue: [
            block2800b274Stack1 := nil.
            block2800b274PC := 16.
        ].
        block2800b274Step = 16 ifTrue: [
            block2800b274Stack2 := block2800b274Arg1.
            block2800b274PC := 17.
        ].
        block2800b274Step = 17 ifTrue: [
            block2800b274Stack2 := (block2800b274Stack2) class.
            block2800b274PC := 18.
        ].
        block2800b274Step = 18 ifTrue: [
            block2800b274Stack3 := 'setupAfterLoadNonInherited'.
            block2800b274PC := 20.
        ].
        block2800b274Step = 20 ifTrue: [
            block2800b274Stack2 := (block2800b274Stack2) includesSelector: (block2800b274Stack3).
            block2800b274PC := 22.
        ].
        block2800b274Step = 22 ifTrue: [
            (block2800b274Stack2) ifTrue: [block2800b274PC := 26] ifFalse: [block2800b274PC := 30].
        ].
        block2800b274Step = 26 ifTrue: [
            block2800b274PC := 27.
        ].
        block2800b274Step = 27 ifTrue: [
            block2800b274Stack1 := block2800b274Arg1.
            block2800b274PC := 28.
        ].
        block2800b274Step = 28 ifTrue: [
            block2800b274Stack1 := (block2800b274Stack1) setupAfterLoadNonInherited.
            block2800b274PC := 30.
        ].
        block2800b274Step = 30 ifTrue: [
            block2800b274Result := block2800b274Stack1.
            block2800b274Done := true.
        ].
    ].
    block2800b274Result
].
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"xxx_dyn.ic method 0x200189c0; bytecode file offset 0x79c2c"
!SstHttpServerSupport class methodsFor: 'recovered'!
removing
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := defined.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := [:block2800b424Arg1 | 
    | block2800b424Stack0 block2800b424Stack1 block2800b424Stack2 block2800b424Stack3 block2800b424Stack4 block2800b424PC block2800b424Step block2800b424Done block2800b424Result |
    block2800b424Stack0 := self.
    block2800b424PC := 4.
    block2800b424Done := false.
    [block2800b424Done not] whileTrue: [
        block2800b424Step := block2800b424PC.
        block2800b424Step = 4 ifTrue: [
            block2800b424Stack1 := block2800b424Arg1.
            block2800b424PC := 5.
        ].
        block2800b424Step = 5 ifTrue: [
            block2800b424Stack2 := 'cleanUpBeforeRemove'.
            block2800b424PC := 7.
        ].
        block2800b424Step = 7 ifTrue: [
            block2800b424Stack1 := (block2800b424Stack1) respondsTo: (block2800b424Stack2).
            block2800b424PC := 8.
        ].
        block2800b424Step = 8 ifTrue: [
            (block2800b424Stack1) ifTrue: [block2800b424PC := 12] ifFalse: [block2800b424PC := 15].
        ].
        block2800b424Step = 12 ifTrue: [
            block2800b424Stack1 := block2800b424Arg1.
            block2800b424PC := 13.
        ].
        block2800b424Step = 13 ifTrue: [
            (block2800b424Stack1) cleanUpBeforeRemove.
            block2800b424PC := 15.
        ].
        block2800b424Step = 15 ifTrue: [
            block2800b424Stack1 := nil.
            block2800b424PC := 16.
        ].
        block2800b424Step = 16 ifTrue: [
            block2800b424Stack2 := block2800b424Arg1.
            block2800b424PC := 17.
        ].
        block2800b424Step = 17 ifTrue: [
            block2800b424Stack2 := (block2800b424Stack2) class.
            block2800b424PC := 18.
        ].
        block2800b424Step = 18 ifTrue: [
            block2800b424Stack3 := 'cleanUpBeforeRemoveNonInherited'.
            block2800b424PC := 20.
        ].
        block2800b424Step = 20 ifTrue: [
            block2800b424Stack2 := (block2800b424Stack2) includesSelector: (block2800b424Stack3).
            block2800b424PC := 22.
        ].
        block2800b424Step = 22 ifTrue: [
            (block2800b424Stack2) ifTrue: [block2800b424PC := 26] ifFalse: [block2800b424PC := 30].
        ].
        block2800b424Step = 26 ifTrue: [
            block2800b424PC := 27.
        ].
        block2800b424Step = 27 ifTrue: [
            block2800b424Stack1 := block2800b424Arg1.
            block2800b424PC := 28.
        ].
        block2800b424Step = 28 ifTrue: [
            block2800b424Stack1 := (block2800b424Stack1) cleanUpBeforeRemoveNonInherited.
            block2800b424PC := 30.
        ].
        block2800b424Step = 30 ifTrue: [
            block2800b424Result := block2800b424Stack1.
            block2800b424Done := true.
        ].
    ].
    block2800b424Result
].
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

