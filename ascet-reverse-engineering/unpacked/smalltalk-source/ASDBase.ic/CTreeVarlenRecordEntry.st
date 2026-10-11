"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2004b258; bytecode file offset 0x947d20"
!CTreeVarlenRecordEntry methodsFor: 'recovered'!
totalSize
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (2).
    ^recoveredValue0
! !

"ASDBase.ic method 0x2004c298; bytecode file offset 0x948b80"
!CTreeVarlenRecordEntry methodsFor: 'recovered'!
usedSize
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (6).
    ^recoveredValue0
! !

"ASDBase.ic method 0x20093f64; bytecode file offset 0x990828"
!CTreeVarlenRecordEntry methodsFor: 'recovered'!
usedSize: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) uint32At: (6) put: (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x200a0248; bytecode file offset 0x99cb14"
!CTreeVarlenRecordEntry methodsFor: 'recovered'!
isActRec
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) uint16At: (0).
    recoveredValue1 := vactFlag.
    recoveredValue2 := (recoveredValue0) = (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x200a0258; bytecode file offset 0x99cb14"
!CTreeVarlenRecordEntry methodsFor: 'recovered'!
isDeleted
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) uint16At: (0).
    recoveredValue1 := vdelFlag.
    recoveredValue2 := (recoveredValue0) = (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x2017a55c; bytecode file offset 0xa76e24"
!CTreeVarlenRecordEntry methodsFor: 'recovered'!
record
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := CTreeSearchObjectRecord.
    recoveredValue1 := (recoveredValue0) create.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := (self) class.
    recoveredValue3 := (recoveredValue2) fixedSize.
    recoveredValue4 := (recoveredValue3) + (-1).
    recoveredValue5 := recoveredLocal1.
    (self) memcpyFrom: (10) to: (recoveredValue4) into: (recoveredValue5) startingAt: (0).
    recoveredValue6 := recoveredLocal1.
    ^recoveredValue6
! !

"ASDBase.ic method 0x201e3240; bytecode file offset 0xadfb0c"
!CTreeVarlenRecordEntry methodsFor: 'recovered'!
unDelete
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack0 := (recoveredStack0) uint16At: (recoveredStack1).
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := vdelFlag.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 21].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := vactFlag.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            (recoveredStack0) uint16At: (recoveredStack1) put: (recoveredStack2).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := (recoveredStack1) totalSize.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            (recoveredStack0) usedSize: (recoveredStack1).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20222954; bytecode file offset 0xb1f220"
!CTreeVarlenRecordEntry methodsFor: 'recovered'!
completeRecord
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 |
    recoveredValue0 := CTreeSearchObjectRecord.
    recoveredValue1 := (self) record.
    recoveredValue2 := (recoveredValue1) blobSize.
    recoveredValue3 := CTreeSearchObjectRecord.
    recoveredValue4 := (recoveredValue3) fixedSize.
    recoveredValue5 := (recoveredValue2) + (recoveredValue4).
    recoveredValue6 := recoveredValue5.
    recoveredLocal1 := recoveredValue6.
    recoveredValue7 := (recoveredValue0) new: (recoveredValue5).
    recoveredLocal2 := recoveredValue7.
    recoveredValue8 := recoveredLocal1.
    recoveredValue9 := (recoveredValue8) + (10).
    recoveredValue10 := (recoveredValue9) + (-1).
    recoveredValue11 := recoveredLocal2.
    (self) memcpyFrom: (10) to: (recoveredValue10) into: (recoveredValue11) startingAt: (0).
    recoveredValue12 := recoveredLocal2.
    ^recoveredValue12
! !

"ASDBase.ic method 0x202283f0; bytecode file offset 0xb24cb4"
!CTreeVarlenRecordEntry methodsFor: 'recovered'!
useableRecord: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) isActRec.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 8] ifFalse: [recoveredPC := 24].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) totalSize.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) - (recoveredStack1).
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := (recoveredStack0) > (recoveredStack1).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 20].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 20 ifTrue: [
            recoveredPC := 32.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := (recoveredStack0) isDeleted.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 32] ifFalse: [recoveredPC := 30].
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := true.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2024eea4; bytecode file offset 0xb4b768"
!CTreeVarlenRecordEntry methodsFor: 'recovered'!
recmrk
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) uint16At: (0).
    recoveredLocal1 := recoveredValue0.
    recoveredValue1 := CTreeConstants.
    recoveredValue2 := [:recoveredBlock12Arg1 :recoveredBlock12Arg2 | 
    | recoveredBlock12Stack0 recoveredBlock12Stack1 recoveredBlock12Stack2 recoveredBlock12Stack3 recoveredBlock12Stack4 recoveredBlock12PC recoveredBlock12Step recoveredBlock12Done recoveredBlock12Result |
    recoveredBlock12Stack0 := self.
    recoveredBlock12PC := 18.
    recoveredBlock12Done := false.
    [recoveredBlock12Done not] whileTrue: [
        recoveredBlock12Step := recoveredBlock12PC.
        recoveredBlock12Step = 18 ifTrue: [
            recoveredBlock12Stack1 := nil.
            recoveredBlock12PC := 19.
        ].
        recoveredBlock12Step = 19 ifTrue: [
            recoveredBlock12Stack2 := recoveredLocal1.
            recoveredBlock12PC := 22.
        ].
        recoveredBlock12Step = 22 ifTrue: [
            recoveredBlock12Stack3 := recoveredBlock12Arg2.
            recoveredBlock12PC := 23.
        ].
        recoveredBlock12Step = 23 ifTrue: [
            recoveredBlock12Stack2 := (recoveredBlock12Stack2) = (recoveredBlock12Stack3).
            recoveredBlock12PC := 24.
        ].
        recoveredBlock12Step = 24 ifTrue: [
            (recoveredBlock12Stack2) ifTrue: [recoveredBlock12PC := 28] ifFalse: [recoveredBlock12PC := 31].
        ].
        recoveredBlock12Step = 28 ifTrue: [
            recoveredBlock12PC := 29.
        ].
        recoveredBlock12Step = 29 ifTrue: [
            recoveredBlock12Stack1 := recoveredBlock12Arg1.
            recoveredBlock12PC := 30.
        ].
        recoveredBlock12Step = 30 ifTrue: [
            ^recoveredBlock12Stack1
        ].
        recoveredBlock12Step = 31 ifTrue: [
            recoveredBlock12Result := recoveredBlock12Stack1.
            recoveredBlock12Done := true.
        ].
    ].
    recoveredBlock12Result
].
    (recoveredValue1) keysAndValuesDo: (recoveredValue2).
    ^'---'
! !

