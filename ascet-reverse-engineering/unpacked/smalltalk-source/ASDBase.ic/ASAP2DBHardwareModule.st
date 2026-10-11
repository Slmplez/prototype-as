"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20003898; bytecode file offset 0x90206c"
!ASAP2DBHardwareModule methodsFor: 'recovered'!
nameTable: recoveredArg1
    ^self
! !

"ASDBase.ic method 0x20004ce0; bytecode file offset 0x90206c"
!ASAP2DBHardwareModule methodsFor: 'recovered'!
longName: recoveredArg1
    ^self
! !

"ASDBase.ic method 0x20055f2c; bytecode file offset 0x952a9c"
!ASAP2DBHardwareModule methodsFor: 'recovered'!
getHardwareObjectFor: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) getHardwareObjectFrom: (self).
    ^recoveredValue1
! !

"ASDBase.ic method 0x2006fca0; bytecode file offset 0x96c6ac"
!ASAP2DBHardwareModule methodsFor: 'recovered'!
getIFDatas
    | recoveredValue0 |
    recoveredValue0 := ifData.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006fcc0; bytecode file offset 0x96c6ac"
!ASAP2DBHardwareModule methodsFor: 'recovered'!
ifData
    | recoveredValue0 |
    recoveredValue0 := ifData.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006fe3c; bytecode file offset 0x96c850"
!ASAP2DBHardwareModule methodsFor: 'recovered'!
a2ml
    | recoveredValue0 |
    recoveredValue0 := a2ml.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20078384; bytecode file offset 0x9757c8"
!ASAP2DBHardwareModule methodsFor: 'recovered'!
isSelfDumpAndLoad
    ^true
! !

"ASDBase.ic method 0x200c6280; bytecode file offset 0x9c2bec"
!ASAP2DBHardwareModule methodsFor: 'recovered'!
ifData: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    ifData := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c644c; bytecode file offset 0x9c2dd0"
!ASAP2DBHardwareModule methodsFor: 'recovered'!
a2ml: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    a2ml := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x201485f0; bytecode file offset 0xa44eac"
!ASAP2DBHardwareModule methodsFor: 'recovered'!
addSelectedLabels: recoveredArg1 from: recoveredArg2 progressWindow: recoveredArg3
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := [:recoveredBlock5Arg1 | 
    | recoveredBlock5Value0 recoveredBlock5Value1 |
    recoveredBlock5Value0 := recoveredBlock5Arg1.
    recoveredBlock5Value1 := (recoveredBlock5Value0) addToHardwareModule: (self).
    recoveredBlock5Value1
].
    (recoveredValue0) do: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x20159f00; bytecode file offset 0xa567bc"
!ASAP2DBHardwareModule methodsFor: 'recovered'!
emWriteObjectOn: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := flat.
    recoveredLocal1 := recoveredValue0.
    flat := nil.
    recoveredValue1 := recoveredArg1.
    super emWriteObjectOn: (recoveredValue1).
    recoveredValue2 := recoveredLocal1.
    flat := recoveredValue2.
    ^self
! !

"ASDBase.ic method 0x2019fe30; bytecode file offset 0xa9c6fc"
!ASAP2DBHardwareModule methodsFor: 'recovered'!
isCanMonitoring
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := ifData.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := [:block280d21c8Arg1 | 
    | block280d21c8Value0 block280d21c8Value1 block280d21c8Value2 block280d21c8Value3 |
    block280d21c8Value0 := block280d21c8Arg1.
    block280d21c8Value1 := (block280d21c8Value0) name.
    block280d21c8Value2 := (block280d21c8Value1) asUppercase.
    block280d21c8Value3 := (block280d21c8Value2) = ('CAN_MONITORING').
    block280d21c8Value3
].
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack3 := [].
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := (recoveredStack1) detect: (recoveredStack2) ifNone: (recoveredStack3).
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := (recoveredStack1) notNil.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2020f250; bytecode file offset 0xb0bb18"
!ASAP2DBHardwareModule methodsFor: 'recovered'!
amlForDeviceLabel: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := a2ml.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := [:recoveredBlock6Arg1 | 
    | recoveredBlock6Value0 recoveredBlock6Value1 recoveredBlock6Value2 recoveredBlock6Value3 |
    recoveredBlock6Value0 := recoveredBlock6Arg1.
    recoveredBlock6Value1 := (recoveredBlock6Value0) longName.
    recoveredBlock6Value2 := recoveredArg1.
    recoveredBlock6Value3 := (recoveredBlock6Value1) getTaggedStructFor: (recoveredBlock6Value2).
    recoveredBlock6Value3
].
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack3 := [:block280da718Arg1 | 
    | block280da718Value0 block280da718Value1 |
    block280da718Value0 := block280da718Arg1.
    block280da718Value1 := (block280da718Value0) notNil.
    block280da718Value1
].
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := (recoveredStack1) collect: (recoveredStack2) select: (recoveredStack3).
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := (recoveredStack1) firstOrNil.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x20266974; bytecode file offset 0xb63260"
!ASAP2DBHardwareModule methodsFor: 'recovered'!
getHardwareObjectFor: recoveredArg1 in: recoveredArg2
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := (recoveredStack1) name.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack0 := (recoveredStack0) indexOf: (recoveredStack1) in: (recoveredStack2).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 20].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := recoveredArg2.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := (recoveredStack0) isDictionary.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 26] ifFalse: [recoveredPC := 34].
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := recoveredArg2.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := (recoveredStack1) name.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack2 := [].
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1) ifAbsent: (recoveredStack2).
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := recoveredArg2.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := (recoveredStack0) atOrNil: (recoveredStack1).
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2029c3e0; bytecode file offset 0xb98cb0"
!ASAP2DBHardwareModule methodsFor: 'recovered'!
readFromBytes: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := a2ml.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := [:recoveredBlock6Arg1 | 
    | recoveredBlock6Value0 recoveredBlock6Value1 recoveredBlock6Value2 recoveredBlock6Value3 recoveredBlock6Value4 recoveredBlock6Value5 |
    recoveredBlock6Value0 := recoveredBlock6Arg1.
    recoveredBlock6Value1 := (recoveredBlock6Value0) longName.
    recoveredBlock6Value2 := recoveredArg1.
    recoveredBlock6Value3 := (recoveredBlock6Value2) name.
    recoveredBlock6Value4 := (recoveredBlock6Value1) getTaggedStructFor: (recoveredBlock6Value3).
    recoveredBlock6Value5 := (recoveredBlock6Value4) notNil.
    recoveredBlock6Value5
].
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack3 := [].
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := (recoveredStack1) detect: (recoveredStack2) ifNone: (recoveredStack3).
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 43] ifFalse: [recoveredPC := 32].
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := (recoveredStack1) longName.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack2 := (recoveredStack2) ifData.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            (recoveredStack1) readFromBytes: (recoveredStack2).
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x202a5fd8; bytecode file offset 0xba28a8"
!ASAP2DBHardwareModule methodsFor: 'recovered'!
collectObjectsFlat: recoveredArg1 in: recoveredArg2
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) comments.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := super collectObjectsFlat: (recoveredStack1) in: (recoveredStack2).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := (recoveredStack0) a2ml.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := (recoveredStack0) collectObjectsFlat: (recoveredStack1) in: (recoveredStack2).
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := (recoveredStack1) a2ml.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack2 := [:block280e4018Arg1 | 
    | block280e4018Value0 block280e4018Value1 |
    block280e4018Value0 := block280e4018Arg1.
    block280e4018Value1 := (block280e4018Value0) comments.
    block280e4018Value1
].
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack1 := (recoveredStack1) collect: (recoveredStack2).
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            (recoveredStack0) a2ml: (recoveredStack1).
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x202b9aec; bytecode file offset 0xbb63c4"
!ASAP2DBHardwareModule methodsFor: 'recovered'!
emWriteWithHeader: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 |
    recoveredValue0 := dbObject.
    recoveredValue1 := (recoveredValue0) istate.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := dbObject.
    (recoveredValue2) istate: (0).
    recoveredValue3 := DBASAP2MethodDecoder.
    recoveredValue4 := (recoveredValue3) createFor: (self).
    recoveredLocal2 := recoveredValue4.
    recoveredValue5 := recoveredLocal2.
    (self) emWriteObjectOrLiteralOn: (recoveredValue5).
    recoveredValue6 := recoveredArg1.
    recoveredValue7 := recoveredArg1.
    recoveredValue8 := (recoveredValue7) class.
    recoveredValue9 := (recoveredValue8) blobStart.
    recoveredValue10 := (recoveredValue9) + (1).
    (recoveredValue6) at: (recoveredValue10) put: (254).
    recoveredValue11 := dbObject.
    recoveredValue12 := recoveredLocal1.
    (recoveredValue11) istate: (recoveredValue12).
    recoveredValue13 := recoveredArg1.
    recoveredValue14 := (recoveredValue13) class.
    recoveredValue15 := recoveredLocal2.
    recoveredValue16 := recoveredArg1.
    recoveredValue17 := (recoveredValue14) createFrom: (recoveredValue15) withHeader: (recoveredValue16).
    ^recoveredValue17
