"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20003348; bytecode file offset 0x8ffcfc"
!SGIlOSExpERCOSEKSimu methodsFor: 'recovered'!
endEvents
    ^self
! !

"ASDBase.ic method 0x200065c8; bytecode file offset 0x902ecc"
!SGIlOSExpERCOSEKSimu methodsFor: 'recovered'!
eventHandler: recoveredArg1 id: recoveredArg2 event: recoveredArg3 prio: recoveredArg4
    ^self
! !

"ASDBase.ic method 0x200158f0; bytecode file offset 0x92209c"
!SGIlOSExpERCOSEKSimu methodsFor: 'recovered'!
hsIntMask
    ^'0x0000'
! !

"ASDBase.ic method 0x20016748; bytecode file offset 0x92209c"
!SGIlOSExpERCOSEKSimu methodsFor: 'recovered'!
coopLevelMask
    ^32767
! !

"ASDBase.ic method 0x20017900; bytecode file offset 0x92209c"
!SGIlOSExpERCOSEKSimu methodsFor: 'recovered'!
osLabel
    ^'ERCOSEK'
! !

"ASDBase.ic method 0x2001ba58; bytecode file offset 0x92209c"
!SGIlOSExpERCOSEKSimu methodsFor: 'recovered'!
typeQualifierFifoPtr
    ^' FAR const '
! !

"ASDBase.ic method 0x200231bc; bytecode file offset 0x92209c"
!SGIlOSExpERCOSEKSimu methodsFor: 'recovered'!
lsIntMask
    ^'0x001F'
! !

"ASDBase.ic method 0x20032244; bytecode file offset 0x934580"
!SGIlOSExpERCOSEKSimu methodsFor: 'recovered'!
currentAlarmIndex
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) alarms.
    recoveredValue1 := (recoveredValue0) size.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2003a67c; bytecode file offset 0x938608"
!SGIlOSExpERCOSEKSimu methodsFor: 'recovered'!
iterateLevelMask: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) iterateMask: (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x2006a208; bytecode file offset 0x966bdc"
!SGIlOSExpERCOSEKSimu methodsFor: 'recovered'!
alarmStream
    | recoveredValue0 |
    recoveredValue0 := alarmStream.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006a8dc; bytecode file offset 0x967a18"
!SGIlOSExpERCOSEKSimu methodsFor: 'recovered'!
debugWrapper
    | recoveredValue0 |
    recoveredValue0 := debugWrapper.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006b2c8; bytecode file offset 0x96873c"
!SGIlOSExpERCOSEKSimu methodsFor: 'recovered'!
alarms
    | recoveredValue0 |
    recoveredValue0 := alarms.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20078f50; bytecode file offset 0x97580c"
!SGIlOSExpERCOSEKSimu methodsFor: 'recovered'!
levelMask
    ^15
! !

"ASDBase.ic method 0x2007fd7c; bytecode file offset 0x97c630"
!SGIlOSExpERCOSEKSimu methodsFor: 'recovered'!
decrementerMask
    ^31
! !

"ASDBase.ic method 0x200813bc; bytecode file offset 0x97dc70"
!SGIlOSExpERCOSEKSimu methodsFor: 'recovered'!
preempLevelExclusiveSwMask
    ^16383
! !

"ASDBase.ic method 0x200840e4; bytecode file offset 0x9809a8"
!SGIlOSExpERCOSEKSimu methodsFor: 'recovered'!
iterateMask: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) >> (1).
    ^recoveredValue1
! !

"ASDBase.ic method 0x20089858; bytecode file offset 0x986134"
!SGIlOSExpERCOSEKSimu methodsFor: 'recovered'!
resetAlarms
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := OrderedCollection.
    recoveredValue1 := (recoveredValue0) new.
    alarms := recoveredValue1.
    ^self
! !

"ASDBase.ic method 0x200a15f4; bytecode file offset 0x99dfb8"
!SGIlOSExpERCOSEKSimu methodsFor: 'recovered'!
nextPutAllDebugWrapper
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) wrapperStream.
    recoveredValue1 := (self) debugWrapper.
    (recoveredValue0) nextPutAllFromStream: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x200e1e08; bytecode file offset 0x9de890"
!SGIlOSExpERCOSEKSimu methodsFor: 'recovered'!
funcDeclSetDTIntecrio
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) owner.
    recoveredValue1 := (recoveredValue0) moduleName.
    recoveredValue2 := ('void setDeltaT_') , (recoveredValue1).
    recoveredValue3 := (recoveredValue2) , (' (void)').
    ^recoveredValue3
! !

"ASDBase.ic method 0x2011965c; bytecode file offset 0xa15f78"
!SGIlOSExpERCOSEKSimu methodsFor: 'recovered'!
endOperatingMode
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) block.
    recoveredValue1 := recoveredValue0.
    (recoveredValue1) decIndent.
    recoveredValue2 := recoveredValue0.
    (recoveredValue2) newlinePutAll: ('};').
    (recoveredValue0) newline.
    ^self
! !

"ASDBase.ic method 0x2012ea94; bytecode file offset 0xa2b478"
!SGIlOSExpERCOSEKSimu methodsFor: 'recovered'!
funcDeclSetDT
    | recoveredStack0 recoveredStack1 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) generator.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) isOSERCOSEK43Enabled.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 13].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := 'void os_setDeltaT (void)'.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := 'void setDeltaT (void)'.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20140ad8; bytecode file offset 0xa3d3c4"
!SGIlOSExpERCOSEKSimu methodsFor: 'recovered'!
endHwTasks
    | recoveredValue0 recoveredValue1 |
    super endHwTasks.
    recoveredValue0 := (self) debugWrapper.
    recoveredValue1 := recoveredValue0.
    (recoveredValue1) newlinePutAll: ('NULL };').
    (recoveredValue0) decIndent.
    ^self
! !

"ASDBase.ic method 0x20140af8; bytecode file offset 0xa3d3c4"
!SGIlOSExpERCOSEKSimu methodsFor: 'recovered'!
endSwTasks
    | recoveredValue0 recoveredValue1 |
    super endSwTasks.
    recoveredValue0 := (self) debugWrapper.
    recoveredValue1 := recoveredValue0.
    (recoveredValue1) newlinePutAll: ('{ NULL, NULL } };').
    (recoveredValue0) decIndent.
    ^self
! !

"ASDBase.ic method 0x201521e4; bytecode file offset 0xa4eaa8"
!SGIlOSExpERCOSEKSimu methodsFor: 'recovered'!
initialize
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    super initialize.
    recoveredValue0 := (self) owner.
    recoveredValue1 := (recoveredValue0) createAnsiCCodeStream.
    alarmStream := recoveredValue1.
    recoveredValue2 := (self) owner.
    recoveredValue3 := (recoveredValue2) createAnsiCCodeStream.
    debugWrapper := recoveredValue3.
    ^self
! !

"ASDBase.ic method 0x201539c0; bytecode file offset 0xa50284"
!SGIlOSExpERCOSEKSimu methodsFor: 'recovered'!
nextPutTaskTablesOn: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredValue0.
    (recoveredValue1) newlinePutAll: ('swTaskIdTable, ').
    recoveredValue2 := recoveredValue0.
    (recoveredValue2) newlinePutAll: ('hwTaskIdTable, ').
    (recoveredValue0) newlinePutAll: ('opModeIdTable, ').
    ^self
! !

"ASDBase.ic method 0x20179f50; bytecode file offset 0xa7680c"
!SGIlOSExpERCOSEKSimu methodsFor: 'recovered'!
hwTask: recoveredArg1 id: recoveredArg2 event: recoveredArg3 prio: recoveredArg4 procs: recoveredArg5 opModes: recoveredArg6
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredStack7 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) isString.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 21] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack4 := recoveredArg3.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack5 := recoveredArg4.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack6 := recoveredArg5.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            (recoveredStack1) hwTask: (recoveredStack2) id: (recoveredStack3) event: (recoveredStack4) prio: (recoveredStack5) procs: (recoveredStack6).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2019538c; bytecode file offset 0xa91c5c"
!SGIlOSExpERCOSEKSimu methodsFor: 'recovered'!
timers: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) owner.
    recoveredValue1 := (self) alarmStream.
    (recoveredValue0) sectionBanner: ('Alarm services') on: (recoveredValue1).
    recoveredValue2 := (self) owner.
    recoveredValue3 := (self) alarmStream.
    (recoveredValue2) newlinePutCComment: ('Watchdog service routine ') on: (recoveredValue3).
    (self) resetAlarms.
    ^self
! !

"ASDBase.ic method 0x202186bc; bytecode file offset 0xb14fc8"
!SGIlOSExpERCOSEKSimu methodsFor: 'recovered'!
hwTasks
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := (self) owner.
    recoveredValue1 := (self) block.
    (recoveredValue0) sectionBanner: ('Hardware task definitions') on: (recoveredValue1).
    recoveredValue2 := (self) wrapperStream.
    recoveredValue3 := recoveredValue2.
    (recoveredValue3) newlinePutAll: ('T_hwTaskIdRef hwTaskIdTable[] = {').
    (recoveredValue2) incIndent.
    recoveredValue4 := (self) debugWrapper.
    recoveredValue5 := recoveredValue4.
    (recoveredValue5) newlinePutAll: ('T_hwTaskPtr const hwTaskTable[] = {').
    (recoveredValue4) incIndent.
    ^self
! !

"ASDBase.ic method 0x202186ec; bytecode file offset 0xb14fc8"
!SGIlOSExpERCOSEKSimu methodsFor: 'recovered'!
operatingModes
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := (self) owner.
    recoveredValue1 := (self) block.
    (recoveredValue0) sectionBanner: ('Application mode definitions') on: (recoveredValue1).
    recoveredValue2 := (self) wrapperStream.
    recoveredValue3 := recoveredValue2.
    (recoveredValue3) newlinePutAll: ('T_opModeIdRef opModeIdTable[] = {').
    (recoveredValue2) incIndent.
    recoveredValue4 := (self) debugWrapper.
    recoveredValue5 := recoveredValue4.
    (recoveredValue5) newlinePutAll: ('AppModeType opModeTable[] = {').
    (recoveredValue4) incIndent.
    ^self
! !

"ASDBase.ic method 0x2026d0b4; bytecode file offset 0xb69998"
!SGIlOSExpERCOSEKSimu methodsFor: 'recovered'!
deadlines: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 |
    recoveredValue0 := (self) owner.
    recoveredValue1 := (self) block.
    (recoveredValue0) sectionBanner: ('Deadline definitions') on: (recoveredValue1).
    recoveredValue2 := (self) owner.
    recoveredValue3 := (self) block.
    (recoveredValue2) newlinePutCComment: ('NOF_DEADLINES = 0 (fix value, no specification possible)') on: (recoveredValue3).
    recoveredValue4 := (self) block.
    recoveredValue5 := (recoveredValue4) asAnsiCCodeStream.
    recoveredValue6 := recoveredValue5.
    recoveredValue7 := ('NOF_DEADLINES') fillBlankTo: (20).
    recoveredValue8 := (0) asCValue.
    (recoveredValue6) cppDefine: (recoveredValue7) as: (recoveredValue8).
    (recoveredValue5) newline.
    ^self
! !

"ASDBase.ic method 0x202ab414; bytecode file offset 0xba7cf4"
!SGIlOSExpERCOSEKSimu methodsFor: 'recovered'!
initSwTask: recoveredArg1 id: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    super initSwTask: (recoveredValue0) id: (recoveredValue1).
    recoveredValue2 := (self) debugWrapper.
    recoveredValue3 := recoveredValue2.
    (recoveredValue3) newlinePutAll: ('{ ').
    recoveredValue4 := recoveredValue2.
    (recoveredValue4) nextPutAll: ('activateSw').
    recoveredValue5 := recoveredValue2.
    recoveredValue6 := recoveredArg2.
    recoveredValue7 := (recoveredValue6) asCValue.
    (recoveredValue5) nextPutAll: (recoveredValue7).
    recoveredValue8 := recoveredValue2.
    (recoveredValue8) listSeparator.
    recoveredValue9 := recoveredValue2.
    (recoveredValue9) nextPutAll: ('&').
    recoveredValue10 := recoveredValue2.
    recoveredValue11 := recoveredArg1.
    (recoveredValue10) nextPutAll: (recoveredValue11).
    (recoveredValue2) nextPutAll: (' },').
    ^self
! !

"ASDBase.ic method 0x202c41d4; bytecode file offset 0xbc0abc"
!SGIlOSExpERCOSEKSimu methodsFor: 'recovered'!
swTasks
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    (self) reserveBlock.
    recoveredValue0 := (self) wrapperStream.
    recoveredValue1 := recoveredValue0.
    (recoveredValue1) newlinePutAll: ('DEFINE_L1_TASK (__L1_Prio)').
    recoveredValue2 := recoveredValue0.
    (recoveredValue2) newlinePutAll: ('T_swTaskIdRef swTaskIdTable[] = {').
    (recoveredValue0) incIndent.
    recoveredValue3 := (self) owner.
    recoveredValue4 := (self) debugWrapper.
    (recoveredValue3) paragraphBanner: ('Task tables for initDebugExtension') on: (recoveredValue4).
    recoveredValue5 := (self) debugWrapper.
    recoveredValue6 := recoveredValue5.
    (recoveredValue6) newline.
    recoveredValue7 := recoveredValue5.
    (recoveredValue7) newlinePutAll: ('T_swTaskRef swTaskTable[] = {').
    (recoveredValue5) incIndent.
    (self) swTasksBanner.
    ^self
! !

"ASDBase.ic method 0x202d0c5c; bytecode file offset 0xbcd538"
!SGIlOSExpERCOSEKSimu methodsFor: 'recovered'!
initOpMode: recoveredArg1 id: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 |
    recoveredValue0 := (self) owner.
    recoveredValue1 := (recoveredValue0) wrapperStream.
    recoveredValue2 := recoveredValue1.
    (recoveredValue2) newlinePutAll: ('{ ').
    recoveredValue3 := recoveredValue1.
    recoveredValue4 := recoveredArg2.
    recoveredValue5 := (recoveredValue4) asCValue.
    (recoveredValue3) nextPutAll: (recoveredValue5).
    recoveredValue6 := recoveredValue1.
    (recoveredValue6) listSeparator.
    recoveredValue7 := recoveredValue1.
    (recoveredValue7) nextPutAll: ('&').
    recoveredValue8 := recoveredValue1.
    recoveredValue9 := recoveredArg1.
    (recoveredValue8) nextPutAll: (recoveredValue9).
    (recoveredValue1) nextPutAll: ('},').
    recoveredValue10 := (self) debugWrapper.
    recoveredValue11 := recoveredValue10.
    (recoveredValue11) newlinePutAll: ('&').
    recoveredValue12 := recoveredValue10.
    recoveredValue13 := recoveredArg1.
    (recoveredValue12) nextPutAll: (recoveredValue13).
    (recoveredValue10) listSeparator.
    ^self
! !

"ASDBase.ic method 0x202d3274; bytecode file offset 0xbcfb50"
!SGIlOSExpERCOSEKSimu methodsFor: 'recovered'!
processRefs: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := (self) owner.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) processRefs: (recoveredValue1).
    recoveredValue3 := (recoveredValue2) allSubStrings: ($,).
    recoveredLocal1 := recoveredValue3.
    recoveredValue4 := recoveredLocal1.
    recoveredValue5 := [:recoveredBlock13Arg1 | 
    | recoveredBlock13Stack0 recoveredBlock13Stack1 recoveredBlock13Stack2 recoveredBlock13Stack3 recoveredBlock13Stack4 recoveredBlock13PC recoveredBlock13Step recoveredBlock13Done recoveredBlock13Result |
    recoveredBlock13Stack0 := self.
    recoveredBlock13PC := 20.
    recoveredBlock13Done := false.
    [recoveredBlock13Done not] whileTrue: [
        recoveredBlock13Step := recoveredBlock13PC.
        recoveredBlock13Step = 20 ifTrue: [
            recoveredBlock13Stack1 := nil.
            recoveredBlock13PC := 21.
        ].
        recoveredBlock13Step = 21 ifTrue: [
            recoveredBlock13Stack2 := recoveredBlock13Arg1.
            recoveredBlock13PC := 22.
        ].
        recoveredBlock13Step = 22 ifTrue: [
            recoveredBlock13Stack2 := (recoveredBlock13Stack2) asSBString.
            recoveredBlock13PC := 23.
        ].
        recoveredBlock13Step = 23 ifTrue: [
            recoveredBlock13Stack2 := (recoveredBlock13Stack2) removeWhiteSpaces.
            recoveredBlock13PC := 25.
        ].
        recoveredBlock13Step = 25 ifTrue: [
            recoveredBlock13Stack2 := (recoveredBlock13Stack2) isEmpty.
            recoveredBlock13PC := 27.
        ].
        recoveredBlock13Step = 27 ifTrue: [
            (recoveredBlock13Stack2) ifTrue: [recoveredBlock13PC := 44] ifFalse: [recoveredBlock13PC := 30].
        ].
        recoveredBlock13Step = 30 ifTrue: [
            recoveredBlock13PC := 31.
        ].
        recoveredBlock13Step = 31 ifTrue: [
            recoveredBlock13Stack1 := self.
            recoveredBlock13PC := 32.
        ].
        recoveredBlock13Step = 32 ifTrue: [
            recoveredBlock13Stack1 := (recoveredBlock13Stack1) block.
            recoveredBlock13PC := 34.
        ].
        recoveredBlock13Step = 34 ifTrue: [
            recoveredBlock13Stack2 := recoveredBlock13Stack1.
            recoveredBlock13PC := 35.
        ].
        recoveredBlock13Step = 35 ifTrue: [
            recoveredBlock13Stack3 := recoveredBlock13Arg1.
            recoveredBlock13PC := 36.
        ].
        recoveredBlock13Step = 36 ifTrue: [
            recoveredBlock13Stack3 := (recoveredBlock13Stack3) asSBString.
            recoveredBlock13PC := 37.
        ].
        recoveredBlock13Step = 37 ifTrue: [
            (recoveredBlock13Stack2) newlinePutAll: (recoveredBlock13Stack3).
            recoveredBlock13PC := 39.
        ].
        recoveredBlock13Step = 39 ifTrue: [
            recoveredBlock13Stack2 := $,.
            recoveredBlock13PC := 42.
        ].
        recoveredBlock13Step = 42 ifTrue: [
            recoveredBlock13Stack1 := (recoveredBlock13Stack1) nextPut: (recoveredBlock13Stack2).
            recoveredBlock13PC := 44.
        ].
        recoveredBlock13Step = 44 ifTrue: [
            recoveredBlock13Result := recoveredBlock13Stack1.
            recoveredBlock13Done := true.
        ].
    ].
    recoveredBlock13Result
].
    (recoveredValue4) do: (recoveredValue5).
    ^self
! !

