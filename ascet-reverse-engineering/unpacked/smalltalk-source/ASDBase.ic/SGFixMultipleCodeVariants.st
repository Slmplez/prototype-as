"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20065b84; bytecode file offset 0x963428"
!SGFixMultipleCodeVariants methodsFor: 'recovered'!
item
    | recoveredValue0 |
    recoveredValue0 := item.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200bdf4c; bytecode file offset 0x9bb178"
!SGFixMultipleCodeVariants methodsFor: 'recovered'!
item: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    item := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200beea8; bytecode file offset 0x9bc0b4"
!SGFixMultipleCodeVariants methodsFor: 'recovered'!
methodMapping: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    methodMapping := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x20129600; bytecode file offset 0xa25f5c"
!SGFixMultipleCodeVariants methodsFor: 'recovered'!
monitor
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := monitor.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 15] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := SGMonitorStreamDummy.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) create.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            monitor := recoveredStack1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := monitor.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2016b3c0; bytecode file offset 0xa67c80"
!SGFixMultipleCodeVariants methodsFor: 'recovered'!
fixCodeArchive
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) allAvailableCodeArchives.
    recoveredLocal1 := recoveredValue0.
    recoveredValue1 := recoveredLocal1.
    recoveredValue2 := [:recoveredBlock7Arg1 | 
    | recoveredBlock7Value0 recoveredBlock7Value1 |
    recoveredBlock7Value0 := recoveredBlock7Arg1.
    recoveredBlock7Value1 := (self) fixMultipleCodeVariantIn: (recoveredBlock7Value0).
    recoveredBlock7Value1
].
    (recoveredValue1) do: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x201ae4b0; bytecode file offset 0xaaad78"
!SGFixMultipleCodeVariants methodsFor: 'recovered'!
methodMapping
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := methodMapping.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 23] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := LookupTable.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := (recoveredStack2) item.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := (recoveredStack2) allMethods.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := (recoveredStack2) size.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack3 := 4.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack2 := (recoveredStack2) * (recoveredStack3).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := (recoveredStack1) new: (recoveredStack2).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            methodMapping := recoveredStack1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := methodMapping.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2025c294; bytecode file offset 0xb58b60"
!SGFixMultipleCodeVariants methodsFor: 'recovered'!
uniqueMethodFor: recoveredArg1 withVariantKey: recoveredArg2
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) methodName.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := (recoveredValue2) labelPostfixFromDirectAccessOption.
    recoveredValue4 := (recoveredValue1) , (recoveredValue3).
    recoveredLocal1 := recoveredValue4.
    recoveredValue5 := (self) methodMapping.
    recoveredValue6 := recoveredLocal1.
    recoveredValue7 := [
    | recoveredBlock20Value0 recoveredBlock20Value1 recoveredBlock20Value2 |
    recoveredBlock20Value0 := recoveredArg1.
    recoveredBlock20Value1 := recoveredLocal1.
    recoveredBlock20Value2 := (self) duplicateMethodFor: (recoveredBlock20Value0) withName: (recoveredBlock20Value1).
    recoveredBlock20Value2
].
    recoveredValue8 := (recoveredValue5) at: (recoveredValue6) ifAbsentPut: (recoveredValue7).
    ^recoveredValue8
! !

"ASDBase.ic method 0x202b0b54; bytecode file offset 0xbad434"
!SGFixMultipleCodeVariants methodsFor: 'recovered'!
allAvailableCodeArchives
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) item.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) implementations.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack0 := OrderedCollection.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) new.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) item.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) handwrittenImplCode.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 27] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := (recoveredStack1) item.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := (recoveredStack1) handwrittenImplCode.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := (recoveredStack1) values.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            (recoveredStack0) addAll: (recoveredStack1).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := (recoveredStack1) item.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := (recoveredStack1) code.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            (recoveredStack0) add: (recoveredStack1).
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := [:block280e49ccArg1 | 
    | block280e49ccValue0 block280e49ccValue1 |
    block280e49ccValue0 := block280e49ccArg1.
    block280e49ccValue1 := (block280e49ccValue0) notNil.
    block280e49ccValue1
].
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack0 := (recoveredStack0) select: (recoveredStack1).
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x204142e0; bytecode file offset 0xd10bd8"
!SGFixMultipleCodeVariants methodsFor: 'recovered'!
restoreExternalCodeFromMultipleCCVariants: recoveredArg1 into: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredLocal6 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) value.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := [].
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := (recoveredStack1) getObjectIfUndefined: (recoveredStack2).
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := [:block280fb670Arg1 | 
    | block280fb670Value0 block280fb670Value1 block280fb670Value2 block280fb670Value3 block280fb670Value4 block280fb670Value5 block280fb670Value6 block280fb670Value7 |
    block280fb670Value0 := Association.
    block280fb670Value1 := block280fb670Arg1.
    block280fb670Value2 := (block280fb670Value1) key.
    block280fb670Value3 := block280fb670Arg1.
    block280fb670Value4 := (block280fb670Value3) value.
    block280fb670Value5 := [].
    block280fb670Value6 := (block280fb670Value4) getObjectIfUndefined: (block280fb670Value5).
    block280fb670Value7 := (block280fb670Value0) key: (block280fb670Value2) value: (block280fb670Value6).
    block280fb670Value7
].
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := (recoveredStack1) collect: (recoveredStack2).
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredLocal5 := recoveredStack1.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack2 := [:block280fb694Arg1 | 
    | block280fb694Value0 block280fb694Value1 block280fb694Value2 |
    block280fb694Value0 := block280fb694Arg1.
    block280fb694Value1 := (block280fb694Value0) value.
    block280fb694Value2 := (block280fb694Value1) hasExternalCode.
    block280fb694Value2
].
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack1 := (recoveredStack1) select: (recoveredStack2).
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack1 := (recoveredStack1) isEmpty.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 56] ifFalse: [recoveredPC := 58].
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack2 := [:block280fb6b8Arg1 | 
    | block280fb6b8Value0 block280fb6b8Value1 block280fb6b8Value2 block280fb6b8Value3 |
    block280fb6b8Value0 := block280fb6b8Arg1.
    block280fb6b8Value1 := (block280fb6b8Value0) value.
    block280fb6b8Value2 := (block280fb6b8Value1) hSource.
    block280fb6b8Value3 := (block280fb6b8Value2) notEmpty.
    block280fb6b8Value3
].
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack1 := (recoveredStack1) select: (recoveredStack2).
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack1 := (recoveredStack1) notEmpty.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 80] ifFalse: [recoveredPC := 85].
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack3 := recoveredLocal3.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            (recoveredStack1) restoreAllExternalHeadersVariantCCs: (recoveredStack2) into: (recoveredStack3).
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack1 := (recoveredStack1) notEmpty.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 92] ifFalse: [recoveredPC := 97].
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredStack2 := recoveredLocal4.
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack3 := recoveredLocal3.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            (recoveredStack1) restoreAllExternalCodeVariantCCs: (recoveredStack2) into: (recoveredStack3).
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x204e968c; bytecode file offset 0xde5f7c"
!SGFixMultipleCodeVariants methodsFor: 'recovered'!
duplicateMethodFor: recoveredArg1 withName: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) owner.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) copyMethod: (recoveredStack2).
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredLocal5 := recoveredStack1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack3 := (recoveredStack3) item.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack3 := (recoveredStack3) allMethodNames.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack2 := (recoveredStack2) uniqueStringFor: (recoveredStack3).
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            (recoveredStack1) methodName: (recoveredStack2).
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := (recoveredStack1) owner.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := (recoveredStack1) instanceMethods.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack1 := (recoveredStack1) indexOf: (recoveredStack2).
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack1 := (recoveredStack1) > (recoveredStack2).
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack3 := recoveredLocal2.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack2 := (recoveredStack2) < (recoveredStack3).
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack1 := (recoveredStack1) & (recoveredStack2).
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 74] ifFalse: [recoveredPC := 161].
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack1 := (recoveredStack1) species.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack1 := (recoveredStack1) new: (recoveredStack2).
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack2 := [:recoveredBlock90Arg1 :recoveredBlock90Arg2 | 
    | recoveredBlock90Stack0 recoveredBlock90Stack1 recoveredBlock90Stack2 recoveredBlock90Stack3 recoveredBlock90Stack4 recoveredBlock90PC recoveredBlock90Step recoveredBlock90Done recoveredBlock90Result |
    recoveredBlock90Stack0 := self.
    recoveredBlock90PC := 96.
    recoveredBlock90Done := false.
    [recoveredBlock90Done not] whileTrue: [
        recoveredBlock90Step := recoveredBlock90PC.
        recoveredBlock90Step = 96 ifTrue: [
            recoveredBlock90Stack1 := recoveredBlock90Arg2.
            recoveredBlock90PC := 97.
        ].
        recoveredBlock90Step = 97 ifTrue: [
            recoveredBlock90Stack2 := recoveredLocal3.
            recoveredBlock90PC := 100.
        ].
        recoveredBlock90Step = 100 ifTrue: [
            recoveredBlock90Stack1 := (recoveredBlock90Stack1) > (recoveredBlock90Stack2).
            recoveredBlock90PC := 101.
        ].
        recoveredBlock90Step = 101 ifTrue: [
            (recoveredBlock90Stack1) ifTrue: [recoveredBlock90PC := 104] ifFalse: [recoveredBlock90PC := 138].
        ].
        recoveredBlock90Step = 104 ifTrue: [
            recoveredBlock90Stack1 := recoveredBlock90Arg2.
            recoveredBlock90PC := 105.
        ].
        recoveredBlock90Step = 105 ifTrue: [
            recoveredBlock90Stack2 := recoveredLocal2.
            recoveredBlock90PC := 108.
        ].
        recoveredBlock90Step = 108 ifTrue: [
            (recoveredBlock90Stack1 ~~ recoveredBlock90Stack2) ifTrue: [recoveredBlock90PC := 126] ifFalse: [recoveredBlock90PC := 112].
        ].
        recoveredBlock90Step = 112 ifTrue: [
            recoveredBlock90Stack1 := recoveredLocal1.
            recoveredBlock90PC := 115.
        ].
        recoveredBlock90Step = 115 ifTrue: [
            recoveredBlock90Stack2 := recoveredLocal3.
            recoveredBlock90PC := 118.
        ].
        recoveredBlock90Step = 118 ifTrue: [
            recoveredBlock90Stack2 := (recoveredBlock90Stack2) + (1).
            recoveredBlock90PC := 119.
        ].
        recoveredBlock90Step = 119 ifTrue: [
            recoveredBlock90Stack3 := recoveredBlock90Arg1.
            recoveredBlock90PC := 120.
        ].
        recoveredBlock90Step = 120 ifTrue: [
            recoveredBlock90Stack1 := (recoveredBlock90Stack1) at: (recoveredBlock90Stack2) put: (recoveredBlock90Stack3).
            recoveredBlock90PC := 122.
        ].
        recoveredBlock90Step = 122 ifTrue: [
            recoveredBlock90PC := 134.
        ].
        recoveredBlock90Step = 126 ifTrue: [
            recoveredBlock90Stack1 := recoveredLocal1.
            recoveredBlock90PC := 129.
        ].
        recoveredBlock90Step = 129 ifTrue: [
            recoveredBlock90Stack2 := recoveredBlock90Arg2.
            recoveredBlock90PC := 130.
        ].
        recoveredBlock90Step = 130 ifTrue: [
            recoveredBlock90Stack2 := (recoveredBlock90Stack2) + (1).
            recoveredBlock90PC := 131.
        ].
        recoveredBlock90Step = 131 ifTrue: [
            recoveredBlock90Stack3 := recoveredBlock90Arg1.
            recoveredBlock90PC := 132.
        ].
        recoveredBlock90Step = 132 ifTrue: [
            recoveredBlock90Stack1 := (recoveredBlock90Stack1) at: (recoveredBlock90Stack2) put: (recoveredBlock90Stack3).
            recoveredBlock90PC := 134.
        ].
        recoveredBlock90Step = 134 ifTrue: [
            recoveredBlock90PC := 145.
        ].
        recoveredBlock90Step = 138 ifTrue: [
            recoveredBlock90Stack1 := recoveredLocal1.
            recoveredBlock90PC := 141.
        ].
        recoveredBlock90Step = 141 ifTrue: [
            recoveredBlock90Stack2 := recoveredBlock90Arg2.
            recoveredBlock90PC := 142.
        ].
        recoveredBlock90Step = 142 ifTrue: [
            recoveredBlock90Stack3 := recoveredBlock90Arg1.
            recoveredBlock90PC := 143.
        ].
        recoveredBlock90Step = 143 ifTrue: [
            recoveredBlock90Stack1 := (recoveredBlock90Stack1) at: (recoveredBlock90Stack2) put: (recoveredBlock90Stack3).
            recoveredBlock90PC := 145.
        ].
        recoveredBlock90Step = 145 ifTrue: [
            recoveredBlock90Result := recoveredBlock90Stack1.
            recoveredBlock90Done := true.
        ].
    ].
    recoveredBlock90Result
].
            recoveredPC := 146.
        ].
        recoveredStep = 146 ifTrue: [
            (recoveredStack1) doWithIndex: (recoveredStack2).
            recoveredPC := 148.
        ].
        recoveredStep = 148 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 151.
        ].
        recoveredStep = 151 ifTrue: [
            recoveredStack1 := (recoveredStack1) owner.
            recoveredPC := 152.
        ].
        recoveredStep = 152 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 155.
        ].
        recoveredStep = 155 ifTrue: [
            (recoveredStack1) instanceMethods: (recoveredStack2).
            recoveredPC := 157.
        ].
        recoveredStep = 157 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 158.
        ].
        recoveredStep = 158 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 161.
        ].
        recoveredStep = 161 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 164.
        ].
        recoveredStep = 164 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x204eb868; bytecode file offset 0xde8174"
