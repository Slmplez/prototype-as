"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2003d438; bytecode file offset 0x93bf94"
!RBDataStorageManager methodsFor: 'recovered'!
oemConverter
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := RBOemConversion.
    recoveredValue1 := (recoveredValue0) instance.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20066eb4; bytecode file offset 0x9646f8"
!RBDataStorageManager methodsFor: 'recovered'!
ticksPerSecond
    | recoveredValue0 |
    recoveredValue0 := ticksPerSecond.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20082f08; bytecode file offset 0x97f81c"
!RBDataStorageManager methodsFor: 'recovered'!
ticksPerSecond: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredValue0.
    ticksPerSecond := recoveredValue1.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2008c050; bytecode file offset 0x988b68"
!RBDataStorageManager methodsFor: 'recovered'!
secondsPerTick
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) ticksPerSecond.
    recoveredValue1 := (#[0 0 0 0 0 0 240 63]) / (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x2022fbe8; bytecode file offset 0xb2c4bc"
!RBDataStorageManager methodsFor: 'recovered'!
freeOnlineDLLBuffers
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := acquisitionList.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := [:block280dcda0Arg1 | 
    | block280dcda0Value0 block280dcda0Value1 block280dcda0Value2 block280dcda0Value3 block280dcda0Value4 block280dcda0Value5 block280dcda0Value6 block280dcda0Value7 block280dcda0Value8 block280dcda0Value9 block280dcda0Value10 |
    block280dcda0Value0 := OSHglobal.
    block280dcda0Value1 := block280dcda0Arg1.
    block280dcda0Value2 := (block280dcda0Value1) x.
    block280dcda0Value3 := (block280dcda0Value2) dataBufferHandle.
    block280dcda0Value4 := (block280dcda0Value0) immediate: (block280dcda0Value3).
    (block280dcda0Value4) globalFree.
    block280dcda0Value5 := OSHglobal.
    block280dcda0Value6 := block280dcda0Arg1.
    block280dcda0Value7 := (block280dcda0Value6) y.
    block280dcda0Value8 := (block280dcda0Value7) dataBufferHandle.
    block280dcda0Value9 := (block280dcda0Value5) immediate: (block280dcda0Value8).
    block280dcda0Value10 := (block280dcda0Value9) globalFree.
    block280dcda0Value10
].
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

