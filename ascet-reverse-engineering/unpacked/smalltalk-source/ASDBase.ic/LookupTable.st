"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20001a30; bytecode file offset 0x8ffcfc"
!LookupTable methodsFor: 'recovered'!
asSameLookupTable
    ^self
! !

"ASDBase.ic method 0x20003db0; bytecode file offset 0x90206c"
!LookupTable methodsFor: 'recovered'!
testIndex: recoveredArg1
    ^self
! !

"ASDBase.ic method 0x2000e1e4; bytecode file offset 0x90ab8c"
!LookupTable methodsFor: 'recovered'!
allPartProxiesWithUnloaded: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := (self) values.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2000f644; bytecode file offset 0x90bef8"
!LookupTable methodsFor: 'recovered'!
indexOf: recoveredArg1 using: recoveredArg2
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20019f10; bytecode file offset 0x92209c"
!LookupTable methodsFor: 'recovered'!
requirementsManagementDataKey
    ^'requirementsManagementDataKey'
! !

"ASDBase.ic method 0x2001c490; bytecode file offset 0x92209c"
!LookupTable methodsFor: 'recovered'!
customerDataKey
    ^'customerDataKey'
! !

"ASDBase.ic method 0x200240b0; bytecode file offset 0x92209c"
!LookupTable methodsFor: 'recovered'!
asSameCollectionMethod
    ^'asSameLookupTable'
! !

"ASDBase.ic method 0x2002444c; bytecode file offset 0x92209c"
!LookupTable methodsFor: 'recovered'!
applicationDataKey
    ^'applicationDataKey'
! !

"ASDBase.ic method 0x20024c8c; bytecode file offset 0x92209c"
!LookupTable methodsFor: 'recovered'!
configurationManagementDataKey
    ^'configurationManagementDataKey'
! !

"ASDBase.ic method 0x20040a50; bytecode file offset 0x93d83c"
!LookupTable methodsFor: 'recovered'!
keysSize
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := keys.
    recoveredValue1 := (recoveredValue0) size.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20075574; bytecode file offset 0x9757c8"
!LookupTable methodsFor: 'recovered'!
isDictionary
    ^true
! !

"ASDBase.ic method 0x20093820; bytecode file offset 0x9904ac"
!LookupTable methodsFor: 'recovered'!
customerData: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) customerDataKey.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (self) at: (recoveredValue0) put: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x20093970; bytecode file offset 0x9904ac"
!LookupTable methodsFor: 'recovered'!
userData: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) userDataKey.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (self) at: (recoveredValue0) put: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x20093a50; bytecode file offset 0x9904ac"
!LookupTable methodsFor: 'recovered'!
configurationManagementData: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) configurationManagementDataKey.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (self) at: (recoveredValue0) put: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x20093a70; bytecode file offset 0x9904ac"
!LookupTable methodsFor: 'recovered'!
requirementsManagementData: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) requirementsManagementDataKey.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (self) at: (recoveredValue0) put: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x20093af0; bytecode file offset 0x9904ac"
!LookupTable methodsFor: 'recovered'!
applicationData: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) applicationDataKey.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (self) at: (recoveredValue0) put: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x20099a00; bytecode file offset 0x9962cc"
!LookupTable methodsFor: 'recovered'!
asap2Remove: recoveredArg1 ifAbsent: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) name.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := (self) removeKey: (recoveredValue1) ifAbsent: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x2009e2e8; bytecode file offset 0x99ad10"
!LookupTable methodsFor: 'recovered'!
requirementsManagementData
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) requirementsManagementDataKey.
    recoveredValue1 := [].
    recoveredValue2 := (self) at: (recoveredValue0) ifAbsent: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x2009e374; bytecode file offset 0x99ad10"
!LookupTable methodsFor: 'recovered'!
applicationData
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) applicationDataKey.
    recoveredValue1 := [].
    recoveredValue2 := (self) at: (recoveredValue0) ifAbsent: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x2009e3d8; bytecode file offset 0x99ad10"
!LookupTable methodsFor: 'recovered'!
configurationManagementData
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) configurationManagementDataKey.
    recoveredValue1 := [].
    recoveredValue2 := (self) at: (recoveredValue0) ifAbsent: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x2009e400; bytecode file offset 0x99ad10"
!LookupTable methodsFor: 'recovered'!
customerData
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) customerDataKey.
    recoveredValue1 := [].
    recoveredValue2 := (self) at: (recoveredValue0) ifAbsent: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x2009e43c; bytecode file offset 0x99ad10"
!LookupTable methodsFor: 'recovered'!
userData
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) userDataKey.
    recoveredValue1 := [].
    recoveredValue2 := (self) at: (recoveredValue0) ifAbsent: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x200bf210; bytecode file offset 0x9bc0b4"
!LookupTable methodsFor: 'recovered'!
keyArray: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    keys := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200bf99c; bytecode file offset 0x9bd228"
!LookupTable methodsFor: 'recovered'!
valueArray: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    values := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200d042c; bytecode file offset 0x9ccda0"
!LookupTable methodsFor: 'recovered'!
userDataKey
    | recoveredValue0 |
    recoveredValue0 := ('Kk') == ('Call_63666').
    ^'userDataKey'
! !

"ASDBase.ic method 0x20115624; bytecode file offset 0xa11ee0"
!LookupTable methodsFor: 'recovered'!
keysArray
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := keys.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := [:block280c6b1cArg1 | 
    | block280c6b1cValue0 block280c6b1cValue1 |
    block280c6b1cValue0 := block280c6b1cArg1.
    block280c6b1cValue1 := (block280c6b1cValue0) notNil.
    block280c6b1cValue1
].
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) select: (recoveredStack2).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x20134e94; bytecode file offset 0xa31758"
!LookupTable methodsFor: 'recovered'!
replace: recoveredArg1 with: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) key.
    recoveredValue2 := [].
    (self) removeKey: (recoveredValue1) ifAbsent: (recoveredValue2).
    recoveredValue3 := recoveredArg2.
    recoveredValue4 := (recoveredValue3) key.
    recoveredValue5 := recoveredArg2.
    (self) at: (recoveredValue4) put: (recoveredValue5).
    ^self
! !

"ASDBase.ic method 0x2014b160; bytecode file offset 0xa47a34"
!LookupTable methodsFor: 'recovered'!
emWriteValue: recoveredArg1 ifPresent: recoveredArg2
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 |
    recoveredValue0 := values.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) at: (recoveredValue1).
    recoveredValue3 := recoveredArg2.
    recoveredValue4 := (recoveredValue2) emWrite: (recoveredValue3).
    recoveredLocal1 := recoveredValue4.
    recoveredValue5 := values.
    recoveredValue6 := recoveredArg1.
    recoveredValue7 := recoveredLocal1.
    (recoveredValue5) at: (recoveredValue6) put: (recoveredValue7).
    recoveredValue8 := recoveredLocal1.
    ^recoveredValue8
! !

"ASDBase.ic method 0x2014b174; bytecode file offset 0xa47a34"
!LookupTable methodsFor: 'recovered'!
emReadValue: recoveredArg1 ifPresent: recoveredArg2
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 |
    recoveredValue0 := values.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) at: (recoveredValue1).
    recoveredValue3 := recoveredArg2.
    recoveredValue4 := (recoveredValue2) emRead: (recoveredValue3).
    recoveredLocal1 := recoveredValue4.
    recoveredValue5 := values.
    recoveredValue6 := recoveredArg1.
    recoveredValue7 := recoveredLocal1.
    (recoveredValue5) at: (recoveredValue6) put: (recoveredValue7).
    recoveredValue8 := recoveredLocal1.
    ^recoveredValue8
! !

"ASDBase.ic method 0x2014e220; bytecode file offset 0xa4aae0"
!LookupTable methodsFor: 'recovered'!
clearId
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := [:block280ccd8cArg1 :block280ccd8cArg2 | 
    | block280ccd8cValue0 block280ccd8cValue1 block280ccd8cValue2 |
    block280ccd8cValue0 := block280ccd8cArg1.
    (block280ccd8cValue0) clearId.
    block280ccd8cValue1 := block280ccd8cArg2.
    block280ccd8cValue2 := (block280ccd8cValue1) clearId.
    block280ccd8cValue2
].
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack0) keysAndValuesDo: (recoveredStack1).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2015ce20; bytecode file offset 0xa596dc"
!LookupTable methodsFor: 'recovered'!
minimizeSize
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := keys.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := elementCount.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := (recoveredStack1) > (recoveredStack2).
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 20].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := elementCount.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := (recoveredStack2) + (1).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := (recoveredStack1) rehash: (recoveredStack2).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 20 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201ad670; bytecode file offset 0xaa9f38"
!LookupTable methodsFor: 'recovered'!
dumpDBUsing: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) dump: (recoveredStack2).
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := (recoveredStack1) currentError.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack2 := 1.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 23].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := DBLinDeLinError.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack2 := (recoveredStack2) currentErrorString.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := (recoveredStack1) create: (recoveredStack2).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x201b5708; bytecode file offset 0xab1fc4"
!LookupTable methodsFor: 'recovered'!
selectObjectsFrom: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := [:recoveredBlock4Arg1 :recoveredBlock4Arg2 | 
    | recoveredBlock4Value0 recoveredBlock4Value1 recoveredBlock4Value2 recoveredBlock4Value3 recoveredBlock4Value4 |
    recoveredBlock4Value0 := recoveredBlock4Arg1.
    recoveredBlock4Value1 := recoveredArg1.
    (recoveredBlock4Value0) selectObjectsFrom: (recoveredBlock4Value1).
    recoveredBlock4Value2 := recoveredBlock4Arg2.
    recoveredBlock4Value3 := recoveredArg1.
    recoveredBlock4Value4 := (recoveredBlock4Value2) selectObjectsFrom: (recoveredBlock4Value3).
    recoveredBlock4Value4
].
    (self) keysAndValuesDo: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x201bccb4; bytecode file offset 0xab9590"
