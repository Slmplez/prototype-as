"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20065848; bytecode file offset 0x962104"
!ASAP2EtkIFData methodsFor: 'recovered'!
sourceBasic
    | recoveredValue0 |
    recoveredValue0 := super source.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20086998; bytecode file offset 0x983274"
!ASAP2EtkIFData methodsFor: 'recovered'!
getIFData: recoveredArg1 keyWords: recoveredArg2
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) getFrom: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x20125a3c; bytecode file offset 0xa22600"
!ASAP2EtkIFData methodsFor: 'recovered'!
getTpBlob: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := ASAP2EtkTPBlob.
    recoveredValue1 := (recoveredValue0) create.
    recoveredValue2 := recoveredValue1.
    recoveredLocal1 := recoveredValue2.
    (self) tpBlob: (recoveredValue1).
    recoveredValue3 := recoveredLocal1.
    recoveredValue4 := recoveredArg1.
    (recoveredValue3) getFrom: (recoveredValue4).
    ^self
! !

"ASDBase.ic method 0x2018a3e4; bytecode file offset 0xa86cf0"
!ASAP2EtkIFData methodsFor: 'recovered'!
getSource: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := ASAP2QPSource.
    recoveredValue1 := ASAP2EtkC4QPBlob.
    (recoveredValue0) QPBlobClass: (recoveredValue1).
    recoveredValue2 := ASAP2QPSource.
    recoveredValue3 := (recoveredValue2) create.
    recoveredLocal1 := recoveredValue3.
    recoveredValue4 := recoveredLocal1.
    recoveredValue5 := recoveredArg1.
    (recoveredValue4) getFrom: (recoveredValue5).
    recoveredValue6 := recoveredLocal1.
    (self) addSource: (recoveredValue6).
    ^self
! !

