"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20000690; bytecode file offset 0x8ffcfc"
!SGIlOSExpERCOSSimu methodsFor: 'recovered'!
endRealTimeObjects
    ^self
! !

"ASDBase.ic method 0x200012b0; bytecode file offset 0x8ffcfc"
!SGIlOSExpERCOSSimu methodsFor: 'recovered'!
nextPutAllDebugWrapper
    ^self
! !

"ASDBase.ic method 0x20002478; bytecode file offset 0x8ffcfc"
!SGIlOSExpERCOSSimu methodsFor: 'recovered'!
realTimeObjects
    ^self
! !

"ASDBase.ic method 0x2001595c; bytecode file offset 0x92209c"
!SGIlOSExpERCOSSimu methodsFor: 'recovered'!
osLabel
    ^'ERCOS'
! !

"ASDBase.ic method 0x2001d63c; bytecode file offset 0x92209c"
!SGIlOSExpERCOSSimu methodsFor: 'recovered'!
typeQualifierFifoPtr
    ^' const '
! !

"ASDBase.ic method 0x2002d974; bytecode file offset 0x934580"
!SGIlOSExpERCOSSimu methodsFor: 'recovered'!
wrapperStream
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) owner.
    recoveredValue1 := (recoveredValue0) wrapperStream.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20052e00; bytecode file offset 0x9505d0"
!SGIlOSExpERCOSSimu methodsFor: 'recovered'!
releaseRes: recoveredArg1
    (self) interruptsResumeExpr.
    ^self
! !

"ASDBase.ic method 0x20053a48; bytecode file offset 0x9505d0"
!SGIlOSExpERCOSSimu methodsFor: 'recovered'!
reserveRes: recoveredArg1
    (self) interruptsSuspendExpr.
    ^self
! !

"ASDBase.ic method 0x20058638; bytecode file offset 0x956284"
!SGIlOSExpERCOSSimu methodsFor: 'recovered'!
asHex: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) owner.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) asHex: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x20064f04; bytecode file offset 0x961970"
!SGIlOSExpERCOSSimu methodsFor: 'recovered'!
beginMethodBodyRTOAccess
    | recoveredValue0 |
    recoveredValue0 := (self) owner.
    (recoveredValue0) reserveBlock.
    ^self
! !

"ASDBase.ic method 0x200784b4; bytecode file offset 0x9757c8"
!SGIlOSExpERCOSSimu methodsFor: 'recovered'!
supportsDtAsDouble
    ^true
! !

"ASDBase.ic method 0x200d59c0; bytecode file offset 0x9d228c"
!SGIlOSExpERCOSSimu methodsFor: 'recovered'!
initialize
    super initialize.
    protectMessage := false.
    ^self
! !

"ASDBase.ic method 0x200e3878; bytecode file offset 0x9e0274"
!SGIlOSExpERCOSSimu methodsFor: 'recovered'!
endHwTasks
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) wrapperStream.
    recoveredValue1 := recoveredValue0.
    (recoveredValue1) newlinePutAll: ('{ -1, (T_hwTaskPtr) NULL } };').
    (recoveredValue0) decIndent.
    ^self
! !

"ASDBase.ic method 0x200e38c0; bytecode file offset 0x9e0274"
!SGIlOSExpERCOSSimu methodsFor: 'recovered'!
endSwTasks
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) wrapperStream.
    recoveredValue1 := recoveredValue0.
    (recoveredValue1) newlinePutAll: ('{ -1, (T_swTaskPtr) NULL } };').
    (recoveredValue0) decIndent.
    ^self
! !

"ASDBase.ic method 0x200e38f0; bytecode file offset 0x9e0274"
!SGIlOSExpERCOSSimu methodsFor: 'recovered'!
endOperatingMode
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) block.
    recoveredValue1 := recoveredValue0.
    (recoveredValue1) nextPutAll: (' } ').
    (recoveredValue0) decIndent.
    ^self
! !

"ASDBase.ic method 0x200e3950; bytecode file offset 0x9e0274"
!SGIlOSExpERCOSSimu methodsFor: 'recovered'!
endOperatingModes
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) wrapperStream.
    recoveredValue1 := recoveredValue0.
    (recoveredValue1) newlinePutAll: ('{ -1, (T_opModePtr) NULL } };').
    (recoveredValue0) decIndent.
    ^self
! !

"ASDBase.ic method 0x20108a90; bytecode file offset 0xa05358"
!SGIlOSExpERCOSSimu methodsFor: 'recovered'!
endOperatingSystem
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) owner.
    recoveredValue1 := (self) declHeader.
    (recoveredValue0) endRegionBanner: ('Function Declarations') description: ('Function declarations - operating system') on: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x201369d0; bytecode file offset 0xa3329c"
!SGIlOSExpERCOSSimu methodsFor: 'recovered'!
initTask: recoveredArg1 id: recoveredArg2 prio: recoveredArg3 maxActive: recoveredArg4 procs: recoveredArg5 opModes: recoveredArg6
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := (self) owner.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := recoveredArg3.
    recoveredValue4 := recoveredArg4.
    recoveredValue5 := recoveredArg5.
    recoveredValue6 := recoveredArg6.
    (recoveredValue0) swTask: (recoveredValue1) id: (recoveredValue2) prio: (recoveredValue3) maxActive: (recoveredValue4) procs: (recoveredValue5) opModes: (recoveredValue6).
    ^self
! !

"ASDBase.ic method 0x2013c918; bytecode file offset 0xa391e4"
!SGIlOSExpERCOSSimu methodsFor: 'recovered'!
funcDeclSetDT
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := (self) owner.
    recoveredValue1 := (self) owner.
    recoveredValue2 := (recoveredValue1) ileInt32Unsigned.
    recoveredValue3 := (recoveredValue0) asBaseType: (recoveredValue2).
    recoveredValue4 := ('void setDeltaT (') , (recoveredValue3).
    recoveredValue5 := (recoveredValue4) , (' t)').
    ^recoveredValue5
! !

"ASDBase.ic method 0x201539a8; bytecode file offset 0xa50284"
!SGIlOSExpERCOSSimu methodsFor: 'recovered'!
nextPutTaskTablesOn: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredValue0.
    (recoveredValue1) newlinePutAll: ('swTaskTable, ').
    recoveredValue2 := recoveredValue0.
    (recoveredValue2) newlinePutAll: ('hwTaskTable, ').
    (recoveredValue0) newlinePutAll: ('opModeTable, ').
    ^self
! !

"ASDBase.ic method 0x20160e38; bytecode file offset 0xa5d708"
!SGIlOSExpERCOSSimu methodsFor: 'recovered'!
endDynamics
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) wrapperStream.
    (recoveredValue0) decIndent.
    recoveredValue1 := (self) owner.
    recoveredValue2 := (self) block.
    (recoveredValue1) endRegionBanner: ('Task Definitions') description: ('Task and operating mode definitions') on: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x201814d4; bytecode file offset 0xa7ddd0"
!SGIlOSExpERCOSSimu methodsFor: 'recovered'!
hwTasks
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) owner.
    recoveredValue1 := (self) block.
    (recoveredValue0) sectionBanner: ('Hardware task definitions') on: (recoveredValue1).
    recoveredValue2 := (self) wrapperStream.
    recoveredValue3 := recoveredValue2.
    (recoveredValue3) newlinePutAll: ('T_hwTaskRef hwTaskTable[] = {').
    (recoveredValue2) incIndent.
    ^self
! !

