"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20065f24; bytecode file offset 0x963428"
!ItemFileAccess methodsFor: 'recovered'!
elementAccessors
    | recoveredValue0 |
    recoveredValue0 := elementAccessors.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200670cc; bytecode file offset 0x9646f8"
!ItemFileAccess methodsFor: 'recovered'!
nameTable
    | recoveredValue0 |
    recoveredValue0 := nameTable.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20068bb4; bytecode file offset 0x965b90"
!ItemFileAccess methodsFor: 'recovered'!
recordFormat
    | recoveredValue0 |
    recoveredValue0 := recordFormat.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200698b8; bytecode file offset 0x966bdc"
!ItemFileAccess methodsFor: 'recovered'!
offsetInFile
    | recoveredValue0 |
    recoveredValue0 := offsetInFile.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006a4c4; bytecode file offset 0x967a18"
!ItemFileAccess methodsFor: 'recovered'!
currentRecordNumber
    | recoveredValue0 |
    recoveredValue0 := currentRecordNumber.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006b848; bytecode file offset 0x96873c"
!ItemFileAccess methodsFor: 'recovered'!
recordBuffer
    | recoveredValue0 |
    recoveredValue0 := recordBuffer.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200be7a4; bytecode file offset 0x9bb178"
!ItemFileAccess methodsFor: 'recovered'!
elementAccessors: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    elementAccessors := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200bed00; bytecode file offset 0x9bc0b4"
!ItemFileAccess methodsFor: 'recovered'!
nameTable: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    nameTable := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c0684; bytecode file offset 0x9bd228"
!ItemFileAccess methodsFor: 'recovered'!
recordFormat: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    recordFormat := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c0fa0; bytecode file offset 0x9bdf14"
!ItemFileAccess methodsFor: 'recovered'!
offsetInFile: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    offsetInFile := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c21dc; bytecode file offset 0x9beac8"
!ItemFileAccess methodsFor: 'recovered'!
currentRecordNumber: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    currentRecordNumber := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c2b00; bytecode file offset 0x9bf474"
!ItemFileAccess methodsFor: 'recovered'!
recordBuffer: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    recordBuffer := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x2014cc3c; bytecode file offset 0xa494fc"
!ItemFileAccess methodsFor: 'recovered'!
createNameTableFromElementAccessors
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := elementAccessors.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := [:block280cca98Arg1 | 
    | block280cca98Value0 block280cca98Value1 |
    block280cca98Value0 := block280cca98Arg1.
    block280cca98Value1 := (block280cca98Value0) name.
    block280cca98Value1
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
            recoveredStack2 := recoveredStack1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            nameTable := recoveredStack2.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x20180a54; bytecode file offset 0xa7d308"
!ItemFileAccess methodsFor: 'recovered'!
initialize
    elementAccessors := nil.
    nameTable := nil.
    recordFormat := nil.
    offsetInFile := nil.
    currentRecordNumber := nil.
    recordBuffer := nil.
    ^self
! !

"ASDBase.ic method 0x20201d7c; bytecode file offset 0xafe648"
!ItemFileAccess methodsFor: 'recovered'!
initialize: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) elementAccessors.
    elementAccessors := recoveredValue1.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (recoveredValue2) nameTable.
    nameTable := recoveredValue3.
    recoveredValue4 := recoveredArg1.
    recoveredValue5 := (recoveredValue4) recordFormat.
    recordFormat := recoveredValue5.
    recoveredValue6 := recoveredArg1.
    recoveredValue7 := (recoveredValue6) offsetInFile.
    offsetInFile := recoveredValue7.
    recoveredValue8 := recoveredArg1.
    recoveredValue9 := (recoveredValue8) currentRecordNumber.
    currentRecordNumber := recoveredValue9.
    recoveredValue10 := recoveredArg1.
    recoveredValue11 := (recoveredValue10) recordBuffer.
    recordBuffer := recoveredValue11.
    ^self
! !

"ASDBase.ic method 0x2028a118; bytecode file offset 0xb869f0"
!ItemFileAccess methodsFor: 'recovered'!
createElementAccessFromString: recoveredArg1
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
            recordFormat := recoveredStack1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := recordFormat.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := (recoveredStack1) subStrings.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack2 := [:block280e1d80Arg1 | 
    | block280e1d80Value0 block280e1d80Value1 |
    block280e1d80Value0 := block280e1d80Arg1.
    block280e1d80Value1 := (block280e1d80Value0) notEmpty.
    block280e1d80Value1
].
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := (recoveredStack1) select: (recoveredStack2).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := Array.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack2 := (recoveredStack2) size.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := (recoveredStack1) new: (recoveredStack2).
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            elementAccessors := recoveredStack1.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := (recoveredStack0) initializeByteElementAccess: (recoveredStack1).
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack0 := (recoveredStack0) initializeBitElementAccess: (recoveredStack1).
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x202acf60; bytecode file offset 0xba9834"
!ItemFileAccess methodsFor: 'recovered'!
createRecordFormatFromElementAccessors
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := ReadWriteStream.
    recoveredValue1 := (recoveredValue0) on: ('').
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := elementAccessors.
    recoveredValue3 := [:recoveredBlock14Arg1 | 
    | recoveredBlock14Value0 recoveredBlock14Value1 recoveredBlock14Value2 recoveredBlock14Value3 recoveredBlock14Value4 |
    recoveredBlock14Value0 := recoveredLocal1.
    recoveredBlock14Value1 := recoveredBlock14Value0.
    recoveredBlock14Value2 := recoveredBlock14Arg1.
    recoveredBlock14Value3 := (recoveredBlock14Value2) dbFormatString.
    (recoveredBlock14Value1) nextPutAll: (recoveredBlock14Value3).
    recoveredBlock14Value4 := (recoveredBlock14Value0) nextPut: ($ ).
    recoveredBlock14Value4
].
    (recoveredValue2) do: (recoveredValue3).
    recoveredValue4 := recoveredLocal1.
    recoveredValue5 := (recoveredValue4) contents.
    recoveredValue6 := recoveredValue5.
    recordFormat := recoveredValue6.
    ^recoveredValue5
