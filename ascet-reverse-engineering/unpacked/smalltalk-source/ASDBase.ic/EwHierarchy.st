"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2047c8a0; bytecode file offset 0xd79174"
!EwHierarchy methodsFor: 'recovered'!
parentAndChildAt: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 |
    recoveredLocal2 := 0.
    recoveredLocal1 := 0.
    recoveredValue0 := [:recoveredBlock14Arg1 :recoveredBlock14Arg2 | 
    | recoveredBlock14Local1 recoveredBlock14Stack0 recoveredBlock14Stack1 recoveredBlock14Stack2 recoveredBlock14Stack3 recoveredBlock14Stack4 recoveredBlock14Stack5 recoveredBlock14Stack6 recoveredBlock14PC recoveredBlock14Step recoveredBlock14Done recoveredBlock14Result |
    recoveredBlock14Stack0 := self.
    recoveredBlock14PC := 20.
    recoveredBlock14Done := false.
    [recoveredBlock14Done not] whileTrue: [
        recoveredBlock14Step := recoveredBlock14PC.
        recoveredBlock14Step = 20 ifTrue: [
            recoveredBlock14Stack1 := recoveredLocal2.
            recoveredBlock14PC := 23.
        ].
        recoveredBlock14Step = 23 ifTrue: [
            recoveredBlock14Stack2 := recoveredBlock14Arg1.
            recoveredBlock14PC := 24.
        ].
        recoveredBlock14Step = 24 ifTrue: [
            recoveredBlock14Stack1 := (recoveredBlock14Stack1) + (recoveredBlock14Stack2).
            recoveredBlock14PC := 25.
        ].
        recoveredBlock14Step = 25 ifTrue: [
            recoveredBlock14Stack2 := recoveredLocal1.
            recoveredBlock14PC := 28.
        ].
        recoveredBlock14Step = 28 ifTrue: [
            recoveredBlock14Stack1 := (recoveredBlock14Stack1) - (recoveredBlock14Stack2).
            recoveredBlock14PC := 29.
        ].
        recoveredBlock14Step = 29 ifTrue: [
            recoveredLocal2 := recoveredBlock14Stack1.
            recoveredBlock14PC := 32.
        ].
        recoveredBlock14Step = 32 ifTrue: [
            recoveredBlock14Stack1 := recoveredLocal2.
            recoveredBlock14PC := 35.
        ].
        recoveredBlock14Step = 35 ifTrue: [
            recoveredBlock14Stack2 := recoveredArg1.
            recoveredBlock14PC := 38.
        ].
        recoveredBlock14Step = 38 ifTrue: [
            recoveredBlock14Stack1 := (recoveredBlock14Stack1) >= (recoveredBlock14Stack2).
            recoveredBlock14PC := 39.
        ].
        recoveredBlock14Step = 39 ifTrue: [
            (recoveredBlock14Stack1) ifTrue: [recoveredBlock14PC := 42] ifFalse: [recoveredBlock14PC := 61].
        ].
        recoveredBlock14Step = 42 ifTrue: [
            recoveredBlock14Stack1 := Array.
            recoveredBlock14PC := 44.
        ].
        recoveredBlock14Step = 44 ifTrue: [
            recoveredBlock14Stack2 := self.
            recoveredBlock14PC := 45.
        ].
        recoveredBlock14Step = 45 ifTrue: [
            recoveredBlock14Stack2 := (recoveredBlock14Stack2) parent.
            recoveredBlock14PC := 46.
        ].
        recoveredBlock14Step = 46 ifTrue: [
            recoveredBlock14Stack3 := self.
            recoveredBlock14PC := 47.
        ].
        recoveredBlock14Step = 47 ifTrue: [
            recoveredBlock14Stack3 := (recoveredBlock14Stack3) items.
            recoveredBlock14PC := 48.
        ].
        recoveredBlock14Step = 48 ifTrue: [
            recoveredBlock14Stack4 := recoveredBlock14Arg1.
            recoveredBlock14PC := 49.
        ].
        recoveredBlock14Step = 49 ifTrue: [
            recoveredBlock14Stack5 := recoveredLocal2.
            recoveredBlock14PC := 52.
        ].
        recoveredBlock14Step = 52 ifTrue: [
            recoveredBlock14Stack4 := (recoveredBlock14Stack4) - (recoveredBlock14Stack5).
            recoveredBlock14PC := 53.
        ].
        recoveredBlock14Step = 53 ifTrue: [
            recoveredBlock14Stack5 := recoveredArg1.
            recoveredBlock14PC := 56.
        ].
        recoveredBlock14Step = 56 ifTrue: [
            recoveredBlock14Stack4 := (recoveredBlock14Stack4) + (recoveredBlock14Stack5).
            recoveredBlock14PC := 57.
        ].
        recoveredBlock14Step = 57 ifTrue: [
            recoveredBlock14Stack3 := (recoveredBlock14Stack3) at: (recoveredBlock14Stack4).
            recoveredBlock14PC := 58.
        ].
        recoveredBlock14Step = 58 ifTrue: [
            recoveredBlock14Stack1 := (recoveredBlock14Stack1) with: (recoveredBlock14Stack2) with: (recoveredBlock14Stack3).
            recoveredBlock14PC := 60.
        ].
        recoveredBlock14Step = 60 ifTrue: [
            ^recoveredBlock14Stack1
        ].
        recoveredBlock14Step = 61 ifTrue: [
            recoveredBlock14Stack1 := recoveredBlock14Arg2.
            recoveredBlock14PC := 62.
        ].
        recoveredBlock14Step = 62 ifTrue: [
            recoveredBlock14Stack1 := (recoveredBlock14Stack1) size.
            recoveredBlock14PC := 64.
        ].
        recoveredBlock14Step = 64 ifTrue: [
            recoveredBlock14Local1 := recoveredBlock14Stack1.
            recoveredBlock14PC := 65.
        ].
        recoveredBlock14Step = 65 ifTrue: [
            recoveredBlock14Stack1 := recoveredLocal2.
            recoveredBlock14PC := 68.
        ].
        recoveredBlock14Step = 68 ifTrue: [
            recoveredBlock14Stack2 := recoveredBlock14Local1.
            recoveredBlock14PC := 69.
        ].
        recoveredBlock14Step = 69 ifTrue: [
            recoveredBlock14Stack1 := (recoveredBlock14Stack1) + (recoveredBlock14Stack2).
            recoveredBlock14PC := 70.
        ].
        recoveredBlock14Step = 70 ifTrue: [
            recoveredBlock14Stack2 := recoveredArg1.
            recoveredBlock14PC := 73.
        ].
        recoveredBlock14Step = 73 ifTrue: [
            recoveredBlock14Stack1 := (recoveredBlock14Stack1) >= (recoveredBlock14Stack2).
            recoveredBlock14PC := 74.
        ].
        recoveredBlock14Step = 74 ifTrue: [
            (recoveredBlock14Stack1) ifTrue: [recoveredBlock14PC := 78] ifFalse: [recoveredBlock14PC := 89].
        ].
        recoveredBlock14Step = 78 ifTrue: [
            recoveredBlock14Stack1 := recoveredBlock14Arg2.
            recoveredBlock14PC := 79.
        ].
        recoveredBlock14Step = 79 ifTrue: [
            recoveredBlock14Stack2 := recoveredArg1.
            recoveredBlock14PC := 82.
        ].
        recoveredBlock14Step = 82 ifTrue: [
            recoveredBlock14Stack3 := recoveredLocal2.
            recoveredBlock14PC := 85.
        ].
        recoveredBlock14Step = 85 ifTrue: [
            recoveredBlock14Stack2 := (recoveredBlock14Stack2) - (recoveredBlock14Stack3).
            recoveredBlock14PC := 86.
        ].
        recoveredBlock14Step = 86 ifTrue: [
            recoveredBlock14Stack1 := (recoveredBlock14Stack1) parentAndChildAt: (recoveredBlock14Stack2).
            recoveredBlock14PC := 88.
        ].
        recoveredBlock14Step = 88 ifTrue: [
            ^recoveredBlock14Stack1
        ].
        recoveredBlock14Step = 89 ifTrue: [
            recoveredBlock14Stack1 := recoveredLocal2.
            recoveredBlock14PC := 92.
        ].
        recoveredBlock14Step = 92 ifTrue: [
            recoveredBlock14Stack2 := recoveredBlock14Local1.
            recoveredBlock14PC := 93.
        ].
        recoveredBlock14Step = 93 ifTrue: [
            recoveredBlock14Stack1 := (recoveredBlock14Stack1) + (recoveredBlock14Stack2).
            recoveredBlock14PC := 94.
        ].
        recoveredBlock14Step = 94 ifTrue: [
            recoveredLocal2 := recoveredBlock14Stack1.
            recoveredBlock14PC := 97.
        ].
        recoveredBlock14Step = 97 ifTrue: [
            recoveredBlock14Stack1 := recoveredBlock14Arg1.
            recoveredBlock14PC := 98.
        ].
        recoveredBlock14Step = 98 ifTrue: [
            recoveredBlock14Stack2 := recoveredBlock14Stack1.
            recoveredBlock14PC := 99.
        ].
        recoveredBlock14Step = 99 ifTrue: [
            recoveredLocal1 := recoveredBlock14Stack2.
            recoveredBlock14PC := 102.
        ].
        recoveredBlock14Step = 102 ifTrue: [
            recoveredBlock14Result := recoveredBlock14Stack1.
            recoveredBlock14Done := true.
        ].
    ].
    recoveredBlock14Result
].
    (self) expandedDo: (recoveredValue0).
    recoveredValue1 := Array.
    recoveredValue2 := (self) parent.
    recoveredValue3 := (self) items.
    recoveredValue4 := recoveredArg1.
    recoveredValue5 := recoveredLocal2.
    recoveredValue6 := (recoveredValue4) - (recoveredValue5).
    recoveredValue7 := recoveredLocal1.
    recoveredValue8 := (recoveredValue6) + (recoveredValue7).
    recoveredValue9 := (recoveredValue3) at: (recoveredValue8).
    recoveredValue10 := (recoveredValue1) with: (recoveredValue2) with: (recoveredValue9).
    ^recoveredValue10
! !

