"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"abtdbf.ic method 0x2000017c; bytecode file offset 0x6674"
!AbtNlsGroup methodsFor: 'recovered'!
disableSync
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := disableSync.
    recoveredValue1 := (recoveredValue0) == (true).
    ^recoveredValue1
! !

"abtdbf.ic method 0x20000204; bytecode file offset 0x66fc"
!AbtNlsGroup methodsFor: 'recovered'!
helpPrefix
    | recoveredValue0 |
    recoveredValue0 := helpPrefix.
    ^recoveredValue0
! !

"abtdbf.ic method 0x20000218; bytecode file offset 0x6710"
!AbtNlsGroup methodsFor: 'recovered'!
helpFileName
    | recoveredValue0 |
    recoveredValue0 := helpFileName.
    ^recoveredValue0
! !

"abtdbf.ic method 0x2000022c; bytecode file offset 0x6724"
!AbtNlsGroup methodsFor: 'recovered'!
fileSpec
    | recoveredValue0 |
    recoveredValue0 := fileSpec.
    ^recoveredValue0
! !

"abtdbf.ic method 0x20000240; bytecode file offset 0x6738"
!AbtNlsGroup methodsFor: 'recovered'!
primTranslator
    | recoveredValue0 |
    recoveredValue0 := translator.
    ^recoveredValue0
! !

"abtdbf.ic method 0x20000254; bytecode file offset 0x674c"
!AbtNlsGroup methodsFor: 'recovered'!
cache
    | recoveredValue0 |
    recoveredValue0 := cache.
    ^recoveredValue0
! !

"abtdbf.ic method 0x20000268; bytecode file offset 0x6760"
!AbtNlsGroup methodsFor: 'recovered'!
cacheIndex
    | recoveredValue0 |
    recoveredValue0 := cacheIndex.
    ^recoveredValue0
! !

"abtdbf.ic method 0x2000027c; bytecode file offset 0x6774"
!AbtNlsGroup methodsFor: 'recovered'!
tsSeconds
    | recoveredValue0 |
    recoveredValue0 := tsSeconds.
    ^recoveredValue0
! !

"abtdbf.ic method 0x200003c8; bytecode file offset 0x68d0"
!AbtNlsGroup methodsFor: 'recovered'!
getCatalog
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := CommonFileSystem.
    recoveredValue1 := (self) fileSpec.
    recoveredValue2 := (recoveredValue1) fullName.
    recoveredValue3 := (recoveredValue0) on: (recoveredValue2).
    ^recoveredValue3
! !

"abtdbf.ic method 0x20000534; bytecode file offset 0x6a2c"
!AbtNlsGroup methodsFor: 'recovered'!
disableSync: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    disableSync := recoveredValue0.
    ^self
! !

"abtdbf.ic method 0x20000548; bytecode file offset 0x6a40"
!AbtNlsGroup methodsFor: 'recovered'!
helpPrefix: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    helpPrefix := recoveredValue0.
    ^self
! !

"abtdbf.ic method 0x2000055c; bytecode file offset 0x6a54"
!AbtNlsGroup methodsFor: 'recovered'!
helpFileName: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    helpFileName := recoveredValue0.
    ^self
! !

"abtdbf.ic method 0x20000570; bytecode file offset 0x6a68"
!AbtNlsGroup methodsFor: 'recovered'!
fileSpec: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    fileSpec := recoveredValue0.
    ^self
! !

"abtdbf.ic method 0x20000584; bytecode file offset 0x6a7c"
!AbtNlsGroup methodsFor: 'recovered'!
tsSeconds: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    tsSeconds := recoveredValue0.
    ^self
! !

"abtdbf.ic method 0x20000708; bytecode file offset 0x6c10"
!AbtNlsGroup methodsFor: 'recovered'!
addEntryToCache: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) cache.
    recoveredValue1 := (self) cacheIndex.
    recoveredValue2 := recoveredArg1.
    (recoveredValue0) at: (recoveredValue1) put: (recoveredValue2).
    (self) incrCacheIndex.
    recoveredValue3 := recoveredArg1.
    ^recoveredValue3
! !

"abtdbf.ic method 0x20000a04; bytecode file offset 0x6f04"
!AbtNlsGroup methodsFor: 'recovered'!
openOn: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack2 := false.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack0 := (recoveredStack0) gatherFromFile: (recoveredStack1) prereadMessages: (recoveredStack2).
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack0) bindToRunningImage.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := true.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"abtdbf.ic method 0x20000d84; bytecode file offset 0x7298"
!AbtNlsGroup methodsFor: 'recovered'!
translator
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) primTranslator.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 21] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := AbtCharacterTranslator.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := (recoveredStack2) internalCharacterSet.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack3 := (recoveredStack3) coordinator.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack3 := (recoveredStack3) characterSet.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := (recoveredStack1) mappingFrom: (recoveredStack2) to: (recoveredStack3).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            (recoveredStack0) translator: (recoveredStack1).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := (recoveredStack0) primTranslator.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"abtdbf.ic method 0x20000f5c; bytecode file offset 0x7464"
!AbtNlsGroup methodsFor: 'recovered'!
incrCacheIndex
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) cacheIndex.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) cache.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 20].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := 1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack0) cacheIndex: (recoveredStack1).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredPC := 26.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := (recoveredStack1) cacheIndex.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (1).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            (recoveredStack0) cacheIndex: (recoveredStack1).
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

"abtdbf.ic method 0x20001148; bytecode file offset 0x7650"
!AbtNlsGroup methodsFor: 'recovered'!
cachedEntryWithId: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) cache.
    recoveredValue1 := [:recoveredBlock5Arg1 | 
    | recoveredBlock5Stack0 recoveredBlock5Stack1 recoveredBlock5Stack2 recoveredBlock5Stack3 recoveredBlock5PC recoveredBlock5Step recoveredBlock5Done recoveredBlock5Result |
    recoveredBlock5Stack0 := self.
    recoveredBlock5PC := 12.
    recoveredBlock5Done := false.
    [recoveredBlock5Done not] whileTrue: [
        recoveredBlock5Step := recoveredBlock5PC.
        recoveredBlock5Step = 12 ifTrue: [
            recoveredBlock5Stack1 := false.
            recoveredBlock5PC := 13.
        ].
        recoveredBlock5Step = 13 ifTrue: [
            recoveredBlock5Stack2 := recoveredBlock5Arg1.
            recoveredBlock5PC := 14.
        ].
        recoveredBlock5Step = 14 ifTrue: [
            (recoveredBlock5Stack2 == nil) ifTrue: [recoveredBlock5PC := 25] ifFalse: [recoveredBlock5PC := 18].
        ].
        recoveredBlock5Step = 18 ifTrue: [
            recoveredBlock5PC := 19.
        ].
        recoveredBlock5Step = 19 ifTrue: [
            recoveredBlock5Stack1 := recoveredBlock5Arg1.
            recoveredBlock5PC := 20.
        ].
        recoveredBlock5Step = 20 ifTrue: [
            recoveredBlock5Stack1 := (recoveredBlock5Stack1) id.
            recoveredBlock5PC := 21.
        ].
        recoveredBlock5Step = 21 ifTrue: [
            recoveredBlock5Stack2 := recoveredArg1.
            recoveredBlock5PC := 24.
        ].
        recoveredBlock5Step = 24 ifTrue: [
            recoveredBlock5Stack1 := (recoveredBlock5Stack1) = (recoveredBlock5Stack2).
            recoveredBlock5PC := 25.
        ].
        recoveredBlock5Step = 25 ifTrue: [
            recoveredBlock5Result := recoveredBlock5Stack1.
            recoveredBlock5Done := true.
        ].
    ].
    recoveredBlock5Result
].
    recoveredValue2 := [].
    recoveredValue3 := (recoveredValue0) detect: (recoveredValue1) ifNone: (recoveredValue2).
    ^recoveredValue3
! !

"abtdbf.ic method 0x2000147c; bytecode file offset 0x7990"
!AbtNlsGroup methodsFor: 'recovered'!
makeResident
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := CldtConstants.
    recoveredValue1 := (recoveredValue0) new.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := [:recoveredBlock11Arg1 | 
    | recoveredBlock11Value0 recoveredBlock11Value1 recoveredBlock11Value2 |
    recoveredBlock11Value0 := recoveredLocal1.
    recoveredBlock11Value1 := recoveredBlock11Arg1.
    recoveredBlock11Value2 := (recoveredBlock11Value0) add: (recoveredBlock11Value1).
    recoveredBlock11Value2
].
    (self) do: (recoveredValue2).
    (self) translator: (nil).
    recoveredValue3 := recoveredLocal1.
    recoveredValue4 := (recoveredValue3) asArray.
    (self) residentMessages: (recoveredValue4).
    ^self
! !

