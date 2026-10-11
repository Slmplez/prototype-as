"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"extwid.ic method 0x20000e58; bytecode file offset 0x52154"
!EwSliderScale methodsFor: 'recovered'!
hasVisibleTicks
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) visibleTicks.
    recoveredValue1 := (recoveredValue0) notEmpty.
    ^recoveredValue1
! !

"extwid.ic method 0x20000fa8; bytecode file offset 0x52154"
!EwSliderScale methodsFor: 'recovered'!
hasVisibleDetents
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) visibleDetents.
    recoveredValue1 := (recoveredValue0) notEmpty.
    ^recoveredValue1
! !

"extwid.ic method 0x20001088; bytecode file offset 0x52154"
!EwSliderScale methodsFor: 'recovered'!
hasTicks
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) ticks.
    recoveredValue1 := (recoveredValue0) notEmpty.
    ^recoveredValue1
! !

"extwid.ic method 0x200010c8; bytecode file offset 0x52154"
!EwSliderScale methodsFor: 'recovered'!
hasDetents
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) detents.
    recoveredValue1 := (recoveredValue0) notEmpty.
    ^recoveredValue1
! !

"extwid.ic method 0x20002714; bytecode file offset 0x534f0"
!EwSliderScale methodsFor: 'recovered'!
min
    | recoveredValue0 |
    recoveredValue0 := min.
    ^recoveredValue0
! !

"extwid.ic method 0x2000286c; bytecode file offset 0x53678"
!EwSliderScale methodsFor: 'recovered'!
max
    | recoveredValue0 |
    recoveredValue0 := max.
    ^recoveredValue0
! !

"extwid.ic method 0x20002984; bytecode file offset 0x53810"
!EwSliderScale methodsFor: 'recovered'!
resolution
    | recoveredValue0 |
    recoveredValue0 := resolution.
    ^recoveredValue0
! !

"extwid.ic method 0x20002aa4; bytecode file offset 0x53998"
!EwSliderScale methodsFor: 'recovered'!
shaftIncrement
    | recoveredValue0 |
    recoveredValue0 := shaftIncrement.
    ^recoveredValue0
! !

"extwid.ic method 0x20002c4c; bytecode file offset 0x53ae8"
!EwSliderScale methodsFor: 'recovered'!
ticks
    | recoveredValue0 |
    recoveredValue0 := ticks.
    ^recoveredValue0
! !

"extwid.ic method 0x20002dd4; bytecode file offset 0x53c68"
!EwSliderScale methodsFor: 'recovered'!
detents
    | recoveredValue0 |
    recoveredValue0 := detents.
    ^recoveredValue0
! !

"extwid.ic method 0x20002f34; bytecode file offset 0x53da8"
!EwSliderScale methodsFor: 'recovered'!
currentValue
    | recoveredValue0 |
    recoveredValue0 := currentValue.
    ^recoveredValue0
! !

"extwid.ic method 0x20005198; bytecode file offset 0x56094"
!EwSliderScale methodsFor: 'recovered'!
addDetent: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) detents.
    recoveredValue1 := recoveredArg1.
    (recoveredValue0) add: (recoveredValue1).
    ^self
! !

"extwid.ic method 0x200052c8; bytecode file offset 0x56094"
!EwSliderScale methodsFor: 'recovered'!
addTick: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) ticks.
    recoveredValue1 := recoveredArg1.
    (recoveredValue0) add: (recoveredValue1).
    ^self
! !

"extwid.ic method 0x2000541c; bytecode file offset 0x56288"
!EwSliderScale methodsFor: 'recovered'!
clearAll
    (self) clearTicks.
    (self) clearDetents.
    ^self
! !

"extwid.ic method 0x20005598; bytecode file offset 0x56390"
!EwSliderScale methodsFor: 'recovered'!
clearDetents
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := SortedCollection.
    recoveredValue1 := (recoveredValue0) new.
    (self) detents: (recoveredValue1).
    ^self
! !

