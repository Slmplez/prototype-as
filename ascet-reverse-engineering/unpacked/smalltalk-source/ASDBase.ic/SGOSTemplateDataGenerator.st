"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x200034e8; bytecode file offset 0x90206c"
!SGOSTemplateDataGenerator methodsFor: 'recovered'!
mdlMessage: recoveredArg1
    ^self
! !

"ASDBase.ic method 0x20004868; bytecode file offset 0x90206c"
!SGOSTemplateDataGenerator methodsFor: 'recovered'!
mdlResource: recoveredArg1
    ^self
! !

"ASDBase.ic method 0x2001d39c; bytecode file offset 0x92209c"
!SGOSTemplateDataGenerator methodsFor: 'recovered'!
ercosek43Id
    ^'ERCOSEK/ERCOSEK-43'
! !

"ASDBase.ic method 0x2002b964; bytecode file offset 0x934580"
!SGOSTemplateDataGenerator methodsFor: 'recovered'!
oilTemplateConfig
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) expander.
    recoveredValue1 := (recoveredValue0) oilTemplateConfig.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2005caf0; bytecode file offset 0x959680"
!SGOSTemplateDataGenerator methodsFor: 'recovered'!
currentGeneratorStrategy
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := SGGeneratorFactory.
    recoveredValue1 := (recoveredValue0) create.
    recoveredValue2 := (recoveredValue1) codeGeneratorStrategy.
    ^recoveredValue2
! !

"ASDBase.ic method 0x2005cd48; bytecode file offset 0x959680"
!SGOSTemplateDataGenerator methodsFor: 'recovered'!
maxSignedInt
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := RBInt32Signed.
    recoveredValue1 := (recoveredValue0) getInterval.
    recoveredValue2 := (recoveredValue1) right.
    ^recoveredValue2
! !

"ASDBase.ic method 0x20069f20; bytecode file offset 0x966bdc"
!SGOSTemplateDataGenerator methodsFor: 'recovered'!
processes
    | recoveredValue0 |
    recoveredValue0 := processes.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200844b0; bytecode file offset 0x981ca4"
!SGOSTemplateDataGenerator methodsFor: 'recovered'!
mdlSoftwareTask: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) mdlTask: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x20084ad4; bytecode file offset 0x981ca4"
!SGOSTemplateDataGenerator methodsFor: 'recovered'!
mdlTimerTask: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) mdlTask: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x200d94f4; bytecode file offset 0x9d5db4"
!SGOSTemplateDataGenerator methodsFor: 'recovered'!
currentOSCode: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue1) osTemplateFileKey.
    recoveredValue3 := (self) oilTemplateConfig.
    (recoveredValue0) additionalCodeSnippetsAt: (recoveredValue2) put: (recoveredValue3).
    recoveredValue4 := recoveredArg1.
    ^recoveredValue4
! !

"ASDBase.ic method 0x200fa084; bytecode file offset 0x9f6a08"
!SGOSTemplateDataGenerator methodsFor: 'recovered'!
initialize
    | recoveredValue0 recoveredValue1 |
    super initialize.
    recoveredValue0 := LookupTable.
    recoveredValue1 := (recoveredValue0) new.
    processes := recoveredValue1.
    ^self
! !

"ASDBase.ic method 0x2012002c; bytecode file offset 0xa1c8f0"
!SGOSTemplateDataGenerator methodsFor: 'recovered'!
opModesList: recoveredArg1
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
            recoveredStack1 := (recoveredStack1) opModes.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := [:block280c8f1cArg1 | 
    | block280c8f1cValue0 block280c8f1cValue1 |
    block280c8f1cValue0 := block280c8f1cArg1.
    block280c8f1cValue1 := (block280c8f1cValue0) mdlLabel.
    block280c8f1cValue1
].
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) collect: (recoveredStack2).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2012059c; bytecode file offset 0xa1ce60"
!SGOSTemplateDataGenerator methodsFor: 'recovered'!
hookValue: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := (recoveredStack1) attributes.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) isCgAttrHooksOn.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 13].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := 'MONITORING'.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := 'NONE'.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2016f664; bytecode file offset 0xa6bf30"
!SGOSTemplateDataGenerator methodsFor: 'recovered'!
keywords
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := keywords.
    recoveredValue1 := [
    | recoveredBlock6Value0 recoveredBlock6Value1 |
    recoveredBlock6Value0 := (self) createKeywordList.
    recoveredBlock6Value1 := recoveredBlock6Value0.
    keywords := recoveredBlock6Value1.
    recoveredBlock6Value0
].
    (recoveredValue0) ifNil: (recoveredValue1).
    recoveredValue2 := keywords.
    ^recoveredValue2
! !

"ASDBase.ic method 0x2016f7ac; bytecode file offset 0xa6c068"
!SGOSTemplateDataGenerator methodsFor: 'recovered'!
reservedNames
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := reservedNames.
    recoveredValue1 := [
    | recoveredBlock6Value0 recoveredBlock6Value1 |
    recoveredBlock6Value0 := (self) createReservedNamesList.
    recoveredBlock6Value1 := recoveredBlock6Value0.
    reservedNames := recoveredBlock6Value1.
    recoveredBlock6Value0
].
    (recoveredValue0) ifNil: (recoveredValue1).
    recoveredValue2 := reservedNames.
    ^recoveredValue2
! !

"ASDBase.ic method 0x20186d84; bytecode file offset 0xa83644"
!SGOSTemplateDataGenerator methodsFor: 'recovered'!
minPeriodValue: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) minPeriod.
    recoveredValue2 := [
    | recoveredBlock8Value0 |
    recoveredBlock8Value0 := (self) maxSignedInt.
    ^recoveredBlock8Value0
].
    (recoveredValue1) ifNil: (recoveredValue2).
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := (recoveredValue3) minPeriod.
    ^recoveredValue4
! !

"ASDBase.ic method 0x201b4130; bytecode file offset 0xab09f8"
!SGOSTemplateDataGenerator methodsFor: 'recovered'!
scheduleValue: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := (recoveredStack1) attributes.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) isCgAttrSchedulingFull.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 13].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := 'FULL'.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) attributes.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) isCgAttrSchedulingNone.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 23].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := 'NON'.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := 'FULL'.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x201b55b0; bytecode file offset 0xab1e74"
!SGOSTemplateDataGenerator methodsFor: 'recovered'!
deadlineValue: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) attributes.
    recoveredValue2 := (recoveredValue1) deadline.
    recoveredValue3 := [
    | recoveredBlock9Value0 |
    recoveredBlock9Value0 := (self) maxSignedInt.
    ^recoveredBlock9Value0
].
    (recoveredValue2) ifNil: (recoveredValue3).
    recoveredValue4 := recoveredArg1.
    recoveredValue5 := (recoveredValue4) attributes.
    recoveredValue6 := (recoveredValue5) deadline.
    ^recoveredValue6
! !

"ASDBase.ic method 0x202114c8; bytecode file offset 0xb0dda0"
!SGOSTemplateDataGenerator methodsFor: 'recovered'!
createReservedNamesList
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := OrderedCollection.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := (recoveredStack0) currentGeneratorStrategy.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) targetFeatureOSType.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) ercosek43Id.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) equals: (recoveredStack1).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 30].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack2 := 'EXIT'.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            (recoveredStack1) add: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack2 := 'INIT'.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            (recoveredStack1) add: (recoveredStack2).
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x202203f0; bytecode file offset 0xb1ccc0"
!SGOSTemplateDataGenerator methodsFor: 'recovered'!
appModeModesList: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := OrderedCollection.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := (recoveredStack1) startMode.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 19].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := 'START'.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack1) add: (recoveredStack2).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := (recoveredStack1) ctMode.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 26] ifFalse: [recoveredPC := 31].
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack2 := 'CT'.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            (recoveredStack1) add: (recoveredStack2).
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x20262f8c; bytecode file offset 0xb5f868"
!SGOSTemplateDataGenerator methodsFor: 'recovered'!
genInternalTask: recoveredArg1 id: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 |
    recoveredValue0 := (self) expander.
    recoveredValue1 := recoveredValue0.
    (recoveredValue1) beginStructure.
    recoveredValue2 := recoveredValue0.
    (recoveredValue2) attribute: ('type') value: ('Internal').
    recoveredValue3 := recoveredValue0.
    (recoveredValue3) listSeparator.
    recoveredValue4 := recoveredValue0.
    recoveredValue5 := recoveredArg1.
    (recoveredValue4) attribute: ('name') value: (recoveredValue5).
    recoveredValue6 := recoveredValue0.
    (recoveredValue6) listSeparator.
    recoveredValue7 := recoveredValue0.
    recoveredValue8 := recoveredArg2.
    recoveredValue9 := (recoveredValue8) asString.
    (recoveredValue7) attribute: ('id') value: (recoveredValue9).
    (recoveredValue0) endStructure.
    ^self
! !