"abtdbf.ic method 0x200018bc; bytecode file offset 0x7dd8"
!AbtNlsGroup methodsFor: 'recovered'!
isFilenameDecorated: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack3 := EswShadowClass.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack3 := (recoveredStack3) pathSeparator.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack2 := (recoveredStack2) includes: (recoveredStack3).
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 51] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := EsImageStartUp.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack3 := 'CFS'.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack2 := (recoveredStack2) subsystemType: (recoveredStack3).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack3 := 'POSIX'.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack2 := (recoveredStack2) ~= (recoveredStack3).
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 28] ifFalse: [recoveredPC := 51].
        ].
        recoveredStep = 28 ifTrue: [
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack2 := (recoveredStack2) size.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack3 := 2.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack2 := (recoveredStack2) > (recoveredStack3).
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 40] ifFalse: [recoveredPC := 51].
        ].
        recoveredStep = 40 ifTrue: [
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack2 := 2.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2).
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack2 := $:.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"abtdbf.ic method 0x20001988; bytecode file offset 0x7e9c"
!AbtNlsGroup methodsFor: 'recovered'!
imageUniqueAnonymousGroupName
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := 1000.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredPC := 36.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := AbtNlsKrnCfsNlsUnknownPrefix.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack3 := recoveredLocal2.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack3 := (recoveredStack3) printString.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack2 := (recoveredStack2) , (recoveredStack3).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack2 := AbtNLSCoordinator.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack2 := (recoveredStack2) current.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack2 := (recoveredStack2) nlsGroupManager.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack2 := (recoveredStack2) groupNamed: (recoveredStack3).
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            (recoveredStack2 ~~ nil) ifTrue: [recoveredPC := 34] ifFalse: [recoveredPC := 32].
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            ^recoveredStack2
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack2 := nil.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            (recoveredStack1 isInteger and: [recoveredLocal2 isInteger]) ifTrue: [(recoveredLocal2 + 1 <= recoveredStack1) ifTrue: [recoveredLocal2 := recoveredLocal2 + 1. recoveredPC := 14] ifFalse: [recoveredLocal2 := nil. recoveredPC := 50]] ifFalse: [recoveredPC := 40].
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack3 := recoveredLocal2.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack3 := (recoveredStack3) + (1).
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack4 := recoveredStack3.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredLocal2 := recoveredStack4.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack2 := (recoveredStack2) < (recoveredStack3).
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 48] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack2 := nil.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredLocal2 := recoveredStack2.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack1 := AbtNlsKrnCfsNlsUnknownPrefix.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"abtdbf.ic method 0x20001f10; bytecode file offset 0x8430"
!AbtNlsGroup methodsFor: 'recovered'!
gatherResidentIndexedMessages: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredLocal6 recoveredLocal7 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) indexMapping.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredLocal6 := recoveredStack0.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := (recoveredStack0) baseIndex.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) + (-1).
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredLocal7 := recoveredStack0.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := CldtConstants.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := (recoveredStack0) new.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredLocal4 := recoveredStack0.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := 0.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := recoveredLocal6.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := (recoveredStack0) size.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredPC := 53.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := recoveredLocal6.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2).
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 53] ifFalse: [recoveredPC := 34].
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack2 := recoveredLocal7.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (recoveredStack2).
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack3 := false.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := (recoveredStack1) primGetMriFromCatalog: (recoveredStack2) cacheResults: (recoveredStack3).
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            (recoveredStack1) add: (recoveredStack2).
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredLocal2 := recoveredStack2.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            (recoveredStack0 isInteger and: [recoveredLocal3 isInteger]) ifTrue: [(recoveredLocal3 + 1 <= recoveredStack0) ifTrue: [recoveredLocal3 := recoveredLocal3 + 1. recoveredPC := 26] ifFalse: [recoveredLocal3 := nil. recoveredPC := 67]] ifFalse: [recoveredPC := 57].
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack2 := (recoveredStack2) + (1).
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack3 := recoveredStack2.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredLocal3 := recoveredStack3.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack1 := (recoveredStack1) < (recoveredStack2).
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 65] ifFalse: [recoveredPC := 26].
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack1 := (recoveredStack1) asArray.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            (recoveredStack0) residentMessages: (recoveredStack1).
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"abtdbf.ic method 0x20002130; bytecode file offset 0x8664"
!AbtNlsGroup methodsFor: 'recovered'!
getMRI: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) resident.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 8] ifFalse: [recoveredPC := 15].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := super getMRI: (recoveredStack1).
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := (recoveredStack0) cachedEntryWithId: (recoveredStack1).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 26] ifFalse: [recoveredPC := 24].
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack0 := (recoveredStack0) isInSync.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 76] ifFalse: [recoveredPC := 34].
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := EsImageStartUp.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := (recoveredStack0) imageStarted.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 42] ifFalse: [recoveredPC := 52].
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack0 := EsImageStartUp.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack1 := 'One or more message files are out of sync.  Would you like to relocalize your image now?'.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack0 := (recoveredStack0) confirm: (recoveredStack1).
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredPC := 53.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack0 := true.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 58] ifFalse: [recoveredPC := 74].
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack0 := (recoveredStack0) coordinator.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            (recoveredStack0) refresh.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack0 := (recoveredStack0) coordinator.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack0 := (recoveredStack0) nlsGroupManager.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack1 := (recoveredStack1) groupName.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack0 := (recoveredStack0) groupNamed: (recoveredStack1).
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack2 := true.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack0 := (recoveredStack0) primGetMriFromCatalog: (recoveredStack1) cacheResults: (recoveredStack2).
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"abtdbf.ic method 0x2000240c; bytecode file offset 0x8950"
!AbtNlsGroup methodsFor: 'recovered'!
primGetMriFromCatalog: recoveredArg1 cacheResults: recoveredArg2
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
            recoveredStack0 := (recoveredStack0) effectiveIndex: (recoveredStack1).
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack0 ~~ recoveredStack1) ifTrue: [recoveredPC := 32] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack2 := (recoveredStack2) groupName.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            (recoveredStack0) logMissingId: (recoveredStack1) withinGroupNamed: (recoveredStack2).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := AbtMRI.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack2 := (recoveredStack2) groupName.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := (recoveredStack0) missingId: (recoveredStack1) withinGroup: (recoveredStack2).
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredPC := 52.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack0 := (recoveredStack0) indexMapping.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1).
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack0 := (recoveredStack0) getCatalog.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := AbtNlsSpt_MprLanguageKey.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack2 := AbtNlsSpt_MprTerritoryKey_ForNdxMsgs.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack3 := AbtNlsSpt_MprCharSetKey_ForNdxMsgs.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack4 := recoveredLocal2.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack0 := (recoveredStack0) loadLanguage: (recoveredStack1) territory: (recoveredStack2) characterSet: (recoveredStack3) index: (recoveredStack4).
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 60] ifFalse: [recoveredPC := 58].
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack0 := AbtCharacterTranslator.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack0 := (recoveredStack0) translationDisabled.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 79] ifFalse: [recoveredPC := 68].
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack1 := (recoveredStack1) translator.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack2 := (recoveredStack2) string.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack1 := (recoveredStack1) translate: (recoveredStack2).
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            (recoveredStack0) string: (recoveredStack1).
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack0 := recoveredArg2.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 84] ifFalse: [recoveredPC := 92].
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack0 := (recoveredStack0) addEntryToCache: (recoveredStack1).
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredPC := 93.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"abtdbf.ic method 0x200024c0; bytecode file offset 0x8a00"
!AbtNlsGroup methodsFor: 'recovered'!
isInSync
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) disableSync.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 8] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := true.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := EsImageStartUp.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) isRuntime.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := true.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := (recoveredStack0) getCatalog.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := (recoveredStack1) fileName.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := (recoveredStack0) isFilenameReachable: (recoveredStack1).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 32] ifFalse: [recoveredPC := 30].
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := AbtNlsSpt_MprLanguageKey.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack2 := AbtNlsSpt_MprTerritoryKey_ForInfo.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack3 := AbtNlsSpt_MprCharSetKey_ForInfo.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack4 := 1.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack0 := (recoveredStack0) loadLanguage: (recoveredStack1) territory: (recoveredStack2) characterSet: (recoveredStack3) index: (recoveredStack4).
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 52] ifFalse: [recoveredPC := 50].
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack1 := AbtNlsSpt_TimestampSeconds_Index.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1).
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 68] ifFalse: [recoveredPC := 62].
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack1 := (recoveredStack1) tsSeconds.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack1 := (recoveredStack1) baseIndex.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack3 := AbtNlsSpt_BaseIndex_Index.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack2 := (recoveredStack2) at: (recoveredStack3).
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 82] ifFalse: [recoveredPC := 96].
        ].
        recoveredStep = 82 ifTrue: [
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack0 := (recoveredStack0) indexMapping.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack0 := (recoveredStack0) size.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack2 := AbtNlsSpt_NlsIndexToCatalogIndexMap_Index.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2).
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"abtdbf.ic method 0x20002634; bytecode file offset 0x8b64"
!AbtNlsGroup methodsFor: 'recovered'!
gatherFromFile: recoveredArg1 prereadMessages: recoveredArg2
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
            recoveredStack1 := (recoveredStack1) isString.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := AbtFileSpec.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) fileSpec: (recoveredStack2).
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredPC := 19.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            (recoveredStack0) fileSpec: (recoveredStack1).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := (recoveredStack0) fileSpec.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := (recoveredStack0) exists.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 30] ifFalse: [recoveredPC := 28].
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack0 := (recoveredStack0) getCatalog.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack2 := (recoveredStack2) fileName.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack1 := (recoveredStack1) isFilenameReachable: (recoveredStack2).
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack1 := (recoveredStack1) not.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            (recoveredStack0) disableSync: (recoveredStack1).
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack0 := (recoveredStack0) currentError.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            (recoveredStack0 == recoveredStack1) ifTrue: [recoveredPC := 54] ifFalse: [recoveredPC := 52].
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            (recoveredStack0) gatherIndexedMessageInfo: (recoveredStack1).
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack0 := (recoveredStack0) currentError.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            (recoveredStack0 == recoveredStack1) ifTrue: [recoveredPC := 68] ifFalse: [recoveredPC := 66].
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            (recoveredStack0) gatherPoolDictionaries: (recoveredStack1).
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack0 := (recoveredStack0) currentError.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            (recoveredStack0 == recoveredStack1) ifTrue: [recoveredPC := 82] ifFalse: [recoveredPC := 80].
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            (recoveredStack0) gatherSeparatedConstants: (recoveredStack1).
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredStack0 := (recoveredStack0) currentError.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            (recoveredStack0 == recoveredStack1) ifTrue: [recoveredPC := 96] ifFalse: [recoveredPC := 94].
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack0 := recoveredArg2.
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 100] ifFalse: [recoveredPC := 104].
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            (recoveredStack0) gatherResidentIndexedMessages: (recoveredStack1).
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            recoveredStack0 := true.
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"abtdbf.ic method 0x20002980; bytecode file offset 0x8eec"
!AbtNlsGroup methodsFor: 'recovered'!
gatherIndexedMessageInfo: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack2 := AbtNlsSpt_MprLanguageKey.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack3 := AbtNlsSpt_MprTerritoryKey_ForInfo.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack4 := AbtNlsSpt_MprCharSetKey_ForInfo.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack5 := 1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) loadLanguage: (recoveredStack2) territory: (recoveredStack3) characterSet: (recoveredStack4) index: (recoveredStack5).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 24] ifFalse: [recoveredPC := 22].
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack3 := AbtNlsSpt_MessageAnnotationFormat_Index.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack2 := (recoveredStack2) at: (recoveredStack3).
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            (recoveredStack1) messageAnnotationFormat: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack3 := AbtNlsSpt_InternalCharacterSet_Index.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack2 := (recoveredStack2) at: (recoveredStack3).
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            (recoveredStack1) internalCharacterSet: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack3 := AbtNlsSpt_BaseIndex_Index.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack2 := (recoveredStack2) at: (recoveredStack3).
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            (recoveredStack1) baseIndex: (recoveredStack2).
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack2 := AbtNlsSpt_NlsIndexToCatalogIndexMap_Index.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2).
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            (recoveredStack0) indexMapping: (recoveredStack1).
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack1 := AbtNlsSpt_IndexConstantsPoolName_Index.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1).
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 70] ifFalse: [recoveredPC := 66].
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack0 := (recoveredStack0) imageUniqueAnonymousGroupName.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack2 := (recoveredStack2) asString.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            (recoveredStack1) groupName: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack3 := AbtNlsSpt_MriClassName_Index.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack2 := (recoveredStack2) at: (recoveredStack3).
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            (recoveredStack1) mriClassName: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredStack3 := AbtNlsSpt_ReplacementRules_Index.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack2 := (recoveredStack2) at: (recoveredStack3).
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            (recoveredStack1) replacementRules: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredStack3 := AbtNlsSpt_HelpFilename_Index.
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            recoveredStack2 := (recoveredStack2) at: (recoveredStack3).
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            (recoveredStack1) helpFileName: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            recoveredStack3 := AbtNlsSpt_HelpPrefix_Index.
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            recoveredStack2 := (recoveredStack2) at: (recoveredStack3).
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            (recoveredStack1) helpPrefix: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            recoveredStack3 := AbtNlsSpt_IndexConstantList_Index.
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            recoveredStack2 := (recoveredStack2) at: (recoveredStack3).
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            (recoveredStack1) mnemonicCodingConstants: (recoveredStack2).
            recoveredPC := 117.
        ].
        recoveredStep = 117 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 118.
        ].
        recoveredStep = 118 ifTrue: [
            recoveredStack2 := AbtNlsSpt_TimestampSeconds_Index.
            recoveredPC := 120.
        ].
        recoveredStep = 120 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2).
            recoveredPC := 122.
        ].
        recoveredStep = 122 ifTrue: [
            (recoveredStack0) tsSeconds: (recoveredStack1).
            recoveredPC := 124.
        ].
        recoveredStep = 124 ifTrue: [
            recoveredStack0 := true.
            recoveredPC := 125.
        ].
        recoveredStep = 125 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"abtdbf.ic method 0x20002a7c; bytecode file offset 0x8fb8"