"extwid.ic method 0x200055c0; bytecode file offset 0x56390"
!EwSliderScale methodsFor: 'recovered'!
clearTicks
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := SortedCollection.
    recoveredValue1 := (recoveredValue0) new.
    (self) ticks: (recoveredValue1).
    ^self
! !

"extwid.ic method 0x200056f4; bytecode file offset 0x564c4"
!EwSliderScale methodsFor: 'recovered'!
roundValueToResolution
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) currentValue.
    recoveredValue1 := (self) resolution.
    (recoveredValue0) roundTo: (recoveredValue1).
    ^self
! !

"extwid.ic method 0x20006520; bytecode file offset 0x57404"
!EwSliderScale methodsFor: 'recovered'!
resolution: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    resolution := recoveredValue0.
    ^self
! !

"extwid.ic method 0x20006754; bytecode file offset 0x57568"
!EwSliderScale methodsFor: 'recovered'!
shaftIncrement: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    shaftIncrement := recoveredValue0.
    ^self
! !

"extwid.ic method 0x2000686c; bytecode file offset 0x576a8"
!EwSliderScale methodsFor: 'recovered'!
ticks: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    ticks := recoveredValue0.
    ^self
! !

"extwid.ic method 0x200069ec; bytecode file offset 0x577e8"
!EwSliderScale methodsFor: 'recovered'!
detents: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    detents := recoveredValue0.
    ^self
! !

"extwid.ic method 0x20007b2c; bytecode file offset 0x588fc"
!EwSliderScale methodsFor: 'recovered'!
effectiveShaftIncrement
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := shaftIncrement.
    recoveredValue1 := (self) resolution.
    recoveredValue2 := (recoveredValue0) roundTo: (recoveredValue1).
    recoveredValue3 := (self) resolution.
    recoveredValue4 := (recoveredValue2) max: (recoveredValue3).
    ^recoveredValue4
! !

"extwid.ic method 0x20007fd4; bytecode file offset 0x58da0"
!EwSliderScale methodsFor: 'recovered'!
min: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    min := recoveredValue0.
    recoveredValue1 := (self) currentValue.
    (self) currentValue: (recoveredValue1).
    ^self
! !

"extwid.ic method 0x20007ff4; bytecode file offset 0x58dc0"
!EwSliderScale methodsFor: 'recovered'!
max: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    max := recoveredValue0.
    recoveredValue1 := (self) currentValue.
    (self) currentValue: (recoveredValue1).
    ^self
! !

"extwid.ic method 0x200087f0; bytecode file offset 0x595c4"
!EwSliderScale methodsFor: 'recovered'!
currentValue: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) max.
    recoveredValue2 := (recoveredValue0) min: (recoveredValue1).
    recoveredValue3 := (self) min.
    recoveredValue4 := (recoveredValue2) max: (recoveredValue3).
    currentValue := recoveredValue4.
    ^self
! !

"extwid.ic method 0x2000f320; bytecode file offset 0x60114"
!EwSliderScale methodsFor: 'recovered'!
visibleTicks
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) ticks.
    recoveredValue1 := [:recoveredBlock5Arg1 | 
    | recoveredBlock5Value0 recoveredBlock5Value1 recoveredBlock5Value2 recoveredBlock5Value3 recoveredBlock5Value4 |
    recoveredBlock5Value0 := recoveredBlock5Arg1.
    recoveredBlock5Value1 := (recoveredBlock5Value0) scaleValue.
    recoveredBlock5Value2 := (self) min.
    recoveredBlock5Value3 := (self) max.
    recoveredBlock5Value4 := (recoveredBlock5Value1) between: (recoveredBlock5Value2) and: (recoveredBlock5Value3).
    recoveredBlock5Value4
].
    recoveredValue2 := (recoveredValue0) select: (recoveredValue1).
    ^recoveredValue2
! !