!LookupTable methodsFor: 'recovered'!
emReadValue: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := values.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2).
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack2 := [:block280d45c8Arg1 | 
    nil
].
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) emRead: (recoveredStack2).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := values.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x201bcccc; bytecode file offset 0xab9590"
!LookupTable methodsFor: 'recovered'!
emWriteValue: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := values.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2).
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack2 := [:block280d45ecArg1 | 
    nil
].
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) emWrite: (recoveredStack2).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := values.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x201bebac; bytecode file offset 0xabb470"
!LookupTable methodsFor: 'recovered'!
at: recoveredArg1 ifAbsent: recoveredArg2 ifPresent: recoveredArg3
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
            recoveredStack0 := (recoveredStack0) findKeyIndex: (recoveredStack1).
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
            recoveredStack1 := 0.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 17].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := recoveredArg2.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) value.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := recoveredArg3.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := values.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := (recoveredStack0) value: (recoveredStack1).
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201ce724; bytecode file offset 0xacb008"
!LookupTable methodsFor: 'recovered'!
requirementsManagementData: recoveredArg1 key: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := (self) requirementsManagementDataKey.
    recoveredValue1 := [
    | recoveredBlock6Value0 recoveredBlock6Value1 recoveredBlock6Value2 recoveredBlock6Value3 |
    recoveredBlock6Value0 := (self) requirementsManagementDataKey.
    recoveredBlock6Value1 := Dictionary.
    recoveredBlock6Value2 := (recoveredBlock6Value1) new.
    recoveredBlock6Value3 := (self) at: (recoveredBlock6Value0) put: (recoveredBlock6Value2).
    recoveredBlock6Value3
].
    recoveredValue2 := (self) at: (recoveredValue0) ifAbsent: (recoveredValue1).
    recoveredValue3 := recoveredArg2.
    recoveredValue4 := recoveredArg1.
    recoveredValue5 := (recoveredValue2) at: (recoveredValue3) put: (recoveredValue4).
    ^recoveredValue5
! !

"ASDBase.ic method 0x201ce740; bytecode file offset 0xacb008"
!LookupTable methodsFor: 'recovered'!
configurationManagementData: recoveredArg1 key: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := (self) configurationManagementDataKey.
    recoveredValue1 := [
    | recoveredBlock6Value0 recoveredBlock6Value1 recoveredBlock6Value2 recoveredBlock6Value3 |
    recoveredBlock6Value0 := (self) configurationManagementDataKey.
    recoveredBlock6Value1 := Dictionary.
    recoveredBlock6Value2 := (recoveredBlock6Value1) new.
    recoveredBlock6Value3 := (self) at: (recoveredBlock6Value0) put: (recoveredBlock6Value2).
    recoveredBlock6Value3
].
    recoveredValue2 := (self) at: (recoveredValue0) ifAbsent: (recoveredValue1).
    recoveredValue3 := recoveredArg2.
    recoveredValue4 := recoveredArg1.
    recoveredValue5 := (recoveredValue2) at: (recoveredValue3) put: (recoveredValue4).
    ^recoveredValue5
! !

"ASDBase.ic method 0x201fa9b4; bytecode file offset 0xaf7270"
!LookupTable methodsFor: 'recovered'!
addAndOrReturnIndex: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) hash.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := recoveredLocal1.
    recoveredValue3 := [
    | recoveredBlock14Value0 |
    recoveredBlock14Value0 := recoveredArg1.
    recoveredBlock14Value0
].
    (self) at: (recoveredValue2) ifAbsentPut: (recoveredValue3).
    recoveredValue4 := recoveredLocal1.
    ^recoveredValue4
! !

"ASDBase.ic method 0x20204888; bytecode file offset 0xb0115c"
!LookupTable methodsFor: 'recovered'!
detectKey: recoveredArg1 ifNone: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := [:recoveredBlock4Arg1 | 
    | recoveredBlock4Stack0 recoveredBlock4Stack1 recoveredBlock4Stack2 recoveredBlock4Stack3 recoveredBlock4Stack4 recoveredBlock4PC recoveredBlock4Step recoveredBlock4Done recoveredBlock4Result |
    recoveredBlock4Stack0 := self.
    recoveredBlock4PC := 10.
    recoveredBlock4Done := false.
    [recoveredBlock4Done not] whileTrue: [
        recoveredBlock4Step := recoveredBlock4PC.
        recoveredBlock4Step = 10 ifTrue: [
            recoveredBlock4Stack1 := nil.
            recoveredBlock4PC := 11.
        ].
        recoveredBlock4Step = 11 ifTrue: [
            recoveredBlock4Stack2 := recoveredArg1.
            recoveredBlock4PC := 14.
        ].
        recoveredBlock4Step = 14 ifTrue: [
            recoveredBlock4Stack3 := recoveredBlock4Arg1.
            recoveredBlock4PC := 15.
        ].
        recoveredBlock4Step = 15 ifTrue: [
            recoveredBlock4Stack2 := (recoveredBlock4Stack2) value: (recoveredBlock4Stack3).
            recoveredBlock4PC := 16.
        ].
        recoveredBlock4Step = 16 ifTrue: [
            (recoveredBlock4Stack2) ifTrue: [recoveredBlock4PC := 20] ifFalse: [recoveredBlock4PC := 23].
        ].
        recoveredBlock4Step = 20 ifTrue: [
            recoveredBlock4PC := 21.
        ].
        recoveredBlock4Step = 21 ifTrue: [
            recoveredBlock4Stack1 := recoveredBlock4Arg1.
            recoveredBlock4PC := 22.
        ].
        recoveredBlock4Step = 22 ifTrue: [
            ^recoveredBlock4Stack1
        ].
        recoveredBlock4Step = 23 ifTrue: [
            recoveredBlock4Result := recoveredBlock4Stack1.
            recoveredBlock4Done := true.
        ].
    ].
    recoveredBlock4Result
].
    (self) keysDo: (recoveredValue0).
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := (recoveredValue1) value.
    ^recoveredValue2
! !

"ASDBase.ic method 0x20208a48; bytecode file offset 0xb05310"
!LookupTable methodsFor: 'recovered'!
at: recoveredArg1 ifAbsentPut: recoveredArg2 ifPresent: recoveredArg3
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
            recoveredStack0 := (recoveredStack0) findKeyIndex: (recoveredStack1).
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
            recoveredStack1 := 0.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 21].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := (recoveredStack2) value.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1) put: (recoveredStack2).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := recoveredArg3.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := values.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2).
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := (recoveredStack0) value: (recoveredStack1).
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20262904; bytecode file offset 0xb5f1c8"
!LookupTable methodsFor: 'recovered'!
doWithIndex: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := [:recoveredBlock4Arg1 :recoveredBlock4Arg2 | 
    | recoveredBlock4Stack0 recoveredBlock4Stack1 recoveredBlock4Stack2 recoveredBlock4Stack3 recoveredBlock4Stack4 recoveredBlock4PC recoveredBlock4Step recoveredBlock4Done recoveredBlock4Result |
    recoveredBlock4Stack0 := self.
    recoveredBlock4PC := 10.
    recoveredBlock4Done := false.
    [recoveredBlock4Done not] whileTrue: [
        recoveredBlock4Step := recoveredBlock4PC.
        recoveredBlock4Step = 10 ifTrue: [
            recoveredBlock4Stack1 := nil.
            recoveredBlock4PC := 11.
        ].
        recoveredBlock4Step = 11 ifTrue: [
            recoveredBlock4Stack2 := recoveredBlock4Arg1.
            recoveredBlock4PC := 12.
        ].
        recoveredBlock4Step = 12 ifTrue: [
            (recoveredBlock4Stack2 == nil) ifTrue: [recoveredBlock4PC := 27] ifFalse: [recoveredBlock4PC := 16].
        ].
        recoveredBlock4Step = 16 ifTrue: [
            recoveredBlock4PC := 17.
        ].
        recoveredBlock4Step = 17 ifTrue: [
            recoveredBlock4Stack1 := recoveredArg1.
            recoveredBlock4PC := 20.
        ].
        recoveredBlock4Step = 20 ifTrue: [
            recoveredBlock4Stack2 := values.
            recoveredBlock4PC := 22.
        ].
        recoveredBlock4Step = 22 ifTrue: [
            recoveredBlock4Stack3 := recoveredBlock4Arg2.
            recoveredBlock4PC := 23.
        ].
        recoveredBlock4Step = 23 ifTrue: [
            recoveredBlock4Stack2 := (recoveredBlock4Stack2) at: (recoveredBlock4Stack3).
            recoveredBlock4PC := 24.
        ].
        recoveredBlock4Step = 24 ifTrue: [
            recoveredBlock4Stack3 := recoveredBlock4Arg2.
            recoveredBlock4PC := 25.
        ].
        recoveredBlock4Step = 25 ifTrue: [
            recoveredBlock4Stack1 := (recoveredBlock4Stack1) value: (recoveredBlock4Stack2) value: (recoveredBlock4Stack3).
            recoveredBlock4PC := 27.
        ].
        recoveredBlock4Step = 27 ifTrue: [
            recoveredBlock4Result := recoveredBlock4Stack1.
            recoveredBlock4Done := true.
        ].
    ].
    recoveredBlock4Result
].
    recoveredValue1 := keys.
    recoveredValue2 := keys.
    recoveredValue3 := (recoveredValue2) size.
    (recoveredValue0) applyWithIndex: (recoveredValue1) from: (1) to: (recoveredValue3).
    ^self
! !

