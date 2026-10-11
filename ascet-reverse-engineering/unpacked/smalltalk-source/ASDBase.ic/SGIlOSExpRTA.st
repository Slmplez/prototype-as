"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20000178; bytecode file offset 0x8ffcfc"
!SGIlOSExpRTA methodsFor: 'recovered'!
endStartTimerProcess
    ^self
! !

"ASDBase.ic method 0x20003c90; bytecode file offset 0x90206c"
!SGIlOSExpRTA methodsFor: 'recovered'!
beginStartTimerProcess: recoveredArg1
    ^self
! !

"ASDBase.ic method 0x20006394; bytecode file offset 0x902de8"
!SGIlOSExpRTA methodsFor: 'recovered'!
addStartTimerProcessInInitTask: recoveredArg1 opModes: recoveredArg2 size: recoveredArg3
    ^self
! !

"ASDBase.ic method 0x200064dc; bytecode file offset 0x902de8"
!SGIlOSExpRTA methodsFor: 'recovered'!
addStmntToStartTimerProcess: recoveredArg1 delay: recoveredArg2 period: recoveredArg3
    ^self
! !

"ASDBase.ic method 0x2006db20; bytecode file offset 0x96a9dc"
!SGIlOSExpRTA methodsFor: 'recovered'!
enableTicks
    | recoveredValue0 |
    recoveredValue0 := enableTicks.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2009928c; bytecode file offset 0x995b4c"
!SGIlOSExpRTA methodsFor: 'recovered'!
dbKeyForTimer: recoveredArg1 id: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := ('alarm_') , (recoveredValue0).
    recoveredValue2 := (self) dbKeyForTask: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x20147f74; bytecode file offset 0xa44850"
!SGIlOSExpRTA methodsFor: 'recovered'!
dbaInitTask: recoveredArg1 appMode: recoveredArg2
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) taskAttributes.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) isCgAttrSpecified.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 17].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            super dbaInitTask: (recoveredStack1) appMode: (recoveredStack2).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20197204; bytecode file offset 0xa93ad0"
!SGIlOSExpRTA methodsFor: 'recovered'!
enableTicks: recoveredArg1 tickDuration: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := recoveredArg1.
    enableTicks := recoveredValue0.
    recoveredValue1 := (self) dbaCodeObject.
    recoveredValue2 := recoveredValue1.
    (recoveredValue2) newlinePutAll: ('setSystemTickDuration (').
    recoveredValue3 := recoveredValue1.
    recoveredValue4 := recoveredArg2.
    recoveredValue5 := (recoveredValue4) asString.
    (recoveredValue3) nextPutAll: (recoveredValue5).
    (recoveredValue1) nextPutAll: (');').
    ^self
! !

"ASDBase.ic method 0x201e7d48; bytecode file offset 0xae4618"
!SGIlOSExpRTA methodsFor: 'recovered'!
dbAlarmInAppMode: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := (self) dbaCodeAssoc.
    recoveredValue1 := recoveredValue0.
    (recoveredValue1) newlinePutAll: ('addAlarmInAppMode (').
    recoveredValue2 := recoveredValue0.
    recoveredValue3 := recoveredArg1.
    (recoveredValue2) nextPutAll: (recoveredValue3).
    recoveredValue4 := recoveredValue0.
    (recoveredValue4) listSeparator.
    recoveredValue5 := recoveredValue0.
    recoveredValue6 := (self) currentOpMode.
    (recoveredValue5) nextPutAll: (recoveredValue6).
    (recoveredValue0) nextPutAll: (');').
    ^self
! !

