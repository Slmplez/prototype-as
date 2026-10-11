"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20015324; bytecode file offset 0x912098"
!AbtMRIManager methodsFor: 'recovered'!
requestClass
    | recoveredValue0 |
    recoveredValue0 := AbtNlsMprRequest.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2001b584; bytecode file offset 0x92209c"
!AbtMRIManager methodsFor: 'recovered'!
nlsRegistrationType
    ^'mpr'
! !

"ASDBase.ic method 0x20084f48; bytecode file offset 0x981ca4"
!AbtMRIManager methodsFor: 'recovered'!
unregisterStringsForApp: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) removeRequest: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x200abd9c; bytecode file offset 0x9a8668"
!AbtMRIManager methodsFor: 'recovered'!
defaultMRIGroupName: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) class.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) filterGroupName: (recoveredValue1).
    defaultGroupName := recoveredValue2.
    ^self
! !

"ASDBase.ic method 0x2010c438; bytecode file offset 0xa08d14"
!AbtMRIManager methodsFor: 'recovered'!
registerStringsForApp: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    (self) pruneDeadRequests.
    recoveredValue0 := recoveredArg1.
    (self) addThenResolveRequest: (recoveredValue0).
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (self) findRequest: (recoveredValue1).
    recoveredValue3 := (recoveredValue2) resolution.
    recoveredValue4 := (recoveredValue3) notNil.
    ^recoveredValue4
! !

"ASDBase.ic method 0x2013ab00; bytecode file offset 0xa373bc"
!AbtMRIManager methodsFor: 'recovered'!
defaultMRIGroupName
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := defaultGroupName.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) class.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) defaultMRIGroupName.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredPC := 18.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := defaultGroupName.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2015af10; bytecode file offset 0xa577cc"
!AbtMRIManager methodsFor: 'recovered'!
mriExists: recoveredArg1 group: recoveredArg2
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) groupNamed: (recoveredStack1).
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredPC := 19.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := (recoveredStack0) mriExists: (recoveredStack1).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2017f190; bytecode file offset 0xa7ba4c"
!AbtMRIManager methodsFor: 'recovered'!
missingGroups
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := missingGroups.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := Dictionary.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            missingGroups := recoveredStack2.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredPC := 22.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := missingGroups.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2018f604; bytecode file offset 0xa8bee8"
!AbtMRIManager methodsFor: 'recovered'!
makeCfsDependent
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) requestsAndResolutions.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := [:block280d1a0cArg1 | 
    | block280d1a0cStack0 block280d1a0cStack1 block280d1a0cStack2 block280d1a0cStack3 block280d1a0cPC block280d1a0cStep block280d1a0cDone block280d1a0cResult |
    block280d1a0cStack0 := self.
    block280d1a0cPC := 4.
    block280d1a0cDone := false.
    [block280d1a0cDone not] whileTrue: [
        block280d1a0cStep := block280d1a0cPC.
        block280d1a0cStep = 4 ifTrue: [
            block280d1a0cStack1 := nil.
            block280d1a0cPC := 5.
        ].
        block280d1a0cStep = 5 ifTrue: [
            block280d1a0cStack2 := block280d1a0cArg1.
            block280d1a0cPC := 6.
        ].
        block280d1a0cStep = 6 ifTrue: [
            block280d1a0cStack2 := (block280d1a0cStack2) abtIsNlsRequest.
            block280d1a0cPC := 7.
        ].
        block280d1a0cStep = 7 ifTrue: [
            (block280d1a0cStack2) ifTrue: [block280d1a0cPC := 10] ifFalse: [block280d1a0cPC := 13].
        ].
        block280d1a0cStep = 10 ifTrue: [
            block280d1a0cPC := 11.
        ].
        block280d1a0cStep = 11 ifTrue: [
            block280d1a0cStack1 := block280d1a0cArg1.
            block280d1a0cPC := 12.
        ].
        block280d1a0cStep = 12 ifTrue: [
            block280d1a0cStack1 := (block280d1a0cStack1) resolve.
            block280d1a0cPC := 13.
        ].
        block280d1a0cStep = 13 ifTrue: [
            block280d1a0cResult := block280d1a0cStack1.
            block280d1a0cDone := true.
        ].
    ].
    block280d1a0cResult
].
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201d3910; bytecode file offset 0xad01dc"
!AbtMRIManager methodsFor: 'recovered'!
getMRIString: recoveredArg1 group: recoveredArg2
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) groupNamed: (recoveredStack1).
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 22] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := Locale.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := (recoveredStack0) current.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) preferredStringClass.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := (recoveredStack0) new.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredPC := 26.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := (recoveredStack0) getMRIString: (recoveredStack1).
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201e8610; bytecode file offset 0xae4ef4"
!AbtMRIManager methodsFor: 'recovered'!
nlsRegister: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) nlsRegistrationType.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) key.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
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
            recoveredStack0 := recoveredArg1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) value.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := (recoveredStack0) abtNlsHasValidMprInfo.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 22] ifFalse: [recoveredPC := 20].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := (recoveredStack1) value.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            (recoveredStack0) registerStringsForApp: (recoveredStack1).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := true.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201e862c; bytecode file offset 0xae4ef4"
