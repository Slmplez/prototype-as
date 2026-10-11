"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2000ccf4; bytecode file offset 0x909658"
!RBAxisGridGraph methodsFor: 'recovered'!
includes: recoveredArg1
    ^false
! !

"ASDBase.ic method 0x2006efd4; bytecode file offset 0x96b8a0"
!RBAxisGridGraph methodsFor: 'recovered'!
getChannel
    | recoveredValue0 |
    recoveredValue0 := channel.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20078494; bytecode file offset 0x9757c8"
!RBAxisGridGraph methodsFor: 'recovered'!
isAxisGridGraph
    ^true
! !

"ASDBase.ic method 0x2009d334; bytecode file offset 0x999bec"
!RBAxisGridGraph methodsFor: 'recovered'!
getPosition
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := frame.
    recoveredValue1 := (recoveredValue0) extent.
    recoveredValue2 := (recoveredValue1) // (2).
    ^recoveredValue2
! !

"ASDBase.ic method 0x200a8c58; bytecode file offset 0x9a5510"
!RBAxisGridGraph methodsFor: 'recovered'!
setFrame: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    frame := recoveredValue0.
    (self) updateDisplayedObjects.
    ^self
! !

"ASDBase.ic method 0x200b33d0; bytecode file offset 0x9afc8c"
!RBAxisGridGraph methodsFor: 'recovered'!
signalValueMoved
    | recoveredValue0 |
    (self) updateDisplayedObjects.
    recoveredValue0 := (self) frame.
    oldRect := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x20106458; bytecode file offset 0xa02d14"
!RBAxisGridGraph methodsFor: 'recovered'!
frame
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := frame.
    recoveredValue1 := (self) lineWidth.
    recoveredValue2 := (recoveredValue1) // (2).
    recoveredValue3 := (recoveredValue2) + (5).
    recoveredValue4 := (recoveredValue0) expandBy: (recoveredValue3).
    ^recoveredValue4
! !

"ASDBase.ic method 0x20157d24; bytecode file offset 0xa545e0"
!RBAxisGridGraph methodsFor: 'recovered'!
initFrame: recoveredArg1 channel: recoveredArg2 manager: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    frame := recoveredValue0.
    recoveredValue1 := recoveredArg2.
    channel := recoveredValue1.
    recoveredValue2 := recoveredArg3.
    manager := recoveredValue2.
    (self) initialize.
    (self) updateDisplayedObjects.
    ^self
! !

"ASDBase.ic method 0x20198d44; bytecode file offset 0xa95618"
!RBAxisGridGraph methodsFor: 'recovered'!
redisplayRectsForSignalEditing
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := OrderedCollection.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := oldRect.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 22] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := oldRect.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack1) add: (recoveredStack2).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            oldRect := recoveredStack1.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x201f6418; bytecode file offset 0xaf2d00"
!RBAxisGridGraph methodsFor: 'recovered'!
mixingRule: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    super mixingRule: (recoveredValue0).
    recoveredValue1 := displayedObjects.
    recoveredValue2 := [:recoveredBlock13Arg1 | 
    | recoveredBlock13Value0 recoveredBlock13Value1 recoveredBlock13Value2 |
    recoveredBlock13Value0 := recoveredBlock13Arg1.
    recoveredBlock13Value1 := recoveredArg1.
    recoveredBlock13Value2 := (recoveredBlock13Value0) mixingRule: (recoveredBlock13Value1).
    recoveredBlock13Value2
].
    (recoveredValue1) do: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x201f642c; bytecode file offset 0xaf2d00"
!RBAxisGridGraph methodsFor: 'recovered'!
lineColor: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    super lineColor: (recoveredValue0).
    recoveredValue1 := displayedObjects.
    recoveredValue2 := [:recoveredBlock13Arg1 | 
    | recoveredBlock13Value0 recoveredBlock13Value1 recoveredBlock13Value2 |
    recoveredBlock13Value0 := recoveredBlock13Arg1.
    recoveredBlock13Value1 := recoveredArg1.
    recoveredBlock13Value2 := (recoveredBlock13Value0) lineColor: (recoveredBlock13Value1).
    recoveredBlock13Value2
].
    (recoveredValue1) do: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x20203248; bytecode file offset 0xaffb0c"
