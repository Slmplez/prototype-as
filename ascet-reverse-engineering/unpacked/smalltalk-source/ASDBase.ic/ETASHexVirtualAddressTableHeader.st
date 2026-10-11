"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20004a88; bytecode file offset 0x90206c"
!ETASHexVirtualAddressTableHeader methodsFor: 'recovered'!
createASAP2In: recoveredArg1
    ^self
! !

"ASDBase.ic method 0x2001ce5c; bytecode file offset 0x92209c"
!ETASHexVirtualAddressTableHeader methodsFor: 'recovered'!
bitOrderMapping
    ^#(7 6 5 4 3 2 1 0 15 14 13 12 11 10 9 8 23 22 21 20 19 18 17 16 31 30 29 28 27 26 25 24)
! !

"ASDBase.ic method 0x2003bf84; bytecode file offset 0x938838"
!ETASHexVirtualAddressTableHeader methodsFor: 'recovered'!
addressTable: recoveredArg1 arraySize: recoveredArg2
    ^0
! !

"ASDBase.ic method 0x2004942c; bytecode file offset 0x947128"
!ETASHexVirtualAddressTableHeader methodsFor: 'recovered'!
bitoffsetStart
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) wordSizeForBits.
    recoveredValue1 := (self) bitoffsetStart: (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x2004da30; bytecode file offset 0x94a30c"
!ETASHexVirtualAddressTableHeader methodsFor: 'recovered'!
alignment
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (32).
    ^recoveredValue0
! !

"ASDBase.ic method 0x2004daa8; bytecode file offset 0x94a3b4"
!ETASHexVirtualAddressTableHeader methodsFor: 'recovered'!
byteOrder
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (36).
    ^recoveredValue0
! !

"ASDBase.ic method 0x2004db58; bytecode file offset 0x94a440"
!ETASHexVirtualAddressTableHeader methodsFor: 'recovered'!
version
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (40).
    ^recoveredValue0
! !

"ASDBase.ic method 0x2004dbe4; bytecode file offset 0x94a4c0"
!ETASHexVirtualAddressTableHeader methodsFor: 'recovered'!
tabSize
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (44).
    ^recoveredValue0
! !

"ASDBase.ic method 0x2004dc48; bytecode file offset 0x94a518"
!ETASHexVirtualAddressTableHeader methodsFor: 'recovered'!
nameLength
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (48).
    ^recoveredValue0
! !

"ASDBase.ic method 0x2004dc94; bytecode file offset 0x94a570"
!ETASHexVirtualAddressTableHeader methodsFor: 'recovered'!
singleBitTest01
    | recoveredValue0 |
    recoveredValue0 := (self) uint16At: (52).
    ^recoveredValue0
! !

"ASDBase.ic method 0x2004dcac; bytecode file offset 0x94a570"
!ETASHexVirtualAddressTableHeader methodsFor: 'recovered'!
singleBitTest
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (52).
    ^recoveredValue0
! !

"ASDBase.ic method 0x2004dcb8; bytecode file offset 0x94a570"
!ETASHexVirtualAddressTableHeader methodsFor: 'recovered'!
singleBitTest0
    | recoveredValue0 |
    recoveredValue0 := (self) uint8At: (52).
    ^recoveredValue0
! !

"ASDBase.ic method 0x2004dccc; bytecode file offset 0x94a584"
!ETASHexVirtualAddressTableHeader methodsFor: 'recovered'!
singleBitTest1
    | recoveredValue0 |
    recoveredValue0 := (self) uint8At: (53).
    ^recoveredValue0
! !

"ASDBase.ic method 0x2004dce0; bytecode file offset 0x94a5b0"
!ETASHexVirtualAddressTableHeader methodsFor: 'recovered'!
singleBitTest2
    | recoveredValue0 |
    recoveredValue0 := (self) uint8At: (54).
    ^recoveredValue0
! !

"ASDBase.ic method 0x2004dcf8; bytecode file offset 0x94a5b0"
!ETASHexVirtualAddressTableHeader methodsFor: 'recovered'!
singleBitTest23
    | recoveredValue0 |
    recoveredValue0 := (self) uint16At: (54).
    ^recoveredValue0
! !

"ASDBase.ic method 0x2004dd0c; bytecode file offset 0x94a5c4"
!ETASHexVirtualAddressTableHeader methodsFor: 'recovered'!
singleBitTest3
    | recoveredValue0 |
    recoveredValue0 := (self) uint8At: (55).
    ^recoveredValue0
! !

"ASDBase.ic method 0x2004dd38; bytecode file offset 0x94a5f0"
!ETASHexVirtualAddressTableHeader methodsFor: 'recovered'!
bitFieldTest
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (56).
    ^recoveredValue0
! !

"ASDBase.ic method 0x20072010; bytecode file offset 0x96ee04"
!ETASHexVirtualAddressTableHeader methodsFor: 'recovered'!
currentVersion
    ^1
! !

"ASDBase.ic method 0x200747f8; bytecode file offset 0x9710d4"
!ETASHexVirtualAddressTableHeader methodsFor: 'recovered'!
nameOffset
    ^12
! !

"ASDBase.ic method 0x2008d930; bytecode file offset 0x98a1e8"
!ETASHexVirtualAddressTableHeader methodsFor: 'recovered'!
entrySize
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) nameLength.
    recoveredValue1 := (12) + (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x20094168; bytecode file offset 0x990a20"
!ETASHexVirtualAddressTableHeader methodsFor: 'recovered'!
tabSize: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) uint32At: (44) put: (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x200992fc; bytecode file offset 0x995bd8"
!ETASHexVirtualAddressTableHeader methodsFor: 'recovered'!
addressTable: recoveredArg1 address: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg2.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (self) addressAligned: (recoveredValue1).
    recoveredValue3 := (recoveredValue0) uint32At: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x200a0230; bytecode file offset 0x99cae8"
!ETASHexVirtualAddressTableHeader methodsFor: 'recovered'!
pattern
    | recoveredValue0 |
    recoveredValue0 := (self) copyPSZStringFrom: (0) to: (31).
    ^recoveredValue0
! !

"ASDBase.ic method 0x200a82d0; bytecode file offset 0x9a4ba0"
!ETASHexVirtualAddressTableHeader methodsFor: 'recovered'!
byteOrder: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (36) put: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x200a8354; bytecode file offset 0x9a4c18"
!ETASHexVirtualAddressTableHeader methodsFor: 'recovered'!
version: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (40) put: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x200a83cc; bytecode file offset 0x9a4c84"
!ETASHexVirtualAddressTableHeader methodsFor: 'recovered'!
nameLength: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (48) put: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x200a83e4; bytecode file offset 0x9a4c9c"
!ETASHexVirtualAddressTableHeader methodsFor: 'recovered'!
singleBitTest: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (52) put: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x200a83fc; bytecode file offset 0x9a4cb4"
!ETASHexVirtualAddressTableHeader methodsFor: 'recovered'!
bitFieldTest: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (56) put: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x200b3e68; bytecode file offset 0x9b0728"
!ETASHexVirtualAddressTableHeader methodsFor: 'recovered'!
bitOrderMSBFirst
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) singleBitTest.
    recoveredValue1 := (recoveredValue0) bitAnd: (16843009).
    recoveredValue2 := (recoveredValue1) = (0).
    ^recoveredValue2