!AbtNlsGroup methodsFor: 'recovered'!
isFilenameReachable: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack0 := (recoveredStack0) isFilenameDecorated: (recoveredStack1).
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := true.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := CompiledMethod.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := (recoveredStack1) reverse.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := (recoveredStack0) on: (recoveredStack1).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := EswShadowClass.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := (recoveredStack1) pathSeparator.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            (recoveredStack0) upTo: (recoveredStack1).
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := (recoveredStack0) upToEnd.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := (recoveredStack0) reverse.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack0 := EsImageStartUp.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack1 := 'CFS'.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack0 := (recoveredStack0) subsystemType: (recoveredStack1).
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack1 := 'POSIX'.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 54] ifFalse: [recoveredPC := 89].
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack0 := String.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack0 := (recoveredStack0) nlsPath.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack1 := [:recoveredBlock58Arg1 | 
    | recoveredBlock58Stack0 recoveredBlock58Stack1 recoveredBlock58Stack2 recoveredBlock58Stack3 recoveredBlock58Stack4 recoveredBlock58PC recoveredBlock58Step recoveredBlock58Done recoveredBlock58Result |
    recoveredBlock58Stack0 := self.
    recoveredBlock58PC := 64.
    recoveredBlock58Done := false.
    [recoveredBlock58Done not] whileTrue: [
        recoveredBlock58Step := recoveredBlock58PC.
        recoveredBlock58Step = 64 ifTrue: [
            recoveredBlock58Stack1 := nil.
            recoveredBlock58PC := 65.
        ].
        recoveredBlock58Step = 65 ifTrue: [
            recoveredBlock58Stack2 := recoveredBlock58Arg1.
            recoveredBlock58PC := 66.
        ].
        recoveredBlock58Step = 66 ifTrue: [
            recoveredBlock58Stack3 := recoveredLocal2.
            recoveredBlock58PC := 69.
        ].
        recoveredBlock58Step = 69 ifTrue: [
            recoveredBlock58Stack2 := (recoveredBlock58Stack2) = (recoveredBlock58Stack3).
            recoveredBlock58PC := 70.
        ].
        recoveredBlock58Step = 70 ifTrue: [
            (recoveredBlock58Stack2) ifTrue: [recoveredBlock58PC := 74] ifFalse: [recoveredBlock58PC := 77].
        ].
        recoveredBlock58Step = 74 ifTrue: [
            recoveredBlock58PC := 75.
        ].
        recoveredBlock58Step = 75 ifTrue: [
            recoveredBlock58Stack1 := true.
            recoveredBlock58PC := 76.
        ].
        recoveredBlock58Step = 76 ifTrue: [
            ^recoveredBlock58Stack1
        ].
        recoveredBlock58Step = 77 ifTrue: [
            recoveredBlock58Result := recoveredBlock58Stack1.
            recoveredBlock58Done := true.
        ].
    ].
    recoveredBlock58Result
].
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack0 := EswShadowClass.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack0 := (recoveredStack0) startUpDirectory.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack0 := String.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredStack0 := (recoveredStack0) nlsPath.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredStack1 := [:recoveredBlock93Arg1 | 
    | recoveredBlock93Stack0 recoveredBlock93Stack1 recoveredBlock93Stack2 recoveredBlock93Stack3 recoveredBlock93Stack4 recoveredBlock93PC recoveredBlock93Step recoveredBlock93Done recoveredBlock93Result |
    recoveredBlock93Stack0 := self.
    recoveredBlock93PC := 100.
    recoveredBlock93Done := false.
    [recoveredBlock93Done not] whileTrue: [
        recoveredBlock93Step := recoveredBlock93PC.
        recoveredBlock93Step = 100 ifTrue: [
            recoveredBlock93Stack1 := nil.
            recoveredBlock93PC := 101.
        ].
        recoveredBlock93Step = 101 ifTrue: [
            recoveredBlock93Stack2 := recoveredBlock93Arg1.
            recoveredBlock93PC := 102.
        ].
        recoveredBlock93Step = 102 ifTrue: [
            recoveredBlock93Stack3 := recoveredLocal2.
            recoveredBlock93PC := 105.
        ].
        recoveredBlock93Step = 105 ifTrue: [
            recoveredBlock93Stack2 := (recoveredBlock93Stack2) match: (recoveredBlock93Stack3).
            recoveredBlock93PC := 107.
        ].
        recoveredBlock93Step = 107 ifTrue: [
            (recoveredBlock93Stack2) ifTrue: [recoveredBlock93PC := 110] ifFalse: [recoveredBlock93PC := 113].
        ].
        recoveredBlock93Step = 110 ifTrue: [
            recoveredBlock93PC := 111.
        ].
        recoveredBlock93Step = 111 ifTrue: [
            recoveredBlock93Stack1 := true.
            recoveredBlock93PC := 112.
        ].
        recoveredBlock93Step = 112 ifTrue: [
            ^recoveredBlock93Stack1
        ].
        recoveredBlock93Step = 113 ifTrue: [
            recoveredBlock93Result := recoveredBlock93Stack1.
            recoveredBlock93Done := true.
        ].
    ].
    recoveredBlock93Result
].
            recoveredPC := 114.
        ].
        recoveredStep = 114 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 116.
        ].
        recoveredStep = 116 ifTrue: [
            recoveredStack0 := EswShadowClass.
            recoveredPC := 118.
        ].
        recoveredStep = 118 ifTrue: [
            recoveredStack0 := (recoveredStack0) startUpDirectory.
            recoveredPC := 120.
        ].
        recoveredStep = 120 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 123.
        ].
        recoveredStep = 123 ifTrue: [
            recoveredStack0 := (recoveredStack0) match: (recoveredStack1).
            recoveredPC := 125.
        ].
        recoveredStep = 125 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"abtdbf.ic method 0x20002b48; bytecode file offset 0x908c"
