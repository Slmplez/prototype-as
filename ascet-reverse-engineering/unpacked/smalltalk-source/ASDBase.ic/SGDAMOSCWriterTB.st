"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20005e20; bytecode file offset 0x902744"
!SGDAMOSCWriterTB methodsFor: 'recovered'!
writeVariantCodingInfoFromElements: recoveredArg1 on: recoveredArg2
    ^self
! !

"ASDBase.ic method 0x20048e84; bytecode file offset 0x945780"
!SGDAMOSCWriterTB methodsFor: 'recovered'!
init
    textStream := nil.
    ^self
! !

"ASDBase.ic method 0x200529b8; bytecode file offset 0x94f274"
!SGDAMOSCWriterTB methodsFor: 'recovered'!
initOn: recoveredArg1
    textStream := nil.
    ^self
! !

"ASDBase.ic method 0x20065f94; bytecode file offset 0x963428"
!SGDAMOSCWriterTB methodsFor: 'recovered'!
textStream
    | recoveredValue0 |
    recoveredValue0 := textStream.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200be594; bytecode file offset 0x9bb178"
!SGDAMOSCWriterTB methodsFor: 'recovered'!
textStream: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    textStream := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x2026cd0c; bytecode file offset 0xb695f4"
!SGDAMOSCWriterTB methodsFor: 'recovered'!
writeVersionInfoOn: recoveredArg1
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
            recoveredStack1 := (recoveredStack1) fileDescriptor.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) oflag.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := OAPPEND.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := (recoveredStack1) bitAnd: (recoveredStack2).
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) ~= (recoveredStack2).
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 39] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack3 := 'KONSERVIERUNG_FORMAT '.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack4 := ASDDAMOSOptions.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack4 := (recoveredStack4) instance.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack4 := (recoveredStack4) optionDamosFormatVersion.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack4 := (recoveredStack4) asFloat.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack4 := (recoveredStack4) asString.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack3 := (recoveredStack3) , (recoveredStack4).
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            (recoveredStack2) nextPutAll: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            (recoveredStack2) cr.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            (recoveredStack1) cr.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2036c124; bytecode file offset 0xc689fc"
!SGDAMOSCWriterTB methodsFor: 'recovered'!
withCrLfs: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := WriteStream.
    recoveredValue1 := (recoveredValue0) on: ('').
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := [:recoveredBlock15Arg1 | 
    | recoveredBlock15Stack0 recoveredBlock15Stack1 recoveredBlock15Stack2 recoveredBlock15Stack3 recoveredBlock15PC recoveredBlock15Step recoveredBlock15Done recoveredBlock15Result |
    recoveredBlock15Stack0 := self.
    recoveredBlock15PC := 22.
    recoveredBlock15Done := false.
    [recoveredBlock15Done not] whileTrue: [
        recoveredBlock15Step := recoveredBlock15PC.
        recoveredBlock15Step = 22 ifTrue: [
            recoveredBlock15Stack1 := recoveredBlock15Arg1.
            recoveredBlock15PC := 23.
        ].
        recoveredBlock15Step = 23 ifTrue: [
            recoveredBlock15Stack2 := $$.
            recoveredBlock15PC := 26.
        ].
        recoveredBlock15Step = 26 ifTrue: [
            recoveredBlock15Stack1 := (recoveredBlock15Stack1) = (recoveredBlock15Stack2).
            recoveredBlock15PC := 27.
        ].
        recoveredBlock15Step = 27 ifTrue: [
            (recoveredBlock15Stack1) ifTrue: [recoveredBlock15PC := 30] ifFalse: [recoveredBlock15PC := 48].
        ].
        recoveredBlock15Step = 30 ifTrue: [
            recoveredBlock15Stack1 := recoveredLocal1.
            recoveredBlock15PC := 33.
        ].
        recoveredBlock15Step = 33 ifTrue: [
            recoveredBlock15Stack2 := Cr.
            recoveredBlock15PC := 35.
        ].
        recoveredBlock15Step = 35 ifTrue: [
            (recoveredBlock15Stack1) nextPut: (recoveredBlock15Stack2).
            recoveredBlock15PC := 37.
        ].
        recoveredBlock15Step = 37 ifTrue: [
            recoveredBlock15Stack1 := recoveredLocal1.
            recoveredBlock15PC := 40.
        ].
        recoveredBlock15Step = 40 ifTrue: [
            recoveredBlock15Stack2 := Lf.
            recoveredBlock15PC := 42.
        ].
        recoveredBlock15Step = 42 ifTrue: [
            recoveredBlock15Stack1 := (recoveredBlock15Stack1) nextPut: (recoveredBlock15Stack2).
            recoveredBlock15PC := 44.
        ].
        recoveredBlock15Step = 44 ifTrue: [
            recoveredBlock15PC := 54.
        ].
        recoveredBlock15Step = 48 ifTrue: [
            recoveredBlock15Stack1 := recoveredLocal1.
            recoveredBlock15PC := 51.
        ].
        recoveredBlock15Step = 51 ifTrue: [
            recoveredBlock15Stack2 := recoveredBlock15Arg1.
            recoveredBlock15PC := 52.
        ].
        recoveredBlock15Step = 52 ifTrue: [
            recoveredBlock15Stack1 := (recoveredBlock15Stack1) nextPut: (recoveredBlock15Stack2).
            recoveredBlock15PC := 54.
        ].
        recoveredBlock15Step = 54 ifTrue: [
            recoveredBlock15Result := recoveredBlock15Stack1.
            recoveredBlock15Done := true.
        ].
    ].
    recoveredBlock15Result
].
    (recoveredValue2) do: (recoveredValue3).
    recoveredValue4 := recoveredLocal1.
    (recoveredValue4) close.
    recoveredValue5 := recoveredLocal1.
    recoveredValue6 := (recoveredValue5) contents.
    ^recoveredValue6