!RBAxisGridGraph methodsFor: 'recovered'!
displayOn: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := channel.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) getLogWAxis.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) getActive.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := displayedObjects.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := [:recoveredBlock16Arg1 | 
    | recoveredBlock16Value0 recoveredBlock16Value1 recoveredBlock16Value2 |
    recoveredBlock16Value0 := recoveredBlock16Arg1.
    recoveredBlock16Value1 := recoveredArg1.
    recoveredBlock16Value2 := (recoveredBlock16Value0) displayOn: (recoveredBlock16Value1).
    recoveredBlock16Value2
].
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20252b1c; bytecode file offset 0xb4f400"
!RBAxisGridGraph methodsFor: 'recovered'!
initialize
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 |
    recoveredValue0 := OrderedCollection.
    recoveredValue1 := (recoveredValue0) new.
    displayedObjects := recoveredValue1.
    super initialize.
    recoveredValue2 := RBLineStyle.
    recoveredValue3 := (recoveredValue2) createDefault.
    recoveredValue4 := recoveredValue3.
    recoveredValue5 := LineSolid.
    (recoveredValue4) type: (recoveredValue5).
    recoveredValue6 := recoveredValue3.
    recoveredValue7 := (self) getController.
    recoveredValue8 := (recoveredValue7) defaultAxisGridColor.
    (recoveredValue6) color: (recoveredValue8).
    recoveredValue9 := (recoveredValue3) width: (0).
    lineStyle := recoveredValue9.
    ^self
! !

