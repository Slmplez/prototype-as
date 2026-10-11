"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x200182b4; bytecode file offset 0x92209c"
!DBCompleteNameFunctionKey methodsFor: 'recovered'!
name
    ^'completeNameFunction'
! !

"ASDBase.ic method 0x200fd128; bytecode file offset 0x9f9a10"
!DBCompleteNameFunctionKey methodsFor: 'recovered'!
uniqueLabelResult: recoveredArg1
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
            recoveredStack2 := [:block280c6048Arg1 | 
    | block280c6048Value0 block280c6048Value1 |
    block280c6048Value0 := block280c6048Arg1.
    block280c6048Value1 := (block280c6048Value0) hasEmptyFunctionTag.
    block280c6048Value1
].
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) select: (recoveredStack2).
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x20255dd4; bytecode file offset 0xb526a0"
!DBCompleteNameFunctionKey methodsFor: 'recovered'!
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
            recoveredStack1 := recoveredArg1.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := super matchSubString: (recoveredStack1).
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 36] ifFalse: [recoveredPC := 30].
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := keyValue.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack0 := (recoveredStack0) includesFunctionSubstring: (recoveredStack1).
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := true.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x202cdaf4; bytecode file offset 0xbca3b8"
!DBCompleteNameFunctionKey methodsFor: 'recovered'!
sortBlock
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := [:block280e5c14Arg1 :block280e5c14Arg2 | 
    | block280e5c14Stack0 block280e5c14Stack1 block280e5c14Stack2 block280e5c14Stack3 block280e5c14PC block280e5c14Step block280e5c14Done block280e5c14Result |
    block280e5c14Stack0 := self.
    block280e5c14PC := 4.
    block280e5c14Done := false.
    [block280e5c14Done not] whileTrue: [
        block280e5c14Step := block280e5c14PC.
        block280e5c14Step = 4 ifTrue: [
            block280e5c14Stack1 := block280e5c14Arg1.
            block280e5c14PC := 5.
        ].
        block280e5c14Step = 5 ifTrue: [
            block280e5c14Stack1 := (block280e5c14Stack1) className.
            block280e5c14PC := 6.
        ].
        block280e5c14Step = 6 ifTrue: [
            block280e5c14Stack2 := block280e5c14Arg2.
            block280e5c14PC := 7.
        ].
        block280e5c14Step = 7 ifTrue: [
            block280e5c14Stack2 := (block280e5c14Stack2) className.
            block280e5c14PC := 8.
        ].
        block280e5c14Step = 8 ifTrue: [
            block280e5c14Stack1 := (block280e5c14Stack1) = (block280e5c14Stack2).
            block280e5c14PC := 9.
        ].
        block280e5c14Step = 9 ifTrue: [
            (block280e5c14Stack1) ifTrue: [block280e5c14PC := 12] ifFalse: [block280e5c14PC := 36].
        ].
        block280e5c14Step = 12 ifTrue: [
            block280e5c14Stack1 := block280e5c14Arg1.
            block280e5c14PC := 13.
        ].
        block280e5c14Step = 13 ifTrue: [
            block280e5c14Stack1 := (block280e5c14Stack1) name.
            block280e5c14PC := 14.
        ].
        block280e5c14Step = 14 ifTrue: [
            block280e5c14Stack2 := block280e5c14Arg2.
            block280e5c14PC := 15.
        ].
        block280e5c14Step = 15 ifTrue: [
            block280e5c14Stack2 := (block280e5c14Stack2) name.
            block280e5c14PC := 16.
        ].
        block280e5c14Step = 16 ifTrue: [
            block280e5c14Stack1 := (block280e5c14Stack1) = (block280e5c14Stack2).
            block280e5c14PC := 17.
        ].
        block280e5c14Step = 17 ifTrue: [
            (block280e5c14Stack1) ifTrue: [block280e5c14PC := 20] ifFalse: [block280e5c14PC := 28].
        ].
        block280e5c14Step = 20 ifTrue: [
            block280e5c14Stack1 := block280e5c14Arg1.
            block280e5c14PC := 21.
        ].
        block280e5c14Step = 21 ifTrue: [
            block280e5c14Stack1 := (block280e5c14Stack1) function.
            block280e5c14PC := 22.
        ].
        block280e5c14Step = 22 ifTrue: [
            block280e5c14Stack2 := block280e5c14Arg2.
            block280e5c14PC := 23.
        ].
        block280e5c14Step = 23 ifTrue: [
            block280e5c14Stack2 := (block280e5c14Stack2) function.
            block280e5c14PC := 24.
        ].
        block280e5c14Step = 24 ifTrue: [
            block280e5c14Stack1 := (block280e5c14Stack1) > (block280e5c14Stack2).
            block280e5c14PC := 25.
        ].
        block280e5c14Step = 25 ifTrue: [
            block280e5c14PC := 33.
        ].
        block280e5c14Step = 28 ifTrue: [
            block280e5c14Stack1 := block280e5c14Arg1.
            block280e5c14PC := 29.
        ].
        block280e5c14Step = 29 ifTrue: [
            block280e5c14Stack1 := (block280e5c14Stack1) name.
            block280e5c14PC := 30.
        ].
        block280e5c14Step = 30 ifTrue: [
            block280e5c14Stack2 := block280e5c14Arg2.
            block280e5c14PC := 31.
        ].
        block280e5c14Step = 31 ifTrue: [
            block280e5c14Stack2 := (block280e5c14Stack2) name.
            block280e5c14PC := 32.
        ].
        block280e5c14Step = 32 ifTrue: [
            block280e5c14Stack1 := (block280e5c14Stack1) < (block280e5c14Stack2).
            block280e5c14PC := 33.
        ].
        block280e5c14Step = 33 ifTrue: [
            block280e5c14PC := 41.
        ].
        block280e5c14Step = 36 ifTrue: [
            block280e5c14Stack1 := block280e5c14Arg1.
            block280e5c14PC := 37.
        ].
        block280e5c14Step = 37 ifTrue: [
            block280e5c14Stack1 := (block280e5c14Stack1) className.
            block280e5c14PC := 38.
        ].
        block280e5c14Step = 38 ifTrue: [
            block280e5c14Stack2 := block280e5c14Arg2.
            block280e5c14PC := 39.
        ].
        block280e5c14Step = 39 ifTrue: [
            block280e5c14Stack2 := (block280e5c14Stack2) className.
            block280e5c14PC := 40.
        ].
        block280e5c14Step = 40 ifTrue: [
            block280e5c14Stack1 := (block280e5c14Stack1) < (block280e5c14Stack2).
            block280e5c14PC := 41.
        ].
        block280e5c14Step = 41 ifTrue: [
            block280e5c14Result := block280e5c14Stack1.
            block280e5c14Done := true.
        ].
    ].
    block280e5c14Result
].
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x20346c30; bytecode file offset 0xc43508"
!DBCompleteNameFunctionKey methodsFor: 'recovered'!
putKeyValueIn: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 recoveredValue21 recoveredValue22 recoveredValue23 recoveredValue24 recoveredValue25 recoveredValue26 recoveredValue27 recoveredValue28 recoveredValue29 recoveredValue30 recoveredValue31 recoveredValue32 recoveredValue33 recoveredValue34 |
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
    (recoveredValue18) className: (recoveredValue19).
    recoveredValue20 := keyValue.
    recoveredValue21 := recoveredArg1.
    recoveredValue22 := (recoveredValue21) recordClass.
    recoveredValue23 := (recoveredValue22) classNameLength.
    recoveredValue24 := recoveredArg1.
    recoveredValue25 := (recoveredValue24) recordClass.
    recoveredValue26 := (recoveredValue25) nameLength.
    recoveredValue27 := (recoveredValue23) + (recoveredValue26).
    recoveredValue28 := keyValue.
    recoveredValue29 := (recoveredValue28) size.
    recoveredValue30 := (recoveredValue20) memcpyStringFrom: (recoveredValue27) to: (recoveredValue29).
    recoveredLocal1 := recoveredValue30.
    recoveredValue31 := recoveredLocal1.
    recoveredValue32 := (recoveredValue31) trimNull.
    recoveredLocal1 := recoveredValue32.
    recoveredValue33 := recoveredArg1.
    recoveredValue34 := recoveredLocal1.
    (recoveredValue33) name: (recoveredValue34).
    ^self
! !

