"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"psupp.ic method 0x20002394; bytecode file offset 0x155d58"
!OSVersioninfo methodsFor: 'recovered'!
dwOSVersionInfoSize
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (0).
    ^recoveredValue0
! !

"psupp.ic method 0x20002f30; bytecode file offset 0x157170"
!OSVersioninfo methodsFor: 'recovered'!
dwMajorVersion
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (4).
    ^recoveredValue0
! !

"psupp.ic method 0x20004264; bytecode file offset 0x157f64"
!OSVersioninfo methodsFor: 'recovered'!
dwMinorVersion
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (8).
    ^recoveredValue0
! !

"psupp.ic method 0x20004ed8; bytecode file offset 0x1589a4"
!OSVersioninfo methodsFor: 'recovered'!
dwBuildNumber
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (12).
    ^recoveredValue0
! !

"psupp.ic method 0x200052d0; bytecode file offset 0x159294"
!OSVersioninfo methodsFor: 'recovered'!
dwPlatformId
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (16).
    ^recoveredValue0
! !

"psupp.ic method 0x2000fe0c; bytecode file offset 0x165330"
!OSVersioninfo methodsFor: 'recovered'!
dwOSVersionInfoSize: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (0) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20012830; bytecode file offset 0x166e00"
!OSVersioninfo methodsFor: 'recovered'!
dwMajorVersion: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (4) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20014960; bytecode file offset 0x1683c0"
!OSVersioninfo methodsFor: 'recovered'!
dwMinorVersion: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (8) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x2001598c; bytecode file offset 0x169290"
!OSVersioninfo methodsFor: 'recovered'!
dwBuildNumber: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (12) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x200162bc; bytecode file offset 0x169eb4"
!OSVersioninfo methodsFor: 'recovered'!
dwPlatformId: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (16) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x2001efb8; bytecode file offset 0x172850"
!OSVersioninfo methodsFor: 'recovered'!
szCSDVersion
    | recoveredValue0 |
    recoveredValue0 := (self) stringAt: (20) size: (128).
    ^recoveredValue0
! !

"psupp.ic method 0x200256ac; bytecode file offset 0x178f44"
!OSVersioninfo methodsFor: 'recovered'!
szCSDVersion: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) stringAt: (20) put: (recoveredValue0) size: (128).
    ^self
! !

"psupp.ic method 0x2002cba0; bytecode file offset 0x18044c"
!OSVersioninfo methodsFor: 'recovered'!
getVersionEx
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) dwOSVersionInfoSize.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack0 ~~ recoveredStack1) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) class.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) fixedSize.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack0) dwOSVersionInfoSize: (recoveredStack1).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := GetVersionEx.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := (recoveredStack0) callWith: (recoveredStack1).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

