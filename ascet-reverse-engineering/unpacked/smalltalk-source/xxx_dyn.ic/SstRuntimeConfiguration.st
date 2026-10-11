"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"xxx_dyn.ic method 0x20002760; bytecode file offset 0x6382c"
!SstRuntimeConfiguration methodsFor: 'recovered'!
clear
    callbacks := nil.
    ^self
! !

"xxx_dyn.ic method 0x200039f0; bytecode file offset 0x64bac"
!SstRuntimeConfiguration methodsFor: 'recovered'!
callbacks
    | recoveredValue0 |
    recoveredValue0 := callbacks.
    ^recoveredValue0
! !

"xxx_dyn.ic method 0x20009b14; bytecode file offset 0x6abdc"
!SstRuntimeConfiguration methodsFor: 'recovered'!
callbacks: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    callbacks := recoveredValue0.
    recoveredValue1 := callbacks.
    recoveredValue2 := owner.
    (recoveredValue1) owner: (recoveredValue2).
    ^self
! !

"xxx_dyn.ic method 0x2000ab74; bytecode file offset 0x6bc84"
!SstRuntimeConfiguration methodsFor: 'recovered'!
initialize
    | recoveredValue0 recoveredValue1 |
    super initialize.
    recoveredValue0 := SstCallbackInterface.
    recoveredValue1 := (recoveredValue0) new.
    (self) callbacks: (recoveredValue1).
    ^self
! !

"xxx_dyn.ic method 0x2000c29c; bytecode file offset 0x6d364"
!SstRuntimeConfiguration methodsFor: 'recovered'!
owner: recoveredArg1
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
            owner := recoveredStack1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := callbacks.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 17] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := callbacks.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack1) owner: (recoveredStack2).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"xxx_dyn.ic method 0x20012f2c; bytecode file offset 0x74010"
!SstRuntimeConfiguration methodsFor: 'recovered'!
copy
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 |
    recoveredValue0 := super copy.
    recoveredLocal1 := recoveredValue0.
    recoveredValue1 := recoveredLocal1.
    recoveredValue2 := callbacks.
    recoveredValue3 := (recoveredValue2) class.
    recoveredValue4 := callbacks.
    recoveredValue5 := (recoveredValue4) owner.
    recoveredValue6 := (recoveredValue3) for: (recoveredValue5).
    (recoveredValue1) callbacks: (recoveredValue6).
    recoveredValue7 := recoveredLocal1.
    recoveredValue8 := (recoveredValue7) callbacks.
    recoveredValue9 := callbacks.
    (recoveredValue8) addAllCallbacksFrom: (recoveredValue9).
    recoveredValue10 := recoveredLocal1.
    ^recoveredValue10
! !

