"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20040108; bytecode file offset 0x93d278"
!DBLiteralRange methodsFor: 'recovered'!
byteSize
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := dbItem.
    recoveredValue1 := (recoveredValue0) byteSize.
    ^recoveredValue1
! !

"ASDBase.ic method 0x200401e0; bytecode file offset 0x93d278"
!DBLiteralRange methodsFor: 'recovered'!
offset
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := dbItem.
    recoveredValue1 := (recoveredValue0) offset.
    ^recoveredValue1
! !

"ASDBase.ic method 0x200401f8; bytecode file offset 0x93d278"
!DBLiteralRange methodsFor: 'recovered'!
isStructured
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := dbItem.
    recoveredValue1 := (recoveredValue0) isStructured.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20067974; bytecode file offset 0x9646f8"
!DBLiteralRange methodsFor: 'recovered'!
min
    | recoveredValue0 |
    recoveredValue0 := min.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006808c; bytecode file offset 0x965b90"
!DBLiteralRange methodsFor: 'recovered'!
max
    | recoveredValue0 |
    recoveredValue0 := max.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20081b58; bytecode file offset 0x97e554"
!DBLiteralRange methodsFor: 'recovered'!
appliedInverseToNumber: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := dbItem.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) appliedInverseToNumber: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x20081c3c; bytecode file offset 0x97e554"
!DBLiteralRange methodsFor: 'recovered'!
getPhysInterval: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := dbItem.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) getPhysInterval: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x20081c54; bytecode file offset 0x97e554"
!DBLiteralRange methodsFor: 'recovered'!
appliedToNumber: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := dbItem.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) appliedToNumber: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x20092580; bytecode file offset 0x98ef64"
!DBLiteralRange methodsFor: 'recovered'!
offset: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := dbItem.
    recoveredValue1 := recoveredArg1.
    (recoveredValue0) offset: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x200bf220; bytecode file offset 0x9bc0b4"
!DBLiteralRange methodsFor: 'recovered'!
min: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    min := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200bfeb4; bytecode file offset 0x9bd228"
!DBLiteralRange methodsFor: 'recovered'!
max: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    max := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200eec84; bytecode file offset 0x9eb540"
!DBLiteralRange methodsFor: 'recovered'!
getItemFrom: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := dbItem.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) getItemFrom: (recoveredValue1).
    recoveredLocal1 := recoveredValue2.
    recoveredValue3 := recoveredLocal1.
    (self) monitorRange: (recoveredValue3).
    recoveredValue4 := recoveredLocal1.
    ^recoveredValue4
! !

"ASDBase.ic method 0x20113a2c; bytecode file offset 0xa102e8"
!DBLiteralRange methodsFor: 'recovered'!
getItem: recoveredArg1 for: recoveredArg2
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := dbItem.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := (recoveredValue0) getItem: (recoveredValue1) for: (recoveredValue2).
    recoveredLocal1 := recoveredValue3.
    recoveredValue4 := recoveredLocal1.
    (self) monitorRange: (recoveredValue4).
    recoveredValue5 := recoveredLocal1.
    ^recoveredValue5
! !

"ASDBase.ic method 0x20130e98; bytecode file offset 0xa2d74c"
!DBLiteralRange methodsFor: 'recovered'!
checkRange: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack3 := min.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack2 := (recoveredStack2) >= (recoveredStack3).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 17].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := max.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) <= (recoveredStack2).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x20147aac; bytecode file offset 0xa44368"
!DBLiteralRange methodsFor: 'recovered'!
putItem: recoveredArg1 in: recoveredArg2
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) monitorRange: (recoveredStack1).
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 17].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := dbItem.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := (recoveredStack0) putItem: (recoveredStack1) in: (recoveredStack2).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201698c0; bytecode file offset 0xa6617c"
!DBLiteralRange methodsFor: 'recovered'!
putIn: recoveredArg1 item: recoveredArg2 for: recoveredArg3
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) monitorRange: (recoveredStack1).
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 19].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := dbItem.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack3 := recoveredArg3.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) putIn: (recoveredStack1) item: (recoveredStack2) for: (recoveredStack3).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x202d93f4; bytecode file offset 0xbd5cd0"
!DBLiteralRange methodsFor: 'recovered'!
monitorRange: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) checkRange: (recoveredStack1).
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 48] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := SGMonitorStreamDummy.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) create.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := 'Value: '.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := (recoveredStack2) asString.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack2 := ' is out of range [ '.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack2 := min.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack2 := (recoveredStack2) asString.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack2 := ' , '.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack2 := max.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack2 := (recoveredStack2) asString.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack2 := ' ] '.
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
            recoveredStack0 := false.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack0 := true.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