"ASDBase.ic method 0x202855b0; bytecode file offset 0xb81e78"
!LookupTable methodsFor: 'recovered'!
inject: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := [:recoveredBlock4Arg1 :recoveredBlock4Arg2 | 
    | recoveredBlock4Stack0 recoveredBlock4Stack1 recoveredBlock4Stack2 recoveredBlock4Stack3 recoveredBlock4Stack4 recoveredBlock4Stack5 recoveredBlock4Stack6 recoveredBlock4PC recoveredBlock4Step recoveredBlock4Done recoveredBlock4Result |
    recoveredBlock4Stack0 := self.
    recoveredBlock4PC := 10.
    recoveredBlock4Done := false.
    [recoveredBlock4Done not] whileTrue: [
        recoveredBlock4Step := recoveredBlock4PC.
        recoveredBlock4Step = 10 ifTrue: [
            recoveredBlock4Stack1 := nil.
            recoveredBlock4PC := 11.
        ].
        recoveredBlock4Step = 11 ifTrue: [
            recoveredBlock4Stack2 := recoveredBlock4Arg1.
            recoveredBlock4PC := 12.
        ].
        recoveredBlock4Step = 12 ifTrue: [
            (recoveredBlock4Stack2 == nil) ifTrue: [recoveredBlock4PC := 30] ifFalse: [recoveredBlock4PC := 16].
        ].
        recoveredBlock4Step = 16 ifTrue: [
            recoveredBlock4PC := 17.
        ].
        recoveredBlock4Step = 17 ifTrue: [
            recoveredBlock4Stack1 := values.
            recoveredBlock4PC := 19.
        ].
        recoveredBlock4Step = 19 ifTrue: [
            recoveredBlock4Stack2 := recoveredBlock4Arg2.
            recoveredBlock4PC := 20.
        ].
        recoveredBlock4Step = 20 ifTrue: [
            recoveredBlock4Stack3 := recoveredArg1.
            recoveredBlock4PC := 23.
        ].
        recoveredBlock4Step = 23 ifTrue: [
            recoveredBlock4Stack4 := values.
            recoveredBlock4PC := 25.
        ].
        recoveredBlock4Step = 25 ifTrue: [
            recoveredBlock4Stack5 := recoveredBlock4Arg2.
            recoveredBlock4PC := 26.
        ].
        recoveredBlock4Step = 26 ifTrue: [
            recoveredBlock4Stack4 := (recoveredBlock4Stack4) at: (recoveredBlock4Stack5).
            recoveredBlock4PC := 27.
        ].
        recoveredBlock4Step = 27 ifTrue: [
            recoveredBlock4Stack3 := (recoveredBlock4Stack3) value: (recoveredBlock4Stack4).
            recoveredBlock4PC := 28.
        ].
        recoveredBlock4Step = 28 ifTrue: [
            recoveredBlock4Stack1 := (recoveredBlock4Stack1) at: (recoveredBlock4Stack2) put: (recoveredBlock4Stack3).
            recoveredBlock4PC := 30.
        ].
        recoveredBlock4Step = 30 ifTrue: [
            recoveredBlock4Result := recoveredBlock4Stack1.
            recoveredBlock4Done := true.
        ].
    ].
    recoveredBlock4Result
].
    recoveredValue1 := keys.
    recoveredValue2 := keys.
    recoveredValue3 := (recoveredValue2) size.
    (recoveredValue0) applyWithIndex: (recoveredValue1) from: (1) to: (recoveredValue3).
    ^self
! !

