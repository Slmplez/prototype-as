"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20067f54; bytecode file offset 0x965b90"
!DBExtendedSet methodsFor: 'recovered'!
hashMethod
    | recoveredValue0 |
    recoveredValue0 := hashMethod.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20069808; bytecode file offset 0x966bdc"
!DBExtendedSet methodsFor: 'recovered'!
equalMethod
    | recoveredValue0 |
    recoveredValue0 := equalMethod.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200bf9a4; bytecode file offset 0x9bd228"
!DBExtendedSet methodsFor: 'recovered'!
hashMethod: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    hashMethod := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c0db0; bytecode file offset 0x9bdf14"
!DBExtendedSet methodsFor: 'recovered'!
equalMethod: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    equalMethod := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x203eb620; bytecode file offset 0xce7eec"
!DBExtendedSet methodsFor: 'recovered'!
rehash: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack0 := (recoveredStack0) newElements: (recoveredStack1).
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := elementCount.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) > (recoveredStack1).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 83].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := [:recoveredBlock20Arg1 | 
    | recoveredBlock20Local1 recoveredBlock20Stack0 recoveredBlock20Stack1 recoveredBlock20Stack2 recoveredBlock20Stack3 recoveredBlock20Stack4 recoveredBlock20PC recoveredBlock20Step recoveredBlock20Done recoveredBlock20Result |
    recoveredBlock20Stack0 := self.
    recoveredBlock20PC := 26.
    recoveredBlock20Done := false.
    [recoveredBlock20Done not] whileTrue: [
        recoveredBlock20Step := recoveredBlock20PC.
        recoveredBlock20Step = 26 ifTrue: [
            recoveredBlock20Stack1 := nil.
            recoveredBlock20PC := 27.
        ].
        recoveredBlock20Step = 27 ifTrue: [
            recoveredBlock20Stack2 := recoveredBlock20Arg1.
            recoveredBlock20PC := 28.
        ].
        recoveredBlock20Step = 28 ifTrue: [
            (recoveredBlock20Stack2 == nil) ifTrue: [recoveredBlock20PC := 71] ifFalse: [recoveredBlock20PC := 32].
        ].
        recoveredBlock20Step = 32 ifTrue: [
            recoveredBlock20PC := 33.
        ].
        recoveredBlock20Step = 33 ifTrue: [
            recoveredBlock20Stack1 := recoveredBlock20Arg1.
            recoveredBlock20PC := 34.
        ].
        recoveredBlock20Step = 34 ifTrue: [
            recoveredBlock20Stack2 := hashMethod.
            recoveredBlock20PC := 36.
        ].
        recoveredBlock20Step = 36 ifTrue: [
            recoveredBlock20Stack1 := (recoveredBlock20Stack1) perform: (recoveredBlock20Stack2).
            recoveredBlock20PC := 37.
        ].
        recoveredBlock20Step = 37 ifTrue: [
            recoveredBlock20Stack2 := recoveredArg1.
            recoveredBlock20PC := 40.
        ].
        recoveredBlock20Step = 40 ifTrue: [
            recoveredBlock20Stack1 := (recoveredBlock20Stack1) \\ (recoveredBlock20Stack2).
            recoveredBlock20PC := 41.
        ].
        recoveredBlock20Step = 41 ifTrue: [
            recoveredBlock20Local1 := recoveredBlock20Stack1.
            recoveredBlock20PC := 42.
        ].
        recoveredBlock20Step = 42 ifTrue: [
            recoveredBlock20Stack1 := recoveredBlock20Local1.
            recoveredBlock20PC := 43.
        ].
        recoveredBlock20Step = 43 ifTrue: [
            recoveredBlock20Stack1 := (recoveredBlock20Stack1) + (1).
            recoveredBlock20PC := 44.
        ].
        recoveredBlock20Step = 44 ifTrue: [
            recoveredBlock20Stack2 := recoveredBlock20Stack1.
            recoveredBlock20PC := 45.
        ].
        recoveredBlock20Step = 45 ifTrue: [
            recoveredBlock20Local1 := recoveredBlock20Stack2.
            recoveredBlock20PC := 46.
        ].
        recoveredBlock20Step = 46 ifTrue: [
            recoveredBlock20Stack2 := recoveredArg1.
            recoveredBlock20PC := 49.
        ].
        recoveredBlock20Step = 49 ifTrue: [
            recoveredBlock20Stack1 := (recoveredBlock20Stack1) > (recoveredBlock20Stack2).
            recoveredBlock20PC := 50.
        ].
        recoveredBlock20Step = 50 ifTrue: [
            (recoveredBlock20Stack1) ifTrue: [recoveredBlock20PC := 54] ifFalse: [recoveredBlock20PC := 57].
        ].
        recoveredBlock20Step = 54 ifTrue: [
            recoveredBlock20Stack1 := 1.
            recoveredBlock20PC := 56.
        ].
        recoveredBlock20Step = 56 ifTrue: [
            recoveredBlock20Local1 := recoveredBlock20Stack1.
            recoveredBlock20PC := 57.
        ].
        recoveredBlock20Step = 57 ifTrue: [
            recoveredBlock20Stack1 := recoveredLocal1.
            recoveredBlock20PC := 60.
        ].
        recoveredBlock20Step = 60 ifTrue: [
            recoveredBlock20Stack2 := recoveredBlock20Local1.
            recoveredBlock20PC := 61.
        ].
        recoveredBlock20Step = 61 ifTrue: [
            recoveredBlock20Stack1 := (recoveredBlock20Stack1) at: (recoveredBlock20Stack2).
            recoveredBlock20PC := 62.
        ].
        recoveredBlock20Step = 62 ifTrue: [
            (recoveredBlock20Stack1 ~~ nil) ifTrue: [recoveredBlock20PC := 42] ifFalse: [recoveredBlock20PC := 64].
        ].
        recoveredBlock20Step = 64 ifTrue: [
            recoveredBlock20Stack1 := recoveredLocal1.
            recoveredBlock20PC := 67.
        ].
        recoveredBlock20Step = 67 ifTrue: [
            recoveredBlock20Stack2 := recoveredBlock20Local1.
            recoveredBlock20PC := 68.
        ].
        recoveredBlock20Step = 68 ifTrue: [
            recoveredBlock20Stack3 := recoveredBlock20Arg1.
            recoveredBlock20PC := 69.
        ].
        recoveredBlock20Step = 69 ifTrue: [
            recoveredBlock20Stack1 := (recoveredBlock20Stack1) at: (recoveredBlock20Stack2) put: (recoveredBlock20Stack3).
            recoveredBlock20PC := 71.
        ].
        recoveredBlock20Step = 71 ifTrue: [
            recoveredBlock20Result := recoveredBlock20Stack1.
            recoveredBlock20Done := true.
        ].
    ].
    recoveredBlock20Result
].
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack1 := elements.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack2 := 1.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack3 := elements.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack3 := (recoveredStack3) size.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            (recoveredStack0) apply: (recoveredStack1) from: (recoveredStack2) to: (recoveredStack3).
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            elements := recoveredStack0.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20436284; bytecode file offset 0xd32b48"
!DBExtendedSet methodsFor: 'recovered'!
rehashTo: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredLocal4 := recoveredStack2.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredLocal5 := recoveredStack1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := elements.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredPC := 75.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack2 := hashMethod.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := (recoveredStack1) perform: (recoveredStack2).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := (recoveredStack1) \\ (recoveredStack2).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (1).
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack2 := recoveredLocal4.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := (recoveredStack1) < (recoveredStack2).
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 34] ifFalse: [recoveredPC := 52].
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack2 := recoveredLocal4.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := (recoveredStack1) > (recoveredStack2).
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 75] ifFalse: [recoveredPC := 40].
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack2 := recoveredLocal5.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack1 := (recoveredStack1) <= (recoveredStack2).
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 75] ifFalse: [recoveredPC := 48].
        ].
        recoveredStep = 48 ifTrue: [
            recoveredPC := 66.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack2 := recoveredLocal4.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack1 := (recoveredStack1) > (recoveredStack2).
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 58] ifFalse: [recoveredPC := 66].
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack2 := recoveredLocal5.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack1 := (recoveredStack1) <= (recoveredStack2).
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 75] ifFalse: [recoveredPC := 66].
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack1 := elements.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack2 := recoveredLocal4.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack3 := recoveredLocal2.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (1).
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredLocal5 := recoveredStack2.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack1 := (recoveredStack1) > (recoveredStack2).
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 86] ifFalse: [recoveredPC := 90].
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack1 := 1.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredLocal5 := recoveredStack1.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack1 := elements.
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack2 := recoveredLocal5.
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2).
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            recoveredLocal2 := recoveredStack2.
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 99].
        ].
        recoveredStep = 99 ifTrue: [
            recoveredStack1 := elements.
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            recoveredStack2 := recoveredLocal4.
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            recoveredStack3 := nil.
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2044ff20; bytecode file offset 0xd4c7e4"
!DBExtendedSet methodsFor: 'recovered'!
includes: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack2 := hashMethod.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) perform: (recoveredStack2).
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack2 := elements.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack2 := (recoveredStack2) size.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) \\ (recoveredStack2).
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (1).
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (-1).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := elements.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredPC := 48.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack2 := elements.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack2 := (recoveredStack2) at: (recoveredStack3).
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack3 := recoveredStack2.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredLocal2 := recoveredStack3.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            (recoveredStack2 ~~ nil) ifTrue: [recoveredPC := 36] ifFalse: [recoveredPC := 34].
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack2 := false.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            ^recoveredStack2
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack3 := equalMethod.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack4 := recoveredArg1.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack2 := (recoveredStack2) perform: (recoveredStack3) with: (recoveredStack4).
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 46] ifFalse: [recoveredPC := 48].
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack2 := true.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            ^recoveredStack2
        ].
        recoveredStep = 48 ifTrue: [
            (recoveredStack1 isInteger and: [recoveredLocal1 isInteger]) ifTrue: [(recoveredLocal1 + 1 <= recoveredStack1) ifTrue: [recoveredLocal1 := recoveredLocal1 + 1. recoveredPC := 24] ifFalse: [recoveredLocal1 := nil. recoveredPC := 62]] ifFalse: [recoveredPC := 52].
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack3 := (recoveredStack3) + (1).
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack4 := recoveredStack3.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredLocal1 := recoveredStack4.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack2 := (recoveredStack2) < (recoveredStack3).
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 60] ifFalse: [recoveredPC := 24].
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack2 := nil.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (-1).
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredPC := 96.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack2 := elements.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack2 := (recoveredStack2) at: (recoveredStack3).
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack3 := recoveredStack2.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredLocal2 := recoveredStack3.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            (recoveredStack2 ~~ nil) ifTrue: [recoveredPC := 84] ifFalse: [recoveredPC := 82].
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack2 := false.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            ^recoveredStack2
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack3 := equalMethod.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredStack4 := recoveredArg1.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack2 := (recoveredStack2) perform: (recoveredStack3) with: (recoveredStack4).
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 94] ifFalse: [recoveredPC := 96].
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack2 := true.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            ^recoveredStack2
        ].
        recoveredStep = 96 ifTrue: [
            (recoveredStack1 isInteger and: [recoveredLocal1 isInteger]) ifTrue: [(recoveredLocal1 + 1 <= recoveredStack1) ifTrue: [recoveredLocal1 := recoveredLocal1 + 1. recoveredPC := 72] ifFalse: [recoveredLocal1 := nil. recoveredPC := 110]] ifFalse: [recoveredPC := 100].
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            recoveredStack3 := (recoveredStack3) + (1).
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            recoveredStack4 := recoveredStack3.
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            recoveredLocal1 := recoveredStack4.
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            recoveredStack2 := (recoveredStack2) < (recoveredStack3).
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 108] ifFalse: [recoveredPC := 72].
        ].
        recoveredStep = 108 ifTrue: [
            recoveredStack2 := nil.
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 112.
        ].
        recoveredStep = 112 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x20496b9c; bytecode file offset 0xd93468"