!SGFixMultipleCodeVariants methodsFor: 'recovered'!
restoreSingleHeaderVariantCCs: recoveredArg1 into: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 recoveredValue21 recoveredValue22 recoveredValue23 recoveredValue24 recoveredValue25 recoveredValue26 recoveredValue27 recoveredValue28 recoveredValue29 recoveredValue30 recoveredValue31 recoveredValue32 recoveredValue33 recoveredValue34 recoveredValue35 recoveredValue36 recoveredValue37 recoveredValue38 recoveredValue39 recoveredValue40 recoveredValue41 recoveredValue42 recoveredValue43 recoveredValue44 recoveredValue45 recoveredValue46 |
    recoveredValue0 := WriteStream.
    recoveredValue1 := String.
    recoveredValue2 := (recoveredValue1) new.
    recoveredValue3 := (recoveredValue0) on: (recoveredValue2).
    recoveredLocal2 := recoveredValue3.
    recoveredValue4 := recoveredLocal2.
    recoveredValue5 := recoveredValue4.
    (recoveredValue5) cr.
    recoveredValue6 := recoveredValue4.
    (recoveredValue6) nextPutAll: ('#warning "Detected code Variants for header restored"').
    recoveredValue7 := recoveredValue4.
    (recoveredValue7) cr.
    recoveredValue8 := recoveredValue4.
    (recoveredValue8) cr.
    recoveredValue9 := recoveredValue4.
    (recoveredValue9) nextPutAll: ('//').
    recoveredValue10 := recoveredValue4.
    (recoveredValue10) cr.
    recoveredValue11 := recoveredValue4.
    (recoveredValue11) nextPutAll: ('// Automatically generated code by the Database Performance Utility (Check)').
    recoveredValue12 := recoveredValue4.
    (recoveredValue12) cr.
    recoveredValue13 := recoveredValue4.
    (recoveredValue13) nextPutAll: ('//').
    recoveredValue14 := recoveredValue4.
    (recoveredValue14) cr.
    recoveredValue15 := recoveredValue4.
    (recoveredValue15) nextPutAll: ('//').
    recoveredValue16 := recoveredValue4.
    (recoveredValue16) cr.
    recoveredValue17 := recoveredValue4.
    (recoveredValue17) nextPutAll: ('// Due to an error in a former ASCET version').
    recoveredValue18 := recoveredValue4.
    (recoveredValue18) cr.
    recoveredValue19 := recoveredValue4.
    (recoveredValue19) nextPutAll: ('// for each combination of the code optimization options').
    recoveredValue20 := recoveredValue4.
    (recoveredValue20) cr.
    recoveredValue21 := recoveredValue4.
    (recoveredValue21) nextPutAll: ('// for the direct access (one level / multiple level)').
    recoveredValue22 := recoveredValue4.
    (recoveredValue22) cr.
    recoveredValue23 := recoveredValue4.
    (recoveredValue23) nextPutAll: ('// a separate variant of the handwritten code was created.').
    recoveredValue24 := recoveredValue4.
    (recoveredValue24) cr.
    recoveredValue25 := recoveredValue4.
    (recoveredValue25) nextPutAll: ('//').
    recoveredValue26 := recoveredValue4.
    (recoveredValue26) cr.
    recoveredValue27 := recoveredValue4.
    (recoveredValue27) nextPutAll: ('// In the current case only one of the created variants has').
    recoveredValue28 := recoveredValue4.
    (recoveredValue28) cr.
    recoveredValue29 := recoveredValue4.
    (recoveredValue29) nextPutAll: ('// implemented text for this header. All other variants are empty.').
    recoveredValue30 := recoveredValue4.
    (recoveredValue30) cr.
    recoveredValue31 := recoveredValue4.
    (recoveredValue31) nextPutAll: ('// The code of the implemented header is recovered and listed here.').
    recoveredValue32 := recoveredValue4.
    (recoveredValue32) cr.
    recoveredValue33 := recoveredValue4.
    (recoveredValue33) nextPutAll: ('//').
    recoveredValue34 := recoveredValue4.
    (recoveredValue34) cr.
    recoveredValue35 := recoveredValue4.
    (recoveredValue35) nextPutAll: ('// Please check whether the restored code should be used or if').
    recoveredValue36 := recoveredValue4.
    (recoveredValue36) cr.
    recoveredValue37 := recoveredValue4.
    (recoveredValue37) nextPutAll: ('// this header should stay empty.').
    recoveredValue38 := recoveredValue4.
    (recoveredValue38) cr.
    (recoveredValue4) cr.
    recoveredValue39 := recoveredArg1.
    recoveredValue40 := (recoveredValue39) localHSource.
    recoveredLocal1 := recoveredValue40.
    recoveredValue41 := recoveredLocal2.
    recoveredValue42 := recoveredLocal1.
    (recoveredValue41) nextPutAll: (recoveredValue42).
    recoveredValue43 := recoveredArg2.
    recoveredValue44 := recoveredLocal2.
    recoveredValue45 := (recoveredValue44) contents.
    (recoveredValue43) localHSource: (recoveredValue45).
    recoveredValue46 := recoveredArg2.
    (recoveredValue46) setToBeCompiled.
    ^self
! !

"ASDBase.ic method 0x204fbc44; bytecode file offset 0xdf8554"
!SGFixMultipleCodeVariants methodsFor: 'recovered'!
restoreSingleCodeForMethod: recoveredArg1 variantCCs: recoveredArg2 into: recoveredArg3
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 recoveredValue21 recoveredValue22 recoveredValue23 recoveredValue24 recoveredValue25 recoveredValue26 recoveredValue27 recoveredValue28 recoveredValue29 recoveredValue30 recoveredValue31 recoveredValue32 recoveredValue33 recoveredValue34 recoveredValue35 recoveredValue36 recoveredValue37 recoveredValue38 recoveredValue39 recoveredValue40 recoveredValue41 recoveredValue42 recoveredValue43 recoveredValue44 recoveredValue45 recoveredValue46 recoveredValue47 recoveredValue48 recoveredValue49 recoveredValue50 |
    recoveredValue0 := WriteStream.
    recoveredValue1 := String.
    recoveredValue2 := (recoveredValue1) new.
    recoveredValue3 := (recoveredValue0) on: (recoveredValue2).
    recoveredLocal2 := recoveredValue3.
    recoveredValue4 := recoveredLocal2.
    recoveredValue5 := recoveredValue4.
    (recoveredValue5) cr.
    recoveredValue6 := recoveredValue4.
    (recoveredValue6) nextPutAll: ('#warning "Detected code Variants recovered"').
    recoveredValue7 := recoveredValue4.
    (recoveredValue7) cr.
    recoveredValue8 := recoveredValue4.
    (recoveredValue8) cr.
    recoveredValue9 := recoveredValue4.
    (recoveredValue9) nextPutAll: ('//').
    recoveredValue10 := recoveredValue4.
    (recoveredValue10) cr.
    recoveredValue11 := recoveredValue4.
    (recoveredValue11) nextPutAll: ('// Automatically generated code by the Database Performance Utility (Check)').
    recoveredValue12 := recoveredValue4.
    (recoveredValue12) cr.
    recoveredValue13 := recoveredValue4.
    (recoveredValue13) nextPutAll: ('//').
    recoveredValue14 := recoveredValue4.
    (recoveredValue14) cr.
    recoveredValue15 := recoveredValue4.
    (recoveredValue15) nextPutAll: ('//').
    recoveredValue16 := recoveredValue4.
    (recoveredValue16) cr.
    recoveredValue17 := recoveredValue4.
    (recoveredValue17) nextPutAll: ('// Due to an error in a former ASCET version').
    recoveredValue18 := recoveredValue4.
    (recoveredValue18) cr.
    recoveredValue19 := recoveredValue4.
    (recoveredValue19) nextPutAll: ('// for each combination of the code optimization options').
    recoveredValue20 := recoveredValue4.
    (recoveredValue20) cr.
    recoveredValue21 := recoveredValue4.
    (recoveredValue21) nextPutAll: ('// for the direct access (one level / multiple level)').
    recoveredValue22 := recoveredValue4.
    (recoveredValue22) cr.
    recoveredValue23 := recoveredValue4.
    (recoveredValue23) nextPutAll: ('// a separate variant of the handwritten code was created.').
    recoveredValue24 := recoveredValue4.
    (recoveredValue24) cr.
    recoveredValue25 := recoveredValue4.
    (recoveredValue25) nextPutAll: ('//').
    recoveredValue26 := recoveredValue4.
    (recoveredValue26) cr.
    recoveredValue27 := recoveredValue4.
    (recoveredValue27) nextPutAll: ('// In the current case only one of the created variants has').
    recoveredValue28 := recoveredValue4.
    (recoveredValue28) cr.
    recoveredValue29 := recoveredValue4.
    (recoveredValue29) nextPutAll: ('// implemented this method with code. All other variants are empty.').
    recoveredValue30 := recoveredValue4.
    (recoveredValue30) cr.
    recoveredValue31 := recoveredValue4.
    (recoveredValue31) nextPutAll: ('// The code of the implemented method is copied into this method body.').
    recoveredValue32 := recoveredValue4.
    (recoveredValue32) cr.
    recoveredValue33 := recoveredValue4.
    (recoveredValue33) nextPutAll: ('//').
    recoveredValue34 := recoveredValue4.
    (recoveredValue34) cr.
    recoveredValue35 := recoveredValue4.
    (recoveredValue35) nextPutAll: ('// Please check whether the restored code should be used or if').
    recoveredValue36 := recoveredValue4.
    (recoveredValue36) cr.
    recoveredValue37 := recoveredValue4.
    (recoveredValue37) nextPutAll: ('// this method should stay empty.').
    recoveredValue38 := recoveredValue4.
    (recoveredValue38) cr.
    (recoveredValue4) cr.
    recoveredValue39 := recoveredArg1.
    recoveredValue40 := (recoveredValue39) aliasName.
    recoveredLocal3 := recoveredValue40.
    recoveredValue41 := recoveredArg2.
    recoveredValue42 := recoveredLocal3.
    recoveredValue43 := (recoveredValue41) procSourceAt: (recoveredValue42).
    recoveredLocal1 := recoveredValue43.
    recoveredValue44 := recoveredLocal2.
    recoveredValue45 := recoveredLocal1.
    (recoveredValue44) nextPutAll: (recoveredValue45).
    recoveredValue46 := recoveredArg3.
    recoveredValue47 := recoveredLocal3.
    recoveredValue48 := recoveredLocal2.
    recoveredValue49 := (recoveredValue48) contents.
    (recoveredValue46) procSourceAt: (recoveredValue47) put: (recoveredValue49).
    recoveredValue50 := recoveredArg3.
    (recoveredValue50) setToBeCompiled.
    ^self
! !

"ASDBase.ic method 0x20545cc8; bytecode file offset 0xe425d8"
!SGFixMultipleCodeVariants methodsFor: 'recovered'!
restoreCodeFromMultipleCCVariants: recoveredArg1 into: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) value.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack2 := [].
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := (recoveredStack1) getObjectIfUndefined: (recoveredStack2).
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := [:block2810e838Arg1 | 
    | block2810e838Value0 block2810e838Value1 block2810e838Value2 block2810e838Value3 block2810e838Value4 block2810e838Value5 block2810e838Value6 block2810e838Value7 |
    block2810e838Value0 := Association.
    block2810e838Value1 := block2810e838Arg1.
    block2810e838Value2 := (block2810e838Value1) key.
    block2810e838Value3 := block2810e838Arg1.
    block2810e838Value4 := (block2810e838Value3) value.
    block2810e838Value5 := [].
    block2810e838Value6 := (block2810e838Value4) getObjectIfUndefined: (block2810e838Value5).
    block2810e838Value7 := (block2810e838Value0) key: (block2810e838Value2) value: (block2810e838Value6).
    block2810e838Value7
].
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := (recoveredStack1) collect: (recoveredStack2).
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack0 := (recoveredStack0) item.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack0 := (recoveredStack0) methods.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredLocal4 := recoveredStack0.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack1 := [:recoveredBlock50Arg1 | 
    | recoveredBlock50Local1 recoveredBlock50Local2 recoveredBlock50Stack0 recoveredBlock50Stack1 recoveredBlock50Stack2 recoveredBlock50Stack3 recoveredBlock50Stack4 recoveredBlock50Stack5 recoveredBlock50PC recoveredBlock50Step recoveredBlock50Done recoveredBlock50Result |
    recoveredBlock50Stack0 := self.
    recoveredBlock50PC := 56.
    recoveredBlock50Done := false.
    [recoveredBlock50Done not] whileTrue: [
        recoveredBlock50Step := recoveredBlock50PC.
        recoveredBlock50Step = 56 ifTrue: [
            recoveredBlock50Stack1 := recoveredBlock50Arg1.
            recoveredBlock50PC := 59.
        ].
        recoveredBlock50Step = 59 ifTrue: [
            recoveredBlock50Stack1 := (recoveredBlock50Stack1) aliasName.
            recoveredBlock50PC := 61.
        ].
        recoveredBlock50Step = 61 ifTrue: [
            recoveredBlock50Local1 := recoveredBlock50Stack1.
            recoveredBlock50PC := 64.
        ].
        recoveredBlock50Step = 64 ifTrue: [
            recoveredBlock50Stack1 := recoveredLocal3.
            recoveredBlock50PC := 67.
        ].
        recoveredBlock50Step = 67 ifTrue: [
            recoveredBlock50Stack2 := [:recoveredBlock50Block67Arg1 | 
    | recoveredBlock50Block67Value0 recoveredBlock50Block67Value1 recoveredBlock50Block67Value2 recoveredBlock50Block67Value3 recoveredBlock50Block67Value4 |
    recoveredBlock50Block67Value0 := recoveredBlock50Block67Arg1.
    recoveredBlock50Block67Value1 := (recoveredBlock50Block67Value0) value.
    recoveredBlock50Block67Value2 := recoveredBlock50Local1.
    recoveredBlock50Block67Value3 := (recoveredBlock50Block67Value1) procSourceAt: (recoveredBlock50Block67Value2).
    recoveredBlock50Block67Value4 := (recoveredBlock50Block67Value3) notEmpty.
    recoveredBlock50Block67Value4
].
            recoveredBlock50PC := 84.
        ].
        recoveredBlock50Step = 84 ifTrue: [
            recoveredBlock50Stack1 := (recoveredBlock50Stack1) select: (recoveredBlock50Stack2).
            recoveredBlock50PC := 86.
        ].
        recoveredBlock50Step = 86 ifTrue: [
            recoveredBlock50Local2 := recoveredBlock50Stack1.
            recoveredBlock50PC := 89.
        ].
        recoveredBlock50Step = 89 ifTrue: [
            recoveredBlock50Stack1 := recoveredBlock50Local2.
            recoveredBlock50PC := 92.
        ].
        recoveredBlock50Step = 92 ifTrue: [
            recoveredBlock50Stack1 := (recoveredBlock50Stack1) size.
            recoveredBlock50PC := 94.
        ].
        recoveredBlock50Step = 94 ifTrue: [
            recoveredBlock50Stack2 := 1.
            recoveredBlock50PC := 96.
        ].
        recoveredBlock50Step = 96 ifTrue: [
            recoveredBlock50Stack1 := (recoveredBlock50Stack1) > (recoveredBlock50Stack2).
            recoveredBlock50PC := 97.
        ].
        recoveredBlock50Step = 97 ifTrue: [
            (recoveredBlock50Stack1) ifTrue: [recoveredBlock50PC := 100] ifFalse: [recoveredBlock50PC := 116].
        ].
        recoveredBlock50Step = 100 ifTrue: [
            recoveredBlock50Stack1 := self.
            recoveredBlock50PC := 101.
        ].
        recoveredBlock50Step = 101 ifTrue: [
            recoveredBlock50Stack2 := recoveredBlock50Arg1.
            recoveredBlock50PC := 104.
        ].
        recoveredBlock50Step = 104 ifTrue: [
            recoveredBlock50Stack3 := recoveredLocal3.
            recoveredBlock50PC := 107.
        ].
        recoveredBlock50Step = 107 ifTrue: [
            recoveredBlock50Stack4 := recoveredLocal2.
            recoveredBlock50PC := 110.
        ].
        recoveredBlock50Step = 110 ifTrue: [
            recoveredBlock50Stack1 := (recoveredBlock50Stack1) restoreAllCodeForMethod: (recoveredBlock50Stack2) variantCCs: (recoveredBlock50Stack3) into: (recoveredBlock50Stack4).
            recoveredBlock50PC := 113.
        ].
        recoveredBlock50Step = 113 ifTrue: [
            recoveredBlock50PC := 145.
        ].
        recoveredBlock50Step = 116 ifTrue: [
            recoveredBlock50Stack1 := nil.
            recoveredBlock50PC := 117.
        ].
        recoveredBlock50Step = 117 ifTrue: [
            recoveredBlock50Stack2 := recoveredBlock50Local2.
            recoveredBlock50PC := 120.
        ].
        recoveredBlock50Step = 120 ifTrue: [
            recoveredBlock50Stack2 := (recoveredBlock50Stack2) size.
            recoveredBlock50PC := 122.
        ].
        recoveredBlock50Step = 122 ifTrue: [
            recoveredBlock50Stack3 := 1.
            recoveredBlock50PC := 124.
        ].
        recoveredBlock50Step = 124 ifTrue: [
            (recoveredBlock50Stack2 ~~ recoveredBlock50Stack3) ifTrue: [recoveredBlock50PC := 145] ifFalse: [recoveredBlock50PC := 128].
        ].
        recoveredBlock50Step = 128 ifTrue: [
            recoveredBlock50PC := 129.
        ].
        recoveredBlock50Step = 129 ifTrue: [
            recoveredBlock50Stack1 := self.
            recoveredBlock50PC := 130.
        ].
        recoveredBlock50Step = 130 ifTrue: [
            recoveredBlock50Stack2 := recoveredBlock50Arg1.
            recoveredBlock50PC := 133.
        ].
        recoveredBlock50Step = 133 ifTrue: [
            recoveredBlock50Stack3 := recoveredBlock50Local2.
            recoveredBlock50PC := 136.
        ].
        recoveredBlock50Step = 136 ifTrue: [
            recoveredBlock50Stack3 := (recoveredBlock50Stack3) first.
            recoveredBlock50PC := 138.
        ].
        recoveredBlock50Step = 138 ifTrue: [
            recoveredBlock50Stack3 := (recoveredBlock50Stack3) value.
            recoveredBlock50PC := 139.
        ].
        recoveredBlock50Step = 139 ifTrue: [
            recoveredBlock50Stack4 := recoveredLocal2.
            recoveredBlock50PC := 142.
        ].
        recoveredBlock50Step = 142 ifTrue: [
            recoveredBlock50Stack1 := (recoveredBlock50Stack1) restoreSingleCodeForMethod: (recoveredBlock50Stack2) variantCCs: (recoveredBlock50Stack3) into: (recoveredBlock50Stack4).
            recoveredBlock50PC := 145.
        ].
        recoveredBlock50Step = 145 ifTrue: [
            recoveredBlock50Result := recoveredBlock50Stack1.
            recoveredBlock50Done := true.
        ].
    ].
    recoveredBlock50Result
].
            recoveredPC := 146.
        ].
        recoveredStep = 146 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 148.
        ].
        recoveredStep = 148 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 151.
        ].
        recoveredStep = 151 ifTrue: [
            recoveredStack1 := [:block2810e85cArg1 | 
    | block2810e85cValue0 block2810e85cValue1 block2810e85cValue2 block2810e85cValue3 |
    block2810e85cValue0 := block2810e85cArg1.
    block2810e85cValue1 := (block2810e85cValue0) value.
    block2810e85cValue2 := (block2810e85cValue1) localHSource.
    block2810e85cValue3 := (block2810e85cValue2) notEmpty.
    block2810e85cValue3
].
            recoveredPC := 153.
        ].
        recoveredStep = 153 ifTrue: [
            recoveredPC := 163.
        ].
        recoveredStep = 163 ifTrue: [
            recoveredStack0 := (recoveredStack0) select: (recoveredStack1).
            recoveredPC := 165.
        ].
        recoveredStep = 165 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 168.
        ].
        recoveredStep = 168 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 171.
        ].
        recoveredStep = 171 ifTrue: [
            recoveredStack0 := (recoveredStack0) size.
            recoveredPC := 173.
        ].
        recoveredStep = 173 ifTrue: [
            recoveredStack1 := 1.
            recoveredPC := 175.
        ].
        recoveredStep = 175 ifTrue: [
            recoveredStack0 := (recoveredStack0) > (recoveredStack1).
            recoveredPC := 176.
        ].
        recoveredStep = 176 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 180] ifFalse: [recoveredPC := 192].
        ].
        recoveredStep = 180 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 181.
        ].
        recoveredStep = 181 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 184.
        ].
        recoveredStep = 184 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 187.
        ].
        recoveredStep = 187 ifTrue: [
            (recoveredStack0) restoreAllHeadersVariantCCs: (recoveredStack1) into: (recoveredStack2).
            recoveredPC := 189.
        ].
        recoveredStep = 189 ifTrue: [
            recoveredPC := 214.
        ].
        recoveredStep = 192 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 195.
        ].
        recoveredStep = 195 ifTrue: [
            recoveredStack0 := (recoveredStack0) size.
            recoveredPC := 197.
        ].
        recoveredStep = 197 ifTrue: [
            recoveredStack1 := 1.
            recoveredPC := 199.
        ].
        recoveredStep = 199 ifTrue: [
            (recoveredStack0 ~~ recoveredStack1) ifTrue: [recoveredPC := 214] ifFalse: [recoveredPC := 202].
        ].
        recoveredStep = 202 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 203.
        ].
        recoveredStep = 203 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 206.
        ].
        recoveredStep = 206 ifTrue: [
            recoveredStack1 := (recoveredStack1) first.
            recoveredPC := 208.
        ].
        recoveredStep = 208 ifTrue: [
            recoveredStack1 := (recoveredStack1) value.
            recoveredPC := 209.
        ].
        recoveredStep = 209 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 212.
        ].
        recoveredStep = 212 ifTrue: [
            (recoveredStack0) restoreSingleHeaderVariantCCs: (recoveredStack1) into: (recoveredStack2).
            recoveredPC := 214.
        ].
        recoveredStep = 214 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 215.
        ].
        recoveredStep = 215 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2054f0f4; bytecode file offset 0xe4ba18"
