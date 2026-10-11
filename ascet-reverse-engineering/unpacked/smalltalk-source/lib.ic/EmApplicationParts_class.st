"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"lib.ic method 0x20000520; bytecode file offset 0x3c670"
!EmApplicationParts class methodsFor: 'recovered'!
editionRecordClass
    | recoveredValue0 |
    recoveredValue0 := EmApplicationEdition.
    ^recoveredValue0
! !

"lib.ic method 0x20000708; bytecode file offset 0x3c804"
!EmApplicationParts class methodsFor: 'recovered'!
registryKey
    ^'Applications'
! !

"lib.ic method 0x200029d0; bytecode file offset 0x3e9f0"
!EmApplicationParts class methodsFor: 'recovered'!
tag
    ^4113
! !

"lib.ic method 0x20012e24; bytecode file offset 0x4ee8c"
!EmApplicationParts class methodsFor: 'recovered'!
for: recoveredArg1 relocateUsing: recoveredArg2
    | recoveredValue0 |
    recoveredValue0 := [:recoveredBlock4Arg1 | 
    | recoveredBlock4Value0 recoveredBlock4Value1 recoveredBlock4Value2 recoveredBlock4Value3 |
    recoveredBlock4Value0 := recoveredBlock4Arg1.
    recoveredBlock4Value1 := recoveredArg1.
    recoveredBlock4Value2 := [:recoveredBlock4Block16Arg1 | 
    | recoveredBlock4Block16Value0 recoveredBlock4Block16Value1 recoveredBlock4Block16Value2 recoveredBlock4Block16Value3 recoveredBlock4Block16Value4 recoveredBlock4Block16Value5 recoveredBlock4Block16Value6 recoveredBlock4Block16Value7 recoveredBlock4Block16Value8 recoveredBlock4Block16Value9 |
    recoveredBlock4Block16Value0 := recoveredArg2.
    recoveredBlock4Block16Value1 := EmLibrary.
    recoveredBlock4Block16Value2 := (recoveredBlock4Block16Value1) cache.
    recoveredBlock4Block16Value3 := recoveredBlock4Block16Arg1.
    recoveredBlock4Block16Value4 := recoveredBlock4Arg1.
    recoveredBlock4Block16Value5 := (recoveredBlock4Block16Value4) library.
    recoveredBlock4Block16Value6 := (self) updating: (recoveredBlock4Block16Value3) from: (recoveredBlock4Block16Value5).
    recoveredBlock4Block16Value7 := recoveredArg1.
    recoveredBlock4Block16Value8 := (recoveredBlock4Block16Value2) renewAppPartsRecord: (recoveredBlock4Block16Value6) for: (recoveredBlock4Block16Value7).
    recoveredBlock4Block16Value9 := (recoveredBlock4Block16Value0) value: (recoveredBlock4Block16Value8).
    recoveredBlock4Block16Value9
].
    recoveredBlock4Value3 := (recoveredBlock4Value0) at: (recoveredBlock4Value1) putPointerFrom: (recoveredBlock4Value2).
    recoveredBlock4Value3
].
    (self) relocateRootDictionaryUsing: (recoveredValue0).
    ^self
! !

"lib.ic method 0x2001470c; bytecode file offset 0x507e4"
!EmApplicationParts class methodsFor: 'recovered'!
relocateRootDictionaryUsing: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 |
    recoveredValue0 := EmLibrary.
    recoveredValue1 := (recoveredValue0) default.
    (recoveredValue1) transactionBegin.
    recoveredValue2 := EmFixedDiskDictionary.
    recoveredValue3 := (recoveredValue2) updateRecordRegistry.
    recoveredValue4 := recoveredValue3.
    recoveredLocal1 := recoveredValue4.
    recoveredValue5 := (self) registryKey.
    recoveredValue6 := [:recoveredBlock20Arg1 | 
    | recoveredBlock20Value0 recoveredBlock20Value1 recoveredBlock20Value2 recoveredBlock20Value3 recoveredBlock20Value4 recoveredBlock20Value5 recoveredBlock20Value6 recoveredBlock20Value7 recoveredBlock20Value8 recoveredBlock20Value9 |
    recoveredBlock20Value0 := recoveredArg1.
    recoveredBlock20Value1 := EmLibrary.
    recoveredBlock20Value2 := (recoveredBlock20Value1) cache.
    recoveredBlock20Value3 := EmDiskDictionary.
    recoveredBlock20Value4 := recoveredBlock20Arg1.
    recoveredBlock20Value5 := recoveredLocal1.
    recoveredBlock20Value6 := (recoveredBlock20Value5) library.
    recoveredBlock20Value7 := (recoveredBlock20Value3) updating: (recoveredBlock20Value4) from: (recoveredBlock20Value6).
    recoveredBlock20Value8 := (recoveredBlock20Value2) renewAppRootDictionary: (recoveredBlock20Value7).
    recoveredBlock20Value9 := (recoveredBlock20Value0) value: (recoveredBlock20Value8).
    recoveredBlock20Value9
].
    (recoveredValue3) at: (recoveredValue5) putPointerFrom: (recoveredValue6).
    recoveredValue7 := EmLibrary.
    recoveredValue8 := (recoveredValue7) default.
    (recoveredValue8) transactionEnd.
    ^self
! !

"lib.ic method 0x20019780; bytecode file offset 0x557e0"
!EmApplicationParts class methodsFor: 'recovered'!
for: recoveredArg1 updateUsing: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := EmLibrary.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) default.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack1) transactionBegin.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) rootDictionary.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredLocal4 := recoveredStack0.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := (recoveredStack0) isVoid.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 24] ifFalse: [recoveredPC := 31].
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := EmLibrary.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := (recoveredStack0) default.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := MxEMcsESa3.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            (recoveredStack0) transactionProtocolError: (recoveredStack1).
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack2 := recoveredLocal4.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack2 := (recoveredStack2) library.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := (recoveredStack0) updating: (recoveredStack1) from: (recoveredStack2).
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack0 := recoveredArg2.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack0 := (recoveredStack0) value: (recoveredStack1).
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack0 := EmLibrary.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack0 := (recoveredStack0) cache.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            (recoveredStack0) renewAppPartsRecord: (recoveredStack1) for: (recoveredStack2).
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack0 := (recoveredStack0) filePointer.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 69] ifFalse: [recoveredPC := 62].
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack0 := EmLibrary.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack0 := (recoveredStack0) default.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack1 := MxEMcsESa4.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            (recoveredStack0) transactionProtocolError: (recoveredStack1).
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack0 := EmLibrary.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack0 := (recoveredStack0) default.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            (recoveredStack0) transactionEnd.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

