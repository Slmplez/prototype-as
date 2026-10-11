"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20018758; bytecode file offset 0x92209c"
!ASAP2AxisPoints methodsFor: 'recovered'!
getModuleSetMethod
    ^'addAxisPoint:'
! !

"ASDBase.ic method 0x2002327c; bytecode file offset 0x92209c"
!ASAP2AxisPoints methodsFor: 'recovered'!
duplicateNameExtension
    ^'_a'
! !

"ASDBase.ic method 0x200263d4; bytecode file offset 0x923928"
!ASAP2AxisPoints methodsFor: 'recovered'!
axisDescription
    ^#()
! !

"ASDBase.ic method 0x200277a4; bytecode file offset 0x924260"
!ASAP2AxisPoints methodsFor: 'recovered'!
isAdaptive
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) maxRefresh.
    recoveredValue1 := (recoveredValue0) notNil.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2004d414; bytecode file offset 0x949d5c"
!ASAP2AxisPoints methodsFor: 'recovered'!
maxSize
    | recoveredValue0 |
    recoveredValue0 := (self) at: (18).
    ^recoveredValue0
! !

"ASDBase.ic method 0x2004d500; bytecode file offset 0x949df4"
!ASAP2AxisPoints methodsFor: 'recovered'!
deposit
    | recoveredValue0 |
    recoveredValue0 := (self) at: (19).
    ^recoveredValue0
! !

"ASDBase.ic method 0x2004d5d4; bytecode file offset 0x949ec8"
!ASAP2AxisPoints methodsFor: 'recovered'!
input
    | recoveredValue0 |
    recoveredValue0 := (self) at: (20).
    ^recoveredValue0
! !

"ASDBase.ic method 0x2004d630; bytecode file offset 0x949f3c"
!ASAP2AxisPoints methodsFor: 'recovered'!
maxRefresh
    | recoveredValue0 |
    recoveredValue0 := (self) at: (21).
    ^recoveredValue0
! !

"ASDBase.ic method 0x2004d6d4; bytecode file offset 0x949fbc"
!ASAP2AxisPoints methodsFor: 'recovered'!
bitMask
    | recoveredValue0 |
    recoveredValue0 := (self) at: (22).
    ^recoveredValue0
! !

"ASDBase.ic method 0x2004d7ec; bytecode file offset 0x94a0c8"
!ASAP2AxisPoints methodsFor: 'recovered'!
annotation
    | recoveredValue0 |
    recoveredValue0 := (self) at: (24).
    ^recoveredValue0
! !

"ASDBase.ic method 0x2004d848; bytecode file offset 0x94a118"
!ASAP2AxisPoints methodsFor: 'recovered'!
displayIdentifier
    | recoveredValue0 |
    recoveredValue0 := (self) at: (25).
    ^recoveredValue0
! !

"ASDBase.ic method 0x2004d880; bytecode file offset 0x94a168"
!ASAP2AxisPoints methodsFor: 'recovered'!
guardRails
    | recoveredValue0 |
    recoveredValue0 := (self) at: (26).
    ^recoveredValue0
! !

"ASDBase.ic method 0x2004d8e8; bytecode file offset 0x94a1b8"
!ASAP2AxisPoints methodsFor: 'recovered'!
calibrationAccess
    | recoveredValue0 |
    recoveredValue0 := (self) at: (27).
    ^recoveredValue0
! !

"ASDBase.ic method 0x2004d994; bytecode file offset 0x94a264"
!ASAP2AxisPoints methodsFor: 'recovered'!
refMemorySegment
    | recoveredValue0 |
    recoveredValue0 := (self) at: (29).
    ^recoveredValue0
! !

"ASDBase.ic method 0x20056688; bytecode file offset 0x9531e4"
!ASAP2AxisPoints methodsFor: 'recovered'!
getSetMethodFor: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) getObject.
    recoveredValue2 := (recoveredValue1) getAxisPointSetMethod.
    ^recoveredValue2
! !

"ASDBase.ic method 0x200955d8; bytecode file offset 0x991fb4"
!ASAP2AxisPoints methodsFor: 'recovered'!
addBackReferenceTo: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) name.
    (recoveredValue0) addToRefCharacteristic: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x200a7d3c; bytecode file offset 0x9a45f4"
