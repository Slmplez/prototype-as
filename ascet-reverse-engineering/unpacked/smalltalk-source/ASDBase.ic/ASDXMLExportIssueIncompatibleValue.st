"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x200b5ed0; bytecode file offset 0x9b39ac"
!ASDXMLExportIssueIncompatibleValue methodsFor: 'recovered'!
errorID
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := super errorID.
    recoveredValue1 := (recoveredValue0) , ('09').
    ^recoveredValue1
! !

"ASDBase.ic method 0x200c05ec; bytecode file offset 0x9bd228"
!ASDXMLExportIssueIncompatibleValue methodsFor: 'recovered'!
description: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    description := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c10b8; bytecode file offset 0x9bdf14"
!ASDXMLExportIssueIncompatibleValue methodsFor: 'recovered'!
errorDescription: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    errorDescription := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200fe7e0; bytecode file offset 0x9fb0b4"
!ASDXMLExportIssueIncompatibleValue methodsFor: 'recovered'!
initOn: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    super initOn: (recoveredValue0).
    type := 'error'.
    ^self
! !

"ASDBase.ic method 0x20105c50; bytecode file offset 0xa02508"
!ASDXMLExportIssueIncompatibleValue methodsFor: 'recovered'!
errorDescription
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := errorDescription.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 13] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := errorDescription.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := 'Invalid value'.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x20171254; bytecode file offset 0xa6db10"
!ASDXMLExportIssueIncompatibleValue methodsFor: 'recovered'!
description
    | recoveredStack0 recoveredStack1 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) isError.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 8] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := description.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 19] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := description.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := 'Value will be removed or adjusted'.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201dc0c0; bytecode file offset 0xad8984"
!ASDXMLExportIssueIncompatibleValue methodsFor: 'recovered'!
initOn: recoveredArg1 isError: recoveredArg2
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            super initOn: (recoveredStack1).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := recoveredArg2.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 22].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := 'error'.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            type := recoveredStack0.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredPC := 26.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := 'warning'.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            type := recoveredStack0.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