"ASDBase.ic method 0x2030b8d0; bytecode file offset 0xc081c0"
!SGIlOSExpERCOSEKSimu methodsFor: 'recovered'!
endOperatingSystem
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 |
    (self) reserveBlock.
    (self) hookRoutines.
    (self) defineOSStruct.
    recoveredValue0 := (self) body.
    recoveredValue1 := recoveredValue0.
    recoveredValue2 := (self) alarmStream.
    (recoveredValue1) nextPutAllFromStream: (recoveredValue2).
    recoveredValue3 := (self) freeBlock.
    (recoveredValue0) nextPutAllFromStream: (recoveredValue3).
    recoveredValue4 := (self) owner.
    recoveredValue5 := (self) osLabel.
    recoveredValue6 := (recoveredValue5) , (' configuration').
    recoveredValue7 := (self) body.
    (recoveredValue4) endRegionBanner: ('OS Configuration') description: (recoveredValue6) on: (recoveredValue7).
    recoveredValue8 := (self) body.
    recoveredValue9 := (self) freeBlock.
    (recoveredValue8) nextPutAllFromStream: (recoveredValue9).
    super endOperatingSystem.
    ^self
! !

"ASDBase.ic method 0x2034d500; bytecode file offset 0xc49dec"
!SGIlOSExpERCOSEKSimu methodsFor: 'recovered'!
initialOpMode: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 |
    (self) defineStartUpAppMode.
    recoveredLocal1 := 'void startOS (void)'.
    recoveredValue0 := (self) wrapperStream.
    recoveredValue1 := recoveredValue0.
    recoveredValue2 := recoveredLocal1.
    (recoveredValue1) newlinePutAll: (recoveredValue2).
    recoveredValue3 := recoveredValue0.
    (recoveredValue3) openCompoundStmnt.
    recoveredValue4 := recoveredValue0.
    (recoveredValue4) newlinePutAll: ('StartOS (inactive);').
    recoveredValue5 := recoveredValue0.
    (recoveredValue5) closeCompoundStmnt.
    (recoveredValue0) newline.
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

"ASDBase.ic method 0x2035bae4; bytecode file offset 0xc583d4"
!SGIlOSExpERCOSEKSimu methodsFor: 'recovered'!
timer: recoveredArg1 number: recoveredArg2 taskId: recoveredArg3 delay: recoveredArg4 period: recoveredArg5
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 |
    recoveredValue0 := (self) alarms.
    recoveredValue1 := Array.
    recoveredValue2 := recoveredArg3.
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := (recoveredValue1) with: (recoveredValue2) with: (recoveredValue3).
    (recoveredValue0) add: (recoveredValue4).
    recoveredValue5 := (self) block.
    recoveredValue6 := recoveredValue5.
    (recoveredValue6) newlinePutAll: ('SetRelAlarm (').
    recoveredValue7 := recoveredValue5.
    recoveredValue8 := (self) currentAlarmIndex.
    recoveredValue9 := (recoveredValue8) asString.
    (recoveredValue7) nextPutAll: (recoveredValue9).
    recoveredValue10 := recoveredValue5.
    (recoveredValue10) listSeparator.
    recoveredValue11 := recoveredValue5.
    (recoveredValue11) nextPutAll: ('MICROSECONDS_TO_TICKS (').
    recoveredValue12 := recoveredValue5.
    recoveredValue13 := recoveredArg4.
    recoveredValue14 := (recoveredValue13) asCValue.
    (recoveredValue12) nextPutAll: (recoveredValue14).
    recoveredValue15 := recoveredValue5.
    (recoveredValue15) nextPutAll: ('),').
    recoveredValue16 := recoveredValue5.
    (recoveredValue16) nextPutAll: ('MICROSECONDS_TO_TICKS (').
    recoveredValue17 := recoveredValue5.
    recoveredValue18 := recoveredArg5.
    recoveredValue19 := (recoveredValue18) asCValue.
    (recoveredValue17) nextPutAll: (recoveredValue19).
    (recoveredValue5) nextPutAll: ('));').
    ^self
! !

"ASDBase.ic method 0x20395120; bytecode file offset 0xc91a24"
!SGIlOSExpERCOSEKSimu methodsFor: 'recovered'!
endOperatingModes
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 |
    super endOperatingModes.
    (self) writeAlarmStream.
    recoveredValue0 := (self) owner.
    recoveredValue1 := (self) alarmStream.
    (recoveredValue0) paragraphBanner: ('Initialization table of extended ERCOSEK functions') on: (recoveredValue1).
    recoveredValue2 := (self) alarmStream.
    recoveredValue3 := recoveredValue2.
    (recoveredValue3) newlinePutAll: ('const T_funcPtr iniFuncPtrTab[] =').
    recoveredValue4 := recoveredValue2.
    (recoveredValue4) newlinePutAll: ('{').
    recoveredValue5 := recoveredValue2.
    (recoveredValue5) incIndent.
    recoveredValue6 := recoveredValue2.
    (recoveredValue6) newlinePutAll: ('initTimeOutTimer,').
    recoveredValue7 := recoveredValue2.
    (recoveredValue7) newlinePutAll: ('initTimerList,').
    recoveredValue8 := recoveredValue2.
    (recoveredValue8) newlinePutAll: ('writeUstackCheckWords,').
    recoveredValue9 := recoveredValue2.
    (recoveredValue9) newlinePutAll: ('NULL').
    recoveredValue10 := recoveredValue2.
    (recoveredValue10) decIndent.
    recoveredValue11 := recoveredValue2.
    (recoveredValue11) newlinePutAll: ('};').
    (recoveredValue2) newline.
    recoveredValue12 := (self) debugWrapper.
    (recoveredValue12) newlinePutAll: ('NULL };').
    ^self
! !

"ASDBase.ic method 0x203c4c3c; bytecode file offset 0xcc1530"
!SGIlOSExpERCOSEKSimu methodsFor: 'recovered'!
defineStartUpAppMode
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 |
    recoveredValue0 := (self) wrapperStream.
    (recoveredValue0) newline.
    recoveredValue1 := (self) wrapperStream.
    (self) newlinePutCComment: ('App Mode StartUp') on: (recoveredValue1).
    recoveredValue2 := (self) wrapperStream.
    recoveredValue3 := recoveredValue2.
    (recoveredValue3) newline.
    recoveredValue4 := recoveredValue2.
    (recoveredValue4) newlinePutAll: ('extern void initModelProcess (void);').
    recoveredValue5 := recoveredValue2.
    (recoveredValue5) newlinePutAll: ('extern void initErcosProcess (void);').
    recoveredValue6 := recoveredValue2.
    (recoveredValue6) newline.
    recoveredValue7 := recoveredValue2.
    (recoveredValue7) newline.
    recoveredValue8 := recoveredValue2.
    (recoveredValue8) newlinePutAll: ('T_processPtrTab startTab =').
    recoveredValue9 := recoveredValue2.
    (recoveredValue9) openInitializer.
    recoveredValue10 := recoveredValue2.
    (recoveredValue10) newlinePutAll: ('installWatchdogTask,').
    recoveredValue11 := recoveredValue2.
    (recoveredValue11) newlinePutAll: ('clearTmpFpuRegs,').
    recoveredValue12 := recoveredValue2.
    (recoveredValue12) newlinePutAll: ('setFPbits,').
    recoveredValue13 := recoveredValue2.
    (recoveredValue13) newlinePutAll: ('initModelProcess,').
    recoveredValue14 := recoveredValue2.
    (recoveredValue14) newlinePutAll: ('initErcosProcess,').
    recoveredValue15 := recoveredValue2.
    (recoveredValue15) newlinePutAll: ('terminateInitSeq').
    recoveredValue16 := recoveredValue2.
    (recoveredValue16) closeInitializer.
    recoveredValue17 := recoveredValue2.
    (recoveredValue17) newline.
    (recoveredValue2) newline.
    ^self
! !

"ASDBase.ic method 0x20480f04; bytecode file offset 0xd7d808"
!SGIlOSExpERCOSEKSimu methodsFor: 'recovered'!
genOSDtVar: recoveredArg1 externalIntegration: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
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
            recoveredLocal4 := recoveredStack1.
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
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 36] ifFalse: [recoveredPC := 28].
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := (recoveredStack1) generator.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := (recoveredStack1) isOSERCOSEK43Enabled.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 36] ifFalse: [recoveredPC := 42].
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := 'os_dT'.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredPC := 45.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := 'dT'.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack1 := (recoveredStack1) getImplType.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack1 := (recoveredStack1) isRBFloat.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 52] ifFalse: [recoveredPC := 104].
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack1 := (recoveredStack1) getImplType.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack1 := (recoveredStack1) isRBQuantFloat.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 60] ifFalse: [recoveredPC := 70].
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack1 := (recoveredStack1) owner.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack1 := (recoveredStack1) ileFloat64.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack1 := (recoveredStack1) asCType.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredPC := 75.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack1 := (recoveredStack1) getImplType.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack1 := (recoveredStack1) asCType.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack1 := (recoveredStack1) generator.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack1 := (recoveredStack1) ileBuilder.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack2 := #().
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack3 := '(('.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack4 := recoveredLocal1.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack3 := (recoveredStack3) , (recoveredStack4).
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredStack4 := ') (SYSTEM_TICK_DURATION * '.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack3 := (recoveredStack3) , (recoveredStack4).
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredStack4 := recoveredLocal2.
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack3 := (recoveredStack3) , (recoveredStack4).
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack4 := ') / 1.0e9)'.
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack3 := (recoveredStack3) , (recoveredStack4).
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack4 := recoveredArg1.
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack1 := (recoveredStack1) createANSICExpr: (recoveredStack2) template: (recoveredStack3) type: (recoveredStack4).
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 104 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            recoveredStack1 := (recoveredStack1) generator.
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            recoveredStack1 := (recoveredStack1) ileBuilder.
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            recoveredStack2 := #().
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            recoveredStack3 := '((SYSTEM_TICK_DURATION * '.
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            recoveredStack4 := recoveredLocal2.
            recoveredPC := 114.
        ].
        recoveredStep = 114 ifTrue: [
            recoveredStack3 := (recoveredStack3) , (recoveredStack4).
            recoveredPC := 116.
        ].
        recoveredStep = 116 ifTrue: [
            recoveredStack4 := ') / 1000)'.
            recoveredPC := 118.
        ].
        recoveredStep = 118 ifTrue: [
            recoveredStack3 := (recoveredStack3) , (recoveredStack4).
            recoveredPC := 120.
        ].
        recoveredStep = 120 ifTrue: [
            recoveredStack4 := recoveredArg1.
            recoveredPC := 122.
        ].
        recoveredStep = 122 ifTrue: [
            recoveredStack1 := (recoveredStack1) createANSICExpr: (recoveredStack2) template: (recoveredStack3) type: (recoveredStack4).
            recoveredPC := 125.
        ].
        recoveredStep = 125 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x204b3110; bytecode file offset 0xdafa38"
!SGIlOSExpERCOSEKSimu methodsFor: 'recovered'!
operatingMode: recoveredArg1 id: recoveredArg2 initProcs: recoveredArg3
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 recoveredValue21 recoveredValue22 recoveredValue23 recoveredValue24 recoveredValue25 recoveredValue26 recoveredValue27 recoveredValue28 recoveredValue29 recoveredValue30 recoveredValue31 recoveredValue32 recoveredValue33 recoveredValue34 recoveredValue35 recoveredValue36 recoveredValue37 recoveredValue38 recoveredValue39 recoveredValue40 recoveredValue41 recoveredValue42 recoveredValue43 |
    recoveredValue0 := recoveredArg2.
    recoveredValue1 := (recoveredValue0) asCValue.
    recoveredValue2 := ('genIniProc') , (recoveredValue1).
    recoveredLocal2 := recoveredValue2.
    recoveredValue3 := recoveredLocal2.
    recoveredValue4 := ('static void ') , (recoveredValue3).
    recoveredValue5 := (recoveredValue4) , (' (void)').
    recoveredLocal1 := recoveredValue5.
    recoveredValue6 := (self) block.
    (recoveredValue6) newline.
    recoveredValue7 := recoveredArg2.
    recoveredValue8 := (recoveredValue7) asString.
    recoveredValue9 := ('App Mode') , (recoveredValue8).
    recoveredValue10 := (self) block.
    (self) newlinePutCComment: (recoveredValue9) on: (recoveredValue10).
    recoveredValue11 := (self) block.
    recoveredValue12 := recoveredValue11.
    (recoveredValue12) newline.
    recoveredValue13 := recoveredValue11.
    recoveredValue14 := recoveredLocal1.
    recoveredValue15 := (recoveredValue14) , (';').
    (recoveredValue13) newlinePutAll: (recoveredValue15).
    recoveredValue16 := recoveredValue11.
    (recoveredValue16) newlinePutAll: ('T_processPtrTab iniTabOpMode').
    recoveredValue17 := recoveredValue11.
    recoveredValue18 := recoveredArg2.
    recoveredValue19 := (recoveredValue18) asCValue.
    (recoveredValue17) nextPutAll: (recoveredValue19).
    recoveredValue20 := recoveredValue11.
    (recoveredValue20) nextPutAll: (' = ').
    recoveredValue21 := recoveredValue11.
    (recoveredValue21) nextPut: (${).
    recoveredValue22 := recoveredValue11.
    (recoveredValue22) incIndent.
    recoveredValue23 := recoveredValue11.
    (recoveredValue23) newlinePutAll: ('installWatchdogTask,').
    (recoveredValue11) newlinePutAll: ('initDebugExtension,').
    recoveredValue24 := recoveredArg3.
    (self) processRefs: (recoveredValue24).
    recoveredValue25 := (self) block.
    recoveredValue26 := recoveredValue25.
    recoveredValue27 := recoveredLocal2.
    (recoveredValue26) newlinePutAll: (recoveredValue27).
    recoveredValue28 := recoveredValue25.
    (recoveredValue28) listSeparator.
    recoveredValue29 := recoveredValue25.
    (recoveredValue29) newlinePutAll: ('terminateInitSeq').
    recoveredValue30 := recoveredValue25.
    (recoveredValue30) closeInitializer.
    recoveredValue31 := recoveredValue25.
    (recoveredValue31) newlinePutAll: ('defineAppMode (iniTabOpMode').
    recoveredValue32 := recoveredValue25.
    recoveredValue33 := recoveredArg2.
    recoveredValue34 := (recoveredValue33) asCValue.
    (recoveredValue32) nextPutAll: (recoveredValue34).
    recoveredValue35 := recoveredValue25.
    (recoveredValue35) nextPutAll: (', 0, &cfgDataAppMode, ').
    recoveredValue36 := recoveredValue25.
    recoveredValue37 := recoveredArg1.
    (recoveredValue36) nextPutAll: (recoveredValue37).
    recoveredValue38 := recoveredValue25.
    (recoveredValue38) nextPutAll: (');').
    recoveredValue39 := recoveredValue25.
    recoveredValue40 := recoveredLocal1.
    (recoveredValue39) newlinePutAll: (recoveredValue40).
    (recoveredValue25) openInitializer.
    recoveredValue41 := recoveredArg1.
    recoveredValue42 := (recoveredValue41) , ('_desc').
    recoveredValue43 := recoveredArg2.
    (self) initOpMode: (recoveredValue42) id: (recoveredValue43).
    ^self
! !

"ASDBase.ic method 0x204ba3a8; bytecode file offset 0xdb6cc8"
!SGIlOSExpERCOSEKSimu methodsFor: 'recovered'!
event: recoveredArg1 id: recoveredArg2 regbank: recoveredArg3 prio: recoveredArg4 taskId: recoveredArg5
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) owner.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := 'Interrupts handler for user interrupts'.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack2 := (recoveredStack2) block.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack0) paragraphBanner: (recoveredStack1) on: (recoveredStack2).
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) block.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := 'void '.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack1) newlinePutAll: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            (recoveredStack1) nextPutAll: (recoveredStack2).
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := 'Handler (void)'.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            (recoveredStack0) nextPutAll: (recoveredStack1).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack2 := ' in OS editor '.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack2 := (recoveredStack2) block.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            (recoveredStack0) nextPutCComment: (recoveredStack1) on: (recoveredStack2).
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack0 := (recoveredStack0) block.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            (recoveredStack1) openCompoundStmnt.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack1 := 'ENTER_ISR'.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            (recoveredStack0) newlinePutAll: (recoveredStack1).
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack0 := 'dummy*'.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack1 := recoveredArg5.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack0 := (recoveredStack0) match: (recoveredStack1).
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 133] ifFalse: [recoveredPC := 56].
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack0 := 'hwTask'.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack1 := recoveredArg5.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack1 := (recoveredStack1) asString.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack0 := (recoveredStack0) , (recoveredStack1).
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack0 := (recoveredStack0) block.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack2 := 'startTaskHook ('.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            (recoveredStack1) newlinePutAll: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            (recoveredStack1) nextPutAll: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack2 := '.id'.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            (recoveredStack1) nextPutAll: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            (recoveredStack1) listSeparator.
            recoveredStack1 := recoveredStack0.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            (recoveredStack1) nextPutAll: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack2 := '.monPtr);'.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            (recoveredStack1) nextPutAll: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredStack2 := 'dispatchHwTask (&'.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            (recoveredStack1) newlinePutAll: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            (recoveredStack1) nextPutAll: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            recoveredStack2 := ');'.
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            (recoveredStack1) nextPutAll: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            recoveredStack2 := 'endTaskHook ('.
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            (recoveredStack1) newlinePutAll: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 112.
        ].
        recoveredStep = 112 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            (recoveredStack1) nextPutAll: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 116.
        ].
        recoveredStep = 116 ifTrue: [
            recoveredStack2 := '.id'.
            recoveredPC := 118.
        ].
        recoveredStep = 118 ifTrue: [
            (recoveredStack1) nextPutAll: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 121.
        ].
        recoveredStep = 121 ifTrue: [
            (recoveredStack1) listSeparator.
            recoveredStack1 := recoveredStack0.
            recoveredPC := 124.
        ].
        recoveredStep = 124 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 125.
        ].
        recoveredStep = 125 ifTrue: [
            (recoveredStack1) nextPutAll: (recoveredStack2).
            recoveredPC := 127.
        ].
        recoveredStep = 127 ifTrue: [
            recoveredStack1 := '.monPtr);'.
            recoveredPC := 129.
        ].
        recoveredStep = 129 ifTrue: [
            (recoveredStack0) nextPutAll: (recoveredStack1).
            recoveredPC := 131.
        ].
        recoveredStep = 131 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 132.
        ].
        recoveredStep = 132 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 133.
        ].
        recoveredStep = 133 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 134.
        ].
        recoveredStep = 134 ifTrue: [
            recoveredStack0 := (recoveredStack0) block.
            recoveredPC := 135.
        ].
        recoveredStep = 135 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 136.
        ].
        recoveredStep = 136 ifTrue: [
            recoveredStack2 := 'LEAVE_ISR'.
            recoveredPC := 138.
        ].
        recoveredStep = 138 ifTrue: [
            (recoveredStack1) newlinePutAll: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 141.
        ].
        recoveredStep = 141 ifTrue: [
            (recoveredStack1) closeCompoundStmnt.
            recoveredPC := 143.
        ].
        recoveredStep = 143 ifTrue: [
            (recoveredStack0) newline.
            recoveredPC := 145.
        ].
        recoveredStep = 145 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 146.
        ].
        recoveredStep = 146 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x204f0268; bytecode file offset 0xdecbb0"