"ASDBase.ic method 0x201814fc; bytecode file offset 0xa7ddd0"
!SGIlOSExpERCOSSimu methodsFor: 'recovered'!
operatingModes
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) owner.
    recoveredValue1 := (self) block.
    (recoveredValue0) sectionBanner: ('Operating mode definitions') on: (recoveredValue1).
    recoveredValue2 := (self) wrapperStream.
    recoveredValue3 := recoveredValue2.
    (recoveredValue3) newlinePutAll: ('T_opModeRef opModeTable[] = {').
    (recoveredValue2) incIndent.
    ^self
! !

"ASDBase.ic method 0x201af510; bytecode file offset 0xaabde4"
!SGIlOSExpERCOSSimu methodsFor: 'recovered'!
funcDeclSetDTIntecrio
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 |
    recoveredValue0 := (self) owner.
    recoveredValue1 := (recoveredValue0) moduleName.
    recoveredValue2 := ('void setDeltaT_') , (recoveredValue1).
    recoveredValue3 := (recoveredValue2) , ('(').
    recoveredValue4 := (self) owner.
    recoveredValue5 := (self) owner.
    recoveredValue6 := (recoveredValue5) ileInt32Unsigned.
    recoveredValue7 := (recoveredValue4) asBaseType: (recoveredValue6).
    recoveredValue8 := (recoveredValue3) , (recoveredValue7).
    recoveredValue9 := (recoveredValue8) , (' t)').
    ^recoveredValue9
! !

"ASDBase.ic method 0x201b5134; bytecode file offset 0xab1a00"
!SGIlOSExpERCOSSimu methodsFor: 'recovered'!
logMsg: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) generator.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) dataLogging.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) owner.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack0) pushTypedExpr: (recoveredStack1).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := (recoveredStack0) owner.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := (recoveredStack1) type.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            (recoveredStack0) logData: (recoveredStack1).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201c99e0; bytecode file offset 0xac62b4"
!SGIlOSExpERCOSSimu methodsFor: 'recovered'!
beginDynamics
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := (self) owner.
    recoveredValue1 := (self) body.
    (recoveredValue0) insertIntecrioDefine: (recoveredValue1).
    recoveredValue2 := (self) owner.
    recoveredValue3 := (self) osLabel.
    recoveredValue4 := (recoveredValue3) , (' configuration').
    recoveredValue5 := (self) body.
    (recoveredValue2) beginRegionBanner: ('OS Configuration') description: (recoveredValue4) on: (recoveredValue5).
    ^self
! !

"ASDBase.ic method 0x201f8ab4; bytecode file offset 0xaf5384"
!SGIlOSExpERCOSSimu methodsFor: 'recovered'!
endEvents
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredLocal1 := 'void initializeEvents (void)'.
    recoveredValue0 := (self) block.
    recoveredValue1 := recoveredValue0.
    recoveredValue2 := recoveredLocal1.
    (recoveredValue1) newlinePutAll: (recoveredValue2).
    (recoveredValue0) nextPutAll: (' { } ').
    recoveredValue3 := (self) declHeader.
    recoveredValue4 := recoveredValue3.
    recoveredValue5 := recoveredLocal1.
    (recoveredValue4) newlinePutAll: (recoveredValue5).
    (recoveredValue3) nextPut: ($;).
    ^self
! !

"ASDBase.ic method 0x2021d740; bytecode file offset 0xb1a03c"
!SGIlOSExpERCOSSimu methodsFor: 'recovered'!
initOpMode: recoveredArg1 id: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 |
    recoveredValue0 := (self) wrapperStream.
    recoveredValue1 := recoveredValue0.
    (recoveredValue1) newlinePutAll: ('{ ').
    recoveredValue2 := recoveredValue0.
    recoveredValue3 := recoveredArg2.
    recoveredValue4 := (recoveredValue3) asCValue.
    (recoveredValue2) nextPutAll: (recoveredValue4).
    recoveredValue5 := recoveredValue0.
    (recoveredValue5) listSeparator.
    recoveredValue6 := recoveredValue0.
    (recoveredValue6) nextPutAll: ('&opMode').
    recoveredValue7 := recoveredValue0.
    recoveredValue8 := recoveredArg1.
    (recoveredValue7) nextPutAll: (recoveredValue8).
    (recoveredValue0) nextPutAll: ('},').
    ^self
! !

"ASDBase.ic method 0x2021d768; bytecode file offset 0xb1a03c"
!SGIlOSExpERCOSSimu methodsFor: 'recovered'!
initSwTask: recoveredArg1 id: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 |
    recoveredValue0 := (self) wrapperStream.
    recoveredValue1 := recoveredValue0.
    (recoveredValue1) newlinePutAll: ('{ ').
    recoveredValue2 := recoveredValue0.
    recoveredValue3 := recoveredArg2.
    recoveredValue4 := (recoveredValue3) asCValue.
    (recoveredValue2) nextPutAll: (recoveredValue4).
    recoveredValue5 := recoveredValue0.
    (recoveredValue5) listSeparator.
    recoveredValue6 := recoveredValue0.
    (recoveredValue6) nextPutAll: ('&').
    recoveredValue7 := recoveredValue0.
    recoveredValue8 := recoveredArg1.
    (recoveredValue7) nextPutAll: (recoveredValue8).
    (recoveredValue0) nextPutAll: ('},').
    ^self
! !

"ASDBase.ic method 0x202280bc; bytecode file offset 0xb24998"
!SGIlOSExpERCOSSimu methodsFor: 'recovered'!
operatingSystem: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := recoveredArg1.
    super operatingSystem: (recoveredValue0).
    recoveredValue1 := (self) owner.
    recoveredValue2 := recoveredValue1.
    recoveredValue3 := (self) wrapperStream.
    (recoveredValue2) beginRegionBanner: ('Simulation Code') description: ('Simulation instruction code') on: (recoveredValue3).
    recoveredValue4 := (self) declHeader.
    (recoveredValue1) beginRegionBanner: ('Function Declarations') description: ('Function declarations - operating system') on: (recoveredValue4).
    ^self
! !

"ASDBase.ic method 0x2022c598; bytecode file offset 0xb28e68"
!SGIlOSExpERCOSSimu methodsFor: 'recovered'!
sendMsg: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 |
    (self) interruptsSuspend.
    recoveredValue0 := (self) owner.
    recoveredValue1 := (recoveredValue0) popExpr.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := (self) owner.
    recoveredValue3 := recoveredLocal1.
    (recoveredValue2) pushExpr: (recoveredValue3).
    recoveredValue4 := (self) owner.
    recoveredValue5 := recoveredLocal1.
    (recoveredValue4) pushExpr: (recoveredValue5).
    recoveredValue6 := (self) owner.
    recoveredValue7 := recoveredArg1.
    (recoveredValue6) assign: (recoveredValue7).
    recoveredValue8 := (self) owner.
    (recoveredValue8) endStmnt.
    (self) interruptsResume.
    ^self
! !

"ASDBase.ic method 0x202313e4; bytecode file offset 0xb2dcc4"
!SGIlOSExpERCOSSimu methodsFor: 'recovered'!
swTasksBanner
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := (self) block.
    (recoveredValue0) newline.
    recoveredValue1 := (self) owner.
    recoveredValue2 := recoveredValue1.
    recoveredValue3 := (self) block.
    (recoveredValue2) beginRegionBanner: ('Task Definitions') description: ('Task and operating mode definitions') on: (recoveredValue3).
    recoveredValue4 := recoveredValue1.
    recoveredValue5 := (self) block.
    (recoveredValue4) sectionBanner: ('Software task definitions') on: (recoveredValue5).
    recoveredValue6 := (self) owner.
    recoveredValue7 := (recoveredValue6) declHeader.
    (recoveredValue1) paragraphBanner: ('Tasks') on: (recoveredValue7).
    ^self