"ASDBase.ic method 0x20298494; bytecode file offset 0xb94dc4"
!SGOSTemplateDataGenerator methodsFor: 'recovered'!
genHardwareTasks: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := (self) expander.
    recoveredValue1 := recoveredValue0.
    (recoveredValue1) banner: ('All interrupt service routines defined in current project').
    (recoveredValue0) beginList: ('ISRs').
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := [:recoveredBlock15Arg1 | 
    | recoveredBlock15Value0 recoveredBlock15Value1 |
    recoveredBlock15Value0 := recoveredBlock15Arg1.
    recoveredBlock15Value1 := (self) visitMdlNode: (recoveredBlock15Value0).
    recoveredBlock15Value1
].
    recoveredValue4 := [
    | recoveredBlock26Value0 recoveredBlock26Value1 |
    recoveredBlock26Value0 := (self) expander.
    recoveredBlock26Value1 := (recoveredBlock26Value0) listSeparator.
    recoveredBlock26Value1
].
    (recoveredValue2) do: (recoveredValue3) andBetweenDo: (recoveredValue4).
    recoveredValue5 := (self) expander.
    (recoveredValue5) endList.
    ^self
! !

"ASDBase.ic method 0x202984c0; bytecode file offset 0xb94dc4"
!SGOSTemplateDataGenerator methodsFor: 'recovered'!
genInitTasks: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := (self) expander.
    recoveredValue1 := recoveredValue0.
    (recoveredValue1) banner: ('All init tasks defined in current project').
    (recoveredValue0) beginList: ('InitTasks').
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := [:recoveredBlock15Arg1 | 
    | recoveredBlock15Value0 recoveredBlock15Value1 |
    recoveredBlock15Value0 := recoveredBlock15Arg1.
    recoveredBlock15Value1 := (self) visitMdlNode: (recoveredBlock15Value0).
    recoveredBlock15Value1
].
    recoveredValue4 := [
    | recoveredBlock26Value0 recoveredBlock26Value1 |
    recoveredBlock26Value0 := (self) expander.
    recoveredBlock26Value1 := (recoveredBlock26Value0) listSeparator.
    recoveredBlock26Value1
].
    (recoveredValue2) do: (recoveredValue3) andBetweenDo: (recoveredValue4).
    recoveredValue5 := (self) expander.
    (recoveredValue5) endList.
    ^self
! !

"ASDBase.ic method 0x202984ec; bytecode file offset 0xb94dc4"
!SGOSTemplateDataGenerator methodsFor: 'recovered'!
genAppModes: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := (self) expander.
    recoveredValue1 := recoveredValue0.
    (recoveredValue1) banner: ('All application modes defined in current project').
    (recoveredValue0) beginList: ('AppModes').
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := [:recoveredBlock15Arg1 | 
    | recoveredBlock15Value0 recoveredBlock15Value1 |
    recoveredBlock15Value0 := recoveredBlock15Arg1.
    recoveredBlock15Value1 := (self) mdlAppMode: (recoveredBlock15Value0).
    recoveredBlock15Value1
].
    recoveredValue4 := [
    | recoveredBlock26Value0 recoveredBlock26Value1 |
    recoveredBlock26Value0 := (self) expander.
    recoveredBlock26Value1 := (recoveredBlock26Value0) listSeparator.
    recoveredBlock26Value1
].
    (recoveredValue2) do: (recoveredValue3) andBetweenDo: (recoveredValue4).
    recoveredValue5 := (self) expander.
    (recoveredValue5) endList.
    ^self
! !

"ASDBase.ic method 0x202b4aec; bytecode file offset 0xbb13e0"
!SGOSTemplateDataGenerator methodsFor: 'recovered'!
semAnaAppMode: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) keywords.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) mdlLabel.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) asUppercase.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := (recoveredStack0) includes: (recoveredStack1).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 23].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := 340.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := 'Application Mode'.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack3 := (recoveredStack3) mdlLabel.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            (recoveredStack0) mdlSemErrNo: (recoveredStack1) with: (recoveredStack2) with: (recoveredStack3).
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := (recoveredStack0) reservedNames.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := (recoveredStack1) mdlLabel.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := (recoveredStack1) asUppercase.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack0 := (recoveredStack0) includes: (recoveredStack1).
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 34] ifFalse: [recoveredPC := 45].
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := 341.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack2 := 'Application Mode'.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack3 := (recoveredStack3) mdlLabel.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            (recoveredStack0) mdlSemErrNo: (recoveredStack1) with: (recoveredStack2) with: (recoveredStack3).
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x202b4b10; bytecode file offset 0xbb13e0"
!SGOSTemplateDataGenerator methodsFor: 'recovered'!
semAnaTask: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) keywords.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) mdlLabel.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) asUppercase.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := (recoveredStack0) includes: (recoveredStack1).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 23].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := 340.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := 'Task'.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack3 := (recoveredStack3) mdlLabel.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            (recoveredStack0) mdlSemErrNo: (recoveredStack1) with: (recoveredStack2) with: (recoveredStack3).
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := (recoveredStack0) reservedNames.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := (recoveredStack1) mdlLabel.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := (recoveredStack1) asUppercase.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack0 := (recoveredStack0) includes: (recoveredStack1).
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 34] ifFalse: [recoveredPC := 45].
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := 341.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack2 := 'Task'.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack3 := (recoveredStack3) mdlLabel.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            (recoveredStack0) mdlSemErrNo: (recoveredStack1) with: (recoveredStack2) with: (recoveredStack3).
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x202cc5cc; bytecode file offset 0xbc8ea4"
!SGOSTemplateDataGenerator methodsFor: 'recovered'!
processList: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := OrderedCollection.
    recoveredValue1 := (recoveredValue0) new.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (recoveredValue2) processSeq.
    recoveredValue4 := recoveredValue3.
    recoveredLocal2 := recoveredValue4.
    recoveredValue5 := [:recoveredBlock18Arg1 | 
    | recoveredBlock18Local1 recoveredBlock18Value0 recoveredBlock18Value1 recoveredBlock18Value2 recoveredBlock18Value3 recoveredBlock18Value4 recoveredBlock18Value5 recoveredBlock18Value6 recoveredBlock18Value7 recoveredBlock18Value8 |
    recoveredBlock18Value0 := recoveredBlock18Arg1.
    recoveredBlock18Value1 := (recoveredBlock18Value0) ileFunctionDecl.
    recoveredBlock18Value2 := (recoveredBlock18Value1) genName.
    recoveredBlock18Local1 := recoveredBlock18Value2.
    recoveredBlock18Value3 := (self) processes.
    recoveredBlock18Value4 := recoveredBlock18Local1.
    recoveredBlock18Value5 := recoveredBlock18Arg1.
    (recoveredBlock18Value3) at: (recoveredBlock18Value4) put: (recoveredBlock18Value5).
    recoveredBlock18Value6 := recoveredLocal1.
    recoveredBlock18Value7 := recoveredBlock18Local1.
    recoveredBlock18Value8 := (recoveredBlock18Value6) add: (recoveredBlock18Value7).
    recoveredBlock18Value8
].
    (recoveredValue3) do: (recoveredValue5).
    recoveredValue6 := recoveredLocal1.
    ^recoveredValue6
! !

"ASDBase.ic method 0x202ffd54; bytecode file offset 0xbfc638"
!SGOSTemplateDataGenerator methodsFor: 'recovered'!
genTasks: recoveredArg1
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
            recoveredStack2 := [:block280e9628Arg1 | 
    | block280e9628Value0 block280e9628Value1 |
    block280e9628Value0 := block280e9628Arg1.
    block280e9628Value1 := (block280e9628Value0) isMdlInitTask.
    block280e9628Value1
].
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) reject: (recoveredStack2).
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) expander.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := 'All tasks (software and alarm) defined in current project'.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            (recoveredStack1) banner: (recoveredStack2).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := 'Tasks'.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            (recoveredStack0) beginList: (recoveredStack1).
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := [:recoveredBlock26Arg1 | 
    | recoveredBlock26Value0 recoveredBlock26Value1 |
    recoveredBlock26Value0 := recoveredBlock26Arg1.
    recoveredBlock26Value1 := (self) visitMdlNode: (recoveredBlock26Value0).
    recoveredBlock26Value1
].
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack2 := [
    | recoveredBlock36Value0 recoveredBlock36Value1 |
    recoveredBlock36Value0 := (self) expander.
    recoveredBlock36Value1 := (recoveredBlock36Value0) listSeparator.
    recoveredBlock36Value1
].
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            (recoveredStack0) do: (recoveredStack1) andBetweenDo: (recoveredStack2).
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack0 := (recoveredStack0) expander.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            (recoveredStack0) endList.
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