! !

"ASDBase.ic method 0x203babb8; bytecode file offset 0xcb7494"
!ItemFileAccess methodsFor: 'recovered'!
printOn: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 recoveredValue21 recoveredValue22 |
    recoveredValue0 := recoveredArg1.
    super printOn: (recoveredValue0).
    recoveredValue1 := recoveredArg1.
    (recoveredValue1) cr.
    recoveredValue2 := recoveredArg1.
    (recoveredValue2) nextPutAll: ('nameTable').
    recoveredValue3 := nameTable.
    recoveredValue4 := recoveredArg1.
    (recoveredValue3) printOn: (recoveredValue4).
    recoveredValue5 := recoveredArg1.
    (recoveredValue5) cr.
    recoveredValue6 := recoveredArg1.
    (recoveredValue6) nextPutAll: ('recordFormat').
    recoveredValue7 := recordFormat.
    recoveredValue8 := recoveredArg1.
    (recoveredValue7) printOn: (recoveredValue8).
    recoveredValue9 := recoveredArg1.
    (recoveredValue9) cr.
    recoveredValue10 := recoveredArg1.
    (recoveredValue10) nextPutAll: ('recordSize').
    recoveredValue11 := recordBuffer.
    recoveredValue12 := (recoveredValue11) size.
    recoveredValue13 := recoveredArg1.
    (recoveredValue12) printOn: (recoveredValue13).
    recoveredValue14 := recoveredArg1.
    (recoveredValue14) cr.
    recoveredValue15 := recoveredArg1.
    (recoveredValue15) nextPutAll: ('offsetInFile').
    recoveredValue16 := offsetInFile.
    recoveredValue17 := recoveredArg1.
    (recoveredValue16) printOn: (recoveredValue17).
    recoveredValue18 := recoveredArg1.
    (recoveredValue18) cr.
    recoveredValue19 := recoveredArg1.
    (recoveredValue19) nextPutAll: ('currentRecordNumber').
    recoveredValue20 := currentRecordNumber.
    recoveredValue21 := recoveredArg1.
    (recoveredValue20) printOn: (recoveredValue21).
    recoveredValue22 := recoveredArg1.
    (recoveredValue22) cr.
    ^self
! !