! !

"ASDBase.ic method 0x20266844; bytecode file offset 0xb63114"
!SGIlOSExpERCOSSimu methodsFor: 'recovered'!
osRegisterBanksCoop: recoveredArg1 sw: recoveredArg2
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 |
    recoveredLocal1 := 1.
    recoveredValue0 := (self) block.
    recoveredValue1 := recoveredValue0.
    (recoveredValue1) newlinePutAll: ('iram T_regBank _regBanks[').
    recoveredValue2 := recoveredValue0.
    recoveredValue3 := recoveredLocal1.
    recoveredValue4 := (recoveredValue3) asCValue.
    (recoveredValue2) nextPutAll: (recoveredValue4).
    recoveredValue5 := recoveredValue0.
    (recoveredValue5) nextPutAll: ('];').
    recoveredValue6 := recoveredValue0.
    (recoveredValue6) newlinePutAll: ('T_regBank *const _regBankPtrs[').
    recoveredValue7 := recoveredValue0.
    recoveredValue8 := recoveredArg2.
    recoveredValue9 := (recoveredValue8) asCValue.
    (recoveredValue7) nextPutAll: (recoveredValue9).
    (recoveredValue0) nextPutAll: ('];').
    ^self
! !

"ASDBase.ic method 0x2026a604; bytecode file offset 0xb66eec"
!SGIlOSExpERCOSSimu methodsFor: 'recovered'!
swTasks
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := (self) wrapperStream.
    recoveredValue1 := recoveredValue0.
    (recoveredValue1) newlinePutAll: ('DEFINE_L1_TASK (__L1_Prio)').
    recoveredValue2 := recoveredValue0.
    (recoveredValue2) newlinePutAll: ('T_swTaskRef swTaskTable[] = {').
    (recoveredValue0) incIndent.
    (self) swTasksBanner.
    recoveredValue3 := (self) owner.
    recoveredValue4 := (self) osLabel.
    recoveredValue5 := (recoveredValue4) , (' configuration').
    recoveredValue6 := (self) body.
    (recoveredValue3) endRegionBanner: ('OS Configuration') description: (recoveredValue5) on: (recoveredValue6).
    ^self
! !

"ASDBase.ic method 0x2026d114; bytecode file offset 0xb699f8"
!SGIlOSExpERCOSSimu methodsFor: 'recovered'!
deadlines: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 |
    recoveredValue0 := (self) owner.
    recoveredValue1 := (self) block.
    (recoveredValue0) sectionBanner: ('Deadline definitions') on: (recoveredValue1).
    recoveredValue2 := (self) block.
    recoveredValue3 := (recoveredValue2) asAnsiCCodeStream.
    recoveredValue4 := recoveredValue3.
    recoveredValue5 := recoveredArg1.
    recoveredValue6 := (recoveredValue5) asCValue.
    (recoveredValue4) cppDefine: ('NOF_DEADLINES') as: (recoveredValue6).
    recoveredValue7 := recoveredValue3.
    recoveredValue8 := (self) owner.
    recoveredValue9 := (recoveredValue8) constInit: ('byte _nofDeadlines') expr: ('NOF_DEADLINES').
    (recoveredValue7) newlinePutAll: (recoveredValue9).
    (recoveredValue3) newlinePutAll: ('T_deadline _deadlines[NOF_DEADLINES];').
    ^self
! !

"ASDBase.ic method 0x202feb04; bytecode file offset 0xbfb3e0"
!SGIlOSExpERCOSSimu methodsFor: 'recovered'!
hwTask: recoveredArg1 id: recoveredArg2 event: recoveredArg3 prio: recoveredArg4 procs: recoveredArg5 opModes: recoveredArg6
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredStack7 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack3 := recoveredArg3.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack4 := recoveredArg4.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack5 := recoveredArg5.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack6 := recoveredArg6.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            super hwTask: (recoveredStack1) id: (recoveredStack2) event: (recoveredStack3) prio: (recoveredStack4) procs: (recoveredStack5) opModes: (recoveredStack6).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := recoveredArg2.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := (recoveredStack0) isString.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 52] ifFalse: [recoveredPC := 22].
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := (recoveredStack0) wrapperStream.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack2 := '{ '.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            (recoveredStack1) newlinePutAll: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack2 := (recoveredStack2) asCValue.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            (recoveredStack1) nextPutAll: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack2 := ', &hwTask'.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            (recoveredStack1) nextPutAll: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack2 := (recoveredStack2) asCValue.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            (recoveredStack1) nextPutAll: (recoveredStack2).
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack1 := '},'.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            (recoveredStack0) nextPutAll: (recoveredStack1).
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2031989c; bytecode file offset 0xc16178"
!SGIlOSExpERCOSSimu methodsFor: 'recovered'!
receiveMsg: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            (recoveredStack0) interruptsSuspend.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack0 := (recoveredStack0) popExpr.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := (recoveredStack0) getImplType.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) isRBQuantFloat.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 26].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := (recoveredStack0) owner.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := (recoveredStack0) ileFloat64.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredPC := 29.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := (recoveredStack0) getImplType.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := (recoveredStack0) owner.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            (recoveredStack0) pushExpr: (recoveredStack1).
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := (recoveredStack0) owner.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            (recoveredStack0) pushExpr: (recoveredStack1).
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack0 := (recoveredStack0) owner.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            (recoveredStack0) assign: (recoveredStack1).
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack0 := (recoveredStack0) owner.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            (recoveredStack0) endStmnt.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            (recoveredStack0) interruptsResume.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2033d268; bytecode file offset 0xc39b4c"
!SGIlOSExpERCOSSimu methodsFor: 'recovered'!
initialOpMode: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 |
    recoveredLocal1 := 'void startOS (void)'.
    recoveredValue0 := (self) wrapperStream.
    recoveredValue1 := recoveredValue0.
    recoveredValue2 := recoveredLocal1.
    (recoveredValue1) newlinePutAll: (recoveredValue2).
    recoveredValue3 := recoveredValue0.
    (recoveredValue3) nextPutAll: (' { _startERCOS (&opMode').
    recoveredValue4 := recoveredValue0.
    recoveredValue5 := recoveredArg1.
    (recoveredValue4) nextPutAll: (recoveredValue5).
    (recoveredValue0) nextPutAll: ('); }').
    recoveredValue6 := (self) owner.
    recoveredValue7 := (self) owner.
    recoveredValue8 := (recoveredValue7) declHeader.
    (recoveredValue6) paragraphBanner: ('Simulation') on: (recoveredValue8).
    recoveredValue9 := (self) owner.
    recoveredValue10 := (self) declHeader.
    (recoveredValue9) insertIntecrioDefine: (recoveredValue10).
    recoveredValue11 := (self) owner.
    recoveredValue12 := (recoveredValue11) declHeader.
    recoveredValue13 := recoveredValue12.
    recoveredValue14 := recoveredLocal1.
    (recoveredValue13) newlinePutAll: (recoveredValue14).
    (recoveredValue12) nextPut: ($;).
    ^self
! !