!SGFixMultipleCodeVariants methodsFor: 'recovered'!
restoreAllExternalHeadersVariantCCs: recoveredArg1 into: recoveredArg2
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 recoveredValue21 recoveredValue22 recoveredValue23 recoveredValue24 recoveredValue25 recoveredValue26 recoveredValue27 recoveredValue28 recoveredValue29 recoveredValue30 recoveredValue31 recoveredValue32 recoveredValue33 recoveredValue34 recoveredValue35 |
    recoveredValue0 := WriteStream.
    recoveredValue1 := String.
    recoveredValue2 := (recoveredValue1) new.
    recoveredValue3 := (recoveredValue0) on: (recoveredValue2).
    recoveredLocal1 := recoveredValue3.
    recoveredValue4 := recoveredLocal1.
    recoveredValue5 := recoveredValue4.
    (recoveredValue5) cr.
    recoveredValue6 := recoveredValue4.
    (recoveredValue6) nextPutAll: ('#error "Detected code Variants for header restored."').
    recoveredValue7 := recoveredValue4.
    (recoveredValue7) cr.
    recoveredValue8 := recoveredValue4.
    (recoveredValue8) cr.
    recoveredValue9 := recoveredValue4.
    (recoveredValue9) nextPutAll: ('//').
    recoveredValue10 := recoveredValue4.
    (recoveredValue10) cr.
    recoveredValue11 := recoveredValue4.
    (recoveredValue11) nextPutAll: ('// Automatically generated code by the Database Performance Utility (Check)').
    recoveredValue12 := recoveredValue4.
    (recoveredValue12) cr.
    recoveredValue13 := recoveredValue4.
    (recoveredValue13) nextPutAll: ('//').
    recoveredValue14 := recoveredValue4.
    (recoveredValue14) cr.
    recoveredValue15 := recoveredValue4.
    (recoveredValue15) nextPutAll: ('//').
    recoveredValue16 := recoveredValue4.
    (recoveredValue16) cr.
    recoveredValue17 := recoveredValue4.
    (recoveredValue17) nextPutAll: ('// Due to an error in a former ASCET version').
    recoveredValue18 := recoveredValue4.
    (recoveredValue18) cr.
    recoveredValue19 := recoveredValue4.
    (recoveredValue19) nextPutAll: ('// for each combination of the code optimization options').
    recoveredValue20 := recoveredValue4.
    (recoveredValue20) cr.
    recoveredValue21 := recoveredValue4.
    (recoveredValue21) nextPutAll: ('// for the direct access (one level / multiple level)').
    recoveredValue22 := recoveredValue4.
    (recoveredValue22) cr.
    recoveredValue23 := recoveredValue4.
    (recoveredValue23) nextPutAll: ('// a separate variant of the handwritten code was created.').
    recoveredValue24 := recoveredValue4.
    (recoveredValue24) cr.
    recoveredValue25 := recoveredValue4.
    (recoveredValue25) nextPutAll: ('//').
    recoveredValue26 := recoveredValue4.
    (recoveredValue26) cr.
    recoveredValue27 := recoveredValue4.
    (recoveredValue27) nextPutAll: ('// All of these versions are now recovered and listed here.').
    recoveredValue28 := recoveredValue4.
    (recoveredValue28) cr.
    recoveredValue29 := recoveredValue4.
    (recoveredValue29) nextPutAll: ('// Please rework this file by deleting the unwanted variant(s).').
    recoveredValue30 := recoveredValue4.
    (recoveredValue30) cr.
    (recoveredValue4) cr.
    recoveredValue31 := recoveredArg1.
    recoveredValue32 := [:recoveredBlock123Arg1 | 
    | recoveredBlock123Local1 recoveredBlock123Local2 recoveredBlock123Stack0 recoveredBlock123Stack1 recoveredBlock123Stack2 recoveredBlock123Stack3 recoveredBlock123Stack4 recoveredBlock123PC recoveredBlock123Step recoveredBlock123Done recoveredBlock123Result |
    recoveredBlock123Stack0 := self.
    recoveredBlock123PC := 130.
    recoveredBlock123Done := false.
    [recoveredBlock123Done not] whileTrue: [
        recoveredBlock123Step := recoveredBlock123PC.
        recoveredBlock123Step = 130 ifTrue: [
            recoveredBlock123Stack1 := recoveredBlock123Arg1.
            recoveredBlock123PC := 131.
        ].
        recoveredBlock123Step = 131 ifTrue: [
            recoveredBlock123Stack1 := (recoveredBlock123Stack1) value.
            recoveredBlock123PC := 133.
        ].
        recoveredBlock123Step = 133 ifTrue: [
            recoveredBlock123Stack1 := (recoveredBlock123Stack1) hSource.
            recoveredBlock123PC := 135.
        ].
        recoveredBlock123Step = 135 ifTrue: [
            recoveredBlock123Local2 := recoveredBlock123Stack1.
            recoveredBlock123PC := 136.
        ].
        recoveredBlock123Step = 136 ifTrue: [
            recoveredBlock123Stack1 := nil.
            recoveredBlock123PC := 137.
        ].
        recoveredBlock123Step = 137 ifTrue: [
            recoveredBlock123Stack2 := recoveredBlock123Local2.
            recoveredBlock123PC := 138.
        ].
        recoveredBlock123Step = 138 ifTrue: [
            recoveredBlock123Stack2 := (recoveredBlock123Stack2) notEmpty.
            recoveredBlock123PC := 140.
        ].
        recoveredBlock123Step = 140 ifTrue: [
            (recoveredBlock123Stack2) ifTrue: [recoveredBlock123PC := 144] ifFalse: [recoveredBlock123PC := 209].
        ].
        recoveredBlock123Step = 144 ifTrue: [
            recoveredBlock123PC := 145.
        ].
        recoveredBlock123Step = 145 ifTrue: [
            recoveredBlock123Stack1 := recoveredLocal1.
            recoveredBlock123PC := 148.
        ].
        recoveredBlock123Step = 148 ifTrue: [
            recoveredBlock123Stack2 := recoveredBlock123Stack1.
            recoveredBlock123PC := 149.
        ].
        recoveredBlock123Step = 149 ifTrue: [
            (recoveredBlock123Stack2) cr.
            recoveredBlock123Stack2 := recoveredBlock123Stack1.
            recoveredBlock123PC := 152.
        ].
        recoveredBlock123Step = 152 ifTrue: [
            recoveredBlock123Stack3 := '// Below you will find the header variant for the code optimization options:'.
            recoveredBlock123PC := 154.
        ].
        recoveredBlock123Step = 154 ifTrue: [
            (recoveredBlock123Stack2) nextPutAll: (recoveredBlock123Stack3).
            recoveredBlock123Stack2 := recoveredBlock123Stack1.
            recoveredBlock123PC := 157.
        ].
        recoveredBlock123Step = 157 ifTrue: [
            (recoveredBlock123Stack2) cr.
            recoveredBlock123Stack2 := recoveredBlock123Stack1.
            recoveredBlock123PC := 160.
        ].
        recoveredBlock123Step = 160 ifTrue: [
            recoveredBlock123Stack3 := '// '.
            recoveredBlock123PC := 162.
        ].
        recoveredBlock123Step = 162 ifTrue: [
            (recoveredBlock123Stack2) nextPutAll: (recoveredBlock123Stack3).
            recoveredBlock123Stack2 := recoveredBlock123Stack1.
            recoveredBlock123PC := 165.
        ].
        recoveredBlock123Step = 165 ifTrue: [
            recoveredBlock123Stack3 := recoveredBlock123Arg1.
            recoveredBlock123PC := 166.
        ].
        recoveredBlock123Step = 166 ifTrue: [
            recoveredBlock123Stack3 := (recoveredBlock123Stack3) key.
            recoveredBlock123PC := 168.
        ].
        recoveredBlock123Step = 168 ifTrue: [
            recoveredBlock123Stack3 := (recoveredBlock123Stack3) directAccessOptionsCommentForFix.
            recoveredBlock123PC := 170.
        ].
        recoveredBlock123Step = 170 ifTrue: [
            (recoveredBlock123Stack2) nextPutAll: (recoveredBlock123Stack3).
            recoveredBlock123Stack2 := recoveredBlock123Stack1.
            recoveredBlock123PC := 173.
        ].
        recoveredBlock123Step = 173 ifTrue: [
            (recoveredBlock123Stack2) cr.
            recoveredBlock123Stack2 := recoveredBlock123Stack1.
            recoveredBlock123PC := 176.
        ].
        recoveredBlock123Step = 176 ifTrue: [
            recoveredBlock123Stack3 := '//'.
            recoveredBlock123PC := 178.
        ].
        recoveredBlock123Step = 178 ifTrue: [
            (recoveredBlock123Stack2) nextPutAll: (recoveredBlock123Stack3).
            recoveredBlock123PC := 180.
        ].
        recoveredBlock123Step = 180 ifTrue: [
            (recoveredBlock123Stack1) cr.
            recoveredBlock123PC := 182.
        ].
        recoveredBlock123Step = 182 ifTrue: [
            recoveredBlock123Stack1 := ReadStream.
            recoveredBlock123PC := 184.
        ].
        recoveredBlock123Step = 184 ifTrue: [
            recoveredBlock123Stack2 := recoveredBlock123Local2.
            recoveredBlock123PC := 185.
        ].
        recoveredBlock123Step = 185 ifTrue: [
            recoveredBlock123Stack1 := (recoveredBlock123Stack1) on: (recoveredBlock123Stack2).
            recoveredBlock123PC := 186.
        ].
        recoveredBlock123Step = 186 ifTrue: [
            recoveredBlock123Local1 := recoveredBlock123Stack1.
            recoveredBlock123PC := 187.
        ].
        recoveredBlock123Step = 187 ifTrue: [
            recoveredBlock123PC := 201.
        ].
        recoveredBlock123Step = 190 ifTrue: [
            recoveredBlock123Stack1 := recoveredLocal1.
            recoveredBlock123PC := 193.
        ].
        recoveredBlock123Step = 193 ifTrue: [
            recoveredBlock123Stack2 := recoveredBlock123Stack1.
            recoveredBlock123PC := 194.
        ].
        recoveredBlock123Step = 194 ifTrue: [
            recoveredBlock123Stack3 := recoveredBlock123Local1.
            recoveredBlock123PC := 195.
        ].
        recoveredBlock123Step = 195 ifTrue: [
            recoveredBlock123Stack3 := (recoveredBlock123Stack3) nextLine.
            recoveredBlock123PC := 197.
        ].
        recoveredBlock123Step = 197 ifTrue: [
            (recoveredBlock123Stack2) nextPutAll: (recoveredBlock123Stack3).
            recoveredBlock123PC := 199.
        ].
        recoveredBlock123Step = 199 ifTrue: [
            (recoveredBlock123Stack1) cr.
            recoveredBlock123PC := 201.
        ].
        recoveredBlock123Step = 201 ifTrue: [
            recoveredBlock123Stack1 := recoveredBlock123Local1.
            recoveredBlock123PC := 202.
        ].
        recoveredBlock123Step = 202 ifTrue: [
            recoveredBlock123Stack1 := (recoveredBlock123Stack1) atEnd.
            recoveredBlock123PC := 204.
        ].
        recoveredBlock123Step = 204 ifTrue: [
            (recoveredBlock123Stack1) ifTrue: [recoveredBlock123PC := 206] ifFalse: [recoveredBlock123PC := 190].
        ].
        recoveredBlock123Step = 206 ifTrue: [
            recoveredBlock123Stack1 := nil.
            recoveredBlock123PC := 207.
        ].
        recoveredBlock123Step = 207 ifTrue: [
            recoveredBlock123Stack2 := nil.
            recoveredBlock123PC := 208.
        ].
        recoveredBlock123Step = 208 ifTrue: [
            recoveredBlock123Local1 := recoveredBlock123Stack2.
            recoveredBlock123PC := 209.
        ].
        recoveredBlock123Step = 209 ifTrue: [
            recoveredBlock123Result := recoveredBlock123Stack1.
            recoveredBlock123Done := true.
        ].
    ].
    recoveredBlock123Result
].
    (recoveredValue31) do: (recoveredValue32).
    recoveredValue33 := recoveredArg2.
    recoveredValue34 := recoveredLocal1.
    recoveredValue35 := (recoveredValue34) contents.
    (recoveredValue33) hSource: (recoveredValue35).
    ^self