!SGIlOSExpERCOSEKSimu methodsFor: 'recovered'!
writeAlarmStream
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 recoveredValue21 recoveredValue22 recoveredValue23 recoveredValue24 recoveredValue25 recoveredValue26 recoveredValue27 recoveredValue28 |
    recoveredValue0 := (self) alarmStream.
    recoveredValue1 := recoveredValue0.
    (recoveredValue1) newlinePutAll: ('extern void serviceWatchDog (void);').
    recoveredValue2 := recoveredValue0.
    (recoveredValue2) newline.
    recoveredValue3 := recoveredValue0.
    (recoveredValue3) newline.
    recoveredValue4 := recoveredValue0.
    (recoveredValue4) comment: ('process for installing watchdog task ').
    recoveredValue5 := recoveredValue0.
    (recoveredValue5) newlinePutAll: ('void installWatchdogTask (void)').
    recoveredValue6 := recoveredValue0.
    (recoveredValue6) openCompoundStmnt.
    recoveredValue7 := recoveredValue0.
    (recoveredValue7) newlinePutAll: ('SetRelAlarm (0, MICROSECONDS_TO_TICKS (10), MICROSECONDS_TO_TICKS (30000));').
    recoveredValue8 := recoveredValue0.
    (recoveredValue8) closeCompoundStmnt.
    recoveredValue9 := recoveredValue0.
    (recoveredValue9) newline.
    recoveredValue10 := recoveredValue0.
    (recoveredValue10) comment: ('NOF_ALARMS = asd_nof_timer_tasks + 1').
    recoveredValue11 := recoveredValue0.
    recoveredValue12 := (self) currentAlarmIndex.
    recoveredValue13 := (recoveredValue12) + (1).
    recoveredValue14 := (recoveredValue13) asCValue.
    (recoveredValue11) cppDefine: ('NOF_ALARMS') as: (recoveredValue14).
    recoveredValue15 := recoveredValue0.
    (recoveredValue15) newline.
    recoveredValue16 := recoveredValue0.
    (recoveredValue16) newlinePutAll: ('static TickType _periods [NOF_ALARMS];') fillSpaceTo: (45).
    recoveredValue17 := recoveredValue0.
    (recoveredValue17) comment: ('periods').
    recoveredValue18 := recoveredValue0.
    (recoveredValue18) newlinePutAll: ('static TickType _cmpRegs [NOF_ALARMS + 1];') fillSpaceTo: (45).
    recoveredValue19 := recoveredValue0.
    (recoveredValue19) comment: ('compare registers of timers').
    recoveredValue20 := recoveredValue0.
    (recoveredValue20) newlinePutAll: ('static uint _indexTab [NOF_ALARMS + 1];') fillSpaceTo: (45).
    recoveredValue21 := recoveredValue0.
    (recoveredValue21) comment: ('table of chaining indices').
    recoveredValue22 := recoveredValue0.
    (recoveredValue22) newline.
    recoveredValue23 := recoveredValue0.
    (recoveredValue23) newlinePutAll: ('static const T_callBackPtr _timerFuncPtrs [NOF_ALARMS] = ').
    recoveredValue24 := recoveredValue0.
    (recoveredValue24) openInitializer.
    (recoveredValue0) newlinePutAll: ('serviceWatchDog,').
    recoveredValue25 := (self) alarms.
    recoveredValue26 := [:recoveredBlock113Arg1 | 
    | recoveredBlock113Value0 recoveredBlock113Value1 recoveredBlock113Value2 recoveredBlock113Value3 recoveredBlock113Value4 recoveredBlock113Value5 recoveredBlock113Value6 recoveredBlock113Value7 recoveredBlock113Value8 recoveredBlock113Value9 recoveredBlock113Value10 recoveredBlock113Value11 |
    recoveredBlock113Value0 := (self) alarmStream.
    recoveredBlock113Value1 := recoveredBlock113Value0.
    (recoveredBlock113Value1) newlinePutAll: ('activateSw').
    recoveredBlock113Value2 := recoveredBlock113Value0.
    recoveredBlock113Value3 := recoveredBlock113Arg1.
    recoveredBlock113Value4 := (recoveredBlock113Value3) at: (1).
    recoveredBlock113Value5 := (recoveredBlock113Value4) asCValue.
    recoveredBlock113Value6 := (recoveredBlock113Value5) , (', ').
    (recoveredBlock113Value2) nextPutAll: (recoveredBlock113Value6) fillSpaceTo: (29).
    recoveredBlock113Value7 := recoveredBlock113Value0.
    (recoveredBlock113Value7) beginComment.
    recoveredBlock113Value8 := recoveredBlock113Value0.
    recoveredBlock113Value9 := recoveredBlock113Arg1.
    recoveredBlock113Value10 := (recoveredBlock113Value9) at: (2).
    (recoveredBlock113Value8) nextPutAll: (recoveredBlock113Value10).
    recoveredBlock113Value11 := (recoveredBlock113Value0) endComment.
    recoveredBlock113Value11
].
    (recoveredValue25) do: (recoveredValue26).
    recoveredValue27 := (self) alarmStream.
    recoveredValue28 := recoveredValue27.
    (recoveredValue28) decIndent.
    (recoveredValue27) newlinePutAll: ('};').
    ^self
! !

"ASDBase.ic method 0x20544034; bytecode file offset 0xe40970"
!SGIlOSExpERCOSEKSimu methodsFor: 'recovered'!
hwTask: recoveredArg1 id: recoveredArg2 event: recoveredArg3 prio: recoveredArg4 procs: recoveredArg5
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 recoveredValue21 recoveredValue22 recoveredValue23 recoveredValue24 recoveredValue25 recoveredValue26 recoveredValue27 recoveredValue28 recoveredValue29 recoveredValue30 recoveredValue31 recoveredValue32 recoveredValue33 recoveredValue34 recoveredValue35 recoveredValue36 recoveredValue37 recoveredValue38 recoveredValue39 recoveredValue40 recoveredValue41 recoveredValue42 recoveredValue43 recoveredValue44 recoveredValue45 recoveredValue46 recoveredValue47 recoveredValue48 recoveredValue49 recoveredValue50 recoveredValue51 recoveredValue52 recoveredValue53 recoveredValue54 recoveredValue55 recoveredValue56 recoveredValue57 recoveredValue58 recoveredValue59 |
    recoveredValue0 := recoveredArg2.
    recoveredValue1 := (recoveredValue0) asCValue.
    recoveredValue2 := ('tabHwTask') , (recoveredValue1).
    recoveredLocal1 := recoveredValue2.
    recoveredValue3 := (self) block.
    recoveredValue4 := recoveredValue3.
    (recoveredValue4) newlinePutAll: ('T_processPtrTab ').
    recoveredValue5 := recoveredValue3.
    recoveredValue6 := recoveredLocal1.
    (recoveredValue5) nextPutAll: (recoveredValue6).
    recoveredValue7 := recoveredValue3.
    (recoveredValue7) nextPutAll: (' = ').
    recoveredValue8 := recoveredValue3.
    (recoveredValue8) openCompoundStmnt.
    recoveredValue9 := recoveredValue3.
    (recoveredValue9) newlinePutAll: ('#ifdef HW_TASK_PROLOGUE').
    recoveredValue10 := recoveredValue3.
    (recoveredValue10) incIndent.
    recoveredValue11 := recoveredValue3.
    (recoveredValue11) newlinePutAll: ('HW_TASK_PROLOGUE').
    recoveredValue12 := recoveredValue3.
    (recoveredValue12) decIndent.
    recoveredValue13 := recoveredValue3.
    (recoveredValue13) newlinePutAll: ('#else').
    recoveredValue14 := recoveredValue3.
    (recoveredValue14) incIndent.
    recoveredValue15 := recoveredValue3.
    (recoveredValue15) newlinePutAll: ('saveDpFpuRegs,').
    recoveredValue16 := recoveredValue3.
    (recoveredValue16) decIndent.
    (recoveredValue3) newlinePutAll: ('#endif').
    recoveredValue17 := recoveredArg5.
    (self) processRefs: (recoveredValue17).
    recoveredValue18 := (self) block.
    recoveredValue19 := recoveredValue18.
    (recoveredValue19) newlinePutAll: ('#ifdef HW_TASK_EPILOGUE').
    recoveredValue20 := recoveredValue18.
    (recoveredValue20) incIndent.
    recoveredValue21 := recoveredValue18.
    (recoveredValue21) newlinePutAll: ('HW_TASK_EPILOGUE').
    recoveredValue22 := recoveredValue18.
    (recoveredValue22) decIndent.
    recoveredValue23 := recoveredValue18.
    (recoveredValue23) newlinePutAll: ('#else').
    recoveredValue24 := recoveredValue18.
    (recoveredValue24) incIndent.
    recoveredValue25 := recoveredValue18.
    (recoveredValue25) newlinePutAll: ('restoreDpFpuRegs,').
    recoveredValue26 := recoveredValue18.
    (recoveredValue26) decIndent.
    recoveredValue27 := recoveredValue18.
    (recoveredValue27) newlinePutAll: ('#endif').
    recoveredValue28 := recoveredValue18.
    (recoveredValue28) newlinePutAll: ('terminateHwTask').
    recoveredValue29 := recoveredValue18.
    (recoveredValue29) closeCompoundStmnt.
    recoveredValue30 := recoveredValue18.
    (recoveredValue30) nextPut: ($;).
    recoveredValue31 := recoveredValue18.
    (recoveredValue31) newlinePutAll: ('defineHwTask (').
    recoveredValue32 := recoveredValue18.
    recoveredValue33 := recoveredArg2.
    recoveredValue34 := (recoveredValue33) asCValue.
    (recoveredValue32) nextPutAll: (recoveredValue34).
    recoveredValue35 := recoveredValue18.
    (recoveredValue35) listSeparator.
    recoveredValue36 := recoveredValue18.
    recoveredValue37 := recoveredLocal1.
    (recoveredValue36) nextPutAll: (recoveredValue37).
    recoveredValue38 := recoveredValue18.
    (recoveredValue38) nextPut: ($,).
    recoveredValue39 := recoveredValue18.
    recoveredValue40 := recoveredArg4.
    recoveredValue41 := (recoveredValue40) asCValue.
    (recoveredValue39) nextPutAll: (recoveredValue41).
    recoveredValue42 := recoveredValue18.
    (recoveredValue42) nextPutAll: (',"').
    recoveredValue43 := recoveredValue18.
    recoveredValue44 := recoveredArg1.
    (recoveredValue43) nextPutAll: (recoveredValue44).
    recoveredValue45 := recoveredValue18.
    (recoveredValue45) nextPutAll: ('");').
    (recoveredValue18) newline.
    recoveredValue46 := (self) wrapperStream.
    recoveredValue47 := recoveredValue46.
    (recoveredValue47) newlinePutAll: ('{ ').
    recoveredValue48 := recoveredValue46.
    recoveredValue49 := recoveredArg2.
    recoveredValue50 := (recoveredValue49) asCValue.
    (recoveredValue48) nextPutAll: (recoveredValue50).
    recoveredValue51 := recoveredValue46.
    (recoveredValue51) nextPutAll: (', &hwTask').
    recoveredValue52 := recoveredValue46.
    recoveredValue53 := recoveredArg2.
    recoveredValue54 := (recoveredValue53) asCValue.
    (recoveredValue52) nextPutAll: (recoveredValue54).
    (recoveredValue46) nextPutAll: ('},').
    recoveredValue55 := (self) debugWrapper.
    recoveredValue56 := recoveredValue55.
    (recoveredValue56) newlinePutAll: ('&hwTask').
    recoveredValue57 := recoveredValue55.
    recoveredValue58 := recoveredArg2.
    recoveredValue59 := (recoveredValue58) asCValue.
    (recoveredValue57) nextPutAll: (recoveredValue59).
    (recoveredValue55) listSeparator.
    ^self
! !

"ASDBase.ic method 0x20587b14; bytecode file offset 0xe84438"
!SGIlOSExpERCOSEKSimu methodsFor: 'recovered'!
hookRoutines
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 recoveredValue21 recoveredValue22 recoveredValue23 recoveredValue24 recoveredValue25 recoveredValue26 recoveredValue27 recoveredValue28 recoveredValue29 recoveredValue30 recoveredValue31 recoveredValue32 recoveredValue33 recoveredValue34 recoveredValue35 recoveredValue36 recoveredValue37 recoveredValue38 recoveredValue39 recoveredValue40 recoveredValue41 recoveredValue42 recoveredValue43 recoveredValue44 recoveredValue45 recoveredValue46 recoveredValue47 recoveredValue48 recoveredValue49 recoveredValue50 recoveredValue51 recoveredValue52 recoveredValue53 recoveredValue54 recoveredValue55 recoveredValue56 |
    recoveredValue0 := (self) block.
    (recoveredValue0) newline.
    recoveredValue1 := (self) owner.
    recoveredValue2 := (self) block.
    (recoveredValue1) newlinePutCComment: ('Hook routines') on: (recoveredValue2).
    recoveredValue3 := (self) block.
    recoveredValue4 := recoveredValue3.
    (recoveredValue4) newline.
    recoveredValue5 := recoveredValue3.
    (recoveredValue5) newlinePutAll: ('T_activationHookData activationHookData = {').
    recoveredValue6 := recoveredValue3.
    (recoveredValue6) incIndent.
    (recoveredValue3) newlinePutAll: ('activationHook, ').
    recoveredValue7 := (self) block.
    (self) nextPutCComment: ('pointer to hook routine') on: (recoveredValue7).
    recoveredValue8 := (self) block.
    recoveredValue9 := recoveredValue8.
    (recoveredValue9) newlinePutAll: ('CHECK_BREAK_CONDITIONS,').
    recoveredValue10 := recoveredValue8.
    (recoveredValue10) newlinePutAll: ('{ INVALID_TASK_ID, INVALID_TASK_ID }').
    recoveredValue11 := recoveredValue8.
    (recoveredValue11) decIndent.
    recoveredValue12 := recoveredValue8.
    (recoveredValue12) newlinePutAll: ('};').
    recoveredValue13 := recoveredValue8.
    (recoveredValue13) newline.
    recoveredValue14 := recoveredValue8.
    (recoveredValue14) newlinePutAll: ('T_startTaskHookData startTaskHookData = {').
    recoveredValue15 := recoveredValue8.
    (recoveredValue15) incIndent.
    (recoveredValue8) newlinePutAll: ('startTaskHook, ').
    recoveredValue16 := (self) block.
    (self) nextPutCComment: ('pointer to hook routine') on: (recoveredValue16).
    recoveredValue17 := (self) block.
    recoveredValue18 := recoveredValue17.
    (recoveredValue18) newlinePutAll: ('CHECK_BREAK_CONDITIONS,').
    recoveredValue19 := recoveredValue17.
    (recoveredValue19) newlinePutAll: ('{ INVALID_TASK_ID }').
    recoveredValue20 := recoveredValue17.
    (recoveredValue20) decIndent.
    recoveredValue21 := recoveredValue17.
    (recoveredValue21) newlinePutAll: ('};').
    recoveredValue22 := recoveredValue17.
    (recoveredValue22) newline.
    recoveredValue23 := recoveredValue17.
    (recoveredValue23) newlinePutAll: ('T_endTaskHookData endTaskHookData = {').
    recoveredValue24 := recoveredValue17.
    (recoveredValue24) incIndent.
    (recoveredValue17) newlinePutAll: ('endTaskHook, ').
    recoveredValue25 := (self) block.
    (self) nextPutCComment: ('pointer to hook routine') on: (recoveredValue25).
    recoveredValue26 := (self) block.
    recoveredValue27 := recoveredValue26.
    (recoveredValue27) newlinePutAll: ('CHECK_BREAK_CONDITIONS,').
    recoveredValue28 := recoveredValue26.
    (recoveredValue28) newlinePutAll: ('{ INVALID_TASK_ID }').
    recoveredValue29 := recoveredValue26.
    (recoveredValue29) decIndent.
    recoveredValue30 := recoveredValue26.
    (recoveredValue30) newlinePutAll: ('};').
    recoveredValue31 := recoveredValue26.
    (recoveredValue31) newline.
    recoveredValue32 := recoveredValue26.
    (recoveredValue32) newlinePutAll: ('T_getResHookData getResHookData = {').
    recoveredValue33 := recoveredValue26.
    (recoveredValue33) incIndent.
    (recoveredValue26) newlinePutAll: ('getResHook, ').
    recoveredValue34 := (self) block.
    (self) nextPutCComment: ('pointer to hook routine') on: (recoveredValue34).
    recoveredValue35 := (self) block.
    recoveredValue36 := recoveredValue35.
    (recoveredValue36) newlinePutAll: ('CHECK_BREAK_CONDITIONS,').
    recoveredValue37 := recoveredValue35.
    (recoveredValue37) newlinePutAll: ('{ INVALID_PRIO, INVALID_PRIO }').
    recoveredValue38 := recoveredValue35.
    (recoveredValue38) decIndent.
    recoveredValue39 := recoveredValue35.
    (recoveredValue39) newlinePutAll: ('};').
    recoveredValue40 := recoveredValue35.
    (recoveredValue40) newline.
    recoveredValue41 := recoveredValue35.
    (recoveredValue41) newlinePutAll: ('T_releaseResHookData releaseResHookData = {').
    recoveredValue42 := recoveredValue35.
    (recoveredValue42) incIndent.
    (recoveredValue35) newlinePutAll: ('releaseResHook, ').
    recoveredValue43 := (self) block.
    (self) nextPutCComment: ('pointer to hook routine') on: (recoveredValue43).
    recoveredValue44 := (self) block.
    recoveredValue45 := recoveredValue44.
    (recoveredValue45) newlinePutAll: ('CHECK_BREAK_CONDITIONS,').
    recoveredValue46 := recoveredValue44.
    (recoveredValue46) newlinePutAll: ('{ INVALID_PRIO, INVALID_PRIO }').
    recoveredValue47 := recoveredValue44.
    (recoveredValue47) decIndent.
    recoveredValue48 := recoveredValue44.
    (recoveredValue48) newlinePutAll: ('};').
    recoveredValue49 := recoveredValue44.
    (recoveredValue49) newline.
    recoveredValue50 := recoveredValue44.
    (recoveredValue50) newlinePutAll: ('T_endAppModeHookData endAppModeHookData = {').
    recoveredValue51 := recoveredValue44.
    (recoveredValue51) incIndent.
    (recoveredValue44) newlinePutAll: ('endAppModeHook, ').
    recoveredValue52 := (self) block.
    (self) nextPutCComment: ('pointer to hook routine') on: (recoveredValue52).
    recoveredValue53 := (self) block.
    recoveredValue54 := recoveredValue53.
    (recoveredValue54) newlinePutAll: ('DONT_BREAK').
    recoveredValue55 := recoveredValue53.
    (recoveredValue55) decIndent.
    recoveredValue56 := recoveredValue53.
    (recoveredValue56) newlinePutAll: ('};').
    (recoveredValue53) newline.
    ^self