"ASDBase.ic method 0x20362b08; bytecode file offset 0xc5f3e8"
!ASAP2EtkIFData methodsFor: 'recovered'!
getKpBlob: recoveredArg1
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
            super getKpBlob: (recoveredStack1).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := (recoveredStack0) kpBlob.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) isValid.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 65].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := (recoveredStack0) tpBlob.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 26] ifFalse: [recoveredPC := 22].
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredPC := 31.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := (recoveredStack0) tpBlob.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack0 := (recoveredStack0) interfaceSpeed.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := 1.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 38] ifFalse: [recoveredPC := 65].
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack0 := (recoveredStack0) qpBlob.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack0 := (recoveredStack0) version.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack1 := 257.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack0 := (recoveredStack0) >= (recoveredStack1).
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 50] ifFalse: [recoveredPC := 65].
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack0 := (recoveredStack0) kpBlob.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack0 := (recoveredStack0) noOfRaster.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack1 := 8.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack0 := (recoveredStack0) > (recoveredStack1).
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 60] ifFalse: [recoveredPC := 65].
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack1 := SCASAP2TooManyRaster.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            (recoveredStack0) monitorWarning: (recoveredStack1).
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20419a24; bytecode file offset 0xd1630c"
!ASAP2EtkIFData methodsFor: 'recovered'!
addSource: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) sourceBasic.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) size.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := 16.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := (recoveredStack0) >= (recoveredStack1).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 90].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) source.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := (recoveredStack0) first.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) qpBlob.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := (recoveredStack0) assignedApplicationEnums.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := [:recoveredBlock19Arg1 :recoveredBlock19Arg2 | 
    | recoveredBlock19Stack0 recoveredBlock19Stack1 recoveredBlock19Stack2 recoveredBlock19Stack3 recoveredBlock19Stack4 recoveredBlock19PC recoveredBlock19Step recoveredBlock19Done recoveredBlock19Result |
    recoveredBlock19Stack0 := self.
    recoveredBlock19PC := 26.
    recoveredBlock19Done := false.
    [recoveredBlock19Done not] whileTrue: [
        recoveredBlock19Step := recoveredBlock19PC.
        recoveredBlock19Step = 26 ifTrue: [
            recoveredBlock19Stack1 := nil.
            recoveredBlock19PC := 27.
        ].
        recoveredBlock19Step = 27 ifTrue: [
            recoveredBlock19Stack2 := self.
            recoveredBlock19PC := 28.
        ].
        recoveredBlock19Step = 28 ifTrue: [
            recoveredBlock19Stack2 := (recoveredBlock19Stack2) source.
            recoveredBlock19PC := 29.
        ].
        recoveredBlock19Step = 29 ifTrue: [
            recoveredBlock19Stack3 := [:recoveredBlock19Block29Arg1 | 
    | recoveredBlock19Block29Value0 recoveredBlock19Block29Value1 recoveredBlock19Block29Value2 recoveredBlock19Block29Value3 recoveredBlock19Block29Value4 |
    recoveredBlock19Block29Value0 := recoveredBlock19Block29Arg1.
    recoveredBlock19Block29Value1 := (recoveredBlock19Block29Value0) qpBlob.
    recoveredBlock19Block29Value2 := (recoveredBlock19Block29Value1) assignedApplication.
    recoveredBlock19Block29Value3 := recoveredBlock19Arg2.
    recoveredBlock19Block29Value4 := (recoveredBlock19Block29Value2) = (recoveredBlock19Block29Value3).
    recoveredBlock19Block29Value4
].
            recoveredBlock19PC := 46.
        ].
        recoveredBlock19Step = 46 ifTrue: [
            recoveredBlock19Stack2 := (recoveredBlock19Stack2) select: (recoveredBlock19Stack3).
            recoveredBlock19PC := 48.
        ].
        recoveredBlock19Step = 48 ifTrue: [
            recoveredBlock19Stack2 := (recoveredBlock19Stack2) size.
            recoveredBlock19PC := 49.
        ].
        recoveredBlock19Step = 49 ifTrue: [
            recoveredBlock19Stack3 := recoveredBlock19Stack2.
            recoveredBlock19PC := 50.
        ].
        recoveredBlock19Step = 50 ifTrue: [
            recoveredLocal1 := recoveredBlock19Stack3.
            recoveredBlock19PC := 53.
        ].
        recoveredBlock19Step = 53 ifTrue: [
            recoveredBlock19Stack3 := 16.
            recoveredBlock19PC := 55.
        ].
        recoveredBlock19Step = 55 ifTrue: [
            recoveredBlock19Stack2 := (recoveredBlock19Stack2) >= (recoveredBlock19Stack3).
            recoveredBlock19PC := 56.
        ].
        recoveredBlock19Step = 56 ifTrue: [
            (recoveredBlock19Stack2) ifTrue: [recoveredBlock19PC := 60] ifFalse: [recoveredBlock19PC := 83].
        ].
        recoveredBlock19Step = 60 ifTrue: [
            recoveredBlock19PC := 61.
        ].
        recoveredBlock19Step = 61 ifTrue: [
            recoveredBlock19Stack1 := nil.
            recoveredBlock19PC := 62.
        ].
        recoveredBlock19Step = 62 ifTrue: [
            recoveredBlock19Stack2 := recoveredArg1.
            recoveredBlock19PC := 65.
        ].
        recoveredBlock19Step = 65 ifTrue: [
            recoveredBlock19Stack2 := (recoveredBlock19Stack2) qpBlob.
            recoveredBlock19PC := 67.
        ].
        recoveredBlock19Step = 67 ifTrue: [
            recoveredBlock19Stack2 := (recoveredBlock19Stack2) assignedApplication.
            recoveredBlock19PC := 69.
        ].
        recoveredBlock19Step = 69 ifTrue: [
            recoveredBlock19Stack3 := recoveredBlock19Arg2.
            recoveredBlock19PC := 72.
        ].
        recoveredBlock19Step = 72 ifTrue: [
            recoveredBlock19Stack2 := (recoveredBlock19Stack2) = (recoveredBlock19Stack3).
            recoveredBlock19PC := 73.
        ].
        recoveredBlock19Step = 73 ifTrue: [
            (recoveredBlock19Stack2) ifTrue: [recoveredBlock19PC := 76] ifFalse: [recoveredBlock19PC := 83].
        ].
        recoveredBlock19Step = 76 ifTrue: [
            recoveredBlock19PC := 77.
        ].
        recoveredBlock19Step = 77 ifTrue: [
            recoveredBlock19Stack1 := self.
            recoveredBlock19PC := 78.
        ].
        recoveredBlock19Step = 78 ifTrue: [
            recoveredBlock19Stack2 := SCASAP2TooManyRaster.
            recoveredBlock19PC := 80.
        ].
        recoveredBlock19Step = 80 ifTrue: [
            recoveredBlock19Stack1 := (recoveredBlock19Stack1) monitorWarning: (recoveredBlock19Stack2).
            recoveredBlock19PC := 82.
        ].
        recoveredBlock19Step = 82 ifTrue: [
            ^recoveredBlock19Stack1
        ].
        recoveredBlock19Step = 83 ifTrue: [
            recoveredBlock19Result := recoveredBlock19Stack1.
            recoveredBlock19Done := true.
        ].
    ].
    recoveredBlock19Result
].
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            (recoveredStack0) keysAndValuesDo: (recoveredStack1).
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            super addSource: (recoveredStack1).
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2048dcd4; bytecode file offset 0xd8a5cc"
!ASAP2EtkIFData methodsFor: 'recovered'!
source
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) sourceBasic.
    recoveredValue1 := (recoveredValue0) firstOrNil.
    recoveredValue2 := [:recoveredBlock6Arg1 | 
    | recoveredBlock6Stack0 recoveredBlock6Stack1 recoveredBlock6Stack2 recoveredBlock6Stack3 recoveredBlock6Stack4 recoveredBlock6Stack5 recoveredBlock6PC recoveredBlock6Step recoveredBlock6Done recoveredBlock6Result |
    recoveredBlock6Stack0 := self.
    recoveredBlock6PC := 12.
    recoveredBlock6Done := false.
    [recoveredBlock6Done not] whileTrue: [
        recoveredBlock6Step := recoveredBlock6PC.
        recoveredBlock6Step = 12 ifTrue: [
            recoveredBlock6Stack1 := recoveredBlock6Arg1.
            recoveredBlock6PC := 13.
        ].
        recoveredBlock6Step = 13 ifTrue: [
            recoveredBlock6Stack1 := (recoveredBlock6Stack1) qpBlob.
            recoveredBlock6PC := 14.
        ].
        recoveredBlock6Step = 14 ifTrue: [
            recoveredBlock6Stack1 := (recoveredBlock6Stack1) isString.
            recoveredBlock6PC := 15.
        ].
        recoveredBlock6Step = 15 ifTrue: [
            (recoveredBlock6Stack1) ifTrue: [recoveredBlock6PC := 18] ifFalse: [recoveredBlock6PC := 24].
        ].
        recoveredBlock6Step = 18 ifTrue: [
            recoveredBlock6Stack1 := self.
            recoveredBlock6PC := 19.
        ].
        recoveredBlock6Step = 19 ifTrue: [
            recoveredBlock6Stack1 := super source.
            recoveredBlock6PC := 23.
        ].
        recoveredBlock6Step = 23 ifTrue: [
            ^recoveredBlock6Stack1
        ].
        recoveredBlock6Step = 24 ifTrue: [
            recoveredBlock6Stack1 := recoveredBlock6Arg1.
            recoveredBlock6PC := 25.
        ].
        recoveredBlock6Step = 25 ifTrue: [
            recoveredBlock6Stack1 := (recoveredBlock6Stack1) qpBlob.
            recoveredBlock6PC := 26.
        ].
        recoveredBlock6Step = 26 ifTrue: [
            recoveredBlock6Stack1 := (recoveredBlock6Stack1) assignedApplicationEnums.
            recoveredBlock6PC := 28.
        ].
        recoveredBlock6Step = 28 ifTrue: [
            recoveredBlock6Stack2 := 'MEASUREMENT'.
            recoveredBlock6PC := 30.
        ].
        recoveredBlock6Step = 30 ifTrue: [
            recoveredBlock6Stack3 := [
    | recoveredBlock6Block30Value0 |
    recoveredBlock6Block30Value0 := super source.
    recoveredBlock6Block30Value0
].
            recoveredBlock6PC := 41.
        ].
        recoveredBlock6Step = 41 ifTrue: [
            recoveredBlock6Stack4 := [:recoveredBlock6Block41Arg1 | 
    | recoveredBlock6Block41Value0 recoveredBlock6Block41Value1 recoveredBlock6Block41Value2 recoveredBlock6Block41Value3 recoveredBlock6Block41Value4 |
    recoveredBlock6Block41Value0 := (self) sourceBasic.
    recoveredBlock6Block41Value1 := [:recoveredBlock6Block41Block49Arg1 | 
    | recoveredBlock6Block41Block49Stack0 recoveredBlock6Block41Block49Stack1 recoveredBlock6Block41Block49Stack2 recoveredBlock6Block41Block49Stack3 recoveredBlock6Block41Block49Stack4 recoveredBlock6Block41Block49PC recoveredBlock6Block41Block49Step recoveredBlock6Block41Block49Done recoveredBlock6Block41Block49Result |
    recoveredBlock6Block41Block49Stack0 := self.
    recoveredBlock6Block41Block49PC := 56.
    recoveredBlock6Block41Block49Done := false.
    [recoveredBlock6Block41Block49Done not] whileTrue: [
        recoveredBlock6Block41Block49Step := recoveredBlock6Block41Block49PC.
        recoveredBlock6Block41Block49Step = 56 ifTrue: [
            recoveredBlock6Block41Block49Stack1 := nil.
            recoveredBlock6Block41Block49PC := 57.
        ].
        recoveredBlock6Block41Block49Step = 57 ifTrue: [
            recoveredBlock6Block41Block49Stack2 := recoveredBlock6Block41Block49Arg1.
            recoveredBlock6Block41Block49PC := 58.
        ].
        recoveredBlock6Block41Block49Step = 58 ifTrue: [
            recoveredBlock6Block41Block49Stack2 := (recoveredBlock6Block41Block49Stack2) qpBlob.
            recoveredBlock6Block41Block49PC := 59.
        ].
        recoveredBlock6Block41Block49Step = 59 ifTrue: [
            recoveredBlock6Block41Block49Stack2 := (recoveredBlock6Block41Block49Stack2) isString.
            recoveredBlock6Block41Block49PC := 60.
        ].
        recoveredBlock6Block41Block49Step = 60 ifTrue: [
            (recoveredBlock6Block41Block49Stack2) ifTrue: [recoveredBlock6Block41Block49PC := 64] ifFalse: [recoveredBlock6Block41Block49PC := 78].
        ].
        recoveredBlock6Block41Block49Step = 64 ifTrue: [
            recoveredBlock6Block41Block49PC := 65.
        ].
        recoveredBlock6Block41Block49Step = 65 ifTrue: [
            recoveredBlock6Block41Block49Stack1 := self.
            recoveredBlock6Block41Block49PC := 66.
        ].
        recoveredBlock6Block41Block49Step = 66 ifTrue: [
            recoveredBlock6Block41Block49Stack2 := SCASAP2InvalidEtkQpBlobSection.
            recoveredBlock6Block41Block49PC := 68.
        ].
        recoveredBlock6Block41Block49Step = 68 ifTrue: [
            recoveredBlock6Block41Block49Stack3 := recoveredBlock6Block41Block49Arg1.
            recoveredBlock6Block41Block49PC := 69.
        ].
        recoveredBlock6Block41Block49Step = 69 ifTrue: [
            recoveredBlock6Block41Block49Stack3 := (recoveredBlock6Block41Block49Stack3) name.
            recoveredBlock6Block41Block49PC := 71.
        ].
        recoveredBlock6Block41Block49Step = 71 ifTrue: [
            recoveredBlock6Block41Block49Stack2 := (recoveredBlock6Block41Block49Stack2) bindWith: (recoveredBlock6Block41Block49Stack3).
            recoveredBlock6Block41Block49PC := 73.
        ].
        recoveredBlock6Block41Block49Step = 73 ifTrue: [
            recoveredBlock6Block41Block49Stack3 := self.
            recoveredBlock6Block41Block49PC := 74.
        ].
        recoveredBlock6Block41Block49Step = 74 ifTrue: [
            recoveredBlock6Block41Block49Stack3 := (recoveredBlock6Block41Block49Stack3) name.
            recoveredBlock6Block41Block49PC := 76.
        ].
        recoveredBlock6Block41Block49Step = 76 ifTrue: [
            recoveredBlock6Block41Block49Stack1 := (recoveredBlock6Block41Block49Stack1) logWarning: (recoveredBlock6Block41Block49Stack2) word: (recoveredBlock6Block41Block49Stack3).
            recoveredBlock6Block41Block49PC := 78.
        ].
        recoveredBlock6Block41Block49Step = 78 ifTrue: [
            recoveredBlock6Block41Block49Result := recoveredBlock6Block41Block49Stack1.
            recoveredBlock6Block41Block49Done := true.
        ].
    ].
    recoveredBlock6Block41Block49Result
].
    (recoveredBlock6Block41Value0) do: (recoveredBlock6Block41Value1).
    recoveredBlock6Block41Value2 := (self) sourceBasic.
    recoveredBlock6Block41Value3 := [:recoveredBlock6Block41Block83Arg1 | 
    | recoveredBlock6Block41Block83Stack0 recoveredBlock6Block41Block83Stack1 recoveredBlock6Block41Block83Stack2 recoveredBlock6Block41Block83Stack3 recoveredBlock6Block41Block83PC recoveredBlock6Block41Block83Step recoveredBlock6Block41Block83Done recoveredBlock6Block41Block83Result |
    recoveredBlock6Block41Block83Stack0 := nil.
    recoveredBlock6Block41Block83PC := 90.
    recoveredBlock6Block41Block83Done := false.
    [recoveredBlock6Block41Block83Done not] whileTrue: [
        recoveredBlock6Block41Block83Step := recoveredBlock6Block41Block83PC.
        recoveredBlock6Block41Block83Step = 90 ifTrue: [
            recoveredBlock6Block41Block83Stack1 := false.
            recoveredBlock6Block41Block83PC := 91.
        ].
        recoveredBlock6Block41Block83Step = 91 ifTrue: [
            recoveredBlock6Block41Block83Stack2 := recoveredBlock6Block41Block83Arg1.
            recoveredBlock6Block41Block83PC := 92.
        ].
        recoveredBlock6Block41Block83Step = 92 ifTrue: [
            recoveredBlock6Block41Block83Stack2 := (recoveredBlock6Block41Block83Stack2) qpBlob.
            recoveredBlock6Block41Block83PC := 93.
        ].
        recoveredBlock6Block41Block83Step = 93 ifTrue: [
            recoveredBlock6Block41Block83Stack2 := (recoveredBlock6Block41Block83Stack2) isString.
            recoveredBlock6Block41Block83PC := 94.
        ].
        recoveredBlock6Block41Block83Step = 94 ifTrue: [
            (recoveredBlock6Block41Block83Stack2) ifTrue: [recoveredBlock6Block41Block83PC := 116] ifFalse: [recoveredBlock6Block41Block83PC := 98].
        ].
        recoveredBlock6Block41Block83Step = 98 ifTrue: [
            recoveredBlock6Block41Block83PC := 99.
        ].
        recoveredBlock6Block41Block83Step = 99 ifTrue: [
            recoveredBlock6Block41Block83Stack1 := recoveredBlock6Block41Block83Arg1.
            recoveredBlock6Block41Block83PC := 100.
        ].
        recoveredBlock6Block41Block83Step = 100 ifTrue: [
            recoveredBlock6Block41Block83Stack1 := (recoveredBlock6Block41Block83Stack1) qpBlob.
            recoveredBlock6Block41Block83PC := 101.
        ].
        recoveredBlock6Block41Block83Step = 101 ifTrue: [
            (recoveredBlock6Block41Block83Stack1 ~~ nil) ifTrue: [recoveredBlock6Block41Block83PC := 108] ifFalse: [recoveredBlock6Block41Block83PC := 104].
        ].
        recoveredBlock6Block41Block83Step = 104 ifTrue: [
            recoveredBlock6Block41Block83Stack1 := false.
            recoveredBlock6Block41Block83PC := 105.
        ].
        recoveredBlock6Block41Block83Step = 105 ifTrue: [
            recoveredBlock6Block41Block83PC := 116.
        ].
        recoveredBlock6Block41Block83Step = 108 ifTrue: [
            recoveredBlock6Block41Block83Stack1 := recoveredBlock6Block41Block83Arg1.
            recoveredBlock6Block41Block83PC := 109.
        ].
        recoveredBlock6Block41Block83Step = 109 ifTrue: [
            recoveredBlock6Block41Block83Stack1 := (recoveredBlock6Block41Block83Stack1) qpBlob.
            recoveredBlock6Block41Block83PC := 110.
        ].
        recoveredBlock6Block41Block83Step = 110 ifTrue: [
            recoveredBlock6Block41Block83Stack1 := (recoveredBlock6Block41Block83Stack1) assignedApplication.
            recoveredBlock6Block41Block83PC := 112.
        ].
        recoveredBlock6Block41Block83Step = 112 ifTrue: [
            recoveredBlock6Block41Block83Stack2 := recoveredBlock6Block41Arg1.
            recoveredBlock6Block41Block83PC := 115.
        ].
        recoveredBlock6Block41Block83Step = 115 ifTrue: [
            recoveredBlock6Block41Block83Stack1 := (recoveredBlock6Block41Block83Stack1) = (recoveredBlock6Block41Block83Stack2).
            recoveredBlock6Block41Block83PC := 116.
        ].
        recoveredBlock6Block41Block83Step = 116 ifTrue: [
            recoveredBlock6Block41Block83Result := recoveredBlock6Block41Block83Stack1.
            recoveredBlock6Block41Block83Done := true.
        ].
    ].
    recoveredBlock6Block41Block83Result
].
    recoveredBlock6Block41Value4 := (recoveredBlock6Block41Value2) select: (recoveredBlock6Block41Value3).
    recoveredBlock6Block41Value4
].
            recoveredBlock6PC := 120.
        ].
        recoveredBlock6Step = 120 ifTrue: [
            recoveredBlock6Stack1 := (recoveredBlock6Stack1) at: (recoveredBlock6Stack2) ifAbsent: (recoveredBlock6Stack3) ifPresent: (recoveredBlock6Stack4).
            recoveredBlock6PC := 123.
        ].
        recoveredBlock6Step = 123 ifTrue: [
            ^recoveredBlock6Stack1
        ].
    ].
    recoveredBlock6Result
].
    (recoveredValue1) ifNotNil: (recoveredValue2).
    recoveredValue3 := super source.
    ^recoveredValue3
! !