! !

"ASDBase.ic method 0x205573c4; bytecode file offset 0xe53cec"
!SGFixMultipleCodeVariants methodsFor: 'recovered'!
restoreAllHeadersVariantCCs: recoveredArg1 into: recoveredArg2
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 recoveredValue21 recoveredValue22 recoveredValue23 recoveredValue24 recoveredValue25 recoveredValue26 recoveredValue27 recoveredValue28 recoveredValue29 recoveredValue30 recoveredValue31 recoveredValue32 recoveredValue33 recoveredValue34 recoveredValue35 recoveredValue36 |
    recoveredValue0 := WriteStream.
    recoveredValue1 := String.
    recoveredValue2 := (recoveredValue1) new.
    recoveredValue3 := (recoveredValue0) on: (recoveredValue2).
    recoveredLocal1 := recoveredValue3.
    recoveredValue4 := recoveredLocal1.
    recoveredValue5 := recoveredValue4.
    (recoveredValue5) cr.
    recoveredValue6 := recoveredValue4.
    (recoveredValue6) nextPutAll: ('#error "Detected code Variants for header restored."').
    recoveredValue7 := recoveredValue4.
    (recoveredValue7) cr.
    recoveredValue8 := recoveredValue4.
    (recoveredValue8) cr.
    recoveredValue9 := recoveredValue4.
    (recoveredValue9) nextPutAll: ('//').
    recoveredValue10 := recoveredValue4.
    (recoveredValue10) cr.
    recoveredValue11 := recoveredValue4.
    (recoveredValue11) nextPutAll: ('// Automatically generated code by the Database Performance Utility (Check)').
    recoveredValue12 := recoveredValue4.
    (recoveredValue12) cr.
    recoveredValue13 := recoveredValue4.
    (recoveredValue13) nextPutAll: ('//').
    recoveredValue14 := recoveredValue4.
    (recoveredValue14) cr.
    recoveredValue15 := recoveredValue4.
    (recoveredValue15) nextPutAll: ('//').
    recoveredValue16 := recoveredValue4.
    (recoveredValue16) cr.
    recoveredValue17 := recoveredValue4.
    (recoveredValue17) nextPutAll: ('// Due to an error in a former ASCET version').
    recoveredValue18 := recoveredValue4.
    (recoveredValue18) cr.
    recoveredValue19 := recoveredValue4.
    (recoveredValue19) nextPutAll: ('// for each combination of the code optimization options').
    recoveredValue20 := recoveredValue4.
    (recoveredValue20) cr.
    recoveredValue21 := recoveredValue4.
    (recoveredValue21) nextPutAll: ('// for the direct access (one level / multiple level)').
    recoveredValue22 := recoveredValue4.
    (recoveredValue22) cr.
    recoveredValue23 := recoveredValue4.
    (recoveredValue23) nextPutAll: ('// a separate variant of the handwritten code was created.').
    recoveredValue24 := recoveredValue4.
    (recoveredValue24) cr.
    recoveredValue25 := recoveredValue4.
    (recoveredValue25) nextPutAll: ('//').
    recoveredValue26 := recoveredValue4.
    (recoveredValue26) cr.
    recoveredValue27 := recoveredValue4.
    (recoveredValue27) nextPutAll: ('// All of these versions are now recovered and listed here.').
    recoveredValue28 := recoveredValue4.
    (recoveredValue28) cr.
    recoveredValue29 := recoveredValue4.
    (recoveredValue29) nextPutAll: ('// Please rework this file by deleting the unwanted variant(s).').
    recoveredValue30 := recoveredValue4.
    (recoveredValue30) cr.
    (recoveredValue4) cr.
    recoveredValue31 := recoveredArg1.
    recoveredValue32 := [:recoveredBlock123Arg1 | 
    | recoveredBlock123Local1 recoveredBlock123Local2 recoveredBlock123Stack0 recoveredBlock123Stack1 recoveredBlock123Stack2 recoveredBlock123Stack3 recoveredBlock123Stack4 recoveredBlock123PC recoveredBlock123Step recoveredBlock123Done recoveredBlock123Result |
    recoveredBlock123Stack0 := self.
    recoveredBlock123PC := 130.
    recoveredBlock123Done := false.
    [recoveredBlock123Done not] whileTrue: [
        recoveredBlock123Step := recoveredBlock123PC.
        recoveredBlock123Step = 130 ifTrue: [
            recoveredBlock123Stack1 := recoveredBlock123Arg1.
            recoveredBlock123PC := 131.
        ].
        recoveredBlock123Step = 131 ifTrue: [
            recoveredBlock123Stack1 := (recoveredBlock123Stack1) value.
            recoveredBlock123PC := 133.
        ].
        recoveredBlock123Step = 133 ifTrue: [
            recoveredBlock123Stack1 := (recoveredBlock123Stack1) localHSource.
            recoveredBlock123PC := 135.
        ].
        recoveredBlock123Step = 135 ifTrue: [
            recoveredBlock123Local2 := recoveredBlock123Stack1.
            recoveredBlock123PC := 136.
        ].
        recoveredBlock123Step = 136 ifTrue: [
            recoveredBlock123Stack1 := nil.
            recoveredBlock123PC := 137.
        ].
        recoveredBlock123Step = 137 ifTrue: [
            recoveredBlock123Stack2 := recoveredBlock123Local2.
            recoveredBlock123PC := 138.
        ].
        recoveredBlock123Step = 138 ifTrue: [
            recoveredBlock123Stack2 := (recoveredBlock123Stack2) notEmpty.
            recoveredBlock123PC := 140.
        ].
        recoveredBlock123Step = 140 ifTrue: [
            (recoveredBlock123Stack2) ifTrue: [recoveredBlock123PC := 144] ifFalse: [recoveredBlock123PC := 209].
        ].
        recoveredBlock123Step = 144 ifTrue: [
            recoveredBlock123PC := 145.
        ].
        recoveredBlock123Step = 145 ifTrue: [
            recoveredBlock123Stack1 := recoveredLocal1.
            recoveredBlock123PC := 148.
        ].
        recoveredBlock123Step = 148 ifTrue: [
            recoveredBlock123Stack2 := recoveredBlock123Stack1.
            recoveredBlock123PC := 149.
        ].
        recoveredBlock123Step = 149 ifTrue: [
            (recoveredBlock123Stack2) cr.
            recoveredBlock123Stack2 := recoveredBlock123Stack1.
            recoveredBlock123PC := 152.
        ].
        recoveredBlock123Step = 152 ifTrue: [
            recoveredBlock123Stack3 := '// Below you will find the header variant for the code optimization options:'.
            recoveredBlock123PC := 154.
        ].
        recoveredBlock123Step = 154 ifTrue: [
            (recoveredBlock123Stack2) nextPutAll: (recoveredBlock123Stack3).
            recoveredBlock123Stack2 := recoveredBlock123Stack1.
            recoveredBlock123PC := 157.
        ].
        recoveredBlock123Step = 157 ifTrue: [
            (recoveredBlock123Stack2) cr.
            recoveredBlock123Stack2 := recoveredBlock123Stack1.
            recoveredBlock123PC := 160.
        ].
        recoveredBlock123Step = 160 ifTrue: [
            recoveredBlock123Stack3 := '// '.
            recoveredBlock123PC := 162.
        ].
        recoveredBlock123Step = 162 ifTrue: [
            (recoveredBlock123Stack2) nextPutAll: (recoveredBlock123Stack3).
            recoveredBlock123Stack2 := recoveredBlock123Stack1.
            recoveredBlock123PC := 165.
        ].
        recoveredBlock123Step = 165 ifTrue: [
            recoveredBlock123Stack3 := recoveredBlock123Arg1.
            recoveredBlock123PC := 166.
        ].
        recoveredBlock123Step = 166 ifTrue: [
            recoveredBlock123Stack3 := (recoveredBlock123Stack3) key.
            recoveredBlock123PC := 168.
        ].
        recoveredBlock123Step = 168 ifTrue: [
            recoveredBlock123Stack3 := (recoveredBlock123Stack3) directAccessOptionsCommentForFix.
            recoveredBlock123PC := 170.
        ].
        recoveredBlock123Step = 170 ifTrue: [
            (recoveredBlock123Stack2) nextPutAll: (recoveredBlock123Stack3).
            recoveredBlock123Stack2 := recoveredBlock123Stack1.
            recoveredBlock123PC := 173.
        ].
        recoveredBlock123Step = 173 ifTrue: [
            (recoveredBlock123Stack2) cr.
            recoveredBlock123Stack2 := recoveredBlock123Stack1.
            recoveredBlock123PC := 176.
        ].
        recoveredBlock123Step = 176 ifTrue: [
            recoveredBlock123Stack3 := '//'.
            recoveredBlock123PC := 178.
        ].
        recoveredBlock123Step = 178 ifTrue: [
            (recoveredBlock123Stack2) nextPutAll: (recoveredBlock123Stack3).
            recoveredBlock123PC := 180.
        ].
        recoveredBlock123Step = 180 ifTrue: [
            (recoveredBlock123Stack1) cr.
            recoveredBlock123PC := 182.
        ].
        recoveredBlock123Step = 182 ifTrue: [
            recoveredBlock123Stack1 := ReadStream.
            recoveredBlock123PC := 184.
        ].
        recoveredBlock123Step = 184 ifTrue: [
            recoveredBlock123Stack2 := recoveredBlock123Local2.
            recoveredBlock123PC := 185.
        ].
        recoveredBlock123Step = 185 ifTrue: [
            recoveredBlock123Stack1 := (recoveredBlock123Stack1) on: (recoveredBlock123Stack2).
            recoveredBlock123PC := 186.
        ].
        recoveredBlock123Step = 186 ifTrue: [
            recoveredBlock123Local1 := recoveredBlock123Stack1.
            recoveredBlock123PC := 187.
        ].
        recoveredBlock123Step = 187 ifTrue: [
            recoveredBlock123PC := 201.
        ].
        recoveredBlock123Step = 190 ifTrue: [
            recoveredBlock123Stack1 := recoveredLocal1.
            recoveredBlock123PC := 193.
        ].
        recoveredBlock123Step = 193 ifTrue: [
            recoveredBlock123Stack2 := recoveredBlock123Stack1.
            recoveredBlock123PC := 194.
        ].
        recoveredBlock123Step = 194 ifTrue: [
            recoveredBlock123Stack3 := recoveredBlock123Local1.
            recoveredBlock123PC := 195.
        ].
        recoveredBlock123Step = 195 ifTrue: [
            recoveredBlock123Stack3 := (recoveredBlock123Stack3) nextLine.
            recoveredBlock123PC := 197.
        ].
        recoveredBlock123Step = 197 ifTrue: [
            (recoveredBlock123Stack2) nextPutAll: (recoveredBlock123Stack3).
            recoveredBlock123PC := 199.
        ].
        recoveredBlock123Step = 199 ifTrue: [
            (recoveredBlock123Stack1) cr.
            recoveredBlock123PC := 201.
        ].
        recoveredBlock123Step = 201 ifTrue: [
            recoveredBlock123Stack1 := recoveredBlock123Local1.
            recoveredBlock123PC := 202.
        ].
        recoveredBlock123Step = 202 ifTrue: [
            recoveredBlock123Stack1 := (recoveredBlock123Stack1) atEnd.
            recoveredBlock123PC := 204.
        ].
        recoveredBlock123Step = 204 ifTrue: [
            (recoveredBlock123Stack1) ifTrue: [recoveredBlock123PC := 206] ifFalse: [recoveredBlock123PC := 190].
        ].
        recoveredBlock123Step = 206 ifTrue: [
            recoveredBlock123Stack1 := nil.
            recoveredBlock123PC := 207.
        ].
        recoveredBlock123Step = 207 ifTrue: [
            recoveredBlock123Stack2 := nil.
            recoveredBlock123PC := 208.
        ].
        recoveredBlock123Step = 208 ifTrue: [
            recoveredBlock123Local1 := recoveredBlock123Stack2.
            recoveredBlock123PC := 209.
        ].
        recoveredBlock123Step = 209 ifTrue: [
            recoveredBlock123Result := recoveredBlock123Stack1.
            recoveredBlock123Done := true.
        ].
    ].
    recoveredBlock123Result
].
    (recoveredValue31) do: (recoveredValue32).
    recoveredValue33 := recoveredArg2.
    recoveredValue34 := recoveredLocal1.
    recoveredValue35 := (recoveredValue34) contents.
    (recoveredValue33) localHSource: (recoveredValue35).
    recoveredValue36 := recoveredArg2.
    (recoveredValue36) setToBeCompiled.
    ^self
! !