! !

"ASDBase.ic method 0x200dbc10; bytecode file offset 0x9d84cc"
!ETASHexVirtualAddressTableHeader methodsFor: 'recovered'!
addressTable: recoveredArg1 type: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := recoveredArg2.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue1) + (4).
    recoveredValue3 := (self) addressAligned: (recoveredValue2).
    recoveredValue4 := (recoveredValue0) uint32At: (recoveredValue3).
    ^recoveredValue4
! !

"ASDBase.ic method 0x200dbc30; bytecode file offset 0x9d84ec"
!ETASHexVirtualAddressTableHeader methodsFor: 'recovered'!
addressTable: recoveredArg1 size: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := recoveredArg2.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue1) + (8).
    recoveredValue3 := (self) addressAligned: (recoveredValue2).
    recoveredValue4 := (recoveredValue0) uint32At: (recoveredValue3).
    ^recoveredValue4
! !

"ASDBase.ic method 0x201557d4; bytecode file offset 0xa52090"
!ETASHexVirtualAddressTableHeader methodsFor: 'recovered'!
bitoffsetStart: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) singleBitTest.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := 1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack0 := (recoveredStack0) >> (recoveredStack1).
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack0 ~~ recoveredStack1) ifTrue: [recoveredPC := 17] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := 0.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := (recoveredStack0) + (-1).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2018b8c0; bytecode file offset 0xa88188"
!ETASHexVirtualAddressTableHeader methodsFor: 'recovered'!
addressTable: recoveredArg1 name: recoveredArg2
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 |
    recoveredValue0 := recoveredArg2.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (self) nameOffset.
    recoveredValue3 := (recoveredValue1) + (recoveredValue2).
    recoveredValue4 := (self) addressAligned: (recoveredValue3).
    recoveredValue5 := recoveredArg2.
    recoveredValue6 := (recoveredValue5) headerSize.
    recoveredValue7 := (recoveredValue4) - (recoveredValue6).
    recoveredValue8 := recoveredValue7.
    recoveredLocal1 := recoveredValue8.
    recoveredValue9 := recoveredLocal1.
    recoveredValue10 := (self) nameLength.
    recoveredValue11 := (recoveredValue9) + (recoveredValue10).
    recoveredValue12 := (recoveredValue0) copyPSZStringFrom: (recoveredValue7) to: (recoveredValue11).
    ^recoveredValue12