"ASDBase.ic method 0x2051a874; bytecode file offset 0xe17170"
!RBAxisGridGraph methodsFor: 'recovered'!
updateDisplayedObjects
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredLocal6 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 |
    recoveredValue0 := OrderedCollection.
    recoveredValue1 := (recoveredValue0) new.
    recoveredLocal6 := recoveredValue1.
    recoveredValue2 := channel.
    recoveredValue3 := (recoveredValue2) getLogXAxis.
    recoveredValue4 := (recoveredValue3) graphObject.
    recoveredLocal2 := recoveredValue4.
    recoveredValue5 := channel.
    recoveredValue6 := (recoveredValue5) getLogWAxis.
    recoveredValue7 := (recoveredValue6) graphObject.
    recoveredLocal1 := recoveredValue7.
    recoveredValue8 := recoveredLocal2.
    recoveredValue9 := (recoveredValue8) getTicObjects.
    recoveredLocal5 := recoveredValue9.
    recoveredValue10 := recoveredLocal5.
    recoveredValue11 := [:recoveredBlock36Arg1 | 
    | recoveredBlock36Value0 recoveredBlock36Value1 recoveredBlock36Value2 recoveredBlock36Value3 recoveredBlock36Value4 recoveredBlock36Value5 recoveredBlock36Value6 recoveredBlock36Value7 recoveredBlock36Value8 recoveredBlock36Value9 recoveredBlock36Value10 recoveredBlock36Value11 recoveredBlock36Value12 recoveredBlock36Value13 recoveredBlock36Value14 recoveredBlock36Value15 recoveredBlock36Value16 recoveredBlock36Value17 recoveredBlock36Value18 recoveredBlock36Value19 recoveredBlock36Value20 recoveredBlock36Value21 |
    recoveredBlock36Value0 := ('Rnz') == ('EHI_37156').
    recoveredBlock36Value1 := recoveredBlock36Arg1.
    recoveredBlock36Value2 := (recoveredBlock36Value1) pointA.
    recoveredBlock36Value3 := (recoveredBlock36Value2) x.
    recoveredBlock36Value4 := frame.
    recoveredBlock36Value5 := (recoveredBlock36Value4) origin.
    recoveredBlock36Value6 := (recoveredBlock36Value5) y.
    recoveredBlock36Value7 := (recoveredBlock36Value3) @ (recoveredBlock36Value6).
    recoveredLocal4 := recoveredBlock36Value7.
    recoveredBlock36Value8 := recoveredLocal4.
    recoveredBlock36Value9 := frame.
    recoveredBlock36Value10 := (recoveredBlock36Value9) extent.
    recoveredBlock36Value11 := (recoveredBlock36Value10) y.
    recoveredBlock36Value12 := (0) @ (recoveredBlock36Value11).
    recoveredBlock36Value13 := (recoveredBlock36Value8) + (recoveredBlock36Value12).
    recoveredLocal3 := recoveredBlock36Value13.
    recoveredBlock36Value14 := recoveredLocal6.
    recoveredBlock36Value15 := RBLineGO.
    recoveredBlock36Value16 := lineStyle.
    recoveredBlock36Value17 := manager.
    recoveredBlock36Value18 := recoveredLocal4.
    recoveredBlock36Value19 := recoveredLocal3.
    recoveredBlock36Value20 := (recoveredBlock36Value15) createWithLineStyle: (recoveredBlock36Value16) manager: (recoveredBlock36Value17) pointA: (recoveredBlock36Value18) pointB: (recoveredBlock36Value19).
    recoveredBlock36Value21 := (recoveredBlock36Value14) add: (recoveredBlock36Value20).
    recoveredBlock36Value21
].
    (recoveredValue10) do: (recoveredValue11).
    recoveredValue12 := recoveredLocal1.
    recoveredValue13 := (recoveredValue12) getTicObjects.
    recoveredLocal5 := recoveredValue13.
    recoveredValue14 := recoveredLocal5.
    recoveredValue15 := [:recoveredBlock115Arg1 | 
    | recoveredBlock115Value0 recoveredBlock115Value1 recoveredBlock115Value2 recoveredBlock115Value3 recoveredBlock115Value4 recoveredBlock115Value5 recoveredBlock115Value6 recoveredBlock115Value7 recoveredBlock115Value8 recoveredBlock115Value9 recoveredBlock115Value10 recoveredBlock115Value11 recoveredBlock115Value12 recoveredBlock115Value13 recoveredBlock115Value14 recoveredBlock115Value15 recoveredBlock115Value16 recoveredBlock115Value17 recoveredBlock115Value18 recoveredBlock115Value19 recoveredBlock115Value20 recoveredBlock115Value21 |
    recoveredBlock115Value0 := ('Rnz') == ('EHI_37156').
    recoveredBlock115Value1 := frame.
    recoveredBlock115Value2 := (recoveredBlock115Value1) origin.
    recoveredBlock115Value3 := (recoveredBlock115Value2) x.
    recoveredBlock115Value4 := recoveredBlock115Arg1.
    recoveredBlock115Value5 := (recoveredBlock115Value4) pointA.
    recoveredBlock115Value6 := (recoveredBlock115Value5) y.
    recoveredBlock115Value7 := (recoveredBlock115Value3) @ (recoveredBlock115Value6).
    recoveredLocal4 := recoveredBlock115Value7.
    recoveredBlock115Value8 := recoveredLocal4.
    recoveredBlock115Value9 := frame.
    recoveredBlock115Value10 := (recoveredBlock115Value9) extent.
    recoveredBlock115Value11 := (recoveredBlock115Value10) x.
    recoveredBlock115Value12 := (recoveredBlock115Value11) @ (0).
    recoveredBlock115Value13 := (recoveredBlock115Value8) + (recoveredBlock115Value12).
    recoveredLocal3 := recoveredBlock115Value13.
    recoveredBlock115Value14 := recoveredLocal6.
    recoveredBlock115Value15 := RBLineGO.
    recoveredBlock115Value16 := lineStyle.
    recoveredBlock115Value17 := manager.
    recoveredBlock115Value18 := recoveredLocal4.
    recoveredBlock115Value19 := recoveredLocal3.
    recoveredBlock115Value20 := (recoveredBlock115Value15) createWithLineStyle: (recoveredBlock115Value16) manager: (recoveredBlock115Value17) pointA: (recoveredBlock115Value18) pointB: (recoveredBlock115Value19).
    recoveredBlock115Value21 := (recoveredBlock115Value14) add: (recoveredBlock115Value20).
    recoveredBlock115Value21
].
    (recoveredValue14) do: (recoveredValue15).
    recoveredValue16 := recoveredLocal6.
    displayedObjects := recoveredValue16.
    ^self
! !

