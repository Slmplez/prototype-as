"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2000d844; bytecode file offset 0x90a4b8"
!DBCompleteNameLabelKey methodsFor: 'recovered'!
uniqueLabelResult: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2001ea7c; bytecode file offset 0x92209c"
!DBCompleteNameLabelKey methodsFor: 'recovered'!
name
    ^'completeName'
! !

"ASDBase.ic method 0x20185348; bytecode file offset 0xa81c08"
!DBCompleteNameLabelKey methodsFor: 'recovered'!
matchSubString: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := (recoveredStack1) className.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := keyValue.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack3 := 0.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack2 := (recoveredStack2) uint16At: (recoveredStack3).
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 21] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := keyValue.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := (recoveredStack1) includesNameSubstring: (recoveredStack2).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x20217d8c; bytecode file offset 0xb14660"
!DBCompleteNameLabelKey methodsFor: 'recovered'!
sortBlock
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := [:block280dac28Arg1 :block280dac28Arg2 | 
    | block280dac28Stack0 block280dac28Stack1 block280dac28Stack2 block280dac28Stack3 block280dac28PC block280dac28Step block280dac28Done block280dac28Result |
    block280dac28Stack0 := self.
    block280dac28PC := 4.
    block280dac28Done := false.
    [block280dac28Done not] whileTrue: [
        block280dac28Step := block280dac28PC.
        block280dac28Step = 4 ifTrue: [
            block280dac28Stack1 := block280dac28Arg1.
            block280dac28PC := 5.
        ].
        block280dac28Step = 5 ifTrue: [
            block280dac28Stack1 := (block280dac28Stack1) className.
            block280dac28PC := 6.
        ].
        block280dac28Step = 6 ifTrue: [
            block280dac28Stack2 := block280dac28Arg2.
            block280dac28PC := 7.
        ].
        block280dac28Step = 7 ifTrue: [
            block280dac28Stack2 := (block280dac28Stack2) className.
            block280dac28PC := 8.
        ].
        block280dac28Step = 8 ifTrue: [
            block280dac28Stack1 := (block280dac28Stack1) = (block280dac28Stack2).
            block280dac28PC := 9.
        ].
        block280dac28Step = 9 ifTrue: [
            (block280dac28Stack1) ifTrue: [block280dac28PC := 12] ifFalse: [block280dac28PC := 20].
        ].
        block280dac28Step = 12 ifTrue: [
            block280dac28Stack1 := block280dac28Arg1.
            block280dac28PC := 13.
        ].
        block280dac28Step = 13 ifTrue: [
            block280dac28Stack1 := (block280dac28Stack1) name.
            block280dac28PC := 14.
        ].
        block280dac28Step = 14 ifTrue: [
            block280dac28Stack2 := block280dac28Arg2.
            block280dac28PC := 15.
        ].
        block280dac28Step = 15 ifTrue: [
            block280dac28Stack2 := (block280dac28Stack2) name.
            block280dac28PC := 16.
        ].
        block280dac28Step = 16 ifTrue: [
            block280dac28Stack1 := (block280dac28Stack1) < (block280dac28Stack2).
            block280dac28PC := 17.
        ].
        block280dac28Step = 17 ifTrue: [
            block280dac28PC := 25.
        ].
        block280dac28Step = 20 ifTrue: [
            block280dac28Stack1 := block280dac28Arg1.
            block280dac28PC := 21.
        ].
        block280dac28Step = 21 ifTrue: [
            block280dac28Stack1 := (block280dac28Stack1) className.
            block280dac28PC := 22.
        ].
        block280dac28Step = 22 ifTrue: [
            block280dac28Stack2 := block280dac28Arg2.
            block280dac28PC := 23.
        ].
        block280dac28Step = 23 ifTrue: [
            block280dac28Stack2 := (block280dac28Stack2) className.
            block280dac28PC := 24.
        ].
        block280dac28Step = 24 ifTrue: [
            block280dac28Stack1 := (block280dac28Stack1) < (block280dac28Stack2).
            block280dac28PC := 25.
        ].
        block280dac28Step = 25 ifTrue: [
            block280dac28Result := block280dac28Stack1.
            block280dac28Done := true.
        ].
    ].
    block280dac28Result
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

"ASDBase.ic method 0x2025aa1c; bytecode file offset 0xb572f0"
!DBCompleteNameLabelKey methodsFor: 'recovered'!
putKeyValueIn: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := keyValue.
    recoveredValue2 := (recoveredValue1) uint16At: (0).
    (recoveredValue0) className: (recoveredValue2).
    recoveredValue3 := keyValue.
    recoveredValue4 := recoveredArg1.
    recoveredValue5 := (recoveredValue4) recordClass.
    recoveredValue6 := (recoveredValue5) classNameLength.
    recoveredValue7 := recoveredArg1.
    recoveredValue8 := (recoveredValue7) recordClass.
    recoveredValue9 := (recoveredValue8) classNameLength.
    recoveredValue10 := recoveredArg1.
    recoveredValue11 := (recoveredValue10) recordClass.
    recoveredValue12 := (recoveredValue11) nameLength.
    recoveredValue13 := (recoveredValue9) + (recoveredValue12).
    recoveredValue14 := (recoveredValue13) + (-1).
    recoveredValue15 := (recoveredValue3) memcpyStringFrom: (recoveredValue6) to: (recoveredValue14).
    recoveredLocal1 := recoveredValue15.
    recoveredValue16 := recoveredLocal1.
    recoveredValue17 := (recoveredValue16) trimNull.
    recoveredLocal1 := recoveredValue17.
    recoveredValue18 := recoveredArg1.
    recoveredValue19 := recoveredLocal1.
    (recoveredValue18) name: (recoveredValue19).
    ^self
! !