"ASDBase.ic method 0x204a8090; bytecode file offset 0xda495c"
!EwHierarchy methodsFor: 'recovered'!
parentsAndChildAt: recoveredArg1 parentCollection: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 |
    recoveredLocal2 := 0.
    recoveredLocal1 := 0.
    recoveredValue0 := [:recoveredBlock14Arg1 :recoveredBlock14Arg2 | 
    | recoveredBlock14Local1 recoveredBlock14Stack0 recoveredBlock14Stack1 recoveredBlock14Stack2 recoveredBlock14Stack3 recoveredBlock14Stack4 recoveredBlock14Stack5 recoveredBlock14PC recoveredBlock14Step recoveredBlock14Done recoveredBlock14Result |
    recoveredBlock14Stack0 := self.
    recoveredBlock14PC := 20.
    recoveredBlock14Done := false.
    [recoveredBlock14Done not] whileTrue: [
        recoveredBlock14Step := recoveredBlock14PC.
        recoveredBlock14Step = 20 ifTrue: [
            recoveredBlock14Stack1 := recoveredLocal2.
            recoveredBlock14PC := 23.
        ].
        recoveredBlock14Step = 23 ifTrue: [
            recoveredBlock14Stack2 := recoveredBlock14Arg1.
            recoveredBlock14PC := 24.
        ].
        recoveredBlock14Step = 24 ifTrue: [
            recoveredBlock14Stack1 := (recoveredBlock14Stack1) + (recoveredBlock14Stack2).
            recoveredBlock14PC := 25.
        ].
        recoveredBlock14Step = 25 ifTrue: [
            recoveredBlock14Stack2 := recoveredLocal1.
            recoveredBlock14PC := 28.
        ].
        recoveredBlock14Step = 28 ifTrue: [
            recoveredBlock14Stack1 := (recoveredBlock14Stack1) - (recoveredBlock14Stack2).
            recoveredBlock14PC := 29.
        ].
        recoveredBlock14Step = 29 ifTrue: [
            recoveredLocal2 := recoveredBlock14Stack1.
            recoveredBlock14PC := 32.
        ].
        recoveredBlock14Step = 32 ifTrue: [
            recoveredBlock14Stack1 := recoveredLocal2.
            recoveredBlock14PC := 35.
        ].
        recoveredBlock14Step = 35 ifTrue: [
            recoveredBlock14Stack2 := recoveredArg1.
            recoveredBlock14PC := 38.
        ].
        recoveredBlock14Step = 38 ifTrue: [
            recoveredBlock14Stack1 := (recoveredBlock14Stack1) >= (recoveredBlock14Stack2).
            recoveredBlock14PC := 39.
        ].
        recoveredBlock14Step = 39 ifTrue: [
            (recoveredBlock14Stack1) ifTrue: [recoveredBlock14PC := 42] ifFalse: [recoveredBlock14PC := 63].
        ].
        recoveredBlock14Step = 42 ifTrue: [
            recoveredBlock14Stack1 := recoveredArg2.
            recoveredBlock14PC := 45.
        ].
        recoveredBlock14Step = 45 ifTrue: [
            recoveredBlock14Stack2 := self.
            recoveredBlock14PC := 46.
        ].
        recoveredBlock14Step = 46 ifTrue: [
            recoveredBlock14Stack2 := (recoveredBlock14Stack2) items.
            recoveredBlock14PC := 47.
        ].
        recoveredBlock14Step = 47 ifTrue: [
            recoveredBlock14Stack3 := recoveredBlock14Arg1.
            recoveredBlock14PC := 48.
        ].
        recoveredBlock14Step = 48 ifTrue: [
            recoveredBlock14Stack4 := recoveredLocal2.
            recoveredBlock14PC := 51.
        ].
        recoveredBlock14Step = 51 ifTrue: [
            recoveredBlock14Stack3 := (recoveredBlock14Stack3) - (recoveredBlock14Stack4).
            recoveredBlock14PC := 52.
        ].
        recoveredBlock14Step = 52 ifTrue: [
            recoveredBlock14Stack4 := recoveredArg1.
            recoveredBlock14PC := 55.
        ].
        recoveredBlock14Step = 55 ifTrue: [
            recoveredBlock14Stack3 := (recoveredBlock14Stack3) + (recoveredBlock14Stack4).
            recoveredBlock14PC := 56.
        ].
        recoveredBlock14Step = 56 ifTrue: [
            recoveredBlock14Stack2 := (recoveredBlock14Stack2) at: (recoveredBlock14Stack3).
            recoveredBlock14PC := 57.
        ].
        recoveredBlock14Step = 57 ifTrue: [
            (recoveredBlock14Stack1) add: (recoveredBlock14Stack2).
            recoveredBlock14PC := 59.
        ].
        recoveredBlock14Step = 59 ifTrue: [
            recoveredBlock14Stack1 := recoveredArg2.
            recoveredBlock14PC := 62.
        ].
        recoveredBlock14Step = 62 ifTrue: [
            ^recoveredBlock14Stack1
        ].
        recoveredBlock14Step = 63 ifTrue: [
            recoveredBlock14Stack1 := recoveredBlock14Arg2.
            recoveredBlock14PC := 64.
        ].
        recoveredBlock14Step = 64 ifTrue: [
            recoveredBlock14Stack1 := (recoveredBlock14Stack1) size.
            recoveredBlock14PC := 65.
        ].
        recoveredBlock14Step = 65 ifTrue: [
            recoveredBlock14Local1 := recoveredBlock14Stack1.
            recoveredBlock14PC := 66.
        ].
        recoveredBlock14Step = 66 ifTrue: [
            recoveredBlock14Stack1 := recoveredLocal2.
            recoveredBlock14PC := 69.
        ].
        recoveredBlock14Step = 69 ifTrue: [
            recoveredBlock14Stack2 := recoveredBlock14Local1.
            recoveredBlock14PC := 70.
        ].
        recoveredBlock14Step = 70 ifTrue: [
            recoveredBlock14Stack1 := (recoveredBlock14Stack1) + (recoveredBlock14Stack2).
            recoveredBlock14PC := 71.
        ].
        recoveredBlock14Step = 71 ifTrue: [
            recoveredBlock14Stack2 := recoveredArg1.
            recoveredBlock14PC := 74.
        ].
        recoveredBlock14Step = 74 ifTrue: [
            recoveredBlock14Stack1 := (recoveredBlock14Stack1) >= (recoveredBlock14Stack2).
            recoveredBlock14PC := 75.
        ].
        recoveredBlock14Step = 75 ifTrue: [
            (recoveredBlock14Stack1) ifTrue: [recoveredBlock14PC := 78] ifFalse: [recoveredBlock14PC := 101].
        ].
        recoveredBlock14Step = 78 ifTrue: [
            recoveredBlock14Stack1 := recoveredArg2.
            recoveredBlock14PC := 81.
        ].
        recoveredBlock14Step = 81 ifTrue: [
            recoveredBlock14Stack2 := self.
            recoveredBlock14PC := 82.
        ].
        recoveredBlock14Step = 82 ifTrue: [
            recoveredBlock14Stack2 := (recoveredBlock14Stack2) items.
            recoveredBlock14PC := 83.
        ].
        recoveredBlock14Step = 83 ifTrue: [
            recoveredBlock14Stack3 := recoveredBlock14Arg1.
            recoveredBlock14PC := 84.
        ].
        recoveredBlock14Step = 84 ifTrue: [
            recoveredBlock14Stack2 := (recoveredBlock14Stack2) at: (recoveredBlock14Stack3).
            recoveredBlock14PC := 85.
        ].
        recoveredBlock14Step = 85 ifTrue: [
            (recoveredBlock14Stack1) add: (recoveredBlock14Stack2).
            recoveredBlock14PC := 87.
        ].
        recoveredBlock14Step = 87 ifTrue: [
            recoveredBlock14Stack1 := recoveredBlock14Arg2.
            recoveredBlock14PC := 88.
        ].
        recoveredBlock14Step = 88 ifTrue: [
            recoveredBlock14Stack2 := recoveredArg1.
            recoveredBlock14PC := 91.
        ].
        recoveredBlock14Step = 91 ifTrue: [
            recoveredBlock14Stack3 := recoveredLocal2.
            recoveredBlock14PC := 94.
        ].
        recoveredBlock14Step = 94 ifTrue: [
            recoveredBlock14Stack2 := (recoveredBlock14Stack2) - (recoveredBlock14Stack3).
            recoveredBlock14PC := 95.
        ].
        recoveredBlock14Step = 95 ifTrue: [
            recoveredBlock14Stack3 := recoveredArg2.
            recoveredBlock14PC := 98.
        ].
        recoveredBlock14Step = 98 ifTrue: [
            recoveredBlock14Stack1 := (recoveredBlock14Stack1) parentsAndChildAt: (recoveredBlock14Stack2) parentCollection: (recoveredBlock14Stack3).
            recoveredBlock14PC := 100.
        ].
        recoveredBlock14Step = 100 ifTrue: [
            ^recoveredBlock14Stack1
        ].
        recoveredBlock14Step = 101 ifTrue: [
            recoveredBlock14Stack1 := recoveredLocal2.
            recoveredBlock14PC := 104.
        ].
        recoveredBlock14Step = 104 ifTrue: [
            recoveredBlock14Stack2 := recoveredBlock14Local1.
            recoveredBlock14PC := 105.
        ].
        recoveredBlock14Step = 105 ifTrue: [
            recoveredBlock14Stack1 := (recoveredBlock14Stack1) + (recoveredBlock14Stack2).
            recoveredBlock14PC := 106.
        ].
        recoveredBlock14Step = 106 ifTrue: [
            recoveredLocal2 := recoveredBlock14Stack1.
            recoveredBlock14PC := 109.
        ].
        recoveredBlock14Step = 109 ifTrue: [
            recoveredBlock14Stack1 := recoveredBlock14Arg1.
            recoveredBlock14PC := 110.
        ].
        recoveredBlock14Step = 110 ifTrue: [
            recoveredBlock14Stack2 := recoveredBlock14Stack1.
            recoveredBlock14PC := 111.
        ].
        recoveredBlock14Step = 111 ifTrue: [
            recoveredLocal1 := recoveredBlock14Stack2.
            recoveredBlock14PC := 114.
        ].
        recoveredBlock14Step = 114 ifTrue: [
            recoveredBlock14Result := recoveredBlock14Stack1.
            recoveredBlock14Done := true.
        ].
    ].
    recoveredBlock14Result
].
    (self) expandedDo: (recoveredValue0).
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := (self) items.
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := recoveredLocal2.
    recoveredValue5 := (recoveredValue3) - (recoveredValue4).
    recoveredValue6 := recoveredLocal1.
    recoveredValue7 := (recoveredValue5) + (recoveredValue6).
    recoveredValue8 := (recoveredValue2) at: (recoveredValue7).
    (recoveredValue1) add: (recoveredValue8).
    recoveredValue9 := recoveredArg2.
    ^recoveredValue9
! !

