"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2001ce68; bytecode file offset 0x92209c"
!DBClassNameFunctionKey methodsFor: 'recovered'!
name
    ^'classNameFunction'
! !

"ASDBase.ic method 0x20217d78; bytecode file offset 0xb14660"
!DBClassNameFunctionKey methodsFor: 'recovered'!
sortBlock
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := [:block280dac04Arg1 :block280dac04Arg2 | 
    | block280dac04Stack0 block280dac04Stack1 block280dac04Stack2 block280dac04Stack3 block280dac04PC block280dac04Step block280dac04Done block280dac04Result |
    block280dac04Stack0 := self.
    block280dac04PC := 4.
    block280dac04Done := false.
    [block280dac04Done not] whileTrue: [
        block280dac04Step := block280dac04PC.
        block280dac04Step = 4 ifTrue: [
            block280dac04Stack1 := block280dac04Arg1.
            block280dac04PC := 5.
        ].
        block280dac04Step = 5 ifTrue: [
            block280dac04Stack1 := (block280dac04Stack1) className.
            block280dac04PC := 6.
        ].
        block280dac04Step = 6 ifTrue: [
            block280dac04Stack2 := block280dac04Arg2.
            block280dac04PC := 7.
        ].
        block280dac04Step = 7 ifTrue: [
            block280dac04Stack2 := (block280dac04Stack2) className.
            block280dac04PC := 8.
        ].
        block280dac04Step = 8 ifTrue: [
            block280dac04Stack1 := (block280dac04Stack1) = (block280dac04Stack2).
            block280dac04PC := 9.
        ].
        block280dac04Step = 9 ifTrue: [
            (block280dac04Stack1) ifTrue: [block280dac04PC := 12] ifFalse: [block280dac04PC := 20].
        ].
        block280dac04Step = 12 ifTrue: [
            block280dac04Stack1 := block280dac04Arg1.
            block280dac04PC := 13.
        ].
        block280dac04Step = 13 ifTrue: [
            block280dac04Stack1 := (block280dac04Stack1) function.
            block280dac04PC := 14.
        ].
        block280dac04Step = 14 ifTrue: [
            block280dac04Stack2 := block280dac04Arg2.
            block280dac04PC := 15.
        ].
        block280dac04Step = 15 ifTrue: [
            block280dac04Stack2 := (block280dac04Stack2) function.
            block280dac04PC := 16.
        ].
        block280dac04Step = 16 ifTrue: [
            block280dac04Stack1 := (block280dac04Stack1) < (block280dac04Stack2).
            block280dac04PC := 17.
        ].
        block280dac04Step = 17 ifTrue: [
            block280dac04PC := 25.
        ].
        block280dac04Step = 20 ifTrue: [
            block280dac04Stack1 := block280dac04Arg1.
            block280dac04PC := 21.
        ].
        block280dac04Step = 21 ifTrue: [
            block280dac04Stack1 := (block280dac04Stack1) className.
            block280dac04PC := 22.
        ].
        block280dac04Step = 22 ifTrue: [
            block280dac04Stack2 := block280dac04Arg2.
            block280dac04PC := 23.
        ].
        block280dac04Step = 23 ifTrue: [
            block280dac04Stack2 := (block280dac04Stack2) className.
            block280dac04PC := 24.
        ].
        block280dac04Step = 24 ifTrue: [
            block280dac04Stack1 := (block280dac04Stack1) < (block280dac04Stack2).
            block280dac04PC := 25.
        ].
        block280dac04Step = 25 ifTrue: [
            block280dac04Result := block280dac04Stack1.
            block280dac04Done := true.
        ].
    ].
    block280dac04Result
].
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2022067c; bytecode file offset 0xb1cf50"
!DBClassNameFunctionKey methodsFor: 'recovered'!
putKeyValueIn: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := keyValue.
    recoveredValue2 := (recoveredValue1) uint16At: (0).
    (recoveredValue0) className: (recoveredValue2).
    recoveredValue3 := keyValue.
    recoveredValue4 := recoveredArg1.
    recoveredValue5 := (recoveredValue4) recordClass.
    recoveredValue6 := (recoveredValue5) classNameLength.
    recoveredValue7 := keyValue.
    recoveredValue8 := (recoveredValue7) size.
    recoveredValue9 := (recoveredValue3) memcpyStringFrom: (recoveredValue6) to: (recoveredValue8).
    recoveredLocal1 := recoveredValue9.
    recoveredValue10 := recoveredLocal1.
    recoveredValue11 := (recoveredValue10) trimNull.
    recoveredLocal1 := recoveredValue11.
    recoveredValue12 := recoveredArg1.
    recoveredValue13 := recoveredLocal1.
    (recoveredValue12) function: (recoveredValue13).
    ^self
! !

