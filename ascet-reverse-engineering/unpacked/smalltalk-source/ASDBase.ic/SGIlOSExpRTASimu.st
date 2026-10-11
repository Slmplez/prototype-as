"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20068e2c; bytecode file offset 0x965b90"
!SGIlOSExpRTASimu methodsFor: 'recovered'!
oilStream
    | recoveredValue0 |
    recoveredValue0 := oilStream.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006a088; bytecode file offset 0x966bdc"
!SGIlOSExpRTASimu methodsFor: 'recovered'!
sourceFiles
    | recoveredValue0 |
    recoveredValue0 := sourceFiles.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006a79c; bytecode file offset 0x967a18"
!SGIlOSExpRTASimu methodsFor: 'recovered'!
taskSymbols
    | recoveredValue0 |
    recoveredValue0 := taskSymbols.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006b2d0; bytecode file offset 0x96873c"
!SGIlOSExpRTASimu methodsFor: 'recovered'!
data
    | recoveredValue0 |
    recoveredValue0 := data.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200c055c; bytecode file offset 0x9bd228"
!SGIlOSExpRTASimu methodsFor: 'recovered'!
oilStream: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    oilStream := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c0a50; bytecode file offset 0x9bdf14"
!SGIlOSExpRTASimu methodsFor: 'recovered'!
sourceFiles: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    sourceFiles := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c1e4c; bytecode file offset 0x9beac8"
!SGIlOSExpRTASimu methodsFor: 'recovered'!
taskSymbols: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    taskSymbols := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c2ae0; bytecode file offset 0x9bf474"
!SGIlOSExpRTASimu methodsFor: 'recovered'!
data: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    data := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200faa98; bytecode file offset 0x9f735c"
!SGIlOSExpRTASimu methodsFor: 'recovered'!
initialize
    | recoveredValue0 recoveredValue1 |
    super initialize.
    recoveredValue0 := (self) owner.
    recoveredValue1 := (recoveredValue0) createAnsiCCodeStream.
    oilStream := recoveredValue1.
    ^self
! !

"ASDBase.ic method 0x2018de34; bytecode file offset 0xa8a6f4"
!SGIlOSExpRTASimu methodsFor: 'recovered'!
driverThreads
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := driverThreads.
    recoveredValue1 := [
    | recoveredBlock6Value0 recoveredBlock6Value1 recoveredBlock6Value2 |
    recoveredBlock6Value0 := Dictionary.
    recoveredBlock6Value1 := (recoveredBlock6Value0) new.
    recoveredBlock6Value2 := recoveredBlock6Value1.
    driverThreads := recoveredBlock6Value2.
    recoveredBlock6Value1
].
    (recoveredValue0) ifNil: (recoveredValue1).
    recoveredValue2 := driverThreads.
    ^recoveredValue2
! !

"ASDBase.ic method 0x20355e9c; bytecode file offset 0xc52788"
!SGIlOSExpRTASimu methodsFor: 'recovered'!
generatedOSCode: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) sourceFiles.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := [:recoveredBlock5Arg1 | 
    | recoveredBlock5Local1 recoveredBlock5Value0 recoveredBlock5Value1 recoveredBlock5Value2 recoveredBlock5Value3 recoveredBlock5Value4 recoveredBlock5Value5 recoveredBlock5Value6 recoveredBlock5Value7 |
    recoveredBlock5Value0 := (self) sourceFiles.
    recoveredBlock5Value1 := recoveredBlock5Arg1.
    recoveredBlock5Value2 := (recoveredBlock5Value0) at: (recoveredBlock5Value1).
    recoveredBlock5Value3 := (recoveredBlock5Value2) contents.
    recoveredBlock5Local1 := recoveredBlock5Value3.
    recoveredBlock5Value4 := recoveredArg1.
    recoveredBlock5Value5 := recoveredBlock5Arg1.
    recoveredBlock5Value6 := recoveredBlock5Local1.
    recoveredBlock5Value7 := (recoveredBlock5Value4) task: (recoveredBlock5Value5) code: (recoveredBlock5Value6).
    recoveredBlock5Value7
].
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            (recoveredStack0) keysDo: (recoveredStack1).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack2 := (recoveredStack2) oilStream.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack2 := (recoveredStack2) contents.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            (recoveredStack1) codeOfOILConfiguration: (recoveredStack2).
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := (recoveredStack1) taskSymbols.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack2 := ''.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack3 := [:block280efa6cArg1 :block280efa6cArg2 | 
    | block280efa6cValue0 block280efa6cValue1 block280efa6cValue2 block280efa6cValue3 |
    block280efa6cValue0 := block280efa6cArg1.
    block280efa6cValue1 := (block280efa6cValue0) , (' ').
    block280efa6cValue2 := block280efa6cArg2.
    block280efa6cValue3 := (block280efa6cValue1) , (block280efa6cValue2).
    block280efa6cValue3
].
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack1 := (recoveredStack1) inject: (recoveredStack2) into: (recoveredStack3).
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            (recoveredStack0) taskSymbols: (recoveredStack1).
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