!ASAP2AxisPoints methodsFor: 'recovered'!
maxSize: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) at: (18) put: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x200a7dc0; bytecode file offset 0x9a4690"
!ASAP2AxisPoints methodsFor: 'recovered'!
deposit: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) at: (19) put: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x200a7e20; bytecode file offset 0x9a4720"
!ASAP2AxisPoints methodsFor: 'recovered'!
input: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) at: (20) put: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x200a7eb0; bytecode file offset 0x9a478c"
!ASAP2AxisPoints methodsFor: 'recovered'!
maxRefresh: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) at: (21) put: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x200a7f28; bytecode file offset 0x9a47f8"
!ASAP2AxisPoints methodsFor: 'recovered'!
bitMask: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) at: (22) put: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x200a8000; bytecode file offset 0x9a48d0"
!ASAP2AxisPoints methodsFor: 'recovered'!
annotation: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) at: (24) put: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x200a8030; bytecode file offset 0x9a4924"
!ASAP2AxisPoints methodsFor: 'recovered'!
displayIdentifier: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) at: (25) put: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x200a8090; bytecode file offset 0x9a4978"
!ASAP2AxisPoints methodsFor: 'recovered'!
guardRails: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) at: (26) put: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x200a80fc; bytecode file offset 0x9a49cc"
!ASAP2AxisPoints methodsFor: 'recovered'!
calibrationAccess: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) at: (27) put: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x200a812c; bytecode file offset 0x9a4a2c"
!ASAP2AxisPoints methodsFor: 'recovered'!
dataType: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) at: (28) put: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x200a8198; bytecode file offset 0x9a4a74"
!ASAP2AxisPoints methodsFor: 'recovered'!
refMemorySegment: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) at: (29) put: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x200df148; bytecode file offset 0x9dba0c"
!ASAP2AxisPoints methodsFor: 'recovered'!
createBytesObject
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := ASAP2BytesAxisPoints.
    recoveredValue1 := (self) dataType.
    recoveredValue2 := (recoveredValue0) create: (recoveredValue1).
    recoveredLocal1 := recoveredValue2.
    recoveredValue3 := recoveredLocal1.
    recoveredValue4 := (self) createBytesObjectIn: (recoveredValue3).
    ^recoveredValue4
! !

"ASDBase.ic method 0x20125f98; bytecode file offset 0xa2287c"
!ASAP2AxisPoints methodsFor: 'recovered'!
getOnlyIFData: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := ASAP2AxisPointsIFData.
    recoveredValue1 := (recoveredValue0) create.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := recoveredLocal1.
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := (self) class.
    recoveredValue5 := (recoveredValue4) keyWords.
    (recoveredValue2) getIFData: (recoveredValue3) keyWords: (recoveredValue5).
    recoveredValue6 := recoveredLocal1.
    ^recoveredValue6
! !

"ASDBase.ic method 0x20145a90; bytecode file offset 0xa4235c"
!ASAP2AxisPoints methodsFor: 'recovered'!
addDefaultObjectReferencesFrom: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := recoveredArg1.
    super addDefaultObjectReferencesFrom: (recoveredValue0).
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue1) asap2.
    recoveredValue3 := (recoveredValue2) measurement.
    recoveredValue4 := (recoveredValue3) someElement.
    (self) input: (recoveredValue4).
    ^self
! !

"ASDBase.ic method 0x20172f30; bytecode file offset 0xa6f824"
!ASAP2AxisPoints methodsFor: 'recovered'!
initializeCollections
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    super initializeCollections.
    recoveredValue0 := OrderedCollection.
    recoveredValue1 := (recoveredValue0) new.
    (self) ifData: (recoveredValue1).
    recoveredValue2 := Set.
    recoveredValue3 := (recoveredValue2) new.
    (self) functionList: (recoveredValue3).
    ^self
! !