! !

"ASDBase.ic method 0x205907a4; bytecode file offset 0xe8d104"
!SGIlOSExpERCOSEKSimu methodsFor: 'recovered'!
swTask: recoveredArg1 id: recoveredArg2 prio: recoveredArg3 maxActive: recoveredArg4 procs: recoveredArg5 opModes: recoveredArg6
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 recoveredValue21 recoveredValue22 recoveredValue23 recoveredValue24 recoveredValue25 recoveredValue26 recoveredValue27 recoveredValue28 recoveredValue29 recoveredValue30 recoveredValue31 recoveredValue32 recoveredValue33 recoveredValue34 recoveredValue35 recoveredValue36 recoveredValue37 recoveredValue38 recoveredValue39 recoveredValue40 recoveredValue41 recoveredValue42 recoveredValue43 recoveredValue44 recoveredValue45 recoveredValue46 recoveredValue47 recoveredValue48 recoveredValue49 recoveredValue50 recoveredValue51 recoveredValue52 recoveredValue53 recoveredValue54 recoveredValue55 recoveredValue56 recoveredValue57 recoveredValue58 recoveredValue59 recoveredValue60 recoveredValue61 recoveredValue62 recoveredValue63 recoveredValue64 recoveredValue65 recoveredValue66 recoveredValue67 recoveredValue68 recoveredValue69 recoveredValue70 recoveredValue71 recoveredValue72 recoveredValue73 recoveredValue74 recoveredValue75 recoveredValue76 recoveredValue77 recoveredValue78 |
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
    recoveredValue18 := (recoveredValue17) , (' = ').
    (recoveredValue15) newlinePutAll: (recoveredValue18).
    recoveredValue19 := recoveredValue9.
    (recoveredValue19) openInitializer.
    recoveredValue20 := recoveredValue9.
    (recoveredValue20) newlinePutAll: ('#ifdef SW_TASK_PROLOGUE').
    recoveredValue21 := recoveredValue9.
    (recoveredValue21) incIndent.
    recoveredValue22 := recoveredValue9.
    (recoveredValue22) newlinePutAll: ('SW_TASK_PROLOGUE').
    recoveredValue23 := recoveredValue9.
    (recoveredValue23) decIndent.
    recoveredValue24 := recoveredValue9.
    (recoveredValue24) newlinePutAll: ('#else').
    recoveredValue25 := recoveredValue9.
    (recoveredValue25) incIndent.
    recoveredValue26 := recoveredValue9.
    (recoveredValue26) newlinePutAll: ('saveDpFpuRegs,').
    recoveredValue27 := recoveredValue9.
    (recoveredValue27) newlinePutAll: ('PreTaskHook,').
    recoveredValue28 := recoveredValue9.
    (recoveredValue28) decIndent.
    recoveredValue29 := recoveredValue9.
    (recoveredValue29) newlinePutAll: ('#endif').
    (recoveredValue9) incIndent.
    recoveredValue30 := recoveredArg5.
    (self) processRefs: (recoveredValue30).
    recoveredValue31 := (self) block.
    recoveredValue32 := recoveredValue31.
    (recoveredValue32) decIndent.
    recoveredValue33 := recoveredValue31.
    (recoveredValue33) newlinePutAll: ('#ifdef SW_TASK_EPILOGUE').
    recoveredValue34 := recoveredValue31.
    (recoveredValue34) incIndent.
    recoveredValue35 := recoveredValue31.
    (recoveredValue35) newlinePutAll: ('SW_TASK_EPILOGUE').
    recoveredValue36 := recoveredValue31.
    (recoveredValue36) decIndent.
    recoveredValue37 := recoveredValue31.
    (recoveredValue37) newlinePutAll: ('#else').
    recoveredValue38 := recoveredValue31.
    (recoveredValue38) incIndent.
    recoveredValue39 := recoveredValue31.
    (recoveredValue39) newlinePutAll: ('PostTaskHook,').
    recoveredValue40 := recoveredValue31.
    (recoveredValue40) newlinePutAll: ('restoreDpFpuRegs,').
    recoveredValue41 := recoveredValue31.
    (recoveredValue41) decIndent.
    recoveredValue42 := recoveredValue31.
    (recoveredValue42) newlinePutAll: ('#endif').
    recoveredValue43 := recoveredValue31.
    (recoveredValue43) newlinePutAll: ('(T_processPtr) TerminateTask ').
    recoveredValue44 := recoveredValue31.
    (recoveredValue44) closeInitializer.
    recoveredValue45 := recoveredValue31.
    recoveredValue46 := recoveredArg2.
    recoveredValue47 := (recoveredValue46) asCValue.
    recoveredValue48 := ('newDefineSwTask (') , (recoveredValue47).
    recoveredValue49 := (recoveredValue48) , (',').
    recoveredValue50 := recoveredLocal1.
    recoveredValue51 := (recoveredValue49) , (recoveredValue50).
    recoveredValue52 := (recoveredValue51) , (',').
    recoveredValue53 := recoveredArg3.
    recoveredValue54 := (recoveredValue53) asCValue.
    recoveredValue55 := (recoveredValue52) , (recoveredValue54).
    recoveredValue56 := (recoveredValue55) , (',').
    recoveredValue57 := recoveredArg4.
    recoveredValue58 := (recoveredValue57) asCValue.
    recoveredValue59 := (recoveredValue56) , (recoveredValue58).
    recoveredValue60 := (recoveredValue59) , (',').
    recoveredValue61 := recoveredArg1.
    recoveredValue62 := (recoveredValue60) , (recoveredValue61).
    recoveredValue63 := (recoveredValue62) , (');').
    (recoveredValue45) newlinePutAll: (recoveredValue63).
    recoveredValue64 := recoveredValue31.
    recoveredValue65 := recoveredLocal2.
    (recoveredValue64) newlinePutAll: (recoveredValue65).
    recoveredValue66 := recoveredValue31.
    (recoveredValue66) openCompoundStmnt.
    recoveredValue67 := recoveredValue31.
    (recoveredValue67) newlinePutAll: ('T_returnCode rCode;').
    recoveredValue68 := recoveredValue31.
    recoveredValue69 := recoveredArg1.
    recoveredValue70 := ('rCode = ActivateTask (') , (recoveredValue69).
    recoveredValue71 := (recoveredValue70) , (');').
    (recoveredValue68) newlinePutAll: (recoveredValue71).
    recoveredValue72 := recoveredValue31.
    (recoveredValue72) closeInitializer.
    (recoveredValue31) newline.
    recoveredValue73 := (self) declHeader.
    recoveredValue74 := recoveredLocal2.
    recoveredValue75 := (recoveredValue74) , (';').
    (recoveredValue73) newlinePutAll: (recoveredValue75).
    recoveredValue76 := recoveredArg1.
    recoveredValue77 := (recoveredValue76) , ('_desc').
    recoveredValue78 := recoveredArg2.
    (self) initSwTask: (recoveredValue77) id: (recoveredValue78).
    ^self
! !

"ASDBase.ic method 0x205af864; bytecode file offset 0xeac17c"
!SGIlOSExpERCOSEKSimu methodsFor: 'recovered'!
osInterruptControlCoop: recoveredArg1 preemp: recoveredArg2 hw: recoveredArg3 sw: recoveredArg4
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredLocal6 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
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
            recoveredStack1 := (recoveredStack1) + (recoveredStack2).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredLocal5 := recoveredStack1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (1).
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := 7.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (recoveredStack2).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := 15.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := (recoveredStack0) block.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            (recoveredStack0) newline.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := 'search table: SW priorities -> CRIC values'.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack2 := (recoveredStack2) block.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            (recoveredStack0) newlinePutCComment: (recoveredStack1) on: (recoveredStack2).
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack0 := (recoveredStack0) block.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            (recoveredStack1) newline.
            recoveredStack1 := recoveredStack0.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack2 := 'const byte _schedIntCtrlTab [NOF_SW_LVLS] ='.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            (recoveredStack1) newlinePutAll: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack2 := ${.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            (recoveredStack1) nextPut: (recoveredStack2).
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            (recoveredStack0) incIndent.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack0 := 14.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredLocal6 := recoveredStack0.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack0 := -1.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack0 := (recoveredStack0) + (-1).
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredPC := 116.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack1 := (recoveredStack1) block.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack2 := '0,'.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack3 := 8.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            (recoveredStack1) newlinePutAll: (recoveredStack2) fillSpaceTo: (recoveredStack3).
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack1 := (recoveredStack1) owner.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack2 := (recoveredStack2) block.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            (recoveredStack1) beginCCommentOn: (recoveredStack2).
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack1 := (recoveredStack1) block.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack3 := 'Priority '.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            (recoveredStack2) nextPutAll: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack3 := (recoveredStack3) asString.
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack4 := 5.
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            (recoveredStack2) nextPutAll: (recoveredStack3) fillSpaceTo: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            recoveredStack3 := 'coop level # '.
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            (recoveredStack2) nextPutAll: (recoveredStack3).
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            recoveredStack2 := (recoveredStack2) + (1).
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            recoveredStack2 := (recoveredStack2) asString.
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            recoveredStack3 := 23.
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            (recoveredStack1) nextPutAll: (recoveredStack2) fillSpaceTo: (recoveredStack3).
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            recoveredStack1 := (recoveredStack1) owner.
            recoveredPC := 112.
        ].
        recoveredStep = 112 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            recoveredStack2 := (recoveredStack2) block.
            recoveredPC := 114.
        ].
        recoveredStep = 114 ifTrue: [
            (recoveredStack1) endCCommentOn: (recoveredStack2).
            recoveredPC := 116.
        ].
        recoveredStep = 116 ifTrue: [
            (recoveredStack0 isInteger and: [recoveredLocal1 isInteger]) ifTrue: [(recoveredLocal1 + 1 <= recoveredStack0) ifTrue: [recoveredLocal1 := recoveredLocal1 + 1. recoveredPC := 66] ifFalse: [recoveredLocal1 := nil. recoveredPC := 130]] ifFalse: [recoveredPC := 120].
        ].
        recoveredStep = 120 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 121.
        ].
        recoveredStep = 121 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 122.
        ].
        recoveredStep = 122 ifTrue: [
            recoveredStack2 := (recoveredStack2) + (1).
            recoveredPC := 123.
        ].
        recoveredStep = 123 ifTrue: [
            recoveredStack3 := recoveredStack2.
            recoveredPC := 124.
        ].
        recoveredStep = 124 ifTrue: [
            recoveredLocal1 := recoveredStack3.
            recoveredPC := 125.
        ].
        recoveredStep = 125 ifTrue: [
            recoveredStack1 := (recoveredStack1) < (recoveredStack2).
            recoveredPC := 126.
        ].
        recoveredStep = 126 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 128] ifFalse: [recoveredPC := 66].
        ].
        recoveredStep = 128 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 129.
        ].
        recoveredStep = 129 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 130.
        ].
        recoveredStep = 130 ifTrue: [
            recoveredPC := 131.
        ].
        recoveredStep = 131 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 133.
        ].
        recoveredStep = 133 ifTrue: [
            recoveredStack0 := (recoveredStack0) + (-1).
            recoveredPC := 134.
        ].
        recoveredStep = 134 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 135.
        ].
        recoveredStep = 135 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 136.
        ].
        recoveredStep = 136 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 137.
        ].
        recoveredStep = 137 ifTrue: [
            recoveredStack0 := (recoveredStack0) - (recoveredStack1).
            recoveredPC := 138.
        ].
        recoveredStep = 138 ifTrue: [
            recoveredStack0 := (recoveredStack0) + (-1).
            recoveredPC := 139.
        ].
        recoveredStep = 139 ifTrue: [
            recoveredPC := 198.
        ].
        recoveredStep = 142 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 143.
        ].
        recoveredStep = 143 ifTrue: [
            recoveredStack1 := (recoveredStack1) block.
            recoveredPC := 144.
        ].
        recoveredStep = 144 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 145.
        ].
        recoveredStep = 145 ifTrue: [
            recoveredStack3 := recoveredLocal6.
            recoveredPC := 147.
        ].
        recoveredStep = 147 ifTrue: [
            recoveredStack3 := (recoveredStack3) asCValue.
            recoveredPC := 149.
        ].
        recoveredStep = 149 ifTrue: [
            (recoveredStack2) newlinePutAll: (recoveredStack3).
            recoveredPC := 151.
        ].
        recoveredStep = 151 ifTrue: [
            recoveredStack2 := ','.
            recoveredPC := 153.
        ].
        recoveredStep = 153 ifTrue: [
            recoveredStack3 := 6.
            recoveredPC := 155.
        ].
        recoveredStep = 155 ifTrue: [
            (recoveredStack1) nextPutAll: (recoveredStack2) fillSpaceTo: (recoveredStack3).
            recoveredPC := 157.
        ].
        recoveredStep = 157 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 158.
        ].
        recoveredStep = 158 ifTrue: [
            recoveredStack1 := (recoveredStack1) owner.
            recoveredPC := 160.
        ].
        recoveredStep = 160 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 161.
        ].
        recoveredStep = 161 ifTrue: [
            recoveredStack2 := (recoveredStack2) block.
            recoveredPC := 162.
        ].
        recoveredStep = 162 ifTrue: [
            (recoveredStack1) beginCCommentOn: (recoveredStack2).
            recoveredPC := 164.
        ].
        recoveredStep = 164 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 165.
        ].
        recoveredStep = 165 ifTrue: [
            recoveredStack1 := (recoveredStack1) block.
            recoveredPC := 166.
        ].
        recoveredStep = 166 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 167.
        ].
        recoveredStep = 167 ifTrue: [
            recoveredStack3 := 'Priority '.
            recoveredPC := 169.
        ].
        recoveredStep = 169 ifTrue: [
            (recoveredStack2) nextPutAll: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 172.
        ].
        recoveredStep = 172 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 173.
        ].
        recoveredStep = 173 ifTrue: [
            recoveredStack3 := (recoveredStack3) asString.
            recoveredPC := 175.
        ].
        recoveredStep = 175 ifTrue: [
            recoveredStack4 := 5.
            recoveredPC := 177.
        ].
        recoveredStep = 177 ifTrue: [
            (recoveredStack2) nextPutAll: (recoveredStack3) fillSpaceTo: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 180.
        ].
        recoveredStep = 180 ifTrue: [
            recoveredStack3 := 'preemp levels; exclusive sw tasks'.
            recoveredPC := 182.
        ].
        recoveredStep = 182 ifTrue: [
            (recoveredStack2) nextPutAll: (recoveredStack3).
            recoveredPC := 184.
        ].
        recoveredStep = 184 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 185.
        ].
        recoveredStep = 185 ifTrue: [
            recoveredStack2 := (recoveredStack2) asString.
            recoveredPC := 187.
        ].
        recoveredStep = 187 ifTrue: [
            recoveredStack3 := 3.
            recoveredPC := 189.
        ].
        recoveredStep = 189 ifTrue: [
            (recoveredStack1) nextPutAll: (recoveredStack2) fillSpaceTo: (recoveredStack3).
            recoveredPC := 191.
        ].
        recoveredStep = 191 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 192.
        ].
        recoveredStep = 192 ifTrue: [
            recoveredStack1 := (recoveredStack1) owner.
            recoveredPC := 194.
        ].
        recoveredStep = 194 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 195.
        ].
        recoveredStep = 195 ifTrue: [
            recoveredStack2 := (recoveredStack2) block.
            recoveredPC := 196.
        ].
        recoveredStep = 196 ifTrue: [
            (recoveredStack1) endCCommentOn: (recoveredStack2).
            recoveredPC := 198.
        ].
        recoveredStep = 198 ifTrue: [
            (recoveredStack0 isInteger and: [recoveredLocal1 isInteger]) ifTrue: [(recoveredLocal1 + 1 <= recoveredStack0) ifTrue: [recoveredLocal1 := recoveredLocal1 + 1. recoveredPC := 142] ifFalse: [recoveredLocal1 := nil. recoveredPC := 212]] ifFalse: [recoveredPC := 202].
        ].
        recoveredStep = 202 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 203.
        ].
        recoveredStep = 203 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 204.
        ].
        recoveredStep = 204 ifTrue: [
            recoveredStack2 := (recoveredStack2) + (1).
            recoveredPC := 205.
        ].
        recoveredStep = 205 ifTrue: [
            recoveredStack3 := recoveredStack2.
            recoveredPC := 206.
        ].
        recoveredStep = 206 ifTrue: [
            recoveredLocal1 := recoveredStack3.
            recoveredPC := 207.
        ].
        recoveredStep = 207 ifTrue: [
            recoveredStack1 := (recoveredStack1) < (recoveredStack2).
            recoveredPC := 208.
        ].
        recoveredStep = 208 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 210] ifFalse: [recoveredPC := 142].
        ].
        recoveredStep = 210 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 211.
        ].
        recoveredStep = 211 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 212.
        ].
        recoveredStep = 212 ifTrue: [
            recoveredPC := 213.
        ].
        recoveredStep = 213 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 214.
        ].
        recoveredStep = 214 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 215.
        ].
        recoveredStep = 215 ifTrue: [
            recoveredStack0 := (recoveredStack0) - (recoveredStack1).
            recoveredPC := 216.
        ].
        recoveredStep = 216 ifTrue: [
            recoveredStack0 := (recoveredStack0) + (-1).
            recoveredPC := 217.
        ].
        recoveredStep = 217 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 218.
        ].
        recoveredStep = 218 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 219.
        ].
        recoveredStep = 219 ifTrue: [
            recoveredStack0 := (recoveredStack0) + (-2).
            recoveredPC := 220.
        ].
        recoveredStep = 220 ifTrue: [
            recoveredPC := 279.
        ].
        recoveredStep = 224 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 225.
        ].
        recoveredStep = 225 ifTrue: [
            recoveredStack1 := (recoveredStack1) block.
            recoveredPC := 226.
        ].
        recoveredStep = 226 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 227.
        ].
        recoveredStep = 227 ifTrue: [
            recoveredStack3 := recoveredLocal6.
            recoveredPC := 229.
        ].
        recoveredStep = 229 ifTrue: [
            recoveredStack3 := (recoveredStack3) asCValue.
            recoveredPC := 231.
        ].
        recoveredStep = 231 ifTrue: [
            recoveredStack4 := 2.
            recoveredPC := 233.
        ].
        recoveredStep = 233 ifTrue: [
            (recoveredStack2) newlinePutAll: (recoveredStack3) fillSpaceTo: (recoveredStack4).
            recoveredPC := 235.
        ].
        recoveredStep = 235 ifTrue: [
            recoveredStack2 := ',     '.
            recoveredPC := 237.
        ].
        recoveredStep = 237 ifTrue: [
            (recoveredStack1) nextPutAll: (recoveredStack2).
            recoveredPC := 239.
        ].
        recoveredStep = 239 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 240.
        ].
        recoveredStep = 240 ifTrue: [
            recoveredStack1 := (recoveredStack1) owner.
            recoveredPC := 242.
        ].
        recoveredStep = 242 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 243.
        ].
        recoveredStep = 243 ifTrue: [
            recoveredStack2 := (recoveredStack2) block.
            recoveredPC := 244.
        ].
        recoveredStep = 244 ifTrue: [
            (recoveredStack1) beginCCommentOn: (recoveredStack2).
            recoveredPC := 246.
        ].
        recoveredStep = 246 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 247.
        ].
        recoveredStep = 247 ifTrue: [
            recoveredStack1 := (recoveredStack1) block.
            recoveredPC := 248.
        ].
        recoveredStep = 248 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 249.
        ].
        recoveredStep = 249 ifTrue: [
            recoveredStack3 := 'Priority '.
            recoveredPC := 251.
        ].
        recoveredStep = 251 ifTrue: [
            (recoveredStack2) nextPutAll: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 254.
        ].
        recoveredStep = 254 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 255.
        ].
        recoveredStep = 255 ifTrue: [
            recoveredStack3 := (recoveredStack3) asString.
            recoveredPC := 257.
        ].
        recoveredStep = 257 ifTrue: [
            recoveredStack4 := 5.
            recoveredPC := 259.
        ].
        recoveredStep = 259 ifTrue: [
            (recoveredStack2) nextPutAll: (recoveredStack3) fillSpaceTo: (recoveredStack4).
            recoveredPC := 261.
        ].
        recoveredStep = 261 ifTrue: [
            recoveredStack2 := 'preemp level; sw/hw task overlapping'.
            recoveredPC := 263.
        ].
        recoveredStep = 263 ifTrue: [
            recoveredStack3 := 36.
            recoveredPC := 265.
        ].
        recoveredStep = 265 ifTrue: [
            (recoveredStack1) nextPutAll: (recoveredStack2) fillSpaceTo: (recoveredStack3).
            recoveredPC := 267.
        ].
        recoveredStep = 267 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 268.
        ].
        recoveredStep = 268 ifTrue: [
            recoveredStack1 := (recoveredStack1) owner.
            recoveredPC := 270.
        ].
        recoveredStep = 270 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 271.
        ].
        recoveredStep = 271 ifTrue: [
            recoveredStack2 := (recoveredStack2) block.
            recoveredPC := 272.
        ].
        recoveredStep = 272 ifTrue: [
            (recoveredStack1) endCCommentOn: (recoveredStack2).
            recoveredPC := 274.
        ].
        recoveredStep = 274 ifTrue: [
            recoveredStack1 := recoveredLocal6.
            recoveredPC := 276.
        ].
        recoveredStep = 276 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (-1).
            recoveredPC := 277.
        ].
        recoveredStep = 277 ifTrue: [
            recoveredLocal6 := recoveredStack1.
            recoveredPC := 279.
        ].
        recoveredStep = 279 ifTrue: [
            (recoveredStack0 isInteger and: [recoveredLocal1 isInteger]) ifTrue: [(recoveredLocal1 + 1 <= recoveredStack0) ifTrue: [recoveredLocal1 := recoveredLocal1 + 1. recoveredPC := 224] ifFalse: [recoveredLocal1 := nil. recoveredPC := 293]] ifFalse: [recoveredPC := 283].
        ].
        recoveredStep = 283 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 284.
        ].
        recoveredStep = 284 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 285.
        ].
        recoveredStep = 285 ifTrue: [
            recoveredStack2 := (recoveredStack2) + (1).
            recoveredPC := 286.
        ].
        recoveredStep = 286 ifTrue: [
            recoveredStack3 := recoveredStack2.
            recoveredPC := 287.
        ].
        recoveredStep = 287 ifTrue: [
            recoveredLocal1 := recoveredStack3.
            recoveredPC := 288.
        ].
        recoveredStep = 288 ifTrue: [
            recoveredStack1 := (recoveredStack1) < (recoveredStack2).
            recoveredPC := 289.
        ].
        recoveredStep = 289 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 291] ifFalse: [recoveredPC := 224].
        ].
        recoveredStep = 291 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 292.
        ].
        recoveredStep = 292 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 293.
        ].
        recoveredStep = 293 ifTrue: [
            recoveredPC := 294.
        ].
        recoveredStep = 294 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 295.
        ].
        recoveredStep = 295 ifTrue: [
            recoveredStack0 := (recoveredStack0) block.
            recoveredPC := 296.
        ].
        recoveredStep = 296 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 297.
        ].
        recoveredStep = 297 ifTrue: [
            (recoveredStack1) decIndent.
            recoveredStack1 := recoveredStack0.
            recoveredPC := 300.
        ].
        recoveredStep = 300 ifTrue: [
            recoveredStack2 := '};'.
            recoveredPC := 302.
        ].
        recoveredStep = 302 ifTrue: [
            (recoveredStack1) newlinePutAll: (recoveredStack2).
            recoveredPC := 304.
        ].
        recoveredStep = 304 ifTrue: [
            (recoveredStack0) newline.
            recoveredPC := 306.
        ].
        recoveredStep = 306 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 307.
        ].
        recoveredStep = 307 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x205c1528; bytecode file offset 0xebde88"
