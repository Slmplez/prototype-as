"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2001ed10; bytecode file offset 0x92209c"
!IntelHexBytesRecord class methodsFor: 'recovered'!
maxAddress
    ^65535
! !

"ASDBase.ic method 0x20071984; bytecode file offset 0x96e578"
!IntelHexBytesRecord class methodsFor: 'recovered'!
recordType
    ^0
! !

"ASDBase.ic method 0x20072b88; bytecode file offset 0x96f6d4"
!IntelHexBytesRecord class methodsFor: 'recovered'!
addressSize
    ^4
! !

"ASDBase.ic method 0x20080974; bytecode file offset 0x97d238"
!IntelHexBytesRecord class methodsFor: 'recovered'!
fixedSize
    ^75
! !

"ASDBase.ic method 0x200814e8; bytecode file offset 0x97e234"
!IntelHexBytesRecord class methodsFor: 'recovered'!
putChecksumRecordOn: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := IntelHexChecksumRecord.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) putRecordOn: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x200ac5c8; bytecode file offset 0x9a8ea4"
!IntelHexBytesRecord class methodsFor: 'recovered'!
putOffsetRecord: recoveredArg1 on: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := IntelHexLinearOffsetRecord.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := (recoveredValue0) putRecord: (recoveredValue1) on: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x200b6bc0; bytecode file offset 0x9b39ac"
!IntelHexBytesRecord class methodsFor: 'recovered'!
members
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := super members.
    recoveredValue1 := (recoveredValue0) , (#('asBinary' 'asString')).
    ^recoveredValue1
! !

"ASDBase.ic method 0x201fb94c; bytecode file offset 0xaf8210"
!IntelHexBytesRecord class methodsFor: 'recovered'!
putRecordHeader: recoveredArg1 size: recoveredArg2 on: recoveredArg3
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 |
    recoveredValue0 := recoveredArg3.
    (self) putRecordIdOn: (recoveredValue0).
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := recoveredArg3.
    (self) putHexByte: (recoveredValue1) on: (recoveredValue2).
    recoveredValue3 := recoveredArg2.
    recoveredLocal1 := recoveredValue3.
    recoveredValue4 := recoveredLocal1.
    recoveredValue5 := recoveredArg1.
    recoveredValue6 := recoveredArg3.
    recoveredValue7 := (self) putAddress: (recoveredValue5) on: (recoveredValue6).
    recoveredValue8 := (recoveredValue4) + (recoveredValue7).
    recoveredLocal1 := recoveredValue8.
    recoveredValue9 := recoveredLocal1.
    recoveredValue10 := recoveredArg3.
    recoveredValue11 := (self) putRecordTypeOn: (recoveredValue10).
    recoveredValue12 := (recoveredValue9) + (recoveredValue11).
    recoveredLocal1 := recoveredValue12.
    recoveredValue13 := recoveredLocal1.
    ^recoveredValue13
! !

"ASDBase.ic method 0x202a79a8; bytecode file offset 0xba4268"
!IntelHexBytesRecord class methodsFor: 'recovered'!
putAddress: recoveredArg1 on: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack0) putHexWord: (recoveredStack1) on: (recoveredStack2).
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := 0.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := 2.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredPC := 32.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack3 := 255.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack2 := (recoveredStack2) bitAnd: (recoveredStack3).
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (recoveredStack2).
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack2 := 8.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := (recoveredStack1) >> (recoveredStack2).
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            (recoveredStack0 isInteger) ifTrue: [(recoveredStack0 > 0) ifTrue: [recoveredStack0 := recoveredStack0 - 1. recoveredPC := 18] ifFalse: [recoveredPC := 42]] ifFalse: [recoveredPC := 35].
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack0 := (recoveredStack0) + (-1).
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack1 := (recoveredStack1) >= (recoveredStack2).
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 42].
        ].
        recoveredStep = 42 ifTrue: [
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