"extwid.ic method 0x2000f33c; bytecode file offset 0x60114"
!EwSliderScale methodsFor: 'recovered'!
visibleDetents
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) detents.
    recoveredValue1 := [:recoveredBlock5Arg1 | 
    | recoveredBlock5Value0 recoveredBlock5Value1 recoveredBlock5Value2 recoveredBlock5Value3 recoveredBlock5Value4 |
    recoveredBlock5Value0 := recoveredBlock5Arg1.
    recoveredBlock5Value1 := (recoveredBlock5Value0) scaleValue.
    recoveredBlock5Value2 := (self) min.
    recoveredBlock5Value3 := (self) max.
    recoveredBlock5Value4 := (recoveredBlock5Value1) between: (recoveredBlock5Value2) and: (recoveredBlock5Value3).
    recoveredBlock5Value4
].
    recoveredValue2 := (recoveredValue0) select: (recoveredValue1).
    ^recoveredValue2
! !

"extwid.ic method 0x2000f648; bytecode file offset 0x6041c"
!EwSliderScale methodsFor: 'recovered'!
detentAt: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) detents.
    recoveredValue1 := [:recoveredBlock5Arg1 | 
    | recoveredBlock5Value0 recoveredBlock5Value1 recoveredBlock5Value2 |
    recoveredBlock5Value0 := recoveredBlock5Arg1.
    recoveredBlock5Value1 := recoveredArg1.
    recoveredBlock5Value2 := (recoveredBlock5Value0) containsPoint: (recoveredBlock5Value1).
    recoveredBlock5Value2
].
    recoveredValue2 := [].
    recoveredValue3 := (recoveredValue0) detect: (recoveredValue1) ifNone: (recoveredValue2).
    ^recoveredValue3
! !

"extwid.ic method 0x200168f0; bytecode file offset 0x676c4"
!EwSliderScale methodsFor: 'recovered'!
removeDetentsAt: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := (self) detents.
    recoveredValue1 := [:recoveredBlock5Arg1 | 
    | recoveredBlock5Value0 recoveredBlock5Value1 recoveredBlock5Value2 recoveredBlock5Value3 |
    recoveredBlock5Value0 := recoveredBlock5Arg1.
    recoveredBlock5Value1 := (recoveredBlock5Value0) scaleValue.
    recoveredBlock5Value2 := recoveredArg1.
    recoveredBlock5Value3 := (recoveredBlock5Value1) = (recoveredBlock5Value2).
    recoveredBlock5Value3
].
    recoveredValue2 := (recoveredValue0) select: (recoveredValue1).
    recoveredLocal1 := recoveredValue2.
    recoveredValue3 := (self) detents.
    recoveredValue4 := recoveredLocal1.
    (recoveredValue3) removeAll: (recoveredValue4).
    recoveredValue5 := recoveredLocal1.
    ^recoveredValue5
! !

"extwid.ic method 0x20018630; bytecode file offset 0x69404"
!EwSliderScale methodsFor: 'recovered'!
eraseUsing: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) ticks.
    recoveredValue1 := [:recoveredBlock5Arg1 | 
    | recoveredBlock5Value0 recoveredBlock5Value1 recoveredBlock5Value2 |
    recoveredBlock5Value0 := recoveredBlock5Arg1.
    recoveredBlock5Value1 := recoveredArg1.
    recoveredBlock5Value2 := (recoveredBlock5Value0) eraseUsing: (recoveredBlock5Value1).
    recoveredBlock5Value2
].
    (recoveredValue0) do: (recoveredValue1).
    recoveredValue2 := (self) detents.
    recoveredValue3 := [:recoveredBlock22Arg1 | 
    | recoveredBlock22Value0 recoveredBlock22Value1 recoveredBlock22Value2 |
    recoveredBlock22Value0 := recoveredBlock22Arg1.
    recoveredBlock22Value1 := recoveredArg1.
    recoveredBlock22Value2 := (recoveredBlock22Value0) eraseUsing: (recoveredBlock22Value1).
    recoveredBlock22Value2
].
    (recoveredValue2) do: (recoveredValue3).
    ^self
! !