!SGIlOSExpERCOSEKSimu methodsFor: 'recovered'!
prioLevelsCoop: recoveredArg1 preemp: recoveredArg2 hw: recoveredArg3 sw: recoveredArg4
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
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
            recoveredStack1 := (recoveredStack1) + (recoveredStack2).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := (recoveredStack0) block.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) asAnsiCCodeStream.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := (recoveredStack0) > (recoveredStack1).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 29] ifFalse: [recoveredPC := 22].
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := (recoveredStack0) errorHandler.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := 'OS specification - number of cooperative levels must be > 0'.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack2 := nil.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            (recoveredStack0) generalError: (recoveredStack1) source: (recoveredStack2).
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack0 := recoveredArg2.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := 8.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack0 := (recoveredStack0) >= (recoveredStack1).
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 45] ifFalse: [recoveredPC := 38].
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack0 := (recoveredStack0) errorHandler.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := 'OS specification - number of preemptive levels must be >= 8'.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack2 := nil.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            (recoveredStack0) generalError: (recoveredStack1) source: (recoveredStack2).
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack0 := (recoveredStack0) block.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            (recoveredStack0) newline.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack0 := (recoveredStack0) owner.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack1 := 'NOF_COOP_LVLS = asd_coop_lvls'.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack2 := (recoveredStack2) block.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            (recoveredStack0) newlinePutCComment: (recoveredStack1) on: (recoveredStack2).
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack2 := 'NOF_COOP_LVLS'.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack3 := 20.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack2 := (recoveredStack2) fillBlankTo: (recoveredStack3).
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack3 := (recoveredStack3) asCValue.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            (recoveredStack1) cppDefine: (recoveredStack2) as: (recoveredStack3).
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            (recoveredStack0) newline.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack0 := (recoveredStack0) owner.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack1 := 'NOF_SW_LVLS = asd_coop_lvls + asd_preemp_lvls'.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack2 := (recoveredStack2) block.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            (recoveredStack0) newlinePutCComment: (recoveredStack1) on: (recoveredStack2).
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack2 := 'NOF_SW_LVLS'.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredStack3 := 20.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack2 := (recoveredStack2) fillBlankTo: (recoveredStack3).
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredStack3 := recoveredLocal2.
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack3 := (recoveredStack3) asCValue.
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            (recoveredStack1) cppDefine: (recoveredStack2) as: (recoveredStack3).
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            (recoveredStack0) newline.
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            recoveredStack0 := (recoveredStack0) owner.
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            recoveredStack1 := 'NOF_HW_LVLS = 15 (fix value)'.
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            recoveredStack2 := (recoveredStack2) block.
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            (recoveredStack0) newlinePutCComment: (recoveredStack1) on: (recoveredStack2).
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            recoveredStack2 := 'NOF_HW_LVLS'.
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            recoveredStack3 := 20.
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            recoveredStack2 := (recoveredStack2) fillBlankTo: (recoveredStack3).
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            recoveredStack3 := 15.
            recoveredPC := 117.
        ].
        recoveredStep = 117 ifTrue: [
            recoveredStack3 := (recoveredStack3) asCValue.
            recoveredPC := 119.
        ].
        recoveredStep = 119 ifTrue: [
            (recoveredStack1) cppDefine: (recoveredStack2) as: (recoveredStack3).
            recoveredPC := 121.
        ].
        recoveredStep = 121 ifTrue: [
            (recoveredStack0) newline.
            recoveredPC := 123.
        ].
        recoveredStep = 123 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 124.
        ].
        recoveredStep = 124 ifTrue: [
            recoveredStack0 := (recoveredStack0) owner.
            recoveredPC := 126.
        ].
        recoveredStep = 126 ifTrue: [
            recoveredStack1 := 'NOF_LVLS = asd_nof_coop_lvls + asd_nof_preemp_lvls + 7'.
            recoveredPC := 128.
        ].
        recoveredStep = 128 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 129.
        ].
        recoveredStep = 129 ifTrue: [
            recoveredStack2 := (recoveredStack2) block.
            recoveredPC := 130.
        ].
        recoveredStep = 130 ifTrue: [
            (recoveredStack0) newlinePutCComment: (recoveredStack1) on: (recoveredStack2).
            recoveredPC := 132.
        ].
        recoveredStep = 132 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 133.
        ].
        recoveredStep = 133 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 134.
        ].
        recoveredStep = 134 ifTrue: [
            recoveredStack2 := 'NOF_LVLS'.
            recoveredPC := 136.
        ].
        recoveredStep = 136 ifTrue: [
            recoveredStack3 := 20.
            recoveredPC := 138.
        ].
        recoveredStep = 138 ifTrue: [
            recoveredStack2 := (recoveredStack2) fillBlankTo: (recoveredStack3).
            recoveredPC := 140.
        ].
        recoveredStep = 140 ifTrue: [
            recoveredStack3 := recoveredLocal2.
            recoveredPC := 141.
        ].
        recoveredStep = 141 ifTrue: [
            recoveredStack4 := 7.
            recoveredPC := 143.
        ].
        recoveredStep = 143 ifTrue: [
            recoveredStack3 := (recoveredStack3) + (recoveredStack4).
            recoveredPC := 144.
        ].
        recoveredStep = 144 ifTrue: [
            recoveredStack3 := (recoveredStack3) asCValue.
            recoveredPC := 146.
        ].
        recoveredStep = 146 ifTrue: [
            (recoveredStack1) cppDefine: (recoveredStack2) as: (recoveredStack3).
            recoveredPC := 148.
        ].
        recoveredStep = 148 ifTrue: [
            (recoveredStack0) newline.
            recoveredPC := 150.
        ].
        recoveredStep = 150 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 151.
        ].
        recoveredStep = 151 ifTrue: [
            recoveredStack0 := (recoveredStack0) owner.
            recoveredPC := 153.
        ].
        recoveredStep = 153 ifTrue: [
            recoveredStack1 := 'MAX_LS_LVL = NOF_SW_LVLS + 2 - 1'.
            recoveredPC := 155.
        ].
        recoveredStep = 155 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 156.
        ].
        recoveredStep = 156 ifTrue: [
            recoveredStack2 := (recoveredStack2) block.
            recoveredPC := 157.
        ].
        recoveredStep = 157 ifTrue: [
            (recoveredStack0) newlinePutCComment: (recoveredStack1) on: (recoveredStack2).
            recoveredPC := 159.
        ].
        recoveredStep = 159 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 160.
        ].
        recoveredStep = 160 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 161.
        ].
        recoveredStep = 161 ifTrue: [
            recoveredStack2 := 'MAX_LS_LVL'.
            recoveredPC := 163.
        ].
        recoveredStep = 163 ifTrue: [
            recoveredStack3 := 20.
            recoveredPC := 165.
        ].
        recoveredStep = 165 ifTrue: [
            recoveredStack2 := (recoveredStack2) fillBlankTo: (recoveredStack3).
            recoveredPC := 167.
        ].
        recoveredStep = 167 ifTrue: [
            recoveredStack3 := recoveredLocal2.
            recoveredPC := 168.
        ].
        recoveredStep = 168 ifTrue: [
            recoveredStack3 := (recoveredStack3) + (1).
            recoveredPC := 169.
        ].
        recoveredStep = 169 ifTrue: [
            recoveredStack3 := (recoveredStack3) asCValue.
            recoveredPC := 171.
        ].
        recoveredStep = 171 ifTrue: [
            (recoveredStack1) cppDefine: (recoveredStack2) as: (recoveredStack3).
            recoveredPC := 173.
        ].
        recoveredStep = 173 ifTrue: [
            (recoveredStack0) newline.
            recoveredPC := 175.
        ].
        recoveredStep = 175 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 176.
        ].
        recoveredStep = 176 ifTrue: [
            recoveredStack0 := (recoveredStack0) owner.
            recoveredPC := 178.
        ].
        recoveredStep = 178 ifTrue: [
            recoveredStack1 := 'MAX_LS_INT_LVL = 5 (fix value)'.
            recoveredPC := 180.
        ].
        recoveredStep = 180 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 181.
        ].
        recoveredStep = 181 ifTrue: [
            recoveredStack2 := (recoveredStack2) block.
            recoveredPC := 182.
        ].
        recoveredStep = 182 ifTrue: [
            (recoveredStack0) newlinePutCComment: (recoveredStack1) on: (recoveredStack2).
            recoveredPC := 184.
        ].
        recoveredStep = 184 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 185.
        ].
        recoveredStep = 185 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 186.
        ].
        recoveredStep = 186 ifTrue: [
            recoveredStack2 := 'MAX_LS_INT_LVL'.
            recoveredPC := 188.
        ].
        recoveredStep = 188 ifTrue: [
            recoveredStack3 := 20.
            recoveredPC := 190.
        ].
        recoveredStep = 190 ifTrue: [
            recoveredStack2 := (recoveredStack2) fillBlankTo: (recoveredStack3).
            recoveredPC := 192.
        ].
        recoveredStep = 192 ifTrue: [
            recoveredStack3 := 5.
            recoveredPC := 194.
        ].
        recoveredStep = 194 ifTrue: [
            recoveredStack3 := (recoveredStack3) asCValue.
            recoveredPC := 196.
        ].
        recoveredStep = 196 ifTrue: [
            (recoveredStack1) cppDefine: (recoveredStack2) as: (recoveredStack3).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 199.
        ].
        recoveredStep = 199 ifTrue: [
            (recoveredStack1) newline.
            recoveredStack1 := recoveredStack0.
            recoveredPC := 202.
        ].
        recoveredStep = 202 ifTrue: [
            recoveredStack2 := 'LS_INT_MASK'.
            recoveredPC := 204.
        ].
        recoveredStep = 204 ifTrue: [
            recoveredStack3 := 20.
            recoveredPC := 206.
        ].
        recoveredStep = 206 ifTrue: [
            recoveredStack2 := (recoveredStack2) fillBlankTo: (recoveredStack3).
            recoveredPC := 208.
        ].
        recoveredStep = 208 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 209.
        ].
        recoveredStep = 209 ifTrue: [
            recoveredStack3 := (recoveredStack3) lsIntMask.
            recoveredPC := 211.
        ].
        recoveredStep = 211 ifTrue: [
            (recoveredStack1) cppDefine: (recoveredStack2) as: (recoveredStack3).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 214.
        ].
        recoveredStep = 214 ifTrue: [
            recoveredStack2 := 'HS_INT_MASK'.
            recoveredPC := 216.
        ].
        recoveredStep = 216 ifTrue: [
            recoveredStack3 := 20.
            recoveredPC := 218.
        ].
        recoveredStep = 218 ifTrue: [
            recoveredStack2 := (recoveredStack2) fillBlankTo: (recoveredStack3).
            recoveredPC := 220.
        ].
        recoveredStep = 220 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 221.
        ].
        recoveredStep = 221 ifTrue: [
            recoveredStack3 := (recoveredStack3) hsIntMask.
            recoveredPC := 223.
        ].
        recoveredStep = 223 ifTrue: [
            (recoveredStack1) cppDefine: (recoveredStack2) as: (recoveredStack3).
            recoveredPC := 225.
        ].
        recoveredStep = 225 ifTrue: [
            (recoveredStack0) newline.
            recoveredPC := 227.
        ].
        recoveredStep = 227 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 228.
        ].
        recoveredStep = 228 ifTrue: [
            recoveredStack0 := (recoveredStack0) owner.
            recoveredPC := 230.
        ].
        recoveredStep = 230 ifTrue: [
            recoveredStack1 := 'NOF_RESOURCES = 0 (fix value)'.
            recoveredPC := 232.
        ].
        recoveredStep = 232 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 233.
        ].
        recoveredStep = 233 ifTrue: [
            recoveredStack2 := (recoveredStack2) block.
            recoveredPC := 234.
        ].
        recoveredStep = 234 ifTrue: [
            (recoveredStack0) newlinePutCComment: (recoveredStack1) on: (recoveredStack2).
            recoveredPC := 236.
        ].
        recoveredStep = 236 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 237.
        ].
        recoveredStep = 237 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 238.
        ].
        recoveredStep = 238 ifTrue: [
            recoveredStack2 := 'NOF_RESOURCES'.
            recoveredPC := 240.
        ].
        recoveredStep = 240 ifTrue: [
            recoveredStack3 := 20.
            recoveredPC := 242.
        ].
        recoveredStep = 242 ifTrue: [
            recoveredStack2 := (recoveredStack2) fillBlankTo: (recoveredStack3).
            recoveredPC := 244.
        ].
        recoveredStep = 244 ifTrue: [
            recoveredStack3 := 0.
            recoveredPC := 246.
        ].
        recoveredStep = 246 ifTrue: [
            recoveredStack3 := (recoveredStack3) asCValue.
            recoveredPC := 248.
        ].
        recoveredStep = 248 ifTrue: [
            (recoveredStack1) cppDefine: (recoveredStack2) as: (recoveredStack3).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 251.
        ].
        recoveredStep = 251 ifTrue: [
            (recoveredStack1) newline.
            recoveredStack1 := recoveredStack0.
            recoveredPC := 254.
        ].
        recoveredStep = 254 ifTrue: [
            recoveredStack2 := 'section USERSTACK ".data_userStack" ".bss_userStack"'.
            recoveredPC := 256.
        ].
        recoveredStep = 256 ifTrue: [
            (recoveredStack1) cppPragma: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 259.
        ].
        recoveredStep = 259 ifTrue: [
            recoveredStack2 := ' far-absolute RW'.
            recoveredPC := 261.
        ].
        recoveredStep = 261 ifTrue: [
            (recoveredStack1) nextPutAll: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 264.
        ].
        recoveredStep = 264 ifTrue: [
            recoveredStack2 := 'use_section USERSTACK userStack'.
            recoveredPC := 266.
        ].
        recoveredStep = 266 ifTrue: [
            (recoveredStack1) cppPragma: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 269.
        ].
        recoveredStep = 269 ifTrue: [
            recoveredStack2 := 'DEFINE_USER_STACK'.
            recoveredPC := 271.
        ].
        recoveredStep = 271 ifTrue: [
            (recoveredStack1) newlinePutAll: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 274.
        ].
        recoveredStep = 274 ifTrue: [
            (recoveredStack1) newline.
            recoveredStack1 := recoveredStack0.
            recoveredPC := 277.
        ].
        recoveredStep = 277 ifTrue: [
            recoveredStack2 := 'section ERCOSEKSTACK ".data_ercosekStack" ".bss_ercosekStack"'.
            recoveredPC := 279.
        ].
        recoveredStep = 279 ifTrue: [
            (recoveredStack1) cppPragma: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 282.
        ].
        recoveredStep = 282 ifTrue: [
            recoveredStack2 := ' far-absolute RW'.
            recoveredPC := 284.
        ].
        recoveredStep = 284 ifTrue: [
            (recoveredStack1) nextPutAll: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 287.
        ].
        recoveredStep = 287 ifTrue: [
            recoveredStack2 := 'use_section ERCOSEKSTACK ercosStack'.
            recoveredPC := 289.
        ].
        recoveredStep = 289 ifTrue: [
            (recoveredStack1) cppPragma: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 292.
        ].
        recoveredStep = 292 ifTrue: [
            recoveredStack2 := 'DEFINE_ERCOSEK_STACK'.
            recoveredPC := 294.
        ].
        recoveredStep = 294 ifTrue: [
            (recoveredStack1) newlinePutAll: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 297.
        ].
        recoveredStep = 297 ifTrue: [
            (recoveredStack1) newline.
            recoveredStack1 := recoveredStack0.
            recoveredPC := 300.
        ].
        recoveredStep = 300 ifTrue: [
            recoveredStack2 := 'T_mon _mon [NOF_SW_LVLS];'.
            recoveredPC := 302.
        ].
        recoveredStep = 302 ifTrue: [
            (recoveredStack1) newlinePutAll: (recoveredStack2).
            recoveredPC := 304.
        ].
        recoveredStep = 304 ifTrue: [
            (recoveredStack0) newline.
            recoveredPC := 306.
        ].
        recoveredStep = 306 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 307.
        ].
        recoveredStep = 307 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 309.
        ].
        recoveredStep = 309 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 311.
        ].
        recoveredStep = 311 ifTrue: [
            recoveredStack3 := recoveredArg3.
            recoveredPC := 312.
        ].
        recoveredStep = 312 ifTrue: [
            recoveredStack4 := recoveredArg4.
            recoveredPC := 313.
        ].
        recoveredStep = 313 ifTrue: [
            (recoveredStack0) osInterruptMasksCoop: (recoveredStack1) preemp: (recoveredStack2) hw: (recoveredStack3) sw: (recoveredStack4).
            recoveredPC := 316.
        ].
        recoveredStep = 316 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 317.
        ].
        recoveredStep = 317 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 319.
        ].
        recoveredStep = 319 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 321.
        ].
        recoveredStep = 321 ifTrue: [
            recoveredStack3 := recoveredArg3.
            recoveredPC := 322.
        ].
        recoveredStep = 322 ifTrue: [
            recoveredStack4 := recoveredArg4.
            recoveredPC := 323.
        ].
        recoveredStep = 323 ifTrue: [
            (recoveredStack0) osInterruptControlCoop: (recoveredStack1) preemp: (recoveredStack2) hw: (recoveredStack3) sw: (recoveredStack4).
            recoveredPC := 326.
        ].
        recoveredStep = 326 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 327.
        ].
        recoveredStep = 327 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20613e40; bytecode file offset 0xf1076c"