! !

"ASDBase.ic method 0x201abbec; bytecode file offset 0xaa84a4"
!ETASHexVirtualAddressTableHeader methodsFor: 'recovered'!
addressAligned: recoveredArg1
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
            recoveredStack2 := self.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := (recoveredStack2) alignment.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) \\ (recoveredStack2).
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack2 := (recoveredStack2) alignment.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (recoveredStack2).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := (recoveredStack1) - (recoveredStack2).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x201ef970; bytecode file offset 0xaec238"
!ETASHexVirtualAddressTableHeader methodsFor: 'recovered'!
addressTable: recoveredArg1 entry: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 |
    recoveredValue0 := ByteArray.
    recoveredValue1 := (self) entrySize.
    recoveredValue2 := (recoveredValue0) new: (recoveredValue1).
    recoveredLocal1 := recoveredValue2.
    recoveredValue3 := recoveredArg2.
    recoveredValue4 := recoveredArg1.
    recoveredValue5 := (self) addressAligned: (recoveredValue4).
    recoveredValue6 := recoveredValue5.
    recoveredLocal2 := recoveredValue6.
    recoveredValue7 := recoveredLocal2.
    recoveredValue8 := (self) entrySize.
    recoveredValue9 := (recoveredValue7) + (recoveredValue8).
    recoveredValue10 := (recoveredValue9) + (-1).
    recoveredValue11 := recoveredLocal1.
    (recoveredValue3) memcpyFrom: (recoveredValue5) to: (recoveredValue10) into: (recoveredValue11) startingAt: (0).
    recoveredValue12 := recoveredLocal1.
    ^recoveredValue12
! !