"ASDBase.ic method 0x2053499c; bytecode file offset 0xe31270"
!EwHierarchy methodsFor: 'recovered'!
indexOfEqualItem: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := 'Kli'.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := 'Call_72839'.
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
            recoveredStack1 := 0.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := [:recoveredBlock20Arg1 :recoveredBlock20Arg2 | 
    | recoveredBlock20Local1 recoveredBlock20Local2 recoveredBlock20Local3 recoveredBlock20Stack0 recoveredBlock20Stack1 recoveredBlock20Stack2 recoveredBlock20Stack3 recoveredBlock20Stack4 recoveredBlock20Stack5 recoveredBlock20PC recoveredBlock20Step recoveredBlock20Done recoveredBlock20Result |
    recoveredBlock20Stack0 := self.
    recoveredBlock20PC := 26.
    recoveredBlock20Done := false.
    [recoveredBlock20Done not] whileTrue: [
        recoveredBlock20Step := recoveredBlock20PC.
        recoveredBlock20Step = 26 ifTrue: [
            recoveredBlock20Stack1 := recoveredLocal2.
            recoveredBlock20PC := 29.
        ].
        recoveredBlock20Step = 29 ifTrue: [
            recoveredBlock20Stack1 := (recoveredBlock20Stack1) + (1).
            recoveredBlock20PC := 30.
        ].
        recoveredBlock20Step = 30 ifTrue: [
            recoveredBlock20Stack1 := (recoveredBlock20Stack1) + (-1).
            recoveredBlock20PC := 31.
        ].
        recoveredBlock20Step = 31 ifTrue: [
            recoveredBlock20Local1 := recoveredBlock20Stack1.
            recoveredBlock20PC := 32.
        ].
        recoveredBlock20Step = 32 ifTrue: [
            recoveredBlock20Stack1 := recoveredBlock20Arg1.
            recoveredBlock20PC := 34.
        ].
        recoveredBlock20Step = 34 ifTrue: [
            recoveredBlock20PC := 60.
        ].
        recoveredBlock20Step = 38 ifTrue: [
            recoveredBlock20Stack2 := self.
            recoveredBlock20PC := 39.
        ].
        recoveredBlock20Step = 39 ifTrue: [
            recoveredBlock20Stack2 := (recoveredBlock20Stack2) items.
            recoveredBlock20PC := 40.
        ].
        recoveredBlock20Step = 40 ifTrue: [
            recoveredBlock20Stack3 := recoveredBlock20Local1.
            recoveredBlock20PC := 41.
        ].
        recoveredBlock20Step = 41 ifTrue: [
            recoveredBlock20Stack2 := (recoveredBlock20Stack2) at: (recoveredBlock20Stack3).
            recoveredBlock20PC := 42.
        ].
        recoveredBlock20Step = 42 ifTrue: [
            recoveredBlock20Stack3 := recoveredArg1.
            recoveredBlock20PC := 45.
        ].
        recoveredBlock20Step = 45 ifTrue: [
            recoveredBlock20Stack2 := (recoveredBlock20Stack2) isEqualToObject: (recoveredBlock20Stack3).
            recoveredBlock20PC := 47.
        ].
        recoveredBlock20Step = 47 ifTrue: [
            (recoveredBlock20Stack2) ifTrue: [recoveredBlock20PC := 50] ifFalse: [recoveredBlock20PC := 60].
        ].
        recoveredBlock20Step = 50 ifTrue: [
            recoveredBlock20Stack2 := recoveredLocal3.
            recoveredBlock20PC := 53.
        ].
        recoveredBlock20Step = 53 ifTrue: [
            recoveredBlock20Stack3 := recoveredBlock20Local1.
            recoveredBlock20PC := 54.
        ].
        recoveredBlock20Step = 54 ifTrue: [
            recoveredBlock20Stack2 := (recoveredBlock20Stack2) + (recoveredBlock20Stack3).
            recoveredBlock20PC := 55.
        ].
        recoveredBlock20Step = 55 ifTrue: [
            recoveredBlock20Stack3 := recoveredLocal2.
            recoveredBlock20PC := 58.
        ].
        recoveredBlock20Step = 58 ifTrue: [
            recoveredBlock20Stack2 := (recoveredBlock20Stack2) - (recoveredBlock20Stack3).
            recoveredBlock20PC := 59.
        ].
        recoveredBlock20Step = 59 ifTrue: [
            ^recoveredBlock20Stack2
        ].
        recoveredBlock20Step = 60 ifTrue: [
            (recoveredBlock20Stack1 isInteger and: [recoveredBlock20Local1 isInteger]) ifTrue: [(recoveredBlock20Local1 + 1 <= recoveredBlock20Stack1) ifTrue: [recoveredBlock20Local1 := recoveredBlock20Local1 + 1. recoveredBlock20PC := 38] ifFalse: [recoveredBlock20Local1 := nil. recoveredBlock20PC := 74]] ifFalse: [recoveredBlock20PC := 64].
        ].
        recoveredBlock20Step = 64 ifTrue: [
            recoveredBlock20Stack2 := recoveredBlock20Stack1.
            recoveredBlock20PC := 65.
        ].
        recoveredBlock20Step = 65 ifTrue: [
            recoveredBlock20Stack3 := recoveredBlock20Local1.
            recoveredBlock20PC := 66.
        ].
        recoveredBlock20Step = 66 ifTrue: [
            recoveredBlock20Stack3 := (recoveredBlock20Stack3) + (1).
            recoveredBlock20PC := 67.
        ].
        recoveredBlock20Step = 67 ifTrue: [
            recoveredBlock20Stack4 := recoveredBlock20Stack3.
            recoveredBlock20PC := 68.
        ].
        recoveredBlock20Step = 68 ifTrue: [
            recoveredBlock20Local1 := recoveredBlock20Stack4.
            recoveredBlock20PC := 69.
        ].
        recoveredBlock20Step = 69 ifTrue: [
            recoveredBlock20Stack2 := (recoveredBlock20Stack2) < (recoveredBlock20Stack3).
            recoveredBlock20PC := 70.
        ].
        recoveredBlock20Step = 70 ifTrue: [
            (recoveredBlock20Stack2) ifTrue: [recoveredBlock20PC := 72] ifFalse: [recoveredBlock20PC := 38].
        ].
        recoveredBlock20Step = 72 ifTrue: [
            recoveredBlock20Stack2 := nil.
            recoveredBlock20PC := 73.
        ].
        recoveredBlock20Step = 73 ifTrue: [
            recoveredBlock20Local1 := recoveredBlock20Stack2.
            recoveredBlock20PC := 74.
        ].
        recoveredBlock20Step = 74 ifTrue: [
            recoveredBlock20PC := 75.
        ].
        recoveredBlock20Step = 75 ifTrue: [
            recoveredBlock20Stack1 := recoveredLocal3.
            recoveredBlock20PC := 78.
        ].
        recoveredBlock20Step = 78 ifTrue: [
            recoveredBlock20Stack2 := recoveredBlock20Arg1.
            recoveredBlock20PC := 80.
        ].
        recoveredBlock20Step = 80 ifTrue: [
            recoveredBlock20Stack1 := (recoveredBlock20Stack1) + (recoveredBlock20Stack2).
            recoveredBlock20PC := 81.
        ].
        recoveredBlock20Step = 81 ifTrue: [
            recoveredBlock20Stack2 := recoveredLocal2.
            recoveredBlock20PC := 84.
        ].
        recoveredBlock20Step = 84 ifTrue: [
            recoveredBlock20Stack1 := (recoveredBlock20Stack1) - (recoveredBlock20Stack2).
            recoveredBlock20PC := 85.
        ].
        recoveredBlock20Step = 85 ifTrue: [
            recoveredLocal3 := recoveredBlock20Stack1.
            recoveredBlock20PC := 88.
        ].
        recoveredBlock20Step = 88 ifTrue: [
            recoveredBlock20Stack1 := recoveredBlock20Arg2.
            recoveredBlock20PC := 89.
        ].
        recoveredBlock20Step = 89 ifTrue: [
            recoveredBlock20Stack2 := recoveredArg1.
            recoveredBlock20PC := 92.
        ].
        recoveredBlock20Step = 92 ifTrue: [
            recoveredBlock20Stack1 := (recoveredBlock20Stack1) indexOfEqualItem: (recoveredBlock20Stack2).
            recoveredBlock20PC := 94.
        ].
        recoveredBlock20Step = 94 ifTrue: [
            recoveredBlock20Stack2 := recoveredBlock20Stack1.
            recoveredBlock20PC := 95.
        ].
        recoveredBlock20Step = 95 ifTrue: [
            recoveredBlock20Local2 := recoveredBlock20Stack2.
            recoveredBlock20PC := 96.
        ].
        recoveredBlock20Step = 96 ifTrue: [
            recoveredBlock20Stack2 := 0.
            recoveredBlock20PC := 98.
        ].
        recoveredBlock20Step = 98 ifTrue: [
            recoveredBlock20Stack1 := (recoveredBlock20Stack1) > (recoveredBlock20Stack2).
            recoveredBlock20PC := 99.
        ].
        recoveredBlock20Step = 99 ifTrue: [
            (recoveredBlock20Stack1) ifTrue: [recoveredBlock20PC := 102] ifFalse: [recoveredBlock20PC := 108].
        ].
        recoveredBlock20Step = 102 ifTrue: [
            recoveredBlock20Stack1 := recoveredLocal3.
            recoveredBlock20PC := 105.
        ].
        recoveredBlock20Step = 105 ifTrue: [
            recoveredBlock20Stack2 := recoveredBlock20Local2.
            recoveredBlock20PC := 106.
        ].
        recoveredBlock20Step = 106 ifTrue: [
            recoveredBlock20Stack1 := (recoveredBlock20Stack1) + (recoveredBlock20Stack2).
            recoveredBlock20PC := 107.
        ].
        recoveredBlock20Step = 107 ifTrue: [
            ^recoveredBlock20Stack1
        ].
        recoveredBlock20Step = 108 ifTrue: [
            recoveredBlock20Stack1 := recoveredBlock20Arg2.
            recoveredBlock20PC := 109.
        ].
        recoveredBlock20Step = 109 ifTrue: [
            recoveredBlock20Stack1 := (recoveredBlock20Stack1) size.
            recoveredBlock20PC := 111.
        ].
        recoveredBlock20Step = 111 ifTrue: [
            recoveredBlock20Local3 := recoveredBlock20Stack1.
            recoveredBlock20PC := 112.
        ].
        recoveredBlock20Step = 112 ifTrue: [
            recoveredBlock20Stack1 := recoveredLocal3.
            recoveredBlock20PC := 115.
        ].
        recoveredBlock20Step = 115 ifTrue: [
            recoveredBlock20Stack2 := recoveredBlock20Local3.
            recoveredBlock20PC := 116.
        ].
        recoveredBlock20Step = 116 ifTrue: [
            recoveredBlock20Stack1 := (recoveredBlock20Stack1) + (recoveredBlock20Stack2).
            recoveredBlock20PC := 117.
        ].
        recoveredBlock20Step = 117 ifTrue: [
            recoveredLocal3 := recoveredBlock20Stack1.
            recoveredBlock20PC := 120.
        ].
        recoveredBlock20Step = 120 ifTrue: [
            recoveredBlock20Stack1 := recoveredBlock20Arg1.
            recoveredBlock20PC := 122.
        ].
        recoveredBlock20Step = 122 ifTrue: [
            recoveredBlock20Stack2 := recoveredBlock20Stack1.
            recoveredBlock20PC := 123.
        ].
        recoveredBlock20Step = 123 ifTrue: [
            recoveredLocal2 := recoveredBlock20Stack2.
            recoveredBlock20PC := 126.
        ].
        recoveredBlock20Step = 126 ifTrue: [
            recoveredBlock20Result := recoveredBlock20Stack1.
            recoveredBlock20Done := true.
        ].
    ].
    recoveredBlock20Result
].
            recoveredPC := 127.
        ].
        recoveredStep = 127 ifTrue: [
            (recoveredStack0) expandedDo: (recoveredStack1).
            recoveredPC := 129.
        ].
        recoveredStep = 129 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 130.
        ].
        recoveredStep = 130 ifTrue: [
            recoveredStack0 := (recoveredStack0) items.
            recoveredPC := 131.
        ].
        recoveredStep = 131 ifTrue: [
            recoveredStack0 := (recoveredStack0) size.
            recoveredPC := 133.
        ].
        recoveredStep = 133 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 136.
        ].
        recoveredStep = 136 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (1).
            recoveredPC := 137.
        ].
        recoveredStep = 137 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (-1).
            recoveredPC := 138.
        ].
        recoveredStep = 138 ifTrue: [
            recoveredPC := 172.
        ].
        recoveredStep = 142 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 145.
        ].
        recoveredStep = 145 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 146.
        ].
        recoveredStep = 146 ifTrue: [
            recoveredStack2 := (recoveredStack2) items.
            recoveredPC := 147.
        ].
        recoveredStep = 147 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 150.
        ].
        recoveredStep = 150 ifTrue: [
            recoveredStack2 := (recoveredStack2) at: (recoveredStack3).
            recoveredPC := 151.
        ].
        recoveredStep = 151 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 154.
        ].
        recoveredStep = 154 ifTrue: [
            recoveredStack2 := (recoveredStack2) isEqualToObject: (recoveredStack3).
            recoveredPC := 156.
        ].
        recoveredStep = 156 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 160] ifFalse: [recoveredPC := 172].
        ].
        recoveredStep = 160 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 163.
        ].
        recoveredStep = 163 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 166.
        ].
        recoveredStep = 166 ifTrue: [
            recoveredStack2 := (recoveredStack2) + (recoveredStack3).
            recoveredPC := 167.
        ].
        recoveredStep = 167 ifTrue: [
            recoveredStack3 := recoveredLocal2.
            recoveredPC := 170.
        ].
        recoveredStep = 170 ifTrue: [
            recoveredStack2 := (recoveredStack2) - (recoveredStack3).
            recoveredPC := 171.
        ].
        recoveredStep = 171 ifTrue: [
            ^recoveredStack2
        ].
        recoveredStep = 172 ifTrue: [
            (recoveredStack0 isInteger and: [recoveredStack1 isInteger]) ifTrue: [(recoveredStack1 + 1 <= recoveredStack0) ifTrue: [recoveredStack1 := recoveredStack1 + 1. recoveredStack2 := recoveredStack1. recoveredPC := 142] ifFalse: [recoveredPC := 201]] ifFalse: [recoveredPC := 175].
        ].
        recoveredStep = 175 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 178.
        ].
        recoveredStep = 178 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 179.
        ].
        recoveredStep = 179 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 182.
        ].
        recoveredStep = 182 ifTrue: [
            recoveredStack2 := (recoveredStack2) + (1).
            recoveredPC := 183.
        ].
        recoveredStep = 183 ifTrue: [
            recoveredStack3 := recoveredStack2.
            recoveredPC := 184.
        ].
        recoveredStep = 184 ifTrue: [
            recoveredLocal1 := recoveredStack3.
            recoveredPC := 187.
        ].
        recoveredStep = 187 ifTrue: [
            recoveredStack1 := (recoveredStack1) < (recoveredStack2).
            recoveredPC := 188.
        ].
        recoveredStep = 188 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 197] ifFalse: [recoveredPC := 192].
        ].
        recoveredStep = 192 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 195.
        ].
        recoveredStep = 195 ifTrue: [
            recoveredPC := 145.
        ].
        recoveredStep = 197 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 198.
        ].
        recoveredStep = 198 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 201.
        ].
        recoveredStep = 201 ifTrue: [
            recoveredPC := 202.
        ].
        recoveredStep = 202 ifTrue: [
            recoveredStack0 := 0.
            recoveredPC := 204.
        ].
        recoveredStep = 204 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20583648; bytecode file offset 0xe7ff28"