!SGIlOSExpERCOSEKSimu methodsFor: 'recovered'!
osInterruptMasksCoop: recoveredArg1 preemp: recoveredArg2 hw: recoveredArg3 sw: recoveredArg4
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredLocal6 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
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
            recoveredStack1 := (recoveredStack1) + (recoveredStack2).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredLocal5 := recoveredStack1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (1).
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := 7.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (recoveredStack2).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := 15.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := (recoveredStack0) block.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack2 := 'const uint _intMaskTab [NOF_LVLS] ='.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            (recoveredStack1) newlinePutAll: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            (recoveredStack1) newline.
            recoveredStack1 := recoveredStack0.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack2 := ${.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            (recoveredStack1) nextPut: (recoveredStack2).
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            (recoveredStack0) incIndent.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack0 := (recoveredStack0) coopLevelMask.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredLocal6 := recoveredStack0.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack0 := -1.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack0 := (recoveredStack0) + (-1).
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredPC := 112.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack1 := (recoveredStack1) block.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack4 := recoveredLocal6.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack3 := (recoveredStack3) asHex: (recoveredStack4).
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack4 := 6.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            (recoveredStack2) newlinePutAll: (recoveredStack3) fillSpaceTo: (recoveredStack4).
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            (recoveredStack1) listSeparator.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack1 := (recoveredStack1) owner.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack2 := (recoveredStack2) block.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            (recoveredStack1) beginCCommentOn: (recoveredStack2).
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack1 := (recoveredStack1) block.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack3 := 'Priority '.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            (recoveredStack2) nextPutAll: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack3 := (recoveredStack3) asString.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack4 := 5.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            (recoveredStack2) nextPutAll: (recoveredStack3) fillSpaceTo: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredStack3 := 'coop level #'.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            (recoveredStack2) nextPutAll: (recoveredStack3).
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack2 := (recoveredStack2) + (1).
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            recoveredStack2 := (recoveredStack2) asString.
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            recoveredStack3 := 23.
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            (recoveredStack1) nextPutAll: (recoveredStack2) fillSpaceTo: (recoveredStack3).
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            recoveredStack1 := (recoveredStack1) owner.
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            recoveredStack2 := (recoveredStack2) block.
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            (recoveredStack1) endCCommentOn: (recoveredStack2).
            recoveredPC := 112.
        ].
        recoveredStep = 112 ifTrue: [
            (recoveredStack0 isInteger and: [recoveredLocal1 isInteger]) ifTrue: [(recoveredLocal1 + 1 <= recoveredStack0) ifTrue: [recoveredLocal1 := recoveredLocal1 + 1. recoveredPC := 56] ifFalse: [recoveredLocal1 := nil. recoveredPC := 126]] ifFalse: [recoveredPC := 116].
        ].
        recoveredStep = 116 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 117.
        ].
        recoveredStep = 117 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 118.
        ].
        recoveredStep = 118 ifTrue: [
            recoveredStack2 := (recoveredStack2) + (1).
            recoveredPC := 119.
        ].
        recoveredStep = 119 ifTrue: [
            recoveredStack3 := recoveredStack2.
            recoveredPC := 120.
        ].
        recoveredStep = 120 ifTrue: [
            recoveredLocal1 := recoveredStack3.
            recoveredPC := 121.
        ].
        recoveredStep = 121 ifTrue: [
            recoveredStack1 := (recoveredStack1) < (recoveredStack2).
            recoveredPC := 122.
        ].
        recoveredStep = 122 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 124] ifFalse: [recoveredPC := 56].
        ].
        recoveredStep = 124 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 125.
        ].
        recoveredStep = 125 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 126.
        ].
        recoveredStep = 126 ifTrue: [
            recoveredPC := 127.
        ].
        recoveredStep = 127 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 129.
        ].
        recoveredStep = 129 ifTrue: [
            recoveredStack0 := (recoveredStack0) + (-1).
            recoveredPC := 130.
        ].
        recoveredStep = 130 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 131.
        ].
        recoveredStep = 131 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 132.
        ].
        recoveredStep = 132 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 133.
        ].
        recoveredStep = 133 ifTrue: [
            recoveredStack0 := (recoveredStack0) - (recoveredStack1).
            recoveredPC := 134.
        ].
        recoveredStep = 134 ifTrue: [
            recoveredStack0 := (recoveredStack0) + (-1).
            recoveredPC := 135.
        ].
        recoveredStep = 135 ifTrue: [
            recoveredPC := 187.
        ].
        recoveredStep = 138 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 139.
        ].
        recoveredStep = 139 ifTrue: [
            recoveredStack1 := (recoveredStack1) block.
            recoveredPC := 140.
        ].
        recoveredStep = 140 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 141.
        ].
        recoveredStep = 141 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 142.
        ].
        recoveredStep = 142 ifTrue: [
            recoveredStack4 := recoveredLocal6.
            recoveredPC := 144.
        ].
        recoveredStep = 144 ifTrue: [
            recoveredStack3 := (recoveredStack3) asHex: (recoveredStack4).
            recoveredPC := 146.
        ].
        recoveredStep = 146 ifTrue: [
            recoveredStack4 := 6.
            recoveredPC := 148.
        ].
        recoveredStep = 148 ifTrue: [
            (recoveredStack2) newlinePutAll: (recoveredStack3) fillSpaceTo: (recoveredStack4).
            recoveredPC := 150.
        ].
        recoveredStep = 150 ifTrue: [
            (recoveredStack1) listSeparator.
            recoveredPC := 152.
        ].
        recoveredStep = 152 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 153.
        ].
        recoveredStep = 153 ifTrue: [
            recoveredStack1 := (recoveredStack1) owner.
            recoveredPC := 155.
        ].
        recoveredStep = 155 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 156.
        ].
        recoveredStep = 156 ifTrue: [
            recoveredStack2 := (recoveredStack2) block.
            recoveredPC := 157.
        ].
        recoveredStep = 157 ifTrue: [
            (recoveredStack1) beginCCommentOn: (recoveredStack2).
            recoveredPC := 159.
        ].
        recoveredStep = 159 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 160.
        ].
        recoveredStep = 160 ifTrue: [
            recoveredStack1 := (recoveredStack1) block.
            recoveredPC := 161.
        ].
        recoveredStep = 161 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 162.
        ].
        recoveredStep = 162 ifTrue: [
            recoveredStack3 := 'Priority '.
            recoveredPC := 164.
        ].
        recoveredStep = 164 ifTrue: [
            (recoveredStack2) nextPutAll: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 167.
        ].
        recoveredStep = 167 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 168.
        ].
        recoveredStep = 168 ifTrue: [
            recoveredStack3 := (recoveredStack3) asString.
            recoveredPC := 170.
        ].
        recoveredStep = 170 ifTrue: [
            recoveredStack4 := 5.
            recoveredPC := 172.
        ].
        recoveredStep = 172 ifTrue: [
            (recoveredStack2) nextPutAll: (recoveredStack3) fillSpaceTo: (recoveredStack4).
            recoveredPC := 174.
        ].
        recoveredStep = 174 ifTrue: [
            recoveredStack2 := 'preemp level; exclusive sw task'.
            recoveredPC := 176.
        ].
        recoveredStep = 176 ifTrue: [
            recoveredStack3 := 36.
            recoveredPC := 178.
        ].
        recoveredStep = 178 ifTrue: [
            (recoveredStack1) nextPutAll: (recoveredStack2) fillSpaceTo: (recoveredStack3).
            recoveredPC := 180.
        ].
        recoveredStep = 180 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 181.
        ].
        recoveredStep = 181 ifTrue: [
            recoveredStack1 := (recoveredStack1) owner.
            recoveredPC := 183.
        ].
        recoveredStep = 183 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 184.
        ].
        recoveredStep = 184 ifTrue: [
            recoveredStack2 := (recoveredStack2) block.
            recoveredPC := 185.
        ].
        recoveredStep = 185 ifTrue: [
            (recoveredStack1) endCCommentOn: (recoveredStack2).
            recoveredPC := 187.
        ].
        recoveredStep = 187 ifTrue: [
            (recoveredStack0 isInteger and: [recoveredLocal1 isInteger]) ifTrue: [(recoveredLocal1 + 1 <= recoveredStack0) ifTrue: [recoveredLocal1 := recoveredLocal1 + 1. recoveredPC := 138] ifFalse: [recoveredLocal1 := nil. recoveredPC := 201]] ifFalse: [recoveredPC := 191].
        ].
        recoveredStep = 191 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 192.
        ].
        recoveredStep = 192 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 193.
        ].
        recoveredStep = 193 ifTrue: [
            recoveredStack2 := (recoveredStack2) + (1).
            recoveredPC := 194.
        ].
        recoveredStep = 194 ifTrue: [
            recoveredStack3 := recoveredStack2.
            recoveredPC := 195.
        ].
        recoveredStep = 195 ifTrue: [
            recoveredLocal1 := recoveredStack3.
            recoveredPC := 196.
        ].
        recoveredStep = 196 ifTrue: [
            recoveredStack1 := (recoveredStack1) < (recoveredStack2).
            recoveredPC := 197.
        ].
        recoveredStep = 197 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 199] ifFalse: [recoveredPC := 138].
        ].
        recoveredStep = 199 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 200.
        ].
        recoveredStep = 200 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 201.
        ].
        recoveredStep = 201 ifTrue: [
            recoveredPC := 202.
        ].
        recoveredStep = 202 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 203.
        ].
        recoveredStep = 203 ifTrue: [
            recoveredStack0 := (recoveredStack0) preempLevelExclusiveSwMask.
            recoveredPC := 205.
        ].
        recoveredStep = 205 ifTrue: [
            recoveredLocal6 := recoveredStack0.
            recoveredPC := 207.
        ].
        recoveredStep = 207 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 208.
        ].
        recoveredStep = 208 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 209.
        ].
        recoveredStep = 209 ifTrue: [
            recoveredStack0 := (recoveredStack0) - (recoveredStack1).
            recoveredPC := 210.
        ].
        recoveredStep = 210 ifTrue: [
            recoveredStack0 := (recoveredStack0) + (-1).
            recoveredPC := 211.
        ].
        recoveredStep = 211 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 212.
        ].
        recoveredStep = 212 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 213.
        ].
        recoveredStep = 213 ifTrue: [
            recoveredStack0 := (recoveredStack0) + (-2).
            recoveredPC := 214.
        ].
        recoveredStep = 214 ifTrue: [
            recoveredPC := 274.
        ].
        recoveredStep = 218 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 219.
        ].
        recoveredStep = 219 ifTrue: [
            recoveredStack1 := (recoveredStack1) block.
            recoveredPC := 220.
        ].
        recoveredStep = 220 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 221.
        ].
        recoveredStep = 221 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 222.
        ].
        recoveredStep = 222 ifTrue: [
            recoveredStack4 := recoveredLocal6.
            recoveredPC := 224.
        ].
        recoveredStep = 224 ifTrue: [
            recoveredStack3 := (recoveredStack3) asHex: (recoveredStack4).
            recoveredPC := 226.
        ].
        recoveredStep = 226 ifTrue: [
            recoveredStack4 := 6.
            recoveredPC := 228.
        ].
        recoveredStep = 228 ifTrue: [
            (recoveredStack2) newlinePutAll: (recoveredStack3) fillSpaceTo: (recoveredStack4).
            recoveredPC := 230.
        ].
        recoveredStep = 230 ifTrue: [
            (recoveredStack1) listSeparator.
            recoveredPC := 232.
        ].
        recoveredStep = 232 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 233.
        ].
        recoveredStep = 233 ifTrue: [
            recoveredStack1 := (recoveredStack1) owner.
            recoveredPC := 235.
        ].
        recoveredStep = 235 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 236.
        ].
        recoveredStep = 236 ifTrue: [
            recoveredStack2 := (recoveredStack2) block.
            recoveredPC := 237.
        ].
        recoveredStep = 237 ifTrue: [
            (recoveredStack1) beginCCommentOn: (recoveredStack2).
            recoveredPC := 239.
        ].
        recoveredStep = 239 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 240.
        ].
        recoveredStep = 240 ifTrue: [
            recoveredStack1 := (recoveredStack1) block.
            recoveredPC := 241.
        ].
        recoveredStep = 241 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 242.
        ].
        recoveredStep = 242 ifTrue: [
            recoveredStack3 := 'Priority '.
            recoveredPC := 244.
        ].
        recoveredStep = 244 ifTrue: [
            (recoveredStack2) nextPutAll: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 247.
        ].
        recoveredStep = 247 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 248.
        ].
        recoveredStep = 248 ifTrue: [
            recoveredStack3 := (recoveredStack3) asString.
            recoveredPC := 250.
        ].
        recoveredStep = 250 ifTrue: [
            recoveredStack4 := 5.
            recoveredPC := 252.
        ].
        recoveredStep = 252 ifTrue: [
            (recoveredStack2) nextPutAll: (recoveredStack3) fillSpaceTo: (recoveredStack4).
            recoveredPC := 254.
        ].
        recoveredStep = 254 ifTrue: [
            recoveredStack2 := 'preemp level; sw/hw task overlapping'.
            recoveredPC := 256.
        ].
        recoveredStep = 256 ifTrue: [
            recoveredStack3 := 36.
            recoveredPC := 258.
        ].
        recoveredStep = 258 ifTrue: [
            (recoveredStack1) nextPutAll: (recoveredStack2) fillSpaceTo: (recoveredStack3).
            recoveredPC := 260.
        ].
        recoveredStep = 260 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 261.
        ].
        recoveredStep = 261 ifTrue: [
            recoveredStack1 := (recoveredStack1) owner.
            recoveredPC := 263.
        ].
        recoveredStep = 263 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 264.
        ].
        recoveredStep = 264 ifTrue: [
            recoveredStack2 := (recoveredStack2) block.
            recoveredPC := 265.
        ].
        recoveredStep = 265 ifTrue: [
            (recoveredStack1) endCCommentOn: (recoveredStack2).
            recoveredPC := 267.
        ].
        recoveredStep = 267 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 268.
        ].
        recoveredStep = 268 ifTrue: [
            recoveredStack2 := recoveredLocal6.
            recoveredPC := 270.
        ].
        recoveredStep = 270 ifTrue: [
            recoveredStack1 := (recoveredStack1) iterateMask: (recoveredStack2).
            recoveredPC := 272.
        ].
        recoveredStep = 272 ifTrue: [
            recoveredLocal6 := recoveredStack1.
            recoveredPC := 274.
        ].
        recoveredStep = 274 ifTrue: [
            (recoveredStack0 isInteger and: [recoveredLocal1 isInteger]) ifTrue: [(recoveredLocal1 + 1 <= recoveredStack0) ifTrue: [recoveredLocal1 := recoveredLocal1 + 1. recoveredPC := 218] ifFalse: [recoveredLocal1 := nil. recoveredPC := 288]] ifFalse: [recoveredPC := 278].
        ].
        recoveredStep = 278 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 279.
        ].
        recoveredStep = 279 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 280.
        ].
        recoveredStep = 280 ifTrue: [
            recoveredStack2 := (recoveredStack2) + (1).
            recoveredPC := 281.
        ].
        recoveredStep = 281 ifTrue: [
            recoveredStack3 := recoveredStack2.
            recoveredPC := 282.
        ].
        recoveredStep = 282 ifTrue: [
            recoveredLocal1 := recoveredStack3.
            recoveredPC := 283.
        ].
        recoveredStep = 283 ifTrue: [
            recoveredStack1 := (recoveredStack1) < (recoveredStack2).
            recoveredPC := 284.
        ].
        recoveredStep = 284 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 286] ifFalse: [recoveredPC := 218].
        ].
        recoveredStep = 286 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 287.
        ].
        recoveredStep = 287 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 288.
        ].
        recoveredStep = 288 ifTrue: [
            recoveredPC := 289.
        ].
        recoveredStep = 289 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 290.
        ].
        recoveredStep = 290 ifTrue: [
            recoveredStack0 := (recoveredStack0) decrementerMask.
            recoveredPC := 292.
        ].
        recoveredStep = 292 ifTrue: [
            recoveredLocal6 := recoveredStack0.
            recoveredPC := 294.
        ].
        recoveredStep = 294 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 295.
        ].
        recoveredStep = 295 ifTrue: [
            recoveredStack0 := (recoveredStack0) block.
            recoveredPC := 296.
        ].
        recoveredStep = 296 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 297.
        ].
        recoveredStep = 297 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 298.
        ].
        recoveredStep = 298 ifTrue: [
            recoveredStack3 := recoveredLocal6.
            recoveredPC := 300.
        ].
        recoveredStep = 300 ifTrue: [
            recoveredStack2 := (recoveredStack2) asHex: (recoveredStack3).
            recoveredPC := 302.
        ].
        recoveredStep = 302 ifTrue: [
            recoveredStack3 := 6.
            recoveredPC := 304.
        ].
        recoveredStep = 304 ifTrue: [
            (recoveredStack1) newlinePutAll: (recoveredStack2) fillSpaceTo: (recoveredStack3).
            recoveredPC := 306.
        ].
        recoveredStep = 306 ifTrue: [
            (recoveredStack0) listSeparator.
            recoveredPC := 308.
        ].
        recoveredStep = 308 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 309.
        ].
        recoveredStep = 309 ifTrue: [
            recoveredStack0 := (recoveredStack0) owner.
            recoveredPC := 311.
        ].
        recoveredStep = 311 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 312.
        ].
        recoveredStep = 312 ifTrue: [
            recoveredStack1 := (recoveredStack1) block.
            recoveredPC := 313.
        ].
        recoveredStep = 313 ifTrue: [
            (recoveredStack0) beginCCommentOn: (recoveredStack1).
            recoveredPC := 315.
        ].
        recoveredStep = 315 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 316.
        ].
        recoveredStep = 316 ifTrue: [
            recoveredStack0 := (recoveredStack0) block.
            recoveredPC := 317.
        ].
        recoveredStep = 317 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 318.
        ].
        recoveredStep = 318 ifTrue: [
            recoveredStack2 := 'Priority '.
            recoveredPC := 320.
        ].
        recoveredStep = 320 ifTrue: [
            (recoveredStack1) nextPutAll: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 323.
        ].
        recoveredStep = 323 ifTrue: [
            recoveredStack2 := recoveredLocal4.
            recoveredPC := 324.
        ].
        recoveredStep = 324 ifTrue: [
            recoveredStack2 := (recoveredStack2) + (-1).
            recoveredPC := 325.
        ].
        recoveredStep = 325 ifTrue: [
            recoveredStack2 := (recoveredStack2) asString.
            recoveredPC := 327.
        ].
        recoveredStep = 327 ifTrue: [
            recoveredStack3 := 5.
            recoveredPC := 329.
        ].
        recoveredStep = 329 ifTrue: [
            (recoveredStack1) nextPutAll: (recoveredStack2) fillSpaceTo: (recoveredStack3).
            recoveredPC := 331.
        ].
        recoveredStep = 331 ifTrue: [
            recoveredStack1 := 'decrementer B'.
            recoveredPC := 333.
        ].
        recoveredStep = 333 ifTrue: [
            recoveredStack2 := 36.
            recoveredPC := 335.
        ].
        recoveredStep = 335 ifTrue: [
            (recoveredStack0) nextPutAll: (recoveredStack1) fillSpaceTo: (recoveredStack2).
            recoveredPC := 337.
        ].
        recoveredStep = 337 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 338.
        ].
        recoveredStep = 338 ifTrue: [
            recoveredStack0 := (recoveredStack0) owner.
            recoveredPC := 340.
        ].
        recoveredStep = 340 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 341.
        ].
        recoveredStep = 341 ifTrue: [
            recoveredStack1 := (recoveredStack1) block.
            recoveredPC := 342.
        ].
        recoveredStep = 342 ifTrue: [
            (recoveredStack0) endCCommentOn: (recoveredStack1).
            recoveredPC := 344.
        ].
        recoveredStep = 344 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 345.
        ].
        recoveredStep = 345 ifTrue: [
            recoveredStack0 := (recoveredStack0) block.
            recoveredPC := 346.
        ].
        recoveredStep = 346 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 347.
        ].
        recoveredStep = 347 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 348.
        ].
        recoveredStep = 348 ifTrue: [
            recoveredStack3 := recoveredLocal6.
            recoveredPC := 350.
        ].
        recoveredStep = 350 ifTrue: [
            recoveredStack2 := (recoveredStack2) asHex: (recoveredStack3).
            recoveredPC := 352.
        ].
        recoveredStep = 352 ifTrue: [
            recoveredStack3 := 6.
            recoveredPC := 354.
        ].
        recoveredStep = 354 ifTrue: [
            (recoveredStack1) newlinePutAll: (recoveredStack2) fillSpaceTo: (recoveredStack3).
            recoveredPC := 356.
        ].
        recoveredStep = 356 ifTrue: [
            (recoveredStack0) listSeparator.
            recoveredPC := 358.
        ].
        recoveredStep = 358 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 359.
        ].
        recoveredStep = 359 ifTrue: [
            recoveredStack0 := (recoveredStack0) owner.
            recoveredPC := 361.
        ].
        recoveredStep = 361 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 362.
        ].
        recoveredStep = 362 ifTrue: [
            recoveredStack1 := (recoveredStack1) block.
            recoveredPC := 363.
        ].
        recoveredStep = 363 ifTrue: [
            (recoveredStack0) beginCCommentOn: (recoveredStack1).
            recoveredPC := 365.
        ].
        recoveredStep = 365 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 366.
        ].
        recoveredStep = 366 ifTrue: [
            recoveredStack0 := (recoveredStack0) block.
            recoveredPC := 367.
        ].
        recoveredStep = 367 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 368.
        ].
        recoveredStep = 368 ifTrue: [
            recoveredStack2 := 'Priority '.
            recoveredPC := 370.
        ].
        recoveredStep = 370 ifTrue: [
            (recoveredStack1) nextPutAll: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 373.
        ].
        recoveredStep = 373 ifTrue: [
            recoveredStack2 := recoveredLocal4.
            recoveredPC := 374.
        ].
        recoveredStep = 374 ifTrue: [
            recoveredStack2 := (recoveredStack2) asString.
            recoveredPC := 376.
        ].
        recoveredStep = 376 ifTrue: [
            recoveredStack3 := 5.
            recoveredPC := 378.
        ].
        recoveredStep = 378 ifTrue: [
            (recoveredStack1) nextPutAll: (recoveredStack2) fillSpaceTo: (recoveredStack3).
            recoveredPC := 380.
        ].
        recoveredStep = 380 ifTrue: [
            recoveredStack1 := 'decrementer A; MAX_LS_LVLS'.
            recoveredPC := 382.
        ].
        recoveredStep = 382 ifTrue: [
            recoveredStack2 := 36.
            recoveredPC := 384.
        ].
        recoveredStep = 384 ifTrue: [
            (recoveredStack0) nextPutAll: (recoveredStack1) fillSpaceTo: (recoveredStack2).
            recoveredPC := 386.
        ].
        recoveredStep = 386 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 387.
        ].
        recoveredStep = 387 ifTrue: [
            recoveredStack0 := (recoveredStack0) owner.
            recoveredPC := 389.
        ].
        recoveredStep = 389 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 390.
        ].
        recoveredStep = 390 ifTrue: [
            recoveredStack1 := (recoveredStack1) block.
            recoveredPC := 391.
        ].
        recoveredStep = 391 ifTrue: [
            (recoveredStack0) endCCommentOn: (recoveredStack1).
            recoveredPC := 393.
        ].
        recoveredStep = 393 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 394.
        ].
        recoveredStep = 394 ifTrue: [
            recoveredStack0 := (recoveredStack0) levelMask.
            recoveredPC := 396.
        ].
        recoveredStep = 396 ifTrue: [
            recoveredLocal6 := recoveredStack0.
            recoveredPC := 398.
        ].
        recoveredStep = 398 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 399.
        ].
        recoveredStep = 399 ifTrue: [
            recoveredStack0 := (recoveredStack0) + (1).
            recoveredPC := 400.
        ].
        recoveredStep = 400 ifTrue: [
            recoveredStack0 := (recoveredStack0) + (-1).
            recoveredPC := 401.
        ].
        recoveredStep = 401 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 402.
        ].
        recoveredStep = 402 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 403.
        ].
        recoveredStep = 403 ifTrue: [
            recoveredStack0 := (recoveredStack0) + (-1).
            recoveredPC := 404.
        ].
        recoveredStep = 404 ifTrue: [
            recoveredPC := 473.
        ].
        recoveredStep = 408 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 409.
        ].
        recoveredStep = 409 ifTrue: [
            recoveredStack1 := (recoveredStack1) block.
            recoveredPC := 410.
        ].
        recoveredStep = 410 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 411.
        ].
        recoveredStep = 411 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 412.
        ].
        recoveredStep = 412 ifTrue: [
            recoveredStack4 := recoveredLocal6.
            recoveredPC := 414.
        ].
        recoveredStep = 414 ifTrue: [
            recoveredStack3 := (recoveredStack3) asHex: (recoveredStack4).
            recoveredPC := 416.
        ].
        recoveredStep = 416 ifTrue: [
            recoveredStack4 := 6.
            recoveredPC := 418.
        ].
        recoveredStep = 418 ifTrue: [
            (recoveredStack2) newlinePutAll: (recoveredStack3) fillSpaceTo: (recoveredStack4).
            recoveredPC := 420.
        ].
        recoveredStep = 420 ifTrue: [
            (recoveredStack1) listSeparator.
            recoveredPC := 422.
        ].
        recoveredStep = 422 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 423.
        ].
        recoveredStep = 423 ifTrue: [
            recoveredStack1 := (recoveredStack1) owner.
            recoveredPC := 425.
        ].
        recoveredStep = 425 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 426.
        ].
        recoveredStep = 426 ifTrue: [
            recoveredStack2 := (recoveredStack2) block.
            recoveredPC := 427.
        ].
        recoveredStep = 427 ifTrue: [
            (recoveredStack1) beginCCommentOn: (recoveredStack2).
            recoveredPC := 429.
        ].
        recoveredStep = 429 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 430.
        ].
        recoveredStep = 430 ifTrue: [
            recoveredStack1 := (recoveredStack1) block.
            recoveredPC := 431.
        ].
        recoveredStep = 431 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 432.
        ].
        recoveredStep = 432 ifTrue: [
            recoveredStack3 := 'Priority '.
            recoveredPC := 434.
        ].
        recoveredStep = 434 ifTrue: [
            (recoveredStack2) nextPutAll: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 437.
        ].
        recoveredStep = 437 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 438.
        ].
        recoveredStep = 438 ifTrue: [
            recoveredStack3 := (recoveredStack3) asString.
            recoveredPC := 440.
        ].
        recoveredStep = 440 ifTrue: [
            recoveredStack4 := 5.
            recoveredPC := 442.
        ].
        recoveredStep = 442 ifTrue: [
            (recoveredStack2) nextPutAll: (recoveredStack3) fillSpaceTo: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 445.
        ].
        recoveredStep = 445 ifTrue: [
            recoveredStack3 := 'level '.
            recoveredPC := 447.
        ].
        recoveredStep = 447 ifTrue: [
            (recoveredStack2) nextPutAll: (recoveredStack3).
            recoveredPC := 449.
        ].
        recoveredStep = 449 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 450.
        ].
        recoveredStep = 450 ifTrue: [
            recoveredStack2 := (recoveredStack2) + (-1).
            recoveredPC := 451.
        ].
        recoveredStep = 451 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 452.
        ].
        recoveredStep = 452 ifTrue: [
            recoveredStack2 := (recoveredStack2) - (recoveredStack3).
            recoveredPC := 453.
        ].
        recoveredStep = 453 ifTrue: [
            recoveredStack2 := (recoveredStack2) asString.
            recoveredPC := 455.
        ].
        recoveredStep = 455 ifTrue: [
            recoveredStack3 := 30.
            recoveredPC := 457.
        ].
        recoveredStep = 457 ifTrue: [
            (recoveredStack1) nextPutAll: (recoveredStack2) fillSpaceTo: (recoveredStack3).
            recoveredPC := 459.
        ].
        recoveredStep = 459 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 460.
        ].
        recoveredStep = 460 ifTrue: [
            recoveredStack1 := (recoveredStack1) owner.
            recoveredPC := 462.
        ].
        recoveredStep = 462 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 463.
        ].
        recoveredStep = 463 ifTrue: [
            recoveredStack2 := (recoveredStack2) block.
            recoveredPC := 464.
        ].
        recoveredStep = 464 ifTrue: [
            (recoveredStack1) endCCommentOn: (recoveredStack2).
            recoveredPC := 466.
        ].
        recoveredStep = 466 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 467.
        ].
        recoveredStep = 467 ifTrue: [
            recoveredStack2 := recoveredLocal6.
            recoveredPC := 469.
        ].
        recoveredStep = 469 ifTrue: [
            recoveredStack1 := (recoveredStack1) iterateLevelMask: (recoveredStack2).
            recoveredPC := 471.
        ].
        recoveredStep = 471 ifTrue: [
            recoveredLocal6 := recoveredStack1.
            recoveredPC := 473.
        ].
        recoveredStep = 473 ifTrue: [
            (recoveredStack0 isInteger and: [recoveredLocal1 isInteger]) ifTrue: [(recoveredLocal1 + 1 <= recoveredStack0) ifTrue: [recoveredLocal1 := recoveredLocal1 + 1. recoveredPC := 408] ifFalse: [recoveredLocal1 := nil. recoveredPC := 487]] ifFalse: [recoveredPC := 477].
        ].
        recoveredStep = 477 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 478.
        ].
        recoveredStep = 478 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 479.
        ].
        recoveredStep = 479 ifTrue: [
            recoveredStack2 := (recoveredStack2) + (1).
            recoveredPC := 480.
        ].
        recoveredStep = 480 ifTrue: [
            recoveredStack3 := recoveredStack2.
            recoveredPC := 481.
        ].
        recoveredStep = 481 ifTrue: [
            recoveredLocal1 := recoveredStack3.
            recoveredPC := 482.
        ].
        recoveredStep = 482 ifTrue: [
            recoveredStack1 := (recoveredStack1) < (recoveredStack2).
            recoveredPC := 483.
        ].
        recoveredStep = 483 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 485] ifFalse: [recoveredPC := 408].
        ].
        recoveredStep = 485 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 486.
        ].
        recoveredStep = 486 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 487.
        ].
        recoveredStep = 487 ifTrue: [
            recoveredPC := 488.
        ].
        recoveredStep = 488 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 489.
        ].
        recoveredStep = 489 ifTrue: [
            recoveredStack0 := (recoveredStack0) block.
            recoveredPC := 490.
        ].
        recoveredStep = 490 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 491.
        ].
        recoveredStep = 491 ifTrue: [
            (recoveredStack1) decIndent.
            recoveredStack1 := recoveredStack0.
            recoveredPC := 494.
        ].
        recoveredStep = 494 ifTrue: [
            recoveredStack2 := '};'.
            recoveredPC := 496.
        ].
        recoveredStep = 496 ifTrue: [
            (recoveredStack1) newlinePutAll: (recoveredStack2).
            recoveredPC := 498.
        ].
        recoveredStep = 498 ifTrue: [
            (recoveredStack0) newline.
            recoveredPC := 500.
        ].
        recoveredStep = 500 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 501.
        ].
        recoveredStep = 501 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20659d84; bytecode file offset 0xf567e8"