"ASDBase.ic method 0x2030cb7c; bytecode file offset 0xc09460"
!SGOSTemplateDataGenerator methodsFor: 'recovered'!
scheduleInternalValue: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := (recoveredStack1) attributes.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) isCgAttrSchedulingCooperative.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 13].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := 'COOPERATIVE'.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) attributes.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) isCgAttrSchedulingPreemptive.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 23].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := 'PREEMPTIVE'.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := (recoveredStack1) attributes.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := (recoveredStack1) isCgAttrSchedulingNonPreemptive.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 30] ifFalse: [recoveredPC := 33].
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := 'NONPREEMPTIVE'.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := (recoveredStack1) attributes.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := (recoveredStack1) isCgAttrSchedulingFull.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 40] ifFalse: [recoveredPC := 43].
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := 'FULL'.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack1 := (recoveredStack1) attributes.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack1 := (recoveredStack1) isCgAttrSchedulingNone.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 50] ifFalse: [recoveredPC := 53].
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack1 := 'NONE'.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack1 := 'unknown'.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2032c078; bytecode file offset 0xc2898c"
!SGOSTemplateDataGenerator methodsFor: 'recovered'!
genResources: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) expander.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := 'All resources used within the current project'.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack0) banner: (recoveredStack1).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := (recoveredStack0) isEmpty.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 24].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) expander.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := 'Resources'.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            (recoveredStack0) attributeEmptyList: (recoveredStack1).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredPC := 58.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := (recoveredStack0) expander.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := 'Resources'.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            (recoveredStack0) beginList: (recoveredStack1).
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := [:recoveredBlock31Arg1 | 
    | recoveredBlock31Value0 recoveredBlock31Value1 |
    recoveredBlock31Value0 := recoveredBlock31Arg1.
    recoveredBlock31Value1 := (self) mdlResource: (recoveredBlock31Value0).
    recoveredBlock31Value1
].
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack2 := [
    | recoveredBlock42Value0 recoveredBlock42Value1 |
    recoveredBlock42Value0 := (self) expander.
    recoveredBlock42Value1 := (recoveredBlock42Value0) listSeparator.
    recoveredBlock42Value1
].
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            (recoveredStack0) do: (recoveredStack1) andBetweenDo: (recoveredStack2).
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack0 := (recoveredStack0) expander.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            (recoveredStack0) endList.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2032c0ac; bytecode file offset 0xc2898c"
!SGOSTemplateDataGenerator methodsFor: 'recovered'!
genMessages: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) expander.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := 'All messages used within the current project'.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack0) banner: (recoveredStack1).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := (recoveredStack0) isEmpty.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 24].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) expander.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := 'Messages'.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            (recoveredStack0) attributeEmptyList: (recoveredStack1).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredPC := 58.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := (recoveredStack0) expander.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := 'Messages'.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            (recoveredStack0) beginList: (recoveredStack1).
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := [:recoveredBlock31Arg1 | 
    | recoveredBlock31Value0 recoveredBlock31Value1 |
    recoveredBlock31Value0 := recoveredBlock31Arg1.
    recoveredBlock31Value1 := (self) mdlMessage: (recoveredBlock31Value0).
    recoveredBlock31Value1
].
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack2 := [
    | recoveredBlock42Value0 recoveredBlock42Value1 |
    recoveredBlock42Value0 := (self) expander.
    recoveredBlock42Value1 := (recoveredBlock42Value0) listSeparator.
    recoveredBlock42Value1
].
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            (recoveredStack0) do: (recoveredStack1) andBetweenDo: (recoveredStack2).
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack0 := (recoveredStack0) expander.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            (recoveredStack0) endList.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2034d708; bytecode file offset 0xc49ff8"
!SGOSTemplateDataGenerator methodsFor: 'recovered'!
mdlAppMode: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0) semAnaAppMode: (recoveredStack1).
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := (recoveredStack0) expander.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack1) beginStructure.
            recoveredStack1 := recoveredStack0.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := 'name'.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack3 := (recoveredStack3) mdlLabel.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            (recoveredStack1) attribute: (recoveredStack2) value: (recoveredStack3).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            (recoveredStack1) listSeparator.
            recoveredStack1 := recoveredStack0.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack2 := 'mode'.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack4 := recoveredArg1.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack3 := (recoveredStack3) appModeModesList: (recoveredStack4).
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            (recoveredStack1) attribute: (recoveredStack2) list: (recoveredStack3).
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            (recoveredStack0) listSeparator.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack0 := (recoveredStack0) initTasks.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack0 := (recoveredStack0) notEmpty.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 44] ifFalse: [recoveredPC := 58].
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack0 := (recoveredStack0) expander.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack2 := 'initTask'.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack3 := (recoveredStack3) first.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack3 := (recoveredStack3) mdlLabel.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            (recoveredStack1) attribute: (recoveredStack2) value: (recoveredStack3).
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            (recoveredStack0) listSeparator.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack0 := (recoveredStack0) expander.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            (recoveredStack0) endStructure.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2035d3c8; bytecode file offset 0xc59cb4"
!SGOSTemplateDataGenerator methodsFor: 'recovered'!
genAlarms: recoveredArg1
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
            recoveredStack2 := [:block280f0390Arg1 | 
    | block280f0390Stack0 block280f0390Stack1 block280f0390Stack2 block280f0390Stack3 block280f0390PC block280f0390Step block280f0390Done block280f0390Result |
    block280f0390Stack0 := self.
    block280f0390PC := 4.
    block280f0390Done := false.
    [block280f0390Done not] whileTrue: [
        block280f0390Step := block280f0390PC.
        block280f0390Step = 4 ifTrue: [
            block280f0390Stack1 := false.
            block280f0390PC := 5.
        ].
        block280f0390Step = 5 ifTrue: [
            block280f0390Stack2 := block280f0390Arg1.
            block280f0390PC := 6.
        ].
        block280f0390Step = 6 ifTrue: [
            block280f0390Stack2 := (block280f0390Stack2) isMdlTimerTask.
            block280f0390PC := 7.
        ].
        block280f0390Step = 7 ifTrue: [
            (block280f0390Stack2) ifTrue: [block280f0390PC := 10] ifFalse: [block280f0390PC := 14].
        ].
        block280f0390Step = 10 ifTrue: [
            block280f0390PC := 11.
        ].
        block280f0390Step = 11 ifTrue: [
            block280f0390Stack1 := block280f0390Arg1.
            block280f0390PC := 12.
        ].
        block280f0390Step = 12 ifTrue: [
            block280f0390Stack1 := (block280f0390Stack1) attributes.
            block280f0390PC := 13.
        ].
        block280f0390Step = 13 ifTrue: [
            block280f0390Stack1 := (block280f0390Stack1) isCgAttrStartAlarm.
            block280f0390PC := 14.
        ].
        block280f0390Step = 14 ifTrue: [
            block280f0390Result := block280f0390Stack1.
            block280f0390Done := true.
        ].
    ].
    block280f0390Result
].
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := (recoveredStack1) select: (recoveredStack2).
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := (recoveredStack0) expander.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack2 := 'All alarms (used to activate tasks) defined in current project'.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            (recoveredStack1) banner: (recoveredStack2).
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := 'Alarms'.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            (recoveredStack0) beginList: (recoveredStack1).
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := [:recoveredBlock36Arg1 | 
    | recoveredBlock36Value0 recoveredBlock36Value1 |
    recoveredBlock36Value0 := recoveredBlock36Arg1.
    recoveredBlock36Value1 := (self) mdlAlarm: (recoveredBlock36Value0).
    recoveredBlock36Value1
].
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack2 := [
    | recoveredBlock46Value0 recoveredBlock46Value1 |
    recoveredBlock46Value0 := (self) expander.
    recoveredBlock46Value1 := (recoveredBlock46Value0) listSeparator.
    recoveredBlock46Value1
].
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            (recoveredStack0) do: (recoveredStack1) andBetweenDo: (recoveredStack2).
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack0 := (recoveredStack0) expander.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            (recoveredStack0) endList.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20370e48; bytecode file offset 0xc6d740"
!SGOSTemplateDataGenerator methodsFor: 'recovered'!
mdlInitTask: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 |
    recoveredValue0 := recoveredArg1.
    (self) semAnaTask: (recoveredValue0).
    recoveredValue1 := (self) expander.
    recoveredValue2 := recoveredValue1.
    (recoveredValue2) beginStructure.
    recoveredValue3 := recoveredValue1.
    (recoveredValue3) attribute: ('type') value: ('Init').
    recoveredValue4 := recoveredValue1.
    (recoveredValue4) listSeparator.
    recoveredValue5 := recoveredValue1.
    recoveredValue6 := recoveredArg1.
    recoveredValue7 := (recoveredValue6) mdlLabel.
    (recoveredValue5) attribute: ('name') value: (recoveredValue7).
    recoveredValue8 := recoveredValue1.
    (recoveredValue8) listSeparator.
    recoveredValue9 := recoveredValue1.
    recoveredValue10 := recoveredArg1.
    recoveredValue11 := (recoveredValue10) id.
    (recoveredValue9) attribute: ('id') value: (recoveredValue11).
    recoveredValue12 := recoveredValue1.
    (recoveredValue12) listSeparator.
    recoveredValue13 := recoveredValue1.
    recoveredValue14 := recoveredArg1.
    recoveredValue15 := (self) opModesList: (recoveredValue14).
    (recoveredValue13) attribute: ('autostartAppModes') list: (recoveredValue15).
    recoveredValue16 := recoveredValue1.
    (recoveredValue16) listSeparator.
    recoveredValue17 := recoveredValue1.
    recoveredValue18 := recoveredArg1.
    recoveredValue19 := (self) processList: (recoveredValue18).
    (recoveredValue17) attribute: ('usedProcesses') list: (recoveredValue19).
    (recoveredValue1) endStructure.
    ^self
! !