!EwHierarchy methodsFor: 'recovered'!
indexOf: recoveredArg1 equalMethodSimple: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := 'Shikhar'.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := 'EHI64499'.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := 'ASCETLINKS'.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := 'PROD105089'.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredLocal5 := recoveredStack1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := [:recoveredBlock26Arg1 :recoveredBlock26Arg2 | 
    | recoveredBlock26Local1 recoveredBlock26Stack0 recoveredBlock26Stack1 recoveredBlock26Stack2 recoveredBlock26Stack3 recoveredBlock26Stack4 recoveredBlock26Stack5 recoveredBlock26PC recoveredBlock26Step recoveredBlock26Done recoveredBlock26Result |
    recoveredBlock26Stack0 := self.
    recoveredBlock26PC := 32.
    recoveredBlock26Done := false.
    [recoveredBlock26Done not] whileTrue: [
        recoveredBlock26Step := recoveredBlock26PC.
        recoveredBlock26Step = 32 ifTrue: [
            recoveredBlock26Stack1 := recoveredLocal4.
            recoveredBlock26PC := 35.
        ].
        recoveredBlock26Step = 35 ifTrue: [
            recoveredBlock26Stack1 := (recoveredBlock26Stack1) + (1).
            recoveredBlock26PC := 36.
        ].
        recoveredBlock26Step = 36 ifTrue: [
            recoveredBlock26Stack1 := (recoveredBlock26Stack1) + (-1).
            recoveredBlock26PC := 37.
        ].
        recoveredBlock26Step = 37 ifTrue: [
            recoveredBlock26Local1 := recoveredBlock26Stack1.
            recoveredBlock26PC := 38.
        ].
        recoveredBlock26Step = 38 ifTrue: [
            recoveredBlock26Stack1 := recoveredBlock26Arg1.
            recoveredBlock26PC := 39.
        ].
        recoveredBlock26Step = 39 ifTrue: [
            recoveredBlock26PC := 84.
        ].
        recoveredBlock26Step = 42 ifTrue: [
            recoveredBlock26Stack2 := self.
            recoveredBlock26PC := 43.
        ].
        recoveredBlock26Step = 43 ifTrue: [
            recoveredBlock26Stack2 := (recoveredBlock26Stack2) items.
            recoveredBlock26PC := 45.
        ].
        recoveredBlock26Step = 45 ifTrue: [
            recoveredBlock26Stack3 := recoveredBlock26Local1.
            recoveredBlock26PC := 46.
        ].
        recoveredBlock26Step = 46 ifTrue: [
            recoveredBlock26Stack2 := (recoveredBlock26Stack2) at: (recoveredBlock26Stack3).
            recoveredBlock26PC := 48.
        ].
        recoveredBlock26Step = 48 ifTrue: [
            recoveredBlock26Stack3 := recoveredArg2.
            recoveredBlock26PC := 51.
        ].
        recoveredBlock26Step = 51 ifTrue: [
            recoveredBlock26Stack2 := (recoveredBlock26Stack2) respondsTo: (recoveredBlock26Stack3).
            recoveredBlock26PC := 53.
        ].
        recoveredBlock26Step = 53 ifTrue: [
            (recoveredBlock26Stack2) ifTrue: [recoveredBlock26PC := 56] ifFalse: [recoveredBlock26PC := 84].
        ].
        recoveredBlock26Step = 56 ifTrue: [
            recoveredBlock26Stack2 := self.
            recoveredBlock26PC := 57.
        ].
        recoveredBlock26Step = 57 ifTrue: [
            recoveredBlock26Stack2 := (recoveredBlock26Stack2) items.
            recoveredBlock26PC := 59.
        ].
        recoveredBlock26Step = 59 ifTrue: [
            recoveredBlock26Stack3 := recoveredBlock26Local1.
            recoveredBlock26PC := 60.
        ].
        recoveredBlock26Step = 60 ifTrue: [
            recoveredBlock26Stack2 := (recoveredBlock26Stack2) at: (recoveredBlock26Stack3).
            recoveredBlock26PC := 62.
        ].
        recoveredBlock26Step = 62 ifTrue: [
            recoveredBlock26Stack3 := recoveredArg2.
            recoveredBlock26PC := 65.
        ].
        recoveredBlock26Step = 65 ifTrue: [
            recoveredBlock26Stack2 := (recoveredBlock26Stack2) perform: (recoveredBlock26Stack3).
            recoveredBlock26PC := 67.
        ].
        recoveredBlock26Step = 67 ifTrue: [
            recoveredBlock26Stack3 := recoveredArg1.
            recoveredBlock26PC := 70.
        ].
        recoveredBlock26Step = 70 ifTrue: [
            recoveredBlock26Stack2 := (recoveredBlock26Stack2) = (recoveredBlock26Stack3).
            recoveredBlock26PC := 71.
        ].
        recoveredBlock26Step = 71 ifTrue: [
            (recoveredBlock26Stack2) ifTrue: [recoveredBlock26PC := 74] ifFalse: [recoveredBlock26PC := 84].
        ].
        recoveredBlock26Step = 74 ifTrue: [
            recoveredBlock26Stack2 := recoveredLocal5.
            recoveredBlock26PC := 77.
        ].
        recoveredBlock26Step = 77 ifTrue: [
            recoveredBlock26Stack3 := recoveredBlock26Local1.
            recoveredBlock26PC := 78.
        ].
        recoveredBlock26Step = 78 ifTrue: [
            recoveredBlock26Stack2 := (recoveredBlock26Stack2) + (recoveredBlock26Stack3).
            recoveredBlock26PC := 79.
        ].
        recoveredBlock26Step = 79 ifTrue: [
            recoveredBlock26Stack3 := recoveredLocal4.
            recoveredBlock26PC := 82.
        ].
        recoveredBlock26Step = 82 ifTrue: [
            recoveredBlock26Stack2 := (recoveredBlock26Stack2) - (recoveredBlock26Stack3).
            recoveredBlock26PC := 83.
        ].
        recoveredBlock26Step = 83 ifTrue: [
            ^recoveredBlock26Stack2
        ].
        recoveredBlock26Step = 84 ifTrue: [
            (recoveredBlock26Stack1 isInteger and: [recoveredBlock26Local1 isInteger]) ifTrue: [(recoveredBlock26Local1 + 1 <= recoveredBlock26Stack1) ifTrue: [recoveredBlock26Local1 := recoveredBlock26Local1 + 1. recoveredBlock26PC := 42] ifFalse: [recoveredBlock26Local1 := nil. recoveredBlock26PC := 98]] ifFalse: [recoveredBlock26PC := 88].
        ].
        recoveredBlock26Step = 88 ifTrue: [
            recoveredBlock26Stack2 := recoveredBlock26Stack1.
            recoveredBlock26PC := 89.
        ].
        recoveredBlock26Step = 89 ifTrue: [
            recoveredBlock26Stack3 := recoveredBlock26Local1.
            recoveredBlock26PC := 90.
        ].
        recoveredBlock26Step = 90 ifTrue: [
            recoveredBlock26Stack3 := (recoveredBlock26Stack3) + (1).
            recoveredBlock26PC := 91.
        ].
        recoveredBlock26Step = 91 ifTrue: [
            recoveredBlock26Stack4 := recoveredBlock26Stack3.
            recoveredBlock26PC := 92.
        ].
        recoveredBlock26Step = 92 ifTrue: [
            recoveredBlock26Local1 := recoveredBlock26Stack4.
            recoveredBlock26PC := 93.
        ].
        recoveredBlock26Step = 93 ifTrue: [
            recoveredBlock26Stack2 := (recoveredBlock26Stack2) < (recoveredBlock26Stack3).
            recoveredBlock26PC := 94.
        ].
        recoveredBlock26Step = 94 ifTrue: [
            (recoveredBlock26Stack2) ifTrue: [recoveredBlock26PC := 96] ifFalse: [recoveredBlock26PC := 42].
        ].
        recoveredBlock26Step = 96 ifTrue: [
            recoveredBlock26Stack2 := nil.
            recoveredBlock26PC := 97.
        ].
        recoveredBlock26Step = 97 ifTrue: [
            recoveredBlock26Local1 := recoveredBlock26Stack2.
            recoveredBlock26PC := 98.
        ].
        recoveredBlock26Step = 98 ifTrue: [
            recoveredBlock26PC := 99.
        ].
        recoveredBlock26Step = 99 ifTrue: [
            recoveredBlock26Stack1 := recoveredLocal5.
            recoveredBlock26PC := 102.
        ].
        recoveredBlock26Step = 102 ifTrue: [
            recoveredBlock26Stack2 := recoveredBlock26Arg1.
            recoveredBlock26PC := 103.
        ].
        recoveredBlock26Step = 103 ifTrue: [
            recoveredBlock26Stack1 := (recoveredBlock26Stack1) + (recoveredBlock26Stack2).
            recoveredBlock26PC := 104.
        ].
        recoveredBlock26Step = 104 ifTrue: [
            recoveredBlock26Stack2 := recoveredLocal4.
            recoveredBlock26PC := 107.
        ].
        recoveredBlock26Step = 107 ifTrue: [
            recoveredBlock26Stack1 := (recoveredBlock26Stack1) - (recoveredBlock26Stack2).
            recoveredBlock26PC := 108.
        ].
        recoveredBlock26Step = 108 ifTrue: [
            recoveredLocal5 := recoveredBlock26Stack1.
            recoveredBlock26PC := 111.
        ].
        recoveredBlock26Step = 111 ifTrue: [
            recoveredBlock26Stack1 := recoveredBlock26Arg2.
            recoveredBlock26PC := 112.
        ].
        recoveredBlock26Step = 112 ifTrue: [
            recoveredBlock26Stack2 := recoveredArg1.
            recoveredBlock26PC := 115.
        ].
        recoveredBlock26Step = 115 ifTrue: [
            recoveredBlock26Stack3 := recoveredArg2.
            recoveredBlock26PC := 118.
        ].
        recoveredBlock26Step = 118 ifTrue: [
            recoveredBlock26Stack1 := (recoveredBlock26Stack1) indexOf: (recoveredBlock26Stack2) equalMethodSimple: (recoveredBlock26Stack3).
            recoveredBlock26PC := 120.
        ].
        recoveredBlock26Step = 120 ifTrue: [
            recoveredLocal2 := recoveredBlock26Stack1.
            recoveredBlock26PC := 123.
        ].
        recoveredBlock26Step = 123 ifTrue: [
            recoveredBlock26Stack1 := recoveredLocal2.
            recoveredBlock26PC := 126.
        ].
        recoveredBlock26Step = 126 ifTrue: [
            recoveredBlock26Stack2 := 0.
            recoveredBlock26PC := 128.
        ].
        recoveredBlock26Step = 128 ifTrue: [
            recoveredBlock26Stack1 := (recoveredBlock26Stack1) > (recoveredBlock26Stack2).
            recoveredBlock26PC := 129.
        ].
        recoveredBlock26Step = 129 ifTrue: [
            (recoveredBlock26Stack1) ifTrue: [recoveredBlock26PC := 132] ifFalse: [recoveredBlock26PC := 140].
        ].
        recoveredBlock26Step = 132 ifTrue: [
            recoveredBlock26Stack1 := recoveredLocal5.
            recoveredBlock26PC := 135.
        ].
        recoveredBlock26Step = 135 ifTrue: [
            recoveredBlock26Stack2 := recoveredLocal2.
            recoveredBlock26PC := 138.
        ].
        recoveredBlock26Step = 138 ifTrue: [
            recoveredBlock26Stack1 := (recoveredBlock26Stack1) + (recoveredBlock26Stack2).
            recoveredBlock26PC := 139.
        ].
        recoveredBlock26Step = 139 ifTrue: [
            ^recoveredBlock26Stack1
        ].
        recoveredBlock26Step = 140 ifTrue: [
            recoveredBlock26Stack1 := recoveredBlock26Arg2.
            recoveredBlock26PC := 141.
        ].
        recoveredBlock26Step = 141 ifTrue: [
            recoveredBlock26Stack1 := (recoveredBlock26Stack1) size.
            recoveredBlock26PC := 143.
        ].
        recoveredBlock26Step = 143 ifTrue: [
            recoveredLocal3 := recoveredBlock26Stack1.
            recoveredBlock26PC := 146.
        ].
        recoveredBlock26Step = 146 ifTrue: [
            recoveredBlock26Stack1 := recoveredLocal5.
            recoveredBlock26PC := 149.
        ].
        recoveredBlock26Step = 149 ifTrue: [
            recoveredBlock26Stack2 := recoveredLocal3.
            recoveredBlock26PC := 152.
        ].
        recoveredBlock26Step = 152 ifTrue: [
            recoveredBlock26Stack1 := (recoveredBlock26Stack1) + (recoveredBlock26Stack2).
            recoveredBlock26PC := 153.
        ].
        recoveredBlock26Step = 153 ifTrue: [
            recoveredLocal5 := recoveredBlock26Stack1.
            recoveredBlock26PC := 156.
        ].
        recoveredBlock26Step = 156 ifTrue: [
            recoveredBlock26Stack1 := recoveredBlock26Arg1.
            recoveredBlock26PC := 157.
        ].
        recoveredBlock26Step = 157 ifTrue: [
            recoveredBlock26Stack2 := recoveredBlock26Stack1.
            recoveredBlock26PC := 158.
        ].
        recoveredBlock26Step = 158 ifTrue: [
            recoveredLocal4 := recoveredBlock26Stack2.
            recoveredBlock26PC := 161.
        ].
        recoveredBlock26Step = 161 ifTrue: [
            recoveredBlock26Result := recoveredBlock26Stack1.
            recoveredBlock26Done := true.
        ].
    ].
    recoveredBlock26Result
].
            recoveredPC := 162.
        ].
        recoveredStep = 162 ifTrue: [
            (recoveredStack0) expandedDo: (recoveredStack1).
            recoveredPC := 164.
        ].
        recoveredStep = 164 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 165.
        ].
        recoveredStep = 165 ifTrue: [
            recoveredStack0 := (recoveredStack0) items.
            recoveredPC := 167.
        ].
        recoveredStep = 167 ifTrue: [
            recoveredStack0 := (recoveredStack0) size.
            recoveredPC := 169.
        ].
        recoveredStep = 169 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 172.
        ].
        recoveredStep = 172 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (1).
            recoveredPC := 173.
        ].
        recoveredStep = 173 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (-1).
            recoveredPC := 174.
        ].
        recoveredStep = 174 ifTrue: [
            recoveredPC := 230.
        ].
        recoveredStep = 178 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 181.
        ].
        recoveredStep = 181 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 182.
        ].
        recoveredStep = 182 ifTrue: [
            recoveredStack2 := (recoveredStack2) items.
            recoveredPC := 184.
        ].
        recoveredStep = 184 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 187.
        ].
        recoveredStep = 187 ifTrue: [
            recoveredStack2 := (recoveredStack2) at: (recoveredStack3).
            recoveredPC := 189.
        ].
        recoveredStep = 189 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 192.
        ].
        recoveredStep = 192 ifTrue: [
            recoveredStack2 := (recoveredStack2) respondsTo: (recoveredStack3).
            recoveredPC := 194.
        ].
        recoveredStep = 194 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 198] ifFalse: [recoveredPC := 230].
        ].
        recoveredStep = 198 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 199.
        ].
        recoveredStep = 199 ifTrue: [
            recoveredStack2 := (recoveredStack2) items.
            recoveredPC := 201.
        ].
        recoveredStep = 201 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 204.
        ].
        recoveredStep = 204 ifTrue: [
            recoveredStack2 := (recoveredStack2) at: (recoveredStack3).
            recoveredPC := 206.
        ].
        recoveredStep = 206 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 209.
        ].
        recoveredStep = 209 ifTrue: [
            recoveredStack2 := (recoveredStack2) perform: (recoveredStack3).
            recoveredPC := 211.
        ].
        recoveredStep = 211 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 214.
        ].
        recoveredStep = 214 ifTrue: [
            recoveredStack2 := (recoveredStack2) = (recoveredStack3).
            recoveredPC := 215.
        ].
        recoveredStep = 215 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 218] ifFalse: [recoveredPC := 230].
        ].
        recoveredStep = 218 ifTrue: [
            recoveredStack2 := recoveredLocal5.
            recoveredPC := 221.
        ].
        recoveredStep = 221 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 224.
        ].
        recoveredStep = 224 ifTrue: [
            recoveredStack2 := (recoveredStack2) + (recoveredStack3).
            recoveredPC := 225.
        ].
        recoveredStep = 225 ifTrue: [
            recoveredStack3 := recoveredLocal4.
            recoveredPC := 228.
        ].
        recoveredStep = 228 ifTrue: [
            recoveredStack2 := (recoveredStack2) - (recoveredStack3).
            recoveredPC := 229.
        ].
        recoveredStep = 229 ifTrue: [
            ^recoveredStack2
        ].
        recoveredStep = 230 ifTrue: [
            (recoveredStack0 isInteger and: [recoveredStack1 isInteger]) ifTrue: [(recoveredStack1 + 1 <= recoveredStack0) ifTrue: [recoveredStack1 := recoveredStack1 + 1. recoveredStack2 := recoveredStack1. recoveredPC := 178] ifFalse: [recoveredPC := 259]] ifFalse: [recoveredPC := 233].
        ].
        recoveredStep = 233 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 236.
        ].
        recoveredStep = 236 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 237.
        ].
        recoveredStep = 237 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 240.
        ].
        recoveredStep = 240 ifTrue: [
            recoveredStack2 := (recoveredStack2) + (1).
            recoveredPC := 241.
        ].
        recoveredStep = 241 ifTrue: [
            recoveredStack3 := recoveredStack2.
            recoveredPC := 242.
        ].
        recoveredStep = 242 ifTrue: [
            recoveredLocal1 := recoveredStack3.
            recoveredPC := 245.
        ].
        recoveredStep = 245 ifTrue: [
            recoveredStack1 := (recoveredStack1) < (recoveredStack2).
            recoveredPC := 246.
        ].
        recoveredStep = 246 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 255] ifFalse: [recoveredPC := 250].
        ].
        recoveredStep = 250 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 253.
        ].
        recoveredStep = 253 ifTrue: [
            recoveredPC := 181.
        ].
        recoveredStep = 255 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 256.
        ].
        recoveredStep = 256 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 259.
        ].
        recoveredStep = 259 ifTrue: [
            recoveredPC := 260.
        ].
        recoveredStep = 260 ifTrue: [
            recoveredStack0 := 0.
            recoveredPC := 262.
        ].
        recoveredStep = 262 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x205965d0; bytecode file offset 0xe92eb0"