!SGIlOSExpERCOSEKSimu methodsFor: 'recovered'!
defineOSStruct
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 recoveredValue21 recoveredValue22 recoveredValue23 recoveredValue24 recoveredValue25 recoveredValue26 recoveredValue27 recoveredValue28 recoveredValue29 recoveredValue30 recoveredValue31 recoveredValue32 recoveredValue33 recoveredValue34 recoveredValue35 recoveredValue36 recoveredValue37 recoveredValue38 recoveredValue39 recoveredValue40 recoveredValue41 recoveredValue42 recoveredValue43 recoveredValue44 recoveredValue45 recoveredValue46 recoveredValue47 recoveredValue48 recoveredValue49 recoveredValue50 recoveredValue51 recoveredValue52 recoveredValue53 recoveredValue54 recoveredValue55 recoveredValue56 recoveredValue57 recoveredValue58 recoveredValue59 recoveredValue60 recoveredValue61 recoveredValue62 recoveredValue63 recoveredValue64 recoveredValue65 recoveredValue66 recoveredValue67 recoveredValue68 recoveredValue69 recoveredValue70 recoveredValue71 recoveredValue72 recoveredValue73 recoveredValue74 recoveredValue75 recoveredValue76 recoveredValue77 recoveredValue78 recoveredValue79 recoveredValue80 recoveredValue81 recoveredValue82 recoveredValue83 recoveredValue84 recoveredValue85 recoveredValue86 recoveredValue87 recoveredValue88 recoveredValue89 recoveredValue90 recoveredValue91 recoveredValue92 recoveredValue93 recoveredValue94 recoveredValue95 recoveredValue96 recoveredValue97 recoveredValue98 recoveredValue99 recoveredValue100 recoveredValue101 recoveredValue102 recoveredValue103 recoveredValue104 recoveredValue105 recoveredValue106 recoveredValue107 recoveredValue108 recoveredValue109 recoveredValue110 recoveredValue111 recoveredValue112 recoveredValue113 recoveredValue114 recoveredValue115 recoveredValue116 recoveredValue117 recoveredValue118 recoveredValue119 recoveredValue120 recoveredValue121 recoveredValue122 recoveredValue123 recoveredValue124 recoveredValue125 recoveredValue126 recoveredValue127 recoveredValue128 recoveredValue129 recoveredValue130 recoveredValue131 recoveredValue132 recoveredValue133 recoveredValue134 recoveredValue135 recoveredValue136 recoveredValue137 recoveredValue138 recoveredValue139 recoveredValue140 recoveredValue141 recoveredValue142 recoveredValue143 recoveredValue144 recoveredValue145 recoveredValue146 recoveredValue147 recoveredValue148 recoveredValue149 recoveredValue150 recoveredValue151 recoveredValue152 recoveredValue153 recoveredValue154 recoveredValue155 recoveredValue156 recoveredValue157 recoveredValue158 recoveredValue159 recoveredValue160 recoveredValue161 recoveredValue162 recoveredValue163 recoveredValue164 recoveredValue165 recoveredValue166 recoveredValue167 recoveredValue168 recoveredValue169 recoveredValue170 recoveredValue171 recoveredValue172 recoveredValue173 recoveredValue174 recoveredValue175 recoveredValue176 recoveredValue177 recoveredValue178 recoveredValue179 recoveredValue180 recoveredValue181 recoveredValue182 recoveredValue183 recoveredValue184 recoveredValue185 |
    recoveredLocal1 := 20.
    recoveredValue0 := (self) owner.
    recoveredValue1 := (self) block.
    (recoveredValue0) paragraphBanner: ('Operating system data structure') on: (recoveredValue1).
    recoveredValue2 := (self) block.
    recoveredValue3 := recoveredValue2.
    (recoveredValue3) newlinePutAll: ('T_stackMonitor stackMonitor;').
    (recoveredValue2) newline.
    recoveredValue4 := (self) block.
    recoveredValue5 := recoveredValue4.
    (recoveredValue5) newlinePutAll: ('const struct {').
    recoveredValue6 := recoveredValue4.
    (recoveredValue6) incIndent.
    recoveredValue7 := recoveredValue4.
    (recoveredValue7) newlinePutAll: ('T_recordHeader') fillSpaceTo: (20).
    recoveredValue8 := recoveredValue4.
    (recoveredValue8) nextPutAll: ('cfgDataHeader;').
    recoveredValue9 := recoveredValue4.
    (recoveredValue9) newlinePutAll: ('T_cfgData') fillSpaceTo: (20).
    recoveredValue10 := recoveredValue4.
    (recoveredValue10) nextPutAll: ('cfgData;').
    recoveredValue11 := recoveredValue4.
    (recoveredValue11) newlinePutAll: ('T_recordHeader') fillSpaceTo: (20).
    recoveredValue12 := recoveredValue4.
    (recoveredValue12) nextPutAll: ('extendedCfgDataHeader;').
    recoveredValue13 := recoveredValue4.
    (recoveredValue13) newlinePutAll: ('T_extendedCfgData') fillSpaceTo: (20).
    recoveredValue14 := recoveredValue4.
    (recoveredValue14) nextPutAll: ('extendedCfgData;').
    recoveredValue15 := recoveredValue4.
    (recoveredValue15) newlinePutAll: ('T_recordHeader') fillSpaceTo: (20).
    recoveredValue16 := recoveredValue4.
    (recoveredValue16) nextPutAll: ('debugDataHeader;').
    recoveredValue17 := recoveredValue4.
    (recoveredValue17) newlinePutAll: ('T_debugData') fillSpaceTo: (20).
    recoveredValue18 := recoveredValue4.
    (recoveredValue18) nextPutAll: ('debugData;').
    recoveredValue19 := recoveredValue4.
    (recoveredValue19) newlinePutAll: ('T_recordHeader') fillSpaceTo: (20).
    recoveredValue20 := recoveredValue4.
    (recoveredValue20) nextPutAll: ('endHeader;').
    recoveredValue21 := recoveredValue4.
    (recoveredValue21) decIndent.
    recoveredValue22 := recoveredValue4.
    (recoveredValue22) newlinePutAll: ('} cfgDataAppMode = {').
    recoveredValue23 := recoveredValue4.
    (recoveredValue23) incIndent.
    recoveredValue24 := recoveredValue4.
    (recoveredValue24) newlinePutAll: ('CFG_DATA_RECORD_HEADER,').
    recoveredValue25 := recoveredValue4.
    (recoveredValue25) newlinePutAll: ('{').
    (recoveredValue4) incIndent.
    recoveredValue26 := (self) owner.
    recoveredValue27 := recoveredLocal1.
    recoveredValue28 := (self) block.
    (recoveredValue26) newlinePutCComment: ('_nofCoopLvls') width: (recoveredValue27) on: (recoveredValue28).
    recoveredValue29 := (self) block.
    (recoveredValue29) nextPutAll: (' NOF_COOP_LVLS,').
    recoveredValue30 := (self) owner.
    recoveredValue31 := recoveredLocal1.
    recoveredValue32 := (self) block.
    (recoveredValue30) newlinePutCComment: ('_nofSwLvls') width: (recoveredValue31) on: (recoveredValue32).
    recoveredValue33 := (self) block.
    (recoveredValue33) nextPutAll: (' NOF_SW_LVLS,').
    recoveredValue34 := (self) owner.
    recoveredValue35 := recoveredLocal1.
    recoveredValue36 := (self) block.
    (recoveredValue34) newlinePutCComment: ('_nofHwLvls') width: (recoveredValue35) on: (recoveredValue36).
    recoveredValue37 := (self) block.
    (recoveredValue37) nextPutAll: (' NOF_HW_LVLS,').
    recoveredValue38 := (self) owner.
    recoveredValue39 := recoveredLocal1.
    recoveredValue40 := (self) block.
    (recoveredValue38) newlinePutCComment: ('_nofLvls') width: (recoveredValue39) on: (recoveredValue40).
    recoveredValue41 := (self) block.
    (recoveredValue41) nextPutAll: (' NOF_LVLS,').
    recoveredValue42 := (self) owner.
    recoveredValue43 := recoveredLocal1.
    recoveredValue44 := (self) block.
    (recoveredValue42) newlinePutCComment: ('_maxLsLvl') width: (recoveredValue43) on: (recoveredValue44).
    recoveredValue45 := (self) block.
    (recoveredValue45) nextPutAll: (' MAX_LS_LVL,').
    recoveredValue46 := (self) owner.
    recoveredValue47 := recoveredLocal1.
    recoveredValue48 := (self) block.
    (recoveredValue46) newlinePutCComment: ('_maxLsIntLvl') width: (recoveredValue47) on: (recoveredValue48).
    recoveredValue49 := (self) block.
    (recoveredValue49) nextPutAll: (' MAX_LS_INT_LVL,').
    recoveredValue50 := (self) owner.
    recoveredValue51 := recoveredLocal1.
    recoveredValue52 := (self) block.
    (recoveredValue50) newlinePutCComment: ('_lsIntMask') width: (recoveredValue51) on: (recoveredValue52).
    recoveredValue53 := (self) block.
    (recoveredValue53) nextPutAll: (' LS_INT_MASK,').
    recoveredValue54 := (self) owner.
    recoveredValue55 := recoveredLocal1.
    recoveredValue56 := (self) block.
    (recoveredValue54) newlinePutCComment: ('_hsIntMask') width: (recoveredValue55) on: (recoveredValue56).
    recoveredValue57 := (self) block.
    (recoveredValue57) nextPutAll: (' HS_INT_MASK,').
    recoveredValue58 := (self) owner.
    recoveredValue59 := recoveredLocal1.
    recoveredValue60 := (self) block.
    (recoveredValue58) newlinePutCComment: ('_nofDeadlines') width: (recoveredValue59) on: (recoveredValue60).
    recoveredValue61 := (self) block.
    (recoveredValue61) nextPutAll: (' NOF_DEADLINES,').
    recoveredValue62 := (self) owner.
    recoveredValue63 := recoveredLocal1.
    recoveredValue64 := (self) block.
    (recoveredValue62) newlinePutCComment: ('_nofAlarms') width: (recoveredValue63) on: (recoveredValue64).
    recoveredValue65 := (self) block.
    (recoveredValue65) nextPutAll: (' NOF_ALARMS,').
    recoveredValue66 := (self) owner.
    recoveredValue67 := recoveredLocal1.
    recoveredValue68 := (self) block.
    (recoveredValue66) newlinePutCComment: ('_nofResources') width: (recoveredValue67) on: (recoveredValue68).
    recoveredValue69 := (self) block.
    (recoveredValue69) nextPutAll: (' NOF_RESOURCES,').
    recoveredValue70 := (self) owner.
    recoveredValue71 := recoveredLocal1.
    recoveredValue72 := (self) block.
    (recoveredValue70) newlinePutCComment: ('_userStackTop') width: (recoveredValue71) on: (recoveredValue72).
    recoveredValue73 := (self) block.
    (recoveredValue73) nextPutAll: (' (uint)(userStack+(sizeof(userStack)/sizeof(uint))),').
    recoveredValue74 := (self) owner.
    recoveredValue75 := recoveredLocal1.
    recoveredValue76 := (self) block.
    (recoveredValue74) newlinePutCComment: ('_userStackBottom') width: (recoveredValue75) on: (recoveredValue76).
    recoveredValue77 := (self) block.
    (recoveredValue77) nextPutAll: (' (uint) userStack,').
    recoveredValue78 := (self) owner.
    recoveredValue79 := recoveredLocal1.
    recoveredValue80 := (self) block.
    (recoveredValue78) newlinePutCComment: ('_ercosekStackTop') width: (recoveredValue79) on: (recoveredValue80).
    recoveredValue81 := (self) block.
    (recoveredValue81) nextPutAll: (' (uint)((byte *)ercosStack+sizeof(ercosStack)),').
    recoveredValue82 := (self) owner.
    recoveredValue83 := recoveredLocal1.
    recoveredValue84 := (self) block.
    (recoveredValue82) newlinePutCComment: ('_ercosekStackBottom') width: (recoveredValue83) on: (recoveredValue84).
    recoveredValue85 := (self) block.
    (recoveredValue85) nextPutAll: (' (uint)ercosStack,').
    recoveredValue86 := (self) owner.
    recoveredValue87 := recoveredLocal1.
    recoveredValue88 := (self) block.
    (recoveredValue86) newlinePutCComment: ('_checkWordOffset') width: (recoveredValue87) on: (recoveredValue88).
    recoveredValue89 := (self) block.
    (recoveredValue89) nextPutAll: (' (uint)(sizeof(ercosStack) - sizeof(uint)),').
    recoveredValue90 := (self) owner.
    recoveredValue91 := recoveredLocal1.
    recoveredValue92 := (self) block.
    (recoveredValue90) newlinePutCComment: ('_ceilingPrios_Ptr') width: (recoveredValue91) on: (recoveredValue92).
    recoveredValue93 := (self) block.
    (recoveredValue93) nextPutAll: (' NULL,').
    recoveredValue94 := (self) owner.
    recoveredValue95 := recoveredLocal1.
    recoveredValue96 := (self) block.
    (recoveredValue94) newlinePutCComment: ('_intMaskTab_Ptr') width: (recoveredValue95) on: (recoveredValue96).
    recoveredValue97 := (self) block.
    (recoveredValue97) nextPutAll: (' _intMaskTab,').
    recoveredValue98 := (self) owner.
    recoveredValue99 := recoveredLocal1.
    recoveredValue100 := (self) block.
    (recoveredValue98) newlinePutCComment: ('_fifoSize_Ptr') width: (recoveredValue99) on: (recoveredValue100).
    recoveredValue101 := (self) block.
    (recoveredValue101) nextPutAll: (' _fifoSize,').
    recoveredValue102 := (self) owner.
    recoveredValue103 := recoveredLocal1.
    recoveredValue104 := (self) block.
    (recoveredValue102) newlinePutCComment: ('_taskFifoPtr_Ptr') width: (recoveredValue103) on: (recoveredValue104).
    recoveredValue105 := (self) block.
    (recoveredValue105) nextPutAll: (' _taskFifoPtr,').
    recoveredValue106 := (self) owner.
    recoveredValue107 := recoveredLocal1.
    recoveredValue108 := (self) block.
    (recoveredValue106) newlinePutCComment: ('_schedIntCtrlTab_Ptr') width: (recoveredValue107) on: (recoveredValue108).
    recoveredValue109 := (self) block.
    (recoveredValue109) nextPutAll: (' _schedIntCtrlTab,').
    recoveredValue110 := (self) owner.
    recoveredValue111 := recoveredLocal1.
    recoveredValue112 := (self) block.
    (recoveredValue110) newlinePutCComment: ('_regBankPtrs_Ptr') width: (recoveredValue111) on: (recoveredValue112).
    recoveredValue113 := (self) block.
    (recoveredValue113) nextPutAll: (' NULL,').
    recoveredValue114 := (self) owner.
    recoveredValue115 := recoveredLocal1.
    recoveredValue116 := (self) block.
    (recoveredValue114) newlinePutCComment: ('_alarmFuncPtrs_Ptr') width: (recoveredValue115) on: (recoveredValue116).
    recoveredValue117 := (self) block.
    (recoveredValue117) nextPutAll: (' _timerFuncPtrs,').
    recoveredValue118 := (self) owner.
    recoveredValue119 := recoveredLocal1.
    recoveredValue120 := (self) block.
    (recoveredValue118) newlinePutCComment: ('_iniFuncPtrTab_Ptr') width: (recoveredValue119) on: (recoveredValue120).
    recoveredValue121 := (self) block.
    (recoveredValue121) nextPutAll: (' iniFuncPtrTab,').
    recoveredValue122 := (self) owner.
    recoveredValue123 := recoveredLocal1.
    recoveredValue124 := (self) block.
    (recoveredValue122) newlinePutCComment: ('_mon_Ptr') width: (recoveredValue123) on: (recoveredValue124).
    recoveredValue125 := (self) block.
    (recoveredValue125) nextPutAll: (' _mon,').
    recoveredValue126 := (self) owner.
    recoveredValue127 := recoveredLocal1.
    recoveredValue128 := (self) block.
    (recoveredValue126) newlinePutCComment: ('_deadlines_Ptr') width: (recoveredValue127) on: (recoveredValue128).
    recoveredValue129 := (self) block.
    (recoveredValue129) nextPutAll: (' (T_deadline *) NULL,').
    recoveredValue130 := (self) owner.
    recoveredValue131 := recoveredLocal1.
    recoveredValue132 := (self) block.
    (recoveredValue130) newlinePutCComment: ('_indexTab_Ptr') width: (recoveredValue131) on: (recoveredValue132).
    recoveredValue133 := (self) block.
    (recoveredValue133) nextPutAll: (' _indexTab,').
    recoveredValue134 := (self) owner.
    recoveredValue135 := recoveredLocal1.
    recoveredValue136 := (self) block.
    (recoveredValue134) newlinePutCComment: ('_periods_Ptr') width: (recoveredValue135) on: (recoveredValue136).
    recoveredValue137 := (self) block.
    (recoveredValue137) nextPutAll: (' _periods,').
    recoveredValue138 := (self) owner.
    recoveredValue139 := recoveredLocal1.
    recoveredValue140 := (self) block.
    (recoveredValue138) newlinePutCComment: ('_cmpRegs_Ptr') width: (recoveredValue139) on: (recoveredValue140).
    recoveredValue141 := (self) block.
    (recoveredValue141) nextPutAll: (' _cmpRegs,').
    recoveredValue142 := (self) block.
    recoveredValue143 := recoveredValue142.
    (recoveredValue143) decIndent.
    recoveredValue144 := recoveredValue142.
    (recoveredValue144) newlinePutAll: ('},').
    recoveredValue145 := recoveredValue142.
    (recoveredValue145) newlinePutAll: ('EXTENDED_RECORD_HEADER,').
    recoveredValue146 := recoveredValue142.
    (recoveredValue146) nextPut: (${).
    (recoveredValue142) incIndent.
    recoveredValue147 := (self) owner.
    recoveredValue148 := recoveredLocal1.
    recoveredValue149 := (self) block.
    (recoveredValue147) newlinePutCComment: ('_inputFreq') width: (recoveredValue148) on: (recoveredValue149).
    recoveredValue150 := (self) block.
    (recoveredValue150) nextPutAll: (' INPUT_FREQ,').
    recoveredValue151 := (self) owner.
    recoveredValue152 := recoveredLocal1.
    recoveredValue153 := (self) block.
    (recoveredValue151) newlinePutCComment: ('_prescaler') width: (recoveredValue152) on: (recoveredValue153).
    recoveredValue154 := (self) block.
    (recoveredValue154) nextPutAll: (' PRESCALER,').
    recoveredValue155 := (self) owner.
    recoveredValue156 := recoveredLocal1.
    recoveredValue157 := (self) block.
    (recoveredValue155) newlinePutCComment: ('_ticksPerBase') width: (recoveredValue156) on: (recoveredValue157).
    recoveredValue158 := (self) block.
    (recoveredValue158) nextPutAll: (' MICROSECONDS_TO_TICKS(100000),').
    recoveredValue159 := (self) owner.
    recoveredValue160 := recoveredLocal1.
    recoveredValue161 := (self) block.
    (recoveredValue159) newlinePutCComment: ('_tickDuration') width: (recoveredValue160) on: (recoveredValue161).
    recoveredValue162 := (self) block.
    (recoveredValue162) nextPutAll: (' SYSTEM_TICK_DURATION,').
    recoveredValue163 := (self) owner.
    recoveredValue164 := recoveredLocal1.
    recoveredValue165 := (self) block.
    (recoveredValue163) newlinePutCComment: ('_stackMonitorPtr') width: (recoveredValue164) on: (recoveredValue165).
    recoveredValue166 := (self) block.
    (recoveredValue166) nextPutAll: (' &stackMonitor,     ').
    recoveredValue167 := (self) block.
    recoveredValue168 := recoveredValue167.
    (recoveredValue168) newlinePutAll: ('NULL,').
    recoveredValue169 := recoveredValue167.
    (recoveredValue169) newlinePutAll: ('NULL').
    recoveredValue170 := recoveredValue167.
    (recoveredValue170) decIndent.
    recoveredValue171 := recoveredValue167.
    (recoveredValue171) newlinePutAll: ('},').
    recoveredValue172 := recoveredValue167.
    (recoveredValue172) newlinePutAll: ('DEBUG_DATA_RECORD_HEADER,').
    recoveredValue173 := recoveredValue167.
    (recoveredValue173) nextPut: (${).
    recoveredValue174 := recoveredValue167.
    (recoveredValue174) incIndent.
    recoveredValue175 := recoveredValue167.
    (recoveredValue175) newlinePutAll: ('&activationHookData,').
    recoveredValue176 := recoveredValue167.
    (recoveredValue176) newlinePutAll: ('&startTaskHookData,').
    recoveredValue177 := recoveredValue167.
    (recoveredValue177) newlinePutAll: ('&endTaskHookData,').
    recoveredValue178 := recoveredValue167.
    (recoveredValue178) newlinePutAll: ('&getResHookData,').
    recoveredValue179 := recoveredValue167.
    (recoveredValue179) newlinePutAll: ('&releaseResHookData,').
    recoveredValue180 := recoveredValue167.
    (recoveredValue180) newlinePutAll: ('&endAppModeHookData').
    recoveredValue181 := recoveredValue167.
    (recoveredValue181) decIndent.
    recoveredValue182 := recoveredValue167.
    (recoveredValue182) newlinePutAll: ('},').
    recoveredValue183 := recoveredValue167.
    (recoveredValue183) newlinePutAll: ('END_RECORD_HEADER').
    recoveredValue184 := recoveredValue167.
    (recoveredValue184) decIndent.
    recoveredValue185 := recoveredValue167.
    (recoveredValue185) newlinePutAll: ('};').
    (recoveredValue167) newline.
    ^self
! !

