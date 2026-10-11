"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2001cbb0; bytecode file offset 0x92209c"
!AMLXcpOnlyState class methodsFor: 'recovered'!
vkeyWord
    ^'UseAMLOnlyForXcp'
! !

"ASDBase.ic method 0x2001dc90; bytecode file offset 0x92209c"
!AMLXcpOnlyState class methodsFor: 'recovered'!
keyWord
    ^'UseAMLOnlyForXcp'
! !

"ASDBase.ic method 0x204be480; bytecode file offset 0xdbad94"
!AMLXcpOnlyState class methodsFor: 'recovered'!
parseFrom: recoveredArg1
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
            recoveredStack2 := 'XCP'.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := (recoveredStack1) includesSubstring: (recoveredStack2).
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := Smalltalk.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack2 := 'AMLDeclaration'.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack3 := [].
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2) ifAbsent: (recoveredStack3).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack2 := [:recoveredBlock24Arg1 | 
    | recoveredBlock24Local1 recoveredBlock24Local2 recoveredBlock24Stack0 recoveredBlock24Stack1 recoveredBlock24Stack2 recoveredBlock24Stack3 recoveredBlock24Stack4 recoveredBlock24PC recoveredBlock24Step recoveredBlock24Done recoveredBlock24Result |
    recoveredBlock24Stack0 := self.
    recoveredBlock24PC := 30.
    recoveredBlock24Done := false.
    [recoveredBlock24Done not] whileTrue: [
        recoveredBlock24Step := recoveredBlock24PC.
        recoveredBlock24Step = 30 ifTrue: [
            recoveredBlock24Stack1 := [
    | recoveredBlock24Block30Value0 recoveredBlock24Block30Value1 recoveredBlock24Block30Value2 recoveredBlock24Block30Value3 |
    recoveredBlock24Block30Value0 := recoveredBlock24Arg1.
    recoveredBlock24Block30Value1 := recoveredArg1.
    recoveredBlock24Block30Value2 := (recoveredBlock24Block30Value0) createFromString: (recoveredBlock24Block30Value1).
    recoveredBlock24Block30Value3 := recoveredBlock24Block30Value2.
    recoveredBlock24Local2 := recoveredBlock24Block30Value3.
    recoveredBlock24Block30Value2
].
            recoveredBlock24PC := 49.
        ].
        recoveredBlock24Step = 49 ifTrue: [
            recoveredBlock24Stack2 := ExError.
            recoveredBlock24PC := 51.
        ].
        recoveredBlock24Step = 51 ifTrue: [
            recoveredBlock24Stack3 := [:block281063e4Arg1 | 
    | block281063e4Stack0 block281063e4Stack1 block281063e4Stack2 block281063e4Stack3 block281063e4PC block281063e4Step block281063e4Done block281063e4Result |
    block281063e4Stack0 := self.
    block281063e4PC := 4.
    block281063e4Done := false.
    [block281063e4Done not] whileTrue: [
        block281063e4Step := block281063e4PC.
        block281063e4Step = 4 ifTrue: [
            block281063e4Stack1 := block281063e4Arg1.
            block281063e4PC := 5.
        ].
        block281063e4Step = 5 ifTrue: [
            block281063e4Stack1 := (block281063e4Stack1) exception.
            block281063e4PC := 7.
        ].
        block281063e4Step = 7 ifTrue: [
            block281063e4Stack2 := ExHalt.
            block281063e4PC := 9.
        ].
        block281063e4Step = 9 ifTrue: [
            block281063e4Stack1 := (block281063e4Stack1) = (block281063e4Stack2).
            block281063e4PC := 10.
        ].
        block281063e4Step = 10 ifTrue: [
            (block281063e4Stack1) ifTrue: [block281063e4PC := 14] ifFalse: [block281063e4PC := 20].
        ].
        block281063e4Step = 14 ifTrue: [
            block281063e4Stack1 := block281063e4Arg1.
            block281063e4PC := 15.
        ].
        block281063e4Step = 15 ifTrue: [
            block281063e4Stack1 := (block281063e4Stack1) signal.
            block281063e4PC := 17.
        ].
        block281063e4Step = 17 ifTrue: [
            block281063e4PC := 24.
        ].
        block281063e4Step = 20 ifTrue: [
            block281063e4Stack1 := block281063e4Arg1.
            block281063e4PC := 21.
        ].
        block281063e4Step = 21 ifTrue: [
            block281063e4Stack2 := nil.
            block281063e4PC := 22.
        ].
        block281063e4Step = 22 ifTrue: [
            block281063e4Stack1 := (block281063e4Stack1) exitWith: (block281063e4Stack2).
            block281063e4PC := 24.
        ].
        block281063e4Step = 24 ifTrue: [
            block281063e4Result := block281063e4Stack1.
            block281063e4Done := true.
        ].
    ].
    block281063e4Result
].
            recoveredBlock24PC := 53.
        ].
        recoveredBlock24Step = 53 ifTrue: [
            recoveredBlock24PC := 77.
        ].
        recoveredBlock24Step = 77 ifTrue: [
            (recoveredBlock24Stack1) when: (recoveredBlock24Stack2) do: (recoveredBlock24Stack3).
            recoveredBlock24PC := 79.
        ].
        recoveredBlock24Step = 79 ifTrue: [
            recoveredBlock24Stack1 := recoveredBlock24Local2.
            recoveredBlock24PC := 82.
        ].
        recoveredBlock24Step = 82 ifTrue: [
            (recoveredBlock24Stack1 ~~ nil) ifTrue: [recoveredBlock24PC := 88] ifFalse: [recoveredBlock24PC := 86].
        ].
        recoveredBlock24Step = 86 ifTrue: [
            recoveredBlock24Stack1 := nil.
            recoveredBlock24PC := 87.
        ].
        recoveredBlock24Step = 87 ifTrue: [
            ^recoveredBlock24Stack1
        ].
        recoveredBlock24Step = 88 ifTrue: [
            recoveredBlock24Stack1 := recoveredBlock24Local2.
            recoveredBlock24PC := 91.
        ].
        recoveredBlock24Step = 91 ifTrue: [
            recoveredBlock24Stack2 := 'IF_DATA'.
            recoveredBlock24PC := 93.
        ].
        recoveredBlock24Step = 93 ifTrue: [
            recoveredBlock24Stack1 := (recoveredBlock24Stack1) getTaggedStructFor: (recoveredBlock24Stack2).
            recoveredBlock24PC := 95.
        ].
        recoveredBlock24Step = 95 ifTrue: [
            recoveredBlock24Local1 := recoveredBlock24Stack1.
            recoveredBlock24PC := 98.
        ].
        recoveredBlock24Step = 98 ifTrue: [
            recoveredBlock24Stack1 := recoveredBlock24Local1.
            recoveredBlock24PC := 101.
        ].
        recoveredBlock24Step = 101 ifTrue: [
            recoveredBlock24Stack1 := (recoveredBlock24Stack1) parts.
            recoveredBlock24PC := 103.
        ].
        recoveredBlock24Step = 103 ifTrue: [
            recoveredBlock24Stack1 := (recoveredBlock24Stack1) first.
            recoveredBlock24PC := 105.
        ].
        recoveredBlock24Step = 105 ifTrue: [
            recoveredBlock24Stack2 := recoveredBlock24Local1.
            recoveredBlock24PC := 108.
        ].
        recoveredBlock24Step = 108 ifTrue: [
            recoveredBlock24Stack2 := (recoveredBlock24Stack2) parts.
            recoveredBlock24PC := 110.
        ].
        recoveredBlock24Step = 110 ifTrue: [
            recoveredBlock24Stack2 := (recoveredBlock24Stack2) first.
            recoveredBlock24PC := 112.
        ].
        recoveredBlock24Step = 112 ifTrue: [
            recoveredBlock24Stack2 := (recoveredBlock24Stack2) parts.
            recoveredBlock24PC := 114.
        ].
        recoveredBlock24Step = 114 ifTrue: [
            recoveredBlock24Stack3 := [:block28106408Arg1 | 
    | block28106408Stack0 block28106408Stack1 block28106408Stack2 block28106408Stack3 block28106408Stack4 block28106408PC block28106408Step block28106408Done block28106408Result |
    block28106408Stack0 := self.
    block28106408PC := 4.
    block28106408Done := false.
    [block28106408Done not] whileTrue: [
        block28106408Step := block28106408PC.
        block28106408Step = 4 ifTrue: [
            block28106408Stack1 := true.
            block28106408PC := 5.
        ].
        block28106408Step = 5 ifTrue: [
            block28106408Stack2 := block28106408Arg1.
            block28106408PC := 6.
        ].
        block28106408Step = 6 ifTrue: [
            block28106408Stack2 := (block28106408Stack2) name.
            block28106408PC := 8.
        ].
        block28106408Step = 8 ifTrue: [
            block28106408Stack3 := 'XCP'.
            block28106408PC := 10.
        ].
        block28106408Step = 10 ifTrue: [
            block28106408Stack2 := (block28106408Stack2) = (block28106408Stack3).
            block28106408PC := 11.
        ].
        block28106408Step = 11 ifTrue: [
            (block28106408Stack2) ifTrue: [block28106408PC := 21] ifFalse: [block28106408PC := 14].
        ].
        block28106408Step = 14 ifTrue: [
            block28106408PC := 15.
        ].
        block28106408Step = 15 ifTrue: [
            block28106408Stack1 := block28106408Arg1.
            block28106408PC := 16.
        ].
        block28106408Step = 16 ifTrue: [
            block28106408Stack1 := (block28106408Stack1) name.
            block28106408PC := 18.
        ].
        block28106408Step = 18 ifTrue: [
            block28106408Stack2 := 'ETAS_ODX_HANDLING'.
            block28106408PC := 20.
        ].
        block28106408Step = 20 ifTrue: [
            block28106408Stack1 := (block28106408Stack1) = (block28106408Stack2).
            block28106408PC := 21.
        ].
        block28106408Step = 21 ifTrue: [
            block28106408Result := block28106408Stack1.
            block28106408Done := true.
        ].
    ].
    block28106408Result
].
            recoveredBlock24PC := 116.
        ].
        recoveredBlock24Step = 116 ifTrue: [
            recoveredBlock24PC := 138.
        ].
        recoveredBlock24Step = 138 ifTrue: [
            recoveredBlock24Stack2 := (recoveredBlock24Stack2) select: (recoveredBlock24Stack3).
            recoveredBlock24PC := 140.
        ].
        recoveredBlock24Step = 140 ifTrue: [
            (recoveredBlock24Stack1) parts: (recoveredBlock24Stack2).
            recoveredBlock24PC := 142.
        ].
        recoveredBlock24Step = 142 ifTrue: [
            recoveredBlock24Stack1 := recoveredBlock24Local2.
            recoveredBlock24PC := 145.
        ].
        recoveredBlock24Step = 145 ifTrue: [
            recoveredBlock24Result := recoveredBlock24Stack1.
            recoveredBlock24Done := true.
        ].
    ].
    recoveredBlock24Result
].
            recoveredPC := 146.
        ].
        recoveredStep = 146 ifTrue: [
            recoveredStack1 := (recoveredStack1) ifNotNil: (recoveredStack2).
            recoveredPC := 148.
        ].
        recoveredStep = 148 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

