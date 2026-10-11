"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2003cce8; bytecode file offset 0x93bf94"
!DB64BitItem methodsFor: 'recovered'!
createImplType
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := RBInt32Unsigned.
    recoveredValue1 := (recoveredValue0) createDefault.
    ^recoveredValue1
! !

"ASDBase.ic method 0x200bad44; bytecode file offset 0x9b7630"
!DB64BitItem methodsFor: 'recovered'!
getItemValueFrom: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := offset.
    recoveredValue2 := (recoveredValue0) uint64At: (recoveredValue1).
    recoveredValue3 := bitIndex.
    recoveredValue4 := (recoveredValue2) bitAt: (recoveredValue3).
    ^recoveredValue4
! !

"ASDBase.ic method 0x200fcf14; bytecode file offset 0x9f9800"
!DB64BitItem methodsFor: 'recovered'!
getItemFrom: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := offset.
    recoveredValue2 := (recoveredValue0) uint64At: (recoveredValue1).
    recoveredValue3 := bitIndex.
    recoveredValue4 := (recoveredValue2) bitAt: (recoveredValue3).
    recoveredValue5 := (recoveredValue4) = (1).
    ^recoveredValue5
! !

"ASDBase.ic method 0x2019fa4c; bytecode file offset 0xa9c308"
!DB64BitItem methodsFor: 'recovered'!
asNextSmallerItem
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := bitIndex.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := 32.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) <= (recoveredStack2).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 24].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := DB32BitItem.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := offset.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack3 := bitIndex.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack4 := name.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := (recoveredStack1) create: (recoveredStack2) bitIndex: (recoveredStack3) name: (recoveredStack4).
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 24 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2022d6e8; bytecode file offset 0xb29fdc"
!DB64BitItem methodsFor: 'recovered'!
putItemBool: recoveredArg1 in: recoveredArg2
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack2 := offset.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) uint64At: (recoveredStack2).
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 22].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := bitIndex.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := (recoveredStack1) setBit: (recoveredStack2).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredPC := 27.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack2 := bitIndex.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := (recoveredStack1) clearBit: (recoveredStack2).
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack2 := offset.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            (recoveredStack1) uint64At: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2034e7b8; bytecode file offset 0xc4b080"
!DB64BitItem methodsFor: 'recovered'!
putItemArray: recoveredArg1 in: recoveredArg2
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := recoveredArg2.
    recoveredValue1 := offset.
    recoveredValue2 := (recoveredValue0) uint64At: (recoveredValue1).
    recoveredLocal1 := recoveredValue2.
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := [:recoveredBlock16Arg1 | 
    | recoveredBlock16Stack0 recoveredBlock16Stack1 recoveredBlock16Stack2 recoveredBlock16Stack3 recoveredBlock16PC recoveredBlock16Step recoveredBlock16Done recoveredBlock16Result |
    recoveredBlock16Stack0 := self.
    recoveredBlock16PC := 22.
    recoveredBlock16Done := false.
    [recoveredBlock16Done not] whileTrue: [
        recoveredBlock16Step := recoveredBlock16PC.
        recoveredBlock16Step = 22 ifTrue: [
            recoveredBlock16Stack1 := recoveredBlock16Arg1.
            recoveredBlock16PC := 23.
        ].
        recoveredBlock16Step = 23 ifTrue: [
            (recoveredBlock16Stack1) ifTrue: [recoveredBlock16PC := 26] ifFalse: [recoveredBlock16PC := 40].
        ].
        recoveredBlock16Step = 26 ifTrue: [
            recoveredBlock16Stack1 := recoveredLocal1.
            recoveredBlock16PC := 29.
        ].
        recoveredBlock16Step = 29 ifTrue: [
            recoveredBlock16Stack2 := bitIndex.
            recoveredBlock16PC := 31.
        ].
        recoveredBlock16Step = 31 ifTrue: [
            recoveredBlock16Stack1 := (recoveredBlock16Stack1) setBit: (recoveredBlock16Stack2).
            recoveredBlock16PC := 32.
        ].
        recoveredBlock16Step = 32 ifTrue: [
            recoveredBlock16Stack2 := recoveredBlock16Stack1.
            recoveredBlock16PC := 33.
        ].
        recoveredBlock16Step = 33 ifTrue: [
            recoveredLocal1 := recoveredBlock16Stack2.
            recoveredBlock16PC := 36.
        ].
        recoveredBlock16Step = 36 ifTrue: [
            recoveredBlock16PC := 50.
        ].
        recoveredBlock16Step = 40 ifTrue: [
            recoveredBlock16Stack1 := recoveredLocal1.
            recoveredBlock16PC := 43.
        ].
        recoveredBlock16Step = 43 ifTrue: [
            recoveredBlock16Stack2 := bitIndex.
            recoveredBlock16PC := 45.
        ].
        recoveredBlock16Step = 45 ifTrue: [
            recoveredBlock16Stack1 := (recoveredBlock16Stack1) clearBit: (recoveredBlock16Stack2).
            recoveredBlock16PC := 46.
        ].
        recoveredBlock16Step = 46 ifTrue: [
            recoveredBlock16Stack2 := recoveredBlock16Stack1.
            recoveredBlock16PC := 47.
        ].
        recoveredBlock16Step = 47 ifTrue: [
            recoveredLocal1 := recoveredBlock16Stack2.
            recoveredBlock16PC := 50.
        ].
        recoveredBlock16Step = 50 ifTrue: [
            recoveredBlock16Result := recoveredBlock16Stack1.
            recoveredBlock16Done := true.
        ].
    ].
    recoveredBlock16Result
].
    (recoveredValue3) do: (recoveredValue4).
    recoveredValue5 := recoveredArg2.
    recoveredValue6 := offset.
    recoveredValue7 := recoveredLocal1.
    (recoveredValue5) uint64At: (recoveredValue6) put: (recoveredValue7).
    ^self