"ASDBase.ic method 0x203dc018; bytecode file offset 0xcd8908"
!SGOSTemplateDataGenerator methodsFor: 'recovered'!
genProcesses
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) expander.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := 'All processes used within the current project'.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack0) banner: (recoveredStack1).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := (recoveredStack0) processes.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) isEmpty.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 26].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := (recoveredStack0) expander.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := 'Processes'.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            (recoveredStack0) attributeEmptyList: (recoveredStack1).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredPC := 85.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := (recoveredStack0) expander.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := 'Processes'.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            (recoveredStack0) beginList: (recoveredStack1).
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := true.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack0 := (recoveredStack0) processes.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := [:recoveredBlock38Arg1 :recoveredBlock38Arg2 | 
    | recoveredBlock38Stack0 recoveredBlock38Stack1 recoveredBlock38Stack2 recoveredBlock38Stack3 recoveredBlock38Stack4 recoveredBlock38PC recoveredBlock38Step recoveredBlock38Done recoveredBlock38Result |
    recoveredBlock38Stack0 := self.
    recoveredBlock38PC := 44.
    recoveredBlock38Done := false.
    [recoveredBlock38Done not] whileTrue: [
        recoveredBlock38Step := recoveredBlock38PC.
        recoveredBlock38Step = 44 ifTrue: [
            recoveredBlock38Stack1 := recoveredLocal1.
            recoveredBlock38PC := 47.
        ].
        recoveredBlock38Step = 47 ifTrue: [
            (recoveredBlock38Stack1) ifTrue: [recoveredBlock38PC := 50] ifFalse: [recoveredBlock38PC := 58].
        ].
        recoveredBlock38Step = 50 ifTrue: [
            recoveredBlock38Stack1 := false.
            recoveredBlock38PC := 51.
        ].
        recoveredBlock38Step = 51 ifTrue: [
            recoveredLocal1 := recoveredBlock38Stack1.
            recoveredBlock38PC := 54.
        ].
        recoveredBlock38Step = 54 ifTrue: [
            recoveredBlock38PC := 62.
        ].
        recoveredBlock38Step = 58 ifTrue: [
            recoveredBlock38Stack1 := self.
            recoveredBlock38PC := 59.
        ].
        recoveredBlock38Step = 59 ifTrue: [
            recoveredBlock38Stack1 := (recoveredBlock38Stack1) expander.
            recoveredBlock38PC := 60.
        ].
        recoveredBlock38Step = 60 ifTrue: [
            (recoveredBlock38Stack1) listSeparator.
            recoveredBlock38PC := 62.
        ].
        recoveredBlock38Step = 62 ifTrue: [
            recoveredBlock38Stack0 := (recoveredBlock38Stack0) expander.
            recoveredBlock38PC := 63.
        ].
        recoveredBlock38Step = 63 ifTrue: [
            recoveredBlock38Stack1 := recoveredBlock38Stack0.
            recoveredBlock38PC := 64.
        ].
        recoveredBlock38Step = 64 ifTrue: [
            (recoveredBlock38Stack1) beginStructure.
            recoveredBlock38Stack1 := recoveredBlock38Stack0.
            recoveredBlock38PC := 67.
        ].
        recoveredBlock38Step = 67 ifTrue: [
            recoveredBlock38Stack2 := 'name'.
            recoveredBlock38PC := 69.
        ].
        recoveredBlock38Step = 69 ifTrue: [
            recoveredBlock38Stack3 := recoveredBlock38Arg1.
            recoveredBlock38PC := 70.
        ].
        recoveredBlock38Step = 70 ifTrue: [
            (recoveredBlock38Stack1) attribute: (recoveredBlock38Stack2) value: (recoveredBlock38Stack3).
            recoveredBlock38PC := 72.
        ].
        recoveredBlock38Step = 72 ifTrue: [
            recoveredBlock38Stack0 := (recoveredBlock38Stack0) endStructure.
            recoveredBlock38PC := 74.
        ].
        recoveredBlock38Step = 74 ifTrue: [
            recoveredBlock38Result := recoveredBlock38Stack0.
            recoveredBlock38Done := true.
        ].
    ].
    recoveredBlock38Result
].
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            (recoveredStack0) keysAndValuesDo: (recoveredStack1).
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack0 := (recoveredStack0) expander.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            (recoveredStack0) endList.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x203f8870; bytecode file offset 0xcf5184"
!SGOSTemplateDataGenerator methodsFor: 'recovered'!
genOSSettings: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 recoveredValue21 recoveredValue22 recoveredValue23 recoveredValue24 recoveredValue25 recoveredValue26 recoveredValue27 recoveredValue28 |
    recoveredValue0 := (self) expander.
    recoveredValue1 := recoveredValue0.
    (recoveredValue1) banner: ('All general settings').
    recoveredValue2 := recoveredValue0.
    (recoveredValue2) beginStructure: ('OS').
    recoveredValue3 := recoveredValue0.
    (recoveredValue3) attribute: ('isEnabledOSEKCOM') valueBool: (false).
    recoveredValue4 := recoveredValue0.
    (recoveredValue4) listSeparator.
    recoveredValue5 := recoveredValue0.
    recoveredValue6 := recoveredArg1.
    recoveredValue7 := (recoveredValue6) monitoring.
    (recoveredValue5) attribute: ('isEnabledMonitoring') valueBool: (recoveredValue7).
    recoveredValue8 := recoveredValue0.
    (recoveredValue8) listSeparator.
    recoveredValue9 := recoveredValue0.
    recoveredValue10 := recoveredArg1.
    recoveredValue11 := (recoveredValue10) osekInfo.
    recoveredValue12 := (recoveredValue11) tickDuration.
    (recoveredValue9) attribute: ('tickDuration') valueInteger: (recoveredValue12).
    recoveredValue13 := recoveredValue0.
    (recoveredValue13) listSeparator.
    recoveredValue14 := recoveredValue0.
    recoveredValue15 := recoveredArg1.
    recoveredValue16 := (recoveredValue15) numCoopLevels.
    (recoveredValue14) attribute: ('numOfCoopLevels') value: (recoveredValue16).
    recoveredValue17 := recoveredValue0.
    (recoveredValue17) listSeparator.
    recoveredValue18 := recoveredValue0.
    recoveredValue19 := recoveredArg1.
    recoveredValue20 := (recoveredValue19) numPreempLevels.
    (recoveredValue18) attribute: ('numOfPreempLevels') value: (recoveredValue20).
    recoveredValue21 := recoveredValue0.
    (recoveredValue21) listSeparator.
    recoveredValue22 := recoveredValue0.
    recoveredValue23 := recoveredArg1.
    recoveredValue24 := (recoveredValue23) numHwLevelsOO.
    (recoveredValue22) attribute: ('numOfHardwareLevels') value: (recoveredValue24).
    recoveredValue25 := recoveredValue0.
    (recoveredValue25) listSeparator.
    recoveredValue26 := recoveredValue0.
    recoveredValue27 := recoveredArg1.
    recoveredValue28 := (recoveredValue27) numSwLevelsOO.
    (recoveredValue26) attribute: ('numOfSoftwareLevels') value: (recoveredValue28).
    (recoveredValue0) endStructure.
    ^self
! !