! !

"ASDBase.ic method 0x202f8af4; bytecode file offset 0xbf53e4"
!ASAP2DBHardwareModule methodsFor: 'recovered'!
createTempModuleSelectLabels: recoveredArg1 progressWindow: recoveredArg2
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 |
    recoveredValue0 := ASAP2BaseObject.
    (recoveredValue0) Persistent: (false).
    recoveredValue1 := (self) class.
    recoveredValue2 := (self) name.
    recoveredValue3 := (recoveredValue1) createDefault: (recoveredValue2).
    recoveredLocal1 := recoveredValue3.
    recoveredValue4 := recoveredLocal1.
    recoveredValue5 := recoveredValue4.
    recoveredValue6 := (self) modPar.
    recoveredValue7 := (recoveredValue6) copyObjectGraph.
    (recoveredValue5) modPar: (recoveredValue7).
    recoveredValue8 := recoveredValue4.
    recoveredValue9 := (self) modCommon.
    recoveredValue10 := (recoveredValue9) copyObjectGraph.
    (recoveredValue8) modCommon: (recoveredValue10).
    recoveredValue11 := recoveredValue4.
    recoveredValue12 := (self) ifData.
    recoveredValue13 := (recoveredValue12) copyObjectGraph.
    (recoveredValue11) ifData: (recoveredValue13).
    recoveredValue14 := (self) a2ml.
    (recoveredValue4) a2ml: (recoveredValue14).
    recoveredValue15 := recoveredLocal1.
    recoveredValue16 := recoveredArg1.
    recoveredValue17 := recoveredArg2.
    recoveredValue18 := (recoveredValue15) addSelectedLabels: (recoveredValue16) from: (self) progressWindow: (recoveredValue17).
    ^recoveredValue18
! !