! !

"ASDBase.ic method 0x20406250; bytecode file offset 0xd02b10"
!DB64BitItem methodsFor: 'recovered'!
asDB16BitItem
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            (recoveredStack0) etasDevHalt.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack0 := bitIndex.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := 16.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := (recoveredStack0) > (recoveredStack1).
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 32].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := DB16BitItem.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := offset.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack2 := 2.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (recoveredStack2).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack2 := bitIndex.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack3 := 16.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack2 := (recoveredStack2) - (recoveredStack3).
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack3 := name.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := (recoveredStack0) create: (recoveredStack1) bitIndex: (recoveredStack2) name: (recoveredStack3).
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := bitIndex.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := 32.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := (recoveredStack0) > (recoveredStack1).
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 40] ifFalse: [recoveredPC := 58].
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack0 := DB16BitItem.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := offset.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack2 := 4.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (recoveredStack2).
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack2 := bitIndex.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack3 := 32.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack2 := (recoveredStack2) - (recoveredStack3).
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack3 := name.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack0 := (recoveredStack0) create: (recoveredStack1) bitIndex: (recoveredStack2) name: (recoveredStack3).
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack0 := bitIndex.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack1 := 48.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack0 := (recoveredStack0) > (recoveredStack1).
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 66] ifFalse: [recoveredPC := 84].
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack0 := DB16BitItem.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack1 := offset.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack2 := 6.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (recoveredStack2).
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack2 := bitIndex.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack3 := 48.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack2 := (recoveredStack2) - (recoveredStack3).
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack3 := name.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack0 := (recoveredStack0) create: (recoveredStack1) bitIndex: (recoveredStack2) name: (recoveredStack3).
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack0 := DB16BitItem.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack1 := offset.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack2 := bitIndex.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack3 := name.
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack0 := (recoveredStack0) create: (recoveredStack1) bitIndex: (recoveredStack2) name: (recoveredStack3).
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

