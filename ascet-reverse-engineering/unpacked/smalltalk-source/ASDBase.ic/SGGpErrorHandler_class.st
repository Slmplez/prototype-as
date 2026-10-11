"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2002c104; bytecode file offset 0x934580"
!SGGpErrorHandler class methodsFor: 'recovered'!
create
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) new.
    recoveredValue1 := (recoveredValue0) initialize.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20057ef8; bytecode file offset 0x956284"
!SGGpErrorHandler class methodsFor: 'recovered'!
create: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) create.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) title: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x20178264; bytecode file offset 0xa74b28"
!SGGpErrorHandler class methodsFor: 'recovered'!
at: recoveredArg1 put: recoveredArg2
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := Messages.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 15] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := Dictionary.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            Messages := recoveredStack1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := Messages.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x202112f0; bytecode file offset 0xb0dbc8"
!SGGpErrorHandler class methodsFor: 'recovered'!
readMessages
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := CfsDirectoryDescriptor.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) startUpDirectoryPath.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := 'common\msggp.ini'.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := CfsStat.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) exists: (recoveredStack2).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 22] ifFalse: [recoveredPC := 20].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := 'gp'.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack2 := 'graphical programming'.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            (recoveredStack0) readMessagesOfSubsystem: (recoveredStack1) label: (recoveredStack2) from: (recoveredStack3).
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := true.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x202fbd3c; bytecode file offset 0xbf862c"
!SGGpErrorHandler class methodsFor: 'recovered'!
initMessagesDefault
    (self) at: ('Egp10') put: ('Missing return value %1 in trigger %2.').
    (self) at: ('Egp20') put: ('Missing argument %1 in trigger %2.').
    (self) at: ('Egp100') put: ('Could not restore connection in %1. Advice: Store diagram to make it consistent.').
    (self) at: ('Egp101') put: ('Could not restore operator %2 in %1. Advice: Store diagram to make it consistent.').
    (self) at: ('Egp102') put: ('Could not restore graphics block %2 in %1. Block does not belong to current specification %3. Advice: Store diagram to make it consistent.').
    (self) at: ('Egp103') put: ('Could not restore graphics block %2 in %1. Block is not supported. Advice: Store diagram to make it consistent.').
    (self) at: ('Egp200') put: ('Removed pin from sequence call in %1. Advice: Store diagram to make it consistent.').
    ^self
! !

"ASDBase.ic method 0x2046b9fc; bytecode file offset 0xd682e4"
!SGGpErrorHandler class methodsFor: 'recovered'!
readMessagesOfSubsystem: recoveredArg1 label: recoveredArg2 from: recoveredArg3
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 |
    recoveredValue0 := WinProfile.
    recoveredValue1 := (recoveredValue0) new.
    recoveredValue2 := (recoveredValue1) initialize.
    recoveredLocal2 := recoveredValue2.
    recoveredValue3 := recoveredLocal2.
    recoveredValue4 := recoveredArg3.
    recoveredValue5 := (recoveredValue3) getSectionEntries: ('Errors') from: (recoveredValue4).
    recoveredValue6 := recoveredValue5.
    recoveredLocal3 := recoveredValue6.
    recoveredValue7 := [:recoveredBlock25Arg1 :recoveredBlock25Arg2 | 
    | recoveredBlock25Value0 recoveredBlock25Value1 recoveredBlock25Value2 recoveredBlock25Value3 recoveredBlock25Value4 recoveredBlock25Value5 |
    recoveredBlock25Value0 := recoveredArg1.
    recoveredBlock25Value1 := ('E') , (recoveredBlock25Value0).
    recoveredBlock25Value2 := recoveredBlock25Arg1.
    recoveredBlock25Value3 := (recoveredBlock25Value1) , (recoveredBlock25Value2).
    recoveredBlock25Value4 := recoveredBlock25Arg2.
    recoveredBlock25Value5 := (self) at: (recoveredBlock25Value3) put: (recoveredBlock25Value4).
    recoveredBlock25Value5
].
    (recoveredValue5) keysAndValuesDo: (recoveredValue7).
    recoveredValue8 := recoveredLocal2.
    recoveredValue9 := recoveredArg3.
    recoveredValue10 := (recoveredValue8) getSectionEntries: ('Infos') from: (recoveredValue9).
    recoveredValue11 := recoveredValue10.
    recoveredLocal3 := recoveredValue11.
    recoveredValue12 := [:recoveredBlock62Arg1 :recoveredBlock62Arg2 | 
    | recoveredBlock62Value0 recoveredBlock62Value1 recoveredBlock62Value2 recoveredBlock62Value3 recoveredBlock62Value4 recoveredBlock62Value5 |
    recoveredBlock62Value0 := recoveredArg1.
    recoveredBlock62Value1 := ('I') , (recoveredBlock62Value0).
    recoveredBlock62Value2 := recoveredBlock62Arg1.
    recoveredBlock62Value3 := (recoveredBlock62Value1) , (recoveredBlock62Value2).
    recoveredBlock62Value4 := recoveredBlock62Arg2.
    recoveredBlock62Value5 := (self) at: (recoveredBlock62Value3) put: (recoveredBlock62Value4).
    recoveredBlock62Value5
].
    (recoveredValue10) keysAndValuesDo: (recoveredValue12).
    recoveredValue13 := recoveredLocal2.
    recoveredValue14 := recoveredArg3.
    recoveredValue15 := (recoveredValue13) getSectionEntries: ('Warnings') from: (recoveredValue14).
    recoveredValue16 := recoveredValue15.
    recoveredLocal3 := recoveredValue16.
    recoveredValue17 := [:recoveredBlock98Arg1 :recoveredBlock98Arg2 | 
    | recoveredBlock98Value0 recoveredBlock98Value1 recoveredBlock98Value2 recoveredBlock98Value3 recoveredBlock98Value4 recoveredBlock98Value5 |
    recoveredBlock98Value0 := recoveredArg1.
    recoveredBlock98Value1 := ('W') , (recoveredBlock98Value0).
    recoveredBlock98Value2 := recoveredBlock98Arg1.
    recoveredBlock98Value3 := (recoveredBlock98Value1) , (recoveredBlock98Value2).
    recoveredBlock98Value4 := recoveredBlock98Arg2.
    recoveredBlock98Value5 := (self) at: (recoveredBlock98Value3) put: (recoveredBlock98Value4).
    recoveredBlock98Value5
].
    (recoveredValue15) keysAndValuesDo: (recoveredValue17).
    ^self
! !