"ASDBase.ic method 0x20178720; bytecode file offset 0xa75004"
!ASAP2AxisPoints methodsFor: 'recovered'!
renameTo: recoveredArg1 module: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := recoveredArg2.
    (recoveredValue0) removeAxisPoint: (self).
    recoveredValue1 := recoveredArg1.
    (self) renameTo: (recoveredValue1).
    recoveredValue2 := recoveredArg2.
    (recoveredValue2) addAxisPoint: (self).
    recoveredValue3 := recoveredArg2.
    (recoveredValue3) modified.
    recoveredValue4 := (self) name.
    ^recoveredValue4
! !

"ASDBase.ic method 0x20180e3c; bytecode file offset 0xa7d6fc"
!ASAP2AxisPoints methodsFor: 'recovered'!
dataType
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := 28.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1).
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := super dataType.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredPC := 22.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := 28.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201be6a4; bytecode file offset 0xabaf6c"
!ASAP2AxisPoints methodsFor: 'recovered'!
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
            recoveredStack0 := super collectObjectsFlat: (recoveredStack1) in: (recoveredStack2).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := (recoveredStack1) input.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := (recoveredStack1) comments.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            (recoveredStack0) input: (recoveredStack1).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201eb818; bytecode file offset 0xae80ec"
!ASAP2AxisPoints methodsFor: 'recovered'!
convertToASD
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 |
    recoveredValue0 := SGVariable.
    recoveredValue1 := (recoveredValue0) createDistribution.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := recoveredLocal1.
    (recoveredValue2) setParameter: (true).
    recoveredValue3 := recoveredLocal1.
    (recoveredValue3) setToExported.
    recoveredValue4 := recoveredLocal1.
    recoveredValue5 := (self) name.
    (recoveredValue4) elementName: (recoveredValue5).
    recoveredValue6 := recoveredLocal1.
    recoveredValue7 := (self) longName.
    (recoveredValue6) comment: (recoveredValue7).
    recoveredValue8 := recoveredLocal1.
    ^recoveredValue8
! !

"ASDBase.ic method 0x201f3244; bytecode file offset 0xaefb1c"
!ASAP2AxisPoints methodsFor: 'recovered'!
minimizeCollections
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    super minimizeCollections.
    recoveredValue0 := (self) functionList.
    recoveredValue1 := (recoveredValue0) asArray.
    (self) functionList: (recoveredValue1).
    recoveredValue2 := (self) ifData.
    recoveredValue3 := (recoveredValue2) asArray.
    (self) ifData: (recoveredValue3).
    recoveredValue4 := (self) annotation.
    recoveredValue5 := (recoveredValue4) asArray.
    (self) annotation: (recoveredValue5).
    ^self
! !

"ASDBase.ic method 0x2021d828; bytecode file offset 0xb1a17c"
!ASAP2AxisPoints methodsFor: 'recovered'!
putIn: recoveredArg1 deposit: recoveredArg2
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) deposit.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 31] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack1) putNewLineIn: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack1) putIn: (recoveredStack2) string: (recoveredStack3).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            (recoveredStack1) putSeparatorIn: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack3 := (recoveredStack3) deposit.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            (recoveredStack1) putIn: (recoveredStack2) string: (recoveredStack3).
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            (recoveredStack0) putSeparatorIn: (recoveredStack1).
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x202a0ce4; bytecode file offset 0xb9d5f0"
!ASAP2AxisPoints methodsFor: 'recovered'!
putParameterIn: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 |
    recoveredValue0 := recoveredArg1.
    (self) putNameIn: (recoveredValue0).
    recoveredValue1 := recoveredArg1.
    (self) putLongNameIn: (recoveredValue1).
    recoveredValue2 := recoveredArg1.
    (self) putAddressIn: (recoveredValue2).
    recoveredValue3 := recoveredArg1.
    (self) putInputIn: (recoveredValue3).
    recoveredValue4 := recoveredArg1.
    (self) putRecordLayoutIn: (recoveredValue4).
    recoveredValue5 := recoveredArg1.
    (self) putMaxDiffIn: (recoveredValue5).
    recoveredValue6 := recoveredArg1.
    (self) putCompuMethodIn: (recoveredValue6).
    recoveredValue7 := recoveredArg1.
    (self) putMaxSizeIn: (recoveredValue7).
    recoveredValue8 := recoveredArg1.
    (self) putLowerBoundIn: (recoveredValue8).
    recoveredValue9 := recoveredArg1.
    (self) putUpperBoundIn: (recoveredValue9).
    ^self