"ASDBase.ic method 0x2056c3e4; bytecode file offset 0xe68d20"
!SGFixMultipleCodeVariants methodsFor: 'recovered'!
fixMultipleCodeVariantIn: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) external.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) asOrderedCollection.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack2 := [:block2811170cArg1 | 
    | block2811170cValue0 block2811170cValue1 block2811170cValue2 |
    block2811170cValue0 := block2811170cArg1.
    block2811170cValue1 := (block2811170cValue0) value.
    block2811170cValue2 := (block2811170cValue1) existsOrCached.
    block2811170cValue2
].
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := (recoveredStack1) select: (recoveredStack2).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredLocal5 := recoveredStack1.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack2 := [:block28111730Arg1 | 
    | block28111730Value0 block28111730Value1 |
    block28111730Value0 := block28111730Arg1.
    block28111730Value1 := (block28111730Value0) key.
    block28111730Value1
].
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := (recoveredStack1) collect: (recoveredStack2).
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredPC := 234.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack1 := (recoveredStack1) first.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack1 := (recoveredStack1) searchForMultipleExternalCCEntries: (recoveredStack2).
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack2 := 1.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack1 := (recoveredStack1) > (recoveredStack2).
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 74] ifFalse: [recoveredPC := 203].
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack1 := (recoveredStack1) monitor.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack3 := '!!!!!! Component named: '.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            (recoveredStack2) addText: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack3 := (recoveredStack3) item.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack3 := (recoveredStack3) buildFolderPathNameIncludesOwnLabel.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            (recoveredStack2) addTextInSameLine: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredStack3 := ' has '.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredStack4 := recoveredLocal2.
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack4 := (recoveredStack4) size.
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack4 := (recoveredStack4) printString.
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack3 := (recoveredStack3) , (recoveredStack4).
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            recoveredStack4 := ' code variants for '.
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            recoveredStack3 := (recoveredStack3) , (recoveredStack4).
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            (recoveredStack2) addTextInSameLine: (recoveredStack3).
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            recoveredStack2 := ' key '.
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            recoveredStack3 := recoveredLocal3.
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            recoveredStack3 := (recoveredStack3) printString.
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            recoveredStack2 := (recoveredStack2) , (recoveredStack3).
            recoveredPC := 117.
        ].
        recoveredStep = 117 ifTrue: [
            (recoveredStack1) addTextInSameLine: (recoveredStack2).
            recoveredPC := 119.
        ].
        recoveredStep = 119 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 122.
        ].
        recoveredStep = 122 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 125.
        ].
        recoveredStep = 125 ifTrue: [
            recoveredStack1 := (recoveredStack1) getExternalCCEntryOrNil: (recoveredStack2).
            recoveredPC := 127.
        ].
        recoveredStep = 127 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 130.
        ].
        recoveredStep = 130 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 133.
        ].
        recoveredStep = 133 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 136.
        ].
        recoveredStep = 136 ifTrue: [
            recoveredStack1 := (recoveredStack1) searchForMultipleExternalCCEntries: (recoveredStack2).
            recoveredPC := 138.
        ].
        recoveredStep = 138 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 141.
        ].
        recoveredStep = 141 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 142.
        ].
        recoveredStep = 142 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 145.
        ].
        recoveredStep = 145 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 148.
        ].
        recoveredStep = 148 ifTrue: [
            (recoveredStack1) restoreCodeFromMultipleCCVariants: (recoveredStack2) into: (recoveredStack3).
            recoveredPC := 150.
        ].
        recoveredStep = 150 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 151.
        ].
        recoveredStep = 151 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 154.
        ].
        recoveredStep = 154 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 157.
        ].
        recoveredStep = 157 ifTrue: [
            (recoveredStack1) restoreExternalCodeFromMultipleCCVariants: (recoveredStack2) into: (recoveredStack3).
            recoveredPC := 159.
        ].
        recoveredStep = 159 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 162.
        ].
        recoveredStep = 162 ifTrue: [
            recoveredStack2 := [:recoveredBlock162Arg1 | 
    | recoveredBlock162Stack0 recoveredBlock162Stack1 recoveredBlock162Stack2 recoveredBlock162Stack3 recoveredBlock162Stack4 recoveredBlock162PC recoveredBlock162Step recoveredBlock162Done recoveredBlock162Result |
    recoveredBlock162Stack0 := self.
    recoveredBlock162PC := 168.
    recoveredBlock162Done := false.
    [recoveredBlock162Done not] whileTrue: [
        recoveredBlock162Step := recoveredBlock162PC.
        recoveredBlock162Step = 168 ifTrue: [
            recoveredBlock162Stack1 := nil.
            recoveredBlock162PC := 169.
        ].
        recoveredBlock162Step = 169 ifTrue: [
            recoveredBlock162Stack2 := recoveredBlock162Arg1.
            recoveredBlock162PC := 170.
        ].
        recoveredBlock162Step = 170 ifTrue: [
            recoveredBlock162Stack3 := recoveredLocal1.
            recoveredBlock162PC := 173.
        ].
        recoveredBlock162Step = 173 ifTrue: [
            recoveredBlock162Stack2 := (recoveredBlock162Stack2) ~= (recoveredBlock162Stack3).
            recoveredBlock162PC := 174.
        ].
        recoveredBlock162Step = 174 ifTrue: [
            (recoveredBlock162Stack2) ifTrue: [recoveredBlock162PC := 178] ifFalse: [recoveredBlock162PC := 195].
        ].
        recoveredBlock162Step = 178 ifTrue: [
            recoveredBlock162PC := 179.
        ].
        recoveredBlock162Step = 179 ifTrue: [
            recoveredBlock162Stack1 := recoveredBlock162Arg1.
            recoveredBlock162PC := 180.
        ].
        recoveredBlock162Step = 180 ifTrue: [
            recoveredBlock162Stack1 := (recoveredBlock162Stack1) value.
            recoveredBlock162PC := 181.
        ].
        recoveredBlock162Step = 181 ifTrue: [
            (recoveredBlock162Stack1) delete.
            recoveredBlock162PC := 183.
        ].
        recoveredBlock162Step = 183 ifTrue: [
            recoveredBlock162Stack1 := recoveredArg1.
            recoveredBlock162PC := 186.
        ].
        recoveredBlock162Step = 186 ifTrue: [
            recoveredBlock162Stack2 := recoveredArg1.
            recoveredBlock162PC := 189.
        ].
        recoveredBlock162Step = 189 ifTrue: [
            recoveredBlock162Stack2 := (recoveredBlock162Stack2) external.
            recoveredBlock162PC := 190.
        ].
        recoveredBlock162Step = 190 ifTrue: [
            recoveredBlock162Stack3 := recoveredBlock162Arg1.
            recoveredBlock162PC := 191.
        ].
        recoveredBlock162Step = 191 ifTrue: [
            recoveredBlock162Stack2 := (recoveredBlock162Stack2) copyWithout: (recoveredBlock162Stack3).
            recoveredBlock162PC := 193.
        ].
        recoveredBlock162Step = 193 ifTrue: [
            recoveredBlock162Stack1 := (recoveredBlock162Stack1) external: (recoveredBlock162Stack2).
            recoveredBlock162PC := 195.
        ].
        recoveredBlock162Step = 195 ifTrue: [
            recoveredBlock162Result := recoveredBlock162Stack1.
            recoveredBlock162Done := true.
        ].
    ].
    recoveredBlock162Result
].
            recoveredPC := 196.
        ].
        recoveredStep = 196 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 198.
        ].
        recoveredStep = 198 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 199.
        ].
        recoveredStep = 199 ifTrue: [
            recoveredStack1 := (recoveredStack1) item.
            recoveredPC := 201.
        ].
        recoveredStep = 201 ifTrue: [
            (recoveredStack1) modified.
            recoveredPC := 203.
        ].
        recoveredStep = 203 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 206.
        ].
        recoveredStep = 206 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 209.
        ].
        recoveredStep = 209 ifTrue: [
            recoveredStack3 := [:block28111754Arg1 | 
    | block28111754Value0 block28111754Value1 |
    block28111754Value0 := block28111754Arg1.
    block28111754Value1 := (block28111754Value0) key.
    block28111754Value1
].
            recoveredPC := 211.
        ].
        recoveredStep = 211 ifTrue: [
            recoveredPC := 218.
        ].
        recoveredStep = 218 ifTrue: [
            recoveredStack2 := (recoveredStack2) collect: (recoveredStack3).
            recoveredPC := 220.
        ].
        recoveredStep = 220 ifTrue: [
            (recoveredStack1) removeAll: (recoveredStack2).
            recoveredPC := 222.
        ].
        recoveredStep = 222 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 223.
        ].
        recoveredStep = 223 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 224.
        ].
        recoveredStep = 224 ifTrue: [
            recoveredLocal3 := recoveredStack2.
            recoveredPC := 227.
        ].
        recoveredStep = 227 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 228.
        ].
        recoveredStep = 228 ifTrue: [
            recoveredLocal2 := recoveredStack2.
            recoveredPC := 231.
        ].
        recoveredStep = 231 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 234.
        ].
        recoveredStep = 234 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 237.
        ].
        recoveredStep = 237 ifTrue: [
            recoveredStack1 := (recoveredStack1) notEmpty.
            recoveredPC := 239.
        ].
        recoveredStep = 239 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 44] ifFalse: [recoveredPC := 242].
        ].
        recoveredStep = 242 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x205b3428; bytecode file offset 0xeafd68"
!SGFixMultipleCodeVariants methodsFor: 'recovered'!
restoreAllCodeForMethod: recoveredArg1 variantCCs: recoveredArg2 into: recoveredArg3
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 recoveredValue21 recoveredValue22 recoveredValue23 recoveredValue24 recoveredValue25 recoveredValue26 recoveredValue27 recoveredValue28 recoveredValue29 recoveredValue30 recoveredValue31 recoveredValue32 recoveredValue33 recoveredValue34 recoveredValue35 recoveredValue36 recoveredValue37 recoveredValue38 recoveredValue39 recoveredValue40 recoveredValue41 recoveredValue42 recoveredValue43 recoveredValue44 recoveredValue45 recoveredValue46 recoveredValue47 recoveredValue48 recoveredValue49 recoveredValue50 recoveredValue51 recoveredValue52 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) aliasName.
    recoveredLocal2 := recoveredValue1.
    recoveredValue2 := WriteStream.
    recoveredValue3 := String.
    recoveredValue4 := (recoveredValue3) new.
    recoveredValue5 := (recoveredValue2) on: (recoveredValue4).
    recoveredLocal1 := recoveredValue5.
    recoveredValue6 := recoveredLocal1.
    recoveredValue7 := recoveredValue6.
    (recoveredValue7) cr.
    recoveredValue8 := recoveredValue6.
    (recoveredValue8) nextPutAll: ('#error "Detected code Variants moved to new methods"').
    recoveredValue9 := recoveredValue6.
    (recoveredValue9) cr.
    recoveredValue10 := recoveredValue6.
    (recoveredValue10) cr.
    recoveredValue11 := recoveredValue6.
    (recoveredValue11) nextPutAll: ('//').
    recoveredValue12 := recoveredValue6.
    (recoveredValue12) cr.
    recoveredValue13 := recoveredValue6.
    (recoveredValue13) nextPutAll: ('// Automatically generated code by the Database Performance Utility (Check)').
    recoveredValue14 := recoveredValue6.
    (recoveredValue14) cr.
    recoveredValue15 := recoveredValue6.
    (recoveredValue15) nextPutAll: ('//').
    recoveredValue16 := recoveredValue6.
    (recoveredValue16) cr.
    recoveredValue17 := recoveredValue6.
    (recoveredValue17) nextPutAll: ('//').
    recoveredValue18 := recoveredValue6.
    (recoveredValue18) cr.
    recoveredValue19 := recoveredValue6.
    (recoveredValue19) nextPutAll: ('// Due to an error in a former ASCET version').
    recoveredValue20 := recoveredValue6.
    (recoveredValue20) cr.
    recoveredValue21 := recoveredValue6.
    (recoveredValue21) nextPutAll: ('// for each combination of the code optimization options').
    recoveredValue22 := recoveredValue6.
    (recoveredValue22) cr.
    recoveredValue23 := recoveredValue6.
    (recoveredValue23) nextPutAll: ('// for the direct access (one level / multiple level)').
    recoveredValue24 := recoveredValue6.
    (recoveredValue24) cr.
    recoveredValue25 := recoveredValue6.
    (recoveredValue25) nextPutAll: ('// a separate variant of the handwritten code was created.').
    recoveredValue26 := recoveredValue6.
    (recoveredValue26) cr.
    recoveredValue27 := recoveredValue6.
    (recoveredValue27) nextPutAll: ('//').
    recoveredValue28 := recoveredValue6.
    (recoveredValue28) cr.
    recoveredValue29 := recoveredValue6.
    (recoveredValue29) nextPutAll: ('// All of these versions are now recovered and stored in new').
    recoveredValue30 := recoveredValue6.
    (recoveredValue30) cr.
    recoveredValue31 := recoveredValue6.
    (recoveredValue31) nextPutAll: ('// created methods. Please copy the contents of the correct variant').
    recoveredValue32 := recoveredValue6.
    (recoveredValue32) cr.
    recoveredValue33 := recoveredValue6.
    (recoveredValue33) nextPutAll: ('// at this place.').
    recoveredValue34 := recoveredValue6.
    (recoveredValue34) cr.
    recoveredValue35 := recoveredValue6.
    (recoveredValue35) nextPutAll: ('//').
    recoveredValue36 := recoveredValue6.
    (recoveredValue36) cr.
    recoveredValue37 := recoveredValue6.
    (recoveredValue37) nextPutAll: ('// Before deleting one of the new created methods be sure to copy').
    recoveredValue38 := recoveredValue6.
    (recoveredValue38) cr.
    recoveredValue39 := recoveredValue6.
    (recoveredValue39) nextPutAll: ('// the code from all posible code generation paths to prevent of loosing').
    recoveredValue40 := recoveredValue6.
    (recoveredValue40) cr.
    recoveredValue41 := recoveredValue6.
    (recoveredValue41) nextPutAll: ('// your code.').
    recoveredValue42 := recoveredValue6.
    (recoveredValue42) cr.
    recoveredValue43 := recoveredValue6.
    (recoveredValue43) nextPutAll: ('//').
    recoveredValue44 := recoveredValue6.
    (recoveredValue44) cr.
    recoveredValue45 := recoveredValue6.
    (recoveredValue45) nextPutAll: ('// For this method you will find the recovered variants in the following methods:').
    (recoveredValue6) cr.
    recoveredValue46 := recoveredArg2.
    recoveredValue47 := [:recoveredBlock184Arg1 | 
    | recoveredBlock184Local1 recoveredBlock184Local2 recoveredBlock184Local3 recoveredBlock184Local4 recoveredBlock184Stack0 recoveredBlock184Stack1 recoveredBlock184Stack2 recoveredBlock184Stack3 recoveredBlock184PC recoveredBlock184Step recoveredBlock184Done recoveredBlock184Result |
    recoveredBlock184Stack0 := self.
    recoveredBlock184PC := 190.
    recoveredBlock184Done := false.
    [recoveredBlock184Done not] whileTrue: [
        recoveredBlock184Step := recoveredBlock184PC.
        recoveredBlock184Step = 190 ifTrue: [
            recoveredBlock184Stack1 := recoveredArg1.
            recoveredBlock184PC := 193.
        ].
        recoveredBlock184Step = 193 ifTrue: [
            recoveredBlock184Stack2 := recoveredBlock184Arg1.
            recoveredBlock184PC := 195.
        ].
        recoveredBlock184Step = 195 ifTrue: [
            recoveredBlock184Stack2 := (recoveredBlock184Stack2) key.
            recoveredBlock184PC := 197.
        ].
        recoveredBlock184Step = 197 ifTrue: [
            recoveredBlock184Stack0 := (recoveredBlock184Stack0) uniqueMethodFor: (recoveredBlock184Stack1) withVariantKey: (recoveredBlock184Stack2).
            recoveredBlock184PC := 199.
        ].
        recoveredBlock184Step = 199 ifTrue: [
            recoveredBlock184Local4 := recoveredBlock184Stack0.
            recoveredBlock184PC := 200.
        ].
        recoveredBlock184Step = 200 ifTrue: [
            recoveredBlock184Stack0 := recoveredBlock184Arg1.
            recoveredBlock184PC := 202.
        ].
        recoveredBlock184Step = 202 ifTrue: [
            recoveredBlock184Stack0 := (recoveredBlock184Stack0) value.
            recoveredBlock184PC := 204.
        ].
        recoveredBlock184Step = 204 ifTrue: [
            recoveredBlock184Stack1 := recoveredLocal2.
            recoveredBlock184PC := 207.
        ].
        recoveredBlock184Step = 207 ifTrue: [
            recoveredBlock184Stack0 := (recoveredBlock184Stack0) procSourceAt: (recoveredBlock184Stack1).
            recoveredBlock184PC := 209.
        ].
        recoveredBlock184Step = 209 ifTrue: [
            recoveredBlock184Local3 := recoveredBlock184Stack0.
            recoveredBlock184PC := 210.
        ].
        recoveredBlock184Step = 210 ifTrue: [
            recoveredBlock184Stack0 := 'Kk'.
            recoveredBlock184PC := 212.
        ].
        recoveredBlock184Step = 212 ifTrue: [
            recoveredBlock184Stack1 := 'Call_65668'.
            recoveredBlock184PC := 214.
        ].
        recoveredBlock184Step = 214 ifTrue: [
            recoveredBlock184Stack0 := (recoveredBlock184Stack0) == (recoveredBlock184Stack1).
            recoveredBlock184PC := 215.
        ].
        recoveredBlock184Step = 215 ifTrue: [
            recoveredBlock184PC := 216.
        ].
        recoveredBlock184Step = 216 ifTrue: [
            recoveredBlock184Stack0 := recoveredArg3.
            recoveredBlock184PC := 219.
        ].
        recoveredBlock184Step = 219 ifTrue: [
            recoveredBlock184Stack1 := recoveredBlock184Local4.
            recoveredBlock184PC := 220.
        ].
        recoveredBlock184Step = 220 ifTrue: [
            recoveredBlock184Stack1 := (recoveredBlock184Stack1) aliasName.
            recoveredBlock184PC := 221.
        ].
        recoveredBlock184Step = 221 ifTrue: [
            recoveredBlock184Stack0 := (recoveredBlock184Stack0) procSourceAt: (recoveredBlock184Stack1).
            recoveredBlock184PC := 223.
        ].
        recoveredBlock184Step = 223 ifTrue: [
            recoveredBlock184Stack1 := recoveredBlock184Stack0.
            recoveredBlock184PC := 224.
        ].
        recoveredBlock184Step = 224 ifTrue: [
            recoveredBlock184Local2 := recoveredBlock184Stack1.
            recoveredBlock184PC := 225.
        ].
        recoveredBlock184Step = 225 ifTrue: [
            recoveredBlock184Stack0 := (recoveredBlock184Stack0) notEmpty.
            recoveredBlock184PC := 227.
        ].
        recoveredBlock184Step = 227 ifTrue: [
            (recoveredBlock184Stack0) ifTrue: [recoveredBlock184PC := 230] ifFalse: [recoveredBlock184PC := 266].
        ].
        recoveredBlock184Step = 230 ifTrue: [
            recoveredBlock184Stack0 := WriteStream.
            recoveredBlock184PC := 232.
        ].
        recoveredBlock184Step = 232 ifTrue: [
            recoveredBlock184Stack1 := String.
            recoveredBlock184PC := 234.
        ].
        recoveredBlock184Step = 234 ifTrue: [
            recoveredBlock184Stack1 := (recoveredBlock184Stack1) new.
            recoveredBlock184PC := 235.
        ].
        recoveredBlock184Step = 235 ifTrue: [
            recoveredBlock184Stack0 := (recoveredBlock184Stack0) on: (recoveredBlock184Stack1).
            recoveredBlock184PC := 237.
        ].
        recoveredBlock184Step = 237 ifTrue: [
            recoveredBlock184Local1 := recoveredBlock184Stack0.
            recoveredBlock184PC := 238.
        ].
        recoveredBlock184Step = 238 ifTrue: [
            recoveredBlock184Stack0 := recoveredBlock184Local1.
            recoveredBlock184PC := 239.
        ].
        recoveredBlock184Step = 239 ifTrue: [
            recoveredBlock184Stack1 := recoveredBlock184Stack0.
            recoveredBlock184PC := 240.
        ].
        recoveredBlock184Step = 240 ifTrue: [
            recoveredBlock184Stack2 := recoveredBlock184Local2.
            recoveredBlock184PC := 241.
        ].
        recoveredBlock184Step = 241 ifTrue: [
            (recoveredBlock184Stack1) nextPutAll: (recoveredBlock184Stack2).
            recoveredBlock184Stack1 := recoveredBlock184Stack0.
            recoveredBlock184PC := 244.
        ].
        recoveredBlock184Step = 244 ifTrue: [
            (recoveredBlock184Stack1) cr.
            recoveredBlock184Stack1 := recoveredBlock184Stack0.
            recoveredBlock184PC := 247.
        ].
        recoveredBlock184Step = 247 ifTrue: [
            (recoveredBlock184Stack1) cr.
            recoveredBlock184Stack1 := recoveredBlock184Stack0.
            recoveredBlock184PC := 250.
        ].
        recoveredBlock184Step = 250 ifTrue: [
            recoveredBlock184Stack2 := 'Additional code variant found:'.
            recoveredBlock184PC := 252.
        ].
        recoveredBlock184Step = 252 ifTrue: [
            (recoveredBlock184Stack1) nextPutAll: (recoveredBlock184Stack2).
            recoveredBlock184Stack1 := recoveredBlock184Stack0.
            recoveredBlock184PC := 255.
        ].
        recoveredBlock184Step = 255 ifTrue: [
            (recoveredBlock184Stack1) cr.
            recoveredBlock184PC := 257.
        ].
        recoveredBlock184Step = 257 ifTrue: [
            recoveredBlock184Stack1 := recoveredBlock184Local3.
            recoveredBlock184PC := 258.
        ].
        recoveredBlock184Step = 258 ifTrue: [
            (recoveredBlock184Stack0) nextPutAll: (recoveredBlock184Stack1).
            recoveredBlock184PC := 260.
        ].
        recoveredBlock184Step = 260 ifTrue: [
            recoveredBlock184Stack0 := recoveredBlock184Local1.
            recoveredBlock184PC := 261.
        ].
        recoveredBlock184Step = 261 ifTrue: [
            recoveredBlock184Stack0 := (recoveredBlock184Stack0) contents.
            recoveredBlock184PC := 263.
        ].
        recoveredBlock184Step = 263 ifTrue: [
            recoveredBlock184Local3 := recoveredBlock184Stack0.
            recoveredBlock184PC := 264.
        ].
        recoveredBlock184Step = 264 ifTrue: [
            recoveredBlock184Stack0 := nil.
            recoveredBlock184PC := 265.
        ].
        recoveredBlock184Step = 265 ifTrue: [
            recoveredBlock184Local1 := recoveredBlock184Stack0.
            recoveredBlock184PC := 266.
        ].
        recoveredBlock184Step = 266 ifTrue: [
            recoveredBlock184Stack0 := recoveredArg3.
            recoveredBlock184PC := 269.
        ].
        recoveredBlock184Step = 269 ifTrue: [
            recoveredBlock184Stack1 := recoveredBlock184Local4.
            recoveredBlock184PC := 270.
        ].
        recoveredBlock184Step = 270 ifTrue: [
            recoveredBlock184Stack1 := (recoveredBlock184Stack1) aliasName.
            recoveredBlock184PC := 271.
        ].
        recoveredBlock184Step = 271 ifTrue: [
            recoveredBlock184Stack2 := recoveredBlock184Local3.
            recoveredBlock184PC := 272.
        ].
        recoveredBlock184Step = 272 ifTrue: [
            (recoveredBlock184Stack0) procSourceAt: (recoveredBlock184Stack1) put: (recoveredBlock184Stack2).
            recoveredBlock184PC := 274.
        ].
        recoveredBlock184Step = 274 ifTrue: [
            recoveredBlock184Stack0 := recoveredLocal1.
            recoveredBlock184PC := 277.
        ].
        recoveredBlock184Step = 277 ifTrue: [
            recoveredBlock184Stack1 := recoveredBlock184Stack0.
            recoveredBlock184PC := 278.
        ].
        recoveredBlock184Step = 278 ifTrue: [
            recoveredBlock184Stack2 := '// '.
            recoveredBlock184PC := 280.
        ].
        recoveredBlock184Step = 280 ifTrue: [
            (recoveredBlock184Stack1) nextPutAll: (recoveredBlock184Stack2).
            recoveredBlock184Stack1 := recoveredBlock184Stack0.
            recoveredBlock184PC := 283.
        ].
        recoveredBlock184Step = 283 ifTrue: [
            recoveredBlock184Stack2 := recoveredBlock184Local4.
            recoveredBlock184PC := 284.
        ].
        recoveredBlock184Step = 284 ifTrue: [
            recoveredBlock184Stack2 := (recoveredBlock184Stack2) methodName.
            recoveredBlock184PC := 286.
        ].
        recoveredBlock184Step = 286 ifTrue: [
            (recoveredBlock184Stack1) nextPutAll: (recoveredBlock184Stack2).
            recoveredBlock184PC := 288.
        ].
        recoveredBlock184Step = 288 ifTrue: [
            recoveredBlock184Stack0 := (recoveredBlock184Stack0) cr.
            recoveredBlock184PC := 290.
        ].
        recoveredBlock184Step = 290 ifTrue: [
            recoveredBlock184Result := recoveredBlock184Stack0.
            recoveredBlock184Done := true.
        ].
    ].
    recoveredBlock184Result
].
    (recoveredValue46) do: (recoveredValue47).
    recoveredValue48 := recoveredArg3.
    recoveredValue49 := recoveredLocal2.
    recoveredValue50 := recoveredLocal1.
    recoveredValue51 := (recoveredValue50) contents.
    (recoveredValue48) procSourceAt: (recoveredValue49) put: (recoveredValue51).
    recoveredValue52 := recoveredArg3.
    (recoveredValue52) setToBeCompiled.
    ^self