!AbtMRIManager methodsFor: 'recovered'!
nlsUnregister: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) nlsRegistrationType.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) key.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
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
            recoveredStack0 := recoveredArg1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) value.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := (recoveredStack0) abtNlsHasValidMprInfo.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 22] ifFalse: [recoveredPC := 20].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := (recoveredStack1) value.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            (recoveredStack0) unregisterStringsForApp: (recoveredStack1).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := true.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20238c18; bytecode file offset 0xb354e4"
!AbtMRIManager methodsFor: 'recovered'!
missingGroupNamed: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) asString.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := (self) missingGroups.
    recoveredValue3 := recoveredLocal1.
    recoveredValue4 := [
    | recoveredBlock15Value0 recoveredBlock15Value1 recoveredBlock15Value2 recoveredBlock15Value3 |
    recoveredBlock15Value0 := AbtNlsMissingGroup.
    recoveredBlock15Value1 := recoveredLocal1.
    recoveredBlock15Value2 := (recoveredBlock15Value0) named: (recoveredBlock15Value1).
    recoveredBlock15Value3 := recoveredBlock15Value2.
    (recoveredBlock15Value3) log.
    recoveredBlock15Value2
].
    recoveredValue5 := (recoveredValue2) at: (recoveredValue3) ifAbsentPut: (recoveredValue4).
    ^recoveredValue5
! !