!EwHierarchy methodsFor: 'recovered'!
indexOf: recoveredArg1 equalMethod: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredLocal6 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal6 := recoveredStack1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredLocal5 := recoveredStack1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := [:recoveredBlock14Arg1 :recoveredBlock14Arg2 | 
    | recoveredBlock14Local1 recoveredBlock14Stack0 recoveredBlock14Stack1 recoveredBlock14Stack2 recoveredBlock14Stack3 recoveredBlock14Stack4 recoveredBlock14Stack5 recoveredBlock14Stack6 recoveredBlock14PC recoveredBlock14Step recoveredBlock14Done recoveredBlock14Result |
    recoveredBlock14Stack0 := self.
    recoveredBlock14PC := 20.
    recoveredBlock14Done := false.
    [recoveredBlock14Done not] whileTrue: [
        recoveredBlock14Step := recoveredBlock14PC.
        recoveredBlock14Step = 20 ifTrue: [
            recoveredBlock14Stack1 := recoveredLocal5.
            recoveredBlock14PC := 23.
        ].
        recoveredBlock14Step = 23 ifTrue: [
            recoveredBlock14Stack1 := (recoveredBlock14Stack1) + (1).
            recoveredBlock14PC := 24.
        ].
        recoveredBlock14Step = 24 ifTrue: [
            recoveredBlock14Stack1 := (recoveredBlock14Stack1) + (-1).
            recoveredBlock14PC := 25.
        ].
        recoveredBlock14Step = 25 ifTrue: [
            recoveredBlock14Local1 := recoveredBlock14Stack1.
            recoveredBlock14PC := 26.
        ].
        recoveredBlock14Step = 26 ifTrue: [
            recoveredBlock14Stack1 := recoveredBlock14Arg1.
            recoveredBlock14PC := 27.
        ].
        recoveredBlock14Step = 27 ifTrue: [
            recoveredBlock14PC := 90.
        ].
        recoveredBlock14Step = 30 ifTrue: [
            recoveredBlock14Stack2 := self.
            recoveredBlock14PC := 31.
        ].
        recoveredBlock14Step = 31 ifTrue: [
            recoveredBlock14Stack2 := (recoveredBlock14Stack2) items.
            recoveredBlock14PC := 32.
        ].
        recoveredBlock14Step = 32 ifTrue: [
            recoveredBlock14Stack3 := recoveredBlock14Local1.
            recoveredBlock14PC := 33.
        ].
        recoveredBlock14Step = 33 ifTrue: [
            recoveredBlock14Stack2 := (recoveredBlock14Stack2) at: (recoveredBlock14Stack3).
            recoveredBlock14PC := 34.
        ].
        recoveredBlock14Step = 34 ifTrue: [
            recoveredBlock14Stack3 := recoveredArg2.
            recoveredBlock14PC := 37.
        ].
        recoveredBlock14Step = 37 ifTrue: [
            recoveredBlock14Stack2 := (recoveredBlock14Stack2) perform: (recoveredBlock14Stack3).
            recoveredBlock14PC := 38.
        ].
        recoveredBlock14Step = 38 ifTrue: [
            recoveredBlock14Stack3 := recoveredArg1.
            recoveredBlock14PC := 41.
        ].
        recoveredBlock14Step = 41 ifTrue: [
            recoveredBlock14Stack4 := true.
            recoveredBlock14PC := 42.
        ].
        recoveredBlock14Step = 42 ifTrue: [
            recoveredBlock14Stack5 := 1.
            recoveredBlock14PC := 44.
        ].
        recoveredBlock14Step = 44 ifTrue: [
            recoveredBlock14Stack2 := (recoveredBlock14Stack2) indexOf: (recoveredBlock14Stack3) matchCase: (recoveredBlock14Stack4) startingAt: (recoveredBlock14Stack5).
            recoveredBlock14PC := 47.
        ].
        recoveredBlock14Step = 47 ifTrue: [
            recoveredBlock14Stack3 := recoveredBlock14Stack2.
            recoveredBlock14PC := 48.
        ].
        recoveredBlock14Step = 48 ifTrue: [
            recoveredLocal2 := recoveredBlock14Stack3.
            recoveredBlock14PC := 51.
        ].
        recoveredBlock14Step = 51 ifTrue: [
            recoveredBlock14Stack2 := (recoveredBlock14Stack2) notEmpty.
            recoveredBlock14PC := 53.
        ].
        recoveredBlock14Step = 53 ifTrue: [
            (recoveredBlock14Stack2) ifTrue: [recoveredBlock14PC := 56] ifFalse: [recoveredBlock14PC := 90].
        ].
        recoveredBlock14Step = 56 ifTrue: [
            recoveredBlock14Stack2 := recoveredLocal2.
            recoveredBlock14PC := 59.
        ].
        recoveredBlock14Step = 59 ifTrue: [
            recoveredBlock14Stack2 := (recoveredBlock14Stack2) first.
            recoveredBlock14PC := 61.
        ].
        recoveredBlock14Step = 61 ifTrue: [
            recoveredBlock14Stack3 := 1.
            recoveredBlock14PC := 63.
        ].
        recoveredBlock14Step = 63 ifTrue: [
            recoveredBlock14Stack2 := (recoveredBlock14Stack2) = (recoveredBlock14Stack3).
            recoveredBlock14PC := 64.
        ].
        recoveredBlock14Step = 64 ifTrue: [
            recoveredBlock14Stack3 := recoveredLocal2.
            recoveredBlock14PC := 67.
        ].
        recoveredBlock14Step = 67 ifTrue: [
            recoveredBlock14Stack3 := (recoveredBlock14Stack3) last.
            recoveredBlock14PC := 69.
        ].
        recoveredBlock14Step = 69 ifTrue: [
            recoveredBlock14Stack4 := recoveredArg1.
            recoveredBlock14PC := 72.
        ].
        recoveredBlock14Step = 72 ifTrue: [
            recoveredBlock14Stack4 := (recoveredBlock14Stack4) size.
            recoveredBlock14PC := 74.
        ].
        recoveredBlock14Step = 74 ifTrue: [
            recoveredBlock14Stack3 := (recoveredBlock14Stack3) = (recoveredBlock14Stack4).
            recoveredBlock14PC := 75.
        ].
        recoveredBlock14Step = 75 ifTrue: [
            recoveredBlock14Stack2 := (recoveredBlock14Stack2) & (recoveredBlock14Stack3).
            recoveredBlock14PC := 77.
        ].
        recoveredBlock14Step = 77 ifTrue: [
            (recoveredBlock14Stack2) ifTrue: [recoveredBlock14PC := 80] ifFalse: [recoveredBlock14PC := 90].
        ].
        recoveredBlock14Step = 80 ifTrue: [
            recoveredBlock14Stack2 := recoveredLocal6.
            recoveredBlock14PC := 83.
        ].
        recoveredBlock14Step = 83 ifTrue: [
            recoveredBlock14Stack3 := recoveredBlock14Local1.
            recoveredBlock14PC := 84.
        ].
        recoveredBlock14Step = 84 ifTrue: [
            recoveredBlock14Stack2 := (recoveredBlock14Stack2) + (recoveredBlock14Stack3).
            recoveredBlock14PC := 85.
        ].
        recoveredBlock14Step = 85 ifTrue: [
            recoveredBlock14Stack3 := recoveredLocal5.
            recoveredBlock14PC := 88.
        ].
        recoveredBlock14Step = 88 ifTrue: [
            recoveredBlock14Stack2 := (recoveredBlock14Stack2) - (recoveredBlock14Stack3).
            recoveredBlock14PC := 89.
        ].
        recoveredBlock14Step = 89 ifTrue: [
            ^recoveredBlock14Stack2
        ].
        recoveredBlock14Step = 90 ifTrue: [
            (recoveredBlock14Stack1 isInteger and: [recoveredBlock14Local1 isInteger]) ifTrue: [(recoveredBlock14Local1 + 1 <= recoveredBlock14Stack1) ifTrue: [recoveredBlock14Local1 := recoveredBlock14Local1 + 1. recoveredBlock14PC := 30] ifFalse: [recoveredBlock14Local1 := nil. recoveredBlock14PC := 104]] ifFalse: [recoveredBlock14PC := 94].
        ].
        recoveredBlock14Step = 94 ifTrue: [
            recoveredBlock14Stack2 := recoveredBlock14Stack1.
            recoveredBlock14PC := 95.
        ].
        recoveredBlock14Step = 95 ifTrue: [
            recoveredBlock14Stack3 := recoveredBlock14Local1.
            recoveredBlock14PC := 96.
        ].
        recoveredBlock14Step = 96 ifTrue: [
            recoveredBlock14Stack3 := (recoveredBlock14Stack3) + (1).
            recoveredBlock14PC := 97.
        ].
        recoveredBlock14Step = 97 ifTrue: [
            recoveredBlock14Stack4 := recoveredBlock14Stack3.
            recoveredBlock14PC := 98.
        ].
        recoveredBlock14Step = 98 ifTrue: [
            recoveredBlock14Local1 := recoveredBlock14Stack4.
            recoveredBlock14PC := 99.
        ].
        recoveredBlock14Step = 99 ifTrue: [
            recoveredBlock14Stack2 := (recoveredBlock14Stack2) < (recoveredBlock14Stack3).
            recoveredBlock14PC := 100.
        ].
        recoveredBlock14Step = 100 ifTrue: [
            (recoveredBlock14Stack2) ifTrue: [recoveredBlock14PC := 102] ifFalse: [recoveredBlock14PC := 30].
        ].
        recoveredBlock14Step = 102 ifTrue: [
            recoveredBlock14Stack2 := nil.
            recoveredBlock14PC := 103.
        ].
        recoveredBlock14Step = 103 ifTrue: [
            recoveredBlock14Local1 := recoveredBlock14Stack2.
            recoveredBlock14PC := 104.
        ].
        recoveredBlock14Step = 104 ifTrue: [
            recoveredBlock14PC := 105.
        ].
        recoveredBlock14Step = 105 ifTrue: [
            recoveredBlock14Stack1 := recoveredLocal6.
            recoveredBlock14PC := 108.
        ].
        recoveredBlock14Step = 108 ifTrue: [
            recoveredBlock14Stack2 := recoveredBlock14Arg1.
            recoveredBlock14PC := 109.
        ].
        recoveredBlock14Step = 109 ifTrue: [
            recoveredBlock14Stack1 := (recoveredBlock14Stack1) + (recoveredBlock14Stack2).
            recoveredBlock14PC := 110.
        ].
        recoveredBlock14Step = 110 ifTrue: [
            recoveredBlock14Stack2 := recoveredLocal5.
            recoveredBlock14PC := 113.
        ].
        recoveredBlock14Step = 113 ifTrue: [
            recoveredBlock14Stack1 := (recoveredBlock14Stack1) - (recoveredBlock14Stack2).
            recoveredBlock14PC := 114.
        ].
        recoveredBlock14Step = 114 ifTrue: [
            recoveredLocal6 := recoveredBlock14Stack1.
            recoveredBlock14PC := 117.
        ].
        recoveredBlock14Step = 117 ifTrue: [
            recoveredBlock14Stack1 := recoveredBlock14Arg2.
            recoveredBlock14PC := 118.
        ].
        recoveredBlock14Step = 118 ifTrue: [
            recoveredBlock14Stack2 := recoveredArg1.
            recoveredBlock14PC := 121.
        ].
        recoveredBlock14Step = 121 ifTrue: [
            recoveredBlock14Stack3 := recoveredArg2.
            recoveredBlock14PC := 124.
        ].
        recoveredBlock14Step = 124 ifTrue: [
            recoveredBlock14Stack1 := (recoveredBlock14Stack1) indexOf: (recoveredBlock14Stack2) equalMethod: (recoveredBlock14Stack3).
            recoveredBlock14PC := 126.
        ].
        recoveredBlock14Step = 126 ifTrue: [
            recoveredLocal3 := recoveredBlock14Stack1.
            recoveredBlock14PC := 129.
        ].
        recoveredBlock14Step = 129 ifTrue: [
            recoveredBlock14Stack1 := recoveredLocal3.
            recoveredBlock14PC := 132.
        ].
        recoveredBlock14Step = 132 ifTrue: [
            recoveredBlock14Stack2 := 0.
            recoveredBlock14PC := 134.
        ].
        recoveredBlock14Step = 134 ifTrue: [
            recoveredBlock14Stack1 := (recoveredBlock14Stack1) > (recoveredBlock14Stack2).
            recoveredBlock14PC := 135.
        ].
        recoveredBlock14Step = 135 ifTrue: [
            (recoveredBlock14Stack1) ifTrue: [recoveredBlock14PC := 138] ifFalse: [recoveredBlock14PC := 146].
        ].
        recoveredBlock14Step = 138 ifTrue: [
            recoveredBlock14Stack1 := recoveredLocal6.
            recoveredBlock14PC := 141.
        ].
        recoveredBlock14Step = 141 ifTrue: [
            recoveredBlock14Stack2 := recoveredLocal3.
            recoveredBlock14PC := 144.
        ].
        recoveredBlock14Step = 144 ifTrue: [
            recoveredBlock14Stack1 := (recoveredBlock14Stack1) + (recoveredBlock14Stack2).
            recoveredBlock14PC := 145.
        ].
        recoveredBlock14Step = 145 ifTrue: [
            ^recoveredBlock14Stack1
        ].
        recoveredBlock14Step = 146 ifTrue: [
            recoveredBlock14Stack1 := recoveredBlock14Arg2.
            recoveredBlock14PC := 147.
        ].
        recoveredBlock14Step = 147 ifTrue: [
            recoveredBlock14Stack1 := (recoveredBlock14Stack1) size.
            recoveredBlock14PC := 149.
        ].
        recoveredBlock14Step = 149 ifTrue: [
            recoveredLocal4 := recoveredBlock14Stack1.
            recoveredBlock14PC := 152.
        ].
        recoveredBlock14Step = 152 ifTrue: [
            recoveredBlock14Stack1 := recoveredLocal6.
            recoveredBlock14PC := 155.
        ].
        recoveredBlock14Step = 155 ifTrue: [
            recoveredBlock14Stack2 := recoveredLocal4.
            recoveredBlock14PC := 158.
        ].
        recoveredBlock14Step = 158 ifTrue: [
            recoveredBlock14Stack1 := (recoveredBlock14Stack1) + (recoveredBlock14Stack2).
            recoveredBlock14PC := 159.
        ].
        recoveredBlock14Step = 159 ifTrue: [
            recoveredLocal6 := recoveredBlock14Stack1.
            recoveredBlock14PC := 162.
        ].
        recoveredBlock14Step = 162 ifTrue: [
            recoveredBlock14Stack1 := recoveredBlock14Arg1.
            recoveredBlock14PC := 163.
        ].
        recoveredBlock14Step = 163 ifTrue: [
            recoveredBlock14Stack2 := recoveredBlock14Stack1.
            recoveredBlock14PC := 164.
        ].
        recoveredBlock14Step = 164 ifTrue: [
            recoveredLocal5 := recoveredBlock14Stack2.
            recoveredBlock14PC := 167.
        ].
        recoveredBlock14Step = 167 ifTrue: [
            recoveredBlock14Result := recoveredBlock14Stack1.
            recoveredBlock14Done := true.
        ].
    ].
    recoveredBlock14Result
].
            recoveredPC := 168.
        ].
        recoveredStep = 168 ifTrue: [
            (recoveredStack0) expandedDo: (recoveredStack1).
            recoveredPC := 170.
        ].
        recoveredStep = 170 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 171.
        ].
        recoveredStep = 171 ifTrue: [
            recoveredStack0 := (recoveredStack0) items.
            recoveredPC := 172.
        ].
        recoveredStep = 172 ifTrue: [
            recoveredStack0 := (recoveredStack0) size.
            recoveredPC := 174.
        ].
        recoveredStep = 174 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 177.
        ].
        recoveredStep = 177 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (1).
            recoveredPC := 178.
        ].
        recoveredStep = 178 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (-1).
            recoveredPC := 179.
        ].
        recoveredStep = 179 ifTrue: [
            recoveredPC := 250.
        ].
        recoveredStep = 182 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 185.
        ].
        recoveredStep = 185 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 186.
        ].
        recoveredStep = 186 ifTrue: [
            recoveredStack2 := (recoveredStack2) items.
            recoveredPC := 187.
        ].
        recoveredStep = 187 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 190.
        ].
        recoveredStep = 190 ifTrue: [
            recoveredStack2 := (recoveredStack2) at: (recoveredStack3).
            recoveredPC := 191.
        ].
        recoveredStep = 191 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 194.
        ].
        recoveredStep = 194 ifTrue: [
            recoveredStack2 := (recoveredStack2) perform: (recoveredStack3).
            recoveredPC := 195.
        ].
        recoveredStep = 195 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 198.
        ].
        recoveredStep = 198 ifTrue: [
            recoveredStack4 := true.
            recoveredPC := 199.
        ].
        recoveredStep = 199 ifTrue: [
            recoveredStack5 := 1.
            recoveredPC := 201.
        ].
        recoveredStep = 201 ifTrue: [
            recoveredStack2 := (recoveredStack2) indexOf: (recoveredStack3) matchCase: (recoveredStack4) startingAt: (recoveredStack5).
            recoveredPC := 204.
        ].
        recoveredStep = 204 ifTrue: [
            recoveredStack3 := recoveredStack2.
            recoveredPC := 205.
        ].
        recoveredStep = 205 ifTrue: [
            recoveredLocal2 := recoveredStack3.
            recoveredPC := 208.
        ].
        recoveredStep = 208 ifTrue: [
            recoveredStack2 := (recoveredStack2) notEmpty.
            recoveredPC := 210.
        ].
        recoveredStep = 210 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 214] ifFalse: [recoveredPC := 250].
        ].
        recoveredStep = 214 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 217.
        ].
        recoveredStep = 217 ifTrue: [
            recoveredStack2 := (recoveredStack2) first.
            recoveredPC := 219.
        ].
        recoveredStep = 219 ifTrue: [
            recoveredStack3 := 1.
            recoveredPC := 221.
        ].
        recoveredStep = 221 ifTrue: [
            recoveredStack2 := (recoveredStack2) = (recoveredStack3).
            recoveredPC := 222.
        ].
        recoveredStep = 222 ifTrue: [
            recoveredStack3 := recoveredLocal2.
            recoveredPC := 225.
        ].
        recoveredStep = 225 ifTrue: [
            recoveredStack3 := (recoveredStack3) last.
            recoveredPC := 227.
        ].
        recoveredStep = 227 ifTrue: [
            recoveredStack4 := recoveredArg1.
            recoveredPC := 230.
        ].
        recoveredStep = 230 ifTrue: [
            recoveredStack4 := (recoveredStack4) size.
            recoveredPC := 232.
        ].
        recoveredStep = 232 ifTrue: [
            recoveredStack3 := (recoveredStack3) = (recoveredStack4).
            recoveredPC := 233.
        ].
        recoveredStep = 233 ifTrue: [
            recoveredStack2 := (recoveredStack2) & (recoveredStack3).
            recoveredPC := 235.
        ].
        recoveredStep = 235 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 238] ifFalse: [recoveredPC := 250].
        ].
        recoveredStep = 238 ifTrue: [
            recoveredStack2 := recoveredLocal6.
            recoveredPC := 241.
        ].
        recoveredStep = 241 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 244.
        ].
        recoveredStep = 244 ifTrue: [
            recoveredStack2 := (recoveredStack2) + (recoveredStack3).
            recoveredPC := 245.
        ].
        recoveredStep = 245 ifTrue: [
            recoveredStack3 := recoveredLocal5.
            recoveredPC := 248.
        ].
        recoveredStep = 248 ifTrue: [
            recoveredStack2 := (recoveredStack2) - (recoveredStack3).
            recoveredPC := 249.
        ].
        recoveredStep = 249 ifTrue: [
            ^recoveredStack2
        ].
        recoveredStep = 250 ifTrue: [
            (recoveredStack0 isInteger and: [recoveredStack1 isInteger]) ifTrue: [(recoveredStack1 + 1 <= recoveredStack0) ifTrue: [recoveredStack1 := recoveredStack1 + 1. recoveredStack2 := recoveredStack1. recoveredPC := 182] ifFalse: [recoveredPC := 279]] ifFalse: [recoveredPC := 253].
        ].
        recoveredStep = 253 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 256.
        ].
        recoveredStep = 256 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 257.
        ].
        recoveredStep = 257 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 260.
        ].
        recoveredStep = 260 ifTrue: [
            recoveredStack2 := (recoveredStack2) + (1).
            recoveredPC := 261.
        ].
        recoveredStep = 261 ifTrue: [
            recoveredStack3 := recoveredStack2.
            recoveredPC := 262.
        ].
        recoveredStep = 262 ifTrue: [
            recoveredLocal1 := recoveredStack3.
            recoveredPC := 265.
        ].
        recoveredStep = 265 ifTrue: [
            recoveredStack1 := (recoveredStack1) < (recoveredStack2).
            recoveredPC := 266.
        ].
        recoveredStep = 266 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 275] ifFalse: [recoveredPC := 270].
        ].
        recoveredStep = 270 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 273.
        ].
        recoveredStep = 273 ifTrue: [
            recoveredPC := 185.
        ].
        recoveredStep = 275 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 276.
        ].
        recoveredStep = 276 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 279.
        ].
        recoveredStep = 279 ifTrue: [
            recoveredPC := 280.
        ].
        recoveredStep = 280 ifTrue: [
            recoveredStack0 := 0.
            recoveredPC := 282.
        ].
        recoveredStep = 282 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x205a88d0; bytecode file offset 0xea51bc"
