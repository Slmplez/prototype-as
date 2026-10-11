"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20068094; bytecode file offset 0x965b90"
!SGSmEstimateSizeCalibrate methodsFor: 'recovered'!
counter
    | recoveredValue0 |
    recoveredValue0 := counter.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200c053c; bytecode file offset 0x9bd228"
!SGSmEstimateSizeCalibrate methodsFor: 'recovered'!
counter: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    counter := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200f9ef4; bytecode file offset 0x9f6878"
!SGSmEstimateSizeCalibrate methodsFor: 'recovered'!
initialize
    | recoveredValue0 recoveredValue1 |
    super initialize.
    recoveredValue0 := LookupTable.
    recoveredValue1 := (recoveredValue0) new.
    counter := recoveredValue1.
    ^self
! !

"ASDBase.ic method 0x201e5ee0; bytecode file offset 0xae27a8"
!SGSmEstimateSizeCalibrate methodsFor: 'recovered'!
cost: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := counter.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack3 := counter.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack4 := recoveredArg1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack5 := [
    0
].
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack3 := (recoveredStack3) at: (recoveredStack4) ifAbsent: (recoveredStack5).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack3 := (recoveredStack3) + (1).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := (recoveredStack0) class.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := (recoveredStack0) cost: (recoveredStack1).
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201e6508; bytecode file offset 0xae2dcc"
!SGSmEstimateSizeCalibrate methodsFor: 'recovered'!
estimateSizeAll: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    totalSize := 0.
    recoveredValue0 := LookupTable.
    recoveredValue1 := (recoveredValue0) new.
    counter := recoveredValue1.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := [:recoveredBlock14Arg1 | 
    | recoveredBlock14Value0 recoveredBlock14Value1 |
    recoveredBlock14Value0 := recoveredBlock14Arg1.
    recoveredBlock14Value1 := (recoveredBlock14Value0) mdlAcceptNodeVisitor: (self).
    recoveredBlock14Value1
].
    (recoveredValue2) do: (recoveredValue3).
    recoveredValue4 := totalSize.
    ^recoveredValue4
! !

"ASDBase.ic method 0x2020fbac; bytecode file offset 0xb0c474"
!SGSmEstimateSizeCalibrate methodsFor: 'recovered'!
cost: recoveredArg1 times: recoveredArg2
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := counter.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack3 := counter.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack4 := recoveredArg1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack5 := [
    0
].
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack3 := (recoveredStack3) at: (recoveredStack4) ifAbsent: (recoveredStack5).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack4 := recoveredArg2.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack3 := (recoveredStack3) + (recoveredStack4).
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := (recoveredStack0) class.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := (recoveredStack0) cost: (recoveredStack1).
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := (recoveredStack0) * (recoveredStack1).
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20277b74; bytecode file offset 0xb74440"
!SGSmEstimateSizeCalibrate methodsFor: 'recovered'!
writeToStream: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := counter.
    recoveredValue1 := [:recoveredBlock6Arg1 :recoveredBlock6Arg2 | 
    | recoveredBlock6Value0 recoveredBlock6Value1 recoveredBlock6Value2 recoveredBlock6Value3 recoveredBlock6Value4 recoveredBlock6Value5 recoveredBlock6Value6 recoveredBlock6Value7 |
    recoveredBlock6Value0 := recoveredArg1.
    recoveredBlock6Value1 := recoveredBlock6Value0.
    recoveredBlock6Value2 := recoveredBlock6Arg2.
    recoveredBlock6Value3 := (recoveredBlock6Value2) asString.
    (recoveredBlock6Value1) nextPutAll: (recoveredBlock6Value3).
    recoveredBlock6Value4 := recoveredBlock6Value0.
    (recoveredBlock6Value4) nextPutAll: ('*').
    recoveredBlock6Value5 := recoveredBlock6Value0.
    recoveredBlock6Value6 := recoveredBlock6Arg1.
    (recoveredBlock6Value5) nextPutAll: (recoveredBlock6Value6).
    recoveredBlock6Value7 := (recoveredBlock6Value0) nextPutAll: (' ').
    recoveredBlock6Value7
].
    (recoveredValue0) keysAndValuesDo: (recoveredValue1).
    recoveredValue2 := recoveredArg1.
    (recoveredValue2) cr.
    ^self