"ASDBase.ic method 0x20345fe8; bytecode file offset 0xc428c4"
!SGIlOSExpERCOSSimu methodsFor: 'recovered'!
timer: recoveredArg1 number: recoveredArg2 taskId: recoveredArg3 delay: recoveredArg4 period: recoveredArg5
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 |
    recoveredValue0 := (self) block.
    recoveredValue1 := recoveredValue0.
    (recoveredValue1) newlinePutAll: ('_startTimerRel (').
    recoveredValue2 := recoveredValue0.
    recoveredValue3 := recoveredArg2.
    recoveredValue4 := (recoveredValue3) asCValue.
    (recoveredValue2) nextPutAll: (recoveredValue4).
    recoveredValue5 := recoveredValue0.
    (recoveredValue5) nextPutAll: (', activateSw').
    recoveredValue6 := recoveredValue0.
    recoveredValue7 := recoveredArg3.
    recoveredValue8 := (recoveredValue7) asCValue.
    (recoveredValue6) nextPutAll: (recoveredValue8).
    recoveredValue9 := recoveredValue0.
    (recoveredValue9) nextPut: ($,).
    recoveredValue10 := recoveredValue0.
    (recoveredValue10) nextPutAll: ('MICROSECONDS_TO_TICKS (').
    recoveredValue11 := recoveredValue0.
    recoveredValue12 := recoveredArg4.
    recoveredValue13 := (recoveredValue12) asCValue.
    (recoveredValue11) nextPutAll: (recoveredValue13).
    recoveredValue14 := recoveredValue0.
    (recoveredValue14) nextPutAll: ('),').
    recoveredValue15 := recoveredValue0.
    (recoveredValue15) nextPutAll: ('MICROSECONDS_TO_TICKS (').
    recoveredValue16 := recoveredValue0.
    recoveredValue17 := recoveredArg5.
    recoveredValue18 := (recoveredValue17) asCValue.
    (recoveredValue16) nextPutAll: (recoveredValue18).
    (recoveredValue0) nextPutAll: ('));').
    ^self
! !

"ASDBase.ic method 0x2034ee10; bytecode file offset 0xc4b6f0"
!SGIlOSExpERCOSSimu methodsFor: 'recovered'!
osInterruptMasksCoop: recoveredArg1 preemp: recoveredArg2 hw: recoveredArg3 sw: recoveredArg4
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 |
    recoveredLocal1 := 4095.
    recoveredValue0 := (self) block.
    recoveredValue1 := recoveredValue0.
    (recoveredValue1) newlinePutAll: ('const uint _lsIntMask = (((MAX_LS_INT_LVL)<<12) | ').
    recoveredValue2 := recoveredValue0.
    recoveredValue3 := recoveredLocal1.
    recoveredValue4 := (self) asHex: (recoveredValue3).
    (recoveredValue2) nextPutAll: (recoveredValue4).
    recoveredValue5 := recoveredValue0.
    (recoveredValue5) nextPutAll: ('u);').
    recoveredValue6 := recoveredValue0.
    (recoveredValue6) newlinePutAll: ('const uint _hsIntMask = (((MAX_HS_INT_LVL)<<12) | ').
    recoveredValue7 := recoveredValue0.
    recoveredValue8 := recoveredLocal1.
    recoveredValue9 := (self) asHex: (recoveredValue8).
    (recoveredValue7) nextPutAll: (recoveredValue9).
    recoveredValue10 := recoveredValue0.
    (recoveredValue10) nextPutAll: ('u);').
    recoveredValue11 := recoveredValue0.
    (recoveredValue11) newlinePutAll: ('const uint _intMaskTab[').
    recoveredValue12 := recoveredValue0.
    recoveredValue13 := recoveredArg4.
    recoveredValue14 := (recoveredValue13) asCValue.
    (recoveredValue12) nextPutAll: (recoveredValue14).
    recoveredValue15 := recoveredValue0.
    (recoveredValue15) nextPutAll: ('];').
    (recoveredValue0) newlinePutAll: ('const byte _schedIntCtrlTab[NOF_SW_LVLS];').
    ^self
! !

"ASDBase.ic method 0x2035a900; bytecode file offset 0xc571f8"
!SGIlOSExpERCOSSimu methodsFor: 'recovered'!
timers: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 |
    recoveredValue0 := (self) owner.
    recoveredValue1 := (self) block.
    (recoveredValue0) sectionBanner: ('Timer definitions') on: (recoveredValue1).
    recoveredValue2 := (self) block.
    recoveredValue3 := (recoveredValue2) asAnsiCCodeStream.
    recoveredValue4 := recoveredValue3.
    recoveredValue5 := recoveredArg1.
    recoveredValue6 := (recoveredValue5) asCValue.
    (recoveredValue4) cppDefine: ('NOF_TIMERS') as: (recoveredValue6).
    recoveredValue7 := recoveredValue3.
    recoveredValue8 := (self) owner.
    recoveredValue9 := (recoveredValue8) constInit: ('byte _nofTimers') expr: ('NOF_TIMERS').
    (recoveredValue7) newlinePutAll: (recoveredValue9).
    recoveredValue10 := recoveredValue3.
    (recoveredValue10) newlinePutAll: ('T_callBackPtr _timerFuncPtrs[NOF_TIMERS];').
    recoveredValue11 := recoveredValue3.
    (recoveredValue11) newlinePutAll: ('T_timerPeriod _periods[NOF_TIMERS];').
    recoveredValue12 := recoveredValue3.
    (recoveredValue12) newlinePutAll: ('T_timerWord _cmpRegs[NOF_TIMERS+1];').
    recoveredValue13 := recoveredValue3.
    (recoveredValue13) newlinePutAll: ('uint _indexTab[NOF_TIMERS+1];').
    recoveredValue14 := (self) owner.
    recoveredValue15 := (recoveredValue14) constInit: ('uint _timerInputSel') expr: ('(TIMER_INPUT_SEL)').
    (recoveredValue3) newlinePutAll: (recoveredValue15).
    ^self
! !

"ASDBase.ic method 0x203993bc; bytecode file offset 0xc95cb4"
!SGIlOSExpERCOSSimu methodsFor: 'recovered'!
event: recoveredArg1 id: recoveredArg2 regbank: recoveredArg3 prio: recoveredArg4 taskId: recoveredArg5
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 recoveredValue21 recoveredValue22 recoveredValue23 |
    recoveredValue0 := recoveredArg2.
    recoveredValue1 := (recoveredValue0) asCValue.
    recoveredValue2 := ('ISR(') , (recoveredValue1).
    recoveredValue3 := (recoveredValue2) , (') USING(REGBANK').
    recoveredValue4 := (0) asCValue.
    recoveredValue5 := (recoveredValue3) , (recoveredValue4).
    recoveredValue6 := (recoveredValue5) , (') ').
    recoveredLocal2 := recoveredValue6.
    recoveredValue7 := recoveredLocal2.
    recoveredValue8 := (recoveredValue7) , ('void hwHandler').
    recoveredValue9 := recoveredArg1.
    recoveredValue10 := (recoveredValue8) , (recoveredValue9).
    recoveredValue11 := (recoveredValue10) , ('(void)').
    recoveredLocal1 := recoveredValue11.
    recoveredValue12 := (self) block.
    recoveredValue13 := recoveredValue12.
    recoveredValue14 := recoveredLocal1.
    (recoveredValue13) newlinePutAll: (recoveredValue14).
    recoveredValue15 := recoveredValue12.
    (recoveredValue15) nextPutAll: (' {').
    recoveredValue16 := recoveredValue12.
    (recoveredValue16) incIndent.
    recoveredValue17 := recoveredValue12.
    (recoveredValue17) newlinePutAll: ('ENTER_ISR').
    recoveredValue18 := recoveredValue12.
    (recoveredValue18) newlinePutAll: ('_dispatchHwTask(&hwTask').
    recoveredValue19 := recoveredValue12.
    recoveredValue20 := recoveredArg5.
    recoveredValue21 := (recoveredValue20) asCValue.
    (recoveredValue19) nextPutAll: (recoveredValue21).
    recoveredValue22 := recoveredValue12.
    (recoveredValue22) nextPutAll: (');').
    recoveredValue23 := recoveredValue12.
    (recoveredValue23) newlinePutAll: ('LEAVE_ISR }').
    (recoveredValue12) decIndent.
    ^self
