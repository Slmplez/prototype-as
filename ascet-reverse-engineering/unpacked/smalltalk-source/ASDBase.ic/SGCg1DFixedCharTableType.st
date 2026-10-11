"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20018884; bytecode file offset 0x92209c"
!SGCg1DFixedCharTableType methodsFor: 'recovered'!
asCType
    ^'CharTable1'
! !

"ASDBase.ic method 0x20038598; bytecode file offset 0x935c54"
!SGCg1DFixedCharTableType methodsFor: 'recovered'!
equalsType: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) isMdlFixedCharTable.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20074ac4; bytecode file offset 0x9757c8"
!SGCg1DFixedCharTableType methodsFor: 'recovered'!
isCgOneDFixedCharTable
    ^true
! !

"ASDBase.ic method 0x200751b4; bytecode file offset 0x9757c8"
!SGCg1DFixedCharTableType methodsFor: 'recovered'!
isStaticCharTable
    ^true
! !

"ASDBase.ic method 0x2007566c; bytecode file offset 0x9757c8"
!SGCg1DFixedCharTableType methodsFor: 'recovered'!
isRBOneDCharTable
    ^true
! !

"ASDBase.ic method 0x20076c3c; bytecode file offset 0x9757c8"
!SGCg1DFixedCharTableType methodsFor: 'recovered'!
isStatic
    ^true
! !

"ASDBase.ic method 0x2007710c; bytecode file offset 0x9757c8"
!SGCg1DFixedCharTableType methodsFor: 'recovered'!
isRBComposedDataElement
    ^true
! !

"ASDBase.ic method 0x2007728c; bytecode file offset 0x9757c8"
!SGCg1DFixedCharTableType methodsFor: 'recovered'!
isMdlFixedCharTable
    ^true
! !

"ASDBase.ic method 0x200788ec; bytecode file offset 0x9757c8"
!SGCg1DFixedCharTableType methodsFor: 'recovered'!
isOneDStaticCharTable
    ^true
! !

"ASDBase.ic method 0x20079c7c; bytecode file offset 0x97c330"
!SGCg1DFixedCharTableType methodsFor: 'recovered'!
isOneDCharTable
    ^false
! !

"ASDBase.ic method 0x200ac4c8; bytecode file offset 0x9a8ea4"
!SGCg1DFixedCharTableType methodsFor: 'recovered'!
fixedCharTableInfo: recoveredArg1 data: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := SGMdFixedCharTableInfo.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := (recoveredValue0) create: (recoveredValue1) data: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x20132ac8; bytecode file offset 0xa2f4dc"
!SGCg1DFixedCharTableType methodsFor: 'recovered'!
isCgTypeIdentical: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := (recoveredStack1) isCgOneDFixedCharTable.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := super isCgTypeIdentical: (recoveredStack1).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20132bb8; bytecode file offset 0xa2f4dc"
!SGCg1DFixedCharTableType methodsFor: 'recovered'!
isCgTypeIdenticalNoImpl: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := (recoveredStack1) isCgOneDFixedCharTable.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := super isCgTypeIdenticalNoImpl: (recoveredStack1).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x203082ac; bytecode file offset 0xc04bb0"
!SGCg1DFixedCharTableType methodsFor: 'recovered'!
implementation: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 15] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := super implementation: (recoveredStack2).
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) deepCopy.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := (recoveredStack1) xDistribution.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack2 := (recoveredStack2) maxSize.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            (recoveredStack1) maxSize: (recoveredStack2).
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := (recoveredStack1) values.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack2 := (recoveredStack2) maxSize.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            (recoveredStack1) maxSize: (recoveredStack2).
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack0 := (recoveredStack0) xDistributionType.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := (recoveredStack1) xDistribution.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            (recoveredStack0) implementation: (recoveredStack1).
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack0 := (recoveredStack0) valueElementType.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack1 := (recoveredStack1) values.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            (recoveredStack0) implementation: (recoveredStack1).
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            super implementation: (recoveredStack1).
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20488e74; bytecode file offset 0xd85770"
!SGCg1DFixedCharTableType methodsFor: 'recovered'!
expandPackedExprAssignment: recoveredArg1 argCount: recoveredArg2 on: recoveredArg3
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) generator.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) optimizeFixedCharTable.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 29].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) fixedCharTableInfo.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := (recoveredStack0) isSameAxisForAllDataSets.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 29].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := recoveredArg3.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            (recoveredStack0) packedExprAssignment: (recoveredStack1) forOptimizedFixedCharTable1D: (recoveredStack2).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := (recoveredStack0) xDistribution.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := (recoveredStack0) staticDistanceAndOffset.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := [
    | recoveredBlock42Value0 recoveredBlock42Value1 recoveredBlock42Value2 recoveredBlock42Value3 |
    recoveredBlock42Value0 := recoveredArg3.
    (recoveredBlock42Value0) errorNo: (12) with: ('[Unknown fixed char table]').
    recoveredBlock42Value1 := Array.
    recoveredBlock42Value2 := (recoveredBlock42Value1) with: (0) with: (0).
    recoveredBlock42Value3 := recoveredBlock42Value2.
    recoveredLocal1 := recoveredBlock42Value3.
    recoveredBlock42Value2
].
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            (recoveredStack0) ifNil: (recoveredStack1).
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack0 := (recoveredStack0) fixedCharTableInfo.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack0 := (recoveredStack0) isPowerOf2Distance.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 82] ifFalse: [recoveredPC := 100].
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack1 := 1.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack3 := 1.
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack2 := (recoveredStack2) at: (recoveredStack3).
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack3 := 2.
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack2 := (recoveredStack2) floorLog: (recoveredStack3).
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            (recoveredStack0) at: (recoveredStack1) put: (recoveredStack2).
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack0 := recoveredArg3.
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            recoveredStack2 := (recoveredStack2) type.
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 114.
        ].
        recoveredStep = 114 ifTrue: [
            recoveredStack4 := 2.
            recoveredPC := 116.
        ].
        recoveredStep = 116 ifTrue: [
            recoveredStack3 := (recoveredStack3) at: (recoveredStack4).
            recoveredPC := 118.
        ].
        recoveredStep = 118 ifTrue: [
            recoveredStack4 := recoveredLocal1.
            recoveredPC := 121.
        ].
        recoveredStep = 121 ifTrue: [
            recoveredStack5 := 1.
            recoveredPC := 123.
        ].
        recoveredStep = 123 ifTrue: [
            recoveredStack4 := (recoveredStack4) at: (recoveredStack5).
            recoveredPC := 125.
        ].
        recoveredStep = 125 ifTrue: [
            (recoveredStack0) packedExprAssignment: (recoveredStack1) forFixedCharTable1D: (recoveredStack2) offset: (recoveredStack3) distance: (recoveredStack4).
            recoveredPC := 128.
        ].
        recoveredStep = 128 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 129.
        ].
        recoveredStep = 129 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

