"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"lib.ic method 0x200003c4; bytecode file offset 0x3c670"
!EmSubApplicationParts class methodsFor: 'recovered'!
editionRecordClass
    | recoveredValue0 |
    recoveredValue0 := EmSubApplicationEdition.
    ^recoveredValue0
! !

"lib.ic method 0x20000690; bytecode file offset 0x3c804"
!EmSubApplicationParts class methodsFor: 'recovered'!
registryKey
    ^'Sub-Applications'
! !

"lib.ic method 0x20002ad0; bytecode file offset 0x3eaf0"
!EmSubApplicationParts class methodsFor: 'recovered'!
defaultLength
    ^32
! !

"lib.ic method 0x20002b0c; bytecode file offset 0x3eb2c"
!EmSubApplicationParts class methodsFor: 'recovered'!
tag
    ^4129
! !

"lib.ic method 0x20012e4c; bytecode file offset 0x4ee8c"
!EmSubApplicationParts class methodsFor: 'recovered'!
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
    recoveredBlock4Block16Value8 := (recoveredBlock4Block16Value2) renewSubAppPartsRecord: (recoveredBlock4Block16Value6) for: (recoveredBlock4Block16Value7).
    recoveredBlock4Block16Value9 := (recoveredBlock4Block16Value0) value: (recoveredBlock4Block16Value8).
    recoveredBlock4Block16Value9
].
    recoveredBlock4Value3 := (recoveredBlock4Value0) at: (recoveredBlock4Value1) putPointerFrom: (recoveredBlock4Value2).
    recoveredBlock4Value3
].
    (self) relocateRootDictionaryUsing: (recoveredValue0).
    ^self
! !

"lib.ic method 0x2001478c; bytecode file offset 0x507e4"
!EmSubApplicationParts class methodsFor: 'recovered'!
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
    recoveredBlock20Value8 := (recoveredBlock20Value2) renewSubAppRootDictionary: (recoveredBlock20Value7).
    recoveredBlock20Value9 := (recoveredBlock20Value0) value: (recoveredBlock20Value8).
    recoveredBlock20Value9
].
    (recoveredValue3) at: (recoveredValue5) putPointerFrom: (recoveredValue6).
    recoveredValue7 := EmLibrary.
    recoveredValue8 := (recoveredValue7) default.
    (recoveredValue8) transactionEnd.
    ^self
! !

"lib.ic method 0x20019738; bytecode file offset 0x557e0"
!EmSubApplicationParts class methodsFor: 'recovered'!
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
            (recoveredStack0) renewSubAppPartsRecord: (recoveredStack1) for: (recoveredStack2).
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