!DBExtendedSet methodsFor: 'recovered'!
addUnique: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack2 := hashMethod.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) perform: (recoveredStack2).
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack2 := elements.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack2 := (recoveredStack2) size.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack3 := recoveredStack2.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredLocal2 := recoveredStack3.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) \\ (recoveredStack2).
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (1).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (-1).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredPC := 57.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack2 := elements.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack2 := (recoveredStack2) at: (recoveredStack3).
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            (recoveredStack2 ~~ nil) ifTrue: [recoveredPC := 57] ifFalse: [recoveredPC := 32].
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack2 := elements.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack4 := recoveredArg1.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack2 := elementCount.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack2 := (recoveredStack2) + (1).
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack3 := recoveredStack2.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            elementCount := recoveredStack3.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack3 := recoveredLocal2.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack4 := 2.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack3 := (recoveredStack3) // (recoveredStack4).
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack2 := (recoveredStack2) > (recoveredStack3).
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 52] ifFalse: [recoveredPC := 55].
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            (recoveredStack2) expand.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            ^recoveredStack2
        ].
        recoveredStep = 57 ifTrue: [
            (recoveredStack1 isInteger and: [recoveredLocal1 isInteger]) ifTrue: [(recoveredLocal1 + 1 <= recoveredStack1) ifTrue: [recoveredLocal1 := recoveredLocal1 + 1. recoveredPC := 24] ifFalse: [recoveredLocal1 := nil. recoveredPC := 71]] ifFalse: [recoveredPC := 61].
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack3 := (recoveredStack3) + (1).
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack4 := recoveredStack3.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredLocal1 := recoveredStack4.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack2 := (recoveredStack2) < (recoveredStack3).
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 69] ifFalse: [recoveredPC := 24].
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack2 := nil.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (-1).
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredPC := 113.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack2 := elements.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack2 := (recoveredStack2) at: (recoveredStack3).
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            (recoveredStack2 ~~ nil) ifTrue: [recoveredPC := 113] ifFalse: [recoveredPC := 88].
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack2 := elements.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredStack4 := recoveredArg1.
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack2 := elementCount.
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack2 := (recoveredStack2) + (1).
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            recoveredStack3 := recoveredStack2.
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            elementCount := recoveredStack3.
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack3 := recoveredLocal2.
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            recoveredStack4 := 2.
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            recoveredStack3 := (recoveredStack3) // (recoveredStack4).
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            recoveredStack2 := (recoveredStack2) > (recoveredStack3).
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 108] ifFalse: [recoveredPC := 111].
        ].
        recoveredStep = 108 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            (recoveredStack2) expand.
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 112.
        ].
        recoveredStep = 112 ifTrue: [
            ^recoveredStack2
        ].
        recoveredStep = 113 ifTrue: [
            (recoveredStack1 isInteger and: [recoveredLocal1 isInteger]) ifTrue: [(recoveredLocal1 + 1 <= recoveredStack1) ifTrue: [recoveredLocal1 := recoveredLocal1 + 1. recoveredPC := 80] ifFalse: [recoveredLocal1 := nil. recoveredPC := 127]] ifFalse: [recoveredPC := 117].
        ].
        recoveredStep = 117 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 118.
        ].
        recoveredStep = 118 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 119.
        ].
        recoveredStep = 119 ifTrue: [
            recoveredStack3 := (recoveredStack3) + (1).
            recoveredPC := 120.
        ].
        recoveredStep = 120 ifTrue: [
            recoveredStack4 := recoveredStack3.
            recoveredPC := 121.
        ].
        recoveredStep = 121 ifTrue: [
            recoveredLocal1 := recoveredStack4.
            recoveredPC := 122.
        ].
        recoveredStep = 122 ifTrue: [
            recoveredStack2 := (recoveredStack2) < (recoveredStack3).
            recoveredPC := 123.
        ].
        recoveredStep = 123 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 125] ifFalse: [recoveredPC := 80].
        ].
        recoveredStep = 125 ifTrue: [
            recoveredStack2 := nil.
            recoveredPC := 126.
        ].
        recoveredStep = 126 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 127.
        ].
        recoveredStep = 127 ifTrue: [
            recoveredPC := 128.
        ].
        recoveredStep = 128 ifTrue: [
            recoveredStack0 := (recoveredStack0) expand.
            recoveredPC := 130.
        ].
        recoveredStep = 130 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 131.
        ].
        recoveredStep = 131 ifTrue: [
            recoveredStack0 := (recoveredStack0) addUnique: (recoveredStack1).
            recoveredPC := 133.
        ].
        recoveredStep = 133 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x204a612c; bytecode file offset 0xda29f8"