! !

"ASDBase.ic method 0x202a2390; bytecode file offset 0xb9ec64"
!ASAP2AxisPoints methodsFor: 'recovered'!
selectObjectsFrom: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) comments.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack0) comments: (recoveredStack1).
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            super selectObjectsFrom: (recoveredStack1).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := (recoveredStack0) input.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := [:recoveredBlock25Arg1 | 
    | recoveredBlock25Value0 recoveredBlock25Value1 recoveredBlock25Value2 recoveredBlock25Value3 |
    recoveredBlock25Value0 := recoveredArg1.
    recoveredBlock25Value1 := recoveredBlock25Arg1.
    recoveredBlock25Value2 := (recoveredBlock25Value0) at: (recoveredBlock25Value1).
    recoveredBlock25Value3 := (self) input: (recoveredBlock25Value2).
    recoveredBlock25Value3
].
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            (recoveredStack0) ifInteger: (recoveredStack1).
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x202d8364; bytecode file offset 0xbd4c50"
!ASAP2AxisPoints methodsFor: 'recovered'!
initializeDefault
    super initializeDefault.
    (self) address: (0).
    (self) input: ('inputName').
    (self) recordLayout: ('recordLayoutName').
    (self) compuMethod: ('compuMethodName').
    (self) maxDiff: (#[0 0 0 0 0 0 0 0]).
    (self) maxSize: (0).
    (self) lowerBound: (#[0 0 0 0 0 0 0 0]).
    (self) upperBound: (#[0 0 0 0 0 0 0 0]).
    ^self
! !

"ASDBase.ic method 0x202f4d7c; bytecode file offset 0xbf1660"
!ASAP2AxisPoints methodsFor: 'recovered'!
getFrom: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 |
    recoveredValue0 := recoveredArg1.
    (self) getShortBegin: (recoveredValue0).
    recoveredValue1 := recoveredArg1.
    (self) getName: (recoveredValue1).
    recoveredValue2 := recoveredArg1.
    (self) getLongName: (recoveredValue2).
    recoveredValue3 := recoveredArg1.
    (self) getAddress: (recoveredValue3).
    recoveredValue4 := recoveredArg1.
    (self) getInput: (recoveredValue4).
    recoveredValue5 := recoveredArg1.
    (self) getRecordLayout: (recoveredValue5).
    recoveredValue6 := recoveredArg1.
    (self) getMaxDiff: (recoveredValue6).
    recoveredValue7 := recoveredArg1.
    (self) getCompuMethod: (recoveredValue7).
    recoveredValue8 := recoveredArg1.
    (self) getMaxSize: (recoveredValue8).
    recoveredValue9 := recoveredArg1.
    (self) getLowerBound: (recoveredValue9).
    recoveredValue10 := recoveredArg1.
    (self) getUpperBound: (recoveredValue10).
    recoveredValue11 := recoveredArg1.
    (self) parse: (recoveredValue11).
    ^self
! !

"ASDBase.ic method 0x203501a0; bytecode file offset 0xc4ca7c"
!ASAP2AxisPoints methodsFor: 'recovered'!
createASAP2ObjectReferences: recoveredArg1 parent: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
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
            recoveredStack0 := super createASAP2ObjectReferences: (recoveredStack1) parent: (recoveredStack2).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := recoveredArg2.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := (recoveredStack1) input.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := (recoveredStack0) measurementNamed: (recoveredStack1).
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 58] ifFalse: [recoveredPC := 28].
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack0 := (recoveredStack0) input.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := (recoveredStack1) undefinedInputParameterValue.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 38] ifFalse: [recoveredPC := 46].
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            (recoveredStack0) input: (recoveredStack1).
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredPC := 55.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack1 := SCASAP2DBMissingInputLabel.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack2 := (recoveredStack2) input.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            (recoveredStack0) monitorWarning: (recoveredStack1).
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredPC := 62.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            (recoveredStack0) input: (recoveredStack1).
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