!AbtNlsGroup methodsFor: 'recovered'!
gatherSeparatedConstants: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    (self) resetPartStrings.
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := AbtNlsSpt_MprLanguageKey.
    recoveredValue2 := AbtNlsSpt_MprTerritoryKey_ForGui.
    recoveredValue3 := AbtNlsSpt_MprCharSetKey_ForGui.
    recoveredValue4 := (recoveredValue0) loadLanguage: (recoveredValue1) territory: (recoveredValue2) characterSet: (recoveredValue3) index: (1).
    recoveredLocal2 := recoveredValue4.
    recoveredValue5 := (self) translator.
    recoveredLocal1 := recoveredValue5.
    recoveredValue6 := recoveredLocal2.
    recoveredValue7 := [:recoveredBlock32Arg1 | 
    | recoveredBlock32Local1 recoveredBlock32Local2 recoveredBlock32Local3 recoveredBlock32Local4 recoveredBlock32Stack0 recoveredBlock32Stack1 recoveredBlock32Stack2 recoveredBlock32Stack3 recoveredBlock32Stack4 recoveredBlock32Stack5 recoveredBlock32PC recoveredBlock32Step recoveredBlock32Done recoveredBlock32Result |
    recoveredBlock32Stack0 := self.
    recoveredBlock32PC := 38.
    recoveredBlock32Done := false.
    [recoveredBlock32Done not] whileTrue: [
        recoveredBlock32Step := recoveredBlock32PC.
        recoveredBlock32Step = 38 ifTrue: [
            recoveredBlock32Stack1 := recoveredBlock32Arg1.
            recoveredBlock32PC := 40.
        ].
        recoveredBlock32Step = 40 ifTrue: [
            recoveredBlock32Stack1 := (recoveredBlock32Stack1) value.
            recoveredBlock32PC := 42.
        ].
        recoveredBlock32Step = 42 ifTrue: [
            recoveredBlock32Local3 := recoveredBlock32Stack1.
            recoveredBlock32PC := 43.
        ].
        recoveredBlock32Step = 43 ifTrue: [
            recoveredBlock32Stack1 := recoveredLocal1.
            recoveredBlock32PC := 46.
        ].
        recoveredBlock32Step = 46 ifTrue: [
            recoveredBlock32Stack1 := (recoveredBlock32Stack1) translationNeeded.
            recoveredBlock32PC := 48.
        ].
        recoveredBlock32Step = 48 ifTrue: [
            (recoveredBlock32Stack1) ifTrue: [recoveredBlock32PC := 52] ifFalse: [recoveredBlock32PC := 121].
        ].
        recoveredBlock32Step = 52 ifTrue: [
            recoveredBlock32Stack1 := recoveredBlock32Local3.
            recoveredBlock32PC := 53.
        ].
        recoveredBlock32Step = 53 ifTrue: [
            recoveredBlock32Stack2 := false.
            recoveredBlock32PC := 54.
        ].
        recoveredBlock32Step = 54 ifTrue: [
            (recoveredBlock32Stack1) markReadOnly: (recoveredBlock32Stack2).
            recoveredBlock32PC := 56.
        ].
        recoveredBlock32Step = 56 ifTrue: [
            recoveredBlock32Stack1 := 0.
            recoveredBlock32PC := 58.
        ].
        recoveredBlock32Step = 58 ifTrue: [
            recoveredBlock32Local1 := recoveredBlock32Stack1.
            recoveredBlock32PC := 59.
        ].
        recoveredBlock32Step = 59 ifTrue: [
            recoveredBlock32Stack1 := recoveredBlock32Local3.
            recoveredBlock32PC := 60.
        ].
        recoveredBlock32Step = 60 ifTrue: [
            recoveredBlock32Stack1 := (recoveredBlock32Stack1) size.
            recoveredBlock32PC := 62.
        ].
        recoveredBlock32Step = 62 ifTrue: [
            recoveredBlock32PC := 106.
        ].
        recoveredBlock32Step = 66 ifTrue: [
            recoveredBlock32Stack2 := recoveredBlock32Local3.
            recoveredBlock32PC := 67.
        ].
        recoveredBlock32Step = 67 ifTrue: [
            recoveredBlock32Stack3 := recoveredBlock32Local1.
            recoveredBlock32PC := 68.
        ].
        recoveredBlock32Step = 68 ifTrue: [
            recoveredBlock32Stack2 := (recoveredBlock32Stack2) at: (recoveredBlock32Stack3).
            recoveredBlock32PC := 70.
        ].
        recoveredBlock32Step = 70 ifTrue: [
            recoveredBlock32Local2 := recoveredBlock32Stack2.
            recoveredBlock32PC := 71.
        ].
        recoveredBlock32Step = 71 ifTrue: [
            recoveredBlock32Stack2 := recoveredBlock32Local2.
            recoveredBlock32PC := 72.
        ].
        recoveredBlock32Step = 72 ifTrue: [
            recoveredBlock32Stack2 := (recoveredBlock32Stack2) isString.
            recoveredBlock32PC := 74.
        ].
        recoveredBlock32Step = 74 ifTrue: [
            (recoveredBlock32Stack2) ifTrue: [recoveredBlock32PC := 78] ifFalse: [recoveredBlock32PC := 94].
        ].
        recoveredBlock32Step = 78 ifTrue: [
            recoveredBlock32Stack2 := recoveredBlock32Local2.
            recoveredBlock32PC := 79.
        ].
        recoveredBlock32Step = 79 ifTrue: [
            recoveredBlock32Stack2 := (recoveredBlock32Stack2) isReadOnly.
            recoveredBlock32PC := 81.
        ].
        recoveredBlock32Step = 81 ifTrue: [
            (recoveredBlock32Stack2) ifTrue: [recoveredBlock32PC := 94] ifFalse: [recoveredBlock32PC := 84].
        ].
        recoveredBlock32Step = 84 ifTrue: [
            recoveredBlock32Stack2 := recoveredLocal1.
            recoveredBlock32PC := 87.
        ].
        recoveredBlock32Step = 87 ifTrue: [
            recoveredBlock32Stack3 := recoveredBlock32Local2.
            recoveredBlock32PC := 88.
        ].
        recoveredBlock32Step = 88 ifTrue: [
            (recoveredBlock32Stack2) primTranslateInPlace: (recoveredBlock32Stack3).
            recoveredBlock32PC := 90.
        ].
        recoveredBlock32Step = 90 ifTrue: [
            recoveredBlock32PC := 101.
        ].
        recoveredBlock32Step = 94 ifTrue: [
            recoveredBlock32Stack2 := recoveredLocal1.
            recoveredBlock32PC := 97.
        ].
        recoveredBlock32Step = 97 ifTrue: [
            recoveredBlock32Stack3 := recoveredBlock32Local2.
            recoveredBlock32PC := 98.
        ].
        recoveredBlock32Step = 98 ifTrue: [
            recoveredBlock32Stack2 := (recoveredBlock32Stack2) primTranslate: (recoveredBlock32Stack3).
            recoveredBlock32PC := 100.
        ].
        recoveredBlock32Step = 100 ifTrue: [
            recoveredBlock32Local2 := recoveredBlock32Stack2.
            recoveredBlock32PC := 101.
        ].
        recoveredBlock32Step = 101 ifTrue: [
            recoveredBlock32Stack2 := recoveredBlock32Local3.
            recoveredBlock32PC := 102.
        ].
        recoveredBlock32Step = 102 ifTrue: [
            recoveredBlock32Stack3 := recoveredBlock32Local1.
            recoveredBlock32PC := 103.
        ].
        recoveredBlock32Step = 103 ifTrue: [
            recoveredBlock32Stack4 := recoveredBlock32Local2.
            recoveredBlock32PC := 104.
        ].
        recoveredBlock32Step = 104 ifTrue: [
            (recoveredBlock32Stack2) at: (recoveredBlock32Stack3) put: (recoveredBlock32Stack4).
            recoveredBlock32PC := 106.
        ].
        recoveredBlock32Step = 106 ifTrue: [
            (recoveredBlock32Stack1 isInteger and: [recoveredBlock32Local1 isInteger]) ifTrue: [(recoveredBlock32Local1 + 1 <= recoveredBlock32Stack1) ifTrue: [recoveredBlock32Local1 := recoveredBlock32Local1 + 1. recoveredBlock32PC := 66] ifFalse: [recoveredBlock32Local1 := nil. recoveredBlock32PC := 120]] ifFalse: [recoveredBlock32PC := 110].
        ].
        recoveredBlock32Step = 110 ifTrue: [
            recoveredBlock32Stack2 := recoveredBlock32Stack1.
            recoveredBlock32PC := 111.
        ].
        recoveredBlock32Step = 111 ifTrue: [
            recoveredBlock32Stack3 := recoveredBlock32Local1.
            recoveredBlock32PC := 112.
        ].
        recoveredBlock32Step = 112 ifTrue: [
            recoveredBlock32Stack3 := (recoveredBlock32Stack3) + (1).
            recoveredBlock32PC := 113.
        ].
        recoveredBlock32Step = 113 ifTrue: [
            recoveredBlock32Stack4 := recoveredBlock32Stack3.
            recoveredBlock32PC := 114.
        ].
        recoveredBlock32Step = 114 ifTrue: [
            recoveredBlock32Local1 := recoveredBlock32Stack4.
            recoveredBlock32PC := 115.
        ].
        recoveredBlock32Step = 115 ifTrue: [
            recoveredBlock32Stack2 := (recoveredBlock32Stack2) < (recoveredBlock32Stack3).
            recoveredBlock32PC := 116.
        ].
        recoveredBlock32Step = 116 ifTrue: [
            (recoveredBlock32Stack2) ifTrue: [recoveredBlock32PC := 118] ifFalse: [recoveredBlock32PC := 66].
        ].
        recoveredBlock32Step = 118 ifTrue: [
            recoveredBlock32Stack2 := nil.
            recoveredBlock32PC := 119.
        ].
        recoveredBlock32Step = 119 ifTrue: [
            recoveredBlock32Local1 := recoveredBlock32Stack2.
            recoveredBlock32PC := 120.
        ].
        recoveredBlock32Step = 120 ifTrue: [
            recoveredBlock32PC := 121.
        ].
        recoveredBlock32Step = 121 ifTrue: [
            recoveredBlock32Stack0 := (recoveredBlock32Stack0) partStrings.
            recoveredBlock32PC := 123.
        ].
        recoveredBlock32Step = 123 ifTrue: [
            recoveredBlock32Stack1 := recoveredBlock32Arg1.
            recoveredBlock32PC := 125.
        ].
        recoveredBlock32Step = 125 ifTrue: [
            recoveredBlock32Stack1 := (recoveredBlock32Stack1) key.
            recoveredBlock32PC := 127.
        ].
        recoveredBlock32Step = 127 ifTrue: [
            recoveredBlock32Stack2 := recoveredBlock32Local3.
            recoveredBlock32PC := 128.
        ].
        recoveredBlock32Step = 128 ifTrue: [
            recoveredBlock32Stack0 := (recoveredBlock32Stack0) at: (recoveredBlock32Stack1) put: (recoveredBlock32Stack2).
            recoveredBlock32PC := 130.
        ].
        recoveredBlock32Step = 130 ifTrue: [
            recoveredBlock32Result := recoveredBlock32Stack0.
            recoveredBlock32Done := true.
        ].
    ].
    recoveredBlock32Result
].
    (recoveredValue6) do: (recoveredValue7).
    ^self