"ASDBase.ic method 0x20286864; bytecode file offset 0xb83138"
!LookupTable methodsFor: 'recovered'!
emWriteAll
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := keys.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredPC := 26.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := keys.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := (recoveredStack2) at: (recoveredStack3).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            (recoveredStack2 == nil) ifTrue: [recoveredPC := 26] ifFalse: [recoveredPC := 22].
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            (recoveredStack2) emWriteValue: (recoveredStack3).
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            (recoveredStack1 isInteger and: [recoveredLocal1 isInteger]) ifTrue: [(recoveredLocal1 + 1 <= recoveredStack1) ifTrue: [recoveredLocal1 := recoveredLocal1 + 1. recoveredPC := 14] ifFalse: [recoveredLocal1 := nil. recoveredPC := 40]] ifFalse: [recoveredPC := 30].
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack3 := (recoveredStack3) + (1).
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack4 := recoveredStack3.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredLocal1 := recoveredStack4.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack2 := (recoveredStack2) < (recoveredStack3).
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 38] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack2 := nil.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20286878; bytecode file offset 0xb83138"
!LookupTable methodsFor: 'recovered'!
emReadAll
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := keys.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredPC := 26.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := keys.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := (recoveredStack2) at: (recoveredStack3).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            (recoveredStack2 == nil) ifTrue: [recoveredPC := 26] ifFalse: [recoveredPC := 22].
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            (recoveredStack2) emReadValue: (recoveredStack3).
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            (recoveredStack1 isInteger and: [recoveredLocal1 isInteger]) ifTrue: [(recoveredLocal1 + 1 <= recoveredStack1) ifTrue: [recoveredLocal1 := recoveredLocal1 + 1. recoveredPC := 14] ifFalse: [recoveredLocal1 := nil. recoveredPC := 40]] ifFalse: [recoveredPC := 30].
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack3 := (recoveredStack3) + (1).
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack4 := recoveredStack3.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredLocal1 := recoveredStack4.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack2 := (recoveredStack2) < (recoveredStack3).
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 38] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack2 := nil.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20292810; bytecode file offset 0xb8f0e4"
!LookupTable methodsFor: 'recovered'!
emReadAll: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := keys.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredPC := 27.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := keys.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := (recoveredStack2) at: (recoveredStack3).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            (recoveredStack2 == nil) ifTrue: [recoveredPC := 27] ifFalse: [recoveredPC := 22].
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack4 := recoveredArg1.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            (recoveredStack2) emReadValue: (recoveredStack3) ifPresent: (recoveredStack4).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            (recoveredStack1 isInteger and: [recoveredLocal1 isInteger]) ifTrue: [(recoveredLocal1 + 1 <= recoveredStack1) ifTrue: [recoveredLocal1 := recoveredLocal1 + 1. recoveredPC := 14] ifFalse: [recoveredLocal1 := nil. recoveredPC := 41]] ifFalse: [recoveredPC := 31].
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack3 := (recoveredStack3) + (1).
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack4 := recoveredStack3.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredLocal1 := recoveredStack4.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack2 := (recoveredStack2) < (recoveredStack3).
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 39] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack2 := nil.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20292824; bytecode file offset 0xb8f0e4"
!LookupTable methodsFor: 'recovered'!
emWriteAll: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := keys.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredPC := 27.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := keys.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := (recoveredStack2) at: (recoveredStack3).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            (recoveredStack2 == nil) ifTrue: [recoveredPC := 27] ifFalse: [recoveredPC := 22].
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack4 := recoveredArg1.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            (recoveredStack2) emWriteValue: (recoveredStack3) ifPresent: (recoveredStack4).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            (recoveredStack1 isInteger and: [recoveredLocal1 isInteger]) ifTrue: [(recoveredLocal1 + 1 <= recoveredStack1) ifTrue: [recoveredLocal1 := recoveredLocal1 + 1. recoveredPC := 14] ifFalse: [recoveredLocal1 := nil. recoveredPC := 41]] ifFalse: [recoveredPC := 31].
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack3 := (recoveredStack3) + (1).
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack4 := recoveredStack3.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredLocal1 := recoveredStack4.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack2 := (recoveredStack2) < (recoveredStack3).
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 39] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack2 := nil.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20369704; bytecode file offset 0xc65fd4"
!LookupTable methodsFor: 'recovered'!
equals: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) class.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) class.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := (recoveredStack0) size.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 28] ifFalse: [recoveredPC := 26].
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack0 := (recoveredStack0) keys.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := [:recoveredBlock30Arg1 | 
    | recoveredBlock30Stack0 recoveredBlock30Stack1 recoveredBlock30Stack2 recoveredBlock30Stack3 recoveredBlock30Stack4 recoveredBlock30Stack5 recoveredBlock30Stack6 recoveredBlock30PC recoveredBlock30Step recoveredBlock30Done recoveredBlock30Result |
    recoveredBlock30Stack0 := self.
    recoveredBlock30PC := 36.
    recoveredBlock30Done := false.
    [recoveredBlock30Done not] whileTrue: [
        recoveredBlock30Step := recoveredBlock30PC.
        recoveredBlock30Step = 36 ifTrue: [
            recoveredBlock30Stack1 := nil.
            recoveredBlock30PC := 37.
        ].
        recoveredBlock30Step = 37 ifTrue: [
            recoveredBlock30Stack2 := self.
            recoveredBlock30PC := 38.
        ].
        recoveredBlock30Step = 38 ifTrue: [
            recoveredBlock30Stack3 := recoveredBlock30Arg1.
            recoveredBlock30PC := 39.
        ].
        recoveredBlock30Step = 39 ifTrue: [
            recoveredBlock30Stack2 := (recoveredBlock30Stack2) at: (recoveredBlock30Stack3).
            recoveredBlock30PC := 40.
        ].
        recoveredBlock30Step = 40 ifTrue: [
            recoveredBlock30Stack3 := recoveredArg1.
            recoveredBlock30PC := 43.
        ].
        recoveredBlock30Step = 43 ifTrue: [
            recoveredBlock30Stack4 := recoveredBlock30Arg1.
            recoveredBlock30PC := 44.
        ].
        recoveredBlock30Step = 44 ifTrue: [
            recoveredBlock30Stack5 := [
    ^false
].
            recoveredBlock30PC := 52.
        ].
        recoveredBlock30Step = 52 ifTrue: [
            recoveredBlock30Stack3 := (recoveredBlock30Stack3) at: (recoveredBlock30Stack4) ifAbsent: (recoveredBlock30Stack5).
            recoveredBlock30PC := 54.
        ].
        recoveredBlock30Step = 54 ifTrue: [
            recoveredBlock30Stack2 := (recoveredBlock30Stack2) equals: (recoveredBlock30Stack3).
            recoveredBlock30PC := 56.
        ].
        recoveredBlock30Step = 56 ifTrue: [
            (recoveredBlock30Stack2) ifTrue: [recoveredBlock30PC := 63] ifFalse: [recoveredBlock30PC := 60].
        ].
        recoveredBlock30Step = 60 ifTrue: [
            recoveredBlock30PC := 61.
        ].
        recoveredBlock30Step = 61 ifTrue: [
            recoveredBlock30Stack1 := false.
            recoveredBlock30PC := 62.
        ].
        recoveredBlock30Step = 62 ifTrue: [
            ^recoveredBlock30Stack1
        ].
        recoveredBlock30Step = 63 ifTrue: [
            recoveredBlock30Result := recoveredBlock30Stack1.
            recoveredBlock30Done := true.
        ].
    ].
    recoveredBlock30Result
].
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack0 := true.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x203d7044; bytecode file offset 0xcd393c"
!LookupTable methodsFor: 'recovered'!
allCustomerDatasAsXmlString
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := WriteStream.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := String.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack2 := (recoveredStack2) new.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := (recoveredStack1) on: (recoveredStack2).
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) isEmpty.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 21].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := ''.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := (recoveredStack0) keys.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := (recoveredStack0) asSortedCollection.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := [:recoveredBlock26Arg1 | 
    | recoveredBlock26Value0 recoveredBlock26Value1 recoveredBlock26Value2 recoveredBlock26Value3 recoveredBlock26Value4 recoveredBlock26Value5 recoveredBlock26Value6 recoveredBlock26Value7 recoveredBlock26Value8 recoveredBlock26Value9 recoveredBlock26Value10 |
    recoveredBlock26Value0 := recoveredLocal1.
    recoveredBlock26Value1 := recoveredBlock26Value0.
    (recoveredBlock26Value1) nextPutAll: ('<CustomerData name="').
    recoveredBlock26Value2 := recoveredBlock26Value0.
    recoveredBlock26Value3 := recoveredBlock26Arg1.
    recoveredBlock26Value4 := (recoveredBlock26Value3) asString.
    (recoveredBlock26Value2) nextPutAll: (recoveredBlock26Value4).
    recoveredBlock26Value5 := recoveredBlock26Value0.
    (recoveredBlock26Value5) nextPutAll: ('">').
    recoveredBlock26Value6 := recoveredBlock26Value0.
    recoveredBlock26Value7 := recoveredBlock26Arg1.
    recoveredBlock26Value8 := (self) at: (recoveredBlock26Value7).
    recoveredBlock26Value9 := (recoveredBlock26Value8) asString.
    (recoveredBlock26Value6) nextPutAll: (recoveredBlock26Value9).
    recoveredBlock26Value10 := (recoveredBlock26Value0) nextPutAll: ('</CustomerData>').
    recoveredBlock26Value10
].
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack2 := [
    | recoveredBlock65Value0 recoveredBlock65Value1 |
    recoveredBlock65Value0 := recoveredLocal1.
    recoveredBlock65Value1 := (recoveredBlock65Value0) cr.
    recoveredBlock65Value1
].
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            (recoveredStack0) do: (recoveredStack1) andBetweenDo: (recoveredStack2).
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack0 := (recoveredStack0) contents.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x203fa4dc; bytecode file offset 0xcf6ddc"
!LookupTable methodsFor: 'recovered'!
allCustomerDatas
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
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
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := [:block280f9cfcArg1 | 
    | block280f9cfcValue0 block280f9cfcValue1 |
    block280f9cfcValue0 := block280f9cfcArg1.
    block280f9cfcValue1 := (block280f9cfcValue0) isString.
    block280f9cfcValue1
].
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := (recoveredStack0) select: (recoveredStack1).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := (recoveredStack0) keys.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack0 := (recoveredStack0) asSortedCollection.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := [:recoveredBlock31Arg1 | 
    | recoveredBlock31Local1 recoveredBlock31Value0 recoveredBlock31Value1 recoveredBlock31Value2 recoveredBlock31Value3 recoveredBlock31Value4 recoveredBlock31Value5 recoveredBlock31Value6 recoveredBlock31Value7 recoveredBlock31Value8 recoveredBlock31Value9 recoveredBlock31Value10 recoveredBlock31Value11 recoveredBlock31Value12 recoveredBlock31Value13 recoveredBlock31Value14 recoveredBlock31Value15 recoveredBlock31Value16 recoveredBlock31Value17 recoveredBlock31Value18 |
    recoveredBlock31Value0 := WriteStream.
    recoveredBlock31Value1 := String.
    recoveredBlock31Value2 := (recoveredBlock31Value1) new.
    recoveredBlock31Value3 := (recoveredBlock31Value0) on: (recoveredBlock31Value2).
    recoveredBlock31Local1 := recoveredBlock31Value3.
    recoveredBlock31Value4 := recoveredBlock31Local1.
    recoveredBlock31Value5 := recoveredBlock31Value4.
    (recoveredBlock31Value5) nextPutAll: ('<CustomerData name="').
    recoveredBlock31Value6 := recoveredBlock31Value4.
    recoveredBlock31Value7 := recoveredBlock31Arg1.
    recoveredBlock31Value8 := (recoveredBlock31Value7) asString.
    (recoveredBlock31Value6) nextPutAll: (recoveredBlock31Value8).
    recoveredBlock31Value9 := recoveredBlock31Value4.
    (recoveredBlock31Value9) nextPutAll: ('">').
    recoveredBlock31Value10 := recoveredBlock31Value4.
    recoveredBlock31Value11 := recoveredLocal1.
    recoveredBlock31Value12 := recoveredBlock31Arg1.
    recoveredBlock31Value13 := (recoveredBlock31Value11) at: (recoveredBlock31Value12).
    recoveredBlock31Value14 := (recoveredBlock31Value13) asString.
    (recoveredBlock31Value10) nextPutAll: (recoveredBlock31Value14).
    (recoveredBlock31Value4) nextPutAll: ('</CustomerData>').
    recoveredBlock31Value15 := recoveredLocal2.
    recoveredBlock31Value16 := recoveredBlock31Local1.
    recoveredBlock31Value17 := (recoveredBlock31Value16) contents.
    recoveredBlock31Value18 := (recoveredBlock31Value15) add: (recoveredBlock31Value17).
    recoveredBlock31Value18
].
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2043d954; bytecode file offset 0xd3a228"
!LookupTable methodsFor: 'recovered'!
findKeyIndex: recoveredArg1
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
            recoveredStack1 := (recoveredStack1) hash.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := keys.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack2 := (recoveredStack2) size.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack3 := recoveredStack2.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredLocal2 := recoveredStack3.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) \\ (recoveredStack2).
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
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (-1).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredPC := 44.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack2 := keys.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack2 := (recoveredStack2) at: (recoveredStack3).
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack3 := recoveredStack2.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredLocal3 := recoveredStack3.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            (recoveredStack2 ~~ nil) ifTrue: [recoveredPC := 35] ifFalse: [recoveredPC := 32].
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            ^recoveredStack2
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack2 := (recoveredStack2) = (recoveredStack3).
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 42] ifFalse: [recoveredPC := 44].
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            ^recoveredStack2
        ].
        recoveredStep = 44 ifTrue: [
            (recoveredStack1 isInteger and: [recoveredLocal1 isInteger]) ifTrue: [(recoveredLocal1 + 1 <= recoveredStack1) ifTrue: [recoveredLocal1 := recoveredLocal1 + 1. recoveredPC := 22] ifFalse: [recoveredLocal1 := nil. recoveredPC := 58]] ifFalse: [recoveredPC := 48].
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack3 := (recoveredStack3) + (1).
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack4 := recoveredStack3.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredLocal1 := recoveredStack4.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack2 := (recoveredStack2) < (recoveredStack3).
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 56] ifFalse: [recoveredPC := 22].
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack2 := nil.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (-1).
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredPC := 90.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack2 := keys.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack2 := (recoveredStack2) at: (recoveredStack3).
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack3 := recoveredStack2.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredLocal3 := recoveredStack3.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            (recoveredStack2 ~~ nil) ifTrue: [recoveredPC := 81] ifFalse: [recoveredPC := 78].
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            ^recoveredStack2
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack2 := (recoveredStack2) = (recoveredStack3).
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 88] ifFalse: [recoveredPC := 90].
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            ^recoveredStack2
        ].
        recoveredStep = 90 ifTrue: [
            (recoveredStack1 isInteger and: [recoveredLocal1 isInteger]) ifTrue: [(recoveredLocal1 + 1 <= recoveredStack1) ifTrue: [recoveredLocal1 := recoveredLocal1 + 1. recoveredPC := 68] ifFalse: [recoveredLocal1 := nil. recoveredPC := 104]] ifFalse: [recoveredPC := 94].
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack3 := (recoveredStack3) + (1).
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            recoveredStack4 := recoveredStack3.
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            recoveredLocal1 := recoveredStack4.
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            recoveredStack2 := (recoveredStack2) < (recoveredStack3).
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 102] ifFalse: [recoveredPC := 68].
        ].
        recoveredStep = 102 ifTrue: [
            recoveredStack2 := nil.
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x20445494; bytecode file offset 0xd41d74"
!LookupTable methodsFor: 'recovered'!
abtPrimitiveCloneWithRecursionSet: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) species.
    recoveredValue2 := (recoveredValue1) basicNew.
    recoveredValue3 := (recoveredValue0) at: (self) put: (recoveredValue2).
    recoveredLocal4 := recoveredValue3.
    recoveredValue4 := recoveredLocal4.
    recoveredValue5 := recoveredValue4.
    recoveredValue6 := keys.
    recoveredValue7 := (recoveredValue6) size.
    recoveredValue8 := recoveredValue7.
    recoveredLocal3 := recoveredValue8.
    (recoveredValue5) initialize: (recoveredValue7).
    recoveredValue9 := elementCount.
    (recoveredValue4) elementCount: (recoveredValue9).
    recoveredValue10 := recoveredLocal4.
    recoveredValue11 := (recoveredValue10) keyArray.
    recoveredLocal2 := recoveredValue11.
    recoveredValue12 := recoveredLocal4.
    recoveredValue13 := (recoveredValue12) valueArray.
    recoveredLocal1 := recoveredValue13.
    recoveredValue14 := [:recoveredBlock49Arg1 :recoveredBlock49Arg2 | 
    | recoveredBlock49Stack0 recoveredBlock49Stack1 recoveredBlock49Stack2 recoveredBlock49Stack3 recoveredBlock49Stack4 recoveredBlock49Stack5 recoveredBlock49PC recoveredBlock49Step recoveredBlock49Done recoveredBlock49Result |
    recoveredBlock49Stack0 := self.
    recoveredBlock49PC := 56.
    recoveredBlock49Done := false.
    [recoveredBlock49Done not] whileTrue: [
        recoveredBlock49Step := recoveredBlock49PC.
        recoveredBlock49Step = 56 ifTrue: [
            recoveredBlock49Stack1 := nil.
            recoveredBlock49PC := 57.
        ].
        recoveredBlock49Step = 57 ifTrue: [
            recoveredBlock49Stack2 := recoveredBlock49Arg1.
            recoveredBlock49PC := 58.
        ].
        recoveredBlock49Step = 58 ifTrue: [
            (recoveredBlock49Stack2 == nil) ifTrue: [recoveredBlock49PC := 95] ifFalse: [recoveredBlock49PC := 62].
        ].
        recoveredBlock49Step = 62 ifTrue: [
            recoveredBlock49PC := 63.
        ].
        recoveredBlock49Step = 63 ifTrue: [
            recoveredBlock49Stack1 := recoveredLocal2.
            recoveredBlock49PC := 66.
        ].
        recoveredBlock49Step = 66 ifTrue: [
            recoveredBlock49Stack2 := recoveredBlock49Arg2.
            recoveredBlock49PC := 67.
        ].
        recoveredBlock49Step = 67 ifTrue: [
            recoveredBlock49Stack3 := keys.
            recoveredBlock49PC := 69.
        ].
        recoveredBlock49Step = 69 ifTrue: [
            recoveredBlock49Stack4 := recoveredBlock49Arg2.
            recoveredBlock49PC := 70.
        ].
        recoveredBlock49Step = 70 ifTrue: [
            recoveredBlock49Stack3 := (recoveredBlock49Stack3) at: (recoveredBlock49Stack4).
            recoveredBlock49PC := 72.
        ].
        recoveredBlock49Step = 72 ifTrue: [
            recoveredBlock49Stack4 := recoveredArg1.
            recoveredBlock49PC := 75.
        ].
        recoveredBlock49Step = 75 ifTrue: [
            recoveredBlock49Stack3 := (recoveredBlock49Stack3) abtCloneWithRecursionSet: (recoveredBlock49Stack4).
            recoveredBlock49PC := 77.
        ].
        recoveredBlock49Step = 77 ifTrue: [
            (recoveredBlock49Stack1) at: (recoveredBlock49Stack2) put: (recoveredBlock49Stack3).
            recoveredBlock49PC := 79.
        ].
        recoveredBlock49Step = 79 ifTrue: [
            recoveredBlock49Stack1 := recoveredLocal1.
            recoveredBlock49PC := 82.
        ].
        recoveredBlock49Step = 82 ifTrue: [
            recoveredBlock49Stack2 := recoveredBlock49Arg2.
            recoveredBlock49PC := 83.
        ].
        recoveredBlock49Step = 83 ifTrue: [
            recoveredBlock49Stack3 := values.
            recoveredBlock49PC := 85.
        ].
        recoveredBlock49Step = 85 ifTrue: [
            recoveredBlock49Stack4 := recoveredBlock49Arg2.
            recoveredBlock49PC := 86.
        ].
        recoveredBlock49Step = 86 ifTrue: [
            recoveredBlock49Stack3 := (recoveredBlock49Stack3) at: (recoveredBlock49Stack4).
            recoveredBlock49PC := 88.
        ].
        recoveredBlock49Step = 88 ifTrue: [
            recoveredBlock49Stack4 := recoveredArg1.
            recoveredBlock49PC := 91.
        ].
        recoveredBlock49Step = 91 ifTrue: [
            recoveredBlock49Stack3 := (recoveredBlock49Stack3) abtCloneWithRecursionSet: (recoveredBlock49Stack4).
            recoveredBlock49PC := 93.
        ].
        recoveredBlock49Step = 93 ifTrue: [
            recoveredBlock49Stack1 := (recoveredBlock49Stack1) at: (recoveredBlock49Stack2) put: (recoveredBlock49Stack3).
            recoveredBlock49PC := 95.
        ].
        recoveredBlock49Step = 95 ifTrue: [
            recoveredBlock49Result := recoveredBlock49Stack1.
            recoveredBlock49Done := true.
        ].
    ].
    recoveredBlock49Result
].
    recoveredValue15 := keys.
    recoveredValue16 := recoveredLocal3.
    (recoveredValue14) applyWithIndex: (recoveredValue15) from: (1) to: (recoveredValue16).
    recoveredValue17 := recoveredLocal4.
    ^recoveredValue17