"ASDBase.ic method 0x204f630c; bytecode file offset 0xdf2c04"
!ItemFileAccess methodsFor: 'recovered'!
initializeByteElementAccess: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredLocal6 recoveredLocal7 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredLocal7 := 0.
    recoveredValue0 := recoveredArg1.
    recoveredLocal6 := recoveredValue0.
    recoveredValue1 := (self) class.
    recoveredValue2 := (recoveredValue1) dataAccessClasses.
    recoveredLocal4 := recoveredValue2.
    recoveredValue3 := recordFormat.
    recoveredValue4 := [:recoveredBlock22Arg1 | 
    | recoveredBlock22Stack0 recoveredBlock22Stack1 recoveredBlock22Stack2 recoveredBlock22Stack3 recoveredBlock22Stack4 recoveredBlock22Stack5 recoveredBlock22PC recoveredBlock22Step recoveredBlock22Done recoveredBlock22Result |
    recoveredBlock22Stack0 := self.
    recoveredBlock22PC := 28.
    recoveredBlock22Done := false.
    [recoveredBlock22Done not] whileTrue: [
        recoveredBlock22Step := recoveredBlock22PC.
        recoveredBlock22Step = 28 ifTrue: [
            recoveredBlock22Stack1 := recoveredLocal7.
            recoveredBlock22PC := 31.
        ].
        recoveredBlock22Step = 31 ifTrue: [
            recoveredBlock22Stack1 := (recoveredBlock22Stack1) + (1).
            recoveredBlock22PC := 32.
        ].
        recoveredBlock22Step = 32 ifTrue: [
            recoveredLocal7 := recoveredBlock22Stack1.
            recoveredBlock22PC := 35.
        ].
        recoveredBlock22Step = 35 ifTrue: [
            recoveredBlock22Stack1 := nil.
            recoveredBlock22PC := 36.
        ].
        recoveredBlock22Step = 36 ifTrue: [
            recoveredBlock22Stack2 := recoveredBlock22Arg1.
            recoveredBlock22PC := 37.
        ].
        recoveredBlock22Step = 37 ifTrue: [
            recoveredBlock22Stack3 := 1.
            recoveredBlock22PC := 39.
        ].
        recoveredBlock22Step = 39 ifTrue: [
            recoveredBlock22Stack2 := (recoveredBlock22Stack2) at: (recoveredBlock22Stack3).
            recoveredBlock22PC := 40.
        ].
        recoveredBlock22Step = 40 ifTrue: [
            recoveredBlock22Stack3 := $b.
            recoveredBlock22PC := 44.
        ].
        recoveredBlock22Step = 44 ifTrue: [
            recoveredBlock22Stack2 := (recoveredBlock22Stack2) = (recoveredBlock22Stack3).
            recoveredBlock22PC := 45.
        ].
        recoveredBlock22Step = 45 ifTrue: [
            (recoveredBlock22Stack2) ifTrue: [recoveredBlock22PC := 164] ifFalse: [recoveredBlock22PC := 48].
        ].
        recoveredBlock22Step = 48 ifTrue: [
            recoveredBlock22PC := 49.
        ].
        recoveredBlock22Step = 49 ifTrue: [
            recoveredBlock22Stack1 := recoveredLocal4.
            recoveredBlock22PC := 52.
        ].
        recoveredBlock22Step = 52 ifTrue: [
            recoveredBlock22Stack2 := recoveredBlock22Arg1.
            recoveredBlock22PC := 53.
        ].
        recoveredBlock22Step = 53 ifTrue: [
            recoveredBlock22Stack3 := [].
            recoveredBlock22PC := 55.
        ].
        recoveredBlock22Step = 55 ifTrue: [
            recoveredBlock22Stack1 := (recoveredBlock22Stack1) at: (recoveredBlock22Stack2) ifAbsent: (recoveredBlock22Stack3).
            recoveredBlock22PC := 57.
        ].
        recoveredBlock22Step = 57 ifTrue: [
            recoveredBlock22Stack2 := recoveredBlock22Stack1.
            recoveredBlock22PC := 58.
        ].
        recoveredBlock22Step = 58 ifTrue: [
            recoveredLocal5 := recoveredBlock22Stack2.
            recoveredBlock22PC := 61.
        ].
        recoveredBlock22Step = 61 ifTrue: [
            (recoveredBlock22Stack1 == nil) ifTrue: [recoveredBlock22PC := 99] ifFalse: [recoveredBlock22PC := 64].
        ].
        recoveredBlock22Step = 64 ifTrue: [
            recoveredBlock22Stack1 := recoveredLocal5.
            recoveredBlock22PC := 67.
        ].
        recoveredBlock22Step = 67 ifTrue: [
            recoveredBlock22Stack2 := recoveredLocal6.
            recoveredBlock22PC := 70.
        ].
        recoveredBlock22Step = 70 ifTrue: [
            recoveredBlock22Stack3 := recoveredBlock22Arg1.
            recoveredBlock22PC := 71.
        ].
        recoveredBlock22Step = 71 ifTrue: [
            recoveredBlock22Stack4 := '/'.
            recoveredBlock22PC := 73.
        ].
        recoveredBlock22Step = 73 ifTrue: [
            recoveredBlock22Stack3 := (recoveredBlock22Stack3) , (recoveredBlock22Stack4).
            recoveredBlock22PC := 75.
        ].
        recoveredBlock22Step = 75 ifTrue: [
            recoveredBlock22Stack4 := recoveredLocal7.
            recoveredBlock22PC := 78.
        ].
        recoveredBlock22Step = 78 ifTrue: [
            recoveredBlock22Stack4 := (recoveredBlock22Stack4) printString.
            recoveredBlock22PC := 80.
        ].
        recoveredBlock22Step = 80 ifTrue: [
            recoveredBlock22Stack3 := (recoveredBlock22Stack3) , (recoveredBlock22Stack4).
            recoveredBlock22PC := 82.
        ].
        recoveredBlock22Step = 82 ifTrue: [
            recoveredBlock22Stack1 := (recoveredBlock22Stack1) create: (recoveredBlock22Stack2) name: (recoveredBlock22Stack3).
            recoveredBlock22PC := 84.
        ].
        recoveredBlock22Step = 84 ifTrue: [
            recoveredLocal3 := recoveredBlock22Stack1.
            recoveredBlock22PC := 87.
        ].
        recoveredBlock22Step = 87 ifTrue: [
            recoveredBlock22Stack1 := recoveredLocal6.
            recoveredBlock22PC := 90.
        ].
        recoveredBlock22Step = 90 ifTrue: [
            recoveredBlock22Stack2 := recoveredLocal5.
            recoveredBlock22PC := 93.
        ].
        recoveredBlock22Step = 93 ifTrue: [
            recoveredBlock22Stack2 := (recoveredBlock22Stack2) byteSize.
            recoveredBlock22PC := 95.
        ].
        recoveredBlock22Step = 95 ifTrue: [
            recoveredBlock22Stack1 := (recoveredBlock22Stack1) + (recoveredBlock22Stack2).
            recoveredBlock22PC := 96.
        ].
        recoveredBlock22Step = 96 ifTrue: [
            recoveredLocal6 := recoveredBlock22Stack1.
            recoveredBlock22PC := 99.
        ].
        recoveredBlock22Step = 99 ifTrue: [
            recoveredBlock22Stack1 := recoveredBlock22Arg1.
            recoveredBlock22PC := 100.
        ].
        recoveredBlock22Step = 100 ifTrue: [
            recoveredBlock22Stack2 := 1.
            recoveredBlock22PC := 102.
        ].
        recoveredBlock22Step = 102 ifTrue: [
            recoveredBlock22Stack1 := (recoveredBlock22Stack1) at: (recoveredBlock22Stack2).
            recoveredBlock22PC := 103.
        ].
        recoveredBlock22Step = 103 ifTrue: [
            recoveredBlock22Stack2 := recoveredBlock22Stack1.
            recoveredBlock22PC := 104.
        ].
        recoveredBlock22Step = 104 ifTrue: [
            recoveredLocal1 := recoveredBlock22Stack2.
            recoveredBlock22PC := 107.
        ].
        recoveredBlock22Step = 107 ifTrue: [
            recoveredBlock22Stack2 := $S.
            recoveredBlock22PC := 110.
        ].
        recoveredBlock22Step = 110 ifTrue: [
            recoveredBlock22Stack1 := (recoveredBlock22Stack1) = (recoveredBlock22Stack2).
            recoveredBlock22PC := 111.
        ].
        recoveredBlock22Step = 111 ifTrue: [
            (recoveredBlock22Stack1) ifTrue: [recoveredBlock22PC := 114] ifFalse: [recoveredBlock22PC := 154].
        ].
        recoveredBlock22Step = 114 ifTrue: [
            recoveredBlock22Stack1 := recoveredLocal1.
            recoveredBlock22PC := 117.
        ].
        recoveredBlock22Step = 117 ifTrue: [
            recoveredBlock22Stack2 := 2.
            recoveredBlock22PC := 119.
        ].
        recoveredBlock22Step = 119 ifTrue: [
            recoveredBlock22Stack3 := recoveredLocal1.
            recoveredBlock22PC := 122.
        ].
        recoveredBlock22Step = 122 ifTrue: [
            recoveredBlock22Stack3 := (recoveredBlock22Stack3) size.
            recoveredBlock22PC := 124.
        ].
        recoveredBlock22Step = 124 ifTrue: [
            recoveredBlock22Stack1 := (recoveredBlock22Stack1) copyFrom: (recoveredBlock22Stack2) to: (recoveredBlock22Stack3).
            recoveredBlock22PC := 126.
        ].
        recoveredBlock22Step = 126 ifTrue: [
            recoveredBlock22Stack1 := (recoveredBlock22Stack1) asInteger.
            recoveredBlock22PC := 128.
        ].
        recoveredBlock22Step = 128 ifTrue: [
            recoveredLocal2 := recoveredBlock22Stack1.
            recoveredBlock22PC := 131.
        ].
        recoveredBlock22Step = 131 ifTrue: [
            recoveredBlock22Stack1 := DBStringConstantItem.
            recoveredBlock22PC := 133.
        ].
        recoveredBlock22Step = 133 ifTrue: [
            recoveredBlock22Stack2 := recoveredLocal6.
            recoveredBlock22PC := 136.
        ].
        recoveredBlock22Step = 136 ifTrue: [
            recoveredBlock22Stack3 := recoveredLocal2.
            recoveredBlock22PC := 139.
        ].
        recoveredBlock22Step = 139 ifTrue: [
            recoveredBlock22Stack1 := (recoveredBlock22Stack1) create: (recoveredBlock22Stack2) size: (recoveredBlock22Stack3).
            recoveredBlock22PC := 141.
        ].
        recoveredBlock22Step = 141 ifTrue: [
            recoveredLocal3 := recoveredBlock22Stack1.
            recoveredBlock22PC := 144.
        ].
        recoveredBlock22Step = 144 ifTrue: [
            recoveredBlock22Stack1 := recoveredLocal6.
            recoveredBlock22PC := 147.
        ].
        recoveredBlock22Step = 147 ifTrue: [
            recoveredBlock22Stack2 := recoveredLocal2.
            recoveredBlock22PC := 150.
        ].
        recoveredBlock22Step = 150 ifTrue: [
            recoveredBlock22Stack1 := (recoveredBlock22Stack1) + (recoveredBlock22Stack2).
            recoveredBlock22PC := 151.
        ].
        recoveredBlock22Step = 151 ifTrue: [
            recoveredLocal6 := recoveredBlock22Stack1.
            recoveredBlock22PC := 154.
        ].
        recoveredBlock22Step = 154 ifTrue: [
            recoveredBlock22Stack1 := elementAccessors.
            recoveredBlock22PC := 156.
        ].
        recoveredBlock22Step = 156 ifTrue: [
            recoveredBlock22Stack2 := recoveredLocal7.
            recoveredBlock22PC := 159.
        ].
        recoveredBlock22Step = 159 ifTrue: [
            recoveredBlock22Stack3 := recoveredLocal3.
            recoveredBlock22PC := 162.
        ].
        recoveredBlock22Step = 162 ifTrue: [
            recoveredBlock22Stack1 := (recoveredBlock22Stack1) at: (recoveredBlock22Stack2) put: (recoveredBlock22Stack3).
            recoveredBlock22PC := 164.
        ].
        recoveredBlock22Step = 164 ifTrue: [
            recoveredBlock22Result := recoveredBlock22Stack1.
            recoveredBlock22Done := true.
        ].
    ].
    recoveredBlock22Result
].
    (recoveredValue3) do: (recoveredValue4).
    recoveredValue5 := recoveredLocal6.
    ^recoveredValue5
