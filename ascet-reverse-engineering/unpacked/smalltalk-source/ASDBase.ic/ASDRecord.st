"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x200129fc; bytecode file offset 0x912098"
!ASDRecord methodsFor: 'recovered'!
apiClass
    | recoveredValue0 |
    recoveredValue0 := EtasAPIRecord.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20019784; bytecode file offset 0x92209c"
!ASDRecord methodsFor: 'recovered'!
sourceModel
    ^'record'
! !

"ASDBase.ic method 0x2001b254; bytecode file offset 0x92209c"
!ASDRecord methodsFor: 'recovered'!
getComponentType
    ^'ASCET_Record'
! !

"ASDBase.ic method 0x2001da50; bytecode file offset 0x92209c"
!ASDRecord methodsFor: 'recovered'!
editorIconName
    ^'ComponentsRecord'
! !

"ASDBase.ic method 0x200218fc; bytecode file offset 0x92209c"
!ASDRecord methodsFor: 'recovered'!
iconName
    ^'ComponentsRecord'
! !

"ASDBase.ic method 0x20023bf4; bytecode file offset 0x92209c"
!ASDRecord methodsFor: 'recovered'!
itemTypeLabel
    ^'Record'
! !

"ASDBase.ic method 0x2007598c; bytecode file offset 0x9757c8"
!ASDRecord methodsFor: 'recovered'!
isRecordLayout
    ^true
! !

"ASDBase.ic method 0x2007636c; bytecode file offset 0x9757c8"
!ASDRecord methodsFor: 'recovered'!
isReproduceableAsARInterface
    ^true
! !

"ASDBase.ic method 0x20078c9c; bytecode file offset 0x9757c8"
!ASDRecord methodsFor: 'recovered'!
isRecord
    ^true
! !

"ASDBase.ic method 0x200b59ec; bytecode file offset 0x9b2324"
!ASDRecord methodsFor: 'recovered'!
mdlClassTypeAttributes
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := super mdlClassTypeAttributes.
    recoveredValue1 := recoveredValue0.
    (recoveredValue1) cgOptRecordType.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200cb6e0; bytecode file offset 0x9c80c4"
!ASDRecord methodsFor: 'recovered'!
filterListForInsertComponent
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := Array.
    recoveredValue1 := SGLibraryEnumeration.
    recoveredValue2 := ASDRecord.
    recoveredValue3 := (recoveredValue0) with: (recoveredValue1) with: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x200fde08; bytecode file offset 0x9fa6c4"
!ASDRecord methodsFor: 'recovered'!
allowedToAddComponent: recoveredArg1
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
            recoveredStack1 := (recoveredStack1) isSGEnumeration.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) isRecord.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x201ca408; bytecode file offset 0xac6d14"