"ASDBase.ic method 0x2040fd0c; bytecode file offset 0xd0c60c"
!SGOSTemplateDataGenerator methodsFor: 'recovered'!
operatingSystem: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 recoveredValue21 recoveredValue22 |
    recoveredValue0 := (self) expander.
    (recoveredValue0) beginOperatingSystem.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue1) opModes.
    (self) genAppModes: (recoveredValue2).
    recoveredValue3 := (self) expander.
    (recoveredValue3) listSeparator.
    recoveredValue4 := (self) expander.
    (recoveredValue4) listSeparator.
    recoveredValue5 := recoveredArg1.
    recoveredValue6 := (recoveredValue5) softwareTasks.
    (self) genTasks: (recoveredValue6).
    recoveredValue7 := (self) expander.
    (recoveredValue7) listSeparator.
    recoveredValue8 := recoveredArg1.
    recoveredValue9 := (recoveredValue8) initTasks.
    (self) genInitTasks: (recoveredValue9).
    recoveredValue10 := (self) expander.
    (recoveredValue10) listSeparator.
    recoveredValue11 := recoveredArg1.
    recoveredValue12 := (recoveredValue11) hardwareTasks.
    (self) genHardwareTasks: (recoveredValue12).
    recoveredValue13 := (self) expander.
    (recoveredValue13) listSeparator.
    recoveredValue14 := recoveredArg1.
    recoveredValue15 := (recoveredValue14) timerTasks.
    (self) genAlarms: (recoveredValue15).
    recoveredValue16 := (self) expander.
    (recoveredValue16) listSeparator.
    (self) genProcesses.
    recoveredValue17 := (self) expander.
    (recoveredValue17) listSeparator.
    (self) genResources: (#()).
    recoveredValue18 := (self) expander.
    (recoveredValue18) listSeparator.
    (self) genMessages: (#()).
    recoveredValue19 := (self) expander.
    (recoveredValue19) listSeparator.
    recoveredValue20 := recoveredArg1.
    (self) genOSSettings: (recoveredValue20).
    recoveredValue21 := (self) expander.
    recoveredValue22 := recoveredValue21.
    (recoveredValue22) listSeparator.
    (recoveredValue21) endOperatingSystem.
    ^self
! !

"ASDBase.ic method 0x2044d8b4; bytecode file offset 0xd4a1d8"
!SGOSTemplateDataGenerator methodsFor: 'recovered'!
mdlAlarm: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 recoveredValue21 recoveredValue22 recoveredValue23 recoveredValue24 recoveredValue25 recoveredValue26 recoveredValue27 recoveredValue28 recoveredValue29 recoveredValue30 recoveredValue31 recoveredValue32 recoveredValue33 recoveredValue34 recoveredValue35 recoveredValue36 recoveredValue37 recoveredValue38 |
    recoveredValue0 := (self) expander.
    recoveredValue1 := recoveredValue0.
    (recoveredValue1) beginStructure.
    recoveredValue2 := recoveredValue0.
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := (recoveredValue3) id.
    recoveredValue5 := (recoveredValue4) asString.
    recoveredValue6 := ('ALARM_') , (recoveredValue5).
    (recoveredValue2) attribute: ('name') value: (recoveredValue6).
    recoveredValue7 := recoveredValue0.
    (recoveredValue7) listSeparator.
    recoveredValue8 := recoveredValue0.
    recoveredValue9 := recoveredArg1.
    recoveredValue10 := (recoveredValue9) mdlLabel.
    (recoveredValue8) attribute: ('taskToActivate') value: (recoveredValue10).
    recoveredValue11 := recoveredValue0.
    (recoveredValue11) listSeparator.
    recoveredValue12 := recoveredValue0.
    recoveredValue13 := recoveredArg1.
    recoveredValue14 := (recoveredValue13) attributes.
    recoveredValue15 := (recoveredValue14) isCgAttrAutostartOn.
    recoveredValue16 := (recoveredValue15) asString.
    recoveredValue17 := (recoveredValue16) asUppercase.
    (recoveredValue12) attribute: ('autostart') value: (recoveredValue17).
    recoveredValue18 := recoveredValue0.
    (recoveredValue18) listSeparator.
    recoveredValue19 := recoveredValue0.
    recoveredValue20 := recoveredArg1.
    recoveredValue21 := (self) opModesList: (recoveredValue20).
    (recoveredValue19) attribute: ('autostartAppModes') list: (recoveredValue21).
    recoveredValue22 := recoveredValue0.
    (recoveredValue22) listSeparator.
    recoveredValue23 := recoveredValue0.
    recoveredValue24 := recoveredArg1.
    recoveredValue25 := (recoveredValue24) specDelay.
    (recoveredValue23) attribute: ('delay') valueInteger: (recoveredValue25).
    recoveredValue26 := recoveredValue0.
    (recoveredValue26) listSeparator.
    recoveredValue27 := recoveredValue0.
    recoveredValue28 := recoveredArg1.
    recoveredValue29 := (recoveredValue28) specPeriod.
    (recoveredValue27) attribute: ('period') valueInteger: (recoveredValue29).
    recoveredValue30 := recoveredValue0.
    (recoveredValue30) listSeparator.
    recoveredValue31 := recoveredValue0.
    recoveredValue32 := recoveredArg1.
    recoveredValue33 := (recoveredValue32) delay.
    (recoveredValue31) attribute: ('delayMicroSeconds') valueInteger: (recoveredValue33).
    recoveredValue34 := recoveredValue0.
    (recoveredValue34) listSeparator.
    recoveredValue35 := recoveredValue0.
    recoveredValue36 := recoveredArg1.
    recoveredValue37 := (recoveredValue36) period.
    (recoveredValue35) attribute: ('periodMicroSeconds') valueInteger: (recoveredValue37).
    recoveredValue38 := recoveredValue0.
    (recoveredValue38) listSeparator.
    (recoveredValue0) endStructure.
    ^self
! !

"ASDBase.ic method 0x2050b6c8; bytecode file offset 0xe08014"
!SGOSTemplateDataGenerator methodsFor: 'recovered'!
eventTask: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 recoveredValue21 recoveredValue22 recoveredValue23 recoveredValue24 recoveredValue25 recoveredValue26 recoveredValue27 recoveredValue28 recoveredValue29 recoveredValue30 recoveredValue31 recoveredValue32 recoveredValue33 recoveredValue34 recoveredValue35 recoveredValue36 recoveredValue37 recoveredValue38 recoveredValue39 recoveredValue40 recoveredValue41 recoveredValue42 recoveredValue43 recoveredValue44 recoveredValue45 recoveredValue46 recoveredValue47 recoveredValue48 recoveredValue49 recoveredValue50 recoveredValue51 recoveredValue52 recoveredValue53 recoveredValue54 |
    recoveredValue0 := recoveredArg1.
    (self) semAnaTask: (recoveredValue0).
    recoveredValue1 := (self) expander.
    recoveredValue2 := recoveredValue1.
    (recoveredValue2) beginStructure.
    recoveredValue3 := recoveredValue1.
    (recoveredValue3) attribute: ('type') value: ('Interrupt').
    recoveredValue4 := recoveredValue1.
    (recoveredValue4) listSeparator.
    recoveredValue5 := recoveredValue1.
    recoveredValue6 := recoveredArg1.
    recoveredValue7 := (recoveredValue6) mdlLabel.
    (recoveredValue5) attribute: ('name') value: (recoveredValue7).
    recoveredValue8 := recoveredValue1.
    (recoveredValue8) listSeparator.
    recoveredValue9 := recoveredValue1.
    recoveredValue10 := recoveredArg1.
    recoveredValue11 := (recoveredValue10) id.
    (recoveredValue9) attribute: ('id') value: (recoveredValue11).
    recoveredValue12 := recoveredValue1.
    (recoveredValue12) listSeparator.
    recoveredValue13 := recoveredValue1.
    recoveredValue14 := recoveredArg1.
    recoveredValue15 := (recoveredValue14) attributes.
    recoveredValue16 := (recoveredValue15) priority.
    (recoveredValue13) attribute: ('prio') valueInteger: (recoveredValue16).
    recoveredValue17 := recoveredValue1.
    (recoveredValue17) listSeparator.
    recoveredValue18 := recoveredValue1.
    recoveredValue19 := recoveredArg1.
    recoveredValue20 := (recoveredValue19) ilePrio.
    (recoveredValue18) attribute: ('prioERCOSEK') valueInteger: (recoveredValue20).
    recoveredValue21 := recoveredValue1.
    (recoveredValue21) listSeparator.
    recoveredValue22 := recoveredValue1.
    recoveredValue23 := recoveredArg1.
    recoveredValue24 := (self) opModesList: (recoveredValue23).
    (recoveredValue22) attribute: ('autostartAppModes') list: (recoveredValue24).
    recoveredValue25 := recoveredValue1.
    (recoveredValue25) listSeparator.
    recoveredValue26 := recoveredValue1.
    (recoveredValue26) attribute: ('usedRessources') list: (#()).
    recoveredValue27 := recoveredValue1.
    (recoveredValue27) listSeparator.
    recoveredValue28 := recoveredValue1.
    (recoveredValue28) attribute: ('usedMessages') list: (#()).
    recoveredValue29 := recoveredValue1.
    (recoveredValue29) listSeparator.
    recoveredValue30 := recoveredValue1.
    (recoveredValue30) attribute: ('usesFPU') value: ('TRUE').
    recoveredValue31 := recoveredValue1.
    (recoveredValue31) listSeparator.
    recoveredValue32 := recoveredValue1.
    recoveredValue33 := recoveredArg1.
    recoveredValue34 := (self) processList: (recoveredValue33).
    (recoveredValue32) attribute: ('usedProcesses') list: (recoveredValue34).
    recoveredValue35 := recoveredValue1.
    (recoveredValue35) listSeparator.
    recoveredValue36 := recoveredValue1.
    (recoveredValue36) attribute: ('category') value: ('2').
    recoveredValue37 := recoveredValue1.
    (recoveredValue37) listSeparator.
    recoveredValue38 := recoveredValue1.
    recoveredValue39 := recoveredArg1.
    recoveredValue40 := (recoveredValue39) event.
    recoveredValue41 := (recoveredValue40) mdlLabel.
    (recoveredValue38) attribute: ('source') value: (recoveredValue41).
    recoveredValue42 := recoveredValue1.
    (recoveredValue42) listSeparator.
    recoveredValue43 := recoveredValue1.
    recoveredValue44 := recoveredArg1.
    recoveredValue45 := (recoveredValue44) event.
    recoveredValue46 := (recoveredValue45) isrAddress.
    (recoveredValue43) attribute: ('vectorAddress') value: (recoveredValue46).
    recoveredValue47 := recoveredValue1.
    (recoveredValue47) listSeparator.
    recoveredValue48 := recoveredValue1.
    recoveredValue49 := recoveredArg1.
    recoveredValue50 := (self) hookValue: (recoveredValue49).
    (recoveredValue48) attribute: ('hook') value: (recoveredValue50).
    recoveredValue51 := recoveredValue1.
    (recoveredValue51) listSeparator.
    recoveredValue52 := recoveredValue1.
    recoveredValue53 := recoveredArg1.
    recoveredValue54 := (self) minPeriodValue: (recoveredValue53).
    (recoveredValue52) attribute: ('minPeriodMicroSeconds') valueInteger: (recoveredValue54).
    (recoveredValue1) endStructure.
    ^self
! !

"ASDBase.ic method 0x20561678; bytecode file offset 0xe5dfe8"
!SGOSTemplateDataGenerator methodsFor: 'recovered'!
mdlTask: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0) semAnaTask: (recoveredStack1).
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := (recoveredStack0) expander.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack1) beginStructure.
            recoveredStack1 := recoveredStack0.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := 'type'.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack3 := (recoveredStack3) isMdlSoftwareTask.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            (recoveredStack3) ifTrue: [recoveredPC := 22] ifFalse: [recoveredPC := 28].
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack3 := 'Software'.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredPC := 30.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack3 := 'Alarm'.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            (recoveredStack1) attribute: (recoveredStack2) value: (recoveredStack3).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            (recoveredStack1) listSeparator.
            recoveredStack1 := recoveredStack0.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack2 := 'name'.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack3 := (recoveredStack3) mdlLabel.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            (recoveredStack1) attribute: (recoveredStack2) value: (recoveredStack3).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            (recoveredStack1) listSeparator.
            recoveredStack1 := recoveredStack0.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack2 := 'id'.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack3 := (recoveredStack3) id.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            (recoveredStack1) attribute: (recoveredStack2) value: (recoveredStack3).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            (recoveredStack1) listSeparator.
            recoveredStack1 := recoveredStack0.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack2 := 'prio'.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack3 := (recoveredStack3) attributes.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack3 := (recoveredStack3) priority.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            (recoveredStack1) attribute: (recoveredStack2) valueInteger: (recoveredStack3).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            (recoveredStack1) listSeparator.
            recoveredStack1 := recoveredStack0.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack2 := 'prioERCOSEK'.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack3 := (recoveredStack3) ilePrio.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            (recoveredStack1) attribute: (recoveredStack2) valueInteger: (recoveredStack3).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            (recoveredStack1) listSeparator.
            recoveredStack1 := recoveredStack0.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack2 := 'schedule'.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack4 := recoveredArg1.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack3 := (recoveredStack3) scheduleValue: (recoveredStack4).
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            (recoveredStack1) attribute: (recoveredStack2) value: (recoveredStack3).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            (recoveredStack1) listSeparator.
            recoveredStack1 := recoveredStack0.
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack2 := 'scheduleInternal'.
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            recoveredStack4 := recoveredArg1.
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack3 := (recoveredStack3) scheduleInternalValue: (recoveredStack4).
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            (recoveredStack1) attribute: (recoveredStack2) value: (recoveredStack3).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            (recoveredStack1) listSeparator.
            recoveredStack1 := recoveredStack0.
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            recoveredStack2 := 'activation'.
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            recoveredStack3 := (recoveredStack3) maxActive.
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            (recoveredStack1) attribute: (recoveredStack2) valueInteger: (recoveredStack3).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 114.
        ].
        recoveredStep = 114 ifTrue: [
            (recoveredStack1) listSeparator.
            recoveredStack1 := recoveredStack0.
            recoveredPC := 117.
        ].
        recoveredStep = 117 ifTrue: [
            recoveredStack2 := 'autostart'.
            recoveredPC := 119.
        ].
        recoveredStep = 119 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 120.
        ].
        recoveredStep = 120 ifTrue: [
            recoveredStack3 := (recoveredStack3) isMdlTimerTask.
            recoveredPC := 122.
        ].
        recoveredStep = 122 ifTrue: [
            (recoveredStack3) ifTrue: [recoveredPC := 126] ifFalse: [recoveredPC := 132].
        ].
        recoveredStep = 126 ifTrue: [
            recoveredStack3 := 'FALSE'.
            recoveredPC := 128.
        ].
        recoveredStep = 128 ifTrue: [
            recoveredPC := 141.
        ].
        recoveredStep = 132 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 133.
        ].
        recoveredStep = 133 ifTrue: [
            recoveredStack3 := (recoveredStack3) attributes.
            recoveredPC := 135.
        ].
        recoveredStep = 135 ifTrue: [
            recoveredStack3 := (recoveredStack3) isCgAttrAutostartOn.
            recoveredPC := 137.
        ].
        recoveredStep = 137 ifTrue: [
            recoveredStack3 := (recoveredStack3) asString.
            recoveredPC := 139.
        ].
        recoveredStep = 139 ifTrue: [
            recoveredStack3 := (recoveredStack3) asUppercase.
            recoveredPC := 141.
        ].
        recoveredStep = 141 ifTrue: [
            (recoveredStack1) attribute: (recoveredStack2) value: (recoveredStack3).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 144.
        ].
        recoveredStep = 144 ifTrue: [
            (recoveredStack1) listSeparator.
            recoveredStack1 := recoveredStack0.
            recoveredPC := 147.
        ].
        recoveredStep = 147 ifTrue: [
            recoveredStack2 := 'autostartAppModes'.
            recoveredPC := 149.
        ].
        recoveredStep = 149 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 150.
        ].
        recoveredStep = 150 ifTrue: [
            recoveredStack4 := recoveredArg1.
            recoveredPC := 151.
        ].
        recoveredStep = 151 ifTrue: [
            recoveredStack3 := (recoveredStack3) opModesList: (recoveredStack4).
            recoveredPC := 153.
        ].
        recoveredStep = 153 ifTrue: [
            (recoveredStack1) attribute: (recoveredStack2) list: (recoveredStack3).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 156.
        ].
        recoveredStep = 156 ifTrue: [
            (recoveredStack1) listSeparator.
            recoveredStack1 := recoveredStack0.
            recoveredPC := 159.
        ].
        recoveredStep = 159 ifTrue: [
            recoveredStack2 := 'usedRessources'.
            recoveredPC := 161.
        ].
        recoveredStep = 161 ifTrue: [
            recoveredStack3 := #().
            recoveredPC := 163.
        ].
        recoveredStep = 163 ifTrue: [
            (recoveredStack1) attribute: (recoveredStack2) list: (recoveredStack3).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 166.
        ].
        recoveredStep = 166 ifTrue: [
            (recoveredStack1) listSeparator.
            recoveredStack1 := recoveredStack0.
            recoveredPC := 169.
        ].
        recoveredStep = 169 ifTrue: [
            recoveredStack2 := 'usedMessages'.
            recoveredPC := 171.
        ].
        recoveredStep = 171 ifTrue: [
            recoveredStack3 := #().
            recoveredPC := 173.
        ].
        recoveredStep = 173 ifTrue: [
            (recoveredStack1) attribute: (recoveredStack2) list: (recoveredStack3).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 176.
        ].
        recoveredStep = 176 ifTrue: [
            (recoveredStack1) listSeparator.
            recoveredStack1 := recoveredStack0.
            recoveredPC := 179.
        ].
        recoveredStep = 179 ifTrue: [
            recoveredStack2 := 'usesFPU'.
            recoveredPC := 181.
        ].
        recoveredStep = 181 ifTrue: [
            recoveredStack3 := 'TRUE'.
            recoveredPC := 183.
        ].
        recoveredStep = 183 ifTrue: [
            (recoveredStack1) attribute: (recoveredStack2) value: (recoveredStack3).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 186.
        ].
        recoveredStep = 186 ifTrue: [
            (recoveredStack1) listSeparator.
            recoveredStack1 := recoveredStack0.
            recoveredPC := 189.
        ].
        recoveredStep = 189 ifTrue: [
            recoveredStack2 := 'usedProcesses'.
            recoveredPC := 191.
        ].
        recoveredStep = 191 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 192.
        ].
        recoveredStep = 192 ifTrue: [
            recoveredStack4 := recoveredArg1.
            recoveredPC := 193.
        ].
        recoveredStep = 193 ifTrue: [
            recoveredStack3 := (recoveredStack3) processList: (recoveredStack4).
            recoveredPC := 195.
        ].
        recoveredStep = 195 ifTrue: [
            (recoveredStack1) attribute: (recoveredStack2) list: (recoveredStack3).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 198.
        ].
        recoveredStep = 198 ifTrue: [
            (recoveredStack1) listSeparator.
            recoveredStack1 := recoveredStack0.
            recoveredPC := 201.
        ].
        recoveredStep = 201 ifTrue: [
            recoveredStack2 := 'hook'.
            recoveredPC := 203.
        ].
        recoveredStep = 203 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 204.
        ].
        recoveredStep = 204 ifTrue: [
            recoveredStack4 := recoveredArg1.
            recoveredPC := 205.
        ].
        recoveredStep = 205 ifTrue: [
            recoveredStack3 := (recoveredStack3) hookValue: (recoveredStack4).
            recoveredPC := 207.
        ].
        recoveredStep = 207 ifTrue: [
            (recoveredStack1) attribute: (recoveredStack2) value: (recoveredStack3).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 210.
        ].
        recoveredStep = 210 ifTrue: [
            (recoveredStack1) listSeparator.
            recoveredStack1 := recoveredStack0.
            recoveredPC := 213.
        ].
        recoveredStep = 213 ifTrue: [
            recoveredStack2 := 'deadlineMicroSeconds'.
            recoveredPC := 215.
        ].
        recoveredStep = 215 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 216.
        ].
        recoveredStep = 216 ifTrue: [
            recoveredStack4 := recoveredArg1.
            recoveredPC := 217.
        ].
        recoveredStep = 217 ifTrue: [
            recoveredStack3 := (recoveredStack3) deadlineValue: (recoveredStack4).
            recoveredPC := 219.
        ].
        recoveredStep = 219 ifTrue: [
            (recoveredStack1) attribute: (recoveredStack2) valueInteger: (recoveredStack3).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 222.
        ].
        recoveredStep = 222 ifTrue: [
            (recoveredStack1) listSeparator.
            recoveredStack1 := recoveredStack0.
            recoveredPC := 225.
        ].
        recoveredStep = 225 ifTrue: [
            recoveredStack2 := 'usesTerminateTask'.
            recoveredPC := 227.
        ].
        recoveredStep = 227 ifTrue: [
            recoveredStack3 := 'FALSE'.
            recoveredPC := 229.
        ].
        recoveredStep = 229 ifTrue: [
            (recoveredStack1) attribute: (recoveredStack2) value: (recoveredStack3).
            recoveredPC := 231.
        ].
        recoveredStep = 231 ifTrue: [
            (recoveredStack0) endStructure.
            recoveredPC := 233.
        ].
        recoveredStep = 233 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 234.
        ].
        recoveredStep = 234 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20649c28; bytecode file offset 0xf466f4"
