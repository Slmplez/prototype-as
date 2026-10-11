"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20069360; bytecode file offset 0x966bdc"
!MDFFileId methodsFor: 'recovered'!
fileId
    | recoveredValue0 |
    recoveredValue0 := fileId.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006a694; bytecode file offset 0x967a18"
!MDFFileId methodsFor: 'recovered'!
format
    | recoveredValue0 |
    recoveredValue0 := format.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006b1e0; bytecode file offset 0x96873c"
!MDFFileId methodsFor: 'recovered'!
formatVersion
    | recoveredValue0 |
    recoveredValue0 := formatVersion.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006c8d4; bytecode file offset 0x9692b0"
!MDFFileId methodsFor: 'recovered'!
programId
    | recoveredValue0 |
    recoveredValue0 := programId.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006cfa8; bytecode file offset 0x969c04"
!MDFFileId methodsFor: 'recovered'!
byteOrder
    | recoveredValue0 |
    recoveredValue0 := byteOrder.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006d74c; bytecode file offset 0x96a390"
!MDFFileId methodsFor: 'recovered'!
floatType
    | recoveredValue0 |
    recoveredValue0 := floatType.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2009657c; bytecode file offset 0x992e58"
!MDFFileId methodsFor: 'recovered'!
getFormatVersionFrom: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) getBinaryInteger16: (recoveredValue0).
    formatVersion := recoveredValue1.
    ^self
! !

"ASDBase.ic method 0x200965f4; bytecode file offset 0x992ec4"
!MDFFileId methodsFor: 'recovered'!
getByteOrderFrom: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) getBinaryInteger16: (recoveredValue0).
    byteOrder := recoveredValue1.
    ^self
! !

"ASDBase.ic method 0x20096630; bytecode file offset 0x992ee8"
!MDFFileId methodsFor: 'recovered'!
getFloatTypeFrom: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) getBinaryInteger16: (recoveredValue0).
    floatType := recoveredValue1.
    ^self
! !

"ASDBase.ic method 0x200a8fc4; bytecode file offset 0x9a587c"
!MDFFileId methodsFor: 'recovered'!
putFormatVersionIn: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := formatVersion.
    (self) putIn: (recoveredValue0) binaryInteger16: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x200a9010; bytecode file offset 0x9a58ec"
!MDFFileId methodsFor: 'recovered'!
putByteOrderIn: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := byteOrder.
    (self) putIn: (recoveredValue0) binaryInteger16: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x200a9064; bytecode file offset 0x9a5934"
!MDFFileId methodsFor: 'recovered'!
putFloatTypeIn: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := floatType.
    (self) putIn: (recoveredValue0) binaryInteger16: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x200aa22c; bytecode file offset 0x9a6afc"
!MDFFileId methodsFor: 'recovered'!
putCheckIdIn: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) putIn: (recoveredValue0) binaryInteger16: (0).
    ^self
! !

"ASDBase.ic method 0x200aa244; bytecode file offset 0x9a6afc"
!MDFFileId methodsFor: 'recovered'!
putReservedIn: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) putIn: (recoveredValue0) binaryInteger16: (0).
    ^self
! !

"ASDBase.ic method 0x200aa2dc; bytecode file offset 0x9a6b94"
!MDFFileId methodsFor: 'recovered'!
getFileIdFrom: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) next: (8).
    fileId := recoveredValue1.
    ^self
! !

"ASDBase.ic method 0x200aa2f4; bytecode file offset 0x9a6bac"
!MDFFileId methodsFor: 'recovered'!
getFormatIdFrom: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) next: (8).
    format := recoveredValue1.
    ^self
! !

"ASDBase.ic method 0x200aa30c; bytecode file offset 0x9a6bc4"
!MDFFileId methodsFor: 'recovered'!
getProgramIdFrom: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) next: (8).
    programId := recoveredValue1.
    ^self
! !

"ASDBase.ic method 0x200e9004; bytecode file offset 0x9e58bc"
!MDFFileId methodsFor: 'recovered'!
putFileIdIn: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := fileId.
    (self) putIn: (recoveredValue0) string: (recoveredValue1) size: (8).
    ^self
! !

"ASDBase.ic method 0x200e9020; bytecode file offset 0x9e58d8"
!MDFFileId methodsFor: 'recovered'!
putFormatIdIn: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := format.
    (self) putIn: (recoveredValue0) string: (recoveredValue1) size: (8).
    ^self
! !

"ASDBase.ic method 0x200e903c; bytecode file offset 0x9e58f4"
!MDFFileId methodsFor: 'recovered'!
putProgramIdIn: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := programId.
    (self) putIn: (recoveredValue0) string: (recoveredValue1) size: (8).
    ^self
! !

"ASDBase.ic method 0x2021b830; bytecode file offset 0xb18100"
!MDFFileId methodsFor: 'recovered'!
getFrom: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) position.
    offset := recoveredValue1.
    recoveredValue2 := recoveredArg1.
    (self) getFileIdFrom: (recoveredValue2).
    recoveredValue3 := recoveredArg1.
    (self) getFormatIdFrom: (recoveredValue3).
    recoveredValue4 := recoveredArg1.
    (self) getProgramIdFrom: (recoveredValue4).
    recoveredValue5 := recoveredArg1.
    (self) getByteOrderFrom: (recoveredValue5).
    recoveredValue6 := recoveredArg1.
    (self) getFloatTypeFrom: (recoveredValue6).
    recoveredValue7 := recoveredArg1.
    (self) getFormatVersionFrom: (recoveredValue7).
    ^self
! !

"ASDBase.ic method 0x2023cd88; bytecode file offset 0xb39650"
!MDFFileId methodsFor: 'recovered'!
initializeDefault
    super initializeDefault.
    fileId := 'MDF'.
    format := '2.00'.
    formatVersion := 200.
    programId := 'ST ETASMdfRT'.
    byteOrder := 0.
    floatType := 0.
    ^self
! !

"ASDBase.ic method 0x2034ddf4; bytecode file offset 0xc4a6d8"
!MDFFileId methodsFor: 'recovered'!
putIn: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) class.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) fixedSize.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            length := recoveredStack0.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) position.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack1) putFileIdIn: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            (recoveredStack1) putFormatIdIn: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            (recoveredStack1) putProgramIdIn: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            (recoveredStack1) putByteOrderIn: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            (recoveredStack1) putFloatTypeIn: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            (recoveredStack1) putFormatVersionIn: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            (recoveredStack1) putReservedIn: (recoveredStack2).
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            (recoveredStack0) putCheckIdIn: (recoveredStack1).
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredPC := 52.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack1 := $ .
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            (recoveredStack0) nextPut: (recoveredStack1).
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack0 := (recoveredStack0) position.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack0 := (recoveredStack0) - (recoveredStack1).
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack1 := (recoveredStack1) class.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack1 := (recoveredStack1) fixedSize.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack0 := (recoveredStack0) < (recoveredStack1).
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 46] ifFalse: [recoveredPC := 62].
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