! !

"ASDBase.ic method 0x204d36d0; bytecode file offset 0xdcffe8"
!SGDAMOSCWriterTB methodsFor: 'recovered'!
writeDCF: recoveredArg1 with: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredLocal6 recoveredLocal7 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := Character.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := 13.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) value: (recoveredStack2).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := (recoveredStack1) asString.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack2 := Character.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack3 := 10.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := (recoveredStack2) value: (recoveredStack3).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := (recoveredStack2) asString.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredLocal7 := recoveredStack1.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredLocal6 := recoveredStack1.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := recoveredLocal7.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 40] ifFalse: [recoveredPC := 38].
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := recoveredLocal7.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack1 := (recoveredStack1) isEmpty.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 48] ifFalse: [recoveredPC := 50].
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack0 := (recoveredStack0) textStream.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 88] ifFalse: [recoveredPC := 56].
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack0 := CfsFileDescriptor.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack1 := recoveredLocal6.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            (recoveredStack0) remove: (recoveredStack1).
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack0 := CfsWriteFileStream.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack1 := recoveredLocal6.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack0 := (recoveredStack0) open: (recoveredStack1).
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            textStream := recoveredStack1.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack0 := (recoveredStack0) isCfsError.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 78] ifFalse: [recoveredPC := 88].
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack0 := RBUserInfo.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack1 := 'Access denied: Check if the file is open and close it.'.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack0 := (recoveredStack0) message: (recoveredStack1).
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            (recoveredStack0) prompt.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack0 := ReadWriteStream.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack1 := ''.
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack0 := (recoveredStack0) on: (recoveredStack1).
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredLocal5 := recoveredStack0.
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            recoveredStack0 := recoveredLocal7.
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack0 := (recoveredStack0) size.
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            recoveredStack0 := recoveredLocal7.
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            recoveredStack1 := [:recoveredBlock108Arg1 :recoveredBlock108Arg2 | 
    | recoveredBlock108Value0 recoveredBlock108Value1 recoveredBlock108Value2 |
    recoveredBlock108Value0 := recoveredBlock108Arg1.
    recoveredBlock108Value1 := recoveredLocal5.
    recoveredBlock108Value2 := (recoveredBlock108Value0) printDamosOn: (recoveredBlock108Value1).
    recoveredBlock108Value2
].
            recoveredPC := 121.
        ].
        recoveredStep = 121 ifTrue: [
            (recoveredStack0) doWithIndex: (recoveredStack1).
            recoveredPC := 123.
        ].
        recoveredStep = 123 ifTrue: [
            recoveredStack0 := recoveredLocal5.
            recoveredPC := 126.
        ].
        recoveredStep = 126 ifTrue: [
            recoveredStack0 := (recoveredStack0) contents.
            recoveredPC := 128.
        ].
        recoveredStep = 128 ifTrue: [
            recoveredLocal4 := recoveredStack0.
            recoveredPC := 131.
        ].
        recoveredStep = 131 ifTrue: [
            recoveredStack0 := recoveredLocal5.
            recoveredPC := 134.
        ].
        recoveredStep = 134 ifTrue: [
            (recoveredStack0) close.
            recoveredPC := 136.
        ].
        recoveredStep = 136 ifTrue: [
            recoveredStack0 := textStream.
            recoveredPC := 138.
        ].
        recoveredStep = 138 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 139.
        ].
        recoveredStep = 139 ifTrue: [
            recoveredStack2 := recoveredLocal4.
            recoveredPC := 142.
        ].
        recoveredStep = 142 ifTrue: [
            recoveredStack1 := (recoveredStack1) withCrLfs: (recoveredStack2).
            recoveredPC := 144.
        ].
        recoveredStep = 144 ifTrue: [
            (recoveredStack0) nextPutAll: (recoveredStack1).
            recoveredPC := 146.
        ].
        recoveredStep = 146 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 147.
        ].
        recoveredStep = 147 ifTrue: [
            recoveredStack0 := (recoveredStack0) textStream.
            recoveredPC := 149.
        ].
        recoveredStep = 149 ifTrue: [
            (recoveredStack0) close.
            recoveredPC := 151.
        ].
        recoveredStep = 151 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 152.
        ].
        recoveredStep = 152 ifTrue: [
            textStream := recoveredStack0.
            recoveredPC := 154.
        ].
        recoveredStep = 154 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 155.
        ].
        recoveredStep = 155 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x204f509c; bytecode file offset 0xdf19b4"
