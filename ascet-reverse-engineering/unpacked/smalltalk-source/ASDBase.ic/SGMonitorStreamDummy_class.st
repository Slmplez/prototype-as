"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20012d44; bytecode file offset 0x912098"
!SGMonitorStreamDummy class methodsFor: 'recovered'!
MonitorFileName
    | recoveredValue0 |
    recoveredValue0 := MonitorFileName.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20014328; bytecode file offset 0x912098"
!SGMonitorStreamDummy class methodsFor: 'recovered'!
LogFilePath
    | recoveredValue0 |
    recoveredValue0 := LogFilePath.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20054530; bytecode file offset 0x951190"
!SGMonitorStreamDummy class methodsFor: 'recovered'!
LogFilePath: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    LogFilePath := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x2005468c; bytecode file offset 0x951190"
!SGMonitorStreamDummy class methodsFor: 'recovered'!
MonitorFileName: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    MonitorFileName := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x2005477c; bytecode file offset 0x951190"
!SGMonitorStreamDummy class methodsFor: 'recovered'!
LastUsedLogFilePath: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    LastUsedLogFilePath := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x2006235c; bytecode file offset 0x95f8b0"
!SGMonitorStreamDummy class methodsFor: 'recovered'!
defaultMonitorFileName
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) defaultLogFilePath.
    recoveredValue1 := (self) monitorFileName.
    recoveredValue2 := (recoveredValue0) , (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x2010a778; bytecode file offset 0xa07038"
!SGMonitorStreamDummy class methodsFor: 'recovered'!
monitorFileName
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) MonitorFileName.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 13] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := 'etasmon.log'.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack0) MonitorFileName: (recoveredStack1).
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := (recoveredStack0) MonitorFileName.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2016e8c8; bytecode file offset 0xa6b188"
!SGMonitorStreamDummy class methodsFor: 'recovered'!
LastUsedLogFilePath
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := LastUsedLogFilePath.
    recoveredValue1 := [
    | recoveredBlock6Value0 recoveredBlock6Value1 |
    recoveredBlock6Value0 := (self) LogFilePath.
    recoveredBlock6Value1 := recoveredBlock6Value0.
    LastUsedLogFilePath := recoveredBlock6Value1.
    recoveredBlock6Value0
].
    (recoveredValue0) ifNil: (recoveredValue1).
    recoveredValue2 := LastUsedLogFilePath.
    ^recoveredValue2
! !

"ASDBase.ic method 0x201ddd9c; bytecode file offset 0xada664"
!SGMonitorStreamDummy class methodsFor: 'recovered'!
defaultLogFilePath
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) LogFilePath.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := EtasGeneralDllApi.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) getETASLogFilePath.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := CfsStat.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := (recoveredStack0) exists: (recoveredStack1).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 26] ifFalse: [recoveredPC := 22].
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := EtasGeneralDllApi.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := (recoveredStack0) getETASLogFilePath.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

