"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x200205ac; bytecode file offset 0x92209c"
!ASAP2BytesCharacteristicValMatrix class methodsFor: 'recovered'!
subType
    ^'ValMatrix'
! !

"ASDBase.ic method 0x20080df0; bytecode file offset 0x97d6a4"
!ASAP2BytesCharacteristicValMatrix class methodsFor: 'recovered'!
asap2BehaviorId
    ^226
! !

"ASDBase.ic method 0x20090ef0; bytecode file offset 0x98d9dc"
!ASAP2BytesCharacteristicValMatrix class methodsFor: 'recovered'!
fixedSize
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := super fixedSize.
    recoveredValue1 := (recoveredValue0) + (1).
    ^recoveredValue1
! !

"ASDBase.ic method 0x200b61b8; bytecode file offset 0x9b39ac"
!ASAP2BytesCharacteristicValMatrix class methodsFor: 'recovered'!
setMembers
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := super setMembers.
    recoveredValue1 := (recoveredValue0) , (#('xSize:' 'ySize:')).
    ^recoveredValue1
! !

"ASDBase.ic method 0x200b6cf8; bytecode file offset 0x9b39ac"
!ASAP2BytesCharacteristicValMatrix class methodsFor: 'recovered'!
members
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := super members.
    recoveredValue1 := (recoveredValue0) , (#('xSize' 'ySize')).
    ^recoveredValue1
! !

"ASDBase.ic method 0x2039af18; bytecode file offset 0xc9780c"
!ASAP2BytesCharacteristicValMatrix class methodsFor: 'recovered'!
initializeKeyWords
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            super initializeKeyWords.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) options.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := [:block280f3fe4Arg1 | 
    | block280f3fe4Value0 block280f3fe4Value1 block280f3fe4Value2 |
    block280f3fe4Value0 := block280f3fe4Arg1.
    block280f3fe4Value1 := (block280f3fe4Value0) key.
    block280f3fe4Value2 := (block280f3fe4Value1) = ('NUMBER').
    block280f3fe4Value2
].
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack2 := [:recoveredBlock23Arg1 | 
    | recoveredBlock23Value0 recoveredBlock23Value1 recoveredBlock23Value2 recoveredBlock23Value3 |
    recoveredBlock23Value0 := (self) options.
    recoveredBlock23Value1 := recoveredBlock23Arg1.
    recoveredBlock23Value2 := [].
    recoveredBlock23Value3 := (recoveredBlock23Value0) remove: (recoveredBlock23Value1) ifAbsent: (recoveredBlock23Value2).
    recoveredBlock23Value3
].
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            (recoveredStack0) detect: (recoveredStack1) ifOne: (recoveredStack2).
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack0 := (recoveredStack0) options.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack1 := [:block280f4008Arg1 | 
    | block280f4008Value0 block280f4008Value1 block280f4008Value2 |
    block280f4008Value0 := block280f4008Arg1.
    block280f4008Value1 := (block280f4008Value0) key.
    block280f4008Value2 := (block280f4008Value1) = ('MATRIX_DIM').
    block280f4008Value2
].
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack2 := [
    | recoveredBlock53Value0 recoveredBlock53Value1 recoveredBlock53Value2 recoveredBlock53Value3 |
    recoveredBlock53Value0 := (self) options.
    recoveredBlock53Value1 := Association.
    recoveredBlock53Value2 := (recoveredBlock53Value1) key: ('MATRIX_DIM') value: ('putIn:matrixDim:').
    recoveredBlock53Value3 := (recoveredBlock53Value0) add: (recoveredBlock53Value2).
    recoveredBlock53Value3
].
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            (recoveredStack0) detect: (recoveredStack1) ifNone: (recoveredStack2).
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