!SGDAMOSCWriterTB methodsFor: 'recovered'!
writeDCF: recoveredArg1 with: recoveredArg2 onStream: recoveredArg3
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := ASDDAMOSOptions.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) instance.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) optionDamosFormatVersion.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := 2.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) == (recoveredStack2).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := (recoveredStack1) allOptions.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack2 := [:recoveredBlock24Arg1 | 
    | recoveredBlock24Stack0 recoveredBlock24Stack1 recoveredBlock24Stack2 recoveredBlock24Stack3 recoveredBlock24Stack4 recoveredBlock24Stack5 recoveredBlock24PC recoveredBlock24Step recoveredBlock24Done recoveredBlock24Result |
    recoveredBlock24Stack0 := self.
    recoveredBlock24PC := 30.
    recoveredBlock24Done := false.
    [recoveredBlock24Done not] whileTrue: [
        recoveredBlock24Step := recoveredBlock24PC.
        recoveredBlock24Step = 30 ifTrue: [
            recoveredBlock24Stack1 := 'Kk'.
            recoveredBlock24PC := 32.
        ].
        recoveredBlock24Step = 32 ifTrue: [
            recoveredBlock24Stack2 := 'Call_73315'.
            recoveredBlock24PC := 34.
        ].
        recoveredBlock24Step = 34 ifTrue: [
            recoveredBlock24Stack1 := (recoveredBlock24Stack1) == (recoveredBlock24Stack2).
            recoveredBlock24PC := 35.
        ].
        recoveredBlock24Step = 35 ifTrue: [
            recoveredBlock24PC := 36.
        ].
        recoveredBlock24Step = 36 ifTrue: [
            recoveredBlock24Stack1 := nil.
            recoveredBlock24PC := 37.
        ].
        recoveredBlock24Step = 37 ifTrue: [
            recoveredBlock24Stack2 := recoveredBlock24Arg1.
            recoveredBlock24PC := 38.
        ].
        recoveredBlock24Step = 38 ifTrue: [
            recoveredBlock24Stack2 := (recoveredBlock24Stack2) optionClass.
            recoveredBlock24PC := 40.
        ].
        recoveredBlock24Step = 40 ifTrue: [
            recoveredBlock24Stack2 := (recoveredBlock24Stack2) isContainerOption.
            recoveredBlock24PC := 42.
        ].
        recoveredBlock24Step = 42 ifTrue: [
            (recoveredBlock24Stack2) ifTrue: [recoveredBlock24PC := 46] ifFalse: [recoveredBlock24PC := 54].
        ].
        recoveredBlock24Step = 46 ifTrue: [
            recoveredBlock24Stack2 := recoveredBlock24Arg1.
            recoveredBlock24PC := 47.
        ].
        recoveredBlock24Step = 47 ifTrue: [
            recoveredBlock24Stack2 := (recoveredBlock24Stack2) optionClass.
            recoveredBlock24PC := 49.
        ].
        recoveredBlock24Step = 49 ifTrue: [
            recoveredBlock24Stack2 := (recoveredBlock24Stack2) changeable.
            recoveredBlock24PC := 51.
        ].
        recoveredBlock24Step = 51 ifTrue: [
            (recoveredBlock24Stack2) ifTrue: [recoveredBlock24PC := 54] ifFalse: [recoveredBlock24PC := 105].
        ].
        recoveredBlock24Step = 54 ifTrue: [
            recoveredBlock24PC := 55.
        ].
        recoveredBlock24Step = 55 ifTrue: [
            recoveredBlock24Stack1 := 'Kk'.
            recoveredBlock24PC := 57.
        ].
        recoveredBlock24Step = 57 ifTrue: [
            recoveredBlock24Stack2 := 'Call_71292'.
            recoveredBlock24PC := 59.
        ].
        recoveredBlock24Step = 59 ifTrue: [
            recoveredBlock24Stack1 := (recoveredBlock24Stack1) == (recoveredBlock24Stack2).
            recoveredBlock24PC := 60.
        ].
        recoveredBlock24Step = 60 ifTrue: [
            recoveredBlock24PC := 61.
        ].
        recoveredBlock24Step = 61 ifTrue: [
            recoveredBlock24Stack1 := nil.
            recoveredBlock24PC := 62.
        ].
        recoveredBlock24Step = 62 ifTrue: [
            recoveredBlock24Stack2 := recoveredLocal1.
            recoveredBlock24PC := 65.
        ].
        recoveredBlock24Step = 65 ifTrue: [
            (recoveredBlock24Stack2) ifTrue: [recoveredBlock24PC := 68] ifFalse: [recoveredBlock24PC := 78].
        ].
        recoveredBlock24Step = 68 ifTrue: [
            recoveredBlock24Stack2 := #('DamosV1WriteEnums' 'DamosV1WriteSamplingPoints').
            recoveredBlock24PC := 70.
        ].
        recoveredBlock24Step = 70 ifTrue: [
            recoveredBlock24Stack3 := recoveredBlock24Arg1.
            recoveredBlock24PC := 71.
        ].
        recoveredBlock24Step = 71 ifTrue: [
            recoveredBlock24Stack3 := (recoveredBlock24Stack3) attributeName.
            recoveredBlock24PC := 73.
        ].
        recoveredBlock24Step = 73 ifTrue: [
            recoveredBlock24Stack2 := (recoveredBlock24Stack2) includes: (recoveredBlock24Stack3).
            recoveredBlock24PC := 75.
        ].
        recoveredBlock24Step = 75 ifTrue: [
            (recoveredBlock24Stack2) ifTrue: [recoveredBlock24PC := 105] ifFalse: [recoveredBlock24PC := 78].
        ].
        recoveredBlock24Step = 78 ifTrue: [
            recoveredBlock24PC := 79.
        ].
        recoveredBlock24Step = 79 ifTrue: [
            recoveredBlock24Stack1 := recoveredArg3.
            recoveredBlock24PC := 82.
        ].
        recoveredBlock24Step = 82 ifTrue: [
            recoveredBlock24Stack2 := recoveredBlock24Stack1.
            recoveredBlock24PC := 83.
        ].
        recoveredBlock24Step = 83 ifTrue: [
            recoveredBlock24Stack3 := '* '.
            recoveredBlock24PC := 85.
        ].
        recoveredBlock24Step = 85 ifTrue: [
            recoveredBlock24Stack4 := recoveredBlock24Arg1.
            recoveredBlock24PC := 86.
        ].
        recoveredBlock24Step = 86 ifTrue: [
            recoveredBlock24Stack4 := (recoveredBlock24Stack4) attributeName.
            recoveredBlock24PC := 88.
        ].
        recoveredBlock24Step = 88 ifTrue: [
            recoveredBlock24Stack3 := (recoveredBlock24Stack3) , (recoveredBlock24Stack4).
            recoveredBlock24PC := 90.
        ].
        recoveredBlock24Step = 90 ifTrue: [
            recoveredBlock24Stack4 := ': '.
            recoveredBlock24PC := 92.
        ].
        recoveredBlock24Step = 92 ifTrue: [
            recoveredBlock24Stack3 := (recoveredBlock24Stack3) , (recoveredBlock24Stack4).
            recoveredBlock24PC := 94.
        ].
        recoveredBlock24Step = 94 ifTrue: [
            recoveredBlock24Stack4 := recoveredBlock24Arg1.
            recoveredBlock24PC := 95.
        ].
        recoveredBlock24Step = 95 ifTrue: [
            recoveredBlock24Stack4 := (recoveredBlock24Stack4) value.
            recoveredBlock24PC := 97.
        ].
        recoveredBlock24Step = 97 ifTrue: [
            recoveredBlock24Stack4 := (recoveredBlock24Stack4) printString.
            recoveredBlock24PC := 99.
        ].
        recoveredBlock24Step = 99 ifTrue: [
            recoveredBlock24Stack3 := (recoveredBlock24Stack3) , (recoveredBlock24Stack4).
            recoveredBlock24PC := 101.
        ].
        recoveredBlock24Step = 101 ifTrue: [
            (recoveredBlock24Stack2) nextPutAll: (recoveredBlock24Stack3).
            recoveredBlock24PC := 103.
        ].
        recoveredBlock24Step = 103 ifTrue: [
            recoveredBlock24Stack1 := (recoveredBlock24Stack1) cr.
            recoveredBlock24PC := 105.
        ].
        recoveredBlock24Step = 105 ifTrue: [
            recoveredBlock24Result := recoveredBlock24Stack1.
            recoveredBlock24Done := true.
        ].
    ].
    recoveredBlock24Result
].
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            (recoveredStack1) cr.
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 116.
        ].
        recoveredStep = 116 ifTrue: [
            recoveredStack1 := (recoveredStack1) optionDamosFormatVersion.
            recoveredPC := 117.
        ].
        recoveredStep = 117 ifTrue: [
            recoveredStack2 := 2.
            recoveredPC := 119.
        ].
        recoveredStep = 119 ifTrue: [
            recoveredStack1 := (recoveredStack1) >= (recoveredStack2).
            recoveredPC := 120.
        ].
        recoveredStep = 120 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 124] ifFalse: [recoveredPC := 148].
        ].
        recoveredStep = 124 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 125.
        ].
        recoveredStep = 125 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 126.
        ].
        recoveredStep = 126 ifTrue: [
            recoveredStack3 := recoveredArg3.
            recoveredPC := 129.
        ].
        recoveredStep = 129 ifTrue: [
            (recoveredStack2) writeVersionInfoOn: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 132.
        ].
        recoveredStep = 132 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 135.
        ].
        recoveredStep = 135 ifTrue: [
            recoveredStack4 := recoveredArg3.
            recoveredPC := 138.
        ].
        recoveredStep = 138 ifTrue: [
            (recoveredStack2) writeFunctionInfoFromElements: (recoveredStack3) on: (recoveredStack4).
            recoveredPC := 140.
        ].
        recoveredStep = 140 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 143.
        ].
        recoveredStep = 143 ifTrue: [
            recoveredStack3 := recoveredArg3.
            recoveredPC := 146.
        ].
        recoveredStep = 146 ifTrue: [
            (recoveredStack1) writeVariantCodingInfoFromElements: (recoveredStack2) on: (recoveredStack3).
            recoveredPC := 148.
        ].
        recoveredStep = 148 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 151.
        ].
        recoveredStep = 151 ifTrue: [
            recoveredStack2 := [:recoveredBlock151Arg1 | 
    | recoveredBlock151Value0 recoveredBlock151Value1 recoveredBlock151Value2 |
    recoveredBlock151Value0 := recoveredBlock151Arg1.
    recoveredBlock151Value1 := recoveredArg3.
    recoveredBlock151Value2 := (recoveredBlock151Value0) printDamosOn: (recoveredBlock151Value1).
    recoveredBlock151Value2
].
            recoveredPC := 165.
        ].
        recoveredStep = 165 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 167.
        ].
        recoveredStep = 167 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 170.
        ].
        recoveredStep = 170 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x205256fc; bytecode file offset 0xe22018"
