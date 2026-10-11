"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"lib.ic method 0x200001d4; bytecode file offset 0x3c21c"
!EmClassEntry methodsFor: 'recovered'!
timeStampIndex
    | recoveredValue0 |
    recoveredValue0 := (self) startPosition.
    ^recoveredValue0
! !

"lib.ic method 0x2000142c; bytecode file offset 0x3d664"
!EmClassEntry methodsFor: 'recovered'!
timeStamp
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) timeStampIndex.
    recoveredValue1 := (self) timeStampAt: (recoveredValue0).
    ^recoveredValue1
! !

"lib.ic method 0x200015fc; bytecode file offset 0x3d664"
!EmClassEntry methodsFor: 'recovered'!
indexOfOwner
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) ownerIndex.
    recoveredValue1 := (self) byteAt: (recoveredValue0).
    ^recoveredValue1
! !

"lib.ic method 0x20001d3c; bytecode file offset 0x3dd64"
!EmClassEntry methodsFor: 'recovered'!
isDeleted
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) classType.
    recoveredValue1 := (recoveredValue0) = ('Deleted').
    ^recoveredValue1
! !

"lib.ic method 0x20001e78; bytecode file offset 0x3de9c"
!EmClassEntry methodsFor: 'recovered'!
ownerIndex
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) startPosition.
    recoveredValue1 := (recoveredValue0) + (4).
    ^recoveredValue1
! !

"lib.ic method 0x20001e90; bytecode file offset 0x3deb4"
!EmClassEntry methodsFor: 'recovered'!
classTypeIndex
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) startPosition.
    recoveredValue1 := (recoveredValue0) + (5).
    ^recoveredValue1
! !

"lib.ic method 0x20001eb4; bytecode file offset 0x3ded8"
!EmClassEntry methodsFor: 'recovered'!
keyIndex
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) startPosition.
    recoveredValue1 := (recoveredValue0) + (6).
    ^recoveredValue1
! !

"lib.ic method 0x200022a4; bytecode file offset 0x3e2dc"
!EmClassEntry methodsFor: 'recovered'!
className
    | recoveredValue0 |
    recoveredValue0 := super key.
    ^recoveredValue0
! !

"lib.ic method 0x20003230; bytecode file offset 0x3f25c"
!EmClassEntry methodsFor: 'recovered'!
length
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) totalKeySize.
    recoveredValue1 := (self) class.
    recoveredValue2 := (recoveredValue1) remainingSpace.
    recoveredValue3 := (recoveredValue0) + (recoveredValue2).
    ^recoveredValue3
! !

"lib.ic method 0x20003de4; bytecode file offset 0x3feac"
!EmClassEntry methodsFor: 'recovered'!
timeStamp: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) timeStampIndex.
    recoveredValue1 := recoveredArg1.
    (self) at: (recoveredValue0) putTimeStamp: (recoveredValue1).
    ^self
! !

"lib.ic method 0x20003e24; bytecode file offset 0x3feac"
!EmClassEntry methodsFor: 'recovered'!
indexOfOwner: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) ownerIndex.
    recoveredValue1 := recoveredArg1.
    (self) at: (recoveredValue0) putByte: (recoveredValue1).
    ^self
! !

"lib.ic method 0x20005ec8; bytecode file offset 0x41efc"
!EmClassEntry methodsFor: 'recovered'!
classType: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := (self) classTypeIndex.
    recoveredValue1 := (self) class.
    recoveredValue2 := (recoveredValue1) classTypes.
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := (recoveredValue2) indexOf: (recoveredValue3).
    (self) at: (recoveredValue0) putByte: (recoveredValue4).
    ^self
! !

"lib.ic method 0x2000cadc; bytecode file offset 0x48b18"
!EmClassEntry methodsFor: 'recovered'!
classType
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := (recoveredStack1) classTypeIndex.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack0 := (recoveredStack0) byteAt: (recoveredStack1).
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := 1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := (recoveredStack2) class.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := (recoveredStack2) classTypes.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := (recoveredStack2) size.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := (recoveredStack0) between: (recoveredStack1) and: (recoveredStack2).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 30].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := (recoveredStack0) class.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := (recoveredStack0) classTypes.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1).
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredPC := 32.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := 'Unknown'.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