! !

"ASDBase.ic method 0x204621a8; bytecode file offset 0xd5ea8c"
!LookupTable methodsFor: 'recovered'!
emReadAt: recoveredArg1 ifAbsent: recoveredArg2
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
            recoveredStack1 := (recoveredStack1) hash.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := keys.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack2 := (recoveredStack2) size.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack3 := recoveredStack2.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredLocal2 := recoveredStack3.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) \\ (recoveredStack2).
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
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (-1).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredPC := 49.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack2 := keys.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack2 := (recoveredStack2) at: (recoveredStack3).
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack3 := recoveredStack2.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredLocal3 := recoveredStack3.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            (recoveredStack2 ~~ nil) ifTrue: [recoveredPC := 36] ifFalse: [recoveredPC := 32].
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack2 := (recoveredStack2) value.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            ^recoveredStack2
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack2 := (recoveredStack2) = (recoveredStack3).
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 44] ifFalse: [recoveredPC := 49].
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack2 := (recoveredStack2) emReadValue: (recoveredStack3).
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            ^recoveredStack2
        ].
        recoveredStep = 49 ifTrue: [
            (recoveredStack1 isInteger and: [recoveredLocal1 isInteger]) ifTrue: [(recoveredLocal1 + 1 <= recoveredStack1) ifTrue: [recoveredLocal1 := recoveredLocal1 + 1. recoveredPC := 22] ifFalse: [recoveredLocal1 := nil. recoveredPC := 63]] ifFalse: [recoveredPC := 53].
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack3 := (recoveredStack3) + (1).
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack4 := recoveredStack3.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredLocal1 := recoveredStack4.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack2 := (recoveredStack2) < (recoveredStack3).
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 61] ifFalse: [recoveredPC := 22].
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack2 := nil.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (-1).
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredPC := 99.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack2 := keys.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack2 := (recoveredStack2) at: (recoveredStack3).
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack3 := recoveredStack2.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredLocal3 := recoveredStack3.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            (recoveredStack2 ~~ nil) ifTrue: [recoveredPC := 86] ifFalse: [recoveredPC := 82].
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack2 := (recoveredStack2) value.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            ^recoveredStack2
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack2 := (recoveredStack2) = (recoveredStack3).
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 94] ifFalse: [recoveredPC := 99].
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack2 := (recoveredStack2) emReadValue: (recoveredStack3).
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            ^recoveredStack2
        ].
        recoveredStep = 99 ifTrue: [
            (recoveredStack1 isInteger and: [recoveredLocal1 isInteger]) ifTrue: [(recoveredLocal1 + 1 <= recoveredStack1) ifTrue: [recoveredLocal1 := recoveredLocal1 + 1. recoveredPC := 72] ifFalse: [recoveredLocal1 := nil. recoveredPC := 113]] ifFalse: [recoveredPC := 103].
        ].
        recoveredStep = 103 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            recoveredStack3 := (recoveredStack3) + (1).
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            recoveredStack4 := recoveredStack3.
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            recoveredLocal1 := recoveredStack4.
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            recoveredStack2 := (recoveredStack2) < (recoveredStack3).
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 111] ifFalse: [recoveredPC := 72].
        ].
        recoveredStep = 111 ifTrue: [
            recoveredStack2 := nil.
            recoveredPC := 112.
        ].
        recoveredStep = 112 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            recoveredPC := 114.
        ].
        recoveredStep = 114 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 116.
        ].
        recoveredStep = 116 ifTrue: [
            recoveredStack1 := (recoveredStack1) value.
            recoveredPC := 117.
        ].
        recoveredStep = 117 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x204621c4; bytecode file offset 0xd5ea8c"
!LookupTable methodsFor: 'recovered'!
emWriteAt: recoveredArg1 ifAbsent: recoveredArg2
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
            recoveredStack1 := (recoveredStack1) hash.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := keys.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack2 := (recoveredStack2) size.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack3 := recoveredStack2.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredLocal2 := recoveredStack3.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) \\ (recoveredStack2).
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
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (-1).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredPC := 49.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack2 := keys.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack2 := (recoveredStack2) at: (recoveredStack3).
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack3 := recoveredStack2.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredLocal3 := recoveredStack3.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            (recoveredStack2 ~~ nil) ifTrue: [recoveredPC := 36] ifFalse: [recoveredPC := 32].
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack2 := (recoveredStack2) value.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            ^recoveredStack2
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack2 := (recoveredStack2) = (recoveredStack3).
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 44] ifFalse: [recoveredPC := 49].
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack2 := (recoveredStack2) emWriteValue: (recoveredStack3).
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            ^recoveredStack2
        ].
        recoveredStep = 49 ifTrue: [
            (recoveredStack1 isInteger and: [recoveredLocal1 isInteger]) ifTrue: [(recoveredLocal1 + 1 <= recoveredStack1) ifTrue: [recoveredLocal1 := recoveredLocal1 + 1. recoveredPC := 22] ifFalse: [recoveredLocal1 := nil. recoveredPC := 63]] ifFalse: [recoveredPC := 53].
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack3 := (recoveredStack3) + (1).
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack4 := recoveredStack3.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredLocal1 := recoveredStack4.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack2 := (recoveredStack2) < (recoveredStack3).
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 61] ifFalse: [recoveredPC := 22].
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack2 := nil.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (-1).
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredPC := 99.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack2 := keys.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack2 := (recoveredStack2) at: (recoveredStack3).
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack3 := recoveredStack2.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredLocal3 := recoveredStack3.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            (recoveredStack2 ~~ nil) ifTrue: [recoveredPC := 86] ifFalse: [recoveredPC := 82].
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack2 := (recoveredStack2) value.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            ^recoveredStack2
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack2 := (recoveredStack2) = (recoveredStack3).
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 94] ifFalse: [recoveredPC := 99].
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack2 := (recoveredStack2) emWriteValue: (recoveredStack3).
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            ^recoveredStack2
        ].
        recoveredStep = 99 ifTrue: [
            (recoveredStack1 isInteger and: [recoveredLocal1 isInteger]) ifTrue: [(recoveredLocal1 + 1 <= recoveredStack1) ifTrue: [recoveredLocal1 := recoveredLocal1 + 1. recoveredPC := 72] ifFalse: [recoveredLocal1 := nil. recoveredPC := 113]] ifFalse: [recoveredPC := 103].
        ].
        recoveredStep = 103 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            recoveredStack3 := (recoveredStack3) + (1).
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            recoveredStack4 := recoveredStack3.
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            recoveredLocal1 := recoveredStack4.
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            recoveredStack2 := (recoveredStack2) < (recoveredStack3).
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 111] ifFalse: [recoveredPC := 72].
        ].
        recoveredStep = 111 ifTrue: [
            recoveredStack2 := nil.
            recoveredPC := 112.
        ].
        recoveredStep = 112 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            recoveredPC := 114.
        ].
        recoveredStep = 114 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 116.
        ].
        recoveredStep = 116 ifTrue: [
            recoveredStack1 := (recoveredStack1) value.
            recoveredPC := 117.
        ].
        recoveredStep = 117 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x20465ff4; bytecode file offset 0xd628cc"