! !

"abtdbf.ic method 0x20002c24; bytecode file offset 0x917c"
!AbtNlsGroup methodsFor: 'recovered'!
relocalizeSeparatedConstants: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := AbtNlsSpt_MprLanguageKey.
    recoveredValue2 := AbtNlsSpt_MprTerritoryKey_ForGui.
    recoveredValue3 := AbtNlsSpt_MprCharSetKey_ForGui.
    recoveredValue4 := (recoveredValue0) loadLanguage: (recoveredValue1) territory: (recoveredValue2) characterSet: (recoveredValue3) index: (1).
    recoveredLocal2 := recoveredValue4.
    recoveredValue5 := (self) translator.
    recoveredLocal1 := recoveredValue5.
    recoveredValue6 := recoveredLocal2.
    recoveredValue7 := [:recoveredBlock29Arg1 | 
    | recoveredBlock29Local1 recoveredBlock29Local2 recoveredBlock29Local3 recoveredBlock29Local4 recoveredBlock29Stack0 recoveredBlock29Stack1 recoveredBlock29Stack2 recoveredBlock29Stack3 recoveredBlock29Stack4 recoveredBlock29Stack5 recoveredBlock29PC recoveredBlock29Step recoveredBlock29Done recoveredBlock29Result |
    recoveredBlock29Stack0 := self.
    recoveredBlock29PC := 36.
    recoveredBlock29Done := false.
    [recoveredBlock29Done not] whileTrue: [
        recoveredBlock29Step := recoveredBlock29PC.
        recoveredBlock29Step = 36 ifTrue: [
            recoveredBlock29Stack1 := EsImageStartUp.
            recoveredBlock29PC := 38.
        ].
        recoveredBlock29Step = 38 ifTrue: [
            recoveredBlock29Stack1 := (recoveredBlock29Stack1) image.
            recoveredBlock29PC := 40.
        ].
        recoveredBlock29Step = 40 ifTrue: [
            recoveredBlock29Stack1 := (recoveredBlock29Stack1) globalNamespace.
            recoveredBlock29PC := 42.
        ].
        recoveredBlock29Step = 42 ifTrue: [
            recoveredBlock29Stack2 := recoveredBlock29Arg1.
            recoveredBlock29PC := 44.
        ].
        recoveredBlock29Step = 44 ifTrue: [
            recoveredBlock29Stack2 := (recoveredBlock29Stack2) key.
            recoveredBlock29PC := 46.
        ].
        recoveredBlock29Step = 46 ifTrue: [
            recoveredBlock29Stack2 := (recoveredBlock29Stack2) asSymbol.
            recoveredBlock29PC := 48.
        ].
        recoveredBlock29Step = 48 ifTrue: [
            recoveredBlock29Stack3 := [].
            recoveredBlock29PC := 50.
        ].
        recoveredBlock29Step = 50 ifTrue: [
            recoveredBlock29Stack1 := (recoveredBlock29Stack1) classAt: (recoveredBlock29Stack2) ifAbsent: (recoveredBlock29Stack3).
            recoveredBlock29PC := 52.
        ].
        recoveredBlock29Step = 52 ifTrue: [
            recoveredBlock29Local4 := recoveredBlock29Stack1.
            recoveredBlock29PC := 53.
        ].
        recoveredBlock29Step = 53 ifTrue: [
            recoveredBlock29Stack1 := nil.
            recoveredBlock29PC := 54.
        ].
        recoveredBlock29Step = 54 ifTrue: [
            recoveredBlock29Stack2 := recoveredBlock29Local4.
            recoveredBlock29PC := 55.
        ].
        recoveredBlock29Step = 55 ifTrue: [
            (recoveredBlock29Stack2 == nil) ifTrue: [recoveredBlock29PC := 145] ifFalse: [recoveredBlock29PC := 58].
        ].
        recoveredBlock29Step = 58 ifTrue: [
            recoveredBlock29PC := 59.
        ].
        recoveredBlock29Step = 59 ifTrue: [
            recoveredBlock29Stack1 := recoveredBlock29Arg1.
            recoveredBlock29PC := 61.
        ].
        recoveredBlock29Step = 61 ifTrue: [
            recoveredBlock29Stack1 := (recoveredBlock29Stack1) value.
            recoveredBlock29PC := 63.
        ].
        recoveredBlock29Step = 63 ifTrue: [
            recoveredBlock29Local3 := recoveredBlock29Stack1.
            recoveredBlock29PC := 64.
        ].
        recoveredBlock29Step = 64 ifTrue: [
            recoveredBlock29Stack1 := recoveredLocal1.
            recoveredBlock29PC := 67.
        ].
        recoveredBlock29Step = 67 ifTrue: [
            recoveredBlock29Stack1 := (recoveredBlock29Stack1) translationNeeded.
            recoveredBlock29PC := 69.
        ].
        recoveredBlock29Step = 69 ifTrue: [
            (recoveredBlock29Stack1) ifTrue: [recoveredBlock29PC := 72] ifFalse: [recoveredBlock29PC := 141].
        ].
        recoveredBlock29Step = 72 ifTrue: [
            recoveredBlock29Stack1 := recoveredBlock29Local3.
            recoveredBlock29PC := 73.
        ].
        recoveredBlock29Step = 73 ifTrue: [
            recoveredBlock29Stack2 := false.
            recoveredBlock29PC := 74.
        ].
        recoveredBlock29Step = 74 ifTrue: [
            (recoveredBlock29Stack1) markReadOnly: (recoveredBlock29Stack2).
            recoveredBlock29PC := 76.
        ].
        recoveredBlock29Step = 76 ifTrue: [
            recoveredBlock29Stack1 := 0.
            recoveredBlock29PC := 78.
        ].
        recoveredBlock29Step = 78 ifTrue: [
            recoveredBlock29Local1 := recoveredBlock29Stack1.
            recoveredBlock29PC := 79.
        ].
        recoveredBlock29Step = 79 ifTrue: [
            recoveredBlock29Stack1 := recoveredBlock29Local3.
            recoveredBlock29PC := 80.
        ].
        recoveredBlock29Step = 80 ifTrue: [
            recoveredBlock29Stack1 := (recoveredBlock29Stack1) size.
            recoveredBlock29PC := 82.
        ].
        recoveredBlock29Step = 82 ifTrue: [
            recoveredBlock29PC := 126.
        ].
        recoveredBlock29Step = 86 ifTrue: [
            recoveredBlock29Stack2 := recoveredBlock29Local3.
            recoveredBlock29PC := 87.
        ].
        recoveredBlock29Step = 87 ifTrue: [
            recoveredBlock29Stack3 := recoveredBlock29Local1.
            recoveredBlock29PC := 88.
        ].
        recoveredBlock29Step = 88 ifTrue: [
            recoveredBlock29Stack2 := (recoveredBlock29Stack2) at: (recoveredBlock29Stack3).
            recoveredBlock29PC := 90.
        ].
        recoveredBlock29Step = 90 ifTrue: [
            recoveredBlock29Local2 := recoveredBlock29Stack2.
            recoveredBlock29PC := 91.
        ].
        recoveredBlock29Step = 91 ifTrue: [
            recoveredBlock29Stack2 := recoveredBlock29Local2.
            recoveredBlock29PC := 92.
        ].
        recoveredBlock29Step = 92 ifTrue: [
            recoveredBlock29Stack2 := (recoveredBlock29Stack2) isString.
            recoveredBlock29PC := 94.
        ].
        recoveredBlock29Step = 94 ifTrue: [
            (recoveredBlock29Stack2) ifTrue: [recoveredBlock29PC := 98] ifFalse: [recoveredBlock29PC := 114].
        ].
        recoveredBlock29Step = 98 ifTrue: [
            recoveredBlock29Stack2 := recoveredBlock29Local2.
            recoveredBlock29PC := 99.
        ].
        recoveredBlock29Step = 99 ifTrue: [
            recoveredBlock29Stack2 := (recoveredBlock29Stack2) isReadOnly.
            recoveredBlock29PC := 101.
        ].
        recoveredBlock29Step = 101 ifTrue: [
            (recoveredBlock29Stack2) ifTrue: [recoveredBlock29PC := 114] ifFalse: [recoveredBlock29PC := 104].
        ].
        recoveredBlock29Step = 104 ifTrue: [
            recoveredBlock29Stack2 := recoveredLocal1.
            recoveredBlock29PC := 107.
        ].
        recoveredBlock29Step = 107 ifTrue: [
            recoveredBlock29Stack3 := recoveredBlock29Local2.
            recoveredBlock29PC := 108.
        ].
        recoveredBlock29Step = 108 ifTrue: [
            (recoveredBlock29Stack2) primTranslateInPlace: (recoveredBlock29Stack3).
            recoveredBlock29PC := 110.
        ].
        recoveredBlock29Step = 110 ifTrue: [
            recoveredBlock29PC := 121.
        ].
        recoveredBlock29Step = 114 ifTrue: [
            recoveredBlock29Stack2 := recoveredLocal1.
            recoveredBlock29PC := 117.
        ].
        recoveredBlock29Step = 117 ifTrue: [
            recoveredBlock29Stack3 := recoveredBlock29Local2.
            recoveredBlock29PC := 118.
        ].
        recoveredBlock29Step = 118 ifTrue: [
            recoveredBlock29Stack2 := (recoveredBlock29Stack2) primTranslate: (recoveredBlock29Stack3).
            recoveredBlock29PC := 120.
        ].
        recoveredBlock29Step = 120 ifTrue: [
            recoveredBlock29Local2 := recoveredBlock29Stack2.
            recoveredBlock29PC := 121.
        ].
        recoveredBlock29Step = 121 ifTrue: [
            recoveredBlock29Stack2 := recoveredBlock29Local3.
            recoveredBlock29PC := 122.
        ].
        recoveredBlock29Step = 122 ifTrue: [
            recoveredBlock29Stack3 := recoveredBlock29Local1.
            recoveredBlock29PC := 123.
        ].
        recoveredBlock29Step = 123 ifTrue: [
            recoveredBlock29Stack4 := recoveredBlock29Local2.
            recoveredBlock29PC := 124.
        ].
        recoveredBlock29Step = 124 ifTrue: [
            (recoveredBlock29Stack2) at: (recoveredBlock29Stack3) put: (recoveredBlock29Stack4).
            recoveredBlock29PC := 126.
        ].
        recoveredBlock29Step = 126 ifTrue: [
            (recoveredBlock29Stack1 isInteger and: [recoveredBlock29Local1 isInteger]) ifTrue: [(recoveredBlock29Local1 + 1 <= recoveredBlock29Stack1) ifTrue: [recoveredBlock29Local1 := recoveredBlock29Local1 + 1. recoveredBlock29PC := 86] ifFalse: [recoveredBlock29Local1 := nil. recoveredBlock29PC := 140]] ifFalse: [recoveredBlock29PC := 130].
        ].
        recoveredBlock29Step = 130 ifTrue: [
            recoveredBlock29Stack2 := recoveredBlock29Stack1.
            recoveredBlock29PC := 131.
        ].
        recoveredBlock29Step = 131 ifTrue: [
            recoveredBlock29Stack3 := recoveredBlock29Local1.
            recoveredBlock29PC := 132.
        ].
        recoveredBlock29Step = 132 ifTrue: [
            recoveredBlock29Stack3 := (recoveredBlock29Stack3) + (1).
            recoveredBlock29PC := 133.
        ].
        recoveredBlock29Step = 133 ifTrue: [
            recoveredBlock29Stack4 := recoveredBlock29Stack3.
            recoveredBlock29PC := 134.
        ].
        recoveredBlock29Step = 134 ifTrue: [
            recoveredBlock29Local1 := recoveredBlock29Stack4.
            recoveredBlock29PC := 135.
        ].
        recoveredBlock29Step = 135 ifTrue: [
            recoveredBlock29Stack2 := (recoveredBlock29Stack2) < (recoveredBlock29Stack3).
            recoveredBlock29PC := 136.
        ].
        recoveredBlock29Step = 136 ifTrue: [
            (recoveredBlock29Stack2) ifTrue: [recoveredBlock29PC := 138] ifFalse: [recoveredBlock29PC := 86].
        ].
        recoveredBlock29Step = 138 ifTrue: [
            recoveredBlock29Stack2 := nil.
            recoveredBlock29PC := 139.
        ].
        recoveredBlock29Step = 139 ifTrue: [
            recoveredBlock29Local1 := recoveredBlock29Stack2.
            recoveredBlock29PC := 140.
        ].
        recoveredBlock29Step = 140 ifTrue: [
            recoveredBlock29PC := 141.
        ].
        recoveredBlock29Step = 141 ifTrue: [
            recoveredBlock29Stack1 := recoveredBlock29Local4.
            recoveredBlock29PC := 142.
        ].
        recoveredBlock29Step = 142 ifTrue: [
            recoveredBlock29Stack2 := recoveredBlock29Local3.
            recoveredBlock29PC := 143.
        ].
        recoveredBlock29Step = 143 ifTrue: [
            recoveredBlock29Stack1 := (recoveredBlock29Stack1) abtSeparatedConstants: (recoveredBlock29Stack2).
            recoveredBlock29PC := 145.
        ].
        recoveredBlock29Step = 145 ifTrue: [
            recoveredBlock29Result := recoveredBlock29Stack1.
            recoveredBlock29Done := true.
        ].
    ].
    recoveredBlock29Result
].
    (recoveredValue6) do: (recoveredValue7).
    ^self