!DBExtendedSet methodsFor: 'recovered'!
remove: recoveredArg1 ifAbsent: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := hashMethod.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) perform: (recoveredStack2).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack2 := elements.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack2 := (recoveredStack2) size.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack3 := recoveredStack2.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredLocal2 := recoveredStack3.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) \\ (recoveredStack2).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (1).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (-1).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredPC := 60.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack2 := elements.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack2 := (recoveredStack2) at: (recoveredStack3).
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack3 := recoveredStack2.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredLocal3 := recoveredStack3.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            (recoveredStack2 ~~ nil) ifTrue: [recoveredPC := 38] ifFalse: [recoveredPC := 34].
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack2 := (recoveredStack2) value.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            ^recoveredStack2
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack3 := equalMethod.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack4 := recoveredArg1.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack2 := (recoveredStack2) perform: (recoveredStack3) with: (recoveredStack4).
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 48] ifFalse: [recoveredPC := 60].
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            (recoveredStack2) rehashTo: (recoveredStack3).
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack2 := elementCount.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack2 := (recoveredStack2) + (-1).
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            elementCount := recoveredStack2.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            ^recoveredStack2
        ].
        recoveredStep = 60 ifTrue: [
            (recoveredStack1 isInteger and: [recoveredLocal1 isInteger]) ifTrue: [(recoveredLocal1 + 1 <= recoveredStack1) ifTrue: [recoveredLocal1 := recoveredLocal1 + 1. recoveredPC := 24] ifFalse: [recoveredLocal1 := nil. recoveredPC := 74]] ifFalse: [recoveredPC := 64].
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack3 := (recoveredStack3) + (1).
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack4 := recoveredStack3.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredLocal1 := recoveredStack4.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack2 := (recoveredStack2) < (recoveredStack3).
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 72] ifFalse: [recoveredPC := 24].
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack2 := nil.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (-1).
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredPC := 120.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack2 := elements.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredStack2 := (recoveredStack2) at: (recoveredStack3).
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack3 := recoveredStack2.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredLocal3 := recoveredStack3.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            (recoveredStack2 ~~ nil) ifTrue: [recoveredPC := 98] ifFalse: [recoveredPC := 94].
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack2 := (recoveredStack2) value.
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            ^recoveredStack2
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            recoveredStack3 := equalMethod.
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            recoveredStack4 := recoveredArg1.
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            recoveredStack2 := (recoveredStack2) perform: (recoveredStack3) with: (recoveredStack4).
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 108] ifFalse: [recoveredPC := 120].
        ].
        recoveredStep = 108 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            (recoveredStack2) rehashTo: (recoveredStack3).
            recoveredPC := 112.
        ].
        recoveredStep = 112 ifTrue: [
            recoveredStack2 := elementCount.
            recoveredPC := 114.
        ].
        recoveredStep = 114 ifTrue: [
            recoveredStack2 := (recoveredStack2) + (-1).
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            elementCount := recoveredStack2.
            recoveredPC := 117.
        ].
        recoveredStep = 117 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 119.
        ].
        recoveredStep = 119 ifTrue: [
            ^recoveredStack2
        ].
        recoveredStep = 120 ifTrue: [
            (recoveredStack1 isInteger and: [recoveredLocal1 isInteger]) ifTrue: [(recoveredLocal1 + 1 <= recoveredStack1) ifTrue: [recoveredLocal1 := recoveredLocal1 + 1. recoveredPC := 84] ifFalse: [recoveredLocal1 := nil. recoveredPC := 134]] ifFalse: [recoveredPC := 124].
        ].
        recoveredStep = 124 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 125.
        ].
        recoveredStep = 125 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 126.
        ].
        recoveredStep = 126 ifTrue: [
            recoveredStack3 := (recoveredStack3) + (1).
            recoveredPC := 127.
        ].
        recoveredStep = 127 ifTrue: [
            recoveredStack4 := recoveredStack3.
            recoveredPC := 128.
        ].
        recoveredStep = 128 ifTrue: [
            recoveredLocal1 := recoveredStack4.
            recoveredPC := 129.
        ].
        recoveredStep = 129 ifTrue: [
            recoveredStack2 := (recoveredStack2) < (recoveredStack3).
            recoveredPC := 130.
        ].
        recoveredStep = 130 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 132] ifFalse: [recoveredPC := 84].
        ].
        recoveredStep = 132 ifTrue: [
            recoveredStack2 := nil.
            recoveredPC := 133.
        ].
        recoveredStep = 133 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 134.
        ].
        recoveredStep = 134 ifTrue: [
            recoveredPC := 135.
        ].
        recoveredStep = 135 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 137.
        ].
        recoveredStep = 137 ifTrue: [
            recoveredStack1 := (recoveredStack1) value.
            recoveredPC := 138.
        ].
        recoveredStep = 138 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x20509128; bytecode file offset 0xe059f8"
