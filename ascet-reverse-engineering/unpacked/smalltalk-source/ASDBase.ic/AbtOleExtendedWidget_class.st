"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2006f438; bytecode file offset 0x96bf7c"
!AbtOleExtendedWidget class methodsFor: 'recovered'!
licenseKey
    | recoveredValue0 |
    recoveredValue0 := licenseKey.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20073fd8; bytecode file offset 0x970b34"
!AbtOleExtendedWidget class methodsFor: 'recovered'!
clientName
    ^nil
! !

"ASDBase.ic method 0x200c5a38; bytecode file offset 0x9c25bc"
!AbtOleExtendedWidget class methodsFor: 'recovered'!
licenseKey: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    licenseKey := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x2016136c; bytecode file offset 0xa5dc40"
!AbtOleExtendedWidget class methodsFor: 'recovered'!
getLicenseKey
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) clientName.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredPC := 17.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := OleControl.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) clientName.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := (recoveredStack0) getLicenseKey: (recoveredStack1).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            licenseKey := recoveredStack0.
            recoveredPC := 19.
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