! !

"ASDBase.ic method 0x203e8530; bytecode file offset 0xce4e20"
!SGIlOSExpERCOSSimu methodsFor: 'recovered'!
genOSDtVar: recoveredArg1 externalIntegration: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) getImplType.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) isRBFloat.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredPC := 22.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := (recoveredStack1) owner.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := (recoveredStack1) ileInt32Unsigned.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := (recoveredStack1) getImplType.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := (recoveredStack1) isRBFloat.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 28] ifFalse: [recoveredPC := 73].
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := (recoveredStack1) getImplType.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := (recoveredStack1) isRBQuantFloat.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 36] ifFalse: [recoveredPC := 46].
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack1 := (recoveredStack1) owner.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := (recoveredStack1) ileFloat64.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := (recoveredStack1) asCType.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredPC := 51.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack1 := (recoveredStack1) getImplType.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack1 := (recoveredStack1) asCType.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack1 := (recoveredStack1) generator.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack1 := (recoveredStack1) ileBuilder.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack2 := #().
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack3 := '(('.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack4 := recoveredLocal1.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack3 := (recoveredStack3) , (recoveredStack4).
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack4 := ')t / 1000000.0)'.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack3 := (recoveredStack3) , (recoveredStack4).
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack4 := recoveredArg1.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack1 := (recoveredStack1) createANSICExpr: (recoveredStack2) template: (recoveredStack3) type: (recoveredStack4).
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack1 := (recoveredStack1) generator.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack1 := (recoveredStack1) ileBuilder.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack2 := #().
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack3 := 't'.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack4 := recoveredArg1.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack1 := (recoveredStack1) createANSICExpr: (recoveredStack2) template: (recoveredStack3) type: (recoveredStack4).
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x20415ddc; bytecode file offset 0xd126ec"
!SGIlOSExpERCOSSimu methodsFor: 'recovered'!
startingOpMode: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 recoveredValue21 recoveredValue22 recoveredValue23 |
    recoveredValue0 := (self) owner.
    recoveredValue1 := (self) wrapperStream.
    (recoveredValue0) paragraphBanner: ('Initializing of operating system') on: (recoveredValue1).
    recoveredLocal1 := 'T_ercosAdmin *initializeOperatingSystem (void)'.
    (self) nextPutAllDebugWrapper.
    recoveredValue2 := (self) wrapperStream.
    recoveredValue3 := recoveredValue2.
    (recoveredValue3) newlinePutAll: ('T_ercosAdmin ercosAdmin = {').
    (recoveredValue2) incIndent.
    recoveredValue4 := (self) wrapperStream.
    (self) nextPutTaskTablesOn: (recoveredValue4).
    recoveredValue5 := (self) wrapperStream.
    recoveredValue6 := recoveredValue5.
    recoveredValue7 := recoveredArg1.
    recoveredValue8 := (recoveredValue7) asCValue.
    (recoveredValue6) newlinePutAll: (recoveredValue8).
    recoveredValue9 := recoveredValue5.
    (recoveredValue9) decIndent.
    recoveredValue10 := recoveredValue5.
    (recoveredValue10) newlinePutAll: ('};').
    recoveredValue11 := recoveredValue5.
    recoveredValue12 := recoveredLocal1.
    (recoveredValue11) newlinePutAll: (recoveredValue12).
    recoveredValue13 := recoveredValue5.
    (recoveredValue13) openCompoundStmnt.
    recoveredValue14 := recoveredValue5.
    (recoveredValue14) returnStmnt: ('&ercosAdmin').
    (recoveredValue5) closeCompoundStmnt.
    recoveredValue15 := (self) owner.
    recoveredValue16 := (self) wrapperStream.
    (recoveredValue15) endRegionBanner: ('Simulation Code') description: ('Simulation instruction code') on: (recoveredValue16).
    recoveredValue17 := (self) owner.
    recoveredValue18 := (self) wrapperStream.
    (recoveredValue17) insertIntecrioDefineEnd: (recoveredValue18).
    recoveredValue19 := (self) declHeader.
    recoveredValue20 := recoveredValue19.
    recoveredValue21 := recoveredLocal1.
    (recoveredValue20) newlinePutAll: (recoveredValue21).
    (recoveredValue19) nextPut: ($;).
    recoveredValue22 := (self) owner.
    recoveredValue23 := (self) declHeader.
    (recoveredValue22) insertIntecrioDefineEnd: (recoveredValue23).
    ^self
! !

"ASDBase.ic method 0x204c1374; bytecode file offset 0xdbdc88"
!SGIlOSExpERCOSSimu methodsFor: 'recovered'!
operatingMode: recoveredArg1 id: recoveredArg2 initProcs: recoveredArg3
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 recoveredValue21 recoveredValue22 recoveredValue23 recoveredValue24 recoveredValue25 recoveredValue26 recoveredValue27 recoveredValue28 recoveredValue29 recoveredValue30 recoveredValue31 recoveredValue32 recoveredValue33 recoveredValue34 recoveredValue35 recoveredValue36 recoveredValue37 recoveredValue38 recoveredValue39 recoveredValue40 recoveredValue41 recoveredValue42 recoveredValue43 recoveredValue44 |
    recoveredValue0 := recoveredArg2.
    recoveredValue1 := (recoveredValue0) asCValue.
    recoveredValue2 := ('static void genIniProc') , (recoveredValue1).
    recoveredValue3 := (recoveredValue2) , (' (void)').
    recoveredLocal1 := recoveredValue3.
    recoveredValue4 := (self) block.
    recoveredValue5 := recoveredValue4.
    recoveredValue6 := recoveredArg1.
    recoveredValue7 := ('Operating mode "') , (recoveredValue6).
    recoveredValue8 := (recoveredValue7) , ('"').
    (recoveredValue5) paragraphBanner: (recoveredValue8).
    recoveredValue9 := recoveredValue4.
    recoveredValue10 := recoveredLocal1.
    (recoveredValue9) newlinePutAll: (recoveredValue10).
    recoveredValue11 := recoveredValue4.
    (recoveredValue11) nextPut: ($;).
    recoveredValue12 := recoveredValue4.
    (recoveredValue12) newlinePutAll: ('/* process list */').
    recoveredValue13 := recoveredValue4.
    (recoveredValue13) newlinePutAll: ('T_processPtrTab iniTabOpMode').
    recoveredValue14 := recoveredValue4.
    recoveredValue15 := recoveredArg2.
    recoveredValue16 := (recoveredValue15) asCValue.
    (recoveredValue14) nextPutAll: (recoveredValue16).
    recoveredValue17 := recoveredValue4.
    (recoveredValue17) nextPutAll: (' = { ').
    (recoveredValue4) incIndent.
    recoveredValue18 := recoveredArg3.
    recoveredValue19 := (self) block.
    (self) processRefs: (recoveredValue18) on: (recoveredValue19).
    recoveredValue20 := (self) block.
    recoveredValue21 := recoveredValue20.
    (recoveredValue21) newlinePutAll: ('genIniProc').
    recoveredValue22 := recoveredValue20.
    recoveredValue23 := recoveredArg2.
    recoveredValue24 := (recoveredValue23) asCValue.
    (recoveredValue22) nextPutAll: (recoveredValue24).
    recoveredValue25 := recoveredValue20.
    (recoveredValue25) nextPut: ($,).
    recoveredValue26 := recoveredValue20.
    (recoveredValue26) newlinePutAll: ('_terminateInitSeq').
    recoveredValue27 := recoveredValue20.
    (recoveredValue27) decIndent.
    recoveredValue28 := recoveredValue20.
    (recoveredValue28) newlinePutAll: ('};').
    recoveredValue29 := recoveredValue20.
    (recoveredValue29) newlinePutAll: ('T_opModeDesc opMode').
    recoveredValue30 := recoveredValue20.
    recoveredValue31 := recoveredArg1.
    (recoveredValue30) nextPutAll: (recoveredValue31).
    recoveredValue32 := recoveredValue20.
    (recoveredValue32) nextPutAll: (' = { ').
    recoveredValue33 := recoveredValue20.
    (recoveredValue33) incIndent.
    recoveredValue34 := recoveredValue20.
    (recoveredValue34) newlinePutAll: ('iniTabOpMode').
    recoveredValue35 := recoveredValue20.
    recoveredValue36 := recoveredArg2.
    recoveredValue37 := (recoveredValue36) asCValue.
    (recoveredValue35) nextPutAll: (recoveredValue37).
    recoveredValue38 := recoveredValue20.
    (recoveredValue38) decIndent.
    recoveredValue39 := recoveredValue20.
    (recoveredValue39) newlinePutAll: ('};').
    recoveredValue40 := recoveredValue20.
    recoveredValue41 := recoveredLocal1.
    (recoveredValue40) newlinePutAll: (recoveredValue41).
    recoveredValue42 := recoveredValue20.
    (recoveredValue42) nextPutAll: (' {').
    (recoveredValue20) incIndent.
    recoveredValue43 := recoveredArg1.
    recoveredValue44 := recoveredArg2.
    (self) initOpMode: (recoveredValue43) id: (recoveredValue44).
    ^self