!EwHierarchy methodsFor: 'recovered'!
indexOf: recoveredArg1 equalMethod: recoveredArg2 matchCase: recoveredArg3
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredLocal6 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal6 := recoveredStack1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredLocal5 := recoveredStack1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := [:recoveredBlock14Arg1 :recoveredBlock14Arg2 | 
    | recoveredBlock14Local1 recoveredBlock14Stack0 recoveredBlock14Stack1 recoveredBlock14Stack2 recoveredBlock14Stack3 recoveredBlock14Stack4 recoveredBlock14Stack5 recoveredBlock14Stack6 recoveredBlock14PC recoveredBlock14Step recoveredBlock14Done recoveredBlock14Result |
    recoveredBlock14Stack0 := self.
    recoveredBlock14PC := 20.
    recoveredBlock14Done := false.
    [recoveredBlock14Done not] whileTrue: [
        recoveredBlock14Step := recoveredBlock14PC.
        recoveredBlock14Step = 20 ifTrue: [
            recoveredBlock14Stack1 := recoveredLocal5.
            recoveredBlock14PC := 23.
        ].
        recoveredBlock14Step = 23 ifTrue: [
            recoveredBlock14Stack1 := (recoveredBlock14Stack1) + (1).
            recoveredBlock14PC := 24.
        ].
        recoveredBlock14Step = 24 ifTrue: [
            recoveredBlock14Stack1 := (recoveredBlock14Stack1) + (-1).
            recoveredBlock14PC := 25.
        ].
        recoveredBlock14Step = 25 ifTrue: [
            recoveredBlock14Local1 := recoveredBlock14Stack1.
            recoveredBlock14PC := 26.
        ].
        recoveredBlock14Step = 26 ifTrue: [
            recoveredBlock14Stack1 := recoveredBlock14Arg1.
            recoveredBlock14PC := 27.
        ].
        recoveredBlock14Step = 27 ifTrue: [
            recoveredBlock14PC := 92.
        ].
        recoveredBlock14Step = 30 ifTrue: [
            recoveredBlock14Stack2 := self.
            recoveredBlock14PC := 31.
        ].
        recoveredBlock14Step = 31 ifTrue: [
            recoveredBlock14Stack2 := (recoveredBlock14Stack2) items.
            recoveredBlock14PC := 32.
        ].
        recoveredBlock14Step = 32 ifTrue: [
            recoveredBlock14Stack3 := recoveredBlock14Local1.
            recoveredBlock14PC := 33.
        ].
        recoveredBlock14Step = 33 ifTrue: [
            recoveredBlock14Stack2 := (recoveredBlock14Stack2) at: (recoveredBlock14Stack3).
            recoveredBlock14PC := 34.
        ].
        recoveredBlock14Step = 34 ifTrue: [
            recoveredBlock14Stack3 := recoveredArg2.
            recoveredBlock14PC := 37.
        ].
        recoveredBlock14Step = 37 ifTrue: [
            recoveredBlock14Stack2 := (recoveredBlock14Stack2) perform: (recoveredBlock14Stack3).
            recoveredBlock14PC := 38.
        ].
        recoveredBlock14Step = 38 ifTrue: [
            recoveredBlock14Stack3 := recoveredArg1.
            recoveredBlock14PC := 41.
        ].
        recoveredBlock14Step = 41 ifTrue: [
            recoveredBlock14Stack4 := recoveredArg3.
            recoveredBlock14PC := 44.
        ].
        recoveredBlock14Step = 44 ifTrue: [
            recoveredBlock14Stack5 := 1.
            recoveredBlock14PC := 46.
        ].
        recoveredBlock14Step = 46 ifTrue: [
            recoveredBlock14Stack2 := (recoveredBlock14Stack2) indexOf: (recoveredBlock14Stack3) matchCase: (recoveredBlock14Stack4) startingAt: (recoveredBlock14Stack5).
            recoveredBlock14PC := 49.
        ].
        recoveredBlock14Step = 49 ifTrue: [
            recoveredBlock14Stack3 := recoveredBlock14Stack2.
            recoveredBlock14PC := 50.
        ].
        recoveredBlock14Step = 50 ifTrue: [
            recoveredLocal2 := recoveredBlock14Stack3.
            recoveredBlock14PC := 53.
        ].
        recoveredBlock14Step = 53 ifTrue: [
            recoveredBlock14Stack2 := (recoveredBlock14Stack2) notEmpty.
            recoveredBlock14PC := 55.
        ].
        recoveredBlock14Step = 55 ifTrue: [
            (recoveredBlock14Stack2) ifTrue: [recoveredBlock14PC := 58] ifFalse: [recoveredBlock14PC := 92].
        ].
        recoveredBlock14Step = 58 ifTrue: [
            recoveredBlock14Stack2 := recoveredLocal2.
            recoveredBlock14PC := 61.
        ].
        recoveredBlock14Step = 61 ifTrue: [
            recoveredBlock14Stack2 := (recoveredBlock14Stack2) first.
            recoveredBlock14PC := 63.
        ].
        recoveredBlock14Step = 63 ifTrue: [
            recoveredBlock14Stack3 := 1.
            recoveredBlock14PC := 65.
        ].
        recoveredBlock14Step = 65 ifTrue: [
            recoveredBlock14Stack2 := (recoveredBlock14Stack2) = (recoveredBlock14Stack3).
            recoveredBlock14PC := 66.
        ].
        recoveredBlock14Step = 66 ifTrue: [
            recoveredBlock14Stack3 := recoveredLocal2.
            recoveredBlock14PC := 69.
        ].
        recoveredBlock14Step = 69 ifTrue: [
            recoveredBlock14Stack3 := (recoveredBlock14Stack3) last.
            recoveredBlock14PC := 71.
        ].
        recoveredBlock14Step = 71 ifTrue: [
            recoveredBlock14Stack4 := recoveredArg1.
            recoveredBlock14PC := 74.
        ].
        recoveredBlock14Step = 74 ifTrue: [
            recoveredBlock14Stack4 := (recoveredBlock14Stack4) size.
            recoveredBlock14PC := 76.
        ].
        recoveredBlock14Step = 76 ifTrue: [
            recoveredBlock14Stack3 := (recoveredBlock14Stack3) = (recoveredBlock14Stack4).
            recoveredBlock14PC := 77.
        ].
        recoveredBlock14Step = 77 ifTrue: [
            recoveredBlock14Stack2 := (recoveredBlock14Stack2) & (recoveredBlock14Stack3).
            recoveredBlock14PC := 79.
        ].
        recoveredBlock14Step = 79 ifTrue: [
            (recoveredBlock14Stack2) ifTrue: [recoveredBlock14PC := 82] ifFalse: [recoveredBlock14PC := 92].
        ].
        recoveredBlock14Step = 82 ifTrue: [
            recoveredBlock14Stack2 := recoveredLocal6.
            recoveredBlock14PC := 85.
        ].
        recoveredBlock14Step = 85 ifTrue: [
            recoveredBlock14Stack3 := recoveredBlock14Local1.
            recoveredBlock14PC := 86.
        ].
        recoveredBlock14Step = 86 ifTrue: [
            recoveredBlock14Stack2 := (recoveredBlock14Stack2) + (recoveredBlock14Stack3).
            recoveredBlock14PC := 87.
        ].
        recoveredBlock14Step = 87 ifTrue: [
            recoveredBlock14Stack3 := recoveredLocal5.
            recoveredBlock14PC := 90.
        ].
        recoveredBlock14Step = 90 ifTrue: [
            recoveredBlock14Stack2 := (recoveredBlock14Stack2) - (recoveredBlock14Stack3).
            recoveredBlock14PC := 91.
        ].
        recoveredBlock14Step = 91 ifTrue: [
            ^recoveredBlock14Stack2
        ].
        recoveredBlock14Step = 92 ifTrue: [
            (recoveredBlock14Stack1 isInteger and: [recoveredBlock14Local1 isInteger]) ifTrue: [(recoveredBlock14Local1 + 1 <= recoveredBlock14Stack1) ifTrue: [recoveredBlock14Local1 := recoveredBlock14Local1 + 1. recoveredBlock14PC := 30] ifFalse: [recoveredBlock14Local1 := nil. recoveredBlock14PC := 106]] ifFalse: [recoveredBlock14PC := 96].
        ].
        recoveredBlock14Step = 96 ifTrue: [
            recoveredBlock14Stack2 := recoveredBlock14Stack1.
            recoveredBlock14PC := 97.
        ].
        recoveredBlock14Step = 97 ifTrue: [
            recoveredBlock14Stack3 := recoveredBlock14Local1.
            recoveredBlock14PC := 98.
        ].
        recoveredBlock14Step = 98 ifTrue: [
            recoveredBlock14Stack3 := (recoveredBlock14Stack3) + (1).
            recoveredBlock14PC := 99.
        ].
        recoveredBlock14Step = 99 ifTrue: [
            recoveredBlock14Stack4 := recoveredBlock14Stack3.
            recoveredBlock14PC := 100.
        ].
        recoveredBlock14Step = 100 ifTrue: [
            recoveredBlock14Local1 := recoveredBlock14Stack4.
            recoveredBlock14PC := 101.
        ].
        recoveredBlock14Step = 101 ifTrue: [
            recoveredBlock14Stack2 := (recoveredBlock14Stack2) < (recoveredBlock14Stack3).
            recoveredBlock14PC := 102.
        ].
        recoveredBlock14Step = 102 ifTrue: [
            (recoveredBlock14Stack2) ifTrue: [recoveredBlock14PC := 104] ifFalse: [recoveredBlock14PC := 30].
        ].
        recoveredBlock14Step = 104 ifTrue: [
            recoveredBlock14Stack2 := nil.
            recoveredBlock14PC := 105.
        ].
        recoveredBlock14Step = 105 ifTrue: [
            recoveredBlock14Local1 := recoveredBlock14Stack2.
            recoveredBlock14PC := 106.
        ].
        recoveredBlock14Step = 106 ifTrue: [
            recoveredBlock14PC := 107.
        ].
        recoveredBlock14Step = 107 ifTrue: [
            recoveredBlock14Stack1 := recoveredLocal6.
            recoveredBlock14PC := 110.
        ].
        recoveredBlock14Step = 110 ifTrue: [
            recoveredBlock14Stack2 := recoveredBlock14Arg1.
            recoveredBlock14PC := 111.
        ].
        recoveredBlock14Step = 111 ifTrue: [
            recoveredBlock14Stack1 := (recoveredBlock14Stack1) + (recoveredBlock14Stack2).
            recoveredBlock14PC := 112.
        ].
        recoveredBlock14Step = 112 ifTrue: [
            recoveredBlock14Stack2 := recoveredLocal5.
            recoveredBlock14PC := 115.
        ].
        recoveredBlock14Step = 115 ifTrue: [
            recoveredBlock14Stack1 := (recoveredBlock14Stack1) - (recoveredBlock14Stack2).
            recoveredBlock14PC := 116.
        ].
        recoveredBlock14Step = 116 ifTrue: [
            recoveredLocal6 := recoveredBlock14Stack1.
            recoveredBlock14PC := 119.
        ].
        recoveredBlock14Step = 119 ifTrue: [
            recoveredBlock14Stack1 := 'Rnz'.
            recoveredBlock14PC := 121.
        ].
        recoveredBlock14Step = 121 ifTrue: [
            recoveredBlock14Stack2 := 'TypeAhead'.
            recoveredBlock14PC := 123.
        ].
        recoveredBlock14Step = 123 ifTrue: [
            recoveredBlock14Stack1 := (recoveredBlock14Stack1) == (recoveredBlock14Stack2).
            recoveredBlock14PC := 124.
        ].
        recoveredBlock14Step = 124 ifTrue: [
            recoveredBlock14Stack2 := 'EHI_72830'.
            recoveredBlock14PC := 126.
        ].
        recoveredBlock14Step = 126 ifTrue: [
            recoveredBlock14Stack1 := (recoveredBlock14Stack1) == (recoveredBlock14Stack2).
            recoveredBlock14PC := 127.
        ].
        recoveredBlock14Step = 127 ifTrue: [
            recoveredBlock14PC := 128.
        ].
        recoveredBlock14Step = 128 ifTrue: [
            recoveredBlock14Stack1 := recoveredBlock14Arg2.
            recoveredBlock14PC := 129.
        ].
        recoveredBlock14Step = 129 ifTrue: [
            recoveredBlock14Stack2 := recoveredArg1.
            recoveredBlock14PC := 132.
        ].
        recoveredBlock14Step = 132 ifTrue: [
            recoveredBlock14Stack3 := recoveredArg2.
            recoveredBlock14PC := 135.
        ].
        recoveredBlock14Step = 135 ifTrue: [
            recoveredBlock14Stack4 := recoveredArg3.
            recoveredBlock14PC := 138.
        ].
        recoveredBlock14Step = 138 ifTrue: [
            recoveredBlock14Stack1 := (recoveredBlock14Stack1) indexOf: (recoveredBlock14Stack2) equalMethod: (recoveredBlock14Stack3) matchCase: (recoveredBlock14Stack4).
            recoveredBlock14PC := 141.
        ].
        recoveredBlock14Step = 141 ifTrue: [
            recoveredLocal3 := recoveredBlock14Stack1.
            recoveredBlock14PC := 144.
        ].
        recoveredBlock14Step = 144 ifTrue: [
            recoveredBlock14Stack1 := recoveredLocal3.
            recoveredBlock14PC := 147.
        ].
        recoveredBlock14Step = 147 ifTrue: [
            recoveredBlock14Stack2 := 0.
            recoveredBlock14PC := 149.
        ].
        recoveredBlock14Step = 149 ifTrue: [
            recoveredBlock14Stack1 := (recoveredBlock14Stack1) > (recoveredBlock14Stack2).
            recoveredBlock14PC := 150.
        ].
        recoveredBlock14Step = 150 ifTrue: [
            (recoveredBlock14Stack1) ifTrue: [recoveredBlock14PC := 154] ifFalse: [recoveredBlock14PC := 162].
        ].
        recoveredBlock14Step = 154 ifTrue: [
            recoveredBlock14Stack1 := recoveredLocal6.
            recoveredBlock14PC := 157.
        ].
        recoveredBlock14Step = 157 ifTrue: [
            recoveredBlock14Stack2 := recoveredLocal3.
            recoveredBlock14PC := 160.
        ].
        recoveredBlock14Step = 160 ifTrue: [
            recoveredBlock14Stack1 := (recoveredBlock14Stack1) + (recoveredBlock14Stack2).
            recoveredBlock14PC := 161.
        ].
        recoveredBlock14Step = 161 ifTrue: [
            ^recoveredBlock14Stack1
        ].
        recoveredBlock14Step = 162 ifTrue: [
            recoveredBlock14Stack1 := recoveredBlock14Arg2.
            recoveredBlock14PC := 163.
        ].
        recoveredBlock14Step = 163 ifTrue: [
            recoveredBlock14Stack1 := (recoveredBlock14Stack1) size.
            recoveredBlock14PC := 165.
        ].
        recoveredBlock14Step = 165 ifTrue: [
            recoveredLocal4 := recoveredBlock14Stack1.
            recoveredBlock14PC := 168.
        ].
        recoveredBlock14Step = 168 ifTrue: [
            recoveredBlock14Stack1 := recoveredLocal6.
            recoveredBlock14PC := 171.
        ].
        recoveredBlock14Step = 171 ifTrue: [
            recoveredBlock14Stack2 := recoveredLocal4.
            recoveredBlock14PC := 174.
        ].
        recoveredBlock14Step = 174 ifTrue: [
            recoveredBlock14Stack1 := (recoveredBlock14Stack1) + (recoveredBlock14Stack2).
            recoveredBlock14PC := 175.
        ].
        recoveredBlock14Step = 175 ifTrue: [
            recoveredLocal6 := recoveredBlock14Stack1.
            recoveredBlock14PC := 178.
        ].
        recoveredBlock14Step = 178 ifTrue: [
            recoveredBlock14Stack1 := recoveredBlock14Arg1.
            recoveredBlock14PC := 179.
        ].
        recoveredBlock14Step = 179 ifTrue: [
            recoveredBlock14Stack2 := recoveredBlock14Stack1.
            recoveredBlock14PC := 180.
        ].
        recoveredBlock14Step = 180 ifTrue: [
            recoveredLocal5 := recoveredBlock14Stack2.
            recoveredBlock14PC := 183.
        ].
        recoveredBlock14Step = 183 ifTrue: [
            recoveredBlock14Result := recoveredBlock14Stack1.
            recoveredBlock14Done := true.
        ].
    ].
    recoveredBlock14Result
].
            recoveredPC := 184.
        ].
        recoveredStep = 184 ifTrue: [
            (recoveredStack0) expandedDo: (recoveredStack1).
            recoveredPC := 186.
        ].
        recoveredStep = 186 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 187.
        ].
        recoveredStep = 187 ifTrue: [
            recoveredStack0 := (recoveredStack0) items.
            recoveredPC := 188.
        ].
        recoveredStep = 188 ifTrue: [
            recoveredStack0 := (recoveredStack0) size.
            recoveredPC := 190.
        ].
        recoveredStep = 190 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 193.
        ].
        recoveredStep = 193 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (1).
            recoveredPC := 194.
        ].
        recoveredStep = 194 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (-1).
            recoveredPC := 195.
        ].
        recoveredStep = 195 ifTrue: [
            recoveredPC := 268.
        ].
        recoveredStep = 198 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 201.
        ].
        recoveredStep = 201 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 202.
        ].
        recoveredStep = 202 ifTrue: [
            recoveredStack2 := (recoveredStack2) items.
            recoveredPC := 203.
        ].
        recoveredStep = 203 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 206.
        ].
        recoveredStep = 206 ifTrue: [
            recoveredStack2 := (recoveredStack2) at: (recoveredStack3).
            recoveredPC := 207.
        ].
        recoveredStep = 207 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 210.
        ].
        recoveredStep = 210 ifTrue: [
            recoveredStack2 := (recoveredStack2) perform: (recoveredStack3).
            recoveredPC := 211.
        ].
        recoveredStep = 211 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 214.
        ].
        recoveredStep = 214 ifTrue: [
            recoveredStack4 := recoveredArg3.
            recoveredPC := 217.
        ].
        recoveredStep = 217 ifTrue: [
            recoveredStack5 := 1.
            recoveredPC := 219.
        ].
        recoveredStep = 219 ifTrue: [
            recoveredStack2 := (recoveredStack2) indexOf: (recoveredStack3) matchCase: (recoveredStack4) startingAt: (recoveredStack5).
            recoveredPC := 222.
        ].
        recoveredStep = 222 ifTrue: [
            recoveredStack3 := recoveredStack2.
            recoveredPC := 223.
        ].
        recoveredStep = 223 ifTrue: [
            recoveredLocal2 := recoveredStack3.
            recoveredPC := 226.
        ].
        recoveredStep = 226 ifTrue: [
            recoveredStack2 := (recoveredStack2) notEmpty.
            recoveredPC := 228.
        ].
        recoveredStep = 228 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 232] ifFalse: [recoveredPC := 268].
        ].
        recoveredStep = 232 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 235.
        ].
        recoveredStep = 235 ifTrue: [
            recoveredStack2 := (recoveredStack2) first.
            recoveredPC := 237.
        ].
        recoveredStep = 237 ifTrue: [
            recoveredStack3 := 1.
            recoveredPC := 239.
        ].
        recoveredStep = 239 ifTrue: [
            recoveredStack2 := (recoveredStack2) = (recoveredStack3).
            recoveredPC := 240.
        ].
        recoveredStep = 240 ifTrue: [
            recoveredStack3 := recoveredLocal2.
            recoveredPC := 243.
        ].
        recoveredStep = 243 ifTrue: [
            recoveredStack3 := (recoveredStack3) last.
            recoveredPC := 245.
        ].
        recoveredStep = 245 ifTrue: [
            recoveredStack4 := recoveredArg1.
            recoveredPC := 248.
        ].
        recoveredStep = 248 ifTrue: [
            recoveredStack4 := (recoveredStack4) size.
            recoveredPC := 250.
        ].
        recoveredStep = 250 ifTrue: [
            recoveredStack3 := (recoveredStack3) = (recoveredStack4).
            recoveredPC := 251.
        ].
        recoveredStep = 251 ifTrue: [
            recoveredStack2 := (recoveredStack2) & (recoveredStack3).
            recoveredPC := 253.
        ].
        recoveredStep = 253 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 256] ifFalse: [recoveredPC := 268].
        ].
        recoveredStep = 256 ifTrue: [
            recoveredStack2 := recoveredLocal6.
            recoveredPC := 259.
        ].
        recoveredStep = 259 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 262.
        ].
        recoveredStep = 262 ifTrue: [
            recoveredStack2 := (recoveredStack2) + (recoveredStack3).
            recoveredPC := 263.
        ].
        recoveredStep = 263 ifTrue: [
            recoveredStack3 := recoveredLocal5.
            recoveredPC := 266.
        ].
        recoveredStep = 266 ifTrue: [
            recoveredStack2 := (recoveredStack2) - (recoveredStack3).
            recoveredPC := 267.
        ].
        recoveredStep = 267 ifTrue: [
            ^recoveredStack2
        ].
        recoveredStep = 268 ifTrue: [
            (recoveredStack0 isInteger and: [recoveredStack1 isInteger]) ifTrue: [(recoveredStack1 + 1 <= recoveredStack0) ifTrue: [recoveredStack1 := recoveredStack1 + 1. recoveredStack2 := recoveredStack1. recoveredPC := 198] ifFalse: [recoveredPC := 297]] ifFalse: [recoveredPC := 271].
        ].
        recoveredStep = 271 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 274.
        ].
        recoveredStep = 274 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 275.
        ].
        recoveredStep = 275 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 278.
        ].
        recoveredStep = 278 ifTrue: [
            recoveredStack2 := (recoveredStack2) + (1).
            recoveredPC := 279.
        ].
        recoveredStep = 279 ifTrue: [
            recoveredStack3 := recoveredStack2.
            recoveredPC := 280.
        ].
        recoveredStep = 280 ifTrue: [
            recoveredLocal1 := recoveredStack3.
            recoveredPC := 283.
        ].
        recoveredStep = 283 ifTrue: [
            recoveredStack1 := (recoveredStack1) < (recoveredStack2).
            recoveredPC := 284.
        ].
        recoveredStep = 284 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 293] ifFalse: [recoveredPC := 288].
        ].
        recoveredStep = 288 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 291.
        ].
        recoveredStep = 291 ifTrue: [
            recoveredPC := 201.
        ].
        recoveredStep = 293 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 294.
        ].
        recoveredStep = 294 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 297.
        ].
        recoveredStep = 297 ifTrue: [
            recoveredPC := 298.
        ].
        recoveredStep = 298 ifTrue: [
            recoveredStack0 := 0.
            recoveredPC := 300.
        ].
        recoveredStep = 300 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

