"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"lib.ic method 0x200001b0; bytecode file offset 0x3c21c"
!EmRecordEntry methodsFor: 'recovered'!
keyIndex
    | recoveredValue0 |
    recoveredValue0 := (self) startPosition.
    ^recoveredValue0
! !

"lib.ic method 0x200008f8; bytecode file offset 0x3cba0"
!EmRecordEntry methodsFor: 'recovered'!
key
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) name.
    recoveredValue1 := (recoveredValue0) asSymbol.
    ^recoveredValue1
! !

"lib.ic method 0x2000131c; bytecode file offset 0x3d664"
!EmRecordEntry methodsFor: 'recovered'!
name
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) keyIndex.
    recoveredValue1 := (self) nameAt: (recoveredValue0).
    ^recoveredValue1
! !

"lib.ic method 0x2000146c; bytecode file offset 0x3d664"
!EmRecordEntry methodsFor: 'recovered'!
keySize
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) keyIndex.
    recoveredValue1 := (self) nameSizeAt: (recoveredValue0).
    ^recoveredValue1
! !

"lib.ic method 0x2000162c; bytecode file offset 0x3d664"
!EmRecordEntry methodsFor: 'recovered'!
totalKeySize
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) keyIndex.
    recoveredValue1 := (self) totalNameSizeAt: (recoveredValue0).
    ^recoveredValue1
! !

"lib.ic method 0x200023c4; bytecode file offset 0x3e42c"
!EmRecordEntry methodsFor: 'recovered'!
startPosition
    | recoveredValue0 |
    recoveredValue0 := startPosition.
    ^recoveredValue0
! !

"lib.ic method 0x20002fb0; bytecode file offset 0x3efe8"
!EmRecordEntry methodsFor: 'recovered'!
length
    | recoveredValue0 |
    recoveredValue0 := MxEMc140.
    (self) fatalError: (recoveredValue0).
    ^self
! !

"lib.ic method 0x20003214; bytecode file offset 0x3f23c"
!EmRecordEntry methodsFor: 'recovered'!
extentOfElements
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) startPosition.
    recoveredValue1 := (self) length.
    recoveredValue2 := (recoveredValue0) + (recoveredValue1).
    recoveredValue3 := (recoveredValue2) + (-1).
    ^recoveredValue3
! !

"lib.ic method 0x20003478; bytecode file offset 0x3f4a0"
!EmRecordEntry methodsFor: 'recovered'!
key: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) keyIndex.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (self) at: (recoveredValue0) putName: (recoveredValue1).
    ^recoveredValue2
! !

"lib.ic method 0x2000483c; bytecode file offset 0x40884"
!EmRecordEntry methodsFor: 'recovered'!
startPosition: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    startPosition := recoveredValue0.
    ^self
! !

"lib.ic method 0x2000786c; bytecode file offset 0x4389c"
!EmRecordEntry methodsFor: 'recovered'!
initializeToUse: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    super initializeToUse: (recoveredValue0).
    recoveredValue1 := super startPosition.
    (self) startPosition: (recoveredValue1).
    ^self
! !

"lib.ic method 0x2000bda4; bytecode file offset 0x47ddc"
!EmRecordEntry methodsFor: 'recovered'!
keyMatches: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := (recoveredStack2) keySize.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack3 := recoveredStack2.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredLocal1 := recoveredStack3.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack3 := (recoveredStack3) size.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack2 := (recoveredStack2) = (recoveredStack3).
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 30].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack2 := (recoveredStack2) collection.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack3 := (recoveredStack3) keyIndex.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack4 := self.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack4 := (recoveredStack4) totalKeySize.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack3 := (recoveredStack3) + (recoveredStack4).
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack4 := recoveredLocal1.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack3 := (recoveredStack3) - (recoveredStack4).
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := (recoveredStack1) occursIn: (recoveredStack2) at: (recoveredStack3).
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"lib.ic method 0x2001053c; bytecode file offset 0x4c578"
!EmRecordEntry methodsFor: 'recovered'!
insertInto: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) class.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) tag.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) tag.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 34].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := 7.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := Array.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack3 := 0.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack2 := (recoveredStack2) new: (recoveredStack3).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack3 := [
    ^nil
].
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := (recoveredStack0) stopAndReport: (recoveredStack1) withParms: (recoveredStack2) exitUsing: (recoveredStack3).
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredPC := 42.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := super insertInto: (recoveredStack1).
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