!LookupTable methodsFor: 'recovered'!
countObjectsIn: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue1) at: ('aTotal').
    recoveredValue3 := (recoveredValue2) + (1).
    (recoveredValue0) at: ('aTotal') put: (recoveredValue3).
    recoveredValue4 := [:recoveredBlock18Arg1 :recoveredBlock18Arg2 | 
    | recoveredBlock18Stack0 recoveredBlock18Stack1 recoveredBlock18Stack2 recoveredBlock18Stack3 recoveredBlock18Stack4 recoveredBlock18Stack5 recoveredBlock18PC recoveredBlock18Step recoveredBlock18Done recoveredBlock18Result |
    recoveredBlock18Stack0 := self.
    recoveredBlock18PC := 24.
    recoveredBlock18Done := false.
    [recoveredBlock18Done not] whileTrue: [
        recoveredBlock18Step := recoveredBlock18PC.
        recoveredBlock18Step = 24 ifTrue: [
            recoveredBlock18Stack1 := recoveredArg1.
            recoveredBlock18PC := 27.
        ].
        recoveredBlock18Step = 27 ifTrue: [
            recoveredBlock18Stack2 := recoveredBlock18Arg2.
            recoveredBlock18PC := 30.
        ].
        recoveredBlock18Step = 30 ifTrue: [
            recoveredBlock18Stack2 := (recoveredBlock18Stack2) class.
            recoveredBlock18PC := 31.
        ].
        recoveredBlock18Step = 31 ifTrue: [
            recoveredBlock18Stack3 := [
    1
].
            recoveredBlock18PC := 33.
        ].
        recoveredBlock18Step = 33 ifTrue: [
            recoveredBlock18PC := 39.
        ].
        recoveredBlock18Step = 39 ifTrue: [
            recoveredBlock18Stack4 := [:recoveredBlock18Block39Arg1 | 
    | recoveredBlock18Block39Value0 recoveredBlock18Block39Value1 recoveredBlock18Block39Value2 recoveredBlock18Block39Value3 recoveredBlock18Block39Value4 recoveredBlock18Block39Value5 |
    recoveredBlock18Block39Value0 := recoveredArg1.
    recoveredBlock18Block39Value1 := recoveredBlock18Arg2.
    recoveredBlock18Block39Value2 := (recoveredBlock18Block39Value1) class.
    recoveredBlock18Block39Value3 := recoveredBlock18Block39Arg1.
    recoveredBlock18Block39Value4 := (recoveredBlock18Block39Value3) + (1).
    recoveredBlock18Block39Value5 := (recoveredBlock18Block39Value0) at: (recoveredBlock18Block39Value2) put: (recoveredBlock18Block39Value4).
    recoveredBlock18Block39Value5
].
            recoveredBlock18PC := 58.
        ].
        recoveredBlock18Step = 58 ifTrue: [
            (recoveredBlock18Stack1) at: (recoveredBlock18Stack2) ifAbsentPut: (recoveredBlock18Stack3) ifPresent: (recoveredBlock18Stack4).
            recoveredBlock18PC := 61.
        ].
        recoveredBlock18Step = 61 ifTrue: [
            recoveredBlock18Stack1 := recoveredBlock18Arg2.
            recoveredBlock18PC := 64.
        ].
        recoveredBlock18Step = 64 ifTrue: [
            recoveredBlock18Stack2 := recoveredArg1.
            recoveredBlock18PC := 67.
        ].
        recoveredBlock18Step = 67 ifTrue: [
            (recoveredBlock18Stack1) countObjectsIn: (recoveredBlock18Stack2).
            recoveredBlock18PC := 69.
        ].
        recoveredBlock18Step = 69 ifTrue: [
            recoveredBlock18Stack1 := recoveredArg1.
            recoveredBlock18PC := 72.
        ].
        recoveredBlock18Step = 72 ifTrue: [
            recoveredBlock18Stack2 := recoveredBlock18Arg1.
            recoveredBlock18PC := 75.
        ].
        recoveredBlock18Step = 75 ifTrue: [
            recoveredBlock18Stack2 := (recoveredBlock18Stack2) class.
            recoveredBlock18PC := 76.
        ].
        recoveredBlock18Step = 76 ifTrue: [
            recoveredBlock18Stack3 := [
    1
].
            recoveredBlock18PC := 78.
        ].
        recoveredBlock18Step = 78 ifTrue: [
            recoveredBlock18PC := 85.
        ].
        recoveredBlock18Step = 85 ifTrue: [
            recoveredBlock18Stack4 := [:recoveredBlock18Block85Arg1 | 
    | recoveredBlock18Block85Value0 recoveredBlock18Block85Value1 recoveredBlock18Block85Value2 recoveredBlock18Block85Value3 recoveredBlock18Block85Value4 recoveredBlock18Block85Value5 |
    recoveredBlock18Block85Value0 := recoveredArg1.
    recoveredBlock18Block85Value1 := recoveredBlock18Arg1.
    recoveredBlock18Block85Value2 := (recoveredBlock18Block85Value1) class.
    recoveredBlock18Block85Value3 := recoveredBlock18Block85Arg1.
    recoveredBlock18Block85Value4 := (recoveredBlock18Block85Value3) + (1).
    recoveredBlock18Block85Value5 := (recoveredBlock18Block85Value0) at: (recoveredBlock18Block85Value2) put: (recoveredBlock18Block85Value4).
    recoveredBlock18Block85Value5
].
            recoveredBlock18PC := 104.
        ].
        recoveredBlock18Step = 104 ifTrue: [
            (recoveredBlock18Stack1) at: (recoveredBlock18Stack2) ifAbsentPut: (recoveredBlock18Stack3) ifPresent: (recoveredBlock18Stack4).
            recoveredBlock18PC := 107.
        ].
        recoveredBlock18Step = 107 ifTrue: [
            recoveredBlock18Stack1 := recoveredBlock18Arg1.
            recoveredBlock18PC := 110.
        ].
        recoveredBlock18Step = 110 ifTrue: [
            recoveredBlock18Stack2 := recoveredArg1.
            recoveredBlock18PC := 113.
        ].
        recoveredBlock18Step = 113 ifTrue: [
            recoveredBlock18Stack1 := (recoveredBlock18Stack1) countObjectsIn: (recoveredBlock18Stack2).
            recoveredBlock18PC := 115.
        ].
        recoveredBlock18Step = 115 ifTrue: [
            recoveredBlock18Result := recoveredBlock18Stack1.
            recoveredBlock18Done := true.
        ].
    ].
    recoveredBlock18Result
].
    (self) keysAndValuesDo: (recoveredValue4).
    ^self
! !