!SGOSTemplateDataGenerator methodsFor: 'recovered'!
createKeywordList
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 recoveredValue21 recoveredValue22 recoveredValue23 recoveredValue24 recoveredValue25 recoveredValue26 recoveredValue27 recoveredValue28 recoveredValue29 recoveredValue30 recoveredValue31 recoveredValue32 recoveredValue33 recoveredValue34 recoveredValue35 recoveredValue36 recoveredValue37 recoveredValue38 recoveredValue39 recoveredValue40 recoveredValue41 recoveredValue42 recoveredValue43 recoveredValue44 recoveredValue45 recoveredValue46 recoveredValue47 recoveredValue48 recoveredValue49 recoveredValue50 recoveredValue51 recoveredValue52 recoveredValue53 recoveredValue54 recoveredValue55 recoveredValue56 recoveredValue57 recoveredValue58 recoveredValue59 recoveredValue60 recoveredValue61 recoveredValue62 recoveredValue63 recoveredValue64 recoveredValue65 recoveredValue66 recoveredValue67 recoveredValue68 recoveredValue69 recoveredValue70 recoveredValue71 recoveredValue72 recoveredValue73 recoveredValue74 recoveredValue75 recoveredValue76 recoveredValue77 recoveredValue78 recoveredValue79 recoveredValue80 recoveredValue81 recoveredValue82 recoveredValue83 recoveredValue84 recoveredValue85 recoveredValue86 recoveredValue87 recoveredValue88 recoveredValue89 recoveredValue90 recoveredValue91 recoveredValue92 recoveredValue93 recoveredValue94 recoveredValue95 recoveredValue96 recoveredValue97 recoveredValue98 recoveredValue99 recoveredValue100 recoveredValue101 recoveredValue102 recoveredValue103 recoveredValue104 recoveredValue105 recoveredValue106 recoveredValue107 recoveredValue108 recoveredValue109 recoveredValue110 recoveredValue111 recoveredValue112 recoveredValue113 recoveredValue114 recoveredValue115 recoveredValue116 recoveredValue117 recoveredValue118 recoveredValue119 recoveredValue120 recoveredValue121 recoveredValue122 recoveredValue123 recoveredValue124 recoveredValue125 recoveredValue126 recoveredValue127 recoveredValue128 recoveredValue129 recoveredValue130 recoveredValue131 recoveredValue132 recoveredValue133 recoveredValue134 |
    recoveredValue0 := OrderedCollection.
    recoveredValue1 := (recoveredValue0) new.
    recoveredValue2 := recoveredValue1.
    (recoveredValue2) add: ('ACTION').
    recoveredValue3 := recoveredValue1.
    (recoveredValue3) add: ('ACTIVATETASK').
    recoveredValue4 := recoveredValue1.
    (recoveredValue4) add: ('ACTIVATION').
    recoveredValue5 := recoveredValue1.
    (recoveredValue5) add: ('ALARM ').
    recoveredValue6 := recoveredValue1.
    (recoveredValue6) add: ('ALARMCALLBACK').
    recoveredValue7 := recoveredValue1.
    (recoveredValue7) add: ('ALARMTIME').
    recoveredValue8 := recoveredValue1.
    (recoveredValue8) add: ('ALWAYS').
    recoveredValue9 := recoveredValue1.
    (recoveredValue9) add: ('APPMODE').
    recoveredValue10 := recoveredValue1.
    (recoveredValue10) add: ('AUTOSTART').
    recoveredValue11 := recoveredValue1.
    (recoveredValue11) add: ('BIGENDIAN').
    recoveredValue12 := recoveredValue1.
    (recoveredValue12) add: ('BITORDERING').
    recoveredValue13 := recoveredValue1.
    (recoveredValue13) add: ('BITPOSITION').
    recoveredValue14 := recoveredValue1.
    (recoveredValue14) add: ('BYTEARRAY').
    recoveredValue15 := recoveredValue1.
    (recoveredValue15) add: ('CALLBACKROUTINENAME').
    recoveredValue16 := recoveredValue1.
    (recoveredValue16) add: ('CATEGORY').
    recoveredValue17 := recoveredValue1.
    (recoveredValue17) add: ('CDATATYPE').
    recoveredValue18 := recoveredValue1.
    (recoveredValue18) add: ('COM').
    recoveredValue19 := recoveredValue1.
    (recoveredValue19) add: ('COMAPPMODE').
    recoveredValue20 := recoveredValue1.
    (recoveredValue20) add: ('COMCALLBACK').
    recoveredValue21 := recoveredValue1.
    (recoveredValue21) add: ('COMERRORHOOK').
    recoveredValue22 := recoveredValue1.
    (recoveredValue22) add: ('COMEXTENDED').
    recoveredValue23 := recoveredValue1.
    (recoveredValue23) add: ('COMSTANDARD').
    recoveredValue24 := recoveredValue1.
    (recoveredValue24) add: ('COMSTARTCOMEXTENSION').
    recoveredValue25 := recoveredValue1.
    (recoveredValue25) add: ('COMSTATUS').
    recoveredValue26 := recoveredValue1.
    (recoveredValue26) add: ('COMTIMEBASE').
    recoveredValue27 := recoveredValue1.
    (recoveredValue27) add: ('COMUSEGETSERVICEID').
    recoveredValue28 := recoveredValue1.
    (recoveredValue28) add: ('COMUSEPARAMETERACCESS').
    recoveredValue29 := recoveredValue1.
    (recoveredValue29) add: ('COUNTER').
    recoveredValue30 := recoveredValue1.
    (recoveredValue30) add: ('CPUORDERCALLOUT').
    recoveredValue31 := recoveredValue1.
    (recoveredValue31) add: ('CYCLETIME').
    recoveredValue32 := recoveredValue1.
    (recoveredValue32) add: ('DATAINTERPRETATION').
    recoveredValue33 := recoveredValue1.
    (recoveredValue33) add: ('DIRECT').
    recoveredValue34 := recoveredValue1.
    (recoveredValue34) add: ('DIRECTION').
    recoveredValue35 := recoveredValue1.
    (recoveredValue35) add: ('DYNAMIC').
    recoveredValue36 := recoveredValue1.
    (recoveredValue36) add: ('ERRORHOOK').
    recoveredValue37 := recoveredValue1.
    (recoveredValue37) add: ('EVENT').
    recoveredValue38 := recoveredValue1.
    (recoveredValue38) add: ('EXTENDED').
    recoveredValue39 := recoveredValue1.
    (recoveredValue39) add: ('FILTER').
    recoveredValue40 := recoveredValue1.
    (recoveredValue40) add: ('FIRSTTIMEOUT').
    recoveredValue41 := recoveredValue1.
    (recoveredValue41) add: ('FULL').
    recoveredValue42 := recoveredValue1.
    (recoveredValue42) add: ('INITIALVALUE').
    recoveredValue43 := recoveredValue1.
    (recoveredValue43) add: ('INMCALLBACK').
    recoveredValue44 := recoveredValue1.
    (recoveredValue44) add: ('INTERNAL').
    recoveredValue45 := recoveredValue1.
    (recoveredValue45) add: ('IPDU').
    recoveredValue46 := recoveredValue1.
    (recoveredValue46) add: ('IPDUCALLOUT').
    recoveredValue47 := recoveredValue1.
    (recoveredValue47) add: ('IPDUPROPERTY').
    recoveredValue48 := recoveredValue1.
    (recoveredValue48) add: ('ISR').
    recoveredValue49 := recoveredValue1.
    (recoveredValue49) add: ('LAYERUSED').
    recoveredValue50 := recoveredValue1.
    (recoveredValue50) add: ('LINKED').
    recoveredValue51 := recoveredValue1.
    (recoveredValue51) add: ('LITTLEENDIAN').
    recoveredValue52 := recoveredValue1.
    (recoveredValue52) add: ('MASK').
    recoveredValue53 := recoveredValue1.
    (recoveredValue53) add: ('MASKEDNEWDIFFERSMASKEDOLD').
    recoveredValue54 := recoveredValue1.
    (recoveredValue54) add: ('MASKEDNEWDIFFERSX').
    recoveredValue55 := recoveredValue1.
    (recoveredValue55) add: ('MASKEDNEWEQUALSMASKEDOLD').
    recoveredValue56 := recoveredValue1.
    (recoveredValue56) add: ('MASKEDNEWEQUALSX').
    recoveredValue57 := recoveredValue1.
    (recoveredValue57) add: ('MAX').
    recoveredValue58 := recoveredValue1.
    (recoveredValue58) add: ('MAXALLOWEDVALUE').
    recoveredValue59 := recoveredValue1.
    (recoveredValue59) add: ('MAXIMUMSIZEINBITS').
    recoveredValue60 := recoveredValue1.
    (recoveredValue60) add: ('MESSAGE').
    recoveredValue61 := recoveredValue1.
    (recoveredValue61) add: ('MESSAGEPROPERTY').
    recoveredValue62 := recoveredValue1.
    (recoveredValue62) add: ('MIN').
    recoveredValue63 := recoveredValue1.
    (recoveredValue63) add: ('MINCYCLE').
    recoveredValue64 := recoveredValue1.
    (recoveredValue64) add: ('MINIMUMDELAYTIME').
    recoveredValue65 := recoveredValue1.
    (recoveredValue65) add: ('MIXED').
    recoveredValue66 := recoveredValue1.
    (recoveredValue66) add: ('MONITOREDIPDU').
    recoveredValue67 := recoveredValue1.
    (recoveredValue67) add: ('NETWORKMESSAGE').
    recoveredValue68 := recoveredValue1.
    (recoveredValue68) add: ('NETWORKORDERCALLOUT').
    recoveredValue69 := recoveredValue1.
    (recoveredValue69) add: ('NEVER').
    recoveredValue70 := recoveredValue1.
    (recoveredValue70) add: ('NEWISDIFFERENT').
    recoveredValue71 := recoveredValue1.
    (recoveredValue71) add: ('NEWISEQUAL').
    recoveredValue72 := recoveredValue1.
    (recoveredValue72) add: ('NEWISGREATER').
    recoveredValue73 := recoveredValue1.
    (recoveredValue73) add: ('NEWISGREATEROREQUAL').
    recoveredValue74 := recoveredValue1.
    (recoveredValue74) add: ('NEWISLESS').
    recoveredValue75 := recoveredValue1.
    (recoveredValue75) add: ('NEWISLESSOREQUAL').
    recoveredValue76 := recoveredValue1.
    (recoveredValue76) add: ('NEWISOUTSIDE').
    recoveredValue77 := recoveredValue1.
    (recoveredValue77) add: ('NEWISWITHIN').
    recoveredValue78 := recoveredValue1.
    (recoveredValue78) add: ('NM').
    recoveredValue79 := recoveredValue1.
    (recoveredValue79) add: ('NON').
    recoveredValue80 := recoveredValue1.
    (recoveredValue80) add: ('NOTIFICATIONERROR').
    recoveredValue81 := recoveredValue1.
    (recoveredValue81) add: ('OFFSET').
    recoveredValue82 := recoveredValue1.
    (recoveredValue82) add: ('ONEEVERYN').
    recoveredValue83 := recoveredValue1.
    (recoveredValue83) add: ('OS').
    recoveredValue84 := recoveredValue1.
    (recoveredValue84) add: ('PENDING').
    recoveredValue85 := recoveredValue1.
    (recoveredValue85) add: ('PERIOD').
    recoveredValue86 := recoveredValue1.
    (recoveredValue86) add: ('PERIODIC').
    recoveredValue87 := recoveredValue1.
    (recoveredValue87) add: ('POSTTASKHOOK').
    recoveredValue88 := recoveredValue1.
    (recoveredValue88) add: ('PRETASKHOOK').
    recoveredValue89 := recoveredValue1.
    (recoveredValue89) add: ('PRIORITY').
    recoveredValue90 := recoveredValue1.
    (recoveredValue90) add: ('QUEUESIZE').
    recoveredValue91 := recoveredValue1.
    (recoveredValue91) add: ('RECEIVED').
    recoveredValue92 := recoveredValue1.
    (recoveredValue92) add: ('RECEIVEMESSAGE').
    recoveredValue93 := recoveredValue1.
    (recoveredValue93) add: ('RECEIVE_DYNAMIC_EXTERNAL').
    recoveredValue94 := recoveredValue1.
    (recoveredValue94) add: ('RECEIVE_QUEUED_EXTERNAL').
    recoveredValue95 := recoveredValue1.
    (recoveredValue95) add: ('RECEIVE_QUEUED_INTERNAL').
    recoveredValue96 := recoveredValue1.
    (recoveredValue96) add: ('RECEIVE_UNQUEUED_EXTERNAL').
    recoveredValue97 := recoveredValue1.
    (recoveredValue97) add: ('RECEIVE_UNQUEUED_INTERNAL').
    recoveredValue98 := recoveredValue1.
    (recoveredValue98) add: ('RECEIVE_ZERO_EXTERNAL').
    recoveredValue99 := recoveredValue1.
    (recoveredValue99) add: ('RECEIVE_ZERO_INTERNAL').
    recoveredValue100 := recoveredValue1.
    (recoveredValue100) add: ('RECEIVE_ZERO_SENDERS').
    recoveredValue101 := recoveredValue1.
    (recoveredValue101) add: ('RESOURCE').
    recoveredValue102 := recoveredValue1.
    (recoveredValue102) add: ('RESOURCEPROPERTY').
    recoveredValue103 := recoveredValue1.
    (recoveredValue103) add: ('SCHEDULE').
    recoveredValue104 := recoveredValue1.
    (recoveredValue104) add: ('SENDINGMESSAGE').
    recoveredValue105 := recoveredValue1.
    (recoveredValue105) add: ('SENDINGMESSAGE').
    recoveredValue106 := recoveredValue1.
    (recoveredValue106) add: ('SEND_DYNAMIC_EXTERNAL').
    recoveredValue107 := recoveredValue1.
    (recoveredValue107) add: ('SEND_STATIC_EXTERNAL').
    recoveredValue108 := recoveredValue1.
    (recoveredValue108) add: ('SEND_STATIC_INTERNAL').
    recoveredValue109 := recoveredValue1.
    (recoveredValue109) add: ('SEND_ZERO_EXTERNAL').
    recoveredValue110 := recoveredValue1.
    (recoveredValue110) add: ('SEND_ZERO_INTERNAL').
    recoveredValue111 := recoveredValue1.
    (recoveredValue111) add: ('SENT').
    recoveredValue112 := recoveredValue1.
    (recoveredValue112) add: ('SETEVENT').
    recoveredValue113 := recoveredValue1.
    (recoveredValue113) add: ('SHUTDOWNHOOK').
    recoveredValue114 := recoveredValue1.
    (recoveredValue114) add: ('SIZEINBITS').
    recoveredValue115 := recoveredValue1.
    (recoveredValue115) add: ('STANDARD').
    recoveredValue116 := recoveredValue1.
    (recoveredValue116) add: ('STARTUPHOOK').
    recoveredValue117 := recoveredValue1.
    (recoveredValue117) add: ('STATUS').
    recoveredValue118 := recoveredValue1.
    (recoveredValue118) add: ('STRING CDATATYPE').
    recoveredValue119 := recoveredValue1.
    (recoveredValue119) add: ('TASK').
    recoveredValue120 := recoveredValue1.
    (recoveredValue120) add: ('TICKSPERBASE').
    recoveredValue121 := recoveredValue1.
    (recoveredValue121) add: ('TIMEOFFSET').
    recoveredValue122 := recoveredValue1.
    (recoveredValue122) add: ('TIMEOUT').
    recoveredValue123 := recoveredValue1.
    (recoveredValue123) add: ('TIMEPERIOD').
    recoveredValue124 := recoveredValue1.
    (recoveredValue124) add: ('TRANSFERPROPERTY').
    recoveredValue125 := recoveredValue1.
    (recoveredValue125) add: ('TRANSMISSIONMODE').
    recoveredValue126 := recoveredValue1.
    (recoveredValue126) add: ('TRIGGERED').
    recoveredValue127 := recoveredValue1.
    (recoveredValue127) add: ('TRIGGERED').
    recoveredValue128 := recoveredValue1.
    (recoveredValue128) add: ('UNSIGNEDINTEGER').
    recoveredValue129 := recoveredValue1.
    (recoveredValue129) add: ('USE').
    recoveredValue130 := recoveredValue1.
    (recoveredValue130) add: ('USEGETSERVICEID').
    recoveredValue131 := recoveredValue1.
    (recoveredValue131) add: ('USEPARAMETERACCESS').
    recoveredValue132 := recoveredValue1.
    (recoveredValue132) add: ('USERESSCHEDULER').
    recoveredValue133 := recoveredValue1.
    (recoveredValue133) add: ('X').
    recoveredValue134 := recoveredValue1.
    (recoveredValue134) add: ('ZERO').
    ^recoveredValue1
! !