"lib.ic method 0x2002c748; bytecode file offset 0x687c4"
!EmSubApplicationParts class methodsFor: 'recovered'!
purge: recoveredArg1 at: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := [:recoveredBlock4Arg1 | 
    | recoveredBlock4Value0 recoveredBlock4Value1 recoveredBlock4Value2 recoveredBlock4Value3 |
    recoveredBlock4Value0 := recoveredBlock4Arg1.
    recoveredBlock4Value1 := (self) registryKey.
    recoveredBlock4Value2 := [:recoveredBlock4Block15Arg1 | 
    | recoveredBlock4Block15Value0 recoveredBlock4Block15Value1 recoveredBlock4Block15Value2 recoveredBlock4Block15Value3 recoveredBlock4Block15Value4 recoveredBlock4Block15Value5 recoveredBlock4Block15Value6 recoveredBlock4Block15Value7 |
    recoveredBlock4Block15Value0 := EmDiskDictionary.
    recoveredBlock4Block15Value1 := recoveredBlock4Block15Arg1.
    recoveredBlock4Block15Value2 := recoveredBlock4Arg1.
    recoveredBlock4Block15Value3 := (recoveredBlock4Block15Value2) library.
    recoveredBlock4Block15Value4 := (recoveredBlock4Block15Value0) updating: (recoveredBlock4Block15Value1) from: (recoveredBlock4Block15Value3).
    recoveredBlock4Block15Value5 := recoveredArg1.
    recoveredBlock4Block15Value6 := [:recoveredBlock4Block15Block34Arg1 | 
    | recoveredBlock4Block15Block34Value0 recoveredBlock4Block15Block34Value1 recoveredBlock4Block15Block34Value2 recoveredBlock4Block15Block34Value3 recoveredBlock4Block15Block34Value4 recoveredBlock4Block15Block34Value5 recoveredBlock4Block15Block34Value6 recoveredBlock4Block15Block34Value7 recoveredBlock4Block15Block34Value8 |
    recoveredBlock4Block15Block34Value0 := recoveredBlock4Block15Block34Arg1.
    recoveredBlock4Block15Block34Value1 := recoveredBlock4Arg1.
    recoveredBlock4Block15Block34Value2 := (recoveredBlock4Block15Block34Value1) library.
    recoveredBlock4Block15Block34Value3 := (self) updating: (recoveredBlock4Block15Block34Value0) from: (recoveredBlock4Block15Block34Value2).
    recoveredLocal4 := recoveredBlock4Block15Block34Value3.
    recoveredBlock4Block15Block34Value4 := recoveredLocal4.
    recoveredBlock4Block15Block34Value5 := recoveredLocal4.
    recoveredBlock4Block15Block34Value6 := (recoveredBlock4Block15Block34Value5) editionsIndex.
    recoveredBlock4Block15Block34Value7 := [:recoveredBlock4Block15Block34Block58Arg1 | 
    | recoveredBlock4Block15Block34Block58Stack0 recoveredBlock4Block15Block34Block58Stack1 recoveredBlock4Block15Block34Block58Stack2 recoveredBlock4Block15Block34Block58Stack3 recoveredBlock4Block15Block34Block58Stack4 recoveredBlock4Block15Block34Block58Stack5 recoveredBlock4Block15Block34Block58PC recoveredBlock4Block15Block34Block58Step recoveredBlock4Block15Block34Block58Done recoveredBlock4Block15Block34Block58Result |
    recoveredBlock4Block15Block34Block58Stack0 := self.
    recoveredBlock4Block15Block34Block58PC := 64.
    recoveredBlock4Block15Block34Block58Done := false.
    [recoveredBlock4Block15Block34Block58Done not] whileTrue: [
        recoveredBlock4Block15Block34Block58Step := recoveredBlock4Block15Block34Block58PC.
        recoveredBlock4Block15Block34Block58Step = 64 ifTrue: [
            recoveredBlock4Block15Block34Block58Stack1 := EmEditionsDictionary.
            recoveredBlock4Block15Block34Block58PC := 66.
        ].
        recoveredBlock4Block15Block34Block58Step = 66 ifTrue: [
            recoveredBlock4Block15Block34Block58Stack2 := recoveredBlock4Block15Block34Block58Arg1.
            recoveredBlock4Block15Block34Block58PC := 67.
        ].
        recoveredBlock4Block15Block34Block58Step = 67 ifTrue: [
            recoveredBlock4Block15Block34Block58Stack3 := recoveredBlock4Arg1.
            recoveredBlock4Block15Block34Block58PC := 70.
        ].
        recoveredBlock4Block15Block34Block58Step = 70 ifTrue: [
            recoveredBlock4Block15Block34Block58Stack3 := (recoveredBlock4Block15Block34Block58Stack3) library.
            recoveredBlock4Block15Block34Block58PC := 71.
        ].
        recoveredBlock4Block15Block34Block58Step = 71 ifTrue: [
            recoveredBlock4Block15Block34Block58Stack1 := (recoveredBlock4Block15Block34Block58Stack1) updating: (recoveredBlock4Block15Block34Block58Stack2) from: (recoveredBlock4Block15Block34Block58Stack3).
            recoveredBlock4Block15Block34Block58PC := 73.
        ].
        recoveredBlock4Block15Block34Block58Step = 73 ifTrue: [
            recoveredLocal3 := recoveredBlock4Block15Block34Block58Stack1.
            recoveredBlock4Block15Block34Block58PC := 76.
        ].
        recoveredBlock4Block15Block34Block58Step = 76 ifTrue: [
            recoveredBlock4Block15Block34Block58Stack1 := nil.
            recoveredBlock4Block15Block34Block58PC := 77.
        ].
        recoveredBlock4Block15Block34Block58Step = 77 ifTrue: [
            recoveredBlock4Block15Block34Block58Stack2 := recoveredLocal3.
            recoveredBlock4Block15Block34Block58PC := 80.
        ].
        recoveredBlock4Block15Block34Block58Step = 80 ifTrue: [
            recoveredBlock4Block15Block34Block58Stack3 := recoveredArg2.
            recoveredBlock4Block15Block34Block58PC := 83.
        ].
        recoveredBlock4Block15Block34Block58Step = 83 ifTrue: [
            recoveredBlock4Block15Block34Block58Stack4 := [].
            recoveredBlock4Block15Block34Block58PC := 85.
        ].
        recoveredBlock4Block15Block34Block58Step = 85 ifTrue: [
            recoveredBlock4Block15Block34Block58Stack2 := (recoveredBlock4Block15Block34Block58Stack2) at: (recoveredBlock4Block15Block34Block58Stack3) ifAbsent: (recoveredBlock4Block15Block34Block58Stack4).
            recoveredBlock4Block15Block34Block58PC := 87.
        ].
        recoveredBlock4Block15Block34Block58Step = 87 ifTrue: [
            recoveredBlock4Block15Block34Block58Stack3 := recoveredBlock4Block15Block34Block58Stack2.
            recoveredBlock4Block15Block34Block58PC := 88.
        ].
        recoveredBlock4Block15Block34Block58Step = 88 ifTrue: [
            recoveredLocal2 := recoveredBlock4Block15Block34Block58Stack3.
            recoveredBlock4Block15Block34Block58PC := 91.
        ].
        recoveredBlock4Block15Block34Block58Step = 91 ifTrue: [
            (recoveredBlock4Block15Block34Block58Stack2 == nil) ifTrue: [recoveredBlock4Block15Block34Block58PC := 260] ifFalse: [recoveredBlock4Block15Block34Block58PC := 94].
        ].
        recoveredBlock4Block15Block34Block58Step = 94 ifTrue: [
            recoveredBlock4Block15Block34Block58PC := 95.
        ].
        recoveredBlock4Block15Block34Block58Step = 95 ifTrue: [
            recoveredBlock4Block15Block34Block58Stack1 := recoveredBlock4Arg1.
            recoveredBlock4Block15Block34Block58PC := 98.
        ].
        recoveredBlock4Block15Block34Block58Step = 98 ifTrue: [
            recoveredBlock4Block15Block34Block58Stack2 := self.
            recoveredBlock4Block15Block34Block58PC := 99.
        ].
        recoveredBlock4Block15Block34Block58Step = 99 ifTrue: [
            recoveredBlock4Block15Block34Block58Stack2 := (recoveredBlock4Block15Block34Block58Stack2) purgedRegistryKey.
            recoveredBlock4Block15Block34Block58PC := 101.
        ].
        recoveredBlock4Block15Block34Block58Step = 101 ifTrue: [
            recoveredBlock4Block15Block34Block58Stack3 := [:recoveredBlock4Block15Block34Block58Block101Arg1 | 
    | recoveredBlock4Block15Block34Block58Block101Value0 recoveredBlock4Block15Block34Block58Block101Value1 recoveredBlock4Block15Block34Block58Block101Value2 recoveredBlock4Block15Block34Block58Block101Value3 recoveredBlock4Block15Block34Block58Block101Value4 recoveredBlock4Block15Block34Block58Block101Value5 recoveredBlock4Block15Block34Block58Block101Value6 recoveredBlock4Block15Block34Block58Block101Value7 |
    recoveredBlock4Block15Block34Block58Block101Value0 := EmDiskDictionary.
    recoveredBlock4Block15Block34Block58Block101Value1 := recoveredBlock4Block15Block34Block58Block101Arg1.
    recoveredBlock4Block15Block34Block58Block101Value2 := recoveredBlock4Arg1.
    recoveredBlock4Block15Block34Block58Block101Value3 := (recoveredBlock4Block15Block34Block58Block101Value2) library.
    recoveredBlock4Block15Block34Block58Block101Value4 := (recoveredBlock4Block15Block34Block58Block101Value0) updating: (recoveredBlock4Block15Block34Block58Block101Value1) from: (recoveredBlock4Block15Block34Block58Block101Value3).
    recoveredBlock4Block15Block34Block58Block101Value5 := recoveredArg1.
    recoveredBlock4Block15Block34Block58Block101Value6 := [:recoveredBlock4Block15Block34Block58Block101Block120Arg1 | 
    | recoveredBlock4Block15Block34Block58Block101Block120Stack0 recoveredBlock4Block15Block34Block58Block101Block120Stack1 recoveredBlock4Block15Block34Block58Block101Block120Stack2 recoveredBlock4Block15Block34Block58Block101Block120Stack3 recoveredBlock4Block15Block34Block58Block101Block120PC recoveredBlock4Block15Block34Block58Block101Block120Step recoveredBlock4Block15Block34Block58Block101Block120Done recoveredBlock4Block15Block34Block58Block101Block120Result |
    recoveredBlock4Block15Block34Block58Block101Block120Stack0 := self.
    recoveredBlock4Block15Block34Block58Block101Block120PC := 126.
    recoveredBlock4Block15Block34Block58Block101Block120Done := false.
    [recoveredBlock4Block15Block34Block58Block101Block120Done not] whileTrue: [
        recoveredBlock4Block15Block34Block58Block101Block120Step := recoveredBlock4Block15Block34Block58Block101Block120PC.
        recoveredBlock4Block15Block34Block58Block101Block120Step = 126 ifTrue: [
            recoveredBlock4Block15Block34Block58Block101Block120Stack1 := recoveredBlock4Block15Block34Block58Block101Block120Arg1.
            recoveredBlock4Block15Block34Block58Block101Block120PC := 127.
        ].
        recoveredBlock4Block15Block34Block58Block101Block120Step = 127 ifTrue: [
            recoveredBlock4Block15Block34Block58Block101Block120Stack2 := recoveredBlock4Arg1.
            recoveredBlock4Block15Block34Block58Block101Block120PC := 130.
        ].
        recoveredBlock4Block15Block34Block58Block101Block120Step = 130 ifTrue: [
            recoveredBlock4Block15Block34Block58Block101Block120Stack2 := (recoveredBlock4Block15Block34Block58Block101Block120Stack2) library.
            recoveredBlock4Block15Block34Block58Block101Block120PC := 131.
        ].
        recoveredBlock4Block15Block34Block58Block101Block120Step = 131 ifTrue: [
            recoveredBlock4Block15Block34Block58Block101Block120Stack0 := (recoveredBlock4Block15Block34Block58Block101Block120Stack0) updating: (recoveredBlock4Block15Block34Block58Block101Block120Stack1) from: (recoveredBlock4Block15Block34Block58Block101Block120Stack2).
            recoveredBlock4Block15Block34Block58Block101Block120PC := 133.
        ].
        recoveredBlock4Block15Block34Block58Block101Block120Step = 133 ifTrue: [
            recoveredLocal1 := recoveredBlock4Block15Block34Block58Block101Block120Stack0.
            recoveredBlock4Block15Block34Block58Block101Block120PC := 136.
        ].
        recoveredBlock4Block15Block34Block58Block101Block120Step = 136 ifTrue: [
            recoveredBlock4Block15Block34Block58Block101Block120Stack0 := recoveredLocal1.
            recoveredBlock4Block15Block34Block58Block101Block120PC := 139.
        ].
        recoveredBlock4Block15Block34Block58Block101Block120Step = 139 ifTrue: [
            recoveredBlock4Block15Block34Block58Block101Block120Stack1 := recoveredLocal1.
            recoveredBlock4Block15Block34Block58Block101Block120PC := 142.
        ].
        recoveredBlock4Block15Block34Block58Block101Block120Step = 142 ifTrue: [
            recoveredBlock4Block15Block34Block58Block101Block120Stack1 := (recoveredBlock4Block15Block34Block58Block101Block120Stack1) editionsIndex.
            recoveredBlock4Block15Block34Block58Block101Block120PC := 144.
        ].
        recoveredBlock4Block15Block34Block58Block101Block120Step = 144 ifTrue: [
            recoveredBlock4Block15Block34Block58Block101Block120Stack2 := [:recoveredBlock4Block15Block34Block58Block101Block120Block144Arg1 | 
    | recoveredBlock4Block15Block34Block58Block101Block120Block144Stack0 recoveredBlock4Block15Block34Block58Block101Block120Block144Stack1 recoveredBlock4Block15Block34Block58Block101Block120Block144Stack2 recoveredBlock4Block15Block34Block58Block101Block120Block144Stack3 recoveredBlock4Block15Block34Block58Block101Block120Block144Stack4 recoveredBlock4Block15Block34Block58Block101Block120Block144PC recoveredBlock4Block15Block34Block58Block101Block120Block144Step recoveredBlock4Block15Block34Block58Block101Block120Block144Done recoveredBlock4Block15Block34Block58Block101Block120Block144Result |
    recoveredBlock4Block15Block34Block58Block101Block120Block144Stack0 := nil.
    recoveredBlock4Block15Block34Block58Block101Block120Block144PC := 150.
    recoveredBlock4Block15Block34Block58Block101Block120Block144Done := false.
    [recoveredBlock4Block15Block34Block58Block101Block120Block144Done not] whileTrue: [
        recoveredBlock4Block15Block34Block58Block101Block120Block144Step := recoveredBlock4Block15Block34Block58Block101Block120Block144PC.
        recoveredBlock4Block15Block34Block58Block101Block120Block144Step = 150 ifTrue: [
            recoveredBlock4Block15Block34Block58Block101Block120Block144Stack1 := recoveredLocal1.
            recoveredBlock4Block15Block34Block58Block101Block120Block144PC := 153.
        ].
        recoveredBlock4Block15Block34Block58Block101Block120Block144Step = 153 ifTrue: [
            recoveredBlock4Block15Block34Block58Block101Block120Block144Stack2 := recoveredLocal1.
            recoveredBlock4Block15Block34Block58Block101Block120Block144PC := 156.
        ].
        recoveredBlock4Block15Block34Block58Block101Block120Block144Step = 156 ifTrue: [
            recoveredBlock4Block15Block34Block58Block101Block120Block144Stack2 := (recoveredBlock4Block15Block34Block58Block101Block120Block144Stack2) classNamesIndex.
            recoveredBlock4Block15Block34Block58Block101Block120Block144PC := 158.
        ].
        recoveredBlock4Block15Block34Block58Block101Block120Block144Step = 158 ifTrue: [
            recoveredBlock4Block15Block34Block58Block101Block120Block144Stack1 := (recoveredBlock4Block15Block34Block58Block101Block120Block144Stack1) filePointerAt: (recoveredBlock4Block15Block34Block58Block101Block120Block144Stack2).
            recoveredBlock4Block15Block34Block58Block101Block120Block144PC := 160.
        ].
        recoveredBlock4Block15Block34Block58Block101Block120Block144Step = 160 ifTrue: [
            recoveredBlock4Block15Block34Block58Block101Block120Block144Stack1 := (recoveredBlock4Block15Block34Block58Block101Block120Block144Stack1) isVoid.
            recoveredBlock4Block15Block34Block58Block101Block120Block144PC := 162.
        ].
        recoveredBlock4Block15Block34Block58Block101Block120Block144Step = 162 ifTrue: [
            (recoveredBlock4Block15Block34Block58Block101Block120Block144Stack1) ifTrue: [recoveredBlock4Block15Block34Block58Block101Block120Block144PC := 166] ifFalse: [recoveredBlock4Block15Block34Block58Block101Block120Block144PC := 178].
        ].
        recoveredBlock4Block15Block34Block58Block101Block120Block144Step = 166 ifTrue: [
            recoveredBlock4Block15Block34Block58Block101Block120Block144Stack1 := EmEditionsDictionary.
            recoveredBlock4Block15Block34Block58Block101Block120Block144PC := 168.
        ].
        recoveredBlock4Block15Block34Block58Block101Block120Block144Step = 168 ifTrue: [
            recoveredBlock4Block15Block34Block58Block101Block120Block144Stack2 := recoveredBlock4Block15Block34Block58Block101Block120Block144Arg1.
            recoveredBlock4Block15Block34Block58Block101Block120Block144PC := 169.
        ].
        recoveredBlock4Block15Block34Block58Block101Block120Block144Step = 169 ifTrue: [
            recoveredBlock4Block15Block34Block58Block101Block120Block144Stack3 := recoveredBlock4Arg1.
            recoveredBlock4Block15Block34Block58Block101Block120Block144PC := 172.
        ].
        recoveredBlock4Block15Block34Block58Block101Block120Block144Step = 172 ifTrue: [
            recoveredBlock4Block15Block34Block58Block101Block120Block144Stack3 := (recoveredBlock4Block15Block34Block58Block101Block120Block144Stack3) library.
            recoveredBlock4Block15Block34Block58Block101Block120Block144PC := 173.
        ].
        recoveredBlock4Block15Block34Block58Block101Block120Block144Step = 173 ifTrue: [
            recoveredBlock4Block15Block34Block58Block101Block120Block144Stack1 := (recoveredBlock4Block15Block34Block58Block101Block120Block144Stack1) updating: (recoveredBlock4Block15Block34Block58Block101Block120Block144Stack2) from: (recoveredBlock4Block15Block34Block58Block101Block120Block144Stack3).
            recoveredBlock4Block15Block34Block58Block101Block120Block144PC := 175.
        ].
        recoveredBlock4Block15Block34Block58Block101Block120Block144Step = 175 ifTrue: [
            recoveredBlock4Block15Block34Block58Block101Block120Block144PC := 182.
        ].
        recoveredBlock4Block15Block34Block58Block101Block120Block144Step = 178 ifTrue: [
            recoveredBlock4Block15Block34Block58Block101Block120Block144Stack1 := EmEditionsDictionary.
            recoveredBlock4Block15Block34Block58Block101Block120Block144PC := 180.
        ].
        recoveredBlock4Block15Block34Block58Block101Block120Block144Step = 180 ifTrue: [
            recoveredBlock4Block15Block34Block58Block101Block120Block144Stack1 := (recoveredBlock4Block15Block34Block58Block101Block120Block144Stack1) empty.
            recoveredBlock4Block15Block34Block58Block101Block120Block144PC := 182.
        ].
        recoveredBlock4Block15Block34Block58Block101Block120Block144Step = 182 ifTrue: [
            recoveredBlock4Block15Block34Block58Block101Block120Block144Stack2 := recoveredArg2.
            recoveredBlock4Block15Block34Block58Block101Block120Block144PC := 185.
        ].
        recoveredBlock4Block15Block34Block58Block101Block120Block144Step = 185 ifTrue: [
            recoveredBlock4Block15Block34Block58Block101Block120Block144Stack3 := [:recoveredBlock4Block15Block34Block58Block101Block120Block144Block185Arg1 | 
    | recoveredBlock4Block15Block34Block58Block101Block120Block144Block185Value0 |
    recoveredBlock4Block15Block34Block58Block101Block120Block144Block185Value0 := recoveredLocal2.
    recoveredBlock4Block15Block34Block58Block101Block120Block144Block185Value0
].
            recoveredBlock4Block15Block34Block58Block101Block120Block144PC := 196.
        ].
        recoveredBlock4Block15Block34Block58Block101Block120Block144Step = 196 ifTrue: [
            recoveredBlock4Block15Block34Block58Block101Block120Block144Stack1 := (recoveredBlock4Block15Block34Block58Block101Block120Block144Stack1) at: (recoveredBlock4Block15Block34Block58Block101Block120Block144Stack2) putPointerFrom: (recoveredBlock4Block15Block34Block58Block101Block120Block144Stack3).
            recoveredBlock4Block15Block34Block58Block101Block120Block144PC := 198.
        ].
        recoveredBlock4Block15Block34Block58Block101Block120Block144Step = 198 ifTrue: [
            recoveredBlock4Block15Block34Block58Block101Block120Block144Result := recoveredBlock4Block15Block34Block58Block101Block120Block144Stack1.
            recoveredBlock4Block15Block34Block58Block101Block120Block144Done := true.
        ].
    ].
    recoveredBlock4Block15Block34Block58Block101Block120Block144Result
].
            recoveredBlock4Block15Block34Block58Block101Block120PC := 199.
        ].
        recoveredBlock4Block15Block34Block58Block101Block120Step = 199 ifTrue: [
            (recoveredBlock4Block15Block34Block58Block101Block120Stack0) partAt: (recoveredBlock4Block15Block34Block58Block101Block120Stack1) putPointerFrom: (recoveredBlock4Block15Block34Block58Block101Block120Stack2).
            recoveredBlock4Block15Block34Block58Block101Block120PC := 201.
        ].
        recoveredBlock4Block15Block34Block58Block101Block120Step = 201 ifTrue: [
            recoveredBlock4Block15Block34Block58Block101Block120Stack0 := recoveredLocal1.
            recoveredBlock4Block15Block34Block58Block101Block120PC := 204.
        ].
        recoveredBlock4Block15Block34Block58Block101Block120Step = 204 ifTrue: [
            recoveredBlock4Block15Block34Block58Block101Block120Stack1 := recoveredLocal1.
            recoveredBlock4Block15Block34Block58Block101Block120PC := 207.
        ].
        recoveredBlock4Block15Block34Block58Block101Block120Step = 207 ifTrue: [
            recoveredBlock4Block15Block34Block58Block101Block120Stack1 := (recoveredBlock4Block15Block34Block58Block101Block120Stack1) classNamesIndex.
            recoveredBlock4Block15Block34Block58Block101Block120PC := 209.
        ].
        recoveredBlock4Block15Block34Block58Block101Block120Step = 209 ifTrue: [
            recoveredBlock4Block15Block34Block58Block101Block120Stack2 := [:block280057f4Arg1 | 
    | block280057f4Value0 block280057f4Value1 |
    block280057f4Value0 := EmLibraryPointer.
    block280057f4Value1 := (block280057f4Value0) void.
    block280057f4Value1
].
            recoveredBlock4Block15Block34Block58Block101Block120PC := 211.
        ].
        recoveredBlock4Block15Block34Block58Block101Block120Step = 211 ifTrue: [
            recoveredBlock4Block15Block34Block58Block101Block120PC := 219.
        ].
        recoveredBlock4Block15Block34Block58Block101Block120Step = 219 ifTrue: [
            (recoveredBlock4Block15Block34Block58Block101Block120Stack0) partAt: (recoveredBlock4Block15Block34Block58Block101Block120Stack1) putPointerFrom: (recoveredBlock4Block15Block34Block58Block101Block120Stack2).
            recoveredBlock4Block15Block34Block58Block101Block120PC := 221.
        ].
        recoveredBlock4Block15Block34Block58Block101Block120Step = 221 ifTrue: [
            recoveredBlock4Block15Block34Block58Block101Block120Stack0 := recoveredLocal1.
            recoveredBlock4Block15Block34Block58Block101Block120PC := 224.
        ].
        recoveredBlock4Block15Block34Block58Block101Block120Step = 224 ifTrue: [
            recoveredBlock4Block15Block34Block58Block101Block120Stack1 := recoveredLocal1.
            recoveredBlock4Block15Block34Block58Block101Block120PC := 227.
        ].
        recoveredBlock4Block15Block34Block58Block101Block120Step = 227 ifTrue: [
            recoveredBlock4Block15Block34Block58Block101Block120Stack1 := (recoveredBlock4Block15Block34Block58Block101Block120Stack1) objectStoreIndex.
            recoveredBlock4Block15Block34Block58Block101Block120PC := 229.
        ].
        recoveredBlock4Block15Block34Block58Block101Block120Step = 229 ifTrue: [
            recoveredBlock4Block15Block34Block58Block101Block120Stack2 := [:block28005818Arg1 | 
    | block28005818Value0 block28005818Value1 |
    block28005818Value0 := EmLibraryPointer.
    block28005818Value1 := (block28005818Value0) void.
    block28005818Value1
].
            recoveredBlock4Block15Block34Block58Block101Block120PC := 231.
        ].
        recoveredBlock4Block15Block34Block58Block101Block120Step = 231 ifTrue: [
            recoveredBlock4Block15Block34Block58Block101Block120PC := 239.
        ].
        recoveredBlock4Block15Block34Block58Block101Block120Step = 239 ifTrue: [
            (recoveredBlock4Block15Block34Block58Block101Block120Stack0) partAt: (recoveredBlock4Block15Block34Block58Block101Block120Stack1) putPointerFrom: (recoveredBlock4Block15Block34Block58Block101Block120Stack2).
            recoveredBlock4Block15Block34Block58Block101Block120PC := 241.
        ].
        recoveredBlock4Block15Block34Block58Block101Block120Step = 241 ifTrue: [
            recoveredBlock4Block15Block34Block58Block101Block120Stack0 := recoveredLocal1.
            recoveredBlock4Block15Block34Block58Block101Block120PC := 244.
        ].
        recoveredBlock4Block15Block34Block58Block101Block120Step = 244 ifTrue: [
            recoveredBlock4Block15Block34Block58Block101Block120Stack0 := (recoveredBlock4Block15Block34Block58Block101Block120Stack0) filePointer.
            recoveredBlock4Block15Block34Block58Block101Block120PC := 246.
        ].
        recoveredBlock4Block15Block34Block58Block101Block120Step = 246 ifTrue: [
            recoveredBlock4Block15Block34Block58Block101Block120Result := recoveredBlock4Block15Block34Block58Block101Block120Stack0.
            recoveredBlock4Block15Block34Block58Block101Block120Done := true.
        ].
    ].
    recoveredBlock4Block15Block34Block58Block101Block120Result
].
    recoveredBlock4Block15Block34Block58Block101Value7 := (recoveredBlock4Block15Block34Block58Block101Value4) at: (recoveredBlock4Block15Block34Block58Block101Value5) putPointerFrom: (recoveredBlock4Block15Block34Block58Block101Value6).
    recoveredBlock4Block15Block34Block58Block101Value7
].
            recoveredBlock4Block15Block34Block58PC := 250.
        ].
        recoveredBlock4Block15Block34Block58Step = 250 ifTrue: [
            (recoveredBlock4Block15Block34Block58Stack1) at: (recoveredBlock4Block15Block34Block58Stack2) putPointerFrom: (recoveredBlock4Block15Block34Block58Stack3).
            recoveredBlock4Block15Block34Block58PC := 252.
        ].
        recoveredBlock4Block15Block34Block58Step = 252 ifTrue: [
            recoveredBlock4Block15Block34Block58Stack1 := recoveredLocal3.
            recoveredBlock4Block15Block34Block58PC := 255.
        ].
        recoveredBlock4Block15Block34Block58Step = 255 ifTrue: [
            recoveredBlock4Block15Block34Block58Stack2 := recoveredArg2.
            recoveredBlock4Block15Block34Block58PC := 258.
        ].
        recoveredBlock4Block15Block34Block58Step = 258 ifTrue: [
            recoveredBlock4Block15Block34Block58Stack1 := (recoveredBlock4Block15Block34Block58Stack1) removeKey: (recoveredBlock4Block15Block34Block58Stack2).
            recoveredBlock4Block15Block34Block58PC := 260.
        ].
        recoveredBlock4Block15Block34Block58Step = 260 ifTrue: [
            recoveredBlock4Block15Block34Block58Result := recoveredBlock4Block15Block34Block58Stack1.
            recoveredBlock4Block15Block34Block58Done := true.
        ].
    ].
    recoveredBlock4Block15Block34Block58Result
].
    recoveredBlock4Block15Block34Value8 := (recoveredBlock4Block15Block34Value4) partAt: (recoveredBlock4Block15Block34Value6) putPointerFrom: (recoveredBlock4Block15Block34Value7).
    recoveredBlock4Block15Block34Value8
].
    recoveredBlock4Block15Value7 := (recoveredBlock4Block15Value4) at: (recoveredBlock4Block15Value5) putPointerFrom: (recoveredBlock4Block15Value6).
    recoveredBlock4Block15Value7
].
    recoveredBlock4Value3 := (recoveredBlock4Value0) at: (recoveredBlock4Value1) putPointerFrom: (recoveredBlock4Value2).
    recoveredBlock4Value3
].
            recoveredPC := 270.
        ].
        recoveredStep = 270 ifTrue: [
            (recoveredStack0) updateRegistryUsing: (recoveredStack1).
            recoveredPC := 272.
        ].
        recoveredStep = 272 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 275.
        ].
        recoveredStep = 275 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 280] ifFalse: [recoveredPC := 278].
        ].
        recoveredStep = 278 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 279.
        ].
        recoveredStep = 279 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 280 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 281.
        ].
        recoveredStep = 281 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"lib.ic method 0x2002cf10; bytecode file offset 0x68f70"