! !

"ASDBase.ic method 0x20336dc8; bytecode file offset 0xc336a4"
!SGSmEstimateSizeCalibrate methodsFor: 'recovered'!
+ recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 |
    recoveredValue0 := counter.
    recoveredValue1 := (recoveredValue0) copy.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (recoveredValue2) counter.
    recoveredValue4 := [:recoveredBlock14Arg1 :recoveredBlock14Arg2 | 
    | recoveredBlock14Value0 recoveredBlock14Value1 recoveredBlock14Value2 recoveredBlock14Value3 recoveredBlock14Value4 recoveredBlock14Value5 recoveredBlock14Value6 recoveredBlock14Value7 |
    recoveredBlock14Value0 := recoveredLocal1.
    recoveredBlock14Value1 := recoveredBlock14Arg1.
    recoveredBlock14Value2 := counter.
    recoveredBlock14Value3 := recoveredBlock14Arg1.
    recoveredBlock14Value4 := (recoveredBlock14Value2) at: (recoveredBlock14Value3) ifAbsent: (0).
    recoveredBlock14Value5 := recoveredBlock14Arg2.
    recoveredBlock14Value6 := (recoveredBlock14Value4) + (recoveredBlock14Value5).
    recoveredBlock14Value7 := (recoveredBlock14Value0) at: (recoveredBlock14Value1) put: (recoveredBlock14Value6).
    recoveredBlock14Value7
].
    (recoveredValue3) keysAndValuesDo: (recoveredValue4).
    recoveredValue5 := (self) class.
    recoveredValue6 := (recoveredValue5) create.
    recoveredValue7 := recoveredValue6.
    recoveredValue8 := recoveredLocal1.
    (recoveredValue7) counter: (recoveredValue8).
    recoveredValue9 := recoveredValue6.
    recoveredValue10 := (self) totalSize.
    recoveredValue11 := recoveredArg1.
    recoveredValue12 := (recoveredValue11) totalSize.
    recoveredValue13 := (recoveredValue10) + (recoveredValue12).
    (recoveredValue9) totalSize: (recoveredValue13).
    ^recoveredValue6
! !

"ASDBase.ic method 0x20336e38; bytecode file offset 0xc33714"
!SGSmEstimateSizeCalibrate methodsFor: 'recovered'!
- recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 |
    recoveredValue0 := counter.
    recoveredValue1 := (recoveredValue0) copy.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (recoveredValue2) counter.
    recoveredValue4 := [:recoveredBlock14Arg1 :recoveredBlock14Arg2 | 
    | recoveredBlock14Value0 recoveredBlock14Value1 recoveredBlock14Value2 recoveredBlock14Value3 recoveredBlock14Value4 recoveredBlock14Value5 recoveredBlock14Value6 recoveredBlock14Value7 |
    recoveredBlock14Value0 := recoveredLocal1.
    recoveredBlock14Value1 := recoveredBlock14Arg1.
    recoveredBlock14Value2 := counter.
    recoveredBlock14Value3 := recoveredBlock14Arg1.
    recoveredBlock14Value4 := (recoveredBlock14Value2) at: (recoveredBlock14Value3) ifAbsent: (0).
    recoveredBlock14Value5 := recoveredBlock14Arg2.
    recoveredBlock14Value6 := (recoveredBlock14Value4) - (recoveredBlock14Value5).
    recoveredBlock14Value7 := (recoveredBlock14Value0) at: (recoveredBlock14Value1) put: (recoveredBlock14Value6).
    recoveredBlock14Value7
].
    (recoveredValue3) keysAndValuesDo: (recoveredValue4).
    recoveredValue5 := (self) class.
    recoveredValue6 := (recoveredValue5) create.
    recoveredValue7 := recoveredValue6.
    recoveredValue8 := recoveredLocal1.
    (recoveredValue7) counter: (recoveredValue8).
    recoveredValue9 := recoveredValue6.
    recoveredValue10 := (self) totalSize.
    recoveredValue11 := recoveredArg1.
    recoveredValue12 := (recoveredValue11) totalSize.
    recoveredValue13 := (recoveredValue10) - (recoveredValue12).
    (recoveredValue9) totalSize: (recoveredValue13).
    ^recoveredValue6
! !