"ASDBase.ic method 0x2023a25c; bytecode file offset 0xb36b20"
!ETASHexVirtualAddressTableHeader methodsFor: 'recovered'!
nextEntryAddress: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := (recoveredStack2) nameOffset.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (recoveredStack2).
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := (recoveredStack0) addressAligned: (recoveredStack1).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := (recoveredStack1) nameLength.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) + (recoveredStack1).
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := (recoveredStack2) nameOffset.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (recoveredStack2).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack2 := (recoveredStack2) nameLength.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (recoveredStack2).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := (recoveredStack0) addressAligned: (recoveredStack1).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 33] ifFalse: [recoveredPC := 30].
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            (recoveredStack0) etasDevHalt.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2024aa54; bytecode file offset 0xb4730c"
!ETASHexVirtualAddressTableHeader methodsFor: 'recovered'!
alignment: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := 32.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) > (recoveredStack2).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 30].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack2 := 32.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack3 := 4.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            (recoveredStack1) uint32At: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredPC := 36.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack2 := 32.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            (recoveredStack1) uint32At: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20282e48; bytecode file offset 0xb7f708"
!ETASHexVirtualAddressTableHeader methodsFor: 'recovered'!
wordSizeForBits
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) singleBitTest.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := 1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 15].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := 32.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := (recoveredStack0) singleBitTest23.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 27] ifFalse: [recoveredPC := 24].
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := 32.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := (recoveredStack0) singleBitTest01.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := 1.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 36] ifFalse: [recoveredPC := 39].
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := 16.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack0 := 8.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x202c4768; bytecode file offset 0xbc104c"
!ETASHexVirtualAddressTableHeader methodsFor: 'recovered'!
checkVersion
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) version.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) currentVersion.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack0 := (recoveredStack0) > (recoveredStack1).
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 46].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := SGMonitorStreamDummy.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := (recoveredStack0) create.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) class.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := (recoveredStack1) pattern.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack2 := ' version mismatch current ( '.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack2 := (recoveredStack2) currentVersion.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack2 := (recoveredStack2) printString.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack2 := ') , read ('.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack2 := (recoveredStack2) version.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack2 := (recoveredStack2) printString.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack2 := ') '.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            (recoveredStack0) addText: (recoveredStack1).
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x203a2664; bytecode file offset 0xc9ef38"
!ETASHexVirtualAddressTableHeader methodsFor: 'recovered'!
byteOrderBytes
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 |
    recoveredValue0 := WriteStream.
    recoveredValue1 := (recoveredValue0) on: ('').
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := (self) uint8At: (32).
    recoveredValue3 := recoveredLocal1.
    (recoveredValue2) printOn: (recoveredValue3) base: (16) showRadix: (true).
    recoveredValue4 := recoveredLocal1.
    (recoveredValue4) nextPutAll: ('	').
    recoveredValue5 := (self) uint8At: (33).
    recoveredValue6 := recoveredLocal1.
    (recoveredValue5) printOn: (recoveredValue6) base: (16) showRadix: (true).
    recoveredValue7 := recoveredLocal1.
    (recoveredValue7) nextPutAll: ('	').
    recoveredValue8 := (self) uint8At: (34).
    recoveredValue9 := recoveredLocal1.
    (recoveredValue8) printOn: (recoveredValue9) base: (16) showRadix: (true).
    recoveredValue10 := recoveredLocal1.
    (recoveredValue10) nextPutAll: ('	').
    recoveredValue11 := (self) uint8At: (35).
    recoveredValue12 := recoveredLocal1.
    (recoveredValue11) printOn: (recoveredValue12) base: (16) showRadix: (true).
    recoveredValue13 := recoveredLocal1.
    (recoveredValue13) nextPutAll: ('	').
    recoveredValue14 := recoveredLocal1.
    recoveredValue15 := (recoveredValue14) contents.
    ^recoveredValue15
! !