"ASDBase.ic method 0x202460b8; bytecode file offset 0xb4297c"
!AbtMRIManager methodsFor: 'recovered'!
getMRI: recoveredArg1 group: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) groupNamed: (recoveredStack1).
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredPC := 19.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := (recoveredStack0) getMRI: (recoveredStack1).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 34] ifFalse: [recoveredPC := 24].
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := AbtMRI.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := (recoveredStack0) missingGroup: (recoveredStack1) id: (recoveredStack2).
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredPC := 35.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x202486e0; bytecode file offset 0xb44fb4"
!AbtMRIManager methodsFor: 'recovered'!
abtRelocalize
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) requestsAndResolutions.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := [:block280de810Arg1 | 
    | block280de810Stack0 block280de810Stack1 block280de810Stack2 block280de810Stack3 block280de810PC block280de810Step block280de810Done block280de810Result |
    block280de810Stack0 := self.
    block280de810PC := 4.
    block280de810Done := false.
    [block280de810Done not] whileTrue: [
        block280de810Step := block280de810PC.
        block280de810Step = 4 ifTrue: [
            block280de810Stack1 := nil.
            block280de810PC := 5.
        ].
        block280de810Step = 5 ifTrue: [
            block280de810Stack2 := block280de810Arg1.
            block280de810PC := 6.
        ].
        block280de810Step = 6 ifTrue: [
            block280de810Stack2 := (block280de810Stack2) abtIsNlsRequest.
            block280de810PC := 7.
        ].
        block280de810Step = 7 ifTrue: [
            (block280de810Stack2) ifTrue: [block280de810PC := 10] ifFalse: [block280de810PC := 22].
        ].
        block280de810Step = 10 ifTrue: [
            block280de810Stack2 := block280de810Arg1.
            block280de810PC := 11.
        ].
        block280de810Step = 11 ifTrue: [
            block280de810Stack2 := (block280de810Stack2) resolution.
            block280de810PC := 12.
        ].
        block280de810Step = 12 ifTrue: [
            (block280de810Stack2 == nil) ifTrue: [block280de810PC := 22] ifFalse: [block280de810PC := 16].
        ].
        block280de810Step = 16 ifTrue: [
            block280de810PC := 17.
        ].
        block280de810Step = 17 ifTrue: [
            block280de810Stack1 := block280de810Arg1.
            block280de810PC := 18.
        ].
        block280de810Step = 18 ifTrue: [
            block280de810Stack1 := (block280de810Stack1) resolution.
            block280de810PC := 19.
        ].
        block280de810Step = 19 ifTrue: [
            block280de810Stack2 := nil.
            block280de810PC := 20.
        ].
        block280de810Step = 20 ifTrue: [
            block280de810Stack1 := (block280de810Stack1) translator: (block280de810Stack2).
            block280de810PC := 22.
        ].
        block280de810Step = 22 ifTrue: [
            block280de810Result := block280de810Stack1.
            block280de810Done := true.
        ].
    ].
    block280de810Result
].
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := super abtRelocalize.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2026a758; bytecode file offset 0xb67030"
!AbtMRIManager methodsFor: 'recovered'!
groupNames
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) requestsAndResolutions.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := [:block280e01f0Arg1 | 
    | block280e01f0Stack0 block280e01f0Stack1 block280e01f0Stack2 block280e01f0Stack3 block280e01f0PC block280e01f0Step block280e01f0Done block280e01f0Result |
    block280e01f0Stack0 := self.
    block280e01f0PC := 4.
    block280e01f0Done := false.
    [block280e01f0Done not] whileTrue: [
        block280e01f0Step := block280e01f0PC.
        block280e01f0Step = 4 ifTrue: [
            block280e01f0Stack1 := false.
            block280e01f0PC := 5.
        ].
        block280e01f0Step = 5 ifTrue: [
            block280e01f0Stack2 := block280e01f0Arg1.
            block280e01f0PC := 6.
        ].
        block280e01f0Step = 6 ifTrue: [
            block280e01f0Stack2 := (block280e01f0Stack2) isResolved.
            block280e01f0PC := 7.
        ].
        block280e01f0Step = 7 ifTrue: [
            (block280e01f0Stack2) ifTrue: [block280e01f0PC := 10] ifFalse: [block280e01f0PC := 18].
        ].
        block280e01f0Step = 10 ifTrue: [
            block280e01f0PC := 11.
        ].
        block280e01f0Step = 11 ifTrue: [
            block280e01f0Stack1 := block280e01f0Arg1.
            block280e01f0PC := 12.
        ].
        block280e01f0Step = 12 ifTrue: [
            block280e01f0Stack1 := (block280e01f0Stack1) resolution.
            block280e01f0PC := 13.
        ].
        block280e01f0Step = 13 ifTrue: [
            block280e01f0Stack1 := (block280e01f0Stack1) groupName.
            block280e01f0PC := 15.
        ].
        block280e01f0Step = 15 ifTrue: [
            block280e01f0Stack2 := 'unknown'.
            block280e01f0PC := 17.
        ].
        block280e01f0Step = 17 ifTrue: [
            block280e01f0Stack1 := (block280e01f0Stack1) ~= (block280e01f0Stack2).
            block280e01f0PC := 18.
        ].
        block280e01f0Step = 18 ifTrue: [
            block280e01f0Result := block280e01f0Stack1.
            block280e01f0Done := true.
        ].
    ].
    block280e01f0Result
].
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := (recoveredStack0) select: (recoveredStack1).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := [:block280e0214Arg1 | 
    | block280e0214Value0 block280e0214Value1 block280e0214Value2 |
    block280e0214Value0 := block280e0214Arg1.
    block280e0214Value1 := (block280e0214Value0) resolution.
    block280e0214Value2 := (block280e0214Value1) groupName.
    block280e0214Value2
].
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack0 := (recoveredStack0) collect: (recoveredStack1).
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x203a5540; bytecode file offset 0xca1e1c"
!AbtMRIManager methodsFor: 'recovered'!
groupNamed: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) asString.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) requestsAndResolutions.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := [:recoveredBlock12Arg1 | 
    | recoveredBlock12Stack0 recoveredBlock12Stack1 recoveredBlock12Stack2 recoveredBlock12Stack3 recoveredBlock12PC recoveredBlock12Step recoveredBlock12Done recoveredBlock12Result |
    recoveredBlock12Stack0 := self.
    recoveredBlock12PC := 18.
    recoveredBlock12Done := false.
    [recoveredBlock12Done not] whileTrue: [
        recoveredBlock12Step := recoveredBlock12PC.
        recoveredBlock12Step = 18 ifTrue: [
            recoveredBlock12Stack1 := false.
            recoveredBlock12PC := 19.
        ].
        recoveredBlock12Step = 19 ifTrue: [
            recoveredBlock12Stack2 := recoveredBlock12Arg1.
            recoveredBlock12PC := 20.
        ].
        recoveredBlock12Step = 20 ifTrue: [
            recoveredBlock12Stack2 := (recoveredBlock12Stack2) isResolved.
            recoveredBlock12PC := 21.
        ].
        recoveredBlock12Step = 21 ifTrue: [
            (recoveredBlock12Stack2) ifTrue: [recoveredBlock12PC := 24] ifFalse: [recoveredBlock12PC := 33].
        ].
        recoveredBlock12Step = 24 ifTrue: [
            recoveredBlock12PC := 25.
        ].
        recoveredBlock12Step = 25 ifTrue: [
            recoveredBlock12Stack1 := recoveredBlock12Arg1.
            recoveredBlock12PC := 26.
        ].
        recoveredBlock12Step = 26 ifTrue: [
            recoveredBlock12Stack1 := (recoveredBlock12Stack1) resolution.
            recoveredBlock12PC := 27.
        ].
        recoveredBlock12Step = 27 ifTrue: [
            recoveredBlock12Stack1 := (recoveredBlock12Stack1) groupName.
            recoveredBlock12PC := 29.
        ].
        recoveredBlock12Step = 29 ifTrue: [
            recoveredBlock12Stack2 := recoveredLocal2.
            recoveredBlock12PC := 32.
        ].
        recoveredBlock12Step = 32 ifTrue: [
            recoveredBlock12Stack1 := (recoveredBlock12Stack1) = (recoveredBlock12Stack2).
            recoveredBlock12PC := 33.
        ].
        recoveredBlock12Step = 33 ifTrue: [
            recoveredBlock12Result := recoveredBlock12Stack1.
            recoveredBlock12Done := true.
        ].
    ].
    recoveredBlock12Result
].
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack2 := [].
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := (recoveredStack0) detect: (recoveredStack1) ifNone: (recoveredStack2).
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 72] ifFalse: [recoveredPC := 48].
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack0 := 'unknown*'.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack0 := (recoveredStack0) match: (recoveredStack1).
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 58] ifFalse: [recoveredPC := 62].
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredPC := 68.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack0 := (recoveredStack0) missingGroupNamed: (recoveredStack1).
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredPC := 76.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack0 := (recoveredStack0) resolution.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