"ASDBase.ic method 0x20466ac8; bytecode file offset 0xd633cc"
!LookupTable methodsFor: 'recovered'!
addFromDOMIterator: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := OrderedCollection.
    recoveredValue1 := (recoveredValue0) new.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (recoveredValue2) subElements.
    recoveredValue4 := [:recoveredBlock14Arg1 | 
    | recoveredBlock14Local1 recoveredBlock14Value0 recoveredBlock14Value1 recoveredBlock14Value2 recoveredBlock14Value3 recoveredBlock14Value4 recoveredBlock14Value5 recoveredBlock14Value6 recoveredBlock14Value7 recoveredBlock14Value8 recoveredBlock14Value9 recoveredBlock14Value10 |
    recoveredBlock14Value0 := WriteStream.
    recoveredBlock14Value1 := String.
    recoveredBlock14Value2 := (recoveredBlock14Value1) new.
    recoveredBlock14Value3 := (recoveredBlock14Value0) on: (recoveredBlock14Value2).
    recoveredBlock14Local1 := recoveredBlock14Value3.
    recoveredBlock14Value4 := recoveredBlock14Arg1.
    recoveredBlock14Value5 := [:recoveredBlock14Block33Arg1 | 
    | recoveredBlock14Block33Value0 recoveredBlock14Block33Value1 recoveredBlock14Block33Value2 recoveredBlock14Block33Value3 recoveredBlock14Block33Value4 |
    recoveredBlock14Block33Value0 := recoveredBlock14Local1.
    recoveredBlock14Block33Value1 := recoveredBlock14Block33Arg1.
    recoveredBlock14Block33Value2 := (recoveredBlock14Block33Value1) asXMLSubString.
    recoveredBlock14Block33Value3 := (recoveredBlock14Block33Value2) trimSeparators.
    recoveredBlock14Block33Value4 := (recoveredBlock14Block33Value0) nextPutAll: (recoveredBlock14Block33Value3).
    recoveredBlock14Block33Value4
].
    recoveredBlock14Value6 := [
    | recoveredBlock14Block51Value0 recoveredBlock14Block51Value1 |
    recoveredBlock14Block51Value0 := recoveredBlock14Local1.
    recoveredBlock14Block51Value1 := (recoveredBlock14Block51Value0) cr.
    recoveredBlock14Block51Value1
].
    (recoveredBlock14Value4) do: (recoveredBlock14Value5) andBetweenDo: (recoveredBlock14Value6).
    recoveredBlock14Value7 := [
    | recoveredBlock14Block66Value0 recoveredBlock14Block66Value1 recoveredBlock14Block66Value2 recoveredBlock14Block66Value3 recoveredBlock14Block66Value4 |
    recoveredBlock14Block66Value0 := recoveredArg1.
    recoveredBlock14Block66Value1 := (recoveredBlock14Block66Value0) getString: ('name').
    recoveredBlock14Block66Value2 := recoveredBlock14Local1.
    recoveredBlock14Block66Value3 := (recoveredBlock14Block66Value2) contents.
    recoveredBlock14Block66Value4 := (self) at: (recoveredBlock14Block66Value1) put: (recoveredBlock14Block66Value3).
    recoveredBlock14Block66Value4
].
    recoveredBlock14Value8 := ExMissingAttribute.
    recoveredBlock14Value9 := [:recoveredBlock14Block89Arg1 | 
    | recoveredBlock14Block89Value0 recoveredBlock14Block89Value1 recoveredBlock14Block89Value2 recoveredBlock14Block89Value3 recoveredBlock14Block89Value4 |
    recoveredBlock14Block89Value0 := recoveredLocal1.
    recoveredBlock14Block89Value1 := recoveredBlock14Local1.
    recoveredBlock14Block89Value2 := (recoveredBlock14Block89Value1) contents.
    (recoveredBlock14Block89Value0) add: (recoveredBlock14Block89Value2).
    recoveredBlock14Block89Value3 := recoveredBlock14Block89Arg1.
    recoveredBlock14Block89Value4 := (recoveredBlock14Block89Value3) exitWith: (nil).
    recoveredBlock14Block89Value4
].
    recoveredBlock14Value10 := (recoveredBlock14Value7) when: (recoveredBlock14Value8) do: (recoveredBlock14Value9).
    recoveredBlock14Value10
].
    (recoveredValue3) ifNotNil: (recoveredValue4).
    recoveredValue5 := recoveredLocal1.
    ^recoveredValue5
! !

"ASDBase.ic method 0x2046ede4; bytecode file offset 0xd6b6c8"
!LookupTable methodsFor: 'recovered'!
emWriteAt: recoveredArg1 ifAbsent: recoveredArg2 ifPresent: recoveredArg3
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
            recoveredStack1 := (recoveredStack1) hash.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := keys.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack2 := (recoveredStack2) size.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack3 := recoveredStack2.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredLocal2 := recoveredStack3.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) \\ (recoveredStack2).
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
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (-1).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredPC := 51.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack2 := keys.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack2 := (recoveredStack2) at: (recoveredStack3).
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack3 := recoveredStack2.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredLocal3 := recoveredStack3.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            (recoveredStack2 ~~ nil) ifTrue: [recoveredPC := 36] ifFalse: [recoveredPC := 32].
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack2 := (recoveredStack2) value.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            ^recoveredStack2
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack2 := (recoveredStack2) = (recoveredStack3).
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 44] ifFalse: [recoveredPC := 51].
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack4 := recoveredArg3.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack2 := (recoveredStack2) emWriteValue: (recoveredStack3) ifPresent: (recoveredStack4).
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            ^recoveredStack2
        ].
        recoveredStep = 51 ifTrue: [
            (recoveredStack1 isInteger and: [recoveredLocal1 isInteger]) ifTrue: [(recoveredLocal1 + 1 <= recoveredStack1) ifTrue: [recoveredLocal1 := recoveredLocal1 + 1. recoveredPC := 22] ifFalse: [recoveredLocal1 := nil. recoveredPC := 65]] ifFalse: [recoveredPC := 55].
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack3 := (recoveredStack3) + (1).
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack4 := recoveredStack3.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredLocal1 := recoveredStack4.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack2 := (recoveredStack2) < (recoveredStack3).
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 63] ifFalse: [recoveredPC := 22].
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack2 := nil.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (-1).
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredPC := 103.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack2 := keys.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack2 := (recoveredStack2) at: (recoveredStack3).
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack3 := recoveredStack2.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredLocal3 := recoveredStack3.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            (recoveredStack2 ~~ nil) ifTrue: [recoveredPC := 88] ifFalse: [recoveredPC := 84].
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack2 := (recoveredStack2) value.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            ^recoveredStack2
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredStack2 := (recoveredStack2) = (recoveredStack3).
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 96] ifFalse: [recoveredPC := 103].
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack4 := recoveredArg3.
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack2 := (recoveredStack2) emWriteValue: (recoveredStack3) ifPresent: (recoveredStack4).
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            ^recoveredStack2
        ].
        recoveredStep = 103 ifTrue: [
            (recoveredStack1 isInteger and: [recoveredLocal1 isInteger]) ifTrue: [(recoveredLocal1 + 1 <= recoveredStack1) ifTrue: [recoveredLocal1 := recoveredLocal1 + 1. recoveredPC := 74] ifFalse: [recoveredLocal1 := nil. recoveredPC := 117]] ifFalse: [recoveredPC := 107].
        ].
        recoveredStep = 107 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            recoveredStack3 := (recoveredStack3) + (1).
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            recoveredStack4 := recoveredStack3.
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            recoveredLocal1 := recoveredStack4.
            recoveredPC := 112.
        ].
        recoveredStep = 112 ifTrue: [
            recoveredStack2 := (recoveredStack2) < (recoveredStack3).
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 115] ifFalse: [recoveredPC := 74].
        ].
        recoveredStep = 115 ifTrue: [
            recoveredStack2 := nil.
            recoveredPC := 116.
        ].
        recoveredStep = 116 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 117.
        ].
        recoveredStep = 117 ifTrue: [
            recoveredPC := 118.
        ].
        recoveredStep = 118 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 120.
        ].
        recoveredStep = 120 ifTrue: [
            recoveredStack1 := (recoveredStack1) value.
            recoveredPC := 121.
        ].
        recoveredStep = 121 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2046ee00; bytecode file offset 0xd6b6c8"
!LookupTable methodsFor: 'recovered'!
emReadAt: recoveredArg1 ifAbsent: recoveredArg2 ifPresent: recoveredArg3
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
            recoveredStack1 := (recoveredStack1) hash.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := keys.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack2 := (recoveredStack2) size.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack3 := recoveredStack2.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredLocal2 := recoveredStack3.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) \\ (recoveredStack2).
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
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (-1).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredPC := 51.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack2 := keys.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack2 := (recoveredStack2) at: (recoveredStack3).
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack3 := recoveredStack2.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredLocal3 := recoveredStack3.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            (recoveredStack2 ~~ nil) ifTrue: [recoveredPC := 36] ifFalse: [recoveredPC := 32].
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack2 := (recoveredStack2) value.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            ^recoveredStack2
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack2 := (recoveredStack2) = (recoveredStack3).
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 44] ifFalse: [recoveredPC := 51].
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack4 := recoveredArg3.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack2 := (recoveredStack2) emReadValue: (recoveredStack3) ifPresent: (recoveredStack4).
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            ^recoveredStack2
        ].
        recoveredStep = 51 ifTrue: [
            (recoveredStack1 isInteger and: [recoveredLocal1 isInteger]) ifTrue: [(recoveredLocal1 + 1 <= recoveredStack1) ifTrue: [recoveredLocal1 := recoveredLocal1 + 1. recoveredPC := 22] ifFalse: [recoveredLocal1 := nil. recoveredPC := 65]] ifFalse: [recoveredPC := 55].
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack3 := (recoveredStack3) + (1).
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack4 := recoveredStack3.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredLocal1 := recoveredStack4.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack2 := (recoveredStack2) < (recoveredStack3).
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 63] ifFalse: [recoveredPC := 22].
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack2 := nil.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (-1).
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredPC := 103.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack2 := keys.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack2 := (recoveredStack2) at: (recoveredStack3).
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack3 := recoveredStack2.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredLocal3 := recoveredStack3.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            (recoveredStack2 ~~ nil) ifTrue: [recoveredPC := 88] ifFalse: [recoveredPC := 84].
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack2 := (recoveredStack2) value.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            ^recoveredStack2
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredStack2 := (recoveredStack2) = (recoveredStack3).
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 96] ifFalse: [recoveredPC := 103].
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack4 := recoveredArg3.
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack2 := (recoveredStack2) emReadValue: (recoveredStack3) ifPresent: (recoveredStack4).
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            ^recoveredStack2
        ].
        recoveredStep = 103 ifTrue: [
            (recoveredStack1 isInteger and: [recoveredLocal1 isInteger]) ifTrue: [(recoveredLocal1 + 1 <= recoveredStack1) ifTrue: [recoveredLocal1 := recoveredLocal1 + 1. recoveredPC := 74] ifFalse: [recoveredLocal1 := nil. recoveredPC := 117]] ifFalse: [recoveredPC := 107].
        ].
        recoveredStep = 107 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            recoveredStack3 := (recoveredStack3) + (1).
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            recoveredStack4 := recoveredStack3.
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            recoveredLocal1 := recoveredStack4.
            recoveredPC := 112.
        ].
        recoveredStep = 112 ifTrue: [
            recoveredStack2 := (recoveredStack2) < (recoveredStack3).
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 115] ifFalse: [recoveredPC := 74].
        ].
        recoveredStep = 115 ifTrue: [
            recoveredStack2 := nil.
            recoveredPC := 116.
        ].
        recoveredStep = 116 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 117.
        ].
        recoveredStep = 117 ifTrue: [
            recoveredPC := 118.
        ].
        recoveredStep = 118 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 120.
        ].
        recoveredStep = 120 ifTrue: [
            recoveredStack1 := (recoveredStack1) value.
            recoveredPC := 121.
        ].
        recoveredStep = 121 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2053ca7c; bytecode file offset 0xe39378"