"ASDBase.ic method 0x2031b820; bytecode file offset 0xc180f8"
!ASAP2DBHardwareModule methodsFor: 'recovered'!
parseA2ml
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) a2ml.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 56] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) a2ml.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := [:block280eb5ccArg1 | 
    | block280eb5ccStack0 block280eb5ccStack1 block280eb5ccStack2 block280eb5ccStack3 block280eb5ccStack4 block280eb5ccPC block280eb5ccStep block280eb5ccDone block280eb5ccResult |
    block280eb5ccStack0 := self.
    block280eb5ccPC := 4.
    block280eb5ccDone := false.
    [block280eb5ccDone not] whileTrue: [
        block280eb5ccStep := block280eb5ccPC.
        block280eb5ccStep = 4 ifTrue: [
            block280eb5ccStack1 := block280eb5ccArg1.
            block280eb5ccPC := 7.
        ].
        block280eb5ccStep = 7 ifTrue: [
            block280eb5ccStack1 := (block280eb5ccStack1) longName.
            block280eb5ccPC := 8.
        ].
        block280eb5ccStep = 8 ifTrue: [
            block280eb5ccStack1 := (block280eb5ccStack1) isString.
            block280eb5ccPC := 9.
        ].
        block280eb5ccStep = 9 ifTrue: [
            (block280eb5ccStack1) ifTrue: [block280eb5ccPC := 12] ifFalse: [block280eb5ccPC := 36].
        ].
        block280eb5ccStep = 12 ifTrue: [
            block280eb5ccStack1 := Smalltalk.
            block280eb5ccPC := 14.
        ].
        block280eb5ccStep = 14 ifTrue: [
            block280eb5ccStack2 := 'AMLDeclaration'.
            block280eb5ccPC := 16.
        ].
        block280eb5ccStep = 16 ifTrue: [
            block280eb5ccStack3 := [:block280eb5ccBlock16Arg1 | 
    | block280eb5ccBlock16Value0 block280eb5ccBlock16Value1 block280eb5ccBlock16Value2 block280eb5ccBlock16Value3 |
    block280eb5ccBlock16Value0 := block280eb5ccBlock16Arg1.
    block280eb5ccBlock16Value1 := block280eb5ccArg1.
    block280eb5ccBlock16Value2 := (block280eb5ccBlock16Value1) longName.
    block280eb5ccBlock16Value3 := (block280eb5ccBlock16Value0) createFromString: (block280eb5ccBlock16Value2).
    block280eb5ccBlock16Value3
].
            block280eb5ccPC := 30.
        ].
        block280eb5ccStep = 30 ifTrue: [
            block280eb5ccStack1 := (block280eb5ccStack1) at: (block280eb5ccStack2) ifPresent: (block280eb5ccStack3).
            block280eb5ccPC := 32.
        ].
        block280eb5ccStep = 32 ifTrue: [
            block280eb5ccPC := 40.
        ].
        block280eb5ccStep = 36 ifTrue: [
            block280eb5ccStack1 := block280eb5ccArg1.
            block280eb5ccPC := 39.
        ].
        block280eb5ccStep = 39 ifTrue: [
            block280eb5ccStack1 := (block280eb5ccStack1) longName.
            block280eb5ccPC := 40.
        ].
        block280eb5ccStep = 40 ifTrue: [
            block280eb5ccResult := block280eb5ccStack1.
            block280eb5ccDone := true.
        ].
    ].
    block280eb5ccResult
].
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack0 := (recoveredStack0) collect: (recoveredStack1).
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2034e87c; bytecode file offset 0xc4b144"
!ASAP2DBHardwareModule methodsFor: 'recovered'!
ifDataFor: recoveredArg1 in: recoveredArg2
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := (recoveredStack0) indexOf: (recoveredStack1) in: (recoveredStack2).
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 22] ifFalse: [recoveredPC := 24].
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := recoveredArg2.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack2 := [
    ^nil
].
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1) ifAbsent: (recoveredStack2).
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack0 := (recoveredStack0) ifData.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack1 := [:recoveredBlock47Arg1 | 
    | recoveredBlock47Value0 recoveredBlock47Value1 |
    recoveredBlock47Value0 := recoveredBlock47Arg1.
    recoveredBlock47Value1 := (recoveredBlock47Value0) module: (self).
    recoveredBlock47Value1
].
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x203b6e68; bytecode file offset 0xcb3724"
!ASAP2DBHardwareModule methodsFor: 'recovered'!
ifDataFor: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := characteristic.
    recoveredValue2 := (self) ifDataFor: (recoveredValue0) in: (recoveredValue1).
    recoveredValue3 := recoveredValue2.
    recoveredLocal1 := recoveredValue3.
    recoveredValue4 := [
    | recoveredBlock15Value0 recoveredBlock15Value1 recoveredBlock15Value2 recoveredBlock15Value3 recoveredBlock15Value4 recoveredBlock15Value5 |
    recoveredBlock15Value0 := recoveredArg1.
    recoveredBlock15Value1 := measurement.
    recoveredBlock15Value2 := (self) ifDataFor: (recoveredBlock15Value0) in: (recoveredBlock15Value1).
    recoveredBlock15Value3 := recoveredBlock15Value2.
    recoveredLocal1 := recoveredBlock15Value3.
    recoveredBlock15Value4 := [
    | recoveredBlock15Block33Value0 recoveredBlock15Block33Value1 recoveredBlock15Block33Value2 recoveredBlock15Block33Value3 recoveredBlock15Block33Value4 recoveredBlock15Block33Value5 |
    recoveredBlock15Block33Value0 := recoveredArg1.
    recoveredBlock15Block33Value1 := axisPoint.
    recoveredBlock15Block33Value2 := (self) ifDataFor: (recoveredBlock15Block33Value0) in: (recoveredBlock15Block33Value1).
    recoveredBlock15Block33Value3 := recoveredBlock15Block33Value2.
    recoveredLocal1 := recoveredBlock15Block33Value3.
    recoveredBlock15Block33Value4 := [
    | recoveredBlock15Block33Block51Value0 recoveredBlock15Block33Block51Value1 recoveredBlock15Block33Block51Value2 recoveredBlock15Block33Block51Value3 |
    recoveredBlock15Block33Block51Value0 := recoveredArg1.
    recoveredBlock15Block33Block51Value1 := frame.
    recoveredBlock15Block33Block51Value2 := (self) ifDataFor: (recoveredBlock15Block33Block51Value0) in: (recoveredBlock15Block33Block51Value1).
    recoveredBlock15Block33Block51Value3 := recoveredBlock15Block33Block51Value2.
    recoveredLocal1 := recoveredBlock15Block33Block51Value3.
    recoveredBlock15Block33Block51Value2
].
    recoveredBlock15Block33Value5 := (recoveredBlock15Block33Value2) ifNil: (recoveredBlock15Block33Value4).
    recoveredBlock15Block33Value5
].
    recoveredBlock15Value5 := (recoveredBlock15Value2) ifNil: (recoveredBlock15Value4).
    recoveredBlock15Value5
].
    (recoveredValue2) ifNil: (recoveredValue4).
    recoveredValue5 := recoveredLocal1.
    ^recoveredValue5
! !