! !

"ASDBase.ic method 0x2050ca30; bytecode file offset 0xe0935c"
!SGIlOSExpERCOSSimu methodsFor: 'recovered'!
swTask: recoveredArg1 id: recoveredArg2 prio: recoveredArg3 maxActive: recoveredArg4 procs: recoveredArg5 opModes: recoveredArg6
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 recoveredValue21 recoveredValue22 recoveredValue23 recoveredValue24 recoveredValue25 recoveredValue26 recoveredValue27 recoveredValue28 recoveredValue29 recoveredValue30 recoveredValue31 recoveredValue32 recoveredValue33 recoveredValue34 recoveredValue35 recoveredValue36 recoveredValue37 recoveredValue38 recoveredValue39 recoveredValue40 recoveredValue41 recoveredValue42 recoveredValue43 recoveredValue44 recoveredValue45 recoveredValue46 recoveredValue47 recoveredValue48 recoveredValue49 recoveredValue50 recoveredValue51 recoveredValue52 recoveredValue53 recoveredValue54 recoveredValue55 |
    recoveredValue0 := ('Rnz') == ('EHI_80769').
    recoveredValue1 := (recoveredValue0) == ('Reverted').
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := (recoveredValue2) asCValue.
    recoveredValue4 := ('void activateSw') , (recoveredValue3).
    recoveredValue5 := (recoveredValue4) , ('(void)').
    recoveredLocal2 := recoveredValue5.
    recoveredValue6 := recoveredArg2.
    recoveredValue7 := (recoveredValue6) asCValue.
    recoveredValue8 := ('tabSw') , (recoveredValue7).
    recoveredLocal1 := recoveredValue8.
    recoveredValue9 := (self) block.
    recoveredValue10 := recoveredValue9.
    recoveredValue11 := recoveredArg1.
    recoveredValue12 := ('Software task "') , (recoveredValue11).
    recoveredValue13 := (recoveredValue12) , ('"').
    (recoveredValue10) paragraphBanner: (recoveredValue13).
    recoveredValue14 := recoveredValue9.
    (recoveredValue14) newlinePutAll: ('/* process list */').
    recoveredValue15 := recoveredValue9.
    recoveredValue16 := recoveredLocal1.
    recoveredValue17 := ('T_processPtrTab ') , (recoveredValue16).
    recoveredValue18 := (recoveredValue17) , (' = { ').
    (recoveredValue15) newlinePutAll: (recoveredValue18).
    (recoveredValue9) incIndent.
    recoveredValue19 := recoveredArg5.
    recoveredValue20 := (self) block.
    (self) processRefs: (recoveredValue19) on: (recoveredValue20).
    recoveredValue21 := (self) block.
    recoveredValue22 := recoveredValue21.
    (recoveredValue22) newlinePutAll: ('_terminateSwTask').
    recoveredValue23 := recoveredValue21.
    (recoveredValue23) decIndent.
    recoveredValue24 := recoveredValue21.
    (recoveredValue24) newlinePutAll: ('};').
    recoveredValue25 := recoveredValue21.
    recoveredValue26 := recoveredArg2.
    recoveredValue27 := (recoveredValue26) asCValue.
    recoveredValue28 := ('newDefineSwTask (') , (recoveredValue27).
    recoveredValue29 := (recoveredValue28) , (',').
    recoveredValue30 := recoveredLocal1.
    recoveredValue31 := (recoveredValue29) , (recoveredValue30).
    recoveredValue32 := (recoveredValue31) , (',').
    recoveredValue33 := recoveredArg3.
    recoveredValue34 := (recoveredValue33) asCValue.
    recoveredValue35 := (recoveredValue32) , (recoveredValue34).
    recoveredValue36 := (recoveredValue35) , (',').
    recoveredValue37 := recoveredArg4.
    recoveredValue38 := (recoveredValue37) asCValue.
    recoveredValue39 := (recoveredValue36) , (recoveredValue38).
    recoveredValue40 := (recoveredValue39) , (',').
    recoveredValue41 := recoveredArg1.
    recoveredValue42 := (recoveredValue40) , (recoveredValue41).
    recoveredValue43 := (recoveredValue42) , (');').
    (recoveredValue25) newlinePutAll: (recoveredValue43).
    recoveredValue44 := recoveredValue21.
    recoveredValue45 := recoveredLocal2.
    (recoveredValue44) newlinePutAll: (recoveredValue45).
    recoveredValue46 := recoveredValue21.
    (recoveredValue46) openCompoundStmnt.
    recoveredValue47 := recoveredValue21.
    recoveredValue48 := recoveredArg1.
    recoveredValue49 := ('_activateTask (&') , (recoveredValue48).
    recoveredValue50 := (recoveredValue49) , (');').
    (recoveredValue47) newlinePutAll: (recoveredValue50).
    (recoveredValue21) closeCompoundStmnt.
    recoveredValue51 := (self) declHeader.
    recoveredValue52 := recoveredLocal2.
    recoveredValue53 := (recoveredValue52) , (';').
    (recoveredValue51) newlinePutAll: (recoveredValue53).
    recoveredValue54 := recoveredArg1.
    recoveredValue55 := recoveredArg2.
    (self) initSwTask: (recoveredValue54) id: (recoveredValue55).
    ^self
! !