!ASDRecord methodsFor: 'recovered'!
restoreInstVars
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) dbObject.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) className.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) class.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) printString.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) ~= (recoveredStack1).
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 25].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) dbObject.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := (recoveredStack1) class.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := (recoveredStack1) printString.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            (recoveredStack0) className: (recoveredStack1).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := (recoveredStack0) dbObject.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            (recoveredStack0) setModifyBit.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2046e9d8; bytecode file offset 0xd6b2ec"
!ASDRecord methodsFor: 'recovered'!
minToolVersion: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) destVersion.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := super minToolVersion: (recoveredValue2).
    recoveredLocal3 := recoveredValue3.
    recoveredValue4 := ('Kli') == ('Call_92466').
    recoveredValue5 := OrderedCollection.
    recoveredValue6 := (recoveredValue5) new.
    recoveredLocal4 := recoveredValue6.
    recoveredValue7 := (self) classImplConfig.
    recoveredValue8 := [:recoveredBlock37Arg1 | 
    | recoveredBlock37Value0 recoveredBlock37Value1 recoveredBlock37Value2 |
    recoveredBlock37Value0 := recoveredLocal4.
    recoveredBlock37Value1 := recoveredBlock37Arg1.
    recoveredBlock37Value2 := (recoveredBlock37Value0) add: (recoveredBlock37Value1).
    recoveredBlock37Value2
].
    (recoveredValue7) ifNotNil: (recoveredValue8).
    recoveredValue9 := (self) implementations.
    recoveredValue10 := recoveredLocal4.
    recoveredValue11 := (recoveredValue9) , (recoveredValue10).
    recoveredValue12 := [:recoveredBlock61Arg1 | 
    | recoveredBlock61Stack0 recoveredBlock61Stack1 recoveredBlock61Stack2 recoveredBlock61Stack3 recoveredBlock61Stack4 recoveredBlock61Stack5 recoveredBlock61PC recoveredBlock61Step recoveredBlock61Done recoveredBlock61Result |
    recoveredBlock61Stack0 := self.
    recoveredBlock61PC := 68.
    recoveredBlock61Done := false.
    [recoveredBlock61Done not] whileTrue: [
        recoveredBlock61Step := recoveredBlock61PC.
        recoveredBlock61Step = 68 ifTrue: [
            recoveredBlock61Stack1 := nil.
            recoveredBlock61PC := 69.
        ].
        recoveredBlock61Step = 69 ifTrue: [
            recoveredBlock61Stack2 := recoveredBlock61Arg1.
            recoveredBlock61PC := 70.
        ].
        recoveredBlock61Step = 70 ifTrue: [
            recoveredBlock61Stack2 := (recoveredBlock61Stack2) externalStructDeclarationMode.
            recoveredBlock61PC := 72.
        ].
        recoveredBlock61Step = 72 ifTrue: [
            recoveredBlock61Stack3 := SGImplConfiguration.
            recoveredBlock61PC := 74.
        ].
        recoveredBlock61Step = 74 ifTrue: [
            recoveredBlock61Stack3 := (recoveredBlock61Stack3) recImplGenerateStructMode.
            recoveredBlock61PC := 76.
        ].
        recoveredBlock61Step = 76 ifTrue: [
            recoveredBlock61Stack2 := (recoveredBlock61Stack2) ~= (recoveredBlock61Stack3).
            recoveredBlock61PC := 77.
        ].
        recoveredBlock61Step = 77 ifTrue: [
            (recoveredBlock61Stack2) ifTrue: [recoveredBlock61PC := 80] ifFalse: [recoveredBlock61PC := 115].
        ].
        recoveredBlock61Step = 80 ifTrue: [
            recoveredBlock61PC := 81.
        ].
        recoveredBlock61Step = 81 ifTrue: [
            recoveredBlock61Stack1 := 'V6.4.0'.
            recoveredBlock61PC := 83.
        ].
        recoveredBlock61Step = 83 ifTrue: [
            recoveredBlock61Stack2 := recoveredLocal1.
            recoveredBlock61PC := 86.
        ].
        recoveredBlock61Step = 86 ifTrue: [
            recoveredBlock61Stack1 := (recoveredBlock61Stack1) > (recoveredBlock61Stack2).
            recoveredBlock61PC := 87.
        ].
        recoveredBlock61Step = 87 ifTrue: [
            (recoveredBlock61Stack1) ifTrue: [recoveredBlock61PC := 90] ifFalse: [recoveredBlock61PC := 104].
        ].
        recoveredBlock61Step = 90 ifTrue: [
            recoveredBlock61Stack1 := SGMonitorStreamDummy.
            recoveredBlock61PC := 92.
        ].
        recoveredBlock61Step = 92 ifTrue: [
            recoveredBlock61Stack1 := (recoveredBlock61Stack1) create.
            recoveredBlock61PC := 94.
        ].
        recoveredBlock61Step = 94 ifTrue: [
            recoveredBlock61Stack2 := 'Using external struct definition is only supported with ASCET V6.4.0 or higher. (%1)'.
            recoveredBlock61PC := 96.
        ].
        recoveredBlock61Step = 96 ifTrue: [
            recoveredBlock61Stack3 := recoveredBlock61Arg1.
            recoveredBlock61PC := 97.
        ].
        recoveredBlock61Step = 97 ifTrue: [
            recoveredBlock61Stack4 := nil.
            recoveredBlock61PC := 98.
        ].
        recoveredBlock61Step = 98 ifTrue: [
            recoveredBlock61Stack3 := (recoveredBlock61Stack3) ascetLink: (recoveredBlock61Stack4).
            recoveredBlock61PC := 100.
        ].
        recoveredBlock61Step = 100 ifTrue: [
            recoveredBlock61Stack2 := (recoveredBlock61Stack2) bindWith: (recoveredBlock61Stack3).
            recoveredBlock61PC := 102.
        ].
        recoveredBlock61Step = 102 ifTrue: [
            (recoveredBlock61Stack1) addImportantInfoText: (recoveredBlock61Stack2).
            recoveredBlock61PC := 104.
        ].
        recoveredBlock61Step = 104 ifTrue: [
            recoveredBlock61Stack1 := recoveredLocal3.
            recoveredBlock61PC := 107.
        ].
        recoveredBlock61Step = 107 ifTrue: [
            recoveredBlock61Stack2 := 'V6.4.0'.
            recoveredBlock61PC := 109.
        ].
        recoveredBlock61Step = 109 ifTrue: [
            recoveredBlock61Stack1 := (recoveredBlock61Stack1) max: (recoveredBlock61Stack2).
            recoveredBlock61PC := 111.
        ].
        recoveredBlock61Step = 111 ifTrue: [
            recoveredBlock61Stack2 := recoveredBlock61Stack1.
            recoveredBlock61PC := 112.
        ].
        recoveredBlock61Step = 112 ifTrue: [
            recoveredLocal3 := recoveredBlock61Stack2.
            recoveredBlock61PC := 115.
        ].
        recoveredBlock61Step = 115 ifTrue: [
            recoveredBlock61Result := recoveredBlock61Stack1.
            recoveredBlock61Done := true.
        ].
    ].
    recoveredBlock61Result
].
    (recoveredValue11) do: (recoveredValue12).
    recoveredValue13 := recoveredLocal3.
    ^recoveredValue13
! !