"extwid.ic method 0x20019910; bytecode file offset 0x6a6dc"
!EwSliderScale methodsFor: 'recovered'!
initialize
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := SortedCollection.
    recoveredValue1 := (recoveredValue0) new: (0).
    ticks := recoveredValue1.
    recoveredValue2 := SortedCollection.
    recoveredValue3 := (recoveredValue2) new: (0).
    detents := recoveredValue3.
    min := 0.
    max := 100.
    resolution := 1.
    shaftIncrement := 1.
    currentValue := 0.
    ^self
! !

"extwid.ic method 0x2001b670; bytecode file offset 0x6c444"
!EwSliderScale methodsFor: 'recovered'!
removeDetentAt: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := (self) detents.
    recoveredValue1 := [:recoveredBlock5Arg1 | 
    | recoveredBlock5Value0 recoveredBlock5Value1 recoveredBlock5Value2 recoveredBlock5Value3 |
    recoveredBlock5Value0 := recoveredBlock5Arg1.
    recoveredBlock5Value1 := (recoveredBlock5Value0) scaleValue.
    recoveredBlock5Value2 := recoveredArg1.
    recoveredBlock5Value3 := (recoveredBlock5Value1) = (recoveredBlock5Value2).
    recoveredBlock5Value3
].
    recoveredValue2 := [
    ^nil
].
    recoveredValue3 := (recoveredValue0) detect: (recoveredValue1) ifNone: (recoveredValue2).
    recoveredLocal1 := recoveredValue3.
    recoveredValue4 := (self) detents.
    recoveredValue5 := recoveredLocal1.
    (recoveredValue4) remove: (recoveredValue5).
    recoveredValue6 := recoveredLocal1.
    ^recoveredValue6
! !

"extwid.ic method 0x2001ca6c; bytecode file offset 0x6d848"
!EwSliderScale methodsFor: 'recovered'!
removeTicksWithValue: recoveredArg1 andSize: recoveredArg2
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := (self) ticks.
    recoveredValue1 := [:recoveredBlock5Arg1 | 
    | recoveredBlock5Stack0 recoveredBlock5Stack1 recoveredBlock5Stack2 recoveredBlock5Stack3 recoveredBlock5Stack4 recoveredBlock5PC recoveredBlock5Step recoveredBlock5Done recoveredBlock5Result |
    recoveredBlock5Stack0 := self.
    recoveredBlock5PC := 12.
    recoveredBlock5Done := false.
    [recoveredBlock5Done not] whileTrue: [
        recoveredBlock5Step := recoveredBlock5PC.
        recoveredBlock5Step = 12 ifTrue: [
            recoveredBlock5Stack1 := false.
            recoveredBlock5PC := 13.
        ].
        recoveredBlock5Step = 13 ifTrue: [
            recoveredBlock5Stack2 := recoveredBlock5Arg1.
            recoveredBlock5PC := 14.
        ].
        recoveredBlock5Step = 14 ifTrue: [
            recoveredBlock5Stack2 := (recoveredBlock5Stack2) scaleValue.
            recoveredBlock5PC := 15.
        ].
        recoveredBlock5Step = 15 ifTrue: [
            recoveredBlock5Stack3 := recoveredArg1.
            recoveredBlock5PC := 18.
        ].
        recoveredBlock5Step = 18 ifTrue: [
            recoveredBlock5Stack2 := (recoveredBlock5Stack2) = (recoveredBlock5Stack3).
            recoveredBlock5PC := 19.
        ].
        recoveredBlock5Step = 19 ifTrue: [
            (recoveredBlock5Stack2) ifTrue: [recoveredBlock5PC := 22] ifFalse: [recoveredBlock5PC := 30].
        ].
        recoveredBlock5Step = 22 ifTrue: [
            recoveredBlock5PC := 23.
        ].
        recoveredBlock5Step = 23 ifTrue: [
            recoveredBlock5Stack1 := recoveredBlock5Arg1.
            recoveredBlock5PC := 24.
        ].
        recoveredBlock5Step = 24 ifTrue: [
            recoveredBlock5Stack1 := (recoveredBlock5Stack1) vector.
            recoveredBlock5PC := 25.
        ].
        recoveredBlock5Step = 25 ifTrue: [
            recoveredBlock5Stack1 := (recoveredBlock5Stack1) abs.
            recoveredBlock5PC := 26.
        ].
        recoveredBlock5Step = 26 ifTrue: [
            recoveredBlock5Stack2 := recoveredArg2.
            recoveredBlock5PC := 29.
        ].
        recoveredBlock5Step = 29 ifTrue: [
            recoveredBlock5Stack1 := (recoveredBlock5Stack1) = (recoveredBlock5Stack2).
            recoveredBlock5PC := 30.
        ].
        recoveredBlock5Step = 30 ifTrue: [
            recoveredBlock5Result := recoveredBlock5Stack1.
            recoveredBlock5Done := true.
        ].
    ].
    recoveredBlock5Result
].
    recoveredValue2 := (recoveredValue0) select: (recoveredValue1).
    recoveredLocal1 := recoveredValue2.
    recoveredValue3 := (self) ticks.
    recoveredValue4 := recoveredLocal1.
    (recoveredValue3) removeAll: (recoveredValue4).
    recoveredValue5 := recoveredLocal1.
    ^recoveredValue5