! !

"ASDBase.ic method 0x205918c0; bytecode file offset 0xe8e1b8"
!ItemFileAccess methodsFor: 'recovered'!
initializeBitElementAccess: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredLocal6 recoveredLocal7 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := recoveredArg1.
    recoveredLocal2 := recoveredValue0.
    recoveredLocal4 := 0.
    recoveredValue1 := LookupTable.
    recoveredValue2 := (recoveredValue1) new: (4).
    recoveredLocal3 := recoveredValue2.
    recoveredValue3 := (self) class.
    recoveredValue4 := (recoveredValue3) dataAccessClasses.
    recoveredLocal6 := recoveredValue4.
    recoveredValue5 := recordFormat.
    recoveredValue6 := [:recoveredBlock30Arg1 :recoveredBlock30Arg2 | 
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
            recoveredBlock30Stack2 := recoveredBlock30Arg1.
            recoveredBlock30PC := 38.
        ].
        recoveredBlock30Step = 38 ifTrue: [
            recoveredBlock30Stack3 := 1.
            recoveredBlock30PC := 40.
        ].
        recoveredBlock30Step = 40 ifTrue: [
            recoveredBlock30Stack2 := (recoveredBlock30Stack2) at: (recoveredBlock30Stack3).
            recoveredBlock30PC := 42.
        ].
        recoveredBlock30Step = 42 ifTrue: [
            recoveredBlock30Stack3 := $b.
            recoveredBlock30PC := 46.
        ].
        recoveredBlock30Step = 46 ifTrue: [
            recoveredBlock30Stack2 := (recoveredBlock30Stack2) = (recoveredBlock30Stack3).
            recoveredBlock30PC := 47.
        ].
        recoveredBlock30Step = 47 ifTrue: [
            (recoveredBlock30Stack2) ifTrue: [recoveredBlock30PC := 50] ifFalse: [recoveredBlock30PC := 271].
        ].
        recoveredBlock30Step = 50 ifTrue: [
            recoveredBlock30PC := 51.
        ].
        recoveredBlock30Step = 51 ifTrue: [
            recoveredBlock30Stack1 := recoveredLocal6.
            recoveredBlock30PC := 54.
        ].
        recoveredBlock30Step = 54 ifTrue: [
            recoveredBlock30Stack2 := recoveredBlock30Arg1.
            recoveredBlock30PC := 55.
        ].
        recoveredBlock30Step = 55 ifTrue: [
            recoveredBlock30Stack3 := [].
            recoveredBlock30PC := 57.
        ].
        recoveredBlock30Step = 57 ifTrue: [
            recoveredBlock30Stack1 := (recoveredBlock30Stack1) at: (recoveredBlock30Stack2) ifAbsent: (recoveredBlock30Stack3).
            recoveredBlock30PC := 59.
        ].
        recoveredBlock30Step = 59 ifTrue: [
            recoveredBlock30Stack2 := recoveredBlock30Stack1.
            recoveredBlock30PC := 60.
        ].
        recoveredBlock30Step = 60 ifTrue: [
            recoveredLocal7 := recoveredBlock30Stack2.
            recoveredBlock30PC := 63.
        ].
        recoveredBlock30Step = 63 ifTrue: [
            (recoveredBlock30Stack1 == nil) ifTrue: [recoveredBlock30PC := 263] ifFalse: [recoveredBlock30PC := 66].
        ].
        recoveredBlock30Step = 66 ifTrue: [
            recoveredBlock30Stack1 := recoveredLocal3.
            recoveredBlock30PC := 69.
        ].
        recoveredBlock30Step = 69 ifTrue: [
            recoveredBlock30Stack2 := recoveredLocal7.
            recoveredBlock30PC := 72.
        ].
        recoveredBlock30Step = 72 ifTrue: [
            recoveredBlock30Stack3 := [].
            recoveredBlock30PC := 74.
        ].
        recoveredBlock30Step = 74 ifTrue: [
            recoveredBlock30Stack1 := (recoveredBlock30Stack1) at: (recoveredBlock30Stack2) ifAbsent: (recoveredBlock30Stack3).
            recoveredBlock30PC := 76.
        ].
        recoveredBlock30Step = 76 ifTrue: [
            recoveredBlock30Stack2 := recoveredBlock30Stack1.
            recoveredBlock30PC := 77.
        ].
        recoveredBlock30Step = 77 ifTrue: [
            recoveredLocal5 := recoveredBlock30Stack2.
            recoveredBlock30PC := 80.
        ].
        recoveredBlock30Step = 80 ifTrue: [
            (recoveredBlock30Stack1 ~~ nil) ifTrue: [recoveredBlock30PC := 174] ifFalse: [recoveredBlock30PC := 84].
        ].
        recoveredBlock30Step = 84 ifTrue: [
            recoveredBlock30Stack1 := recoveredLocal1.
            recoveredBlock30PC := 87.
        ].
        recoveredBlock30Step = 87 ifTrue: [
            (recoveredBlock30Stack1 == nil) ifTrue: [recoveredBlock30PC := 130] ifFalse: [recoveredBlock30PC := 90].
        ].
        recoveredBlock30Step = 90 ifTrue: [
            recoveredBlock30Stack1 := recoveredLocal1.
            recoveredBlock30PC := 93.
        ].
        recoveredBlock30Step = 93 ifTrue: [
            recoveredBlock30Stack1 := (recoveredBlock30Stack1) class.
            recoveredBlock30PC := 94.
        ].
        recoveredBlock30Step = 94 ifTrue: [
            recoveredBlock30Stack2 := recoveredLocal7.
            recoveredBlock30PC := 97.
        ].
        recoveredBlock30Step = 97 ifTrue: [
            recoveredBlock30Stack1 := (recoveredBlock30Stack1) = (recoveredBlock30Stack2).
            recoveredBlock30PC := 98.
        ].
        recoveredBlock30Step = 98 ifTrue: [
            (recoveredBlock30Stack1) ifTrue: [recoveredBlock30PC := 130] ifFalse: [recoveredBlock30PC := 102].
        ].
        recoveredBlock30Step = 102 ifTrue: [
            recoveredBlock30Stack1 := recoveredLocal1.
            recoveredBlock30PC := 105.
        ].
        recoveredBlock30Step = 105 ifTrue: [
            recoveredBlock30Stack1 := (recoveredBlock30Stack1) bitIndex.
            recoveredBlock30PC := 107.
        ].
        recoveredBlock30Step = 107 ifTrue: [
            recoveredBlock30Stack2 := recoveredLocal1.
            recoveredBlock30PC := 110.
        ].
        recoveredBlock30Step = 110 ifTrue: [
            recoveredBlock30Stack2 := (recoveredBlock30Stack2) class.
            recoveredBlock30PC := 111.
        ].
        recoveredBlock30Step = 111 ifTrue: [
            recoveredBlock30Stack2 := (recoveredBlock30Stack2) bitSize.
            recoveredBlock30PC := 113.
        ].
        recoveredBlock30Step = 113 ifTrue: [
            recoveredBlock30Stack1 := (recoveredBlock30Stack1) >= (recoveredBlock30Stack2).
            recoveredBlock30PC := 114.
        ].
        recoveredBlock30Step = 114 ifTrue: [
            (recoveredBlock30Stack1) ifTrue: [recoveredBlock30PC := 130] ifFalse: [recoveredBlock30PC := 118].
        ].
        recoveredBlock30Step = 118 ifTrue: [
            recoveredBlock30Stack1 := recoveredLocal2.
            recoveredBlock30PC := 121.
        ].
        recoveredBlock30Step = 121 ifTrue: [
            recoveredBlock30Stack2 := recoveredLocal1.
            recoveredBlock30PC := 124.
        ].
        recoveredBlock30Step = 124 ifTrue: [
            recoveredBlock30Stack2 := (recoveredBlock30Stack2) byteSize.
            recoveredBlock30PC := 126.
        ].
        recoveredBlock30Step = 126 ifTrue: [
            recoveredBlock30Stack1 := (recoveredBlock30Stack1) + (recoveredBlock30Stack2).
            recoveredBlock30PC := 127.
        ].
        recoveredBlock30Step = 127 ifTrue: [
            recoveredLocal2 := recoveredBlock30Stack1.
            recoveredBlock30PC := 130.
        ].
        recoveredBlock30Step = 130 ifTrue: [
            recoveredBlock30Stack1 := recoveredLocal7.
            recoveredBlock30PC := 133.
        ].
        recoveredBlock30Step = 133 ifTrue: [
            recoveredBlock30Stack2 := recoveredLocal2.
            recoveredBlock30PC := 136.
        ].
        recoveredBlock30Step = 136 ifTrue: [
            recoveredBlock30Stack3 := 1.
            recoveredBlock30PC := 138.
        ].
        recoveredBlock30Step = 138 ifTrue: [
            recoveredBlock30Stack4 := recoveredBlock30Arg1.
            recoveredBlock30PC := 139.
        ].
        recoveredBlock30Step = 139 ifTrue: [
            recoveredBlock30Stack5 := '/'.
            recoveredBlock30PC := 141.
        ].
        recoveredBlock30Step = 141 ifTrue: [
            recoveredBlock30Stack4 := (recoveredBlock30Stack4) , (recoveredBlock30Stack5).
            recoveredBlock30PC := 143.
        ].
        recoveredBlock30Step = 143 ifTrue: [
            recoveredBlock30Stack5 := recoveredBlock30Arg2.
            recoveredBlock30PC := 144.
        ].
        recoveredBlock30Step = 144 ifTrue: [
            recoveredBlock30Stack5 := (recoveredBlock30Stack5) printString.
            recoveredBlock30PC := 146.
        ].
        recoveredBlock30Step = 146 ifTrue: [
            recoveredBlock30Stack4 := (recoveredBlock30Stack4) , (recoveredBlock30Stack5).
            recoveredBlock30PC := 148.
        ].
        recoveredBlock30Step = 148 ifTrue: [
            recoveredBlock30Stack1 := (recoveredBlock30Stack1) create: (recoveredBlock30Stack2) bitIndex: (recoveredBlock30Stack3) name: (recoveredBlock30Stack4).
            recoveredBlock30PC := 151.
        ].
        recoveredBlock30Step = 151 ifTrue: [
            recoveredLocal5 := recoveredBlock30Stack1.
            recoveredBlock30PC := 154.
        ].
        recoveredBlock30Step = 154 ifTrue: [
            recoveredBlock30Stack1 := 1.
            recoveredBlock30PC := 156.
        ].
        recoveredBlock30Step = 156 ifTrue: [
            recoveredLocal4 := recoveredBlock30Stack1.
            recoveredBlock30PC := 159.
        ].
        recoveredBlock30Step = 159 ifTrue: [
            recoveredBlock30Stack1 := recoveredLocal3.
            recoveredBlock30PC := 162.
        ].
        recoveredBlock30Step = 162 ifTrue: [
            recoveredBlock30Stack2 := recoveredLocal7.
            recoveredBlock30PC := 165.
        ].
        recoveredBlock30Step = 165 ifTrue: [
            recoveredBlock30Stack3 := recoveredLocal5.
            recoveredBlock30PC := 168.
        ].
        recoveredBlock30Step = 168 ifTrue: [
            (recoveredBlock30Stack1) at: (recoveredBlock30Stack2) put: (recoveredBlock30Stack3).
            recoveredBlock30PC := 170.
        ].
        recoveredBlock30Step = 170 ifTrue: [
            recoveredBlock30PC := 221.
        ].
        recoveredBlock30Step = 174 ifTrue: [
            recoveredBlock30Stack1 := recoveredLocal5.
            recoveredBlock30PC := 177.
        ].
        recoveredBlock30Step = 177 ifTrue: [
            recoveredBlock30Stack1 := (recoveredBlock30Stack1) bitIndex.
            recoveredBlock30PC := 179.
        ].
        recoveredBlock30Step = 179 ifTrue: [
            recoveredBlock30Stack1 := (recoveredBlock30Stack1) + (1).
            recoveredBlock30PC := 180.
        ].
        recoveredBlock30Step = 180 ifTrue: [
            recoveredLocal4 := recoveredBlock30Stack1.
            recoveredBlock30PC := 183.
        ].
        recoveredBlock30Step = 183 ifTrue: [
            recoveredBlock30Stack1 := recoveredLocal7.
            recoveredBlock30PC := 186.
        ].
        recoveredBlock30Step = 186 ifTrue: [
            recoveredBlock30Stack2 := recoveredLocal5.
            recoveredBlock30PC := 189.
        ].
        recoveredBlock30Step = 189 ifTrue: [
            recoveredBlock30Stack2 := (recoveredBlock30Stack2) offset.
            recoveredBlock30PC := 191.
        ].
        recoveredBlock30Step = 191 ifTrue: [
            recoveredBlock30Stack3 := recoveredLocal4.
            recoveredBlock30PC := 194.
        ].
        recoveredBlock30Step = 194 ifTrue: [
            recoveredBlock30Stack4 := recoveredBlock30Arg1.
            recoveredBlock30PC := 195.
        ].
        recoveredBlock30Step = 195 ifTrue: [
            recoveredBlock30Stack5 := '/'.
            recoveredBlock30PC := 197.
        ].
        recoveredBlock30Step = 197 ifTrue: [
            recoveredBlock30Stack4 := (recoveredBlock30Stack4) , (recoveredBlock30Stack5).
            recoveredBlock30PC := 199.
        ].
        recoveredBlock30Step = 199 ifTrue: [
            recoveredBlock30Stack5 := recoveredBlock30Arg2.
            recoveredBlock30PC := 200.
        ].
        recoveredBlock30Step = 200 ifTrue: [
            recoveredBlock30Stack5 := (recoveredBlock30Stack5) printString.
            recoveredBlock30PC := 202.
        ].
        recoveredBlock30Step = 202 ifTrue: [
            recoveredBlock30Stack4 := (recoveredBlock30Stack4) , (recoveredBlock30Stack5).
            recoveredBlock30PC := 204.
        ].
        recoveredBlock30Step = 204 ifTrue: [
            recoveredBlock30Stack1 := (recoveredBlock30Stack1) create: (recoveredBlock30Stack2) bitIndex: (recoveredBlock30Stack3) name: (recoveredBlock30Stack4).
            recoveredBlock30PC := 207.
        ].
        recoveredBlock30Step = 207 ifTrue: [
            recoveredLocal5 := recoveredBlock30Stack1.
            recoveredBlock30PC := 210.
        ].
        recoveredBlock30Step = 210 ifTrue: [
            recoveredBlock30Stack1 := recoveredLocal3.
            recoveredBlock30PC := 213.
        ].
        recoveredBlock30Step = 213 ifTrue: [
            recoveredBlock30Stack2 := recoveredLocal7.
            recoveredBlock30PC := 216.
        ].
        recoveredBlock30Step = 216 ifTrue: [
            recoveredBlock30Stack3 := recoveredLocal5.
            recoveredBlock30PC := 219.
        ].
        recoveredBlock30Step = 219 ifTrue: [
            (recoveredBlock30Stack1) at: (recoveredBlock30Stack2) put: (recoveredBlock30Stack3).
            recoveredBlock30PC := 221.
        ].
        recoveredBlock30Step = 221 ifTrue: [
            recoveredBlock30Stack1 := recoveredLocal5.
            recoveredBlock30PC := 224.
        ].
        recoveredBlock30Step = 224 ifTrue: [
            recoveredLocal1 := recoveredBlock30Stack1.
            recoveredBlock30PC := 227.
        ].
        recoveredBlock30Step = 227 ifTrue: [
            recoveredBlock30Stack1 := recoveredLocal5.
            recoveredBlock30PC := 230.
        ].
        recoveredBlock30Step = 230 ifTrue: [
            recoveredBlock30Stack1 := (recoveredBlock30Stack1) bitIndex.
            recoveredBlock30PC := 232.
        ].
        recoveredBlock30Step = 232 ifTrue: [
            recoveredBlock30Stack2 := recoveredLocal7.
            recoveredBlock30PC := 235.
        ].
        recoveredBlock30Step = 235 ifTrue: [
            recoveredBlock30Stack2 := (recoveredBlock30Stack2) bitSize.
            recoveredBlock30PC := 237.
        ].
        recoveredBlock30Step = 237 ifTrue: [
            recoveredBlock30Stack1 := (recoveredBlock30Stack1) >= (recoveredBlock30Stack2).
            recoveredBlock30PC := 238.
        ].
        recoveredBlock30Step = 238 ifTrue: [
            (recoveredBlock30Stack1) ifTrue: [recoveredBlock30PC := 242] ifFalse: [recoveredBlock30PC := 263].
        ].
        recoveredBlock30Step = 242 ifTrue: [
            recoveredBlock30Stack1 := recoveredLocal2.
            recoveredBlock30PC := 245.
        ].
        recoveredBlock30Step = 245 ifTrue: [
            recoveredBlock30Stack2 := recoveredLocal7.
            recoveredBlock30PC := 248.
        ].
        recoveredBlock30Step = 248 ifTrue: [
            recoveredBlock30Stack2 := (recoveredBlock30Stack2) byteSize.
            recoveredBlock30PC := 250.
        ].
        recoveredBlock30Step = 250 ifTrue: [
            recoveredBlock30Stack1 := (recoveredBlock30Stack1) + (recoveredBlock30Stack2).
            recoveredBlock30PC := 251.
        ].
        recoveredBlock30Step = 251 ifTrue: [
            recoveredLocal2 := recoveredBlock30Stack1.
            recoveredBlock30PC := 254.
        ].
        recoveredBlock30Step = 254 ifTrue: [
            recoveredBlock30Stack1 := recoveredLocal3.
            recoveredBlock30PC := 257.
        ].
        recoveredBlock30Step = 257 ifTrue: [
            recoveredBlock30Stack2 := recoveredLocal7.
            recoveredBlock30PC := 260.
        ].
        recoveredBlock30Step = 260 ifTrue: [
            recoveredBlock30Stack3 := nil.
            recoveredBlock30PC := 261.
        ].
        recoveredBlock30Step = 261 ifTrue: [
            (recoveredBlock30Stack1) at: (recoveredBlock30Stack2) put: (recoveredBlock30Stack3).
            recoveredBlock30PC := 263.
        ].
        recoveredBlock30Step = 263 ifTrue: [
            recoveredBlock30Stack1 := elementAccessors.
            recoveredBlock30PC := 265.
        ].
        recoveredBlock30Step = 265 ifTrue: [
            recoveredBlock30Stack2 := recoveredBlock30Arg2.
            recoveredBlock30PC := 266.
        ].
        recoveredBlock30Step = 266 ifTrue: [
            recoveredBlock30Stack3 := recoveredLocal5.
            recoveredBlock30PC := 269.
        ].
        recoveredBlock30Step = 269 ifTrue: [
            recoveredBlock30Stack1 := (recoveredBlock30Stack1) at: (recoveredBlock30Stack2) put: (recoveredBlock30Stack3).
            recoveredBlock30PC := 271.
        ].
        recoveredBlock30Step = 271 ifTrue: [
            recoveredBlock30Result := recoveredBlock30Stack1.
            recoveredBlock30Done := true.
        ].
    ].
    recoveredBlock30Result
].
    (recoveredValue5) doWithIndex: (recoveredValue6).
    recoveredValue7 := recoveredLocal2.
    ^recoveredValue7
! !

