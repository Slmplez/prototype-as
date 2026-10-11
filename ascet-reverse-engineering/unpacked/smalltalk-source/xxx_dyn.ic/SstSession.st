"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"xxx_dyn.ic method 0x20000098; bytecode file offset 0x6147c"
!SstSession methodsFor: 'recovered'!
initialize
    ^self
! !

"xxx_dyn.ic method 0x20001638; bytecode file offset 0x62724"
!SstSession methodsFor: 'recovered'!
isOpen
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) getCreationTime.
    recoveredValue1 := (recoveredValue0) notNil.
    ^recoveredValue1
! !

"xxx_dyn.ic method 0x2000373c; bytecode file offset 0x649e8"
!SstSession methodsFor: 'recovered'!
key
    | recoveredValue0 |
    recoveredValue0 := key.
    ^recoveredValue0
! !

"xxx_dyn.ic method 0x20003ac0; bytecode file offset 0x64bac"
!SstSession methodsFor: 'recovered'!
manager
    | recoveredValue0 |
    recoveredValue0 := manager.
    ^recoveredValue0
! !

"xxx_dyn.ic method 0x20003cac; bytecode file offset 0x64d78"
!SstSession methodsFor: 'recovered'!
data
    | recoveredValue0 |
    recoveredValue0 := data.
    ^recoveredValue0
! !

"xxx_dyn.ic method 0x20003d50; bytecode file offset 0x64ed4"
!SstSession methodsFor: 'recovered'!
expiry
    | recoveredValue0 |
    recoveredValue0 := expiry.
    ^recoveredValue0
! !

"xxx_dyn.ic method 0x20003eac; bytecode file offset 0x64fe8"
!SstSession methodsFor: 'recovered'!
getCreationTime
    | recoveredValue0 |
    recoveredValue0 := openTimestamp.
    ^recoveredValue0
! !

"xxx_dyn.ic method 0x20003fe8; bytecode file offset 0x650c4"
!SstSession methodsFor: 'recovered'!
getLastAccessedTime
    | recoveredValue0 |
    recoveredValue0 := lastAccessTimestamp.
    ^recoveredValue0
! !

"xxx_dyn.ic method 0x2000409c; bytecode file offset 0x65178"
!SstSession methodsFor: 'recovered'!
inactivityTimeoutInterval
    | recoveredValue0 |
    recoveredValue0 := inactivityTimeoutInterval.
    ^recoveredValue0
! !

"xxx_dyn.ic method 0x20007d94; bytecode file offset 0x68f50"
!SstSession methodsFor: 'recovered'!
key: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    key := recoveredValue0.
    ^self
! !

"xxx_dyn.ic method 0x20007f58; bytecode file offset 0x69104"
!SstSession methodsFor: 'recovered'!
manager: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    manager := recoveredValue0.
    ^self
! !

"xxx_dyn.ic method 0x2000811c; bytecode file offset 0x692b8"
!SstSession methodsFor: 'recovered'!
data: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    data := recoveredValue0.
    ^self
! !

"xxx_dyn.ic method 0x2000854c; bytecode file offset 0x69688"
!SstSession methodsFor: 'recovered'!
inactivityTimeoutInterval: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    inactivityTimeoutInterval := recoveredValue0.
    ^self
! !

"xxx_dyn.ic method 0x200097e4; bytecode file offset 0x6a8a8"
!SstSession methodsFor: 'recovered'!
close
    openTimestamp := nil.
    data := nil.
    manager := nil.
    ^self
! !

"xxx_dyn.ic method 0x2000bf7c; bytecode file offset 0x6d04c"
!SstSession methodsFor: 'recovered'!
hasExpired
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
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
            recoveredStack2 := (recoveredStack2) expiry.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack2 == nil) ifTrue: [recoveredPC := 17] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) expiry.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := DateAndTime.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := (recoveredStack2) now.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) < (recoveredStack2).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"xxx_dyn.ic method 0x2000d3f4; bytecode file offset 0x6e4cc"
!SstSession methodsFor: 'recovered'!
openFor: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := recoveredArg1.
    manager := recoveredValue0.
    recoveredValue1 := DateAndTime.
    recoveredValue2 := (recoveredValue1) now.
    openTimestamp := recoveredValue2.
    recoveredValue3 := (self) manager.
    recoveredValue4 := (recoveredValue3) inactivityTimeoutInterval.
    recoveredValue5 := (recoveredValue4) copy.
    inactivityTimeoutInterval := recoveredValue5.
    ^self
! !

"xxx_dyn.ic method 0x2000f1d4; bytecode file offset 0x702b4"
!SstSession methodsFor: 'recovered'!
isNew
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) isOpen.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := SstError.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := SstAPIError.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := 'session is not open'.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := (recoveredStack0) for: (recoveredStack1) with: (recoveredStack2).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack0) raise.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := (recoveredStack0) getLastAccessedTime.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := (recoveredStack0) isNil.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"xxx_dyn.ic method 0x20011fd0; bytecode file offset 0x730a0"
!SstSession methodsFor: 'recovered'!
touch
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := DateAndTime.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) now.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            lastAccessTimestamp := recoveredStack1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack2 := (recoveredStack2) inactivityTimeoutInterval.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack2 == nil) ifTrue: [recoveredPC := 25] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := lastAccessTimestamp.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack2 := (recoveredStack2) inactivityTimeoutInterval.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (recoveredStack2).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            lastAccessTimestamp := recoveredStack2.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            expiry := recoveredStack1.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