! !

"extwid.ic method 0x20023a04; bytecode file offset 0x747e4"
!EwSliderScale methodsFor: 'recovered'!
ewDrawUsing: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) ticks.
    recoveredValue1 := [:recoveredBlock5Arg1 | 
    | recoveredBlock5Stack0 recoveredBlock5Stack1 recoveredBlock5Stack2 recoveredBlock5Stack3 recoveredBlock5Stack4 recoveredBlock5Stack5 recoveredBlock5PC recoveredBlock5Step recoveredBlock5Done recoveredBlock5Result |
    recoveredBlock5Stack0 := self.
    recoveredBlock5PC := 12.
    recoveredBlock5Done := false.
    [recoveredBlock5Done not] whileTrue: [
        recoveredBlock5Step := recoveredBlock5PC.
        recoveredBlock5Step = 12 ifTrue: [
            recoveredBlock5Stack1 := nil.
            recoveredBlock5PC := 13.
        ].
        recoveredBlock5Step = 13 ifTrue: [
            recoveredBlock5Stack2 := recoveredBlock5Arg1.
            recoveredBlock5PC := 14.
        ].
        recoveredBlock5Step = 14 ifTrue: [
            recoveredBlock5Stack2 := (recoveredBlock5Stack2) scaleValue.
            recoveredBlock5PC := 15.
        ].
        recoveredBlock5Step = 15 ifTrue: [
            recoveredBlock5Stack3 := self.
            recoveredBlock5PC := 16.
        ].
        recoveredBlock5Step = 16 ifTrue: [
            recoveredBlock5Stack3 := (recoveredBlock5Stack3) min.
            recoveredBlock5PC := 17.
        ].
        recoveredBlock5Step = 17 ifTrue: [
            recoveredBlock5Stack4 := self.
            recoveredBlock5PC := 18.
        ].
        recoveredBlock5Step = 18 ifTrue: [
            recoveredBlock5Stack4 := (recoveredBlock5Stack4) max.
            recoveredBlock5PC := 19.
        ].
        recoveredBlock5Step = 19 ifTrue: [
            recoveredBlock5Stack2 := (recoveredBlock5Stack2) between: (recoveredBlock5Stack3) and: (recoveredBlock5Stack4).
            recoveredBlock5PC := 20.
        ].
        recoveredBlock5Step = 20 ifTrue: [
            (recoveredBlock5Stack2) ifTrue: [recoveredBlock5PC := 24] ifFalse: [recoveredBlock5PC := 31].
        ].
        recoveredBlock5Step = 24 ifTrue: [
            recoveredBlock5PC := 25.
        ].
        recoveredBlock5Step = 25 ifTrue: [
            recoveredBlock5Stack1 := recoveredBlock5Arg1.
            recoveredBlock5PC := 26.
        ].
        recoveredBlock5Step = 26 ifTrue: [
            recoveredBlock5Stack2 := recoveredArg1.
            recoveredBlock5PC := 29.
        ].
        recoveredBlock5Step = 29 ifTrue: [
            recoveredBlock5Stack1 := (recoveredBlock5Stack1) ewDrawUsing: (recoveredBlock5Stack2).
            recoveredBlock5PC := 31.
        ].
        recoveredBlock5Step = 31 ifTrue: [
            recoveredBlock5Result := recoveredBlock5Stack1.
            recoveredBlock5Done := true.
        ].
    ].
    recoveredBlock5Result
].
    (recoveredValue0) do: (recoveredValue1).
    recoveredValue2 := (self) detents.
    recoveredValue3 := [:recoveredBlock37Arg1 | 
    | recoveredBlock37Stack0 recoveredBlock37Stack1 recoveredBlock37Stack2 recoveredBlock37Stack3 recoveredBlock37Stack4 recoveredBlock37Stack5 recoveredBlock37PC recoveredBlock37Step recoveredBlock37Done recoveredBlock37Result |
    recoveredBlock37Stack0 := self.
    recoveredBlock37PC := 44.
    recoveredBlock37Done := false.
    [recoveredBlock37Done not] whileTrue: [
        recoveredBlock37Step := recoveredBlock37PC.
        recoveredBlock37Step = 44 ifTrue: [
            recoveredBlock37Stack1 := nil.
            recoveredBlock37PC := 45.
        ].
        recoveredBlock37Step = 45 ifTrue: [
            recoveredBlock37Stack2 := recoveredBlock37Arg1.
            recoveredBlock37PC := 46.
        ].
        recoveredBlock37Step = 46 ifTrue: [
            recoveredBlock37Stack2 := (recoveredBlock37Stack2) scaleValue.
            recoveredBlock37PC := 47.
        ].
        recoveredBlock37Step = 47 ifTrue: [
            recoveredBlock37Stack3 := self.
            recoveredBlock37PC := 48.
        ].
        recoveredBlock37Step = 48 ifTrue: [
            recoveredBlock37Stack3 := (recoveredBlock37Stack3) min.
            recoveredBlock37PC := 49.
        ].
        recoveredBlock37Step = 49 ifTrue: [
            recoveredBlock37Stack4 := self.
            recoveredBlock37PC := 50.
        ].
        recoveredBlock37Step = 50 ifTrue: [
            recoveredBlock37Stack4 := (recoveredBlock37Stack4) max.
            recoveredBlock37PC := 51.
        ].
        recoveredBlock37Step = 51 ifTrue: [
            recoveredBlock37Stack2 := (recoveredBlock37Stack2) between: (recoveredBlock37Stack3) and: (recoveredBlock37Stack4).
            recoveredBlock37PC := 52.
        ].
        recoveredBlock37Step = 52 ifTrue: [
            (recoveredBlock37Stack2) ifTrue: [recoveredBlock37PC := 56] ifFalse: [recoveredBlock37PC := 63].
        ].
        recoveredBlock37Step = 56 ifTrue: [
            recoveredBlock37PC := 57.
        ].
        recoveredBlock37Step = 57 ifTrue: [
            recoveredBlock37Stack1 := recoveredBlock37Arg1.
            recoveredBlock37PC := 58.
        ].
        recoveredBlock37Step = 58 ifTrue: [
            recoveredBlock37Stack2 := recoveredArg1.
            recoveredBlock37PC := 61.
        ].
        recoveredBlock37Step = 61 ifTrue: [
            recoveredBlock37Stack1 := (recoveredBlock37Stack1) ewDrawUsing: (recoveredBlock37Stack2).
            recoveredBlock37PC := 63.
        ].
        recoveredBlock37Step = 63 ifTrue: [
            recoveredBlock37Result := recoveredBlock37Stack1.
            recoveredBlock37Done := true.
        ].
    ].
    recoveredBlock37Result
].
    (recoveredValue2) do: (recoveredValue3).
    ^self
! !

