"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2000b51c; bytecode file offset 0x908be4"
!EtasOleExtendedPrimitive class methodsFor: 'recovered'!
oleControlWrapperClass
    | recoveredValue0 |
    recoveredValue0 := (self) subclassResponsibility.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006f650; bytecode file offset 0x96bf7c"
!EtasOleExtendedPrimitive class methodsFor: 'recovered'!
licenseKey
    | recoveredValue0 |
    recoveredValue0 := licenseKey.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20073fe0; bytecode file offset 0x970b34"
!EtasOleExtendedPrimitive class methodsFor: 'recovered'!
clientName
    ^nil
! !

"ASDBase.ic method 0x2008d9e4; bytecode file offset 0x98a29c"
!EtasOleExtendedPrimitive class methodsFor: 'recovered'!
minSize
    | recoveredValue0 |
    recoveredValue0 := (50) @ (10).
    ^recoveredValue0
! !

"ASDBase.ic method 0x200c5c68; bytecode file offset 0x9c25bc"
!EtasOleExtendedPrimitive class methodsFor: 'recovered'!
licenseKey: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    licenseKey := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x20161380; bytecode file offset 0xa5dc40"
!EtasOleExtendedPrimitive class methodsFor: 'recovered'!
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