"ASDBase.ic method 0x204aa014; bytecode file offset 0xda6900"
!ASAP2DBHardwareModule methodsFor: 'recovered'!
selectObjectsFrom: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := (self) a2ml.
    recoveredValue1 := [:recoveredBlock5Arg1 | 
    | recoveredBlock5Stack0 recoveredBlock5Stack1 recoveredBlock5Stack2 recoveredBlock5Stack3 recoveredBlock5PC recoveredBlock5Step recoveredBlock5Done recoveredBlock5Result |
    recoveredBlock5Stack0 := self.
    recoveredBlock5PC := 12.
    recoveredBlock5Done := false.
    [recoveredBlock5Done not] whileTrue: [
        recoveredBlock5Step := recoveredBlock5PC.
        recoveredBlock5Step = 12 ifTrue: [
            recoveredBlock5Stack1 := recoveredBlock5Arg1.
            recoveredBlock5PC := 13.
        ].
        recoveredBlock5Step = 13 ifTrue: [
            recoveredBlock5Stack2 := [:block2810510cArg1 | 
    | block2810510cValue0 block2810510cValue1 |
    block2810510cValue0 := block2810510cArg1.
    block2810510cValue1 := (block2810510cValue0) notNil.
    block2810510cValue1
].
            recoveredBlock5PC := 15.
        ].
        recoveredBlock5Step = 15 ifTrue: [
            recoveredBlock5PC := 21.
        ].
        recoveredBlock5Step = 21 ifTrue: [
            recoveredBlock5Stack1 := (recoveredBlock5Stack1) select: (recoveredBlock5Stack2).
            recoveredBlock5PC := 22.
        ].
        recoveredBlock5Step = 22 ifTrue: [
            (recoveredBlock5Stack0) a2ml: (recoveredBlock5Stack1).
            recoveredBlock5PC := 24.
        ].
        recoveredBlock5Step = 24 ifTrue: [
            recoveredBlock5Stack0 := self.
            recoveredBlock5PC := 25.
        ].
        recoveredBlock5Step = 25 ifTrue: [
            recoveredBlock5Stack1 := self.
            recoveredBlock5PC := 26.
        ].
        recoveredBlock5Step = 26 ifTrue: [
            recoveredBlock5Stack1 := (recoveredBlock5Stack1) a2ml.
            recoveredBlock5PC := 27.
        ].
        recoveredBlock5Step = 27 ifTrue: [
            recoveredBlock5Stack2 := [:recoveredBlock5Block27Arg1 | 
    | recoveredBlock5Block27Value0 recoveredBlock5Block27Value1 recoveredBlock5Block27Value2 |
    recoveredBlock5Block27Value0 := recoveredArg1.
    recoveredBlock5Block27Value1 := recoveredBlock5Block27Arg1.
    recoveredBlock5Block27Value2 := (recoveredBlock5Block27Value0) at: (recoveredBlock5Block27Value1).
    recoveredBlock5Block27Value2
].
            recoveredBlock5PC := 41.
        ].
        recoveredBlock5Step = 41 ifTrue: [
            recoveredBlock5Stack1 := (recoveredBlock5Stack1) inject: (recoveredBlock5Stack2).
            recoveredBlock5PC := 43.
        ].
        recoveredBlock5Step = 43 ifTrue: [
            (recoveredBlock5Stack0) a2ml: (recoveredBlock5Stack1).
            recoveredBlock5PC := 45.
        ].
        recoveredBlock5Step = 45 ifTrue: [
            recoveredBlock5Stack0 := self.
            recoveredBlock5PC := 46.
        ].
        recoveredBlock5Step = 46 ifTrue: [
            recoveredBlock5Stack0 := (recoveredBlock5Stack0) a2ml.
            recoveredBlock5PC := 47.
        ].
        recoveredBlock5Step = 47 ifTrue: [
            recoveredBlock5Stack1 := [:recoveredBlock5Block47Arg1 | 
    | recoveredBlock5Block47Value0 recoveredBlock5Block47Value1 recoveredBlock5Block47Value2 |
    recoveredBlock5Block47Value0 := recoveredBlock5Block47Arg1.
    recoveredBlock5Block47Value1 := recoveredArg1.
    recoveredBlock5Block47Value2 := (recoveredBlock5Block47Value0) selectObjectsFrom: (recoveredBlock5Block47Value1).
    recoveredBlock5Block47Value2
].
            recoveredBlock5PC := 61.
        ].
        recoveredBlock5Step = 61 ifTrue: [
            (recoveredBlock5Stack0) do: (recoveredBlock5Stack1).
            recoveredBlock5PC := 63.
        ].
        recoveredBlock5Step = 63 ifTrue: [
            recoveredBlock5Stack0 := nil.
            recoveredBlock5PC := 64.
        ].
        recoveredBlock5Step = 64 ifTrue: [
            recoveredBlock5Stack1 := self.
            recoveredBlock5PC := 65.
        ].
        recoveredBlock5Step = 65 ifTrue: [
            recoveredBlock5Stack1 := (recoveredBlock5Stack1) a2ml.
            recoveredBlock5PC := 66.
        ].
        recoveredBlock5Step = 66 ifTrue: [
            recoveredBlock5Stack1 := (recoveredBlock5Stack1) isEmpty.
            recoveredBlock5PC := 68.
        ].
        recoveredBlock5Step = 68 ifTrue: [
            (recoveredBlock5Stack1) ifTrue: [recoveredBlock5PC := 72] ifFalse: [recoveredBlock5PC := 76].
        ].
        recoveredBlock5Step = 72 ifTrue: [
            recoveredBlock5PC := 73.
        ].
        recoveredBlock5Step = 73 ifTrue: [
            recoveredBlock5Stack0 := self.
            recoveredBlock5PC := 74.
        ].
        recoveredBlock5Step = 74 ifTrue: [
            recoveredBlock5Stack1 := nil.
            recoveredBlock5PC := 75.
        ].
        recoveredBlock5Step = 75 ifTrue: [
            recoveredBlock5Stack0 := (recoveredBlock5Stack0) a2ml: (recoveredBlock5Stack1).
            recoveredBlock5PC := 76.
        ].
        recoveredBlock5Step = 76 ifTrue: [
            recoveredBlock5Result := recoveredBlock5Stack0.
            recoveredBlock5Done := true.
        ].
    ].
    recoveredBlock5Result
].
    (recoveredValue0) ifNotNil: (recoveredValue1).
    recoveredValue2 := (self) ifData.
    recoveredValue3 := [:recoveredBlock83Arg1 | 
    | recoveredBlock83Stack0 recoveredBlock83Stack1 recoveredBlock83Stack2 recoveredBlock83Stack3 recoveredBlock83PC recoveredBlock83Step recoveredBlock83Done recoveredBlock83Result |
    recoveredBlock83Stack0 := self.
    recoveredBlock83PC := 90.
    recoveredBlock83Done := false.
    [recoveredBlock83Done not] whileTrue: [
        recoveredBlock83Step := recoveredBlock83PC.
        recoveredBlock83Step = 90 ifTrue: [
            recoveredBlock83Stack1 := recoveredBlock83Arg1.
            recoveredBlock83PC := 91.
        ].
        recoveredBlock83Step = 91 ifTrue: [
            recoveredBlock83Stack1 := (recoveredBlock83Stack1) isInteger.
            recoveredBlock83PC := 93.
        ].
        recoveredBlock83Step = 93 ifTrue: [
            (recoveredBlock83Stack1) ifTrue: [recoveredBlock83PC := 96] ifFalse: [recoveredBlock83PC := 106].
        ].
        recoveredBlock83Step = 96 ifTrue: [
            recoveredBlock83Stack1 := recoveredArg1.
            recoveredBlock83PC := 99.
        ].
        recoveredBlock83Step = 99 ifTrue: [
            recoveredBlock83Stack2 := recoveredBlock83Arg1.
            recoveredBlock83PC := 100.
        ].
        recoveredBlock83Step = 100 ifTrue: [
            recoveredBlock83Stack1 := (recoveredBlock83Stack1) at: (recoveredBlock83Stack2).
            recoveredBlock83PC := 102.
        ].
        recoveredBlock83Step = 102 ifTrue: [
            recoveredBlock83PC := 107.
        ].
        recoveredBlock83Step = 106 ifTrue: [
            recoveredBlock83Stack1 := recoveredBlock83Arg1.
            recoveredBlock83PC := 107.
        ].
        recoveredBlock83Step = 107 ifTrue: [
            recoveredBlock83Result := recoveredBlock83Stack1.
            recoveredBlock83Done := true.
        ].
    ].
    recoveredBlock83Result
].
    recoveredValue4 := (recoveredValue2) inject: (recoveredValue3).
    (self) ifData: (recoveredValue4).
    recoveredValue5 := (self) ifData.
    recoveredValue6 := [:recoveredBlock115Arg1 | 
    | recoveredBlock115Value0 recoveredBlock115Value1 recoveredBlock115Value2 |
    recoveredBlock115Value0 := recoveredBlock115Arg1.
    recoveredBlock115Value1 := recoveredArg1.
    recoveredBlock115Value2 := (recoveredBlock115Value0) selectObjectsFrom: (recoveredBlock115Value1).
    recoveredBlock115Value2
].
    (recoveredValue5) do: (recoveredValue6).
    recoveredValue7 := recoveredArg1.
    super selectObjectsFrom: (recoveredValue7).
    ^self