!SGDAMOSCWriterTB methodsFor: 'recovered'!
writeFunctionInfoFromElements: recoveredArg1 on: recoveredArg2
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
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
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := [:recoveredBlock13Arg1 | 
    | recoveredBlock13Local1 recoveredBlock13Stack0 recoveredBlock13Stack1 recoveredBlock13Stack2 recoveredBlock13Stack3 recoveredBlock13Stack4 recoveredBlock13PC recoveredBlock13Step recoveredBlock13Done recoveredBlock13Result |
    recoveredBlock13Stack0 := self.
    recoveredBlock13PC := 20.
    recoveredBlock13Done := false.
    [recoveredBlock13Done not] whileTrue: [
        recoveredBlock13Step := recoveredBlock13PC.
        recoveredBlock13Step = 20 ifTrue: [
            recoveredBlock13Stack1 := nil.
            recoveredBlock13PC := 21.
        ].
        recoveredBlock13Step = 21 ifTrue: [
            recoveredBlock13Stack2 := recoveredBlock13Arg1.
            recoveredBlock13PC := 24.
        ].
        recoveredBlock13Step = 24 ifTrue: [
            recoveredBlock13Stack2 := (recoveredBlock13Stack2) functionList.
            recoveredBlock13PC := 25.
        ].
        recoveredBlock13Step = 25 ifTrue: [
            recoveredBlock13Stack3 := recoveredBlock13Stack2.
            recoveredBlock13PC := 26.
        ].
        recoveredBlock13Step = 26 ifTrue: [
            recoveredBlock13Local1 := recoveredBlock13Stack3.
            recoveredBlock13PC := 29.
        ].
        recoveredBlock13Step = 29 ifTrue: [
            (recoveredBlock13Stack2 == nil) ifTrue: [recoveredBlock13PC := 169] ifFalse: [recoveredBlock13PC := 32].
        ].
        recoveredBlock13Step = 32 ifTrue: [
            recoveredBlock13PC := 33.
        ].
        recoveredBlock13Step = 33 ifTrue: [
            recoveredBlock13Stack1 := ASDDAMOSOptions.
            recoveredBlock13PC := 35.
        ].
        recoveredBlock13Step = 35 ifTrue: [
            recoveredBlock13Stack1 := (recoveredBlock13Stack1) reduceFunctionOutput.
            recoveredBlock13PC := 37.
        ].
        recoveredBlock13Step = 37 ifTrue: [
            (recoveredBlock13Stack1) ifTrue: [recoveredBlock13PC := 40] ifFalse: [recoveredBlock13PC := 66].
        ].
        recoveredBlock13Step = 40 ifTrue: [
            recoveredBlock13Stack1 := recoveredBlock13Local1.
            recoveredBlock13PC := 43.
        ].
        recoveredBlock13Step = 43 ifTrue: [
            recoveredBlock13Stack2 := [:recoveredBlock13Block43Arg1 | 
    | recoveredBlock13Block43Value0 recoveredBlock13Block43Value1 recoveredBlock13Block43Value2 recoveredBlock13Block43Value3 recoveredBlock13Block43Value4 |
    recoveredBlock13Block43Value0 := recoveredBlock13Block43Arg1.
    recoveredBlock13Block43Value1 := (recoveredBlock13Block43Value0) defCharacteristic.
    recoveredBlock13Block43Value2 := recoveredBlock13Arg1.
    recoveredBlock13Block43Value3 := (recoveredBlock13Block43Value2) asap2Node.
    recoveredBlock13Block43Value4 := (recoveredBlock13Block43Value1) includes: (recoveredBlock13Block43Value3).
    recoveredBlock13Block43Value4
].
            recoveredBlock13PC := 61.
        ].
        recoveredBlock13Step = 61 ifTrue: [
            recoveredBlock13Stack1 := (recoveredBlock13Stack1) select: (recoveredBlock13Stack2).
            recoveredBlock13PC := 63.
        ].
        recoveredBlock13Step = 63 ifTrue: [
            recoveredBlock13Local1 := recoveredBlock13Stack1.
            recoveredBlock13PC := 66.
        ].
        recoveredBlock13Step = 66 ifTrue: [
            recoveredBlock13Stack1 := nil.
            recoveredBlock13PC := 67.
        ].
        recoveredBlock13Step = 67 ifTrue: [
            recoveredBlock13Stack2 := recoveredBlock13Local1.
            recoveredBlock13PC := 70.
        ].
        recoveredBlock13Step = 70 ifTrue: [
            recoveredBlock13Stack2 := (recoveredBlock13Stack2) notEmpty.
            recoveredBlock13PC := 72.
        ].
        recoveredBlock13Step = 72 ifTrue: [
            (recoveredBlock13Stack2) ifTrue: [recoveredBlock13PC := 76] ifFalse: [recoveredBlock13PC := 169].
        ].
        recoveredBlock13Step = 76 ifTrue: [
            recoveredBlock13PC := 77.
        ].
        recoveredBlock13Step = 77 ifTrue: [
            recoveredBlock13Stack1 := recoveredLocal1.
            recoveredBlock13PC := 80.
        ].
        recoveredBlock13Step = 80 ifTrue: [
            recoveredBlock13Stack1 := (recoveredBlock13Stack1) isEmpty.
            recoveredBlock13PC := 82.
        ].
        recoveredBlock13Step = 82 ifTrue: [
            (recoveredBlock13Stack1) ifTrue: [recoveredBlock13PC := 86] ifFalse: [recoveredBlock13PC := 96].
        ].
        recoveredBlock13Step = 86 ifTrue: [
            recoveredBlock13Stack1 := recoveredArg2.
            recoveredBlock13PC := 89.
        ].
        recoveredBlock13Step = 89 ifTrue: [
            recoveredBlock13Stack2 := recoveredBlock13Stack1.
            recoveredBlock13PC := 90.
        ].
        recoveredBlock13Step = 90 ifTrue: [
            recoveredBlock13Stack3 := 'FUNKTIONEN'.
            recoveredBlock13PC := 92.
        ].
        recoveredBlock13Step = 92 ifTrue: [
            (recoveredBlock13Stack2) nextPutAll: (recoveredBlock13Stack3).
            recoveredBlock13PC := 94.
        ].
        recoveredBlock13Step = 94 ifTrue: [
            (recoveredBlock13Stack1) cr.
            recoveredBlock13PC := 96.
        ].
        recoveredBlock13Step = 96 ifTrue: [
            recoveredBlock13Stack1 := recoveredBlock13Local1.
            recoveredBlock13PC := 99.
        ].
        recoveredBlock13Step = 99 ifTrue: [
            recoveredBlock13Stack2 := [:recoveredBlock13Block99Arg1 | 
    | recoveredBlock13Block99Stack0 recoveredBlock13Block99Stack1 recoveredBlock13Block99Stack2 recoveredBlock13Block99Stack3 recoveredBlock13Block99Stack4 recoveredBlock13Block99Stack5 recoveredBlock13Block99PC recoveredBlock13Block99Step recoveredBlock13Block99Done recoveredBlock13Block99Result |
    recoveredBlock13Block99Stack0 := nil.
    recoveredBlock13Block99PC := 106.
    recoveredBlock13Block99Done := false.
    [recoveredBlock13Block99Done not] whileTrue: [
        recoveredBlock13Block99Step := recoveredBlock13Block99PC.
        recoveredBlock13Block99Step = 106 ifTrue: [
            recoveredBlock13Block99Stack1 := nil.
            recoveredBlock13Block99PC := 107.
        ].
        recoveredBlock13Block99Step = 107 ifTrue: [
            recoveredBlock13Block99Stack2 := recoveredLocal1.
            recoveredBlock13Block99PC := 110.
        ].
        recoveredBlock13Block99Step = 110 ifTrue: [
            recoveredBlock13Block99Stack3 := recoveredBlock13Block99Arg1.
            recoveredBlock13Block99PC := 111.
        ].
        recoveredBlock13Block99Step = 111 ifTrue: [
            recoveredBlock13Block99Stack3 := (recoveredBlock13Block99Stack3) name.
            recoveredBlock13Block99PC := 113.
        ].
        recoveredBlock13Block99Step = 113 ifTrue: [
            recoveredBlock13Block99Stack2 := (recoveredBlock13Block99Stack2) includes: (recoveredBlock13Block99Stack3).
            recoveredBlock13Block99PC := 115.
        ].
        recoveredBlock13Block99Step = 115 ifTrue: [
            (recoveredBlock13Block99Stack2) ifTrue: [recoveredBlock13Block99PC := 166] ifFalse: [recoveredBlock13Block99PC := 118].
        ].
        recoveredBlock13Block99Step = 118 ifTrue: [
            recoveredBlock13Block99PC := 119.
        ].
        recoveredBlock13Block99Step = 119 ifTrue: [
            recoveredBlock13Block99Stack1 := recoveredArg2.
            recoveredBlock13Block99PC := 122.
        ].
        recoveredBlock13Block99Step = 122 ifTrue: [
            recoveredBlock13Block99Stack2 := recoveredBlock13Block99Stack1.
            recoveredBlock13Block99PC := 123.
        ].
        recoveredBlock13Block99Step = 123 ifTrue: [
            recoveredBlock13Block99Stack3 := '   FKT '.
            recoveredBlock13Block99PC := 125.
        ].
        recoveredBlock13Block99Step = 125 ifTrue: [
            recoveredBlock13Block99Stack4 := recoveredBlock13Block99Arg1.
            recoveredBlock13Block99PC := 126.
        ].
        recoveredBlock13Block99Step = 126 ifTrue: [
            recoveredBlock13Block99Stack4 := (recoveredBlock13Block99Stack4) name.
            recoveredBlock13Block99PC := 128.
        ].
        recoveredBlock13Block99Step = 128 ifTrue: [
            recoveredBlock13Block99Stack3 := (recoveredBlock13Block99Stack3) , (recoveredBlock13Block99Stack4).
            recoveredBlock13Block99PC := 130.
        ].
        recoveredBlock13Block99Step = 130 ifTrue: [
            recoveredBlock13Block99Stack4 := ' "'.
            recoveredBlock13Block99PC := 132.
        ].
        recoveredBlock13Block99Step = 132 ifTrue: [
            recoveredBlock13Block99Stack3 := (recoveredBlock13Block99Stack3) , (recoveredBlock13Block99Stack4).
            recoveredBlock13Block99PC := 134.
        ].
        recoveredBlock13Block99Step = 134 ifTrue: [
            recoveredBlock13Block99Stack4 := recoveredBlock13Block99Arg1.
            recoveredBlock13Block99PC := 135.
        ].
        recoveredBlock13Block99Step = 135 ifTrue: [
            recoveredBlock13Block99Stack4 := (recoveredBlock13Block99Stack4) functionVersion.
            recoveredBlock13Block99PC := 137.
        ].
        recoveredBlock13Block99Step = 137 ifTrue: [
            recoveredBlock13Block99Stack4 := (recoveredBlock13Block99Stack4) asString.
            recoveredBlock13Block99PC := 139.
        ].
        recoveredBlock13Block99Step = 139 ifTrue: [
            recoveredBlock13Block99Stack3 := (recoveredBlock13Block99Stack3) , (recoveredBlock13Block99Stack4).
            recoveredBlock13Block99PC := 141.
        ].
        recoveredBlock13Block99Step = 141 ifTrue: [
            recoveredBlock13Block99Stack4 := '" "'.
            recoveredBlock13Block99PC := 143.
        ].
        recoveredBlock13Block99Step = 143 ifTrue: [
            recoveredBlock13Block99Stack3 := (recoveredBlock13Block99Stack3) , (recoveredBlock13Block99Stack4).
            recoveredBlock13Block99PC := 145.
        ].
        recoveredBlock13Block99Step = 145 ifTrue: [
            recoveredBlock13Block99Stack4 := recoveredBlock13Block99Arg1.
            recoveredBlock13Block99PC := 146.
        ].
        recoveredBlock13Block99Step = 146 ifTrue: [
            recoveredBlock13Block99Stack4 := (recoveredBlock13Block99Stack4) longName.
            recoveredBlock13Block99PC := 148.
        ].
        recoveredBlock13Block99Step = 148 ifTrue: [
            recoveredBlock13Block99Stack3 := (recoveredBlock13Block99Stack3) , (recoveredBlock13Block99Stack4).
            recoveredBlock13Block99PC := 150.
        ].
        recoveredBlock13Block99Step = 150 ifTrue: [
            recoveredBlock13Block99Stack4 := '"'.
            recoveredBlock13Block99PC := 152.
        ].
        recoveredBlock13Block99Step = 152 ifTrue: [
            recoveredBlock13Block99Stack3 := (recoveredBlock13Block99Stack3) , (recoveredBlock13Block99Stack4).
            recoveredBlock13Block99PC := 154.
        ].
        recoveredBlock13Block99Step = 154 ifTrue: [
            (recoveredBlock13Block99Stack2) nextPutAll: (recoveredBlock13Block99Stack3).
            recoveredBlock13Block99PC := 156.
        ].
        recoveredBlock13Block99Step = 156 ifTrue: [
            (recoveredBlock13Block99Stack1) cr.
            recoveredBlock13Block99PC := 158.
        ].
        recoveredBlock13Block99Step = 158 ifTrue: [
            recoveredBlock13Block99Stack1 := recoveredLocal1.
            recoveredBlock13Block99PC := 161.
        ].
        recoveredBlock13Block99Step = 161 ifTrue: [
            recoveredBlock13Block99Stack2 := recoveredBlock13Block99Arg1.
            recoveredBlock13Block99PC := 162.
        ].
        recoveredBlock13Block99Step = 162 ifTrue: [
            recoveredBlock13Block99Stack2 := (recoveredBlock13Block99Stack2) name.
            recoveredBlock13Block99PC := 164.
        ].
        recoveredBlock13Block99Step = 164 ifTrue: [
            recoveredBlock13Block99Stack1 := (recoveredBlock13Block99Stack1) add: (recoveredBlock13Block99Stack2).
            recoveredBlock13Block99PC := 166.
        ].
        recoveredBlock13Block99Step = 166 ifTrue: [
            recoveredBlock13Block99Result := recoveredBlock13Block99Stack1.
            recoveredBlock13Block99Done := true.
        ].
    ].
    recoveredBlock13Block99Result
].
            recoveredBlock13PC := 167.
        ].
        recoveredBlock13Step = 167 ifTrue: [
            recoveredBlock13Stack1 := (recoveredBlock13Stack1) do: (recoveredBlock13Stack2).
            recoveredBlock13PC := 169.
        ].
        recoveredBlock13Step = 169 ifTrue: [
            recoveredBlock13Result := recoveredBlock13Stack1.
            recoveredBlock13Done := true.
        ].
    ].
    recoveredBlock13Result
].
            recoveredPC := 170.
        ].
        recoveredStep = 170 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 172.
        ].
        recoveredStep = 172 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 175.
        ].
        recoveredStep = 175 ifTrue: [
            recoveredStack1 := (recoveredStack1) notEmpty.
            recoveredPC := 177.
        ].
        recoveredStep = 177 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 180] ifFalse: [recoveredPC := 193].
        ].
        recoveredStep = 180 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 183.
        ].
        recoveredStep = 183 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 184.
        ].
        recoveredStep = 184 ifTrue: [
            recoveredStack3 := 'END'.
            recoveredPC := 186.
        ].
        recoveredStep = 186 ifTrue: [
            (recoveredStack2) nextPutAll: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 189.
        ].
        recoveredStep = 189 ifTrue: [
            (recoveredStack2) cr.
            recoveredPC := 191.
        ].
        recoveredStep = 191 ifTrue: [
            (recoveredStack1) cr.
            recoveredPC := 193.
        ].
        recoveredStep = 193 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 196.
        ].
        recoveredStep = 196 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

