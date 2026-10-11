"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x200004c8; bytecode file offset 0x8ffcfc"
!BinaryHexRecordBigEndian methodsFor: 'recovered'!
asBigEndian
    ^self
! !

"ASDBase.ic method 0x200127ec; bytecode file offset 0x912098"
!BinaryHexRecordBigEndian methodsFor: 'recovered'!
EndianBuffer
    | recoveredValue0 |
    recoveredValue0 := EndianBuffer.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2003b7e0; bytecode file offset 0x938608"
!BinaryHexRecordBigEndian methodsFor: 'recovered'!
uint32At: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) uint32AtBigEndian: (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x200a02dc; bytecode file offset 0x99cbd8"
!BinaryHexRecordBigEndian methodsFor: 'recovered'!
hexSize
    | recoveredValue0 |
    recoveredValue0 := super uint32At: (1).
    ^recoveredValue0
! !

"ASDBase.ic method 0x200a0448; bytecode file offset 0x99cd04"
!BinaryHexRecordBigEndian methodsFor: 'recovered'!
hexAddress
    | recoveredValue0 |
    recoveredValue0 := super uint32At: (5).
    ^recoveredValue0
! !

"ASDBase.ic method 0x200d92e0; bytecode file offset 0x9d5ba0"
!BinaryHexRecordBigEndian methodsFor: 'recovered'!
uint32AtBigEndian: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    (self) swap4At: (recoveredValue0).
    recoveredValue1 := (self) EndianBuffer.
    recoveredValue2 := (recoveredValue1) uint32At: (0).
    ^recoveredValue2
! !

"ASDBase.ic method 0x20110e6c; bytecode file offset 0xa0d72c"
!BinaryHexRecordBigEndian methodsFor: 'recovered'!
uint32AtbigEndian: recoveredArg1 put: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) EndianBuffer.
    recoveredValue1 := recoveredArg2.
    (recoveredValue0) uint32At: (0) put: (recoveredValue1).
    recoveredValue2 := recoveredArg1.
    (self) swap4In: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x20176ee4; bytecode file offset 0xa737a0"
!BinaryHexRecordBigEndian methodsFor: 'recovered'!
readUint32At: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) size.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := 16.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack0 := (recoveredStack0) > (recoveredStack1).
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 19].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := 16.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (recoveredStack2).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := (recoveredStack0) uint32AtBigEndian: (recoveredStack1).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := -1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201cc474; bytecode file offset 0xac8d34"
!BinaryHexRecordBigEndian methodsFor: 'recovered'!
swap2In: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) + (2).
    recoveredValue2 := (self) EndianBuffer.
    recoveredValue3 := (recoveredValue2) at: (1).
    (self) at: (recoveredValue1) put: (recoveredValue3).
    recoveredValue4 := recoveredArg1.
    recoveredValue5 := (recoveredValue4) + (1).
    recoveredValue6 := (self) EndianBuffer.
    recoveredValue7 := (recoveredValue6) at: (2).
    (self) at: (recoveredValue5) put: (recoveredValue7).
    ^self
! !

"ASDBase.ic method 0x201cd8e8; bytecode file offset 0xaca1a8"
!BinaryHexRecordBigEndian methodsFor: 'recovered'!
swap2At: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := (self) EndianBuffer.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue1) + (2).
    recoveredValue3 := (self) at: (recoveredValue2).
    (recoveredValue0) at: (1) put: (recoveredValue3).
    recoveredValue4 := (self) EndianBuffer.
    recoveredValue5 := recoveredArg1.
    recoveredValue6 := (recoveredValue5) + (1).
    recoveredValue7 := (self) at: (recoveredValue6).
    (recoveredValue4) at: (2) put: (recoveredValue7).
    ^self
! !

"ASDBase.ic method 0x202e2560; bytecode file offset 0xbdee20"
!BinaryHexRecordBigEndian methodsFor: 'recovered'!
swap4In: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) + (4).
    recoveredValue2 := (self) EndianBuffer.
    recoveredValue3 := (recoveredValue2) at: (1).
    (self) at: (recoveredValue1) put: (recoveredValue3).
    recoveredValue4 := recoveredArg1.
    recoveredValue5 := (recoveredValue4) + (3).
    recoveredValue6 := (self) EndianBuffer.
    recoveredValue7 := (recoveredValue6) at: (2).
    (self) at: (recoveredValue5) put: (recoveredValue7).
    recoveredValue8 := recoveredArg1.
    recoveredValue9 := (recoveredValue8) + (2).
    recoveredValue10 := (self) EndianBuffer.
    recoveredValue11 := (recoveredValue10) at: (3).
    (self) at: (recoveredValue9) put: (recoveredValue11).
    recoveredValue12 := recoveredArg1.
    recoveredValue13 := (recoveredValue12) + (1).
    recoveredValue14 := (self) EndianBuffer.
    recoveredValue15 := (recoveredValue14) at: (4).
    (self) at: (recoveredValue13) put: (recoveredValue15).
    ^self
! !

"ASDBase.ic method 0x202e30ac; bytecode file offset 0xbdf96c"
!BinaryHexRecordBigEndian methodsFor: 'recovered'!
swap4At: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 |
    recoveredValue0 := (self) EndianBuffer.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue1) + (4).
    recoveredValue3 := (self) at: (recoveredValue2).
    (recoveredValue0) at: (1) put: (recoveredValue3).
    recoveredValue4 := (self) EndianBuffer.
    recoveredValue5 := recoveredArg1.
    recoveredValue6 := (recoveredValue5) + (3).
    recoveredValue7 := (self) at: (recoveredValue6).
    (recoveredValue4) at: (2) put: (recoveredValue7).
    recoveredValue8 := (self) EndianBuffer.
    recoveredValue9 := recoveredArg1.
    recoveredValue10 := (recoveredValue9) + (2).
    recoveredValue11 := (self) at: (recoveredValue10).
    (recoveredValue8) at: (3) put: (recoveredValue11).
    recoveredValue12 := (self) EndianBuffer.
    recoveredValue13 := recoveredArg1.
    recoveredValue14 := (recoveredValue13) + (1).
    recoveredValue15 := (self) at: (recoveredValue14).
    (recoveredValue12) at: (4) put: (recoveredValue15).
    ^self
! !

