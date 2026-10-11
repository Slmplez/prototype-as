"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"xxx_dyn.ic method 0x200015c4; bytecode file offset 0x626a4"
!SstHttpServletSupport class methodsFor: 'recovered'!
classMethodCategories
    ^#('SST-API Developer' 'SST-API User' 'SST-Internal')
! !

"xxx_dyn.ic method 0x20002868; bytecode file offset 0x63b1c"
!SstHttpServletSupport class methodsFor: 'recovered'!
failedRemove
    (self) loaded.
    ^self
! !

"xxx_dyn.ic method 0x20005cd8; bytecode file offset 0x66da4"
!SstHttpServletSupport class methodsFor: 'recovered'!
packagingRulesFor: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (recoveredValue0) doNotReduceClassNamed: ('SstHttpServletEngine').
    ^self
! !

"xxx_dyn.ic method 0x200074ec; bytecode file offset 0x685bc"
!SstHttpServletSupport class methodsFor: 'recovered'!
httpInvocationConfiguration
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := SstInvocationConfiguration.
    recoveredValue1 := (recoveredValue0) httpConfiguration.
    recoveredValue2 := recoveredValue1.
    (recoveredValue2) marshaler: (nil).
    ^recoveredValue1
! !

"xxx_dyn.ic method 0x200188a0; bytecode file offset 0x79c2c"
!SstHttpServletSupport class methodsFor: 'recovered'!
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
            recoveredStack2 := [:block2800b304Arg1 | 
    | block2800b304Stack0 block2800b304Stack1 block2800b304Stack2 block2800b304Stack3 block2800b304Stack4 block2800b304PC block2800b304Step block2800b304Done block2800b304Result |
    block2800b304Stack0 := self.
    block2800b304PC := 4.
    block2800b304Done := false.
    [block2800b304Done not] whileTrue: [
        block2800b304Step := block2800b304PC.
        block2800b304Step = 4 ifTrue: [
            block2800b304Stack1 := block2800b304Arg1.
            block2800b304PC := 5.
        ].
        block2800b304Step = 5 ifTrue: [
            block2800b304Stack2 := 'setupAfterLoad'.
            block2800b304PC := 7.
        ].
        block2800b304Step = 7 ifTrue: [
            block2800b304Stack1 := (block2800b304Stack1) respondsTo: (block2800b304Stack2).
            block2800b304PC := 8.
        ].
        block2800b304Step = 8 ifTrue: [
            (block2800b304Stack1) ifTrue: [block2800b304PC := 12] ifFalse: [block2800b304PC := 15].
        ].
        block2800b304Step = 12 ifTrue: [
            block2800b304Stack1 := block2800b304Arg1.
            block2800b304PC := 13.
        ].
        block2800b304Step = 13 ifTrue: [
            (block2800b304Stack1) setupAfterLoad.
            block2800b304PC := 15.
        ].
        block2800b304Step = 15 ifTrue: [
            block2800b304Stack1 := nil.
            block2800b304PC := 16.
        ].
        block2800b304Step = 16 ifTrue: [
            block2800b304Stack2 := block2800b304Arg1.
            block2800b304PC := 17.
        ].
        block2800b304Step = 17 ifTrue: [
            block2800b304Stack2 := (block2800b304Stack2) class.
            block2800b304PC := 18.
        ].
        block2800b304Step = 18 ifTrue: [
            block2800b304Stack3 := 'setupAfterLoadNonInherited'.
            block2800b304PC := 20.
        ].
        block2800b304Step = 20 ifTrue: [
            block2800b304Stack2 := (block2800b304Stack2) includesSelector: (block2800b304Stack3).
            block2800b304PC := 22.
        ].
        block2800b304Step = 22 ifTrue: [
            (block2800b304Stack2) ifTrue: [block2800b304PC := 26] ifFalse: [block2800b304PC := 30].
        ].
        block2800b304Step = 26 ifTrue: [
            block2800b304PC := 27.
        ].
        block2800b304Step = 27 ifTrue: [
            block2800b304Stack1 := block2800b304Arg1.
            block2800b304PC := 28.
        ].
        block2800b304Step = 28 ifTrue: [
            block2800b304Stack1 := (block2800b304Stack1) setupAfterLoadNonInherited.
            block2800b304PC := 30.
        ].
        block2800b304Step = 30 ifTrue: [
            block2800b304Result := block2800b304Stack1.
            block2800b304Done := true.
        ].
    ].
    block2800b304Result
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

"xxx_dyn.ic method 0x20018a74; bytecode file offset 0x79c2c"
!SstHttpServletSupport class methodsFor: 'recovered'!
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
            recoveredStack2 := [:block2800b4d8Arg1 | 
    | block2800b4d8Stack0 block2800b4d8Stack1 block2800b4d8Stack2 block2800b4d8Stack3 block2800b4d8Stack4 block2800b4d8PC block2800b4d8Step block2800b4d8Done block2800b4d8Result |
    block2800b4d8Stack0 := self.
    block2800b4d8PC := 4.
    block2800b4d8Done := false.
    [block2800b4d8Done not] whileTrue: [
        block2800b4d8Step := block2800b4d8PC.
        block2800b4d8Step = 4 ifTrue: [
            block2800b4d8Stack1 := block2800b4d8Arg1.
            block2800b4d8PC := 5.
        ].
        block2800b4d8Step = 5 ifTrue: [
            block2800b4d8Stack2 := 'cleanUpBeforeRemove'.
            block2800b4d8PC := 7.
        ].
        block2800b4d8Step = 7 ifTrue: [
            block2800b4d8Stack1 := (block2800b4d8Stack1) respondsTo: (block2800b4d8Stack2).
            block2800b4d8PC := 8.
        ].
        block2800b4d8Step = 8 ifTrue: [
            (block2800b4d8Stack1) ifTrue: [block2800b4d8PC := 12] ifFalse: [block2800b4d8PC := 15].
        ].
        block2800b4d8Step = 12 ifTrue: [
            block2800b4d8Stack1 := block2800b4d8Arg1.
            block2800b4d8PC := 13.
        ].
        block2800b4d8Step = 13 ifTrue: [
            (block2800b4d8Stack1) cleanUpBeforeRemove.
            block2800b4d8PC := 15.
        ].
        block2800b4d8Step = 15 ifTrue: [
            block2800b4d8Stack1 := nil.
            block2800b4d8PC := 16.
        ].
        block2800b4d8Step = 16 ifTrue: [
            block2800b4d8Stack2 := block2800b4d8Arg1.
            block2800b4d8PC := 17.
        ].
        block2800b4d8Step = 17 ifTrue: [
            block2800b4d8Stack2 := (block2800b4d8Stack2) class.
            block2800b4d8PC := 18.
        ].
        block2800b4d8Step = 18 ifTrue: [
            block2800b4d8Stack3 := 'cleanUpBeforeRemoveNonInherited'.
            block2800b4d8PC := 20.
        ].
        block2800b4d8Step = 20 ifTrue: [
            block2800b4d8Stack2 := (block2800b4d8Stack2) includesSelector: (block2800b4d8Stack3).
            block2800b4d8PC := 22.
        ].
        block2800b4d8Step = 22 ifTrue: [
            (block2800b4d8Stack2) ifTrue: [block2800b4d8PC := 26] ifFalse: [block2800b4d8PC := 30].
        ].
        block2800b4d8Step = 26 ifTrue: [
            block2800b4d8PC := 27.
        ].
        block2800b4d8Step = 27 ifTrue: [
            block2800b4d8Stack1 := block2800b4d8Arg1.
            block2800b4d8PC := 28.
        ].
        block2800b4d8Step = 28 ifTrue: [
            block2800b4d8Stack1 := (block2800b4d8Stack1) cleanUpBeforeRemoveNonInherited.
            block2800b4d8PC := 30.
        ].
        block2800b4d8Step = 30 ifTrue: [
            block2800b4d8Result := block2800b4d8Stack1.
            block2800b4d8Done := true.
        ].
    ].
    block2800b4d8Result
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