! !

"abtdbf.ic method 0x20002d24; bytecode file offset 0x927c"
!AbtNlsGroup methodsFor: 'recovered'!
gatherPoolDictionaries: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            (recoveredStack0) resetPoolStrings.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) hiddenMessageIdentifiers.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := #(268441234 nil 59 8388611 nil nil).
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := (recoveredStack0) select: (recoveredStack1).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := [:recoveredBlock30Arg1 | 
    | recoveredBlock30Local1 recoveredBlock30Local2 recoveredBlock30Local3 recoveredBlock30Stack0 recoveredBlock30Stack1 recoveredBlock30Stack2 recoveredBlock30Stack3 recoveredBlock30Stack4 recoveredBlock30Stack5 recoveredBlock30Stack6 recoveredBlock30PC recoveredBlock30Step recoveredBlock30Done recoveredBlock30Result |
    recoveredBlock30Stack0 := self.
    recoveredBlock30PC := 36.
    recoveredBlock30Done := false.
    [recoveredBlock30Done not] whileTrue: [
        recoveredBlock30Step := recoveredBlock30PC.
        recoveredBlock30Step = 36 ifTrue: [
            recoveredBlock30Stack1 := recoveredBlock30Arg1.
            recoveredBlock30PC := 39.
        ].
        recoveredBlock30Step = 39 ifTrue: [
            recoveredBlock30Stack2 := AbtNlsKrnCfsTriplePoolNameNdx.
            recoveredBlock30PC := 41.
        ].
        recoveredBlock30Step = 41 ifTrue: [
            recoveredBlock30Stack1 := (recoveredBlock30Stack1) at: (recoveredBlock30Stack2).
            recoveredBlock30PC := 43.
        ].
        recoveredBlock30Step = 43 ifTrue: [
            recoveredBlock30Local2 := recoveredBlock30Stack1.
            recoveredBlock30PC := 46.
        ].
        recoveredBlock30Step = 46 ifTrue: [
            recoveredBlock30Stack1 := recoveredArg1.
            recoveredBlock30PC := 49.
        ].
        recoveredBlock30Step = 49 ifTrue: [
            recoveredBlock30Stack2 := recoveredBlock30Arg1.
            recoveredBlock30PC := 52.
        ].
        recoveredBlock30Step = 52 ifTrue: [
            recoveredBlock30Stack3 := AbtNlsKrnCfsTripleLanguageNdx.
            recoveredBlock30PC := 54.
        ].
        recoveredBlock30Step = 54 ifTrue: [
            recoveredBlock30Stack2 := (recoveredBlock30Stack2) at: (recoveredBlock30Stack3).
            recoveredBlock30PC := 56.
        ].
        recoveredBlock30Step = 56 ifTrue: [
            recoveredBlock30Stack3 := recoveredBlock30Arg1.
            recoveredBlock30PC := 59.
        ].
        recoveredBlock30Step = 59 ifTrue: [
            recoveredBlock30Stack4 := AbtNlsKrnCfsTripleTerritoryNdx.
            recoveredBlock30PC := 61.
        ].
        recoveredBlock30Step = 61 ifTrue: [
            recoveredBlock30Stack3 := (recoveredBlock30Stack3) at: (recoveredBlock30Stack4).
            recoveredBlock30PC := 63.
        ].
        recoveredBlock30Step = 63 ifTrue: [
            recoveredBlock30Stack4 := recoveredBlock30Arg1.
            recoveredBlock30PC := 66.
        ].
        recoveredBlock30Step = 66 ifTrue: [
            recoveredBlock30Stack5 := AbtNlsKrnCfsTripleCharsetNdx.
            recoveredBlock30PC := 68.
        ].
        recoveredBlock30Step = 68 ifTrue: [
            recoveredBlock30Stack4 := (recoveredBlock30Stack4) at: (recoveredBlock30Stack5).
            recoveredBlock30PC := 70.
        ].
        recoveredBlock30Step = 70 ifTrue: [
            recoveredBlock30Stack5 := 1.
            recoveredBlock30PC := 72.
        ].
        recoveredBlock30Step = 72 ifTrue: [
            recoveredBlock30Stack1 := (recoveredBlock30Stack1) loadLanguage: (recoveredBlock30Stack2) territory: (recoveredBlock30Stack3) characterSet: (recoveredBlock30Stack4) index: (recoveredBlock30Stack5).
            recoveredBlock30PC := 75.
        ].
        recoveredBlock30Step = 75 ifTrue: [
            recoveredBlock30Stack1 := (recoveredBlock30Stack1) asArray.
            recoveredBlock30PC := 77.
        ].
        recoveredBlock30Step = 77 ifTrue: [
            recoveredBlock30Local3 := recoveredBlock30Stack1.
            recoveredBlock30PC := 80.
        ].
        recoveredBlock30Step = 80 ifTrue: [
            recoveredBlock30Stack0 := (recoveredBlock30Stack0) poolStrings.
            recoveredBlock30PC := 82.
        ].
        recoveredBlock30Step = 82 ifTrue: [
            recoveredBlock30Stack1 := recoveredBlock30Local2.
            recoveredBlock30PC := 85.
        ].
        recoveredBlock30Step = 85 ifTrue: [
            recoveredBlock30Stack2 := recoveredBlock30Local3.
            recoveredBlock30PC := 88.
        ].
        recoveredBlock30Step = 88 ifTrue: [
            (recoveredBlock30Stack0) at: (recoveredBlock30Stack1) put: (recoveredBlock30Stack2).
            recoveredBlock30PC := 90.
        ].
        recoveredBlock30Step = 90 ifTrue: [
            recoveredBlock30Stack0 := self.
            recoveredBlock30PC := 91.
        ].
        recoveredBlock30Step = 91 ifTrue: [
            recoveredBlock30Stack0 := (recoveredBlock30Stack0) translator.
            recoveredBlock30PC := 93.
        ].
        recoveredBlock30Step = 93 ifTrue: [
            recoveredBlock30Stack1 := recoveredBlock30Stack0.
            recoveredBlock30PC := 94.
        ].
        recoveredBlock30Step = 94 ifTrue: [
            recoveredBlock30Local1 := recoveredBlock30Stack1.
            recoveredBlock30PC := 97.
        ].
        recoveredBlock30Step = 97 ifTrue: [
            recoveredBlock30Stack0 := (recoveredBlock30Stack0) translationNeeded.
            recoveredBlock30PC := 99.
        ].
        recoveredBlock30Step = 99 ifTrue: [
            (recoveredBlock30Stack0) ifTrue: [recoveredBlock30PC := 102] ifFalse: [recoveredBlock30PC := 154].
        ].
        recoveredBlock30Step = 102 ifTrue: [
            recoveredBlock30Stack0 := recoveredBlock30Local3.
            recoveredBlock30PC := 105.
        ].
        recoveredBlock30Step = 105 ifTrue: [
            recoveredBlock30Stack1 := [:recoveredBlock30Block105Arg1 | 
    | recoveredBlock30Block105Local1 recoveredBlock30Block105Stack0 recoveredBlock30Block105Stack1 recoveredBlock30Block105Stack2 recoveredBlock30Block105Stack3 recoveredBlock30Block105Stack4 recoveredBlock30Block105PC recoveredBlock30Block105Step recoveredBlock30Block105Done recoveredBlock30Block105Result |
    recoveredBlock30Block105Stack0 := nil.
    recoveredBlock30Block105PC := 112.
    recoveredBlock30Block105Done := false.
    [recoveredBlock30Block105Done not] whileTrue: [
        recoveredBlock30Block105Step := recoveredBlock30Block105PC.
        recoveredBlock30Block105Step = 112 ifTrue: [
            recoveredBlock30Block105Stack1 := recoveredBlock30Block105Arg1.
            recoveredBlock30Block105PC := 113.
        ].
        recoveredBlock30Block105Step = 113 ifTrue: [
            recoveredBlock30Block105Stack1 := (recoveredBlock30Block105Stack1) value.
            recoveredBlock30Block105PC := 115.
        ].
        recoveredBlock30Block105Step = 115 ifTrue: [
            recoveredBlock30Block105Local1 := recoveredBlock30Block105Stack1.
            recoveredBlock30Block105PC := 116.
        ].
        recoveredBlock30Block105Step = 116 ifTrue: [
            recoveredBlock30Block105Stack1 := recoveredBlock30Block105Local1.
            recoveredBlock30Block105PC := 117.
        ].
        recoveredBlock30Block105Step = 117 ifTrue: [
            recoveredBlock30Block105Stack1 := (recoveredBlock30Block105Stack1) isString.
            recoveredBlock30Block105PC := 119.
        ].
        recoveredBlock30Block105Step = 119 ifTrue: [
            (recoveredBlock30Block105Stack1) ifTrue: [recoveredBlock30Block105PC := 122] ifFalse: [recoveredBlock30Block105PC := 138].
        ].
        recoveredBlock30Block105Step = 122 ifTrue: [
            recoveredBlock30Block105Stack1 := recoveredBlock30Block105Local1.
            recoveredBlock30Block105PC := 123.
        ].
        recoveredBlock30Block105Step = 123 ifTrue: [
            recoveredBlock30Block105Stack1 := (recoveredBlock30Block105Stack1) isReadOnly.
            recoveredBlock30Block105PC := 125.
        ].
        recoveredBlock30Block105Step = 125 ifTrue: [
            (recoveredBlock30Block105Stack1) ifTrue: [recoveredBlock30Block105PC := 138] ifFalse: [recoveredBlock30Block105PC := 128].
        ].
        recoveredBlock30Block105Step = 128 ifTrue: [
            recoveredBlock30Block105Stack1 := recoveredBlock30Local1.
            recoveredBlock30Block105PC := 131.
        ].
        recoveredBlock30Block105Step = 131 ifTrue: [
            recoveredBlock30Block105Stack2 := recoveredBlock30Block105Local1.
            recoveredBlock30Block105PC := 132.
        ].
        recoveredBlock30Block105Step = 132 ifTrue: [
            recoveredBlock30Block105Stack1 := (recoveredBlock30Block105Stack1) primTranslateInPlace: (recoveredBlock30Block105Stack2).
            recoveredBlock30Block105PC := 134.
        ].
        recoveredBlock30Block105Step = 134 ifTrue: [
            recoveredBlock30Block105PC := 147.
        ].
        recoveredBlock30Block105Step = 138 ifTrue: [
            recoveredBlock30Block105Stack1 := recoveredBlock30Block105Arg1.
            recoveredBlock30Block105PC := 139.
        ].
        recoveredBlock30Block105Step = 139 ifTrue: [
            recoveredBlock30Block105Stack2 := recoveredBlock30Local1.
            recoveredBlock30Block105PC := 142.
        ].
        recoveredBlock30Block105Step = 142 ifTrue: [
            recoveredBlock30Block105Stack3 := recoveredBlock30Block105Local1.
            recoveredBlock30Block105PC := 143.
        ].
        recoveredBlock30Block105Step = 143 ifTrue: [
            recoveredBlock30Block105Stack2 := (recoveredBlock30Block105Stack2) primTranslate: (recoveredBlock30Block105Stack3).
            recoveredBlock30Block105PC := 145.
        ].
        recoveredBlock30Block105Step = 145 ifTrue: [
            recoveredBlock30Block105Stack1 := (recoveredBlock30Block105Stack1) value: (recoveredBlock30Block105Stack2).
            recoveredBlock30Block105PC := 147.
        ].
        recoveredBlock30Block105Step = 147 ifTrue: [
            recoveredBlock30Block105Result := recoveredBlock30Block105Stack1.
            recoveredBlock30Block105Done := true.
        ].
    ].
    recoveredBlock30Block105Result
].
            recoveredBlock30PC := 148.
        ].
        recoveredBlock30Step = 148 ifTrue: [
            recoveredBlock30Stack0 := (recoveredBlock30Stack0) do: (recoveredBlock30Stack1).
            recoveredBlock30PC := 150.
        ].
        recoveredBlock30Step = 150 ifTrue: [
            recoveredBlock30PC := 155.
        ].
        recoveredBlock30Step = 154 ifTrue: [
            recoveredBlock30Stack0 := nil.
            recoveredBlock30PC := 155.
        ].
        recoveredBlock30Step = 155 ifTrue: [
            recoveredBlock30Result := recoveredBlock30Stack0.
            recoveredBlock30Done := true.
        ].
    ].
    recoveredBlock30Result
].
            recoveredPC := 156.
        ].
        recoveredStep = 156 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 158.
        ].
        recoveredStep = 158 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 159.
        ].
        recoveredStep = 159 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"abtdbf.ic method 0x2000310c; bytecode file offset 0x966c"