"ASDBase.ic method 0x2054b540; bytecode file offset 0xe47e68"
!SGIlOSExpERCOSSimu methodsFor: 'recovered'!
fifoSizes: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 recoveredValue21 recoveredValue22 recoveredValue23 recoveredValue24 recoveredValue25 recoveredValue26 |
    recoveredValue0 := (self) owner.
    recoveredValue1 := (self) block.
    (recoveredValue0) paragraphBanner: ('Task FIFO structure') on: (recoveredValue1).
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := [:recoveredBlock12Arg1 :recoveredBlock12Arg2 | 
    | recoveredBlock12Value0 recoveredBlock12Value1 recoveredBlock12Value2 recoveredBlock12Value3 recoveredBlock12Value4 recoveredBlock12Value5 recoveredBlock12Value6 recoveredBlock12Value7 recoveredBlock12Value8 recoveredBlock12Value9 recoveredBlock12Value10 recoveredBlock12Value11 recoveredBlock12Value12 recoveredBlock12Value13 recoveredBlock12Value14 recoveredBlock12Value15 recoveredBlock12Value16 recoveredBlock12Value17 recoveredBlock12Value18 recoveredBlock12Value19 |
    recoveredBlock12Value0 := (self) block.
    recoveredBlock12Value1 := (recoveredBlock12Value0) asAnsiCCodeStream.
    recoveredBlock12Value2 := recoveredBlock12Value1.
    recoveredBlock12Value3 := recoveredBlock12Arg2.
    recoveredBlock12Value4 := (recoveredBlock12Value3) + (-1).
    recoveredBlock12Value5 := (recoveredBlock12Value4) asCValue.
    recoveredBlock12Value6 := ('READY_FIFO_SIZE_') , (recoveredBlock12Value5).
    recoveredBlock12Value7 := recoveredBlock12Arg1.
    recoveredBlock12Value8 := (recoveredBlock12Value7) asCValue.
    (recoveredBlock12Value2) cppDefine: (recoveredBlock12Value6) as: (recoveredBlock12Value8).
    recoveredBlock12Value9 := recoveredBlock12Value1.
    (recoveredBlock12Value9) newlinePutAll: ('T_swTaskPtr _taskFifo').
    recoveredBlock12Value10 := recoveredBlock12Value1.
    recoveredBlock12Value11 := recoveredBlock12Arg2.
    recoveredBlock12Value12 := (recoveredBlock12Value11) + (-1).
    recoveredBlock12Value13 := (recoveredBlock12Value12) asCValue.
    (recoveredBlock12Value10) nextPutAll: (recoveredBlock12Value13).
    recoveredBlock12Value14 := recoveredBlock12Value1.
    (recoveredBlock12Value14) nextPutAll: ('[READY_FIFO_SIZE_').
    recoveredBlock12Value15 := recoveredBlock12Value1.
    recoveredBlock12Value16 := recoveredBlock12Arg2.
    recoveredBlock12Value17 := (recoveredBlock12Value16) + (-1).
    recoveredBlock12Value18 := (recoveredBlock12Value17) asCValue.
    (recoveredBlock12Value15) nextPutAll: (recoveredBlock12Value18).
    recoveredBlock12Value19 := (recoveredBlock12Value1) nextPutAll: ('];').
    recoveredBlock12Value19
].
    (recoveredValue2) doWithIndex: (recoveredValue3).
    recoveredValue4 := (self) block.
    recoveredValue5 := recoveredValue4.
    (recoveredValue5) newline.
    recoveredValue6 := recoveredValue4.
    (recoveredValue6) newlinePutAll: ('T_swTaskPtr *').
    recoveredValue7 := recoveredValue4.
    recoveredValue8 := (self) typeQualifierFifoPtr.
    (recoveredValue7) nextPutAll: (recoveredValue8).
    recoveredValue9 := recoveredValue4.
    (recoveredValue9) nextPutAll: ('_taskFifoPtr[NOF_SW_LVLS] = ').
    recoveredValue10 := recoveredValue4.
    (recoveredValue10) nextPut: (${).
    (recoveredValue4) incIndent.
    recoveredValue11 := recoveredArg1.
    recoveredValue12 := (recoveredValue11) size.
    recoveredValue13 := [:recoveredBlock101Arg1 | 
    | recoveredBlock101Value0 recoveredBlock101Value1 recoveredBlock101Value2 recoveredBlock101Value3 recoveredBlock101Value4 recoveredBlock101Value5 |
    recoveredBlock101Value0 := (self) block.
    recoveredBlock101Value1 := recoveredBlock101Value0.
    (recoveredBlock101Value1) newlinePutAll: ('_taskFifo').
    recoveredBlock101Value2 := recoveredBlock101Arg1.
    recoveredBlock101Value3 := (recoveredBlock101Value2) + (-1).
    recoveredBlock101Value4 := (recoveredBlock101Value3) asCValue.
    recoveredBlock101Value5 := (recoveredBlock101Value0) nextPutAll: (recoveredBlock101Value4).
    recoveredBlock101Value5
].
    recoveredValue14 := [
    | recoveredBlock121Value0 recoveredBlock121Value1 |
    recoveredBlock121Value0 := (self) block.
    recoveredBlock121Value1 := (recoveredBlock121Value0) nextPut: ($,).
    recoveredBlock121Value1
].
    (1) to: (recoveredValue12) do: (recoveredValue13) andBetweenDo: (recoveredValue14).
    recoveredValue15 := (self) block.
    recoveredValue16 := recoveredValue15.
    (recoveredValue16) decIndent.
    recoveredValue17 := recoveredValue15.
    (recoveredValue17) newlinePutAll: ('};').
    recoveredValue18 := recoveredValue15.
    (recoveredValue18) newlinePutAll: ('const byte _fifoSize[NOF_SW_LVLS] =').
    recoveredValue19 := recoveredValue15.
    (recoveredValue19) nextPut: (${).
    (recoveredValue15) incIndent.
    recoveredValue20 := recoveredArg1.
    recoveredValue21 := (recoveredValue20) size.
    recoveredValue22 := [:recoveredBlock167Arg1 | 
    | recoveredBlock167Value0 recoveredBlock167Value1 recoveredBlock167Value2 recoveredBlock167Value3 recoveredBlock167Value4 recoveredBlock167Value5 recoveredBlock167Value6 |
    recoveredBlock167Value0 := (self) block.
    recoveredBlock167Value1 := recoveredBlock167Arg1.
    recoveredBlock167Value2 := (recoveredBlock167Value1) + (-1).
    recoveredBlock167Value3 := (recoveredBlock167Value2) asCValue.
    recoveredBlock167Value4 := ('(READY_FIFO_SIZE_') , (recoveredBlock167Value3).
    recoveredBlock167Value5 := (recoveredBlock167Value4) , (')').
    recoveredBlock167Value6 := (recoveredBlock167Value0) newlinePutAll: (recoveredBlock167Value5).
    recoveredBlock167Value6
].
    recoveredValue23 := [
    | recoveredBlock190Value0 recoveredBlock190Value1 |
    recoveredBlock190Value0 := (self) block.
    recoveredBlock190Value1 := (recoveredBlock190Value0) nextPut: ($,).
    recoveredBlock190Value1
].
    (1) to: (recoveredValue21) do: (recoveredValue22) andBetweenDo: (recoveredValue23).
    recoveredValue24 := (self) block.
    recoveredValue25 := recoveredValue24.
    (recoveredValue25) decIndent.
    recoveredValue26 := recoveredValue24.
    (recoveredValue26) newlinePutAll: ('};').
    (recoveredValue24) newline.
    ^self
! !

"ASDBase.ic method 0x2056cf44; bytecode file offset 0xe69880"
!SGIlOSExpERCOSSimu methodsFor: 'recovered'!
prioLevelsCoop: recoveredArg1 preemp: recoveredArg2 hw: recoveredArg3 sw: recoveredArg4
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 recoveredValue21 recoveredValue22 recoveredValue23 recoveredValue24 recoveredValue25 recoveredValue26 recoveredValue27 recoveredValue28 recoveredValue29 recoveredValue30 recoveredValue31 recoveredValue32 recoveredValue33 recoveredValue34 recoveredValue35 recoveredValue36 recoveredValue37 recoveredValue38 recoveredValue39 recoveredValue40 recoveredValue41 recoveredValue42 recoveredValue43 recoveredValue44 recoveredValue45 recoveredValue46 recoveredValue47 recoveredValue48 recoveredValue49 recoveredValue50 recoveredValue51 recoveredValue52 recoveredValue53 recoveredValue54 recoveredValue55 recoveredValue56 recoveredValue57 recoveredValue58 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := (recoveredValue0) + (recoveredValue1).
    recoveredLocal2 := recoveredValue2.
    recoveredValue3 := recoveredArg3.
    recoveredValue4 := recoveredArg4.
    recoveredValue5 := (recoveredValue3) + (recoveredValue4).
    recoveredValue6 := recoveredLocal2.
    recoveredValue7 := (recoveredValue5) - (recoveredValue6).
    recoveredLocal1 := recoveredValue7.
    recoveredValue8 := (self) block.
    recoveredValue9 := (recoveredValue8) asAnsiCCodeStream.
    recoveredValue10 := recoveredValue9.
    recoveredValue11 := recoveredArg1.
    recoveredValue12 := (recoveredValue11) asCValue.
    (recoveredValue10) cppDefine: ('ASD_NOF_COOP_LVLS') as: (recoveredValue12).
    recoveredValue13 := recoveredValue9.
    recoveredValue14 := recoveredArg2.
    recoveredValue15 := (recoveredValue14) asCValue.
    (recoveredValue13) cppDefine: ('ASD_NOF_PREEMP_LVLS') as: (recoveredValue15).
    recoveredValue16 := recoveredValue9.
    recoveredValue17 := recoveredArg3.
    recoveredValue18 := (recoveredValue17) asCValue.
    (recoveredValue16) cppDefine: ('ASD_NOF_HW_LVLS') as: (recoveredValue18).
    recoveredValue19 := recoveredValue9.
    recoveredValue20 := recoveredArg4.
    recoveredValue21 := (recoveredValue20) asCValue.
    (recoveredValue19) cppDefine: ('ASD_NOF_SW_LVLS') as: (recoveredValue21).
    recoveredValue22 := recoveredValue9.
    (recoveredValue22) cppDefine: ('NOF_LVLS') as: ('(ASD_NOF_COOP_LVLS + ASD_NOF_PREEMP_LVLS)').
    recoveredValue23 := recoveredValue9.
    (recoveredValue23) cppDefine: ('MAX_LS_LVL') as: ('(ASD_NOF_SW_LVLS - 1)').
    recoveredValue24 := recoveredValue9.
    (recoveredValue24) cppDefine: ('MAX_HS_LVL') as: ('(NOF_LVLS - 1)').
    recoveredValue25 := recoveredValue9.
    (recoveredValue25) cppDefine: ('MAX_LS_INT_LVL') as: ('(ASD_NOF_HW_LVLS + ASD_NOF_SW_LVLS - NOF_LVLS)').
    recoveredValue26 := recoveredValue9.
    (recoveredValue26) cppDefine: ('MAX_HS_INT_LVL') as: ('ASD_NOF_HW_LVLS').
    recoveredValue27 := recoveredValue9.
    (recoveredValue27) newlinePutAll: ('const uint _nofCoopLvls = ').
    recoveredValue28 := recoveredValue9.
    (recoveredValue28) nextPutAll: ('ASD_NOF_COOP_LVLS').
    recoveredValue29 := recoveredValue9.
    (recoveredValue29) nextPut: ($;).
    recoveredValue30 := recoveredValue9.
    (recoveredValue30) newlinePutAll: ('const uint _nofHwLvls = ').
    recoveredValue31 := recoveredValue9.
    (recoveredValue31) nextPutAll: ('ASD_NOF_HW_LVLS').
    recoveredValue32 := recoveredValue9.
    (recoveredValue32) nextPut: ($;).
    recoveredValue33 := recoveredValue9.
    (recoveredValue33) newlinePutAll: ('const uint _nofSwLvls = ').
    recoveredValue34 := recoveredValue9.
    (recoveredValue34) nextPutAll: ('ASD_NOF_SW_LVLS').
    recoveredValue35 := recoveredValue9.
    (recoveredValue35) nextPut: ($;).
    recoveredValue36 := recoveredValue9.
    (recoveredValue36) newlinePutAll: ('const uint _nofLvls = ').
    recoveredValue37 := recoveredValue9.
    (recoveredValue37) nextPutAll: ('NOF_LVLS').
    recoveredValue38 := recoveredValue9.
    (recoveredValue38) nextPut: ($;).
    recoveredValue39 := recoveredValue9.
    (recoveredValue39) newlinePutAll: ('const uint _maxLsLvl = ').
    recoveredValue40 := recoveredValue9.
    (recoveredValue40) nextPutAll: ('ASD_NOF_SW_LVLS - 1').
    recoveredValue41 := recoveredValue9.
    (recoveredValue41) nextPut: ($;).
    recoveredValue42 := recoveredValue9.
    (recoveredValue42) newlinePutAll: ('const uint _maxLsIntLvl = ').
    recoveredValue43 := recoveredValue9.
    (recoveredValue43) nextPutAll: ('MAX_LS_INT_LVL').
    recoveredValue44 := recoveredValue9.
    (recoveredValue44) nextPut: ($;).
    recoveredValue45 := recoveredValue9.
    (recoveredValue45) newlinePutAll: ('const uint _maxHsIntLvl = ').
    recoveredValue46 := recoveredValue9.
    (recoveredValue46) nextPutAll: ('ASD_NOF_HW_LVLS').
    recoveredValue47 := recoveredValue9.
    (recoveredValue47) nextPut: ($;).
    recoveredValue48 := recoveredValue9.
    (recoveredValue48) newlinePutAll: ('const uint _intPrioOffset = ').
    recoveredValue49 := recoveredValue9.
    (recoveredValue49) nextPutAll: ('NOF_LVLS - ASD_NOF_HW_LVLS - 1').
    recoveredValue50 := recoveredValue9.
    (recoveredValue50) nextPut: ($;).
    recoveredValue51 := recoveredValue9.
    (recoveredValue51) newlinePutAll: ('T_mon _mon[').
    recoveredValue52 := recoveredValue9.
    (recoveredValue52) nextPutAll: ('ASD_NOF_SW_LVLS').
    (recoveredValue9) nextPutAll: ('];').
    recoveredValue53 := recoveredArg1.
    recoveredValue54 := recoveredArg4.
    (self) osRegisterBanksCoop: (recoveredValue53) sw: (recoveredValue54).
    recoveredValue55 := recoveredArg1.
    recoveredValue56 := recoveredArg2.
    recoveredValue57 := recoveredArg3.
    recoveredValue58 := recoveredArg4.
    (self) osInterruptMasksCoop: (recoveredValue55) preemp: (recoveredValue56) hw: (recoveredValue57) sw: (recoveredValue58).
    ^self
! !