!DBExtendedSet methodsFor: 'recovered'!
add: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 13] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := hashMethod.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := (recoveredStack1) perform: (recoveredStack2).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack2 := elements.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack2 := (recoveredStack2) size.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack3 := recoveredStack2.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredLocal2 := recoveredStack3.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := (recoveredStack1) \\ (recoveredStack2).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (1).
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (-1).
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredPC := 85.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack2 := elements.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack2 := (recoveredStack2) at: (recoveredStack3).
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack3 := recoveredStack2.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredLocal3 := recoveredStack3.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            (recoveredStack2 ~~ nil) ifTrue: [recoveredPC := 72] ifFalse: [recoveredPC := 44].
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack2 := elements.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack4 := recoveredArg1.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack2 := elementCount.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack2 := (recoveredStack2) + (1).
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack3 := recoveredStack2.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            elementCount := recoveredStack3.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack3 := recoveredLocal2.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack4 := 2.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack3 := (recoveredStack3) // (recoveredStack4).
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack2 := (recoveredStack2) > (recoveredStack3).
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 66] ifFalse: [recoveredPC := 69].
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            (recoveredStack2) expand.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            ^recoveredStack2
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack3 := equalMethod.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack4 := recoveredArg1.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack2 := (recoveredStack2) perform: (recoveredStack3) with: (recoveredStack4).
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 82] ifFalse: [recoveredPC := 85].
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            ^recoveredStack2
        ].
        recoveredStep = 85 ifTrue: [
            (recoveredStack1 isInteger and: [recoveredLocal1 isInteger]) ifTrue: [(recoveredLocal1 + 1 <= recoveredStack1) ifTrue: [recoveredLocal1 := recoveredLocal1 + 1. recoveredPC := 34] ifFalse: [recoveredLocal1 := nil. recoveredPC := 99]] ifFalse: [recoveredPC := 89].
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredStack3 := (recoveredStack3) + (1).
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack4 := recoveredStack3.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredLocal1 := recoveredStack4.
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack2 := (recoveredStack2) < (recoveredStack3).
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 97] ifFalse: [recoveredPC := 34].
        ].
        recoveredStep = 97 ifTrue: [
            recoveredStack2 := nil.
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (-1).
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            recoveredPC := 159.
        ].
        recoveredStep = 108 ifTrue: [
            recoveredStack2 := elements.
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            recoveredStack2 := (recoveredStack2) at: (recoveredStack3).
            recoveredPC := 112.
        ].
        recoveredStep = 112 ifTrue: [
            recoveredStack3 := recoveredStack2.
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            recoveredLocal3 := recoveredStack3.
            recoveredPC := 114.
        ].
        recoveredStep = 114 ifTrue: [
            (recoveredStack2 ~~ nil) ifTrue: [recoveredPC := 146] ifFalse: [recoveredPC := 118].
        ].
        recoveredStep = 118 ifTrue: [
            recoveredStack2 := elements.
            recoveredPC := 120.
        ].
        recoveredStep = 120 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 121.
        ].
        recoveredStep = 121 ifTrue: [
            recoveredStack4 := recoveredArg1.
            recoveredPC := 123.
        ].
        recoveredStep = 123 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredPC := 125.
        ].
        recoveredStep = 125 ifTrue: [
            recoveredStack2 := elementCount.
            recoveredPC := 127.
        ].
        recoveredStep = 127 ifTrue: [
            recoveredStack2 := (recoveredStack2) + (1).
            recoveredPC := 128.
        ].
        recoveredStep = 128 ifTrue: [
            recoveredStack3 := recoveredStack2.
            recoveredPC := 129.
        ].
        recoveredStep = 129 ifTrue: [
            elementCount := recoveredStack3.
            recoveredPC := 131.
        ].
        recoveredStep = 131 ifTrue: [
            recoveredStack3 := recoveredLocal2.
            recoveredPC := 132.
        ].
        recoveredStep = 132 ifTrue: [
            recoveredStack4 := 2.
            recoveredPC := 134.
        ].
        recoveredStep = 134 ifTrue: [
            recoveredStack3 := (recoveredStack3) // (recoveredStack4).
            recoveredPC := 135.
        ].
        recoveredStep = 135 ifTrue: [
            recoveredStack2 := (recoveredStack2) > (recoveredStack3).
            recoveredPC := 136.
        ].
        recoveredStep = 136 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 140] ifFalse: [recoveredPC := 143].
        ].
        recoveredStep = 140 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 141.
        ].
        recoveredStep = 141 ifTrue: [
            (recoveredStack2) expand.
            recoveredPC := 143.
        ].
        recoveredStep = 143 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 145.
        ].
        recoveredStep = 145 ifTrue: [
            ^recoveredStack2
        ].
        recoveredStep = 146 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 147.
        ].
        recoveredStep = 147 ifTrue: [
            recoveredStack3 := equalMethod.
            recoveredPC := 149.
        ].
        recoveredStep = 149 ifTrue: [
            recoveredStack4 := recoveredArg1.
            recoveredPC := 151.
        ].
        recoveredStep = 151 ifTrue: [
            recoveredStack2 := (recoveredStack2) perform: (recoveredStack3) with: (recoveredStack4).
            recoveredPC := 153.
        ].
        recoveredStep = 153 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 156] ifFalse: [recoveredPC := 159].
        ].
        recoveredStep = 156 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 158.
        ].
        recoveredStep = 158 ifTrue: [
            ^recoveredStack2
        ].
        recoveredStep = 159 ifTrue: [
            (recoveredStack1 isInteger and: [recoveredLocal1 isInteger]) ifTrue: [(recoveredLocal1 + 1 <= recoveredStack1) ifTrue: [recoveredLocal1 := recoveredLocal1 + 1. recoveredPC := 108] ifFalse: [recoveredLocal1 := nil. recoveredPC := 173]] ifFalse: [recoveredPC := 163].
        ].
        recoveredStep = 163 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 164.
        ].
        recoveredStep = 164 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 165.
        ].
        recoveredStep = 165 ifTrue: [
            recoveredStack3 := (recoveredStack3) + (1).
            recoveredPC := 166.
        ].
        recoveredStep = 166 ifTrue: [
            recoveredStack4 := recoveredStack3.
            recoveredPC := 167.
        ].
        recoveredStep = 167 ifTrue: [
            recoveredLocal1 := recoveredStack4.
            recoveredPC := 168.
        ].
        recoveredStep = 168 ifTrue: [
            recoveredStack2 := (recoveredStack2) < (recoveredStack3).
            recoveredPC := 169.
        ].
        recoveredStep = 169 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 171] ifFalse: [recoveredPC := 108].
        ].
        recoveredStep = 171 ifTrue: [
            recoveredStack2 := nil.
            recoveredPC := 172.
        ].
        recoveredStep = 172 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 173.
        ].
        recoveredStep = 173 ifTrue: [
            recoveredPC := 174.
        ].
        recoveredStep = 174 ifTrue: [
            recoveredStack0 := (recoveredStack0) expand.
            recoveredPC := 176.
        ].
        recoveredStep = 176 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 178.
        ].
        recoveredStep = 178 ifTrue: [
            recoveredStack0 := (recoveredStack0) add: (recoveredStack1).
            recoveredPC := 180.
        ].
        recoveredStep = 180 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x205bda30; bytecode file offset 0xeba32c"
