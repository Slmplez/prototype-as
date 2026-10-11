"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x200c7894; bytecode file offset 0x9c4150"
!ASDOptionDialog methodsFor: 'recovered'!
title: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    title := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c78c0; bytecode file offset 0x9c4194"
!ASDOptionDialog methodsFor: 'recovered'!
expandRecursive: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    expandRecursive := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x20107018; bytecode file offset 0xa038cc"
!ASDOptionDialog methodsFor: 'recovered'!
expandRecursive
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := expandRecursive.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 13] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            expandRecursive := recoveredStack1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := expandRecursive.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2016349c; bytecode file offset 0xa5fd5c"
!ASDOptionDialog methodsFor: 'recovered'!
title
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := title.
    recoveredValue1 := [:recoveredBlock6Arg1 | 
    | recoveredBlock6Value0 |
    recoveredBlock6Value0 := recoveredBlock6Arg1.
    ^recoveredBlock6Value0
].
    (recoveredValue0) ifNotNil: (recoveredValue1).
    recoveredValue2 := super title.
    ^recoveredValue2
! !

"ASDBase.ic method 0x201d5d60; bytecode file offset 0xad2630"
!ASDOptionDialog methodsFor: 'recovered'!
descriptionPath
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := descriptionPath.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 25] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := ASDPathOptions.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) instance.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) optionTempPath.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := EtasGeneralDllApi.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := (recoveredStack2) getAppVersion.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack2 := '\'.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := descriptionPath.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

