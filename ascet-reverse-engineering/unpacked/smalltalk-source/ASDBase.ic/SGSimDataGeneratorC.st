"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20040ab0; bytecode file offset 0x93d83c"
!SGSimDataGeneratorC methodsFor: 'recovered'!
dataGeneratorDic
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := mainController.
    recoveredValue1 := (recoveredValue0) dataGeneratorDic.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20040f6c; bytecode file offset 0x93d83c"
!SGSimDataGeneratorC methodsFor: 'recovered'!
dataChannels
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := mainController.
    recoveredValue1 := (recoveredValue0) dataChannels.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2005d558; bytecode file offset 0x959e64"
!SGSimDataGeneratorC methodsFor: 'recovered'!
removeAllDataChannels
    | recoveredValue0 |
    recoveredValue0 := mainController.
    (recoveredValue0) removeAllDataChannels.
    ^self
! !

"ASDBase.ic method 0x200928f0; bytecode file offset 0x98f298"
!SGSimDataGeneratorC methodsFor: 'recovered'!
createDataChannel: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := mainController.
    recoveredValue1 := recoveredArg1.
    (recoveredValue0) createDataChannel: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x20092908; bytecode file offset 0x98f298"
!SGSimDataGeneratorC methodsFor: 'recovered'!
removeDataChannel: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := mainController.
    recoveredValue1 := recoveredArg1.
    (recoveredValue0) removeDataChannel: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x200b201c; bytecode file offset 0x9aea94"
!SGSimDataGeneratorC methodsFor: 'recovered'!
matrixChannels
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := ('Muzaffar') == ('EHI_15158').
    recoveredValue1 := (self) signalledChannels.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2015ca3c; bytecode file offset 0xa592f8"
!SGSimDataGeneratorC methodsFor: 'recovered'!
update
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := userInterface.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := userInterface.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) isDestroyed.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := userInterface.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            (recoveredStack1) updateDataGenView.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201d5e70; bytecode file offset 0xad2740"
!SGSimDataGeneratorC methodsFor: 'recovered'!
signalledChannels
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := 'Muzaffar'.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := 'EHI_15158'.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) == (recoveredStack2).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := mainController.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) dataChannels.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := [:block280d5618Arg1 | 
    | block280d5618Value0 block280d5618Value1 block280d5618Value2 |
    block280d5618Value0 := block280d5618Arg1.
    block280d5618Value1 := (block280d5618Value0) mode.
    block280d5618Value2 := (block280d5618Value1) = ('signal').
    block280d5618Value2
].
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := (recoveredStack1) select: (recoveredStack2).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