!LookupTable methodsFor: 'recovered'!
at: recoveredArg1 ifAbsentPut: recoveredArg2 keyAndValueDo: recoveredArg3
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) hash.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := keys.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack2 := (recoveredStack2) size.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack3 := recoveredStack2.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredLocal2 := recoveredStack3.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) \\ (recoveredStack2).
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
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (-1).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredPC := 92.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack2 := keys.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack2 := (recoveredStack2) at: (recoveredStack3).
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack3 := recoveredStack2.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredLocal3 := recoveredStack3.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            (recoveredStack2 ~~ nil) ifTrue: [recoveredPC := 75] ifFalse: [recoveredPC := 32].
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack2 := values.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack4 := recoveredArg2.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack4 := (recoveredStack4) value.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack5 := recoveredStack4.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredLocal3 := recoveredStack5.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack2 := keys.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack4 := recoveredArg1.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack2 := elementCount.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack2 := (recoveredStack2) + (1).
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack3 := recoveredStack2.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            elementCount := recoveredStack3.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack3 := recoveredLocal2.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack4 := 2.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack3 := (recoveredStack3) // (recoveredStack4).
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack2 := (recoveredStack2) > (recoveredStack3).
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 64] ifFalse: [recoveredPC := 67].
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            (recoveredStack2) expand.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack2 := recoveredArg3.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack4 := recoveredLocal3.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack2 := (recoveredStack2) value: (recoveredStack3) value: (recoveredStack4).
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            ^recoveredStack2
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack2 := (recoveredStack2) = (recoveredStack3).
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 82] ifFalse: [recoveredPC := 92].
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack2 := recoveredArg3.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack3 := recoveredLocal3.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack4 := values.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredStack5 := recoveredLocal1.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack4 := (recoveredStack4) at: (recoveredStack5).
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack2 := (recoveredStack2) value: (recoveredStack3) value: (recoveredStack4).
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            ^recoveredStack2
        ].
        recoveredStep = 92 ifTrue: [
            (recoveredStack1 isInteger and: [recoveredLocal1 isInteger]) ifTrue: [(recoveredLocal1 + 1 <= recoveredStack1) ifTrue: [recoveredLocal1 := recoveredLocal1 + 1. recoveredPC := 22] ifFalse: [recoveredLocal1 := nil. recoveredPC := 106]] ifFalse: [recoveredPC := 96].
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack3 := (recoveredStack3) + (1).
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            recoveredStack4 := recoveredStack3.
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            recoveredLocal1 := recoveredStack4.
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            recoveredStack2 := (recoveredStack2) < (recoveredStack3).
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 104] ifFalse: [recoveredPC := 22].
        ].
        recoveredStep = 104 ifTrue: [
            recoveredStack2 := nil.
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (-1).
            recoveredPC := 112.
        ].
        recoveredStep = 112 ifTrue: [
            recoveredPC := 186.
        ].
        recoveredStep = 116 ifTrue: [
            recoveredStack2 := keys.
            recoveredPC := 118.
        ].
        recoveredStep = 118 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 119.
        ].
        recoveredStep = 119 ifTrue: [
            recoveredStack2 := (recoveredStack2) at: (recoveredStack3).
            recoveredPC := 120.
        ].
        recoveredStep = 120 ifTrue: [
            recoveredStack3 := recoveredStack2.
            recoveredPC := 121.
        ].
        recoveredStep = 121 ifTrue: [
            recoveredLocal3 := recoveredStack3.
            recoveredPC := 122.
        ].
        recoveredStep = 122 ifTrue: [
            (recoveredStack2 ~~ nil) ifTrue: [recoveredPC := 169] ifFalse: [recoveredPC := 126].
        ].
        recoveredStep = 126 ifTrue: [
            recoveredStack2 := values.
            recoveredPC := 128.
        ].
        recoveredStep = 128 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 129.
        ].
        recoveredStep = 129 ifTrue: [
            recoveredStack4 := recoveredArg2.
            recoveredPC := 131.
        ].
        recoveredStep = 131 ifTrue: [
            recoveredStack4 := (recoveredStack4) value.
            recoveredPC := 132.
        ].
        recoveredStep = 132 ifTrue: [
            recoveredStack5 := recoveredStack4.
            recoveredPC := 133.
        ].
        recoveredStep = 133 ifTrue: [
            recoveredLocal3 := recoveredStack5.
            recoveredPC := 134.
        ].
        recoveredStep = 134 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredPC := 136.
        ].
        recoveredStep = 136 ifTrue: [
            recoveredStack2 := keys.
            recoveredPC := 138.
        ].
        recoveredStep = 138 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 139.
        ].
        recoveredStep = 139 ifTrue: [
            recoveredStack4 := recoveredArg1.
            recoveredPC := 141.
        ].
        recoveredStep = 141 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredPC := 143.
        ].
        recoveredStep = 143 ifTrue: [
            recoveredStack2 := elementCount.
            recoveredPC := 145.
        ].
        recoveredStep = 145 ifTrue: [
            recoveredStack2 := (recoveredStack2) + (1).
            recoveredPC := 146.
        ].
        recoveredStep = 146 ifTrue: [
            recoveredStack3 := recoveredStack2.
            recoveredPC := 147.
        ].
        recoveredStep = 147 ifTrue: [
            elementCount := recoveredStack3.
            recoveredPC := 149.
        ].
        recoveredStep = 149 ifTrue: [
            recoveredStack3 := recoveredLocal2.
            recoveredPC := 150.
        ].
        recoveredStep = 150 ifTrue: [
            recoveredStack4 := 2.
            recoveredPC := 152.
        ].
        recoveredStep = 152 ifTrue: [
            recoveredStack3 := (recoveredStack3) // (recoveredStack4).
            recoveredPC := 153.
        ].
        recoveredStep = 153 ifTrue: [
            recoveredStack2 := (recoveredStack2) > (recoveredStack3).
            recoveredPC := 154.
        ].
        recoveredStep = 154 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 158] ifFalse: [recoveredPC := 161].
        ].
        recoveredStep = 158 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 159.
        ].
        recoveredStep = 159 ifTrue: [
            (recoveredStack2) expand.
            recoveredPC := 161.
        ].
        recoveredStep = 161 ifTrue: [
            recoveredStack2 := recoveredArg3.
            recoveredPC := 163.
        ].
        recoveredStep = 163 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 165.
        ].
        recoveredStep = 165 ifTrue: [
            recoveredStack4 := recoveredLocal3.
            recoveredPC := 166.
        ].
        recoveredStep = 166 ifTrue: [
            recoveredStack2 := (recoveredStack2) value: (recoveredStack3) value: (recoveredStack4).
            recoveredPC := 168.
        ].
        recoveredStep = 168 ifTrue: [
            ^recoveredStack2
        ].
        recoveredStep = 169 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 170.
        ].
        recoveredStep = 170 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 172.
        ].
        recoveredStep = 172 ifTrue: [
            recoveredStack2 := (recoveredStack2) = (recoveredStack3).
            recoveredPC := 173.
        ].
        recoveredStep = 173 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 176] ifFalse: [recoveredPC := 186].
        ].
        recoveredStep = 176 ifTrue: [
            recoveredStack2 := recoveredArg3.
            recoveredPC := 178.
        ].
        recoveredStep = 178 ifTrue: [
            recoveredStack3 := recoveredLocal3.
            recoveredPC := 179.
        ].
        recoveredStep = 179 ifTrue: [
            recoveredStack4 := values.
            recoveredPC := 181.
        ].
        recoveredStep = 181 ifTrue: [
            recoveredStack5 := recoveredLocal1.
            recoveredPC := 182.
        ].
        recoveredStep = 182 ifTrue: [
            recoveredStack4 := (recoveredStack4) at: (recoveredStack5).
            recoveredPC := 183.
        ].
        recoveredStep = 183 ifTrue: [
            recoveredStack2 := (recoveredStack2) value: (recoveredStack3) value: (recoveredStack4).
            recoveredPC := 185.
        ].
        recoveredStep = 185 ifTrue: [
            ^recoveredStack2
        ].
        recoveredStep = 186 ifTrue: [
            (recoveredStack1 isInteger and: [recoveredLocal1 isInteger]) ifTrue: [(recoveredLocal1 + 1 <= recoveredStack1) ifTrue: [recoveredLocal1 := recoveredLocal1 + 1. recoveredPC := 116] ifFalse: [recoveredLocal1 := nil. recoveredPC := 200]] ifFalse: [recoveredPC := 190].
        ].
        recoveredStep = 190 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 191.
        ].
        recoveredStep = 191 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 192.
        ].
        recoveredStep = 192 ifTrue: [
            recoveredStack3 := (recoveredStack3) + (1).
            recoveredPC := 193.
        ].
        recoveredStep = 193 ifTrue: [
            recoveredStack4 := recoveredStack3.
            recoveredPC := 194.
        ].
        recoveredStep = 194 ifTrue: [
            recoveredLocal1 := recoveredStack4.
            recoveredPC := 195.
        ].
        recoveredStep = 195 ifTrue: [
            recoveredStack2 := (recoveredStack2) < (recoveredStack3).
            recoveredPC := 196.
        ].
        recoveredStep = 196 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 198] ifFalse: [recoveredPC := 116].
        ].
        recoveredStep = 198 ifTrue: [
            recoveredStack2 := nil.
            recoveredPC := 199.
        ].
        recoveredStep = 199 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 200.
        ].
        recoveredStep = 200 ifTrue: [
            recoveredPC := 201.
        ].
        recoveredStep = 201 ifTrue: [
            recoveredStack0 := (recoveredStack0) expand.
            recoveredPC := 203.
        ].
        recoveredStep = 203 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 205.
        ].
        recoveredStep = 205 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 207.
        ].
        recoveredStep = 207 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1) ifAbsentPut: (recoveredStack2).
            recoveredPC := 209.
        ].
        recoveredStep = 209 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