"ASDBase.ic method 0x2047bddc; bytecode file offset 0xd786c8"
!ETASHexVirtualAddressTableHeader methodsFor: 'recovered'!
printOn: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredValue0.
    recoveredValue2 := (self) class.
    recoveredValue3 := (recoveredValue2) name.
    (recoveredValue1) nextPutAll: (recoveredValue3).
    recoveredValue4 := recoveredValue0.
    (recoveredValue4) space.
    (recoveredValue0) nextPut: (${).
    recoveredValue5 := recoveredArg1.
    (recoveredValue5) cr.
    recoveredValue6 := (self) class.
    recoveredValue7 := (recoveredValue6) members.
    recoveredValue8 := [:recoveredBlock30Arg1 | 
    | recoveredBlock30Stack0 recoveredBlock30Stack1 recoveredBlock30Stack2 recoveredBlock30Stack3 recoveredBlock30Stack4 recoveredBlock30PC recoveredBlock30Step recoveredBlock30Done recoveredBlock30Result |
    recoveredBlock30Stack0 := self.
    recoveredBlock30PC := 36.
    recoveredBlock30Done := false.
    [recoveredBlock30Done not] whileTrue: [
        recoveredBlock30Step := recoveredBlock30PC.
        recoveredBlock30Step = 36 ifTrue: [
            recoveredBlock30Stack1 := recoveredArg1.
            recoveredBlock30PC := 39.
        ].
        recoveredBlock30Step = 39 ifTrue: [
            recoveredBlock30Stack2 := recoveredBlock30Stack1.
            recoveredBlock30PC := 40.
        ].
        recoveredBlock30Step = 40 ifTrue: [
            recoveredBlock30Stack3 := recoveredBlock30Arg1.
            recoveredBlock30PC := 41.
        ].
        recoveredBlock30Step = 41 ifTrue: [
            (recoveredBlock30Stack2) nextPutAll: (recoveredBlock30Stack3).
            recoveredBlock30Stack2 := recoveredBlock30Stack1.
            recoveredBlock30PC := 44.
        ].
        recoveredBlock30Step = 44 ifTrue: [
            recoveredBlock30Stack3 := $:.
            recoveredBlock30PC := 48.
        ].
        recoveredBlock30Step = 48 ifTrue: [
            (recoveredBlock30Stack2) nextPut: (recoveredBlock30Stack3).
            recoveredBlock30PC := 50.
        ].
        recoveredBlock30Step = 50 ifTrue: [
            (recoveredBlock30Stack1) space.
            recoveredBlock30PC := 52.
        ].
        recoveredBlock30Step = 52 ifTrue: [
            recoveredBlock30Stack1 := recoveredBlock30Arg1.
            recoveredBlock30PC := 53.
        ].
        recoveredBlock30Step = 53 ifTrue: [
            recoveredBlock30Stack0 := (recoveredBlock30Stack0) perform: (recoveredBlock30Stack1).
            recoveredBlock30PC := 55.
        ].
        recoveredBlock30Step = 55 ifTrue: [
            recoveredBlock30Stack1 := recoveredBlock30Stack0.
            recoveredBlock30PC := 56.
        ].
        recoveredBlock30Step = 56 ifTrue: [
            recoveredLocal1 := recoveredBlock30Stack1.
            recoveredBlock30PC := 59.
        ].
        recoveredBlock30Step = 59 ifTrue: [
            recoveredBlock30Stack0 := (recoveredBlock30Stack0) isString.
            recoveredBlock30PC := 61.
        ].
        recoveredBlock30Step = 61 ifTrue: [
            (recoveredBlock30Stack0) ifTrue: [recoveredBlock30PC := 64] ifFalse: [recoveredBlock30PC := 72].
        ].
        recoveredBlock30Step = 64 ifTrue: [
            recoveredBlock30Stack0 := recoveredLocal1.
            recoveredBlock30PC := 67.
        ].
        recoveredBlock30Step = 67 ifTrue: [
            recoveredBlock30Stack0 := (recoveredBlock30Stack0) trimNull.
            recoveredBlock30PC := 69.
        ].
        recoveredBlock30Step = 69 ifTrue: [
            recoveredLocal1 := recoveredBlock30Stack0.
            recoveredBlock30PC := 72.
        ].
        recoveredBlock30Step = 72 ifTrue: [
            recoveredBlock30Stack0 := recoveredLocal1.
            recoveredBlock30PC := 75.
        ].
        recoveredBlock30Step = 75 ifTrue: [
            recoveredBlock30Stack0 := (recoveredBlock30Stack0) isInteger.
            recoveredBlock30PC := 77.
        ].
        recoveredBlock30Step = 77 ifTrue: [
            (recoveredBlock30Stack0) ifTrue: [recoveredBlock30PC := 80] ifFalse: [recoveredBlock30PC := 100].
        ].
        recoveredBlock30Step = 80 ifTrue: [
            recoveredBlock30Stack0 := recoveredLocal1.
            recoveredBlock30PC := 83.
        ].
        recoveredBlock30Step = 83 ifTrue: [
            recoveredBlock30Stack1 := recoveredArg1.
            recoveredBlock30PC := 86.
        ].
        recoveredBlock30Step = 86 ifTrue: [
            recoveredBlock30Stack2 := 16.
            recoveredBlock30PC := 88.
        ].
        recoveredBlock30Step = 88 ifTrue: [
            recoveredBlock30Stack3 := true.
            recoveredBlock30PC := 89.
        ].
        recoveredBlock30Step = 89 ifTrue: [
            (recoveredBlock30Stack0) printOn: (recoveredBlock30Stack1) base: (recoveredBlock30Stack2) showRadix: (recoveredBlock30Stack3).
            recoveredBlock30PC := 92.
        ].
        recoveredBlock30Step = 92 ifTrue: [
            recoveredBlock30Stack0 := recoveredArg1.
            recoveredBlock30PC := 95.
        ].
        recoveredBlock30Step = 95 ifTrue: [
            recoveredBlock30Stack1 := (Character value: 9).
            recoveredBlock30PC := 98.
        ].
        recoveredBlock30Step = 98 ifTrue: [
            (recoveredBlock30Stack0) nextPut: (recoveredBlock30Stack1).
            recoveredBlock30PC := 100.
        ].
        recoveredBlock30Step = 100 ifTrue: [
            recoveredBlock30Stack0 := recoveredArg1.
            recoveredBlock30PC := 103.
        ].
        recoveredBlock30Step = 103 ifTrue: [
            recoveredBlock30Stack1 := recoveredBlock30Stack0.
            recoveredBlock30PC := 104.
        ].
        recoveredBlock30Step = 104 ifTrue: [
            recoveredBlock30Stack2 := recoveredLocal1.
            recoveredBlock30PC := 107.
        ].
        recoveredBlock30Step = 107 ifTrue: [
            recoveredBlock30Stack2 := (recoveredBlock30Stack2) printString.
            recoveredBlock30PC := 109.
        ].
        recoveredBlock30Step = 109 ifTrue: [
            (recoveredBlock30Stack1) nextPutAll: (recoveredBlock30Stack2).
            recoveredBlock30PC := 111.
        ].
        recoveredBlock30Step = 111 ifTrue: [
            recoveredBlock30Stack0 := (recoveredBlock30Stack0) cr.
            recoveredBlock30PC := 113.
        ].
        recoveredBlock30Step = 113 ifTrue: [
            recoveredBlock30Result := recoveredBlock30Stack0.
            recoveredBlock30Done := true.
        ].
    ].
    recoveredBlock30Result
].
    (recoveredValue7) do: (recoveredValue8).
    recoveredValue9 := recoveredArg1.
    (recoveredValue9) nextPut: ($}).
    ^self
