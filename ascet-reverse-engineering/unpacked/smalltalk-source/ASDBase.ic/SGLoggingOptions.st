"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20001d90; bytecode file offset 0x8ffcfc"
!SGLoggingOptions methodsFor: 'recovered'!
initialize
    ^self
! !

"ASDBase.ic method 0x2005ff40; bytecode file offset 0x95c7f4"
!SGLoggingOptions methodsFor: 'recovered'!
setTransientMode
    selMode := 0.
    ^self
! !

"ASDBase.ic method 0x2005ff98; bytecode file offset 0x95c84c"
!SGLoggingOptions methodsFor: 'recovered'!
setStorageFormatMDF
    storageFormat := 0.
    ^self
! !

"ASDBase.ic method 0x20060028; bytecode file offset 0x95c8e4"
!SGLoggingOptions methodsFor: 'recovered'!
setPeriodicMode
    selMode := 1.
    ^self
! !

"ASDBase.ic method 0x20060080; bytecode file offset 0x95c934"
!SGLoggingOptions methodsFor: 'recovered'!
setStorageFormatFAMOS
    storageFormat := 1.
    ^self
! !

"ASDBase.ic method 0x200600c0; bytecode file offset 0x95c974"
!SGLoggingOptions methodsFor: 'recovered'!
setPeriodicToFileMode
    selMode := 2.
    ^self
! !

"ASDBase.ic method 0x200600fc; bytecode file offset 0x95c9b0"
!SGLoggingOptions methodsFor: 'recovered'!
setLogSingleValuePerTimeStamp
    selMode := 3.
    ^self
! !

"ASDBase.ic method 0x20066664; bytecode file offset 0x963428"
!SGLoggingOptions methodsFor: 'recovered'!
permission
    | recoveredValue0 |
    recoveredValue0 := permission.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20067d5c; bytecode file offset 0x9646f8"
!SGLoggingOptions methodsFor: 'recovered'!
mode
    | recoveredValue0 |
    recoveredValue0 := selMode.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006846c; bytecode file offset 0x965b90"
!SGLoggingOptions methodsFor: 'recovered'!
availableTasks
    | recoveredValue0 |
    recoveredValue0 := tasks.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20069ad8; bytecode file offset 0x966bdc"
!SGLoggingOptions methodsFor: 'recovered'!
selectedTask
    | recoveredValue0 |
    recoveredValue0 := selTask.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006a794; bytecode file offset 0x967a18"
!SGLoggingOptions methodsFor: 'recovered'!
hostBufferSize
    | recoveredValue0 |
    recoveredValue0 := hostBufferSize.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006b958; bytecode file offset 0x96873c"
!SGLoggingOptions methodsFor: 'recovered'!
continuous
    | recoveredValue0 |
    recoveredValue0 := continuous.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006c814; bytecode file offset 0x9692b0"
!SGLoggingOptions methodsFor: 'recovered'!
cycleTime
    | recoveredValue0 |
    recoveredValue0 := cycleTime.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006cbb0; bytecode file offset 0x969c04"
!SGLoggingOptions methodsFor: 'recovered'!
dataPerAccess
    | recoveredValue0 |
    recoveredValue0 := dataPerAccess.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006d53c; bytecode file offset 0x96a390"
!SGLoggingOptions methodsFor: 'recovered'!
targetTotalSize
    | recoveredValue0 |
    recoveredValue0 := targetTotalSize.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006dee0; bytecode file offset 0x96a9dc"
!SGLoggingOptions methodsFor: 'recovered'!
targetChannelSize
    | recoveredValue0 |
    recoveredValue0 := targetChannelSize.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20084b70; bytecode file offset 0x981ca4"