! !

"ASDBase.ic method 0x204b732c; bytecode file offset 0xdb3c20"
!ASAP2DBHardwareModule methodsFor: 'recovered'!
postLoad: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := [
    | recoveredBlock4Stack0 recoveredBlock4Stack1 recoveredBlock4Stack2 recoveredBlock4Stack3 recoveredBlock4PC recoveredBlock4Step recoveredBlock4Done recoveredBlock4Result |
    recoveredBlock4Stack0 := self.
    recoveredBlock4PC := 10.
    recoveredBlock4Done := false.
    [recoveredBlock4Done not] whileTrue: [
        recoveredBlock4Step := recoveredBlock4PC.
        recoveredBlock4Step = 10 ifTrue: [
            recoveredBlock4Stack1 := characteristic.
            recoveredBlock4PC := 12.
        ].
        recoveredBlock4Step = 12 ifTrue: [
            recoveredBlock4Stack1 := (recoveredBlock4Stack1) class.
            recoveredBlock4PC := 13.
        ].
        recoveredBlock4Step = 13 ifTrue: [
            recoveredBlock4Stack2 := SortedCollection.
            recoveredBlock4PC := 15.
        ].
        recoveredBlock4Step = 15 ifTrue: [
            recoveredBlock4Stack1 := (recoveredBlock4Stack1) = (recoveredBlock4Stack2).
            recoveredBlock4PC := 16.
        ].
        recoveredBlock4Step = 16 ifTrue: [
            (recoveredBlock4Stack1) ifTrue: [recoveredBlock4PC := 20] ifFalse: [recoveredBlock4PC := 88].
        ].
        recoveredBlock4Step = 20 ifTrue: [
            recoveredBlock4Stack1 := characteristic.
            recoveredBlock4PC := 22.
        ].
        recoveredBlock4Step = 22 ifTrue: [
            recoveredBlock4Stack2 := self.
            recoveredBlock4PC := 23.
        ].
        recoveredBlock4Step = 23 ifTrue: [
            recoveredBlock4Stack2 := (recoveredBlock4Stack2) sortBlock.
            recoveredBlock4PC := 24.
        ].
        recoveredBlock4Step = 24 ifTrue: [
            (recoveredBlock4Stack1) sortBlock: (recoveredBlock4Stack2).
            recoveredBlock4PC := 26.
        ].
        recoveredBlock4Step = 26 ifTrue: [
            recoveredBlock4Stack1 := measurement.
            recoveredBlock4PC := 28.
        ].
        recoveredBlock4Step = 28 ifTrue: [
            recoveredBlock4Stack2 := self.
            recoveredBlock4PC := 29.
        ].
        recoveredBlock4Step = 29 ifTrue: [
            recoveredBlock4Stack2 := (recoveredBlock4Stack2) sortBlock.
            recoveredBlock4PC := 30.
        ].
        recoveredBlock4Step = 30 ifTrue: [
            (recoveredBlock4Stack1) sortBlock: (recoveredBlock4Stack2).
            recoveredBlock4PC := 32.
        ].
        recoveredBlock4Step = 32 ifTrue: [
            recoveredBlock4Stack1 := axisPoint.
            recoveredBlock4PC := 34.
        ].
        recoveredBlock4Step = 34 ifTrue: [
            recoveredBlock4Stack2 := self.
            recoveredBlock4PC := 35.
        ].
        recoveredBlock4Step = 35 ifTrue: [
            recoveredBlock4Stack2 := (recoveredBlock4Stack2) sortBlock.
            recoveredBlock4PC := 36.
        ].
        recoveredBlock4Step = 36 ifTrue: [
            (recoveredBlock4Stack1) sortBlock: (recoveredBlock4Stack2).
            recoveredBlock4PC := 38.
        ].
        recoveredBlock4Step = 38 ifTrue: [
            recoveredBlock4Stack1 := frame.
            recoveredBlock4PC := 40.
        ].
        recoveredBlock4Step = 40 ifTrue: [
            recoveredBlock4Stack2 := self.
            recoveredBlock4PC := 41.
        ].
        recoveredBlock4Step = 41 ifTrue: [
            recoveredBlock4Stack2 := (recoveredBlock4Stack2) sortBlock.
            recoveredBlock4PC := 42.
        ].
        recoveredBlock4Step = 42 ifTrue: [
            (recoveredBlock4Stack1) sortBlock: (recoveredBlock4Stack2).
            recoveredBlock4PC := 44.
        ].
        recoveredBlock4Step = 44 ifTrue: [
            recoveredBlock4Stack1 := ifData.
            recoveredBlock4PC := 46.
        ].
        recoveredBlock4Step = 46 ifTrue: [
            recoveredBlock4Stack1 := (recoveredBlock4Stack1) class.
            recoveredBlock4PC := 47.
        ].
        recoveredBlock4Step = 47 ifTrue: [
            recoveredBlock4Stack2 := SortedCollection.
            recoveredBlock4PC := 49.
        ].
        recoveredBlock4Step = 49 ifTrue: [
            recoveredBlock4Stack1 := (recoveredBlock4Stack1) = (recoveredBlock4Stack2).
            recoveredBlock4PC := 50.
        ].
        recoveredBlock4Step = 50 ifTrue: [
            (recoveredBlock4Stack1) ifTrue: [recoveredBlock4PC := 54] ifFalse: [recoveredBlock4PC := 60].
        ].
        recoveredBlock4Step = 54 ifTrue: [
            recoveredBlock4Stack1 := ifData.
            recoveredBlock4PC := 56.
        ].
        recoveredBlock4Step = 56 ifTrue: [
            recoveredBlock4Stack2 := self.
            recoveredBlock4PC := 57.
        ].
        recoveredBlock4Step = 57 ifTrue: [
            recoveredBlock4Stack2 := (recoveredBlock4Stack2) sortBlock.
            recoveredBlock4PC := 58.
        ].
        recoveredBlock4Step = 58 ifTrue: [
            (recoveredBlock4Stack1) sortBlock: (recoveredBlock4Stack2).
            recoveredBlock4PC := 60.
        ].
        recoveredBlock4Step = 60 ifTrue: [
            recoveredBlock4Stack1 := group.
            recoveredBlock4PC := 62.
        ].
        recoveredBlock4Step = 62 ifTrue: [
            recoveredBlock4Stack1 := (recoveredBlock4Stack1) class.
            recoveredBlock4PC := 63.
        ].
        recoveredBlock4Step = 63 ifTrue: [
            recoveredBlock4Stack2 := SortedCollection.
            recoveredBlock4PC := 65.
        ].
        recoveredBlock4Step = 65 ifTrue: [
            recoveredBlock4Stack1 := (recoveredBlock4Stack1) = (recoveredBlock4Stack2).
            recoveredBlock4PC := 66.
        ].
        recoveredBlock4Step = 66 ifTrue: [
            (recoveredBlock4Stack1) ifTrue: [recoveredBlock4PC := 70] ifFalse: [recoveredBlock4PC := 80].
        ].
        recoveredBlock4Step = 70 ifTrue: [
            recoveredBlock4Stack1 := group.
            recoveredBlock4PC := 72.
        ].
        recoveredBlock4Step = 72 ifTrue: [
            recoveredBlock4Stack2 := self.
            recoveredBlock4PC := 73.
        ].
        recoveredBlock4Step = 73 ifTrue: [
            recoveredBlock4Stack2 := (recoveredBlock4Stack2) sortBlock.
            recoveredBlock4PC := 74.
        ].
        recoveredBlock4Step = 74 ifTrue: [
            (recoveredBlock4Stack1) sortBlock: (recoveredBlock4Stack2).
            recoveredBlock4PC := 76.
        ].
        recoveredBlock4Step = 76 ifTrue: [
            recoveredBlock4PC := 88.
        ].
        recoveredBlock4Step = 80 ifTrue: [
            recoveredBlock4Stack1 := group.
            recoveredBlock4PC := 82.
        ].
        recoveredBlock4Step = 82 ifTrue: [
            recoveredBlock4Stack2 := self.
            recoveredBlock4PC := 83.
        ].
        recoveredBlock4Step = 83 ifTrue: [
            recoveredBlock4Stack2 := (recoveredBlock4Stack2) sortBlock.
            recoveredBlock4PC := 84.
        ].
        recoveredBlock4Step = 84 ifTrue: [
            recoveredBlock4Stack1 := (recoveredBlock4Stack1) asSortedCollection: (recoveredBlock4Stack2).
            recoveredBlock4PC := 86.
        ].
        recoveredBlock4Step = 86 ifTrue: [
            group := recoveredBlock4Stack1.
            recoveredBlock4PC := 88.
        ].
        recoveredBlock4Step = 88 ifTrue: [
            recoveredBlock4Stack1 := nil.
            recoveredBlock4PC := 89.
        ].
        recoveredBlock4Step = 89 ifTrue: [
            recoveredBlock4Stack2 := self.
            recoveredBlock4PC := 90.
        ].
        recoveredBlock4Step = 90 ifTrue: [
            recoveredBlock4Stack2 := (recoveredBlock4Stack2) a2ml.
            recoveredBlock4PC := 92.
        ].
        recoveredBlock4Step = 92 ifTrue: [
            (recoveredBlock4Stack2 == nil) ifTrue: [recoveredBlock4PC := 113] ifFalse: [recoveredBlock4PC := 96].
        ].
        recoveredBlock4Step = 96 ifTrue: [
            recoveredBlock4PC := 97.
        ].
        recoveredBlock4Step = 97 ifTrue: [
            recoveredBlock4Stack1 := self.
            recoveredBlock4PC := 98.
        ].
        recoveredBlock4Step = 98 ifTrue: [
            recoveredBlock4Stack1 := (recoveredBlock4Stack1) a2ml.
            recoveredBlock4PC := 100.
        ].
        recoveredBlock4Step = 100 ifTrue: [
            recoveredBlock4Stack2 := [:recoveredBlock4Block100Arg1 | 
    | recoveredBlock4Block100Value0 recoveredBlock4Block100Value1 |
    recoveredBlock4Block100Value0 := recoveredBlock4Block100Arg1.
    recoveredBlock4Block100Value1 := (recoveredBlock4Block100Value0) restoreInstVars: (self).
    recoveredBlock4Block100Value1
].
            recoveredBlock4PC := 111.
        ].
        recoveredBlock4Step = 111 ifTrue: [
            recoveredBlock4Stack1 := (recoveredBlock4Stack1) do: (recoveredBlock4Stack2).
            recoveredBlock4PC := 113.
        ].
        recoveredBlock4Step = 113 ifTrue: [
            recoveredBlock4Result := recoveredBlock4Stack1.
            recoveredBlock4Done := true.
        ].
    ].
    recoveredBlock4Result
].
            recoveredPC := 114.
        ].
        recoveredStep = 114 ifTrue: [
            recoveredStack2 := ExError.
            recoveredPC := 116.
        ].
        recoveredStep = 116 ifTrue: [
            recoveredStack3 := [:block28105e44Arg1 | 
    | block28105e44Stack0 block28105e44Stack1 block28105e44Stack2 block28105e44Stack3 block28105e44PC block28105e44Step block28105e44Done block28105e44Result |
    block28105e44Stack0 := self.
    block28105e44PC := 4.
    block28105e44Done := false.
    [block28105e44Done not] whileTrue: [
        block28105e44Step := block28105e44PC.
        block28105e44Step = 4 ifTrue: [
            block28105e44Stack1 := CTError.
            block28105e44PC := 6.
        ].
        block28105e44Step = 6 ifTrue: [
            block28105e44Stack1 := (block28105e44Stack1) isHaltOnError.
            block28105e44PC := 8.
        ].
        block28105e44Step = 8 ifTrue: [
            (block28105e44Stack1) ifTrue: [block28105e44PC := 12] ifFalse: [block28105e44PC := 18].
        ].
        block28105e44Step = 12 ifTrue: [
            block28105e44Stack1 := block28105e44Arg1.
            block28105e44PC := 13.
        ].
        block28105e44Step = 13 ifTrue: [
            block28105e44Stack1 := (block28105e44Stack1) signal.
            block28105e44PC := 15.
        ].
        block28105e44Step = 15 ifTrue: [
            block28105e44PC := 22.
        ].
        block28105e44Step = 18 ifTrue: [
            block28105e44Stack1 := block28105e44Arg1.
            block28105e44PC := 19.
        ].
        block28105e44Step = 19 ifTrue: [
            block28105e44Stack2 := nil.
            block28105e44PC := 20.
        ].
        block28105e44Step = 20 ifTrue: [
            block28105e44Stack1 := (block28105e44Stack1) exitWith: (block28105e44Stack2).
            block28105e44PC := 22.
        ].
        block28105e44Step = 22 ifTrue: [
            block28105e44Result := block28105e44Stack1.
            block28105e44Done := true.
        ].
    ].
    block28105e44Result
].
            recoveredPC := 118.
        ].
        recoveredStep = 118 ifTrue: [
            recoveredPC := 141.
        ].
        recoveredStep = 141 ifTrue: [
            (recoveredStack1) when: (recoveredStack2) do: (recoveredStack3).
            recoveredPC := 143.
        ].
        recoveredStep = 143 ifTrue: [
            recoveredStack0 := (recoveredStack0) testIndex.
            recoveredPC := 145.
        ].
        recoveredStep = 145 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20506be4; bytecode file offset 0xe034e4"