!DBExtendedSet methodsFor: 'recovered'!
removeAll: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := elements.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := elementCount.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack3 := 2.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack2 := (recoveredStack2) // (recoveredStack3).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := (recoveredStack1) >= (recoveredStack2).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 24] ifFalse: [recoveredPC := 250].
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := Object.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := Array.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack2 := (recoveredStack2) size.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack1 := (recoveredStack1) new: (recoveredStack2).
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack2 := [:recoveredBlock49Arg1 | 
    | recoveredBlock49Local1 recoveredBlock49Local2 recoveredBlock49Stack0 recoveredBlock49Stack1 recoveredBlock49Stack2 recoveredBlock49Stack3 recoveredBlock49Stack4 recoveredBlock49Stack5 recoveredBlock49PC recoveredBlock49Step recoveredBlock49Done recoveredBlock49Result |
    recoveredBlock49Stack0 := self.
    recoveredBlock49PC := 56.
    recoveredBlock49Done := false.
    [recoveredBlock49Done not] whileTrue: [
        recoveredBlock49Step := recoveredBlock49PC.
        recoveredBlock49Step = 56 ifTrue: [
            recoveredBlock49Stack1 := recoveredBlock49Arg1.
            recoveredBlock49PC := 57.
        ].
        recoveredBlock49Step = 57 ifTrue: [
            recoveredBlock49Stack2 := hashMethod.
            recoveredBlock49PC := 59.
        ].
        recoveredBlock49Step = 59 ifTrue: [
            recoveredBlock49Stack1 := (recoveredBlock49Stack1) perform: (recoveredBlock49Stack2).
            recoveredBlock49PC := 61.
        ].
        recoveredBlock49Step = 61 ifTrue: [
            recoveredBlock49Stack2 := recoveredLocal4.
            recoveredBlock49PC := 64.
        ].
        recoveredBlock49Step = 64 ifTrue: [
            recoveredBlock49Stack1 := (recoveredBlock49Stack1) \\ (recoveredBlock49Stack2).
            recoveredBlock49PC := 65.
        ].
        recoveredBlock49Step = 65 ifTrue: [
            recoveredBlock49Local2 := recoveredBlock49Stack1.
            recoveredBlock49PC := 66.
        ].
        recoveredBlock49Step = 66 ifTrue: [
            recoveredBlock49Stack1 := recoveredBlock49Local2.
            recoveredBlock49PC := 67.
        ].
        recoveredBlock49Step = 67 ifTrue: [
            recoveredBlock49Stack1 := (recoveredBlock49Stack1) + (1).
            recoveredBlock49PC := 68.
        ].
        recoveredBlock49Step = 68 ifTrue: [
            recoveredBlock49Stack2 := recoveredBlock49Stack1.
            recoveredBlock49PC := 69.
        ].
        recoveredBlock49Step = 69 ifTrue: [
            recoveredBlock49Local2 := recoveredBlock49Stack2.
            recoveredBlock49PC := 70.
        ].
        recoveredBlock49Step = 70 ifTrue: [
            recoveredBlock49Stack2 := recoveredLocal4.
            recoveredBlock49PC := 73.
        ].
        recoveredBlock49Step = 73 ifTrue: [
            recoveredBlock49Stack1 := (recoveredBlock49Stack1) > (recoveredBlock49Stack2).
            recoveredBlock49PC := 74.
        ].
        recoveredBlock49Step = 74 ifTrue: [
            (recoveredBlock49Stack1) ifTrue: [recoveredBlock49PC := 78] ifFalse: [recoveredBlock49PC := 81].
        ].
        recoveredBlock49Step = 78 ifTrue: [
            recoveredBlock49Stack1 := 1.
            recoveredBlock49PC := 80.
        ].
        recoveredBlock49Step = 80 ifTrue: [
            recoveredBlock49Local2 := recoveredBlock49Stack1.
            recoveredBlock49PC := 81.
        ].
        recoveredBlock49Step = 81 ifTrue: [
            recoveredBlock49Stack1 := elements.
            recoveredBlock49PC := 83.
        ].
        recoveredBlock49Step = 83 ifTrue: [
            recoveredBlock49Stack2 := recoveredBlock49Local2.
            recoveredBlock49PC := 84.
        ].
        recoveredBlock49Step = 84 ifTrue: [
            recoveredBlock49Stack1 := (recoveredBlock49Stack1) at: (recoveredBlock49Stack2).
            recoveredBlock49PC := 86.
        ].
        recoveredBlock49Step = 86 ifTrue: [
            recoveredBlock49Stack2 := recoveredBlock49Stack1.
            recoveredBlock49PC := 87.
        ].
        recoveredBlock49Step = 87 ifTrue: [
            recoveredBlock49Local1 := recoveredBlock49Stack2.
            recoveredBlock49PC := 88.
        ].
        recoveredBlock49Step = 88 ifTrue: [
            (recoveredBlock49Stack1 ~~ nil) ifTrue: [recoveredBlock49PC := 154] ifFalse: [recoveredBlock49PC := 92].
        ].
        recoveredBlock49Step = 92 ifTrue: [
            recoveredBlock49Stack1 := recoveredLocal2.
            recoveredBlock49PC := 95.
        ].
        recoveredBlock49Step = 95 ifTrue: [
            recoveredBlock49Stack2 := 1.
            recoveredBlock49PC := 97.
        ].
        recoveredBlock49Step = 97 ifTrue: [
            recoveredBlock49Stack3 := recoveredLocal1.
            recoveredBlock49PC := 100.
        ].
        recoveredBlock49Step = 100 ifTrue: [
            recoveredBlock49Stack4 := [:recoveredBlock49Block100Arg1 | 
    | recoveredBlock49Block100Value0 recoveredBlock49Block100Value1 recoveredBlock49Block100Value2 |
    recoveredBlock49Block100Value0 := elements.
    recoveredBlock49Block100Value1 := recoveredBlock49Block100Arg1.
    recoveredBlock49Block100Value2 := (recoveredBlock49Block100Value0) at: (recoveredBlock49Block100Value1) put: (nil).
    recoveredBlock49Block100Value2
].
            recoveredBlock49PC := 113.
        ].
        recoveredBlock49Step = 113 ifTrue: [
            (recoveredBlock49Stack1) from: (recoveredBlock49Stack2) to: (recoveredBlock49Stack3) do: (recoveredBlock49Stack4).
            recoveredBlock49PC := 116.
        ].
        recoveredBlock49Step = 116 ifTrue: [
            recoveredBlock49Stack1 := elementCount.
            recoveredBlock49PC := 118.
        ].
        recoveredBlock49Step = 118 ifTrue: [
            recoveredBlock49Stack2 := recoveredLocal1.
            recoveredBlock49PC := 121.
        ].
        recoveredBlock49Step = 121 ifTrue: [
            recoveredBlock49Stack1 := (recoveredBlock49Stack1) - (recoveredBlock49Stack2).
            recoveredBlock49PC := 122.
        ].
        recoveredBlock49Step = 122 ifTrue: [
            recoveredBlock49Stack2 := recoveredBlock49Stack1.
            recoveredBlock49PC := 123.
        ].
        recoveredBlock49Step = 123 ifTrue: [
            elementCount := recoveredBlock49Stack2.
            recoveredBlock49PC := 125.
        ].
        recoveredBlock49Step = 125 ifTrue: [
            recoveredBlock49Stack2 := 0.
            recoveredBlock49PC := 127.
        ].
        recoveredBlock49Step = 127 ifTrue: [
            (recoveredBlock49Stack1 ~~ recoveredBlock49Stack2) ifTrue: [recoveredBlock49PC := 142] ifFalse: [recoveredBlock49PC := 130].
        ].
        recoveredBlock49Step = 130 ifTrue: [
            recoveredBlock49Stack1 := self.
            recoveredBlock49PC := 131.
        ].
        recoveredBlock49Step = 131 ifTrue: [
            recoveredBlock49Stack2 := self.
            recoveredBlock49PC := 132.
        ].
        recoveredBlock49Step = 132 ifTrue: [
            recoveredBlock49Stack2 := (recoveredBlock49Stack2) class.
            recoveredBlock49PC := 134.
        ].
        recoveredBlock49Step = 134 ifTrue: [
            recoveredBlock49Stack2 := (recoveredBlock49Stack2) minimumSize.
            recoveredBlock49PC := 136.
        ].
        recoveredBlock49Step = 136 ifTrue: [
            (recoveredBlock49Stack1) initialize: (recoveredBlock49Stack2).
            recoveredBlock49PC := 138.
        ].
        recoveredBlock49Step = 138 ifTrue: [
            recoveredBlock49PC := 150.
        ].
        recoveredBlock49Step = 142 ifTrue: [
            recoveredBlock49Stack1 := self.
            recoveredBlock49PC := 143.
        ].
        recoveredBlock49Step = 143 ifTrue: [
            recoveredBlock49Stack2 := elementCount.
            recoveredBlock49PC := 145.
        ].
        recoveredBlock49Step = 145 ifTrue: [
            recoveredBlock49Stack3 := elementCount.
            recoveredBlock49PC := 147.
        ].
        recoveredBlock49Step = 147 ifTrue: [
            recoveredBlock49Stack2 := (recoveredBlock49Stack2) + (recoveredBlock49Stack3).
            recoveredBlock49PC := 148.
        ].
        recoveredBlock49Step = 148 ifTrue: [
            (recoveredBlock49Stack1) rehash: (recoveredBlock49Stack2).
            recoveredBlock49PC := 150.
        ].
        recoveredBlock49Step = 150 ifTrue: [
            recoveredBlock49Stack1 := ExCLDTObjectNotFound.
            recoveredBlock49PC := 152.
        ].
        recoveredBlock49Step = 152 ifTrue: [
            (recoveredBlock49Stack1) signal.
            recoveredBlock49PC := 154.
        ].
        recoveredBlock49Step = 154 ifTrue: [
            recoveredBlock49Stack1 := recoveredBlock49Local1.
            recoveredBlock49PC := 155.
        ].
        recoveredBlock49Step = 155 ifTrue: [
            recoveredBlock49Stack2 := equalMethod.
            recoveredBlock49PC := 157.
        ].
        recoveredBlock49Step = 157 ifTrue: [
            recoveredBlock49Stack3 := recoveredBlock49Arg1.
            recoveredBlock49PC := 158.
        ].
        recoveredBlock49Step = 158 ifTrue: [
            recoveredBlock49Stack1 := (recoveredBlock49Stack1) perform: (recoveredBlock49Stack2) with: (recoveredBlock49Stack3).
            recoveredBlock49PC := 160.
        ].
        recoveredBlock49Step = 160 ifTrue: [
            (recoveredBlock49Stack1) ifTrue: [recoveredBlock49PC := 162] ifFalse: [recoveredBlock49PC := 66].
        ].
        recoveredBlock49Step = 162 ifTrue: [
            recoveredBlock49Stack1 := elements.
            recoveredBlock49PC := 164.
        ].
        recoveredBlock49Step = 164 ifTrue: [
            recoveredBlock49Stack2 := recoveredBlock49Local2.
            recoveredBlock49PC := 165.
        ].
        recoveredBlock49Step = 165 ifTrue: [
            recoveredBlock49Stack3 := recoveredLocal3.
            recoveredBlock49PC := 168.
        ].
        recoveredBlock49Step = 168 ifTrue: [
            (recoveredBlock49Stack1) at: (recoveredBlock49Stack2) put: (recoveredBlock49Stack3).
            recoveredBlock49PC := 170.
        ].
        recoveredBlock49Step = 170 ifTrue: [
            recoveredBlock49Stack1 := recoveredLocal2.
            recoveredBlock49PC := 173.
        ].
        recoveredBlock49Step = 173 ifTrue: [
            recoveredBlock49Stack2 := recoveredLocal1.
            recoveredBlock49PC := 176.
        ].
        recoveredBlock49Step = 176 ifTrue: [
            recoveredBlock49Stack2 := (recoveredBlock49Stack2) + (1).
            recoveredBlock49PC := 177.
        ].
        recoveredBlock49Step = 177 ifTrue: [
            recoveredBlock49Stack3 := recoveredBlock49Stack2.
            recoveredBlock49PC := 178.
        ].
        recoveredBlock49Step = 178 ifTrue: [
            recoveredLocal1 := recoveredBlock49Stack3.
            recoveredBlock49PC := 181.
        ].
        recoveredBlock49Step = 181 ifTrue: [
            recoveredBlock49Stack3 := recoveredBlock49Local2.
            recoveredBlock49PC := 182.
        ].
        recoveredBlock49Step = 182 ifTrue: [
            recoveredBlock49Stack1 := (recoveredBlock49Stack1) at: (recoveredBlock49Stack2) put: (recoveredBlock49Stack3).
            recoveredBlock49PC := 184.
        ].
        recoveredBlock49Step = 184 ifTrue: [
            recoveredBlock49Result := recoveredBlock49Stack1.
            recoveredBlock49Done := true.
        ].
    ].
    recoveredBlock49Result
].
            recoveredPC := 185.
        ].
        recoveredStep = 185 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 187.
        ].
        recoveredStep = 187 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 190.
        ].
        recoveredStep = 190 ifTrue: [
            recoveredStack2 := 1.
            recoveredPC := 192.
        ].
        recoveredStep = 192 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 195.
        ].
        recoveredStep = 195 ifTrue: [
            recoveredStack4 := [:recoveredBlock195Arg1 | 
    | recoveredBlock195Value0 recoveredBlock195Value1 recoveredBlock195Value2 |
    recoveredBlock195Value0 := elements.
    recoveredBlock195Value1 := recoveredBlock195Arg1.
    recoveredBlock195Value2 := (recoveredBlock195Value0) at: (recoveredBlock195Value1) put: (nil).
    recoveredBlock195Value2
].
            recoveredPC := 209.
        ].
        recoveredStep = 209 ifTrue: [
            (recoveredStack1) from: (recoveredStack2) to: (recoveredStack3) do: (recoveredStack4).
            recoveredPC := 212.
        ].
        recoveredStep = 212 ifTrue: [
            recoveredStack1 := elementCount.
            recoveredPC := 214.
        ].
        recoveredStep = 214 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 217.
        ].
        recoveredStep = 217 ifTrue: [
            recoveredStack1 := (recoveredStack1) - (recoveredStack2).
            recoveredPC := 218.
        ].
        recoveredStep = 218 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 219.
        ].
        recoveredStep = 219 ifTrue: [
            elementCount := recoveredStack2.
            recoveredPC := 221.
        ].
        recoveredStep = 221 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 223.
        ].
        recoveredStep = 223 ifTrue: [
            (recoveredStack1 ~~ recoveredStack2) ifTrue: [recoveredPC := 238] ifFalse: [recoveredPC := 226].
        ].
        recoveredStep = 226 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 227.
        ].
        recoveredStep = 227 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 228.
        ].
        recoveredStep = 228 ifTrue: [
            recoveredStack2 := (recoveredStack2) class.
            recoveredPC := 230.
        ].
        recoveredStep = 230 ifTrue: [
            recoveredStack2 := (recoveredStack2) minimumSize.
            recoveredPC := 232.
        ].
        recoveredStep = 232 ifTrue: [
            (recoveredStack1) initialize: (recoveredStack2).
            recoveredPC := 234.
        ].
        recoveredStep = 234 ifTrue: [
            recoveredPC := 246.
        ].
        recoveredStep = 238 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 239.
        ].
        recoveredStep = 239 ifTrue: [
            recoveredStack2 := elementCount.
            recoveredPC := 241.
        ].
        recoveredStep = 241 ifTrue: [
            recoveredStack3 := elementCount.
            recoveredPC := 243.
        ].
        recoveredStep = 243 ifTrue: [
            recoveredStack2 := (recoveredStack2) + (recoveredStack3).
            recoveredPC := 244.
        ].
        recoveredStep = 244 ifTrue: [
            (recoveredStack1) rehash: (recoveredStack2).
            recoveredPC := 246.
        ].
        recoveredStep = 246 ifTrue: [
            recoveredPC := 320.
        ].
        recoveredStep = 250 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 253.
        ].
        recoveredStep = 253 ifTrue: [
            recoveredStack2 := [:recoveredBlock253Arg1 | 
    | recoveredBlock253Local1 recoveredBlock253Local2 recoveredBlock253Stack0 recoveredBlock253Stack1 recoveredBlock253Stack2 recoveredBlock253Stack3 recoveredBlock253Stack4 recoveredBlock253PC recoveredBlock253Step recoveredBlock253Done recoveredBlock253Result |
    recoveredBlock253Stack0 := self.
    recoveredBlock253PC := 260.
    recoveredBlock253Done := false.
    [recoveredBlock253Done not] whileTrue: [
        recoveredBlock253Step := recoveredBlock253PC.
        recoveredBlock253Step = 260 ifTrue: [
            recoveredBlock253Stack1 := recoveredBlock253Arg1.
            recoveredBlock253PC := 261.
        ].
        recoveredBlock253Step = 261 ifTrue: [
            recoveredBlock253Stack2 := hashMethod.
            recoveredBlock253PC := 263.
        ].
        recoveredBlock253Step = 263 ifTrue: [
            recoveredBlock253Stack1 := (recoveredBlock253Stack1) perform: (recoveredBlock253Stack2).
            recoveredBlock253PC := 265.
        ].
        recoveredBlock253Step = 265 ifTrue: [
            recoveredBlock253Stack2 := recoveredLocal4.
            recoveredBlock253PC := 268.
        ].
        recoveredBlock253Step = 268 ifTrue: [
            recoveredBlock253Stack1 := (recoveredBlock253Stack1) \\ (recoveredBlock253Stack2).
            recoveredBlock253PC := 269.
        ].
        recoveredBlock253Step = 269 ifTrue: [
            recoveredBlock253Local2 := recoveredBlock253Stack1.
            recoveredBlock253PC := 270.
        ].
        recoveredBlock253Step = 270 ifTrue: [
            recoveredBlock253Stack1 := recoveredBlock253Local2.
            recoveredBlock253PC := 271.
        ].
        recoveredBlock253Step = 271 ifTrue: [
            recoveredBlock253Stack1 := (recoveredBlock253Stack1) + (1).
            recoveredBlock253PC := 272.
        ].
        recoveredBlock253Step = 272 ifTrue: [
            recoveredBlock253Stack2 := recoveredBlock253Stack1.
            recoveredBlock253PC := 273.
        ].
        recoveredBlock253Step = 273 ifTrue: [
            recoveredBlock253Local2 := recoveredBlock253Stack2.
            recoveredBlock253PC := 274.
        ].
        recoveredBlock253Step = 274 ifTrue: [
            recoveredBlock253Stack2 := recoveredLocal4.
            recoveredBlock253PC := 277.
        ].
        recoveredBlock253Step = 277 ifTrue: [
            recoveredBlock253Stack1 := (recoveredBlock253Stack1) > (recoveredBlock253Stack2).
            recoveredBlock253PC := 278.
        ].
        recoveredBlock253Step = 278 ifTrue: [
            (recoveredBlock253Stack1) ifTrue: [recoveredBlock253PC := 282] ifFalse: [recoveredBlock253PC := 285].
        ].
        recoveredBlock253Step = 282 ifTrue: [
            recoveredBlock253Stack1 := 1.
            recoveredBlock253PC := 284.
        ].
        recoveredBlock253Step = 284 ifTrue: [
            recoveredBlock253Local2 := recoveredBlock253Stack1.
            recoveredBlock253PC := 285.
        ].
        recoveredBlock253Step = 285 ifTrue: [
            recoveredBlock253Stack1 := elements.
            recoveredBlock253PC := 287.
        ].
        recoveredBlock253Step = 287 ifTrue: [
            recoveredBlock253Stack2 := recoveredBlock253Local2.
            recoveredBlock253PC := 288.
        ].
        recoveredBlock253Step = 288 ifTrue: [
            recoveredBlock253Stack1 := (recoveredBlock253Stack1) at: (recoveredBlock253Stack2).
            recoveredBlock253PC := 290.
        ].
        recoveredBlock253Step = 290 ifTrue: [
            recoveredBlock253Stack2 := recoveredBlock253Stack1.
            recoveredBlock253PC := 291.
        ].
        recoveredBlock253Step = 291 ifTrue: [
            recoveredBlock253Local1 := recoveredBlock253Stack2.
            recoveredBlock253PC := 292.
        ].
        recoveredBlock253Step = 292 ifTrue: [
            (recoveredBlock253Stack1 ~~ nil) ifTrue: [recoveredBlock253PC := 300] ifFalse: [recoveredBlock253PC := 296].
        ].
        recoveredBlock253Step = 296 ifTrue: [
            recoveredBlock253Stack1 := ExCLDTObjectNotFound.
            recoveredBlock253PC := 298.
        ].
        recoveredBlock253Step = 298 ifTrue: [
            (recoveredBlock253Stack1) signal.
            recoveredBlock253PC := 300.
        ].
        recoveredBlock253Step = 300 ifTrue: [
            recoveredBlock253Stack1 := recoveredBlock253Local1.
            recoveredBlock253PC := 301.
        ].
        recoveredBlock253Step = 301 ifTrue: [
            recoveredBlock253Stack2 := equalMethod.
            recoveredBlock253PC := 303.
        ].
        recoveredBlock253Step = 303 ifTrue: [
            recoveredBlock253Stack3 := recoveredBlock253Arg1.
            recoveredBlock253PC := 304.
        ].
        recoveredBlock253Step = 304 ifTrue: [
            recoveredBlock253Stack1 := (recoveredBlock253Stack1) perform: (recoveredBlock253Stack2) with: (recoveredBlock253Stack3).
            recoveredBlock253PC := 306.
        ].
        recoveredBlock253Step = 306 ifTrue: [
            (recoveredBlock253Stack1) ifTrue: [recoveredBlock253PC := 308] ifFalse: [recoveredBlock253PC := 270].
        ].
        recoveredBlock253Step = 308 ifTrue: [
            recoveredBlock253Stack1 := recoveredBlock253Local2.
            recoveredBlock253PC := 309.
        ].
        recoveredBlock253Step = 309 ifTrue: [
            (recoveredBlock253Stack0) rehashTo: (recoveredBlock253Stack1).
            recoveredBlock253PC := 311.
        ].
        recoveredBlock253Step = 311 ifTrue: [
            recoveredBlock253Stack0 := elementCount.
            recoveredBlock253PC := 313.
        ].
        recoveredBlock253Step = 313 ifTrue: [
            recoveredBlock253Stack0 := (recoveredBlock253Stack0) + (-1).
            recoveredBlock253PC := 314.
        ].
        recoveredBlock253Step = 314 ifTrue: [
            recoveredBlock253Stack1 := recoveredBlock253Stack0.
            recoveredBlock253PC := 315.
        ].
        recoveredBlock253Step = 315 ifTrue: [
            elementCount := recoveredBlock253Stack1.
            recoveredBlock253PC := 317.
        ].
        recoveredBlock253Step = 317 ifTrue: [
            recoveredBlock253Result := recoveredBlock253Stack0.
            recoveredBlock253Done := true.
        ].
    ].
    recoveredBlock253Result
].
            recoveredPC := 318.
        ].
        recoveredStep = 318 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 320.
        ].
        recoveredStep = 320 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 323.
        ].
        recoveredStep = 323 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