!SGLoggingOptions methodsFor: 'recovered'!
selectedTaskName: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) selectedTask: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x2008ad00; bytecode file offset 0x9875b4"
!SGLoggingOptions methodsFor: 'recovered'!
transientMode
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := selMode.
    recoveredValue1 := (recoveredValue0) = (0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x2008ad14; bytecode file offset 0x9875c8"
!SGLoggingOptions methodsFor: 'recovered'!
periodicMode
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := selMode.
    recoveredValue1 := (recoveredValue0) = (1).
    ^recoveredValue1
! !

"ASDBase.ic method 0x2008ad40; bytecode file offset 0x9875f4"
!SGLoggingOptions methodsFor: 'recovered'!
periodicToFileMode
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := selMode.
    recoveredValue1 := (recoveredValue0) = (2).
    ^recoveredValue1
! !

"ASDBase.ic method 0x2008ad6c; bytecode file offset 0x987620"
!SGLoggingOptions methodsFor: 'recovered'!
logSingleValuePerTimeStamp
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := selMode.
    recoveredValue1 := (recoveredValue0) = (3).
    ^recoveredValue1
! !

"ASDBase.ic method 0x2008ba20; bytecode file offset 0x9882d4"
!SGLoggingOptions methodsFor: 'recovered'!
isStorageFormatMDF
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := storageFormat.
    recoveredValue1 := (recoveredValue0) = (0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x2008ba48; bytecode file offset 0x9882fc"
!SGLoggingOptions methodsFor: 'recovered'!
isStorageFormatFAMOS
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := storageFormat.
    recoveredValue1 := (recoveredValue0) = (1).
    ^recoveredValue1
! !

"ASDBase.ic method 0x200a4598; bytecode file offset 0x9a1ad4"
!SGLoggingOptions methodsFor: 'recovered'!
selectedTaskId: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) taskNameForId: (recoveredValue0).
    (self) selectedTaskName: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x200be44c; bytecode file offset 0x9bb178"
!SGLoggingOptions methodsFor: 'recovered'!
permission: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    permission := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200bf5d0; bytecode file offset 0x9bc0b4"
!SGLoggingOptions methodsFor: 'recovered'!
mode: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    selMode := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c05bc; bytecode file offset 0x9bd228"
!SGLoggingOptions methodsFor: 'recovered'!
availableTasks: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    tasks := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c0bf0; bytecode file offset 0x9bdf14"
!SGLoggingOptions methodsFor: 'recovered'!
selectedTask: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    selTask := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c1c8c; bytecode file offset 0x9beac8"
!SGLoggingOptions methodsFor: 'recovered'!
hostBufferSize: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    hostBufferSize := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c2680; bytecode file offset 0x9bf474"
!SGLoggingOptions methodsFor: 'recovered'!
continuous: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    continuous := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c2e0c; bytecode file offset 0x9bfde0"
!SGLoggingOptions methodsFor: 'recovered'!
cycleTime: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    cycleTime := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c3b18; bytecode file offset 0x9c058c"
!SGLoggingOptions methodsFor: 'recovered'!
dataPerAccess: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    dataPerAccess := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c40e4; bytecode file offset 0x9c0bf0"
!SGLoggingOptions methodsFor: 'recovered'!
targetTotalSize: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    targetTotalSize := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c4750; bytecode file offset 0x9c11bc"
!SGLoggingOptions methodsFor: 'recovered'!
targetChannelSize: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    targetChannelSize := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c4b34; bytecode file offset 0x9c16b0"
!SGLoggingOptions methodsFor: 'recovered'!
storageFormat: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    storageFormat := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c50e0; bytecode file offset 0x9c1afc"
!SGLoggingOptions methodsFor: 'recovered'!
singleLogDataButtonStatus: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    singleLogDataButtonStatus := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x201063f8; bytecode file offset 0xa02cb4"
!SGLoggingOptions methodsFor: 'recovered'!
storageFormat
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := storageFormat.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 13] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := storageFormat.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x20106510; bytecode file offset 0xa02dcc"
!SGLoggingOptions methodsFor: 'recovered'!
singleLogDataButtonStatus
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := singleLogDataButtonStatus.
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
            singleLogDataButtonStatus := recoveredStack1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := singleLogDataButtonStatus.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x20133cf0; bytecode file offset 0xa305e4"