!EmSubApplicationParts class methodsFor: 'recovered'!
salvage: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := [:recoveredBlock4Arg1 | 
    | recoveredBlock4Value0 recoveredBlock4Value1 recoveredBlock4Value2 recoveredBlock4Value3 |
    recoveredBlock4Value0 := recoveredBlock4Arg1.
    recoveredBlock4Value1 := (self) purgedRegistryKey.
    recoveredBlock4Value2 := [:recoveredBlock4Block15Arg1 | 
    | recoveredBlock4Block15Stack0 recoveredBlock4Block15Stack1 recoveredBlock4Block15Stack2 recoveredBlock4Block15Stack3 recoveredBlock4Block15Stack4 recoveredBlock4Block15Stack5 recoveredBlock4Block15PC recoveredBlock4Block15Step recoveredBlock4Block15Done recoveredBlock4Block15Result |
    recoveredBlock4Block15Stack0 := self.
    recoveredBlock4Block15PC := 22.
    recoveredBlock4Block15Done := false.
    [recoveredBlock4Block15Done not] whileTrue: [
        recoveredBlock4Block15Step := recoveredBlock4Block15PC.
        recoveredBlock4Block15Step = 22 ifTrue: [
            recoveredBlock4Block15Stack1 := EmDiskDictionary.
            recoveredBlock4Block15PC := 24.
        ].
        recoveredBlock4Block15Step = 24 ifTrue: [
            recoveredBlock4Block15Stack2 := recoveredBlock4Block15Arg1.
            recoveredBlock4Block15PC := 25.
        ].
        recoveredBlock4Block15Step = 25 ifTrue: [
            recoveredBlock4Block15Stack3 := recoveredBlock4Arg1.
            recoveredBlock4Block15PC := 28.
        ].
        recoveredBlock4Block15Step = 28 ifTrue: [
            recoveredBlock4Block15Stack3 := (recoveredBlock4Block15Stack3) library.
            recoveredBlock4Block15PC := 29.
        ].
        recoveredBlock4Block15Step = 29 ifTrue: [
            recoveredBlock4Block15Stack1 := (recoveredBlock4Block15Stack1) updating: (recoveredBlock4Block15Stack2) from: (recoveredBlock4Block15Stack3).
            recoveredBlock4Block15PC := 31.
        ].
        recoveredBlock4Block15Step = 31 ifTrue: [
            recoveredLocal5 := recoveredBlock4Block15Stack1.
            recoveredBlock4Block15PC := 34.
        ].
        recoveredBlock4Block15Step = 34 ifTrue: [
            recoveredBlock4Block15Stack1 := nil.
            recoveredBlock4Block15PC := 35.
        ].
        recoveredBlock4Block15Step = 35 ifTrue: [
            recoveredBlock4Block15Stack2 := recoveredLocal5.
            recoveredBlock4Block15PC := 38.
        ].
        recoveredBlock4Block15Step = 38 ifTrue: [
            recoveredBlock4Block15Stack3 := recoveredArg1.
            recoveredBlock4Block15PC := 41.
        ].
        recoveredBlock4Block15Step = 41 ifTrue: [
            recoveredBlock4Block15Stack4 := [].
            recoveredBlock4Block15PC := 43.
        ].
        recoveredBlock4Block15Step = 43 ifTrue: [
            recoveredBlock4Block15Stack2 := (recoveredBlock4Block15Stack2) at: (recoveredBlock4Block15Stack3) ifAbsent: (recoveredBlock4Block15Stack4).
            recoveredBlock4Block15PC := 45.
        ].
        recoveredBlock4Block15Step = 45 ifTrue: [
            recoveredBlock4Block15Stack3 := recoveredBlock4Block15Stack2.
            recoveredBlock4Block15PC := 46.
        ].
        recoveredBlock4Block15Step = 46 ifTrue: [
            recoveredLocal4 := recoveredBlock4Block15Stack3.
            recoveredBlock4Block15PC := 49.
        ].
        recoveredBlock4Block15Step = 49 ifTrue: [
            (recoveredBlock4Block15Stack2 == nil) ifTrue: [recoveredBlock4Block15PC := 288] ifFalse: [recoveredBlock4Block15PC := 52].
        ].
        recoveredBlock4Block15Step = 52 ifTrue: [
            recoveredBlock4Block15PC := 53.
        ].
        recoveredBlock4Block15Step = 53 ifTrue: [
            recoveredBlock4Block15Stack1 := self.
            recoveredBlock4Block15PC := 54.
        ].
        recoveredBlock4Block15Step = 54 ifTrue: [
            recoveredBlock4Block15Stack2 := recoveredLocal4.
            recoveredBlock4Block15PC := 57.
        ].
        recoveredBlock4Block15Step = 57 ifTrue: [
            recoveredBlock4Block15Stack3 := recoveredBlock4Arg1.
            recoveredBlock4Block15PC := 60.
        ].
        recoveredBlock4Block15Step = 60 ifTrue: [
            recoveredBlock4Block15Stack3 := (recoveredBlock4Block15Stack3) library.
            recoveredBlock4Block15PC := 61.
        ].
        recoveredBlock4Block15Step = 61 ifTrue: [
            recoveredBlock4Block15Stack1 := (recoveredBlock4Block15Stack1) updating: (recoveredBlock4Block15Stack2) from: (recoveredBlock4Block15Stack3).
            recoveredBlock4Block15PC := 63.
        ].
        recoveredBlock4Block15Step = 63 ifTrue: [
            recoveredLocal3 := recoveredBlock4Block15Stack1.
            recoveredBlock4Block15PC := 66.
        ].
        recoveredBlock4Block15Step = 66 ifTrue: [
            recoveredBlock4Block15Stack1 := recoveredLocal3.
            recoveredBlock4Block15PC := 69.
        ].
        recoveredBlock4Block15Step = 69 ifTrue: [
            recoveredBlock4Block15Stack2 := recoveredLocal3.
            recoveredBlock4Block15PC := 72.
        ].
        recoveredBlock4Block15Step = 72 ifTrue: [
            recoveredBlock4Block15Stack2 := (recoveredBlock4Block15Stack2) classNamesIndex.
            recoveredBlock4Block15PC := 74.
        ].
        recoveredBlock4Block15Step = 74 ifTrue: [
            recoveredBlock4Block15Stack1 := (recoveredBlock4Block15Stack1) filePointerAt: (recoveredBlock4Block15Stack2).
            recoveredBlock4Block15PC := 76.
        ].
        recoveredBlock4Block15Step = 76 ifTrue: [
            recoveredBlock4Block15Stack1 := (recoveredBlock4Block15Stack1) isVoid.
            recoveredBlock4Block15PC := 78.
        ].
        recoveredBlock4Block15Step = 78 ifTrue: [
            (recoveredBlock4Block15Stack1) ifTrue: [recoveredBlock4Block15PC := 82] ifFalse: [recoveredBlock4Block15PC := 206].
        ].
        recoveredBlock4Block15Step = 82 ifTrue: [
            recoveredBlock4Block15Stack1 := recoveredBlock4Arg1.
            recoveredBlock4Block15PC := 85.
        ].
        recoveredBlock4Block15Step = 85 ifTrue: [
            recoveredBlock4Block15Stack2 := self.
            recoveredBlock4Block15PC := 86.
        ].
        recoveredBlock4Block15Step = 86 ifTrue: [
            recoveredBlock4Block15Stack2 := (recoveredBlock4Block15Stack2) registryKey.
            recoveredBlock4Block15PC := 88.
        ].
        recoveredBlock4Block15Step = 88 ifTrue: [
            recoveredBlock4Block15Stack3 := [:recoveredBlock4Block15Block88Arg1 | 
    | recoveredBlock4Block15Block88Value0 recoveredBlock4Block15Block88Value1 recoveredBlock4Block15Block88Value2 recoveredBlock4Block15Block88Value3 recoveredBlock4Block15Block88Value4 recoveredBlock4Block15Block88Value5 recoveredBlock4Block15Block88Value6 recoveredBlock4Block15Block88Value7 |
    recoveredBlock4Block15Block88Value0 := EmDiskDictionary.
    recoveredBlock4Block15Block88Value1 := recoveredBlock4Block15Block88Arg1.
    recoveredBlock4Block15Block88Value2 := recoveredBlock4Arg1.
    recoveredBlock4Block15Block88Value3 := (recoveredBlock4Block15Block88Value2) library.
    recoveredBlock4Block15Block88Value4 := (recoveredBlock4Block15Block88Value0) updating: (recoveredBlock4Block15Block88Value1) from: (recoveredBlock4Block15Block88Value3).
    recoveredBlock4Block15Block88Value5 := recoveredArg1.
    recoveredBlock4Block15Block88Value6 := [:recoveredBlock4Block15Block88Block106Arg1 | 
    | recoveredBlock4Block15Block88Block106Value0 recoveredBlock4Block15Block88Block106Value1 recoveredBlock4Block15Block88Block106Value2 recoveredBlock4Block15Block88Block106Value3 recoveredBlock4Block15Block88Block106Value4 recoveredBlock4Block15Block88Block106Value5 recoveredBlock4Block15Block88Block106Value6 recoveredBlock4Block15Block88Block106Value7 recoveredBlock4Block15Block88Block106Value8 |
    recoveredBlock4Block15Block88Block106Value0 := recoveredBlock4Block15Block88Block106Arg1.
    recoveredBlock4Block15Block88Block106Value1 := recoveredBlock4Arg1.
    recoveredBlock4Block15Block88Block106Value2 := (recoveredBlock4Block15Block88Block106Value1) library.
    recoveredBlock4Block15Block88Block106Value3 := (self) updating: (recoveredBlock4Block15Block88Block106Value0) from: (recoveredBlock4Block15Block88Block106Value2).
    recoveredBlock4Block15Block88Block106Value4 := recoveredBlock4Block15Block88Block106Value3.
    recoveredLocal1 := recoveredBlock4Block15Block88Block106Value4.
    recoveredBlock4Block15Block88Block106Value5 := recoveredLocal1.
    recoveredBlock4Block15Block88Block106Value6 := (recoveredBlock4Block15Block88Block106Value5) editionsIndex.
    recoveredBlock4Block15Block88Block106Value7 := [:recoveredBlock4Block15Block88Block106Block128Arg1 | 
    | recoveredBlock4Block15Block88Block106Block128Value0 recoveredBlock4Block15Block88Block106Block128Value1 recoveredBlock4Block15Block88Block106Block128Value2 recoveredBlock4Block15Block88Block106Block128Value3 recoveredBlock4Block15Block88Block106Block128Value4 |
    recoveredBlock4Block15Block88Block106Block128Value0 := recoveredBlock4Block15Block88Block106Block128Arg1.
    recoveredLocal2 := recoveredBlock4Block15Block88Block106Block128Value0.
    recoveredBlock4Block15Block88Block106Block128Value1 := recoveredLocal3.
    recoveredBlock4Block15Block88Block106Block128Value2 := recoveredLocal3.
    recoveredBlock4Block15Block88Block106Block128Value3 := (recoveredBlock4Block15Block88Block106Block128Value2) editionsIndex.
    recoveredBlock4Block15Block88Block106Block128Value4 := (recoveredBlock4Block15Block88Block106Block128Value1) filePointerAt: (recoveredBlock4Block15Block88Block106Block128Value3).
    recoveredBlock4Block15Block88Block106Block128Value4
].
    recoveredBlock4Block15Block88Block106Value8 := (recoveredBlock4Block15Block88Block106Value3) partAt: (recoveredBlock4Block15Block88Block106Value6) putPointerFrom: (recoveredBlock4Block15Block88Block106Value7).
    recoveredBlock4Block15Block88Block106Value8
].
    recoveredBlock4Block15Block88Value7 := (recoveredBlock4Block15Block88Value4) at: (recoveredBlock4Block15Block88Value5) putPointerFrom: (recoveredBlock4Block15Block88Value6).
    recoveredBlock4Block15Block88Value7
].
            recoveredBlock4Block15PC := 155.
        ].
        recoveredBlock4Block15Step = 155 ifTrue: [
            (recoveredBlock4Block15Stack1) at: (recoveredBlock4Block15Stack2) putPointerFrom: (recoveredBlock4Block15Stack3).
            recoveredBlock4Block15PC := 157.
        ].
        recoveredBlock4Block15Step = 157 ifTrue: [
            recoveredBlock4Block15Stack1 := recoveredLocal2.
            recoveredBlock4Block15PC := 160.
        ].
        recoveredBlock4Block15Step = 160 ifTrue: [
            recoveredBlock4Block15Stack1 := (recoveredBlock4Block15Stack1) isVoid.
            recoveredBlock4Block15PC := 162.
        ].
        recoveredBlock4Block15Step = 162 ifTrue: [
            (recoveredBlock4Block15Stack1) ifTrue: [recoveredBlock4Block15PC := 166] ifFalse: [recoveredBlock4Block15PC := 178].
        ].
        recoveredBlock4Block15Step = 166 ifTrue: [
            recoveredBlock4Block15Stack1 := recoveredLocal5.
            recoveredBlock4Block15PC := 169.
        ].
        recoveredBlock4Block15Step = 169 ifTrue: [
            recoveredBlock4Block15Stack2 := recoveredArg1.
            recoveredBlock4Block15PC := 172.
        ].
        recoveredBlock4Block15Step = 172 ifTrue: [
            recoveredBlock4Block15Stack1 := (recoveredBlock4Block15Stack1) removeKey: (recoveredBlock4Block15Stack2).
            recoveredBlock4Block15PC := 174.
        ].
        recoveredBlock4Block15Step = 174 ifTrue: [
            recoveredBlock4Block15PC := 203.
        ].
        recoveredBlock4Block15Step = 178 ifTrue: [
            recoveredBlock4Block15Stack1 := recoveredLocal3.
            recoveredBlock4Block15PC := 181.
        ].
        recoveredBlock4Block15Step = 181 ifTrue: [
            recoveredBlock4Block15Stack2 := recoveredLocal3.
            recoveredBlock4Block15PC := 184.
        ].
        recoveredBlock4Block15Step = 184 ifTrue: [
            recoveredBlock4Block15Stack2 := (recoveredBlock4Block15Stack2) editionsIndex.
            recoveredBlock4Block15PC := 186.
        ].
        recoveredBlock4Block15Step = 186 ifTrue: [
            recoveredBlock4Block15Stack3 := [:recoveredBlock4Block15Block186Arg1 | 
    | recoveredBlock4Block15Block186Value0 |
    recoveredBlock4Block15Block186Value0 := recoveredLocal2.
    recoveredBlock4Block15Block186Value0
].
            recoveredBlock4Block15PC := 196.
        ].
        recoveredBlock4Block15Step = 196 ifTrue: [
            (recoveredBlock4Block15Stack1) partAt: (recoveredBlock4Block15Stack2) putPointerFrom: (recoveredBlock4Block15Stack3).
            recoveredBlock4Block15PC := 198.
        ].
        recoveredBlock4Block15Step = 198 ifTrue: [
            recoveredBlock4Block15Stack1 := recoveredLocal5.
            recoveredBlock4Block15PC := 201.
        ].
        recoveredBlock4Block15Step = 201 ifTrue: [
            recoveredBlock4Block15Stack1 := (recoveredBlock4Block15Stack1) filePointer.
            recoveredBlock4Block15PC := 203.
        ].
        recoveredBlock4Block15Step = 203 ifTrue: [
            recoveredBlock4Block15PC := 288.
        ].
        recoveredBlock4Block15Step = 206 ifTrue: [
            recoveredBlock4Block15Stack1 := recoveredBlock4Arg1.
            recoveredBlock4Block15PC := 209.
        ].
        recoveredBlock4Block15Step = 209 ifTrue: [
            recoveredBlock4Block15Stack2 := self.
            recoveredBlock4Block15PC := 210.
        ].
        recoveredBlock4Block15Step = 210 ifTrue: [
            recoveredBlock4Block15Stack2 := (recoveredBlock4Block15Stack2) registryKey.
            recoveredBlock4Block15PC := 212.
        ].
        recoveredBlock4Block15Step = 212 ifTrue: [
            recoveredBlock4Block15Stack3 := [:recoveredBlock4Block15Block212Arg1 | 
    | recoveredBlock4Block15Block212Value0 recoveredBlock4Block15Block212Value1 recoveredBlock4Block15Block212Value2 recoveredBlock4Block15Block212Value3 recoveredBlock4Block15Block212Value4 recoveredBlock4Block15Block212Value5 recoveredBlock4Block15Block212Value6 recoveredBlock4Block15Block212Value7 |
    recoveredBlock4Block15Block212Value0 := EmDiskDictionary.
    recoveredBlock4Block15Block212Value1 := recoveredBlock4Block15Block212Arg1.
    recoveredBlock4Block15Block212Value2 := recoveredBlock4Arg1.
    recoveredBlock4Block15Block212Value3 := (recoveredBlock4Block15Block212Value2) library.
    recoveredBlock4Block15Block212Value4 := (recoveredBlock4Block15Block212Value0) updating: (recoveredBlock4Block15Block212Value1) from: (recoveredBlock4Block15Block212Value3).
    recoveredBlock4Block15Block212Value5 := recoveredArg1.
    recoveredBlock4Block15Block212Value6 := [:recoveredBlock4Block15Block212Block230Arg1 | 
    | recoveredBlock4Block15Block212Block230Value0 recoveredBlock4Block15Block212Block230Value1 |
    recoveredBlock4Block15Block212Block230Value0 := recoveredBlock4Block15Block212Block230Arg1.
    recoveredLocal2 := recoveredBlock4Block15Block212Block230Value0.
    recoveredBlock4Block15Block212Block230Value1 := recoveredLocal4.
    recoveredBlock4Block15Block212Block230Value1
].
    recoveredBlock4Block15Block212Value7 := (recoveredBlock4Block15Block212Value4) at: (recoveredBlock4Block15Block212Value5) putPointerFrom: (recoveredBlock4Block15Block212Value6).
    recoveredBlock4Block15Block212Value7
].
            recoveredBlock4Block15PC := 247.
        ].
        recoveredBlock4Block15Step = 247 ifTrue: [
            (recoveredBlock4Block15Stack1) at: (recoveredBlock4Block15Stack2) putPointerFrom: (recoveredBlock4Block15Stack3).
            recoveredBlock4Block15PC := 249.
        ].
        recoveredBlock4Block15Step = 249 ifTrue: [
            recoveredBlock4Block15Stack1 := recoveredLocal2.
            recoveredBlock4Block15PC := 252.
        ].
        recoveredBlock4Block15Step = 252 ifTrue: [
            recoveredBlock4Block15Stack1 := (recoveredBlock4Block15Stack1) isVoid.
            recoveredBlock4Block15PC := 254.
        ].
        recoveredBlock4Block15Step = 254 ifTrue: [
            (recoveredBlock4Block15Stack1) ifTrue: [recoveredBlock4Block15PC := 258] ifFalse: [recoveredBlock4Block15PC := 270].
        ].
        recoveredBlock4Block15Step = 258 ifTrue: [
            recoveredBlock4Block15Stack1 := recoveredLocal5.
            recoveredBlock4Block15PC := 261.
        ].
        recoveredBlock4Block15Step = 261 ifTrue: [
            recoveredBlock4Block15Stack2 := recoveredArg1.
            recoveredBlock4Block15PC := 264.
        ].
        recoveredBlock4Block15Step = 264 ifTrue: [
            recoveredBlock4Block15Stack1 := (recoveredBlock4Block15Stack1) removeKey: (recoveredBlock4Block15Stack2).
            recoveredBlock4Block15PC := 266.
        ].
        recoveredBlock4Block15Step = 266 ifTrue: [
            recoveredBlock4Block15PC := 288.
        ].
        recoveredBlock4Block15Step = 270 ifTrue: [
            recoveredBlock4Block15Stack1 := recoveredLocal5.
            recoveredBlock4Block15PC := 273.
        ].
        recoveredBlock4Block15Step = 273 ifTrue: [
            recoveredBlock4Block15Stack2 := recoveredArg1.
            recoveredBlock4Block15PC := 276.
        ].
        recoveredBlock4Block15Step = 276 ifTrue: [
            recoveredBlock4Block15Stack3 := [:recoveredBlock4Block15Block276Arg1 | 
    | recoveredBlock4Block15Block276Value0 |
    recoveredBlock4Block15Block276Value0 := recoveredLocal2.
    recoveredBlock4Block15Block276Value0
].
            recoveredBlock4Block15PC := 286.
        ].
        recoveredBlock4Block15Step = 286 ifTrue: [
            recoveredBlock4Block15Stack1 := (recoveredBlock4Block15Stack1) at: (recoveredBlock4Block15Stack2) putPointerFrom: (recoveredBlock4Block15Stack3).
            recoveredBlock4Block15PC := 288.
        ].
        recoveredBlock4Block15Step = 288 ifTrue: [
            recoveredBlock4Block15Result := recoveredBlock4Block15Stack1.
            recoveredBlock4Block15Done := true.
        ].
    ].
    recoveredBlock4Block15Result
].
    recoveredBlock4Value3 := (recoveredBlock4Value0) at: (recoveredBlock4Value1) putPointerFrom: (recoveredBlock4Value2).
    recoveredBlock4Value3
].
            recoveredPC := 292.
        ].
        recoveredStep = 292 ifTrue: [
            (recoveredStack0) updateRegistryUsing: (recoveredStack1).
            recoveredPC := 294.
        ].
        recoveredStep = 294 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 297.
        ].
        recoveredStep = 297 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 302] ifFalse: [recoveredPC := 300].
        ].
        recoveredStep = 300 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 301.
        ].
        recoveredStep = 301 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 302 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 303.
        ].
        recoveredStep = 303 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"lib.ic method 0x200315b8; bytecode file offset 0x6d630"
