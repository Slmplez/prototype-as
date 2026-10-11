"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20040ad4; bytecode file offset 0x93d83c"
!RBOnlineDLLDataChannel methodsFor: 'recovered'!
isEmpty
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := displayChannels.
    recoveredValue1 := (recoveredValue0) isEmpty.
    ^recoveredValue1
! !

"ASDBase.ic method 0x200415f4; bytecode file offset 0x93e1a0"
!RBOnlineDLLDataChannel methodsFor: 'recovered'!
name
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := dataId.
    recoveredValue1 := (recoveredValue0) wName.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2006618c; bytecode file offset 0x963428"
!RBOnlineDLLDataChannel methodsFor: 'recovered'!
curveId
    | recoveredValue0 |
    recoveredValue0 := curveId.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006751c; bytecode file offset 0x9646f8"
!RBOnlineDLLDataChannel methodsFor: 'recovered'!
displayChannels
    | recoveredValue0 |
    recoveredValue0 := displayChannels.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20069184; bytecode file offset 0x965b90"
!RBOnlineDLLDataChannel methodsFor: 'recovered'!
channelId
    | recoveredValue0 |
    recoveredValue0 := channelId.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20069fc8; bytecode file offset 0x966bdc"
!RBOnlineDLLDataChannel methodsFor: 'recovered'!
dataId
    | recoveredValue0 |
    recoveredValue0 := dataId.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006a6a4; bytecode file offset 0x967a18"
!RBOnlineDLLDataChannel methodsFor: 'recovered'!
channelHandle
    | recoveredValue0 |
    recoveredValue0 := channelHandle.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200896d8; bytecode file offset 0x985fa4"
!RBOnlineDLLDataChannel methodsFor: 'recovered'!
initialize
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := OrderedCollection.
    recoveredValue1 := (recoveredValue0) new.
    displayChannels := recoveredValue1.
    ^self
! !

"ASDBase.ic method 0x200be0f4; bytecode file offset 0x9bb178"
!RBOnlineDLLDataChannel methodsFor: 'recovered'!
curveId: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    curveId := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200bfedc; bytecode file offset 0x9bd228"
!RBOnlineDLLDataChannel methodsFor: 'recovered'!
channelId: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    channelId := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c09b0; bytecode file offset 0x9bdf14"
!RBOnlineDLLDataChannel methodsFor: 'recovered'!
dataId: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    dataId := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c19cc; bytecode file offset 0x9beac8"
!RBOnlineDLLDataChannel methodsFor: 'recovered'!
channelHandle: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    channelHandle := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x2016d294; bytecode file offset 0xa69b60"
!RBOnlineDLLDataChannel methodsFor: 'recovered'!
addDisplayChannelId: recoveredArg1 window: recoveredArg2
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 |
    recoveredValue0 := (self) class.
    recoveredValue1 := (recoveredValue0) defaultDisplayChannelClass.
    recoveredValue2 := (recoveredValue1) new.
    recoveredValue3 := recoveredValue2.
    recoveredValue4 := recoveredArg1.
    (recoveredValue3) displayChannelId: (recoveredValue4).
    recoveredValue5 := recoveredArg2.
    recoveredValue6 := (recoveredValue2) windowId: (recoveredValue5).
    recoveredLocal1 := recoveredValue6.
    recoveredValue7 := displayChannels.
    recoveredValue8 := recoveredLocal1.
    recoveredValue9 := (recoveredValue7) add: (recoveredValue8).
    ^recoveredValue9
! !

"ASDBase.ic method 0x201a7800; bytecode file offset 0xaa40c0"
!RBOnlineDLLDataChannel methodsFor: 'recovered'!
hasNoDisplayChannelsAtBitPosition: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := displayChannels.
    recoveredValue1 := [:recoveredBlock6Arg1 | 
    | recoveredBlock6Value0 recoveredBlock6Value1 recoveredBlock6Value2 recoveredBlock6Value3 |
    recoveredBlock6Value0 := recoveredBlock6Arg1.
    recoveredBlock6Value1 := (recoveredBlock6Value0) bitPosition.
    recoveredBlock6Value2 := recoveredArg1.
    recoveredBlock6Value3 := (recoveredBlock6Value1) = (recoveredBlock6Value2).
    recoveredBlock6Value3
].
    recoveredValue2 := [].
    recoveredValue3 := (recoveredValue0) detect: (recoveredValue1) ifNone: (recoveredValue2).
    recoveredValue4 := (recoveredValue3) isNil.
    ^recoveredValue4