!SGLoggingOptions methodsFor: 'recovered'!
taskNameForId: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) availableTasks.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := [
    'no task'
].
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) keyAtValue: (recoveredStack1) ifAbsent: (recoveredStack2).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20133d74; bytecode file offset 0xa30634"
!SGLoggingOptions methodsFor: 'recovered'!
taskIdForName: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) availableTasks.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := [
    1
].
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1) ifAbsent: (recoveredStack2).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201597a4; bytecode file offset 0xa56064"
!SGLoggingOptions methodsFor: 'recovered'!
selectedTaskName
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) selectedTask.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack0 := (recoveredStack0) isString.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredPC := 19.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := (recoveredStack0) taskNameForId: (recoveredStack1).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201597cc; bytecode file offset 0xa5608c"
!SGLoggingOptions methodsFor: 'recovered'!
selectedTaskId
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) selectedTask.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack0 := (recoveredStack0) isString.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := (recoveredStack0) taskIdForName: (recoveredStack1).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredPC := 19.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x204e7a68; bytecode file offset 0xde4388"
!SGLoggingOptions methodsFor: 'recovered'!
writeXML: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 recoveredValue21 recoveredValue22 recoveredValue23 recoveredValue24 recoveredValue25 recoveredValue26 recoveredValue27 recoveredValue28 recoveredValue29 recoveredValue30 recoveredValue31 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := permission.
    (recoveredValue0) attr: ('permission') boolean: (recoveredValue1).
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (self) class.
    recoveredValue4 := (recoveredValue3) loggingModeEnumeration.
    recoveredValue5 := selMode.
    recoveredValue6 := (recoveredValue5) + (1).
    recoveredValue7 := (recoveredValue4) at: (recoveredValue6).
    (recoveredValue2) attr: ('loggingMode') enum: (recoveredValue7).
    recoveredValue8 := recoveredArg1.
    recoveredValue9 := (self) selectedTaskId.
    (recoveredValue8) attr: ('selectedTask') nnInt: (recoveredValue9).
    recoveredValue10 := recoveredArg1.
    recoveredValue11 := hostBufferSize.
    (recoveredValue10) attr: ('hostBufferSize') nnInt: (recoveredValue11).
    recoveredValue12 := recoveredArg1.
    recoveredValue13 := continuous.
    (recoveredValue12) attr: ('continuousPolling') boolean: (recoveredValue13).
    recoveredValue14 := recoveredArg1.
    recoveredValue15 := cycleTime.
    (recoveredValue14) attr: ('cycleTime') nnInt: (recoveredValue15).
    recoveredValue16 := recoveredArg1.
    recoveredValue17 := dataPerAccess.
    (recoveredValue16) attr: ('valuesPerCycle') nnInt: (recoveredValue17).
    recoveredValue18 := recoveredArg1.
    recoveredValue19 := targetChannelSize.
    (recoveredValue18) attr: ('targetChannelSize') nnInt: (recoveredValue19).
    recoveredValue20 := recoveredArg1.
    recoveredValue21 := targetTotalSize.
    recoveredValue22 := (recoveredValue21) * (10).
    recoveredValue23 := (recoveredValue22) asInteger.
    (recoveredValue20) attr: ('targetTotalSize') nnInt: (recoveredValue23).
    recoveredValue24 := recoveredArg1.
    recoveredValue25 := storageFormat.
    recoveredValue26 := (recoveredValue25) + (1).
    recoveredValue27 := (#('MDF' 'FAMOS')) at: (recoveredValue26).
    (recoveredValue24) attr: ('storageFormat') enum: (recoveredValue27).
    recoveredValue28 := recoveredArg1.
    (recoveredValue28) openComplex: ('Tasks').
    recoveredValue29 := tasks.
    recoveredValue30 := [:recoveredBlock121Arg1 :recoveredBlock121Arg2 | 
    | recoveredBlock121Value0 recoveredBlock121Value1 recoveredBlock121Value2 recoveredBlock121Value3 recoveredBlock121Value4 recoveredBlock121Value5 recoveredBlock121Value6 |
    recoveredBlock121Value0 := recoveredArg1.
    (recoveredBlock121Value0) openComplex: ('Task').
    recoveredBlock121Value1 := recoveredArg1.
    recoveredBlock121Value2 := recoveredBlock121Arg2.
    (recoveredBlock121Value1) attr: ('index') nnInt: (recoveredBlock121Value2).
    recoveredBlock121Value3 := recoveredArg1.
    recoveredBlock121Value4 := recoveredBlock121Arg1.
    (recoveredBlock121Value3) attr: ('name') string: (recoveredBlock121Value4).
    recoveredBlock121Value5 := recoveredArg1.
    recoveredBlock121Value6 := (recoveredBlock121Value5) closeComplex.
    recoveredBlock121Value6
].
    (recoveredValue29) keysAndValuesDo: (recoveredValue30).
    recoveredValue31 := recoveredArg1.
    (recoveredValue31) closeComplex.
    ^self
! !