!EmSubApplicationParts class methodsFor: 'recovered'!
salvage: recoveredArg1 at: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := [:recoveredBlock4Arg1 | 
    | recoveredBlock4Value0 recoveredBlock4Value1 recoveredBlock4Value2 recoveredBlock4Value3 |
    recoveredBlock4Value0 := recoveredBlock4Arg1.
    recoveredBlock4Value1 := (self) purgedRegistryKey.
    recoveredBlock4Value2 := [:recoveredBlock4Block15Arg1 | 
    | recoveredBlock4Block15Stack0 recoveredBlock4Block15Stack1 recoveredBlock4Block15Stack2 recoveredBlock4Block15Stack3 recoveredBlock4Block15Stack4 recoveredBlock4Block15PC recoveredBlock4Block15Step recoveredBlock4Block15Done recoveredBlock4Block15Result |
    recoveredBlock4Block15Stack0 := self.
    recoveredBlock4Block15PC := 22.
    recoveredBlock4Block15Done := false.
    [recoveredBlock4Block15Done not] whileTrue: [
        recoveredBlock4Block15Step := recoveredBlock4Block15PC.
        recoveredBlock4Block15Step = 22 ifTrue: [
            recoveredBlock4Block15Stack1 := EmDiskDictionary.
            recoveredBlock4Block15PC := 24.
        ].
        recoveredBlock4Block15Step = 24 ifTrue: [
            recoveredBlock4Block15Stack2 := recoveredBlock4Block15Arg1.
            recoveredBlock4Block15PC := 25.
        ].
        recoveredBlock4Block15Step = 25 ifTrue: [
            recoveredBlock4Block15Stack3 := recoveredBlock4Arg1.
            recoveredBlock4Block15PC := 28.
        ].
        recoveredBlock4Block15Step = 28 ifTrue: [
            recoveredBlock4Block15Stack3 := (recoveredBlock4Block15Stack3) library.
            recoveredBlock4Block15PC := 29.
        ].
        recoveredBlock4Block15Step = 29 ifTrue: [
            recoveredBlock4Block15Stack1 := (recoveredBlock4Block15Stack1) updating: (recoveredBlock4Block15Stack2) from: (recoveredBlock4Block15Stack3).
            recoveredBlock4Block15PC := 31.
        ].
        recoveredBlock4Block15Step = 31 ifTrue: [
            recoveredBlock4Block15Stack2 := recoveredBlock4Block15Stack1.
            recoveredBlock4Block15PC := 32.
        ].
        recoveredBlock4Block15Step = 32 ifTrue: [
            recoveredLocal5 := recoveredBlock4Block15Stack2.
            recoveredBlock4Block15PC := 35.
        ].
        recoveredBlock4Block15Step = 35 ifTrue: [
            recoveredBlock4Block15Stack2 := recoveredArg1.
            recoveredBlock4Block15PC := 38.
        ].
        recoveredBlock4Block15Step = 38 ifTrue: [
            recoveredBlock4Block15Stack3 := [:recoveredBlock4Block15Block38Arg1 | 
    | recoveredBlock4Block15Block38Value0 recoveredBlock4Block15Block38Value1 recoveredBlock4Block15Block38Value2 recoveredBlock4Block15Block38Value3 recoveredBlock4Block15Block38Value4 recoveredBlock4Block15Block38Value5 recoveredBlock4Block15Block38Value6 recoveredBlock4Block15Block38Value7 recoveredBlock4Block15Block38Value8 |
    recoveredBlock4Block15Block38Value0 := recoveredBlock4Block15Block38Arg1.
    recoveredBlock4Block15Block38Value1 := recoveredBlock4Arg1.
    recoveredBlock4Block15Block38Value2 := (recoveredBlock4Block15Block38Value1) library.
    recoveredBlock4Block15Block38Value3 := (self) updating: (recoveredBlock4Block15Block38Value0) from: (recoveredBlock4Block15Block38Value2).
    recoveredLocal4 := recoveredBlock4Block15Block38Value3.
    recoveredBlock4Block15Block38Value4 := recoveredLocal4.
    recoveredBlock4Block15Block38Value5 := recoveredLocal4.
    recoveredBlock4Block15Block38Value6 := (recoveredBlock4Block15Block38Value5) editionsIndex.
    recoveredBlock4Block15Block38Value7 := [:recoveredBlock4Block15Block38Block62Arg1 | 
    | recoveredBlock4Block15Block38Block62Stack0 recoveredBlock4Block15Block38Block62Stack1 recoveredBlock4Block15Block38Block62Stack2 recoveredBlock4Block15Block38Block62Stack3 recoveredBlock4Block15Block38Block62Stack4 recoveredBlock4Block15Block38Block62PC recoveredBlock4Block15Block38Block62Step recoveredBlock4Block15Block38Block62Done recoveredBlock4Block15Block38Block62Result |
    recoveredBlock4Block15Block38Block62Stack0 := self.
    recoveredBlock4Block15Block38Block62PC := 68.
    recoveredBlock4Block15Block38Block62Done := false.
    [recoveredBlock4Block15Block38Block62Done not] whileTrue: [
        recoveredBlock4Block15Block38Block62Step := recoveredBlock4Block15Block38Block62PC.
        recoveredBlock4Block15Block38Block62Step = 68 ifTrue: [
            recoveredBlock4Block15Block38Block62Stack1 := EmEditionsDictionary.
            recoveredBlock4Block15Block38Block62PC := 70.
        ].
        recoveredBlock4Block15Block38Block62Step = 70 ifTrue: [
            recoveredBlock4Block15Block38Block62Stack2 := recoveredBlock4Block15Block38Block62Arg1.
            recoveredBlock4Block15Block38Block62PC := 71.
        ].
        recoveredBlock4Block15Block38Block62Step = 71 ifTrue: [
            recoveredBlock4Block15Block38Block62Stack3 := recoveredBlock4Arg1.
            recoveredBlock4Block15Block38Block62PC := 74.
        ].
        recoveredBlock4Block15Block38Block62Step = 74 ifTrue: [
            recoveredBlock4Block15Block38Block62Stack3 := (recoveredBlock4Block15Block38Block62Stack3) library.
            recoveredBlock4Block15Block38Block62PC := 75.
        ].
        recoveredBlock4Block15Block38Block62Step = 75 ifTrue: [
            recoveredBlock4Block15Block38Block62Stack1 := (recoveredBlock4Block15Block38Block62Stack1) updating: (recoveredBlock4Block15Block38Block62Stack2) from: (recoveredBlock4Block15Block38Block62Stack3).
            recoveredBlock4Block15Block38Block62PC := 77.
        ].
        recoveredBlock4Block15Block38Block62Step = 77 ifTrue: [
            recoveredLocal3 := recoveredBlock4Block15Block38Block62Stack1.
            recoveredBlock4Block15Block38Block62PC := 80.
        ].
        recoveredBlock4Block15Block38Block62Step = 80 ifTrue: [
            recoveredBlock4Block15Block38Block62Stack1 := recoveredLocal3.
            recoveredBlock4Block15Block38Block62PC := 83.
        ].
        recoveredBlock4Block15Block38Block62Step = 83 ifTrue: [
            recoveredBlock4Block15Block38Block62Stack2 := recoveredArg2.
            recoveredBlock4Block15Block38Block62PC := 86.
        ].
        recoveredBlock4Block15Block38Block62Step = 86 ifTrue: [
            recoveredBlock4Block15Block38Block62Stack3 := [].
            recoveredBlock4Block15Block38Block62PC := 88.
        ].
        recoveredBlock4Block15Block38Block62Step = 88 ifTrue: [
            recoveredBlock4Block15Block38Block62Stack1 := (recoveredBlock4Block15Block38Block62Stack1) at: (recoveredBlock4Block15Block38Block62Stack2) ifAbsent: (recoveredBlock4Block15Block38Block62Stack3).
            recoveredBlock4Block15Block38Block62PC := 90.
        ].
        recoveredBlock4Block15Block38Block62Step = 90 ifTrue: [
            recoveredBlock4Block15Block38Block62Stack2 := recoveredBlock4Block15Block38Block62Stack1.
            recoveredBlock4Block15Block38Block62PC := 91.
        ].
        recoveredBlock4Block15Block38Block62Step = 91 ifTrue: [
            recoveredLocal2 := recoveredBlock4Block15Block38Block62Stack2.
            recoveredBlock4Block15Block38Block62PC := 94.
        ].
        recoveredBlock4Block15Block38Block62Step = 94 ifTrue: [
            (recoveredBlock4Block15Block38Block62Stack1 == nil) ifTrue: [recoveredBlock4Block15Block38Block62PC := 361] ifFalse: [recoveredBlock4Block15Block38Block62PC := 98].
        ].
        recoveredBlock4Block15Block38Block62Step = 98 ifTrue: [
            recoveredBlock4Block15Block38Block62Stack1 := recoveredLocal4.
            recoveredBlock4Block15Block38Block62PC := 101.
        ].
        recoveredBlock4Block15Block38Block62Step = 101 ifTrue: [
            recoveredBlock4Block15Block38Block62Stack2 := recoveredLocal4.
            recoveredBlock4Block15Block38Block62PC := 104.
        ].
        recoveredBlock4Block15Block38Block62Step = 104 ifTrue: [
            recoveredBlock4Block15Block38Block62Stack2 := (recoveredBlock4Block15Block38Block62Stack2) classNamesIndex.
            recoveredBlock4Block15Block38Block62PC := 106.
        ].
        recoveredBlock4Block15Block38Block62Step = 106 ifTrue: [
            recoveredBlock4Block15Block38Block62Stack1 := (recoveredBlock4Block15Block38Block62Stack1) filePointerAt: (recoveredBlock4Block15Block38Block62Stack2).
            recoveredBlock4Block15Block38Block62PC := 108.
        ].
        recoveredBlock4Block15Block38Block62Step = 108 ifTrue: [
            recoveredBlock4Block15Block38Block62Stack1 := (recoveredBlock4Block15Block38Block62Stack1) isVoid.
            recoveredBlock4Block15Block38Block62PC := 110.
        ].
        recoveredBlock4Block15Block38Block62Step = 110 ifTrue: [
            (recoveredBlock4Block15Block38Block62Stack1) ifTrue: [recoveredBlock4Block15Block38Block62PC := 114] ifFalse: [recoveredBlock4Block15Block38Block62PC := 204].
        ].
        recoveredBlock4Block15Block38Block62Step = 114 ifTrue: [
            recoveredBlock4Block15Block38Block62Stack1 := recoveredBlock4Arg1.
            recoveredBlock4Block15Block38Block62PC := 117.
        ].
        recoveredBlock4Block15Block38Block62Step = 117 ifTrue: [
            recoveredBlock4Block15Block38Block62Stack2 := self.
            recoveredBlock4Block15Block38Block62PC := 118.
        ].
        recoveredBlock4Block15Block38Block62Step = 118 ifTrue: [
            recoveredBlock4Block15Block38Block62Stack2 := (recoveredBlock4Block15Block38Block62Stack2) registryKey.
            recoveredBlock4Block15Block38Block62PC := 120.
        ].
        recoveredBlock4Block15Block38Block62Step = 120 ifTrue: [
            recoveredBlock4Block15Block38Block62Stack3 := [:recoveredBlock4Block15Block38Block62Block120Arg1 | 
    | recoveredBlock4Block15Block38Block62Block120Value0 recoveredBlock4Block15Block38Block62Block120Value1 recoveredBlock4Block15Block38Block62Block120Value2 recoveredBlock4Block15Block38Block62Block120Value3 recoveredBlock4Block15Block38Block62Block120Value4 recoveredBlock4Block15Block38Block62Block120Value5 recoveredBlock4Block15Block38Block62Block120Value6 recoveredBlock4Block15Block38Block62Block120Value7 |
    recoveredBlock4Block15Block38Block62Block120Value0 := EmDiskDictionary.
    recoveredBlock4Block15Block38Block62Block120Value1 := recoveredBlock4Block15Block38Block62Block120Arg1.
    recoveredBlock4Block15Block38Block62Block120Value2 := recoveredBlock4Arg1.
    recoveredBlock4Block15Block38Block62Block120Value3 := (recoveredBlock4Block15Block38Block62Block120Value2) library.
    recoveredBlock4Block15Block38Block62Block120Value4 := (recoveredBlock4Block15Block38Block62Block120Value0) updating: (recoveredBlock4Block15Block38Block62Block120Value1) from: (recoveredBlock4Block15Block38Block62Block120Value3).
    recoveredBlock4Block15Block38Block62Block120Value5 := recoveredArg1.
    recoveredBlock4Block15Block38Block62Block120Value6 := [:recoveredBlock4Block15Block38Block62Block120Block138Arg1 | 
    | recoveredBlock4Block15Block38Block62Block120Block138Value0 recoveredBlock4Block15Block38Block62Block120Block138Value1 recoveredBlock4Block15Block38Block62Block120Block138Value2 recoveredBlock4Block15Block38Block62Block120Block138Value3 recoveredBlock4Block15Block38Block62Block120Block138Value4 recoveredBlock4Block15Block38Block62Block120Block138Value5 recoveredBlock4Block15Block38Block62Block120Block138Value6 recoveredBlock4Block15Block38Block62Block120Block138Value7 recoveredBlock4Block15Block38Block62Block120Block138Value8 |
    recoveredBlock4Block15Block38Block62Block120Block138Value0 := recoveredBlock4Block15Block38Block62Block120Block138Arg1.
    recoveredBlock4Block15Block38Block62Block120Block138Value1 := recoveredBlock4Arg1.
    recoveredBlock4Block15Block38Block62Block120Block138Value2 := (recoveredBlock4Block15Block38Block62Block120Block138Value1) library.
    recoveredBlock4Block15Block38Block62Block120Block138Value3 := (self) updating: (recoveredBlock4Block15Block38Block62Block120Block138Value0) from: (recoveredBlock4Block15Block38Block62Block120Block138Value2).
    recoveredLocal1 := recoveredBlock4Block15Block38Block62Block120Block138Value3.
    recoveredBlock4Block15Block38Block62Block120Block138Value4 := recoveredLocal1.
    recoveredBlock4Block15Block38Block62Block120Block138Value5 := recoveredLocal1.
    recoveredBlock4Block15Block38Block62Block120Block138Value6 := (recoveredBlock4Block15Block38Block62Block120Block138Value5) editionsIndex.
    recoveredBlock4Block15Block38Block62Block120Block138Value7 := [:recoveredBlock4Block15Block38Block62Block120Block138Block162Arg1 | 
    | recoveredBlock4Block15Block38Block62Block120Block138Block162Value0 recoveredBlock4Block15Block38Block62Block120Block138Block162Value1 recoveredBlock4Block15Block38Block62Block120Block138Block162Value2 recoveredBlock4Block15Block38Block62Block120Block138Block162Value3 recoveredBlock4Block15Block38Block62Block120Block138Block162Value4 recoveredBlock4Block15Block38Block62Block120Block138Block162Value5 recoveredBlock4Block15Block38Block62Block120Block138Block162Value6 recoveredBlock4Block15Block38Block62Block120Block138Block162Value7 |
    recoveredBlock4Block15Block38Block62Block120Block138Block162Value0 := EmEditionsDictionary.
    recoveredBlock4Block15Block38Block62Block120Block138Block162Value1 := recoveredBlock4Block15Block38Block62Block120Block138Block162Arg1.
    recoveredBlock4Block15Block38Block62Block120Block138Block162Value2 := recoveredBlock4Arg1.
    recoveredBlock4Block15Block38Block62Block120Block138Block162Value3 := (recoveredBlock4Block15Block38Block62Block120Block138Block162Value2) library.
    recoveredBlock4Block15Block38Block62Block120Block138Block162Value4 := (recoveredBlock4Block15Block38Block62Block120Block138Block162Value0) updating: (recoveredBlock4Block15Block38Block62Block120Block138Block162Value1) from: (recoveredBlock4Block15Block38Block62Block120Block138Block162Value3).
    recoveredBlock4Block15Block38Block62Block120Block138Block162Value5 := recoveredArg2.
    recoveredBlock4Block15Block38Block62Block120Block138Block162Value6 := [:recoveredBlock4Block15Block38Block62Block120Block138Block162Block180Arg1 | 
    | recoveredBlock4Block15Block38Block62Block120Block138Block162Block180Value0 |
    recoveredBlock4Block15Block38Block62Block120Block138Block162Block180Value0 := recoveredLocal2.
    recoveredBlock4Block15Block38Block62Block120Block138Block162Block180Value0
].
    recoveredBlock4Block15Block38Block62Block120Block138Block162Value7 := (recoveredBlock4Block15Block38Block62Block120Block138Block162Value4) at: (recoveredBlock4Block15Block38Block62Block120Block138Block162Value5) putPointerFrom: (recoveredBlock4Block15Block38Block62Block120Block138Block162Value6).
    recoveredBlock4Block15Block38Block62Block120Block138Block162Value7
].
    recoveredBlock4Block15Block38Block62Block120Block138Value8 := (recoveredBlock4Block15Block38Block62Block120Block138Value4) partAt: (recoveredBlock4Block15Block38Block62Block120Block138Value6) putPointerFrom: (recoveredBlock4Block15Block38Block62Block120Block138Value7).
    recoveredBlock4Block15Block38Block62Block120Block138Value8
].
    recoveredBlock4Block15Block38Block62Block120Value7 := (recoveredBlock4Block15Block38Block62Block120Value4) at: (recoveredBlock4Block15Block38Block62Block120Value5) putPointerFrom: (recoveredBlock4Block15Block38Block62Block120Value6).
    recoveredBlock4Block15Block38Block62Block120Value7
].
            recoveredBlock4Block15Block38Block62PC := 199.
        ].
        recoveredBlock4Block15Block38Block62Step = 199 ifTrue: [
            (recoveredBlock4Block15Block38Block62Stack1) at: (recoveredBlock4Block15Block38Block62Stack2) putPointerFrom: (recoveredBlock4Block15Block38Block62Stack3).
            recoveredBlock4Block15Block38Block62PC := 201.
        ].
        recoveredBlock4Block15Block38Block62Step = 201 ifTrue: [
            recoveredBlock4Block15Block38Block62PC := 361.
        ].
        recoveredBlock4Block15Block38Block62Step = 204 ifTrue: [
            recoveredBlock4Block15Block38Block62Stack1 := recoveredBlock4Arg1.
            recoveredBlock4Block15Block38Block62PC := 207.
        ].
        recoveredBlock4Block15Block38Block62Step = 207 ifTrue: [
            recoveredBlock4Block15Block38Block62Stack2 := self.
            recoveredBlock4Block15Block38Block62PC := 208.
        ].
        recoveredBlock4Block15Block38Block62Step = 208 ifTrue: [
            recoveredBlock4Block15Block38Block62Stack2 := (recoveredBlock4Block15Block38Block62Stack2) registryKey.
            recoveredBlock4Block15Block38Block62PC := 210.
        ].
        recoveredBlock4Block15Block38Block62Step = 210 ifTrue: [
            recoveredBlock4Block15Block38Block62Stack3 := [:recoveredBlock4Block15Block38Block62Block210Arg1 | 
    | recoveredBlock4Block15Block38Block62Block210Value0 recoveredBlock4Block15Block38Block62Block210Value1 recoveredBlock4Block15Block38Block62Block210Value2 recoveredBlock4Block15Block38Block62Block210Value3 recoveredBlock4Block15Block38Block62Block210Value4 recoveredBlock4Block15Block38Block62Block210Value5 recoveredBlock4Block15Block38Block62Block210Value6 recoveredBlock4Block15Block38Block62Block210Value7 |
    recoveredBlock4Block15Block38Block62Block210Value0 := EmDiskDictionary.
    recoveredBlock4Block15Block38Block62Block210Value1 := recoveredBlock4Block15Block38Block62Block210Arg1.
    recoveredBlock4Block15Block38Block62Block210Value2 := recoveredBlock4Arg1.
    recoveredBlock4Block15Block38Block62Block210Value3 := (recoveredBlock4Block15Block38Block62Block210Value2) library.
    recoveredBlock4Block15Block38Block62Block210Value4 := (recoveredBlock4Block15Block38Block62Block210Value0) updating: (recoveredBlock4Block15Block38Block62Block210Value1) from: (recoveredBlock4Block15Block38Block62Block210Value3).
    recoveredBlock4Block15Block38Block62Block210Value5 := recoveredArg1.
    recoveredBlock4Block15Block38Block62Block210Value6 := [:recoveredBlock4Block15Block38Block62Block210Block228Arg1 | 
    | recoveredBlock4Block15Block38Block62Block210Block228Stack0 recoveredBlock4Block15Block38Block62Block210Block228Stack1 recoveredBlock4Block15Block38Block62Block210Block228Stack2 recoveredBlock4Block15Block38Block62Block210Block228Stack3 recoveredBlock4Block15Block38Block62Block210Block228Stack4 recoveredBlock4Block15Block38Block62Block210Block228PC recoveredBlock4Block15Block38Block62Block210Block228Step recoveredBlock4Block15Block38Block62Block210Block228Done recoveredBlock4Block15Block38Block62Block210Block228Result |
    recoveredBlock4Block15Block38Block62Block210Block228Stack0 := self.
    recoveredBlock4Block15Block38Block62Block210Block228PC := 234.
    recoveredBlock4Block15Block38Block62Block210Block228Done := false.
    [recoveredBlock4Block15Block38Block62Block210Block228Done not] whileTrue: [
        recoveredBlock4Block15Block38Block62Block210Block228Step := recoveredBlock4Block15Block38Block62Block210Block228PC.
        recoveredBlock4Block15Block38Block62Block210Block228Step = 234 ifTrue: [
            recoveredBlock4Block15Block38Block62Block210Block228Stack1 := recoveredBlock4Block15Block38Block62Block210Block228Arg1.
            recoveredBlock4Block15Block38Block62Block210Block228PC := 235.
        ].
        recoveredBlock4Block15Block38Block62Block210Block228Step = 235 ifTrue: [
            recoveredBlock4Block15Block38Block62Block210Block228Stack1 := (recoveredBlock4Block15Block38Block62Block210Block228Stack1) isVoid.
            recoveredBlock4Block15Block38Block62Block210Block228PC := 237.
        ].
        recoveredBlock4Block15Block38Block62Block210Block228Step = 237 ifTrue: [
            (recoveredBlock4Block15Block38Block62Block210Block228Stack1) ifTrue: [recoveredBlock4Block15Block38Block62Block210Block228PC := 240] ifFalse: [recoveredBlock4Block15Block38Block62Block210Block228PC := 350].
        ].
        recoveredBlock4Block15Block38Block62Block210Block228Step = 240 ifTrue: [
            recoveredBlock4Block15Block38Block62Block210Block228Stack1 := self.
            recoveredBlock4Block15Block38Block62Block210Block228PC := 241.
        ].
        recoveredBlock4Block15Block38Block62Block210Block228Step = 241 ifTrue: [
            recoveredBlock4Block15Block38Block62Block210Block228Stack1 := (recoveredBlock4Block15Block38Block62Block210Block228Stack1) empty.
            recoveredBlock4Block15Block38Block62Block210Block228PC := 243.
        ].
        recoveredBlock4Block15Block38Block62Block210Block228Step = 243 ifTrue: [
            recoveredLocal1 := recoveredBlock4Block15Block38Block62Block210Block228Stack1.
            recoveredBlock4Block15Block38Block62Block210Block228PC := 246.
        ].
        recoveredBlock4Block15Block38Block62Block210Block228Step = 246 ifTrue: [
            recoveredBlock4Block15Block38Block62Block210Block228Stack1 := recoveredLocal4.
            recoveredBlock4Block15Block38Block62Block210Block228PC := 249.
        ].
        recoveredBlock4Block15Block38Block62Block210Block228Step = 249 ifTrue: [
            recoveredBlock4Block15Block38Block62Block210Block228Stack2 := recoveredLocal4.
            recoveredBlock4Block15Block38Block62Block210Block228PC := 252.
        ].
        recoveredBlock4Block15Block38Block62Block210Block228Step = 252 ifTrue: [
            recoveredBlock4Block15Block38Block62Block210Block228Stack2 := (recoveredBlock4Block15Block38Block62Block210Block228Stack2) classNamesIndex.
            recoveredBlock4Block15Block38Block62Block210Block228PC := 254.
        ].
        recoveredBlock4Block15Block38Block62Block210Block228Step = 254 ifTrue: [
            recoveredBlock4Block15Block38Block62Block210Block228Stack3 := [:recoveredBlock4Block15Block38Block62Block210Block228Block254Arg1 | 
    | recoveredBlock4Block15Block38Block62Block210Block228Block254Value0 recoveredBlock4Block15Block38Block62Block210Block228Block254Value1 recoveredBlock4Block15Block38Block62Block210Block228Block254Value2 recoveredBlock4Block15Block38Block62Block210Block228Block254Value3 recoveredBlock4Block15Block38Block62Block210Block228Block254Value4 recoveredBlock4Block15Block38Block62Block210Block228Block254Value5 |
    recoveredBlock4Block15Block38Block62Block210Block228Block254Value0 := recoveredLocal1.
    recoveredBlock4Block15Block38Block62Block210Block228Block254Value1 := recoveredLocal1.
    recoveredBlock4Block15Block38Block62Block210Block228Block254Value2 := (recoveredBlock4Block15Block38Block62Block210Block228Block254Value1) classNamesIndex.
    recoveredBlock4Block15Block38Block62Block210Block228Block254Value3 := recoveredBlock4Block15Block38Block62Block210Block228Block254Arg1.
    (recoveredBlock4Block15Block38Block62Block210Block228Block254Value0) at: (recoveredBlock4Block15Block38Block62Block210Block228Block254Value2) putFilePointer: (recoveredBlock4Block15Block38Block62Block210Block228Block254Value3).
    recoveredBlock4Block15Block38Block62Block210Block228Block254Value4 := EmLibraryPointer.
    recoveredBlock4Block15Block38Block62Block210Block228Block254Value5 := (recoveredBlock4Block15Block38Block62Block210Block228Block254Value4) void.
    recoveredBlock4Block15Block38Block62Block210Block228Block254Value5
].
            recoveredBlock4Block15Block38Block62Block210Block228PC := 276.
        ].
        recoveredBlock4Block15Block38Block62Block210Block228Step = 276 ifTrue: [
            (recoveredBlock4Block15Block38Block62Block210Block228Stack1) partAt: (recoveredBlock4Block15Block38Block62Block210Block228Stack2) putPointerFrom: (recoveredBlock4Block15Block38Block62Block210Block228Stack3).
            recoveredBlock4Block15Block38Block62Block210Block228PC := 278.
        ].
        recoveredBlock4Block15Block38Block62Block210Block228Step = 278 ifTrue: [
            recoveredBlock4Block15Block38Block62Block210Block228Stack1 := recoveredLocal4.
            recoveredBlock4Block15Block38Block62Block210Block228PC := 281.
        ].
        recoveredBlock4Block15Block38Block62Block210Block228Step = 281 ifTrue: [
            recoveredBlock4Block15Block38Block62Block210Block228Stack2 := recoveredLocal4.
            recoveredBlock4Block15Block38Block62Block210Block228PC := 284.
        ].
        recoveredBlock4Block15Block38Block62Block210Block228Step = 284 ifTrue: [
            recoveredBlock4Block15Block38Block62Block210Block228Stack2 := (recoveredBlock4Block15Block38Block62Block210Block228Stack2) objectStoreIndex.
            recoveredBlock4Block15Block38Block62Block210Block228PC := 286.
        ].
        recoveredBlock4Block15Block38Block62Block210Block228Step = 286 ifTrue: [
            recoveredBlock4Block15Block38Block62Block210Block228Stack3 := [:recoveredBlock4Block15Block38Block62Block210Block228Block286Arg1 | 
    | recoveredBlock4Block15Block38Block62Block210Block228Block286Value0 recoveredBlock4Block15Block38Block62Block210Block228Block286Value1 recoveredBlock4Block15Block38Block62Block210Block228Block286Value2 recoveredBlock4Block15Block38Block62Block210Block228Block286Value3 recoveredBlock4Block15Block38Block62Block210Block228Block286Value4 recoveredBlock4Block15Block38Block62Block210Block228Block286Value5 |
    recoveredBlock4Block15Block38Block62Block210Block228Block286Value0 := recoveredLocal1.
    recoveredBlock4Block15Block38Block62Block210Block228Block286Value1 := recoveredLocal1.
    recoveredBlock4Block15Block38Block62Block210Block228Block286Value2 := (recoveredBlock4Block15Block38Block62Block210Block228Block286Value1) objectStoreIndex.
    recoveredBlock4Block15Block38Block62Block210Block228Block286Value3 := recoveredBlock4Block15Block38Block62Block210Block228Block286Arg1.
    (recoveredBlock4Block15Block38Block62Block210Block228Block286Value0) at: (recoveredBlock4Block15Block38Block62Block210Block228Block286Value2) putFilePointer: (recoveredBlock4Block15Block38Block62Block210Block228Block286Value3).
    recoveredBlock4Block15Block38Block62Block210Block228Block286Value4 := EmLibraryPointer.
    recoveredBlock4Block15Block38Block62Block210Block228Block286Value5 := (recoveredBlock4Block15Block38Block62Block210Block228Block286Value4) void.
    recoveredBlock4Block15Block38Block62Block210Block228Block286Value5
].
            recoveredBlock4Block15Block38Block62Block210Block228PC := 308.
        ].
        recoveredBlock4Block15Block38Block62Block210Block228Step = 308 ifTrue: [
            (recoveredBlock4Block15Block38Block62Block210Block228Stack1) partAt: (recoveredBlock4Block15Block38Block62Block210Block228Stack2) putPointerFrom: (recoveredBlock4Block15Block38Block62Block210Block228Stack3).
            recoveredBlock4Block15Block38Block62Block210Block228PC := 310.
        ].
        recoveredBlock4Block15Block38Block62Block210Block228Step = 310 ifTrue: [
            recoveredBlock4Block15Block38Block62Block210Block228Stack1 := recoveredLocal1.
            recoveredBlock4Block15Block38Block62Block210Block228PC := 313.
        ].
        recoveredBlock4Block15Block38Block62Block210Block228Step = 313 ifTrue: [
            recoveredBlock4Block15Block38Block62Block210Block228Stack2 := recoveredLocal1.
            recoveredBlock4Block15Block38Block62Block210Block228PC := 316.
        ].
        recoveredBlock4Block15Block38Block62Block210Block228Step = 316 ifTrue: [
            recoveredBlock4Block15Block38Block62Block210Block228Stack2 := (recoveredBlock4Block15Block38Block62Block210Block228Stack2) editionsIndex.
            recoveredBlock4Block15Block38Block62Block210Block228PC := 318.
        ].
        recoveredBlock4Block15Block38Block62Block210Block228Step = 318 ifTrue: [
            recoveredBlock4Block15Block38Block62Block210Block228Stack3 := [:recoveredBlock4Block15Block38Block62Block210Block228Block318Arg1 | 
    | recoveredBlock4Block15Block38Block62Block210Block228Block318Value0 recoveredBlock4Block15Block38Block62Block210Block228Block318Value1 recoveredBlock4Block15Block38Block62Block210Block228Block318Value2 recoveredBlock4Block15Block38Block62Block210Block228Block318Value3 recoveredBlock4Block15Block38Block62Block210Block228Block318Value4 |
    recoveredBlock4Block15Block38Block62Block210Block228Block318Value0 := EmEditionsDictionary.
    recoveredBlock4Block15Block38Block62Block210Block228Block318Value1 := (recoveredBlock4Block15Block38Block62Block210Block228Block318Value0) empty.
    recoveredBlock4Block15Block38Block62Block210Block228Block318Value2 := recoveredArg2.
    recoveredBlock4Block15Block38Block62Block210Block228Block318Value3 := [:recoveredBlock4Block15Block38Block62Block210Block228Block318Block331Arg1 | 
    | recoveredBlock4Block15Block38Block62Block210Block228Block318Block331Value0 |
    recoveredBlock4Block15Block38Block62Block210Block228Block318Block331Value0 := recoveredLocal2.
    recoveredBlock4Block15Block38Block62Block210Block228Block318Block331Value0
].
    recoveredBlock4Block15Block38Block62Block210Block228Block318Value4 := (recoveredBlock4Block15Block38Block62Block210Block228Block318Value1) at: (recoveredBlock4Block15Block38Block62Block210Block228Block318Value2) putPointerFrom: (recoveredBlock4Block15Block38Block62Block210Block228Block318Value3).
    recoveredBlock4Block15Block38Block62Block210Block228Block318Value4
].
            recoveredBlock4Block15Block38Block62Block210Block228PC := 345.
        ].
        recoveredBlock4Block15Block38Block62Block210Block228Step = 345 ifTrue: [
            recoveredBlock4Block15Block38Block62Block210Block228Stack1 := (recoveredBlock4Block15Block38Block62Block210Block228Stack1) partAt: (recoveredBlock4Block15Block38Block62Block210Block228Stack2) putPointerFrom: (recoveredBlock4Block15Block38Block62Block210Block228Stack3).
            recoveredBlock4Block15Block38Block62Block210Block228PC := 347.
        ].
        recoveredBlock4Block15Block38Block62Block210Block228Step = 347 ifTrue: [
            recoveredBlock4Block15Block38Block62Block210Block228PC := 355.
        ].
        recoveredBlock4Block15Block38Block62Block210Block228Step = 350 ifTrue: [
            recoveredBlock4Block15Block38Block62Block210Block228Stack1 := nil.
            recoveredBlock4Block15Block38Block62Block210Block228PC := 351.
        ].
        recoveredBlock4Block15Block38Block62Block210Block228Step = 351 ifTrue: [
            recoveredBlock4Block15Block38Block62Block210Block228Stack2 := recoveredBlock4Block15Block38Block62Block210Block228Stack1.
            recoveredBlock4Block15Block38Block62Block210Block228PC := 352.
        ].
        recoveredBlock4Block15Block38Block62Block210Block228Step = 352 ifTrue: [
            recoveredLocal2 := recoveredBlock4Block15Block38Block62Block210Block228Stack2.
            recoveredBlock4Block15Block38Block62Block210Block228PC := 355.
        ].
        recoveredBlock4Block15Block38Block62Block210Block228Step = 355 ifTrue: [
            recoveredBlock4Block15Block38Block62Block210Block228Result := recoveredBlock4Block15Block38Block62Block210Block228Stack1.
            recoveredBlock4Block15Block38Block62Block210Block228Done := true.
        ].
    ].
    recoveredBlock4Block15Block38Block62Block210Block228Result
].
    recoveredBlock4Block15Block38Block62Block210Value7 := (recoveredBlock4Block15Block38Block62Block210Value4) at: (recoveredBlock4Block15Block38Block62Block210Value5) putPointerFrom: (recoveredBlock4Block15Block38Block62Block210Value6).
    recoveredBlock4Block15Block38Block62Block210Value7
].
            recoveredBlock4Block15Block38Block62PC := 359.
        ].
        recoveredBlock4Block15Block38Block62Step = 359 ifTrue: [
            (recoveredBlock4Block15Block38Block62Stack1) at: (recoveredBlock4Block15Block38Block62Stack2) putPointerFrom: (recoveredBlock4Block15Block38Block62Stack3).
            recoveredBlock4Block15Block38Block62PC := 361.
        ].
        recoveredBlock4Block15Block38Block62Step = 361 ifTrue: [
            recoveredBlock4Block15Block38Block62Stack1 := nil.
            recoveredBlock4Block15Block38Block62PC := 362.
        ].
        recoveredBlock4Block15Block38Block62Step = 362 ifTrue: [
            recoveredBlock4Block15Block38Block62Stack2 := recoveredLocal2.
            recoveredBlock4Block15Block38Block62PC := 365.
        ].
        recoveredBlock4Block15Block38Block62Step = 365 ifTrue: [
            (recoveredBlock4Block15Block38Block62Stack2 == nil) ifTrue: [recoveredBlock4Block15Block38Block62PC := 377] ifFalse: [recoveredBlock4Block15Block38Block62PC := 368].
        ].
        recoveredBlock4Block15Block38Block62Step = 368 ifTrue: [
            recoveredBlock4Block15Block38Block62PC := 369.
        ].
        recoveredBlock4Block15Block38Block62Step = 369 ifTrue: [
            recoveredBlock4Block15Block38Block62Stack1 := recoveredLocal3.
            recoveredBlock4Block15Block38Block62PC := 372.
        ].
        recoveredBlock4Block15Block38Block62Step = 372 ifTrue: [
            recoveredBlock4Block15Block38Block62Stack2 := recoveredArg2.
            recoveredBlock4Block15Block38Block62PC := 375.
        ].
        recoveredBlock4Block15Block38Block62Step = 375 ifTrue: [
            recoveredBlock4Block15Block38Block62Stack1 := (recoveredBlock4Block15Block38Block62Stack1) removeKey: (recoveredBlock4Block15Block38Block62Stack2).
            recoveredBlock4Block15Block38Block62PC := 377.
        ].
        recoveredBlock4Block15Block38Block62Step = 377 ifTrue: [
            recoveredBlock4Block15Block38Block62Result := recoveredBlock4Block15Block38Block62Stack1.
            recoveredBlock4Block15Block38Block62Done := true.
        ].
    ].
    recoveredBlock4Block15Block38Block62Result
].
    recoveredBlock4Block15Block38Value8 := (recoveredBlock4Block15Block38Value4) partAt: (recoveredBlock4Block15Block38Value6) putPointerFrom: (recoveredBlock4Block15Block38Value7).
    recoveredBlock4Block15Block38Value8
].
            recoveredBlock4Block15PC := 381.
        ].
        recoveredBlock4Block15Step = 381 ifTrue: [
            (recoveredBlock4Block15Stack1) at: (recoveredBlock4Block15Stack2) putPointerFrom: (recoveredBlock4Block15Stack3).
            recoveredBlock4Block15PC := 383.
        ].
        recoveredBlock4Block15Step = 383 ifTrue: [
            recoveredBlock4Block15Stack1 := nil.
            recoveredBlock4Block15PC := 384.
        ].
        recoveredBlock4Block15Step = 384 ifTrue: [
            recoveredBlock4Block15Stack2 := recoveredLocal2.
            recoveredBlock4Block15PC := 387.
        ].
        recoveredBlock4Block15Step = 387 ifTrue: [
            (recoveredBlock4Block15Stack2 == nil) ifTrue: [recoveredBlock4Block15PC := 407] ifFalse: [recoveredBlock4Block15PC := 390].
        ].
        recoveredBlock4Block15Step = 390 ifTrue: [
            recoveredBlock4Block15Stack2 := recoveredLocal3.
            recoveredBlock4Block15PC := 393.
        ].
        recoveredBlock4Block15Step = 393 ifTrue: [
            recoveredBlock4Block15Stack2 := (recoveredBlock4Block15Stack2) isEmpty.
            recoveredBlock4Block15PC := 395.
        ].
        recoveredBlock4Block15Step = 395 ifTrue: [
            (recoveredBlock4Block15Stack2) ifTrue: [recoveredBlock4Block15PC := 398] ifFalse: [recoveredBlock4Block15PC := 407].
        ].
        recoveredBlock4Block15Step = 398 ifTrue: [
            recoveredBlock4Block15PC := 399.
        ].
        recoveredBlock4Block15Step = 399 ifTrue: [
            recoveredBlock4Block15Stack1 := recoveredLocal5.
            recoveredBlock4Block15PC := 402.
        ].
        recoveredBlock4Block15Step = 402 ifTrue: [
            recoveredBlock4Block15Stack2 := recoveredArg1.
            recoveredBlock4Block15PC := 405.
        ].
        recoveredBlock4Block15Step = 405 ifTrue: [
            recoveredBlock4Block15Stack1 := (recoveredBlock4Block15Stack1) removeKey: (recoveredBlock4Block15Stack2).
            recoveredBlock4Block15PC := 407.
        ].
        recoveredBlock4Block15Step = 407 ifTrue: [
            recoveredBlock4Block15Result := recoveredBlock4Block15Stack1.
            recoveredBlock4Block15Done := true.
        ].
    ].
    recoveredBlock4Block15Result
].
    recoveredBlock4Value3 := (recoveredBlock4Value0) at: (recoveredBlock4Value1) putPointerFrom: (recoveredBlock4Value2).
    recoveredBlock4Value3
].
            recoveredPC := 411.
        ].
        recoveredStep = 411 ifTrue: [
            (recoveredStack0) updateRegistryUsing: (recoveredStack1).
            recoveredPC := 413.
        ].
        recoveredStep = 413 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 416.
        ].
        recoveredStep = 416 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 422] ifFalse: [recoveredPC := 420].
        ].
        recoveredStep = 420 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 421.
        ].
        recoveredStep = 421 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 422 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 423.
        ].
        recoveredStep = 423 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

