"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2001ae88; bytecode file offset 0x92209c"
!ASAP2RecordLayoutLabel methodsFor: 'recovered'!
iconName
    ^'ET16_PROJECTGROUP'
! !

"ASDBase.ic method 0x2003fee0; bytecode file offset 0x93d278"
!ASAP2RecordLayoutLabel methodsFor: 'recovered'!
alignmentReal64
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := asap2.
    recoveredValue1 := (recoveredValue0) alignmentReal64.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2003ff40; bytecode file offset 0x93d278"
!ASAP2RecordLayoutLabel methodsFor: 'recovered'!
alignmentWord
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := asap2.
    recoveredValue1 := (recoveredValue0) alignmentWord.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20040714; bytecode file offset 0x93d278"
!ASAP2RecordLayoutLabel methodsFor: 'recovered'!
alignmentReal32
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := asap2.
    recoveredValue1 := (recoveredValue0) alignmentReal32.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20040810; bytecode file offset 0x93d278"
!ASAP2RecordLayoutLabel methodsFor: 'recovered'!
allNamedPositioned
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := asap2.
    recoveredValue1 := (recoveredValue0) allNamedPositioned.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20040834; bytecode file offset 0x93d278"
!ASAP2RecordLayoutLabel methodsFor: 'recovered'!
alignmentByte
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := asap2.
    recoveredValue1 := (recoveredValue0) alignmentByte.
    ^recoveredValue1
! !

"ASDBase.ic method 0x200409b4; bytecode file offset 0x93d278"
!ASAP2RecordLayoutLabel methodsFor: 'recovered'!
alignmentDWord
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := asap2.
    recoveredValue1 := (recoveredValue0) alignmentDWord.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2016336c; bytecode file offset 0xa5fc2c"
!ASAP2RecordLayoutLabel methodsFor: 'recovered'!
iconString
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := asap2.
    recoveredValue1 := (recoveredValue0) iconString.
    recoveredValue2 := [:recoveredBlock7Arg1 | 
    | recoveredBlock7Value0 |
    recoveredBlock7Value0 := recoveredBlock7Arg1.
    ^recoveredBlock7Value0
].
    (recoveredValue1) ifNotNil: (recoveredValue2).
    ^'GeneralStop'
! !

"ASDBase.ic method 0x202820a8; bytecode file offset 0xb7e970"
!ASAP2RecordLayoutLabel methodsFor: 'recovered'!
getIsReferencedBy
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := isReferencedBy.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 39] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := asap2.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) getSpecificationModule.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := asap2.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) referencesFromLabelsToRecordLayout: (recoveredStack2).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := [:recoveredBlock16Arg1 | 
    | recoveredBlock16Value0 recoveredBlock16Value1 recoveredBlock16Value2 |
    recoveredBlock16Value0 := recoveredBlock16Arg1.
    recoveredBlock16Value1 := device.
    recoveredBlock16Value2 := (recoveredBlock16Value0) labelFor: (recoveredBlock16Value1).
    recoveredBlock16Value2
].
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack3 := [:block280e145cArg1 | 
    | block280e145cValue0 block280e145cValue1 |
    block280e145cValue0 := block280e145cArg1.
    block280e145cValue1 := (block280e145cValue0) notNil.
    block280e145cValue1
].
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := (recoveredStack1) collect: (recoveredStack2) select: (recoveredStack3).
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            isReferencedBy := recoveredStack1.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack1 := isReferencedBy.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