! !

"ASDBase.ic method 0x20506adc; bytecode file offset 0xe033dc"
!ETASHexVirtualAddressTableHeader methodsFor: 'recovered'!
calculateBitsAddress: recoveredArg1 type: recoveredArg2 size: recoveredArg3 in: recoveredArg4
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := $b.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 26] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := $m.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 26] ifFalse: [recoveredPC := 24].
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := recoveredArg4.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack3 := [
    | recoveredBlock32Value0 recoveredBlock32Value1 recoveredBlock32Value2 recoveredBlock32Value3 |
    recoveredBlock32Value0 := (self) bitoffsetStart.
    recoveredLocal1 := recoveredBlock32Value0.
    recoveredBlock32Value1 := OrderedCollection.
    recoveredBlock32Value2 := recoveredArg3.
    recoveredBlock32Value3 := (recoveredBlock32Value1) with: (recoveredBlock32Value2).
    recoveredBlock32Value3
].
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack4 := [:recoveredBlock49Arg1 | 
    | recoveredBlock49Local1 recoveredBlock49Stack0 recoveredBlock49Stack1 recoveredBlock49Stack2 recoveredBlock49Stack3 recoveredBlock49Stack4 recoveredBlock49Stack5 recoveredBlock49Stack6 recoveredBlock49PC recoveredBlock49Step recoveredBlock49Done recoveredBlock49Result |
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
            recoveredBlock49Stack1 := (recoveredBlock49Stack1) sum.
            recoveredBlock49PC := 58.
        ].
        recoveredBlock49Step = 58 ifTrue: [
            recoveredLocal1 := recoveredBlock49Stack1.
            recoveredBlock49PC := 61.
        ].
        recoveredBlock49Step = 61 ifTrue: [
            recoveredBlock49Stack1 := recoveredLocal1.
            recoveredBlock49PC := 64.
        ].
        recoveredBlock49Step = 64 ifTrue: [
            recoveredBlock49Stack2 := self.
            recoveredBlock49PC := 65.
        ].
        recoveredBlock49Step = 65 ifTrue: [
            recoveredBlock49Stack2 := (recoveredBlock49Stack2) wordSizeForBits.
            recoveredBlock49PC := 67.
        ].
        recoveredBlock49Step = 67 ifTrue: [
            recoveredBlock49Stack3 := recoveredBlock49Stack2.
            recoveredBlock49PC := 68.
        ].
        recoveredBlock49Step = 68 ifTrue: [
            recoveredBlock49Local1 := recoveredBlock49Stack3.
            recoveredBlock49PC := 69.
        ].
        recoveredBlock49Step = 69 ifTrue: [
            recoveredBlock49Stack1 := (recoveredBlock49Stack1) >= (recoveredBlock49Stack2).
            recoveredBlock49PC := 70.
        ].
        recoveredBlock49Step = 70 ifTrue: [
            (recoveredBlock49Stack1) ifTrue: [recoveredBlock49PC := 74] ifFalse: [recoveredBlock49PC := 111].
        ].
        recoveredBlock49Step = 74 ifTrue: [
            recoveredBlock49Stack1 := SGMonitorStreamDummy.
            recoveredBlock49PC := 76.
        ].
        recoveredBlock49Step = 76 ifTrue: [
            recoveredBlock49Stack1 := (recoveredBlock49Stack1) create.
            recoveredBlock49PC := 78.
        ].
        recoveredBlock49Step = 78 ifTrue: [
            recoveredBlock49Stack2 := 'bitoffset out of range for adr '.
            recoveredBlock49PC := 80.
        ].
        recoveredBlock49Step = 80 ifTrue: [
            recoveredBlock49Stack3 := recoveredArg1.
            recoveredBlock49PC := 83.
        ].
        recoveredBlock49Step = 83 ifTrue: [
            recoveredBlock49Stack3 := (recoveredBlock49Stack3) printString.
            recoveredBlock49PC := 85.
        ].
        recoveredBlock49Step = 85 ifTrue: [
            recoveredBlock49Stack2 := (recoveredBlock49Stack2) , (recoveredBlock49Stack3).
            recoveredBlock49PC := 87.
        ].
        recoveredBlock49Step = 87 ifTrue: [
            (recoveredBlock49Stack1) addText: (recoveredBlock49Stack2).
            recoveredBlock49PC := 89.
        ].
        recoveredBlock49Step = 89 ifTrue: [
            recoveredBlock49Stack1 := self.
            recoveredBlock49PC := 90.
        ].
        recoveredBlock49Step = 90 ifTrue: [
            recoveredBlock49Stack2 := recoveredArg1.
            recoveredBlock49PC := 93.
        ].
        recoveredBlock49Step = 93 ifTrue: [
            recoveredBlock49Stack3 := recoveredBlock49Local1.
            recoveredBlock49PC := 94.
        ].
        recoveredBlock49Step = 94 ifTrue: [
            recoveredBlock49Stack4 := 8.
            recoveredBlock49PC := 96.
        ].
        recoveredBlock49Step = 96 ifTrue: [
            recoveredBlock49Stack3 := (recoveredBlock49Stack3) // (recoveredBlock49Stack4).
            recoveredBlock49PC := 97.
        ].
        recoveredBlock49Step = 97 ifTrue: [
            recoveredBlock49Stack2 := (recoveredBlock49Stack2) + (recoveredBlock49Stack3).
            recoveredBlock49PC := 98.
        ].
        recoveredBlock49Step = 98 ifTrue: [
            recoveredBlock49Stack3 := recoveredArg2.
            recoveredBlock49PC := 101.
        ].
        recoveredBlock49Step = 101 ifTrue: [
            recoveredBlock49Stack4 := recoveredArg3.
            recoveredBlock49PC := 104.
        ].
        recoveredBlock49Step = 104 ifTrue: [
            recoveredBlock49Stack5 := recoveredArg4.
            recoveredBlock49PC := 107.
        ].
        recoveredBlock49Step = 107 ifTrue: [
            recoveredBlock49Stack1 := (recoveredBlock49Stack1) calculateBitsAddress: (recoveredBlock49Stack2) type: (recoveredBlock49Stack3) size: (recoveredBlock49Stack4) in: (recoveredBlock49Stack5).
            recoveredBlock49PC := 110.
        ].
        recoveredBlock49Step = 110 ifTrue: [
            ^recoveredBlock49Stack1
        ].
        recoveredBlock49Step = 111 ifTrue: [
            recoveredBlock49Stack1 := recoveredBlock49Arg1.
            recoveredBlock49PC := 112.
        ].
        recoveredBlock49Step = 112 ifTrue: [
            recoveredBlock49Stack2 := recoveredArg3.
            recoveredBlock49PC := 115.
        ].
        recoveredBlock49Step = 115 ifTrue: [
            (recoveredBlock49Stack1) add: (recoveredBlock49Stack2).
            recoveredBlock49PC := 117.
        ].
        recoveredBlock49Step = 117 ifTrue: [
            recoveredBlock49Stack1 := nil.
            recoveredBlock49PC := 118.
        ].
        recoveredBlock49Step = 118 ifTrue: [
            recoveredBlock49Stack2 := self.
            recoveredBlock49PC := 119.
        ].
        recoveredBlock49Step = 119 ifTrue: [
            recoveredBlock49Stack2 := (recoveredBlock49Stack2) bitoffsetStart.
            recoveredBlock49PC := 120.
        ].
        recoveredBlock49Step = 120 ifTrue: [
            recoveredBlock49Stack3 := 0.
            recoveredBlock49PC := 122.
        ].
        recoveredBlock49Step = 122 ifTrue: [
            recoveredBlock49Stack2 := (recoveredBlock49Stack2) = (recoveredBlock49Stack3).
            recoveredBlock49PC := 123.
        ].
        recoveredBlock49Step = 123 ifTrue: [
            (recoveredBlock49Stack2) ifTrue: [recoveredBlock49PC := 137] ifFalse: [recoveredBlock49PC := 126].
        ].
        recoveredBlock49Step = 126 ifTrue: [
            recoveredBlock49PC := 127.
        ].
        recoveredBlock49Step = 127 ifTrue: [
            recoveredBlock49Stack1 := recoveredBlock49Local1.
            recoveredBlock49PC := 128.
        ].
        recoveredBlock49Step = 128 ifTrue: [
            recoveredBlock49Stack2 := recoveredLocal1.
            recoveredBlock49PC := 131.
        ].
        recoveredBlock49Step = 131 ifTrue: [
            recoveredBlock49Stack1 := (recoveredBlock49Stack1) - (recoveredBlock49Stack2).
            recoveredBlock49PC := 132.
        ].
        recoveredBlock49Step = 132 ifTrue: [
            recoveredBlock49Stack1 := (recoveredBlock49Stack1) + (-1).
            recoveredBlock49PC := 133.
        ].
        recoveredBlock49Step = 133 ifTrue: [
            recoveredBlock49Stack2 := recoveredBlock49Stack1.
            recoveredBlock49PC := 134.
        ].
        recoveredBlock49Step = 134 ifTrue: [
            recoveredLocal1 := recoveredBlock49Stack2.
            recoveredBlock49PC := 137.
        ].
        recoveredBlock49Step = 137 ifTrue: [
            recoveredBlock49Result := recoveredBlock49Stack1.
            recoveredBlock49Done := true.
        ].
    ].
    recoveredBlock49Result
].
            recoveredPC := 138.
        ].
        recoveredStep = 138 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) ifAbsentPut: (recoveredStack3) ifPresent: (recoveredStack4).
            recoveredPC := 141.
        ].
        recoveredStep = 141 ifTrue: [
            recoveredStack0 := (recoveredStack0) bitOrderMSBFirst.
            recoveredPC := 143.
        ].
        recoveredStep = 143 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 169] ifFalse: [recoveredPC := 146].
        ].
        recoveredStep = 146 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 147.
        ].
        recoveredStep = 147 ifTrue: [
            recoveredStack0 := (recoveredStack0) bitOrderMapping.
            recoveredPC := 149.
        ].
        recoveredStep = 149 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 152.
        ].
        recoveredStep = 152 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (1).
            recoveredPC := 153.
        ].
        recoveredStep = 153 ifTrue: [
            recoveredStack2 := [
    | recoveredBlock153Value0 |
    recoveredBlock153Value0 := recoveredLocal1.
    recoveredBlock153Value0
].
            recoveredPC := 164.
        ].
        recoveredStep = 164 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1) ifAbsent: (recoveredStack2).
            recoveredPC := 166.
        ].
        recoveredStep = 166 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 169.
        ].
        recoveredStep = 169 ifTrue: [
            recoveredStack0 := Array.
            recoveredPC := 171.
        ].
        recoveredStep = 171 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 174.
        ].
        recoveredStep = 174 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 177.
        ].
        recoveredStep = 177 ifTrue: [
            recoveredStack0 := (recoveredStack0) with: (recoveredStack1) with: (recoveredStack2).
            recoveredPC := 179.
        ].
        recoveredStep = 179 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

