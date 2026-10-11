"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"cfsnls.ic method 0x20000cec; bytecode file offset 0x23f54"
!EswSubheader methodsFor: 'recovered'!
validSubheaderIndicator
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) class.
    recoveredValue1 := (recoveredValue0) validSubheaderIndicator.
    ^recoveredValue1
! !

"cfsnls.ic method 0x200018f4; bytecode file offset 0x24b2c"
!EswSubheader methodsFor: 'recovered'!
segmentSize
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) byteArrayRepresentation.
    recoveredValue1 := (recoveredValue0) eswIntelLongAt: (5).
    ^recoveredValue1
! !

"cfsnls.ic method 0x20001974; bytecode file offset 0x24bac"
!EswSubheader methodsFor: 'recovered'!
crcValue
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) byteArrayRepresentation.
    recoveredValue1 := (recoveredValue0) eswIntelLongAt: (9).
    ^recoveredValue1
! !

"cfsnls.ic method 0x20002038; bytecode file offset 0x25268"
!EswSubheader methodsFor: 'recovered'!
falseConstant
    ^0
! !

"cfsnls.ic method 0x2000209c; bytecode file offset 0x252d4"
!EswSubheader methodsFor: 'recovered'!
trueConstant
    ^1
! !

"cfsnls.ic method 0x20003aec; bytecode file offset 0x26d28"
!EswSubheader methodsFor: 'recovered'!
isLastSegment
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) byteArrayRepresentation.
    recoveredValue1 := (recoveredValue0) at: (2).
    recoveredValue2 := (self) trueConstant.
    recoveredValue3 := (recoveredValue1) == (recoveredValue2).
    ^recoveredValue3
! !

"cfsnls.ic method 0x20003ddc; bytecode file offset 0x27014"
!EswSubheader methodsFor: 'recovered'!
segmentSize: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) byteArrayRepresentation.
    recoveredValue1 := recoveredArg1.
    (recoveredValue0) eswIntelLongAt: (5) put: (recoveredValue1).
    ^self
! !

"cfsnls.ic method 0x20003df8; bytecode file offset 0x27040"
!EswSubheader methodsFor: 'recovered'!
crcValue: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) byteArrayRepresentation.
    recoveredValue1 := recoveredArg1.
    (recoveredValue0) eswIntelLongAt: (9) put: (recoveredValue1).
    ^self
! !

"cfsnls.ic method 0x200056a8; bytecode file offset 0x288ec"
!EswSubheader methodsFor: 'recovered'!
initialize: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    super initialize: (recoveredValue0).
    recoveredValue1 := (self) byteArrayRepresentation.
    recoveredValue2 := (self) validSubheaderIndicator.
    (recoveredValue1) at: (1) put: (recoveredValue2).
    ^self
! !

"cfsnls.ic method 0x20007160; bytecode file offset 0x2a3a0"
!EswSubheader methodsFor: 'recovered'!
isLastSegment: recoveredArg1
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
            (recoveredStack1) ifTrue: [recoveredPC := 8] ifFalse: [recoveredPC := 20].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := (recoveredStack1) byteArrayRepresentation.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack2 := 2.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack3 := (recoveredStack3) trueConstant.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredPC := 28.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := (recoveredStack1) byteArrayRepresentation.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack2 := 2.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack3 := (recoveredStack3) falseConstant.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"cfsnls.ic method 0x200078a8; bytecode file offset 0x2aaf0"
!EswSubheader methodsFor: 'recovered'!
initializeFromStream: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
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
            recoveredStack2 := (recoveredStack2) class.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := (recoveredStack2) standardSize.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack3 := (recoveredStack3) byteArrayRepresentation.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack4 := 1.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack1) next: (recoveredStack2) into: (recoveredStack3) startingAt: (recoveredStack4).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) byteArrayRepresentation.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := 1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := (recoveredStack1) validSubheaderIndicator.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 30] ifFalse: [recoveredPC := 28].
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"cfsnls.ic method 0x2000a618; bytecode file offset 0x2d874"
!EswSubheader methodsFor: 'recovered'!
printOn: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 |
    recoveredValue0 := recoveredArg1.
    super printOn: (recoveredValue0).
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredValue1.
    (recoveredValue2) nextPut: ($[).
    recoveredValue3 := recoveredValue1.
    (recoveredValue3) nextPutAll: ('Segment Size: ').
    recoveredValue4 := recoveredValue1.
    recoveredValue5 := (self) segmentSize.
    recoveredValue6 := (recoveredValue5) printString.
    (recoveredValue4) nextPutAll: (recoveredValue6).
    recoveredValue7 := recoveredValue1.
    (recoveredValue7) nextPutAll: (' CRC32: ').
    recoveredValue8 := recoveredValue1.
    recoveredValue9 := (self) crcValue.
    recoveredValue10 := (recoveredValue9) printString.
    (recoveredValue8) nextPutAll: (recoveredValue10).
    recoveredValue11 := recoveredValue1.
    (recoveredValue11) nextPutAll: (' , isLast:  ').
    recoveredValue12 := recoveredValue1.
    recoveredValue13 := (self) isLastSegment.
    recoveredValue14 := (recoveredValue13) printString.
    (recoveredValue12) nextPutAll: (recoveredValue14).
    (recoveredValue1) nextPut: ($]).
    ^self
! !