! !

"ASDBase.ic method 0x201acf98; bytecode file offset 0xaa9868"
!RBOnlineDLLDataChannel methodsFor: 'recovered'!
addBitDisplayChannelId: recoveredArg1 window: recoveredArg2 bitPosition: recoveredArg3
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 |
    recoveredValue0 := (self) class.
    recoveredValue1 := (recoveredValue0) defaultDisplayChannelClass.
    recoveredValue2 := (recoveredValue1) new.
    recoveredValue3 := recoveredValue2.
    recoveredValue4 := recoveredArg1.
    (recoveredValue3) displayChannelId: (recoveredValue4).
    recoveredValue5 := recoveredValue2.
    recoveredValue6 := recoveredArg2.
    (recoveredValue5) windowId: (recoveredValue6).
    recoveredValue7 := recoveredArg3.
    recoveredValue8 := (recoveredValue2) bitPosition: (recoveredValue7).
    recoveredLocal1 := recoveredValue8.
    recoveredValue9 := displayChannels.
    recoveredValue10 := recoveredLocal1.
    recoveredValue11 := (recoveredValue9) add: (recoveredValue10).
    ^recoveredValue11
! !

"ASDBase.ic method 0x202d9514; bytecode file offset 0xbd5dec"
!RBOnlineDLLDataChannel methodsFor: 'recovered'!
printOn: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 |
    recoveredValue0 := recoveredArg1.
    super printOn: (recoveredValue0).
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredValue1.
    (recoveredValue2) cr.
    recoveredValue3 := recoveredValue1.
    recoveredValue4 := channelId.
    recoveredValue5 := (recoveredValue4) printString.
    recoveredValue6 := ('channelId = ') , (recoveredValue5).
    (recoveredValue3) nextPutAll: (recoveredValue6).
    recoveredValue7 := recoveredValue1.
    recoveredValue8 := dataId.
    recoveredValue9 := (recoveredValue8) printString.
    recoveredValue10 := ('; dataId = ') , (recoveredValue9).
    (recoveredValue7) nextPutAll: (recoveredValue10).
    recoveredValue11 := recoveredValue1.
    recoveredValue12 := displayChannels.
    recoveredValue13 := (recoveredValue12) printString.
    recoveredValue14 := ('; dispChannels = ') , (recoveredValue13).
    (recoveredValue11) nextPutAll: (recoveredValue14).
    (recoveredValue1) cr.
    recoveredValue15 := recoveredArg1.
    ^recoveredValue15
! !

"ASDBase.ic method 0x202de3d4; bytecode file offset 0xbdaca0"
!RBOnlineDLLDataChannel methodsFor: 'recovered'!
removeDisplayChannelId: recoveredArg1 window: recoveredArg2
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := displayChannels.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := [:recoveredBlock6Arg1 | 
    | recoveredBlock6Value0 recoveredBlock6Value1 recoveredBlock6Value2 recoveredBlock6Value3 recoveredBlock6Value4 recoveredBlock6Value5 recoveredBlock6Value6 recoveredBlock6Value7 recoveredBlock6Value8 |
    recoveredBlock6Value0 := recoveredBlock6Arg1.
    recoveredBlock6Value1 := (recoveredBlock6Value0) displayChannelId.
    recoveredBlock6Value2 := recoveredArg1.
    recoveredBlock6Value3 := (recoveredBlock6Value1) = (recoveredBlock6Value2).
    recoveredBlock6Value4 := recoveredBlock6Arg1.
    recoveredBlock6Value5 := (recoveredBlock6Value4) windowId.
    recoveredBlock6Value6 := recoveredArg2.
    recoveredBlock6Value7 := (recoveredBlock6Value5) = (recoveredBlock6Value6).
    recoveredBlock6Value8 := (recoveredBlock6Value3) & (recoveredBlock6Value7).
    recoveredBlock6Value8
].
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack3 := [].
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := (recoveredStack1) detect: (recoveredStack2) ifNone: (recoveredStack3).
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 42] ifFalse: [recoveredPC := 40].
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := displayChannels.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack1 := (recoveredStack1) remove: (recoveredStack2).
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