!ASAP2DBHardwareModule methodsFor: 'recovered'!
countObjects
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 |
    recoveredValue0 := LookupTable.
    recoveredValue1 := (recoveredValue0) new.
    recoveredLocal2 := recoveredValue1.
    recoveredValue2 := recoveredLocal2.
    (recoveredValue2) at: ('aTotal') put: (0).
    recoveredValue3 := flat.
    recoveredLocal1 := recoveredValue3.
    flat := nil.
    recoveredValue4 := recoveredLocal2.
    (self) countObjectsIn: (recoveredValue4).
    recoveredValue5 := recoveredLocal2.
    recoveredValue6 := [:recoveredBlock37Arg1 | 
    | recoveredBlock37Local1 recoveredBlock37Local2 recoveredBlock37Local3 recoveredBlock37Stack0 recoveredBlock37Stack1 recoveredBlock37Stack2 recoveredBlock37Stack3 recoveredBlock37Stack4 recoveredBlock37Stack5 recoveredBlock37Stack6 recoveredBlock37PC recoveredBlock37Step recoveredBlock37Done recoveredBlock37Result |
    recoveredBlock37Stack0 := self.
    recoveredBlock37PC := 44.
    recoveredBlock37Done := false.
    [recoveredBlock37Done not] whileTrue: [
        recoveredBlock37Step := recoveredBlock37PC.
        recoveredBlock37Step = 44 ifTrue: [
            recoveredBlock37Stack1 := SortedCollection.
            recoveredBlock37PC := 46.
        ].
        recoveredBlock37Step = 46 ifTrue: [
            recoveredBlock37Stack2 := [:block2810ac50Arg1 :block2810ac50Arg2 | 
    | block2810ac50Value0 block2810ac50Value1 block2810ac50Value2 block2810ac50Value3 block2810ac50Value4 |
    block2810ac50Value0 := block2810ac50Arg1.
    block2810ac50Value1 := (block2810ac50Value0) value.
    block2810ac50Value2 := block2810ac50Arg2.
    block2810ac50Value3 := (block2810ac50Value2) value.
    block2810ac50Value4 := (block2810ac50Value1) > (block2810ac50Value3).
    block2810ac50Value4
].
            recoveredBlock37PC := 48.
        ].
        recoveredBlock37Step = 48 ifTrue: [
            recoveredBlock37PC := 60.
        ].
        recoveredBlock37Step = 60 ifTrue: [
            recoveredBlock37Stack1 := (recoveredBlock37Stack1) sortBlock: (recoveredBlock37Stack2).
            recoveredBlock37PC := 62.
        ].
        recoveredBlock37Step = 62 ifTrue: [
            recoveredBlock37Local3 := recoveredBlock37Stack1.
            recoveredBlock37PC := 65.
        ].
        recoveredBlock37Step = 65 ifTrue: [
            recoveredBlock37Stack1 := recoveredBlock37Arg1.
            recoveredBlock37PC := 68.
        ].
        recoveredBlock37Step = 68 ifTrue: [
            recoveredBlock37Stack2 := [:recoveredBlock37Block68Arg1 | 
    | recoveredBlock37Block68Value0 recoveredBlock37Block68Value1 recoveredBlock37Block68Value2 |
    recoveredBlock37Block68Value0 := recoveredBlock37Local3.
    recoveredBlock37Block68Value1 := recoveredBlock37Block68Arg1.
    recoveredBlock37Block68Value2 := (recoveredBlock37Block68Value0) add: (recoveredBlock37Block68Value1).
    recoveredBlock37Block68Value2
].
            recoveredBlock37PC := 81.
        ].
        recoveredBlock37Step = 81 ifTrue: [
            (recoveredBlock37Stack1) associationsDo: (recoveredBlock37Stack2).
            recoveredBlock37PC := 83.
        ].
        recoveredBlock37Step = 83 ifTrue: [
            recoveredBlock37Stack1 := recoveredLocal2.
            recoveredBlock37PC := 86.
        ].
        recoveredBlock37Step = 86 ifTrue: [
            recoveredBlock37Stack2 := 'Strings'.
            recoveredBlock37PC := 88.
        ].
        recoveredBlock37Step = 88 ifTrue: [
            recoveredBlock37Stack3 := recoveredBlock37Local3.
            recoveredBlock37PC := 91.
        ].
        recoveredBlock37Step = 91 ifTrue: [
            (recoveredBlock37Stack1) at: (recoveredBlock37Stack2) put: (recoveredBlock37Stack3).
            recoveredBlock37PC := 93.
        ].
        recoveredBlock37Step = 93 ifTrue: [
            recoveredBlock37Stack1 := 0.
            recoveredBlock37PC := 95.
        ].
        recoveredBlock37Step = 95 ifTrue: [
            recoveredBlock37Stack2 := recoveredBlock37Stack1.
            recoveredBlock37PC := 96.
        ].
        recoveredBlock37Step = 96 ifTrue: [
            recoveredBlock37Local1 := recoveredBlock37Stack2.
            recoveredBlock37PC := 99.
        ].
        recoveredBlock37Step = 99 ifTrue: [
            recoveredBlock37Local2 := recoveredBlock37Stack1.
            recoveredBlock37PC := 102.
        ].
        recoveredBlock37Step = 102 ifTrue: [
            recoveredBlock37Stack1 := recoveredBlock37Local3.
            recoveredBlock37PC := 105.
        ].
        recoveredBlock37Step = 105 ifTrue: [
            recoveredBlock37Stack2 := [:recoveredBlock37Block105Arg1 | 
    | recoveredBlock37Block105Stack0 recoveredBlock37Block105Stack1 recoveredBlock37Block105Stack2 recoveredBlock37Block105Stack3 recoveredBlock37Block105Stack4 recoveredBlock37Block105PC recoveredBlock37Block105Step recoveredBlock37Block105Done recoveredBlock37Block105Result |
    recoveredBlock37Block105Stack0 := nil.
    recoveredBlock37Block105PC := 112.
    recoveredBlock37Block105Done := false.
    [recoveredBlock37Block105Done not] whileTrue: [
        recoveredBlock37Block105Step := recoveredBlock37Block105PC.
        recoveredBlock37Block105Step = 112 ifTrue: [
            recoveredBlock37Block105Stack1 := nil.
            recoveredBlock37Block105PC := 113.
        ].
        recoveredBlock37Block105Step = 113 ifTrue: [
            recoveredBlock37Block105Stack2 := recoveredBlock37Block105Arg1.
            recoveredBlock37Block105PC := 114.
        ].
        recoveredBlock37Block105Step = 114 ifTrue: [
            recoveredBlock37Block105Stack2 := (recoveredBlock37Block105Stack2) value.
            recoveredBlock37Block105PC := 116.
        ].
        recoveredBlock37Block105Step = 116 ifTrue: [
            recoveredBlock37Block105Stack3 := 4.
            recoveredBlock37Block105PC := 118.
        ].
        recoveredBlock37Block105Step = 118 ifTrue: [
            recoveredBlock37Block105Stack2 := (recoveredBlock37Block105Stack2) > (recoveredBlock37Block105Stack3).
            recoveredBlock37Block105PC := 119.
        ].
        recoveredBlock37Block105Step = 119 ifTrue: [
            (recoveredBlock37Block105Stack2) ifTrue: [recoveredBlock37Block105PC := 122] ifFalse: [recoveredBlock37Block105PC := 148].
        ].
        recoveredBlock37Block105Step = 122 ifTrue: [
            recoveredBlock37Block105PC := 123.
        ].
        recoveredBlock37Block105Step = 123 ifTrue: [
            recoveredBlock37Block105Stack1 := recoveredBlock37Local2.
            recoveredBlock37Block105PC := 126.
        ].
        recoveredBlock37Block105Step = 126 ifTrue: [
            recoveredBlock37Block105Stack1 := (recoveredBlock37Block105Stack1) + (1).
            recoveredBlock37Block105PC := 127.
        ].
        recoveredBlock37Block105Step = 127 ifTrue: [
            recoveredBlock37Local2 := recoveredBlock37Block105Stack1.
            recoveredBlock37Block105PC := 130.
        ].
        recoveredBlock37Block105Step = 130 ifTrue: [
            recoveredBlock37Block105Stack1 := recoveredBlock37Local1.
            recoveredBlock37Block105PC := 133.
        ].
        recoveredBlock37Block105Step = 133 ifTrue: [
            recoveredBlock37Block105Stack2 := recoveredBlock37Block105Arg1.
            recoveredBlock37Block105PC := 134.
        ].
        recoveredBlock37Block105Step = 134 ifTrue: [
            recoveredBlock37Block105Stack2 := (recoveredBlock37Block105Stack2) key.
            recoveredBlock37Block105PC := 136.
        ].
        recoveredBlock37Block105Step = 136 ifTrue: [
            recoveredBlock37Block105Stack2 := (recoveredBlock37Block105Stack2) dumpSize.
            recoveredBlock37Block105PC := 138.
        ].
        recoveredBlock37Block105Step = 138 ifTrue: [
            recoveredBlock37Block105Stack2 := (recoveredBlock37Block105Stack2) + (-2).
            recoveredBlock37Block105PC := 139.
        ].
        recoveredBlock37Block105Step = 139 ifTrue: [
            recoveredBlock37Block105Stack3 := recoveredBlock37Block105Arg1.
            recoveredBlock37Block105PC := 140.
        ].
        recoveredBlock37Block105Step = 140 ifTrue: [
            recoveredBlock37Block105Stack3 := (recoveredBlock37Block105Stack3) value.
            recoveredBlock37Block105PC := 142.
        ].
        recoveredBlock37Block105Step = 142 ifTrue: [
            recoveredBlock37Block105Stack2 := (recoveredBlock37Block105Stack2) * (recoveredBlock37Block105Stack3).
            recoveredBlock37Block105PC := 143.
        ].
        recoveredBlock37Block105Step = 143 ifTrue: [
            recoveredBlock37Block105Stack1 := (recoveredBlock37Block105Stack1) + (recoveredBlock37Block105Stack2).
            recoveredBlock37Block105PC := 144.
        ].
        recoveredBlock37Block105Step = 144 ifTrue: [
            recoveredBlock37Block105Stack2 := recoveredBlock37Block105Stack1.
            recoveredBlock37Block105PC := 145.
        ].
        recoveredBlock37Block105Step = 145 ifTrue: [
            recoveredBlock37Local1 := recoveredBlock37Block105Stack2.
            recoveredBlock37Block105PC := 148.
        ].
        recoveredBlock37Block105Step = 148 ifTrue: [
            recoveredBlock37Block105Result := recoveredBlock37Block105Stack1.
            recoveredBlock37Block105Done := true.
        ].
    ].
    recoveredBlock37Block105Result
].
            recoveredBlock37PC := 149.
        ].
        recoveredBlock37Step = 149 ifTrue: [
            (recoveredBlock37Stack1) do: (recoveredBlock37Stack2).
            recoveredBlock37PC := 151.
        ].
        recoveredBlock37Step = 151 ifTrue: [
            recoveredBlock37Stack1 := recoveredLocal2.
            recoveredBlock37PC := 154.
        ].
        recoveredBlock37Step = 154 ifTrue: [
            recoveredBlock37Stack2 := 'StringConstants'.
            recoveredBlock37PC := 156.
        ].
        recoveredBlock37Step = 156 ifTrue: [
            recoveredBlock37Stack3 := Association.
            recoveredBlock37PC := 158.
        ].
        recoveredBlock37Step = 158 ifTrue: [
            recoveredBlock37Stack4 := recoveredBlock37Local2.
            recoveredBlock37PC := 161.
        ].
        recoveredBlock37Step = 161 ifTrue: [
            recoveredBlock37Stack5 := recoveredBlock37Local1.
            recoveredBlock37PC := 164.
        ].
        recoveredBlock37Step = 164 ifTrue: [
            recoveredBlock37Stack3 := (recoveredBlock37Stack3) key: (recoveredBlock37Stack4) value: (recoveredBlock37Stack5).
            recoveredBlock37PC := 166.
        ].
        recoveredBlock37Step = 166 ifTrue: [
            recoveredBlock37Stack1 := (recoveredBlock37Stack1) at: (recoveredBlock37Stack2) put: (recoveredBlock37Stack3).
            recoveredBlock37PC := 168.
        ].
        recoveredBlock37Step = 168 ifTrue: [
            recoveredBlock37Result := recoveredBlock37Stack1.
            recoveredBlock37Done := true.
        ].
    ].
    recoveredBlock37Result
].
    (recoveredValue5) at: ('Strings') ifPresent: (recoveredValue6).
    recoveredValue7 := recoveredLocal1.
    flat := recoveredValue7.
    recoveredValue8 := recoveredLocal2.
    ^recoveredValue8
! !