! !

"ASDBase.ic method 0x2061c178; bytecode file offset 0xf18b24"
!SGFixMultipleCodeVariants methodsFor: 'recovered'!
restoreAllExternalCodeVariantCCs: recoveredArg1 into: recoveredArg2
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 recoveredValue21 recoveredValue22 recoveredValue23 recoveredValue24 recoveredValue25 recoveredValue26 recoveredValue27 recoveredValue28 recoveredValue29 recoveredValue30 recoveredValue31 recoveredValue32 recoveredValue33 recoveredValue34 recoveredValue35 recoveredValue36 recoveredValue37 |
    recoveredValue0 := WriteStream.
    recoveredValue1 := String.
    recoveredValue2 := (recoveredValue1) new.
    recoveredValue3 := (recoveredValue0) on: (recoveredValue2).
    recoveredLocal1 := recoveredValue3.
    recoveredValue4 := recoveredLocal1.
    recoveredValue5 := recoveredValue4.
    (recoveredValue5) cr.
    recoveredValue6 := recoveredValue4.
    (recoveredValue6) nextPutAll: ('#error "Detected code Variants restored."').
    recoveredValue7 := recoveredValue4.
    (recoveredValue7) cr.
    recoveredValue8 := recoveredValue4.
    (recoveredValue8) cr.
    recoveredValue9 := recoveredValue4.
    (recoveredValue9) nextPutAll: ('//').
    recoveredValue10 := recoveredValue4.
    (recoveredValue10) cr.
    recoveredValue11 := recoveredValue4.
    (recoveredValue11) nextPutAll: ('// Automatically generated code by the Database Performance Utility (Check)').
    recoveredValue12 := recoveredValue4.
    (recoveredValue12) cr.
    recoveredValue13 := recoveredValue4.
    (recoveredValue13) nextPutAll: ('//').
    recoveredValue14 := recoveredValue4.
    (recoveredValue14) cr.
    recoveredValue15 := recoveredValue4.
    (recoveredValue15) nextPutAll: ('//').
    recoveredValue16 := recoveredValue4.
    (recoveredValue16) cr.
    recoveredValue17 := recoveredValue4.
    (recoveredValue17) nextPutAll: ('// Due to an error in a former ASCET version').
    recoveredValue18 := recoveredValue4.
    (recoveredValue18) cr.
    recoveredValue19 := recoveredValue4.
    (recoveredValue19) nextPutAll: ('// for each combination of the code optimization options').
    recoveredValue20 := recoveredValue4.
    (recoveredValue20) cr.
    recoveredValue21 := recoveredValue4.
    (recoveredValue21) nextPutAll: ('// for the direct access (one level / multiple level)').
    recoveredValue22 := recoveredValue4.
    (recoveredValue22) cr.
    recoveredValue23 := recoveredValue4.
    (recoveredValue23) nextPutAll: ('// a separate variant of the handwritten code was created.').
    recoveredValue24 := recoveredValue4.
    (recoveredValue24) cr.
    recoveredValue25 := recoveredValue4.
    (recoveredValue25) nextPutAll: ('//').
    recoveredValue26 := recoveredValue4.
    (recoveredValue26) cr.
    recoveredValue27 := recoveredValue4.
    (recoveredValue27) nextPutAll: ('// All of these versions are now recovered and listed here.').
    recoveredValue28 := recoveredValue4.
    (recoveredValue28) cr.
    recoveredValue29 := recoveredValue4.
    (recoveredValue29) nextPutAll: ('// Please rework this file by deleting the unwanted variant(s).').
    recoveredValue30 := recoveredValue4.
    (recoveredValue30) cr.
    (recoveredValue4) cr.
    recoveredValue31 := recoveredArg1.
    recoveredValue32 := [:recoveredBlock123Arg1 | 
    | recoveredBlock123Local1 recoveredBlock123Local2 recoveredBlock123Local3 recoveredBlock123Local4 recoveredBlock123Local5 recoveredBlock123Local6 recoveredBlock123Stack0 recoveredBlock123Stack1 recoveredBlock123Stack2 recoveredBlock123Stack3 recoveredBlock123Stack4 recoveredBlock123PC recoveredBlock123Step recoveredBlock123Done recoveredBlock123Result |
    recoveredBlock123Stack0 := self.
    recoveredBlock123PC := 130.
    recoveredBlock123Done := false.
    [recoveredBlock123Done not] whileTrue: [
        recoveredBlock123Step := recoveredBlock123PC.
        recoveredBlock123Step = 130 ifTrue: [
            recoveredBlock123Stack1 := recoveredBlock123Arg1.
            recoveredBlock123PC := 132.
        ].
        recoveredBlock123Step = 132 ifTrue: [
            recoveredBlock123Stack1 := (recoveredBlock123Stack1) value.
            recoveredBlock123PC := 134.
        ].
        recoveredBlock123Step = 134 ifTrue: [
            recoveredBlock123Stack1 := (recoveredBlock123Stack1) hasExternalCSource.
            recoveredBlock123PC := 136.
        ].
        recoveredBlock123Step = 136 ifTrue: [
            (recoveredBlock123Stack1) ifTrue: [recoveredBlock123PC := 140] ifFalse: [recoveredBlock123PC := 236].
        ].
        recoveredBlock123Step = 140 ifTrue: [
            recoveredBlock123Stack1 := recoveredBlock123Arg1.
            recoveredBlock123PC := 142.
        ].
        recoveredBlock123Step = 142 ifTrue: [
            recoveredBlock123Stack1 := (recoveredBlock123Stack1) value.
            recoveredBlock123PC := 144.
        ].
        recoveredBlock123Step = 144 ifTrue: [
            recoveredBlock123Stack1 := (recoveredBlock123Stack1) cSource.
            recoveredBlock123PC := 146.
        ].
        recoveredBlock123Step = 146 ifTrue: [
            recoveredBlock123Stack1 := (recoveredBlock123Stack1) value.
            recoveredBlock123PC := 148.
        ].
        recoveredBlock123Step = 148 ifTrue: [
            recoveredBlock123Local6 := recoveredBlock123Stack1.
            recoveredBlock123PC := 150.
        ].
        recoveredBlock123Step = 150 ifTrue: [
            recoveredBlock123Stack1 := nil.
            recoveredBlock123PC := 151.
        ].
        recoveredBlock123Step = 151 ifTrue: [
            recoveredBlock123Stack2 := recoveredBlock123Local6.
            recoveredBlock123PC := 153.
        ].
        recoveredBlock123Step = 153 ifTrue: [
            recoveredBlock123Stack2 := (recoveredBlock123Stack2) notEmpty.
            recoveredBlock123PC := 155.
        ].
        recoveredBlock123Step = 155 ifTrue: [
            (recoveredBlock123Stack2) ifTrue: [recoveredBlock123PC := 158] ifFalse: [recoveredBlock123PC := 230].
        ].
        recoveredBlock123Step = 158 ifTrue: [
            recoveredBlock123PC := 159.
        ].
        recoveredBlock123Step = 159 ifTrue: [
            recoveredBlock123Stack1 := recoveredLocal1.
            recoveredBlock123PC := 162.
        ].
        recoveredBlock123Step = 162 ifTrue: [
            recoveredBlock123Stack2 := recoveredBlock123Stack1.
            recoveredBlock123PC := 163.
        ].
        recoveredBlock123Step = 163 ifTrue: [
            (recoveredBlock123Stack2) cr.
            recoveredBlock123Stack2 := recoveredBlock123Stack1.
            recoveredBlock123PC := 166.
        ].
        recoveredBlock123Step = 166 ifTrue: [
            recoveredBlock123Stack3 := '// Below you will find the header variant for the code optimization options:'.
            recoveredBlock123PC := 168.
        ].
        recoveredBlock123Step = 168 ifTrue: [
            (recoveredBlock123Stack2) nextPutAll: (recoveredBlock123Stack3).
            recoveredBlock123Stack2 := recoveredBlock123Stack1.
            recoveredBlock123PC := 171.
        ].
        recoveredBlock123Step = 171 ifTrue: [
            (recoveredBlock123Stack2) cr.
            recoveredBlock123Stack2 := recoveredBlock123Stack1.
            recoveredBlock123PC := 174.
        ].
        recoveredBlock123Step = 174 ifTrue: [
            recoveredBlock123Stack3 := '// '.
            recoveredBlock123PC := 176.
        ].
        recoveredBlock123Step = 176 ifTrue: [
            (recoveredBlock123Stack2) nextPutAll: (recoveredBlock123Stack3).
            recoveredBlock123Stack2 := recoveredBlock123Stack1.
            recoveredBlock123PC := 179.
        ].
        recoveredBlock123Step = 179 ifTrue: [
            recoveredBlock123Stack3 := recoveredBlock123Arg1.
            recoveredBlock123PC := 181.
        ].
        recoveredBlock123Step = 181 ifTrue: [
            recoveredBlock123Stack3 := (recoveredBlock123Stack3) key.
            recoveredBlock123PC := 183.
        ].
        recoveredBlock123Step = 183 ifTrue: [
            recoveredBlock123Stack3 := (recoveredBlock123Stack3) directAccessOptionsCommentForFix.
            recoveredBlock123PC := 185.
        ].
        recoveredBlock123Step = 185 ifTrue: [
            (recoveredBlock123Stack2) nextPutAll: (recoveredBlock123Stack3).
            recoveredBlock123Stack2 := recoveredBlock123Stack1.
            recoveredBlock123PC := 188.
        ].
        recoveredBlock123Step = 188 ifTrue: [
            (recoveredBlock123Stack2) cr.
            recoveredBlock123Stack2 := recoveredBlock123Stack1.
            recoveredBlock123PC := 191.
        ].
        recoveredBlock123Step = 191 ifTrue: [
            recoveredBlock123Stack3 := '//'.
            recoveredBlock123PC := 193.
        ].
        recoveredBlock123Step = 193 ifTrue: [
            (recoveredBlock123Stack2) nextPutAll: (recoveredBlock123Stack3).
            recoveredBlock123PC := 195.
        ].
        recoveredBlock123Step = 195 ifTrue: [
            (recoveredBlock123Stack1) cr.
            recoveredBlock123PC := 197.
        ].
        recoveredBlock123Step = 197 ifTrue: [
            recoveredBlock123Stack1 := ReadStream.
            recoveredBlock123PC := 199.
        ].
        recoveredBlock123Step = 199 ifTrue: [
            recoveredBlock123Stack2 := recoveredBlock123Local6.
            recoveredBlock123PC := 201.
        ].
        recoveredBlock123Step = 201 ifTrue: [
            recoveredBlock123Stack1 := (recoveredBlock123Stack1) on: (recoveredBlock123Stack2).
            recoveredBlock123PC := 202.
        ].
        recoveredBlock123Step = 202 ifTrue: [
            recoveredBlock123Local5 := recoveredBlock123Stack1.
            recoveredBlock123PC := 204.
        ].
        recoveredBlock123Step = 204 ifTrue: [
            recoveredBlock123PC := 220.
        ].
        recoveredBlock123Step = 208 ifTrue: [
            recoveredBlock123Stack1 := recoveredLocal1.
            recoveredBlock123PC := 211.
        ].
        recoveredBlock123Step = 211 ifTrue: [
            recoveredBlock123Stack2 := recoveredBlock123Stack1.
            recoveredBlock123PC := 212.
        ].
        recoveredBlock123Step = 212 ifTrue: [
            recoveredBlock123Stack3 := recoveredBlock123Local5.
            recoveredBlock123PC := 214.
        ].
        recoveredBlock123Step = 214 ifTrue: [
            recoveredBlock123Stack3 := (recoveredBlock123Stack3) nextLine.
            recoveredBlock123PC := 216.
        ].
        recoveredBlock123Step = 216 ifTrue: [
            (recoveredBlock123Stack2) nextPutAll: (recoveredBlock123Stack3).
            recoveredBlock123PC := 218.
        ].
        recoveredBlock123Step = 218 ifTrue: [
            (recoveredBlock123Stack1) cr.
            recoveredBlock123PC := 220.
        ].
        recoveredBlock123Step = 220 ifTrue: [
            recoveredBlock123Stack1 := recoveredBlock123Local5.
            recoveredBlock123PC := 222.
        ].
        recoveredBlock123Step = 222 ifTrue: [
            recoveredBlock123Stack1 := (recoveredBlock123Stack1) atEnd.
            recoveredBlock123PC := 224.
        ].
        recoveredBlock123Step = 224 ifTrue: [
            (recoveredBlock123Stack1) ifTrue: [recoveredBlock123PC := 226] ifFalse: [recoveredBlock123PC := 208].
        ].
        recoveredBlock123Step = 226 ifTrue: [
            recoveredBlock123Stack1 := nil.
            recoveredBlock123PC := 227.
        ].
        recoveredBlock123Step = 227 ifTrue: [
            recoveredBlock123Stack2 := nil.
            recoveredBlock123PC := 228.
        ].
        recoveredBlock123Step = 228 ifTrue: [
            recoveredBlock123Local5 := recoveredBlock123Stack2.
            recoveredBlock123PC := 230.
        ].
        recoveredBlock123Step = 230 ifTrue: [
            recoveredBlock123Stack2 := nil.
            recoveredBlock123PC := 231.
        ].
        recoveredBlock123Step = 231 ifTrue: [
            recoveredBlock123Local6 := recoveredBlock123Stack2.
            recoveredBlock123PC := 233.
        ].
        recoveredBlock123Step = 233 ifTrue: [
            recoveredBlock123PC := 494.
        ].
        recoveredBlock123Step = 236 ifTrue: [
            recoveredBlock123Stack1 := recoveredBlock123Arg1.
            recoveredBlock123PC := 238.
        ].
        recoveredBlock123Step = 238 ifTrue: [
            recoveredBlock123Stack1 := (recoveredBlock123Stack1) value.
            recoveredBlock123PC := 240.
        ].
        recoveredBlock123Step = 240 ifTrue: [
            recoveredBlock123Stack1 := (recoveredBlock123Stack1) oSource.
            recoveredBlock123PC := 242.
        ].
        recoveredBlock123Step = 242 ifTrue: [
            recoveredBlock123Stack1 := (recoveredBlock123Stack1) value.
            recoveredBlock123PC := 244.
        ].
        recoveredBlock123Step = 244 ifTrue: [
            recoveredBlock123Local6 := recoveredBlock123Stack1.
            recoveredBlock123PC := 246.
        ].
        recoveredBlock123Step = 246 ifTrue: [
            recoveredBlock123Stack1 := nil.
            recoveredBlock123PC := 247.
        ].
        recoveredBlock123Step = 247 ifTrue: [
            recoveredBlock123Stack2 := recoveredBlock123Local6.
            recoveredBlock123PC := 249.
        ].
        recoveredBlock123Step = 249 ifTrue: [
            recoveredBlock123Stack2 := (recoveredBlock123Stack2) notEmpty.
            recoveredBlock123PC := 251.
        ].
        recoveredBlock123Step = 251 ifTrue: [
            (recoveredBlock123Stack2) ifTrue: [recoveredBlock123PC := 254] ifFalse: [recoveredBlock123PC := 491].
        ].
        recoveredBlock123Step = 254 ifTrue: [
            recoveredBlock123PC := 255.
        ].
        recoveredBlock123Step = 255 ifTrue: [
            recoveredBlock123Stack1 := self.
            recoveredBlock123PC := 256.
        ].
        recoveredBlock123Step = 256 ifTrue: [
            recoveredBlock123Stack1 := (recoveredBlock123Stack1) library.
            recoveredBlock123PC := 258.
        ].
        recoveredBlock123Step = 258 ifTrue: [
            recoveredBlock123Stack1 := (recoveredBlock123Stack1) location.
            recoveredBlock123PC := 260.
        ].
        recoveredBlock123Step = 260 ifTrue: [
            recoveredBlock123Stack1 := (recoveredBlock123Stack1) asPathname.
            recoveredBlock123PC := 262.
        ].
        recoveredBlock123Step = 262 ifTrue: [
            recoveredBlock123Stack2 := self.
            recoveredBlock123PC := 263.
        ].
        recoveredBlock123Step = 263 ifTrue: [
            recoveredBlock123Stack2 := (recoveredBlock123Stack2) item.
            recoveredBlock123PC := 265.
        ].
        recoveredBlock123Step = 265 ifTrue: [
            recoveredBlock123Stack2 := (recoveredBlock123Stack2) buildFolderPathName.
            recoveredBlock123PC := 267.
        ].
        recoveredBlock123Step = 267 ifTrue: [
            recoveredBlock123Stack2 := (recoveredBlock123Stack2) asPathname.
            recoveredBlock123PC := 269.
        ].
        recoveredBlock123Step = 269 ifTrue: [
            recoveredBlock123Stack1 := (recoveredBlock123Stack1) , (recoveredBlock123Stack2).
            recoveredBlock123PC := 271.
        ].
        recoveredBlock123Step = 271 ifTrue: [
            recoveredBlock123Local5 := recoveredBlock123Stack1.
            recoveredBlock123PC := 273.
        ].
        recoveredBlock123Step = 273 ifTrue: [
            recoveredBlock123Stack1 := CfsStat.
            recoveredBlock123PC := 275.
        ].
        recoveredBlock123Step = 275 ifTrue: [
            recoveredBlock123Stack2 := recoveredBlock123Local5.
            recoveredBlock123PC := 277.
        ].
        recoveredBlock123Step = 277 ifTrue: [
            recoveredBlock123Stack1 := (recoveredBlock123Stack1) exists: (recoveredBlock123Stack2).
            recoveredBlock123PC := 279.
        ].
        recoveredBlock123Step = 279 ifTrue: [
            (recoveredBlock123Stack1) ifTrue: [recoveredBlock123PC := 288] ifFalse: [recoveredBlock123PC := 282].
        ].
        recoveredBlock123Step = 282 ifTrue: [
            recoveredBlock123Stack1 := CfsDirectoryDescriptor.
            recoveredBlock123PC := 284.
        ].
        recoveredBlock123Step = 284 ifTrue: [
            recoveredBlock123Stack2 := recoveredBlock123Local5.
            recoveredBlock123PC := 286.
        ].
        recoveredBlock123Step = 286 ifTrue: [
            (recoveredBlock123Stack1) mkdirRecursive: (recoveredBlock123Stack2).
            recoveredBlock123PC := 288.
        ].
        recoveredBlock123Step = 288 ifTrue: [
            recoveredBlock123Stack1 := self.
            recoveredBlock123PC := 289.
        ].
        recoveredBlock123Step = 289 ifTrue: [
            recoveredBlock123Stack1 := (recoveredBlock123Stack1) item.
            recoveredBlock123PC := 291.
        ].
        recoveredBlock123Step = 291 ifTrue: [
            recoveredBlock123Stack1 := (recoveredBlock123Stack1) label.
            recoveredBlock123PC := 293.
        ].
        recoveredBlock123Step = 293 ifTrue: [
            recoveredBlock123Stack2 := recoveredBlock123Arg1.
            recoveredBlock123PC := 295.
        ].
        recoveredBlock123Step = 295 ifTrue: [
            recoveredBlock123Stack2 := (recoveredBlock123Stack2) key.
            recoveredBlock123PC := 297.
        ].
        recoveredBlock123Step = 297 ifTrue: [
            recoveredBlock123Stack2 := (recoveredBlock123Stack2) labelPostfixFromDirectAccessOption.
            recoveredBlock123PC := 299.
        ].
        recoveredBlock123Step = 299 ifTrue: [
            recoveredBlock123Stack1 := (recoveredBlock123Stack1) , (recoveredBlock123Stack2).
            recoveredBlock123PC := 301.
        ].
        recoveredBlock123Step = 301 ifTrue: [
            recoveredBlock123Local4 := recoveredBlock123Stack1.
            recoveredBlock123PC := 302.
        ].
        recoveredBlock123Step = 302 ifTrue: [
            recoveredBlock123Stack1 := recoveredLocal1.
            recoveredBlock123PC := 305.
        ].
        recoveredBlock123Step = 305 ifTrue: [
            recoveredBlock123Stack2 := recoveredBlock123Stack1.
            recoveredBlock123PC := 306.
        ].
        recoveredBlock123Step = 306 ifTrue: [
            (recoveredBlock123Stack2) cr.
            recoveredBlock123Stack2 := recoveredBlock123Stack1.
            recoveredBlock123PC := 309.
        ].
        recoveredBlock123Step = 309 ifTrue: [
            recoveredBlock123Stack3 := '// Below you will find the header variant for the code optimization options:'.
            recoveredBlock123PC := 311.
        ].
        recoveredBlock123Step = 311 ifTrue: [
            (recoveredBlock123Stack2) nextPutAll: (recoveredBlock123Stack3).
            recoveredBlock123Stack2 := recoveredBlock123Stack1.
            recoveredBlock123PC := 314.
        ].
        recoveredBlock123Step = 314 ifTrue: [
            (recoveredBlock123Stack2) cr.
            recoveredBlock123Stack2 := recoveredBlock123Stack1.
            recoveredBlock123PC := 317.
        ].
        recoveredBlock123Step = 317 ifTrue: [
            recoveredBlock123Stack3 := '// '.
            recoveredBlock123PC := 319.
        ].
        recoveredBlock123Step = 319 ifTrue: [
            (recoveredBlock123Stack2) nextPutAll: (recoveredBlock123Stack3).
            recoveredBlock123Stack2 := recoveredBlock123Stack1.
            recoveredBlock123PC := 322.
        ].
        recoveredBlock123Step = 322 ifTrue: [
            recoveredBlock123Stack3 := recoveredBlock123Arg1.
            recoveredBlock123PC := 324.
        ].
        recoveredBlock123Step = 324 ifTrue: [
            recoveredBlock123Stack3 := (recoveredBlock123Stack3) key.
            recoveredBlock123PC := 326.
        ].
        recoveredBlock123Step = 326 ifTrue: [
            recoveredBlock123Stack3 := (recoveredBlock123Stack3) directAccessOptionsCommentForFix.
            recoveredBlock123PC := 328.
        ].
        recoveredBlock123Step = 328 ifTrue: [
            (recoveredBlock123Stack2) nextPutAll: (recoveredBlock123Stack3).
            recoveredBlock123Stack2 := recoveredBlock123Stack1.
            recoveredBlock123PC := 331.
        ].
        recoveredBlock123Step = 331 ifTrue: [
            (recoveredBlock123Stack2) cr.
            recoveredBlock123PC := 333.
        ].
        recoveredBlock123Step = 333 ifTrue: [
            recoveredBlock123Stack2 := '//'.
            recoveredBlock123PC := 335.
        ].
        recoveredBlock123Step = 335 ifTrue: [
            (recoveredBlock123Stack1) nextPutAll: (recoveredBlock123Stack2).
            recoveredBlock123PC := 337.
        ].
        recoveredBlock123Step = 337 ifTrue: [
            recoveredBlock123Stack1 := 'Kk'.
            recoveredBlock123PC := 339.
        ].
        recoveredBlock123Step = 339 ifTrue: [
            recoveredBlock123Stack2 := 'Call_65668'.
            recoveredBlock123PC := 341.
        ].
        recoveredBlock123Step = 341 ifTrue: [
            recoveredBlock123Stack1 := (recoveredBlock123Stack1) == (recoveredBlock123Stack2).
            recoveredBlock123PC := 342.
        ].
        recoveredBlock123Step = 342 ifTrue: [
            recoveredBlock123PC := 343.
        ].
        recoveredBlock123Step = 343 ifTrue: [
            recoveredBlock123Stack1 := CfsDirectoryDescriptor.
            recoveredBlock123PC := 345.
        ].
        recoveredBlock123Step = 345 ifTrue: [
            recoveredBlock123Stack2 := recoveredBlock123Local4.
            recoveredBlock123PC := 346.
        ].
        recoveredBlock123Step = 346 ifTrue: [
            recoveredBlock123Stack3 := '*'.
            recoveredBlock123PC := 348.
        ].
        recoveredBlock123Step = 348 ifTrue: [
            recoveredBlock123Stack2 := (recoveredBlock123Stack2) , (recoveredBlock123Stack3).
            recoveredBlock123PC := 350.
        ].
        recoveredBlock123Step = 350 ifTrue: [
            recoveredBlock123Stack3 := recoveredBlock123Local5.
            recoveredBlock123PC := 352.
        ].
        recoveredBlock123Step = 352 ifTrue: [
            recoveredBlock123Stack1 := (recoveredBlock123Stack1) findFiles: (recoveredBlock123Stack2) in: (recoveredBlock123Stack3).
            recoveredBlock123PC := 354.
        ].
        recoveredBlock123Step = 354 ifTrue: [
            recoveredBlock123Local2 := recoveredBlock123Stack1.
            recoveredBlock123PC := 355.
        ].
        recoveredBlock123Step = 355 ifTrue: [
            recoveredBlock123Stack1 := recoveredBlock123Local2.
            recoveredBlock123PC := 356.
        ].
        recoveredBlock123Step = 356 ifTrue: [
            recoveredBlock123Stack1 := (recoveredBlock123Stack1) notEmpty.
            recoveredBlock123PC := 358.
        ].
        recoveredBlock123Step = 358 ifTrue: [
            (recoveredBlock123Stack1) ifTrue: [recoveredBlock123PC := 362] ifFalse: [recoveredBlock123PC := 382].
        ].
        recoveredBlock123Step = 362 ifTrue: [
            recoveredBlock123Stack1 := recoveredBlock123Local2.
            recoveredBlock123PC := 363.
        ].
        recoveredBlock123Step = 363 ifTrue: [
            recoveredBlock123Stack2 := [:block2811e9d8Arg1 | 
    | block2811e9d8Value0 block2811e9d8Value1 |
    block2811e9d8Value0 := block2811e9d8Arg1.
    block2811e9d8Value1 := (block2811e9d8Value0) dName.
    block2811e9d8Value1
].
            recoveredBlock123PC := 365.
        ].
        recoveredBlock123Step = 365 ifTrue: [
            recoveredBlock123PC := 372.
        ].
        recoveredBlock123Step = 372 ifTrue: [
            recoveredBlock123Stack1 := (recoveredBlock123Stack1) collect: (recoveredBlock123Stack2).
            recoveredBlock123PC := 374.
        ].
        recoveredBlock123Step = 374 ifTrue: [
            recoveredBlock123Local1 := recoveredBlock123Stack1.
            recoveredBlock123PC := 375.
        ].
        recoveredBlock123Step = 375 ifTrue: [
            recoveredBlock123Stack1 := recoveredBlock123Local4.
            recoveredBlock123PC := 376.
        ].
        recoveredBlock123Step = 376 ifTrue: [
            recoveredBlock123Stack2 := recoveredBlock123Local1.
            recoveredBlock123PC := 377.
        ].
        recoveredBlock123Step = 377 ifTrue: [
            recoveredBlock123Stack1 := (recoveredBlock123Stack1) uniqueStringFor: (recoveredBlock123Stack2).
            recoveredBlock123PC := 379.
        ].
        recoveredBlock123Step = 379 ifTrue: [
            recoveredBlock123Local4 := recoveredBlock123Stack1.
            recoveredBlock123PC := 380.
        ].
        recoveredBlock123Step = 380 ifTrue: [
            recoveredBlock123Stack1 := nil.
            recoveredBlock123PC := 381.
        ].
        recoveredBlock123Step = 381 ifTrue: [
            recoveredBlock123Local1 := recoveredBlock123Stack1.
            recoveredBlock123PC := 382.
        ].
        recoveredBlock123Step = 382 ifTrue: [
            recoveredBlock123Stack1 := CfsReadWriteFileStream.
            recoveredBlock123PC := 384.
        ].
        recoveredBlock123Step = 384 ifTrue: [
            recoveredBlock123Stack2 := recoveredBlock123Local5.
            recoveredBlock123PC := 386.
        ].
        recoveredBlock123Step = 386 ifTrue: [
            recoveredBlock123Stack3 := recoveredBlock123Local4.
            recoveredBlock123PC := 387.
        ].
        recoveredBlock123Step = 387 ifTrue: [
            recoveredBlock123Stack2 := (recoveredBlock123Stack2) , (recoveredBlock123Stack3).
            recoveredBlock123PC := 389.
        ].
        recoveredBlock123Step = 389 ifTrue: [
            recoveredBlock123Stack1 := (recoveredBlock123Stack1) openEmpty: (recoveredBlock123Stack2).
            recoveredBlock123PC := 391.
        ].
        recoveredBlock123Step = 391 ifTrue: [
            recoveredBlock123Local3 := recoveredBlock123Stack1.
            recoveredBlock123PC := 392.
        ].
        recoveredBlock123Step = 392 ifTrue: [
            recoveredBlock123Stack1 := recoveredBlock123Local3.
            recoveredBlock123PC := 393.
        ].
        recoveredBlock123Step = 393 ifTrue: [
            recoveredBlock123Stack1 := (recoveredBlock123Stack1) isCfsError.
            recoveredBlock123PC := 395.
        ].
        recoveredBlock123Step = 395 ifTrue: [
            (recoveredBlock123Stack1) ifTrue: [recoveredBlock123PC := 398] ifFalse: [recoveredBlock123PC := 438].
        ].
        recoveredBlock123Step = 398 ifTrue: [
            recoveredBlock123Stack1 := recoveredLocal1.
            recoveredBlock123PC := 401.
        ].
        recoveredBlock123Step = 401 ifTrue: [
            recoveredBlock123Stack2 := recoveredBlock123Stack1.
            recoveredBlock123PC := 402.
        ].
        recoveredBlock123Step = 402 ifTrue: [
            (recoveredBlock123Stack2) cr.
            recoveredBlock123Stack2 := recoveredBlock123Stack1.
            recoveredBlock123PC := 405.
        ].
        recoveredBlock123Step = 405 ifTrue: [
            recoveredBlock123Stack3 := '// Errors occured when writing Object code to file: '.
            recoveredBlock123PC := 407.
        ].
        recoveredBlock123Step = 407 ifTrue: [
            (recoveredBlock123Stack2) nextPutAll: (recoveredBlock123Stack3).
            recoveredBlock123Stack2 := recoveredBlock123Stack1.
            recoveredBlock123PC := 410.
        ].
        recoveredBlock123Step = 410 ifTrue: [
            recoveredBlock123Stack3 := recoveredBlock123Local5.
            recoveredBlock123PC := 412.
        ].
        recoveredBlock123Step = 412 ifTrue: [
            (recoveredBlock123Stack2) nextPutAll: (recoveredBlock123Stack3).
            recoveredBlock123Stack2 := recoveredBlock123Stack1.
            recoveredBlock123PC := 415.
        ].
        recoveredBlock123Step = 415 ifTrue: [
            recoveredBlock123Stack3 := recoveredBlock123Local4.
            recoveredBlock123PC := 416.
        ].
        recoveredBlock123Step = 416 ifTrue: [
            (recoveredBlock123Stack2) nextPutAll: (recoveredBlock123Stack3).
            recoveredBlock123PC := 418.
        ].
        recoveredBlock123Step = 418 ifTrue: [
            (recoveredBlock123Stack1) cr.
            recoveredBlock123PC := 420.
        ].
        recoveredBlock123Step = 420 ifTrue: [
            recoveredBlock123Stack1 := self.
            recoveredBlock123PC := 421.
        ].
        recoveredBlock123Step = 421 ifTrue: [
            recoveredBlock123Stack1 := (recoveredBlock123Stack1) monitor.
            recoveredBlock123PC := 423.
        ].
        recoveredBlock123Step = 423 ifTrue: [
            recoveredBlock123Stack2 := '!!!!!! Errors occured when writing Object code to file: '.
            recoveredBlock123PC := 425.
        ].
        recoveredBlock123Step = 425 ifTrue: [
            recoveredBlock123Stack3 := recoveredBlock123Local5.
            recoveredBlock123PC := 427.
        ].
        recoveredBlock123Step = 427 ifTrue: [
            recoveredBlock123Stack2 := (recoveredBlock123Stack2) , (recoveredBlock123Stack3).
            recoveredBlock123PC := 429.
        ].
        recoveredBlock123Step = 429 ifTrue: [
            recoveredBlock123Stack3 := recoveredBlock123Local4.
            recoveredBlock123PC := 430.
        ].
        recoveredBlock123Step = 430 ifTrue: [
            recoveredBlock123Stack2 := (recoveredBlock123Stack2) , (recoveredBlock123Stack3).
            recoveredBlock123PC := 432.
        ].
        recoveredBlock123Step = 432 ifTrue: [
            recoveredBlock123Stack1 := (recoveredBlock123Stack1) addText: (recoveredBlock123Stack2).
            recoveredBlock123PC := 434.
        ].
        recoveredBlock123Step = 434 ifTrue: [
            recoveredBlock123PC := 482.
        ].
        recoveredBlock123Step = 438 ifTrue: [
            recoveredBlock123Stack1 := recoveredBlock123Local3.
            recoveredBlock123PC := 439.
        ].
        recoveredBlock123Step = 439 ifTrue: [
            recoveredBlock123Stack2 := recoveredBlock123Stack1.
            recoveredBlock123PC := 440.
        ].
        recoveredBlock123Step = 440 ifTrue: [
            recoveredBlock123Stack3 := recoveredBlock123Local6.
            recoveredBlock123PC := 442.
        ].
        recoveredBlock123Step = 442 ifTrue: [
            (recoveredBlock123Stack2) nextPutAll: (recoveredBlock123Stack3).
            recoveredBlock123PC := 444.
        ].
        recoveredBlock123Step = 444 ifTrue: [
            (recoveredBlock123Stack1) close.
            recoveredBlock123PC := 446.
        ].
        recoveredBlock123Step = 446 ifTrue: [
            recoveredBlock123Stack1 := recoveredLocal1.
            recoveredBlock123PC := 449.
        ].
        recoveredBlock123Step = 449 ifTrue: [
            recoveredBlock123Stack2 := recoveredBlock123Stack1.
            recoveredBlock123PC := 450.
        ].
        recoveredBlock123Step = 450 ifTrue: [
            (recoveredBlock123Stack2) cr.
            recoveredBlock123Stack2 := recoveredBlock123Stack1.
            recoveredBlock123PC := 453.
        ].
        recoveredBlock123Step = 453 ifTrue: [
            recoveredBlock123Stack3 := '// Object code written to file: '.
            recoveredBlock123PC := 455.
        ].
        recoveredBlock123Step = 455 ifTrue: [
            (recoveredBlock123Stack2) nextPutAll: (recoveredBlock123Stack3).
            recoveredBlock123Stack2 := recoveredBlock123Stack1.
            recoveredBlock123PC := 458.
        ].
        recoveredBlock123Step = 458 ifTrue: [
            recoveredBlock123Stack3 := recoveredBlock123Local5.
            recoveredBlock123PC := 460.
        ].
        recoveredBlock123Step = 460 ifTrue: [
            (recoveredBlock123Stack2) nextPutAll: (recoveredBlock123Stack3).
            recoveredBlock123Stack2 := recoveredBlock123Stack1.
            recoveredBlock123PC := 463.
        ].
        recoveredBlock123Step = 463 ifTrue: [
            recoveredBlock123Stack3 := recoveredBlock123Local4.
            recoveredBlock123PC := 464.
        ].
        recoveredBlock123Step = 464 ifTrue: [
            (recoveredBlock123Stack2) nextPutAll: (recoveredBlock123Stack3).
            recoveredBlock123PC := 466.
        ].
        recoveredBlock123Step = 466 ifTrue: [
            (recoveredBlock123Stack1) cr.
            recoveredBlock123PC := 468.
        ].
        recoveredBlock123Step = 468 ifTrue: [
            recoveredBlock123Stack1 := self.
            recoveredBlock123PC := 469.
        ].
        recoveredBlock123Step = 469 ifTrue: [
            recoveredBlock123Stack1 := (recoveredBlock123Stack1) monitor.
            recoveredBlock123PC := 471.
        ].
        recoveredBlock123Step = 471 ifTrue: [
            recoveredBlock123Stack2 := '!!!!!! Object code written to file: '.
            recoveredBlock123PC := 473.
        ].
        recoveredBlock123Step = 473 ifTrue: [
            recoveredBlock123Stack3 := recoveredBlock123Local5.
            recoveredBlock123PC := 475.
        ].
        recoveredBlock123Step = 475 ifTrue: [
            recoveredBlock123Stack2 := (recoveredBlock123Stack2) , (recoveredBlock123Stack3).
            recoveredBlock123PC := 477.
        ].
        recoveredBlock123Step = 477 ifTrue: [
            recoveredBlock123Stack3 := recoveredBlock123Local4.
            recoveredBlock123PC := 478.
        ].
        recoveredBlock123Step = 478 ifTrue: [
            recoveredBlock123Stack2 := (recoveredBlock123Stack2) , (recoveredBlock123Stack3).
            recoveredBlock123PC := 480.
        ].
        recoveredBlock123Step = 480 ifTrue: [
            recoveredBlock123Stack1 := (recoveredBlock123Stack1) addText: (recoveredBlock123Stack2).
            recoveredBlock123PC := 482.
        ].
        recoveredBlock123Step = 482 ifTrue: [
            recoveredBlock123Stack2 := nil.
            recoveredBlock123PC := 483.
        ].
        recoveredBlock123Step = 483 ifTrue: [
            recoveredBlock123Stack3 := recoveredBlock123Stack2.
            recoveredBlock123PC := 484.
        ].
        recoveredBlock123Step = 484 ifTrue: [
            recoveredBlock123Local5 := recoveredBlock123Stack3.
            recoveredBlock123PC := 486.
        ].
        recoveredBlock123Step = 486 ifTrue: [
            recoveredBlock123Stack3 := recoveredBlock123Stack2.
            recoveredBlock123PC := 487.
        ].
        recoveredBlock123Step = 487 ifTrue: [
            recoveredBlock123Local4 := recoveredBlock123Stack3.
            recoveredBlock123PC := 488.
        ].
        recoveredBlock123Step = 488 ifTrue: [
            recoveredBlock123Stack3 := recoveredBlock123Stack2.
            recoveredBlock123PC := 489.
        ].
        recoveredBlock123Step = 489 ifTrue: [
            recoveredBlock123Local3 := recoveredBlock123Stack3.
            recoveredBlock123PC := 490.
        ].
        recoveredBlock123Step = 490 ifTrue: [
            recoveredBlock123Local2 := recoveredBlock123Stack2.
            recoveredBlock123PC := 491.
        ].
        recoveredBlock123Step = 491 ifTrue: [
            recoveredBlock123Stack2 := nil.
            recoveredBlock123PC := 492.
        ].
        recoveredBlock123Step = 492 ifTrue: [
            recoveredBlock123Local6 := recoveredBlock123Stack2.
            recoveredBlock123PC := 494.
        ].
        recoveredBlock123Step = 494 ifTrue: [
            recoveredBlock123Result := recoveredBlock123Stack1.
            recoveredBlock123Done := true.
        ].
    ].
    recoveredBlock123Result
].
    (recoveredValue31) do: (recoveredValue32).
    recoveredValue33 := recoveredArg2.
    recoveredValue34 := recoveredValue33.
    recoveredValue35 := recoveredLocal1.
    recoveredValue36 := (recoveredValue35) contents.
    (recoveredValue34) cSource: (recoveredValue36).
    recoveredValue37 := recoveredValue33.
    (recoveredValue37) setExternalCode.
    (recoveredValue33) setExternalCSource.
    ^self
! !