!AbtNlsGroup methodsFor: 'recovered'!
relocalizePoolDictionaries: recoveredArg1
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
            recoveredStack1 := (recoveredStack1) hiddenMessageIdentifiers.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack2 := #(268441734 nil 62 8388611 nil nil).
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := (recoveredStack1) select: (recoveredStack2).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack2 := [:recoveredBlock28Arg1 | 
    | recoveredBlock28Local1 recoveredBlock28Local2 recoveredBlock28Local3 recoveredBlock28Stack0 recoveredBlock28Stack1 recoveredBlock28Stack2 recoveredBlock28Stack3 recoveredBlock28Stack4 recoveredBlock28Stack5 recoveredBlock28Stack6 recoveredBlock28PC recoveredBlock28Step recoveredBlock28Done recoveredBlock28Result |
    recoveredBlock28Stack0 := self.
    recoveredBlock28PC := 34.
    recoveredBlock28Done := false.
    [recoveredBlock28Done not] whileTrue: [
        recoveredBlock28Step := recoveredBlock28PC.
        recoveredBlock28Step = 34 ifTrue: [
            recoveredBlock28Stack1 := EsImageStartUp.
            recoveredBlock28PC := 36.
        ].
        recoveredBlock28Step = 36 ifTrue: [
            recoveredBlock28Stack1 := (recoveredBlock28Stack1) image.
            recoveredBlock28PC := 38.
        ].
        recoveredBlock28Step = 38 ifTrue: [
            recoveredBlock28Stack1 := (recoveredBlock28Stack1) globalNamespace.
            recoveredBlock28PC := 40.
        ].
        recoveredBlock28Step = 40 ifTrue: [
            recoveredBlock28Stack2 := recoveredBlock28Arg1.
            recoveredBlock28PC := 43.
        ].
        recoveredBlock28Step = 43 ifTrue: [
            recoveredBlock28Stack3 := AbtNlsKrnCfsTriplePoolNameNdx.
            recoveredBlock28PC := 45.
        ].
        recoveredBlock28Step = 45 ifTrue: [
            recoveredBlock28Stack2 := (recoveredBlock28Stack2) at: (recoveredBlock28Stack3).
            recoveredBlock28PC := 47.
        ].
        recoveredBlock28Step = 47 ifTrue: [
            recoveredBlock28Stack2 := (recoveredBlock28Stack2) asSymbol.
            recoveredBlock28PC := 49.
        ].
        recoveredBlock28Step = 49 ifTrue: [
            recoveredBlock28Stack1 := (recoveredBlock28Stack1) declarePoolDictionary: (recoveredBlock28Stack2).
            recoveredBlock28PC := 51.
        ].
        recoveredBlock28Step = 51 ifTrue: [
            recoveredBlock28Stack1 := (recoveredBlock28Stack1) value.
            recoveredBlock28PC := 53.
        ].
        recoveredBlock28Step = 53 ifTrue: [
            recoveredBlock28Local2 := recoveredBlock28Stack1.
            recoveredBlock28PC := 56.
        ].
        recoveredBlock28Step = 56 ifTrue: [
            recoveredBlock28Stack1 := recoveredArg1.
            recoveredBlock28PC := 59.
        ].
        recoveredBlock28Step = 59 ifTrue: [
            recoveredBlock28Stack2 := recoveredBlock28Arg1.
            recoveredBlock28PC := 62.
        ].
        recoveredBlock28Step = 62 ifTrue: [
            recoveredBlock28Stack3 := AbtNlsKrnCfsTripleLanguageNdx.
            recoveredBlock28PC := 64.
        ].
        recoveredBlock28Step = 64 ifTrue: [
            recoveredBlock28Stack2 := (recoveredBlock28Stack2) at: (recoveredBlock28Stack3).
            recoveredBlock28PC := 66.
        ].
        recoveredBlock28Step = 66 ifTrue: [
            recoveredBlock28Stack3 := recoveredBlock28Arg1.
            recoveredBlock28PC := 69.
        ].
        recoveredBlock28Step = 69 ifTrue: [
            recoveredBlock28Stack4 := AbtNlsKrnCfsTripleTerritoryNdx.
            recoveredBlock28PC := 71.
        ].
        recoveredBlock28Step = 71 ifTrue: [
            recoveredBlock28Stack3 := (recoveredBlock28Stack3) at: (recoveredBlock28Stack4).
            recoveredBlock28PC := 73.
        ].
        recoveredBlock28Step = 73 ifTrue: [
            recoveredBlock28Stack4 := recoveredBlock28Arg1.
            recoveredBlock28PC := 76.
        ].
        recoveredBlock28Step = 76 ifTrue: [
            recoveredBlock28Stack5 := AbtNlsKrnCfsTripleCharsetNdx.
            recoveredBlock28PC := 78.
        ].
        recoveredBlock28Step = 78 ifTrue: [
            recoveredBlock28Stack4 := (recoveredBlock28Stack4) at: (recoveredBlock28Stack5).
            recoveredBlock28PC := 80.
        ].
        recoveredBlock28Step = 80 ifTrue: [
            recoveredBlock28Stack5 := 1.
            recoveredBlock28PC := 82.
        ].
        recoveredBlock28Step = 82 ifTrue: [
            recoveredBlock28Stack1 := (recoveredBlock28Stack1) loadLanguage: (recoveredBlock28Stack2) territory: (recoveredBlock28Stack3) characterSet: (recoveredBlock28Stack4) index: (recoveredBlock28Stack5).
            recoveredBlock28PC := 85.
        ].
        recoveredBlock28Step = 85 ifTrue: [
            recoveredBlock28Local3 := recoveredBlock28Stack1.
            recoveredBlock28PC := 88.
        ].
        recoveredBlock28Step = 88 ifTrue: [
            recoveredBlock28Stack0 := (recoveredBlock28Stack0) translator.
            recoveredBlock28PC := 90.
        ].
        recoveredBlock28Step = 90 ifTrue: [
            recoveredBlock28Stack1 := recoveredBlock28Stack0.
            recoveredBlock28PC := 91.
        ].
        recoveredBlock28Step = 91 ifTrue: [
            recoveredBlock28Local1 := recoveredBlock28Stack1.
            recoveredBlock28PC := 94.
        ].
        recoveredBlock28Step = 94 ifTrue: [
            recoveredBlock28Stack0 := (recoveredBlock28Stack0) translationNeeded.
            recoveredBlock28PC := 96.
        ].
        recoveredBlock28Step = 96 ifTrue: [
            (recoveredBlock28Stack0) ifTrue: [recoveredBlock28PC := 100] ifFalse: [recoveredBlock28PC := 158].
        ].
        recoveredBlock28Step = 100 ifTrue: [
            recoveredBlock28Stack0 := recoveredBlock28Local3.
            recoveredBlock28PC := 103.
        ].
        recoveredBlock28Step = 103 ifTrue: [
            recoveredBlock28Stack1 := [:recoveredBlock28Block103Arg1 | 
    | recoveredBlock28Block103Local1 recoveredBlock28Block103Stack0 recoveredBlock28Block103Stack1 recoveredBlock28Block103Stack2 recoveredBlock28Block103Stack3 recoveredBlock28Block103Stack4 recoveredBlock28Block103PC recoveredBlock28Block103Step recoveredBlock28Block103Done recoveredBlock28Block103Result |
    recoveredBlock28Block103Stack0 := nil.
    recoveredBlock28Block103PC := 110.
    recoveredBlock28Block103Done := false.
    [recoveredBlock28Block103Done not] whileTrue: [
        recoveredBlock28Block103Step := recoveredBlock28Block103PC.
        recoveredBlock28Block103Step = 110 ifTrue: [
            recoveredBlock28Block103Stack1 := recoveredBlock28Block103Arg1.
            recoveredBlock28Block103PC := 111.
        ].
        recoveredBlock28Block103Step = 111 ifTrue: [
            recoveredBlock28Block103Stack1 := (recoveredBlock28Block103Stack1) value.
            recoveredBlock28Block103PC := 113.
        ].
        recoveredBlock28Block103Step = 113 ifTrue: [
            recoveredBlock28Block103Local1 := recoveredBlock28Block103Stack1.
            recoveredBlock28Block103PC := 114.
        ].
        recoveredBlock28Block103Step = 114 ifTrue: [
            recoveredBlock28Block103Stack1 := recoveredBlock28Block103Local1.
            recoveredBlock28Block103PC := 115.
        ].
        recoveredBlock28Block103Step = 115 ifTrue: [
            recoveredBlock28Block103Stack1 := (recoveredBlock28Block103Stack1) isString.
            recoveredBlock28Block103PC := 117.
        ].
        recoveredBlock28Block103Step = 117 ifTrue: [
            (recoveredBlock28Block103Stack1) ifTrue: [recoveredBlock28Block103PC := 120] ifFalse: [recoveredBlock28Block103PC := 136].
        ].
        recoveredBlock28Block103Step = 120 ifTrue: [
            recoveredBlock28Block103Stack1 := recoveredBlock28Block103Local1.
            recoveredBlock28Block103PC := 121.
        ].
        recoveredBlock28Block103Step = 121 ifTrue: [
            recoveredBlock28Block103Stack1 := (recoveredBlock28Block103Stack1) isReadOnly.
            recoveredBlock28Block103PC := 123.
        ].
        recoveredBlock28Block103Step = 123 ifTrue: [
            (recoveredBlock28Block103Stack1) ifTrue: [recoveredBlock28Block103PC := 136] ifFalse: [recoveredBlock28Block103PC := 126].
        ].
        recoveredBlock28Block103Step = 126 ifTrue: [
            recoveredBlock28Block103Stack1 := recoveredBlock28Local1.
            recoveredBlock28Block103PC := 129.
        ].
        recoveredBlock28Block103Step = 129 ifTrue: [
            recoveredBlock28Block103Stack2 := recoveredBlock28Block103Local1.
            recoveredBlock28Block103PC := 130.
        ].
        recoveredBlock28Block103Step = 130 ifTrue: [
            (recoveredBlock28Block103Stack1) primTranslateInPlace: (recoveredBlock28Block103Stack2).
            recoveredBlock28Block103PC := 132.
        ].
        recoveredBlock28Block103Step = 132 ifTrue: [
            recoveredBlock28Block103PC := 145.
        ].
        recoveredBlock28Block103Step = 136 ifTrue: [
            recoveredBlock28Block103Stack1 := recoveredBlock28Block103Arg1.
            recoveredBlock28Block103PC := 137.
        ].
        recoveredBlock28Block103Step = 137 ifTrue: [
            recoveredBlock28Block103Stack2 := recoveredBlock28Local1.
            recoveredBlock28Block103PC := 140.
        ].
        recoveredBlock28Block103Step = 140 ifTrue: [
            recoveredBlock28Block103Stack3 := recoveredBlock28Block103Local1.
            recoveredBlock28Block103PC := 141.
        ].
        recoveredBlock28Block103Step = 141 ifTrue: [
            recoveredBlock28Block103Stack2 := (recoveredBlock28Block103Stack2) primTranslate: (recoveredBlock28Block103Stack3).
            recoveredBlock28Block103PC := 143.
        ].
        recoveredBlock28Block103Step = 143 ifTrue: [
            (recoveredBlock28Block103Stack1) value: (recoveredBlock28Block103Stack2).
            recoveredBlock28Block103PC := 145.
        ].
        recoveredBlock28Block103Step = 145 ifTrue: [
            recoveredBlock28Block103Stack1 := recoveredBlock28Local2.
            recoveredBlock28Block103PC := 148.
        ].
        recoveredBlock28Block103Step = 148 ifTrue: [
            recoveredBlock28Block103Stack2 := recoveredBlock28Block103Arg1.
            recoveredBlock28Block103PC := 149.
        ].
        recoveredBlock28Block103Step = 149 ifTrue: [
            recoveredBlock28Block103Stack1 := (recoveredBlock28Block103Stack1) add: (recoveredBlock28Block103Stack2).
            recoveredBlock28Block103PC := 151.
        ].
        recoveredBlock28Block103Step = 151 ifTrue: [
            recoveredBlock28Block103Result := recoveredBlock28Block103Stack1.
            recoveredBlock28Block103Done := true.
        ].
    ].
    recoveredBlock28Block103Result
].
            recoveredBlock28PC := 152.
        ].
        recoveredBlock28Step = 152 ifTrue: [
            recoveredBlock28Stack0 := (recoveredBlock28Stack0) do: (recoveredBlock28Stack1).
            recoveredBlock28PC := 154.
        ].
        recoveredBlock28Step = 154 ifTrue: [
            recoveredBlock28PC := 177.
        ].
        recoveredBlock28Step = 158 ifTrue: [
            recoveredBlock28Stack0 := recoveredBlock28Local3.
            recoveredBlock28PC := 161.
        ].
        recoveredBlock28Step = 161 ifTrue: [
            recoveredBlock28Stack1 := [:recoveredBlock28Block161Arg1 | 
    | recoveredBlock28Block161Value0 recoveredBlock28Block161Value1 recoveredBlock28Block161Value2 |
    recoveredBlock28Block161Value0 := recoveredBlock28Local2.
    recoveredBlock28Block161Value1 := recoveredBlock28Block161Arg1.
    recoveredBlock28Block161Value2 := (recoveredBlock28Block161Value0) add: (recoveredBlock28Block161Value1).
    recoveredBlock28Block161Value2
].
            recoveredBlock28PC := 175.
        ].
        recoveredBlock28Step = 175 ifTrue: [
            recoveredBlock28Stack0 := (recoveredBlock28Stack0) do: (recoveredBlock28Stack1).
            recoveredBlock28PC := 177.
        ].
        recoveredBlock28Step = 177 ifTrue: [
            recoveredBlock28Result := recoveredBlock28Stack0.
            recoveredBlock28Done := true.
        ].
    ].
    recoveredBlock28Result
].
            recoveredPC := 178.
        ].
        recoveredStep = 178 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 180.
        ].
        recoveredStep = 180 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

