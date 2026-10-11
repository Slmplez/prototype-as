"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x200e59d4; bytecode file offset 0x9e2298"
!RBMDFStorageManager methodsFor: 'recovered'!
errorSaveMeasureDataFailed
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) class.
    recoveredValue1 := (recoveredValue0) defaultErrorClass.
    (recoveredValue1) saveMeasureDataFailed.
    recoveredValue2 := mdfLib.
    (recoveredValue2) close.
    ^false
! !

"ASDBase.ic method 0x202451c4; bytecode file offset 0xb41ab8"
!RBMDFStorageManager methodsFor: 'recovered'!
saveOnlineDLLData: recoveredArg1 in: recoveredArg2 header: recoveredArg3
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
            acquisitionList := recoveredStack1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack2 := recoveredArg3.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) writeOnlineDLLToMDF: (recoveredStack1) mdfHeader: (recoveredStack2).
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 21].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := (recoveredStack0) class.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            (recoveredStack0) lastFileName: (recoveredStack1).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            (recoveredStack0) freeOnlineDLLBuffers.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := recoveredArg3.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := ''.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            (recoveredStack0) text: (recoveredStack1).
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := (recoveredStack0) class.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            (recoveredStack0) mdfHeader: (recoveredStack1).
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x202d6b68; bytecode file offset 0xbd3438"
!RBMDFStorageManager methodsFor: 'recovered'!
createMDFDigitalChannelFor: recoveredArg1 inGroup: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredStack7 recoveredStack8 recoveredStack9 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) wName.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := 1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := MDFValueUnsigned.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := 'Muzaffar'.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := 'EHI_1003505'.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := (recoveredStack1) == (recoveredStack2).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := mdfLib.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack3 := MDFChnValue.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack4 := recoveredLocal2.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack5 := recoveredLocal3.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack6 := recoveredLocal4.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack7 := recoveredArg1.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack7 := (recoveredStack7) text.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack8 := recoveredLocal4.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := (recoveredStack1) chnCreate: (recoveredStack2) type: (recoveredStack3) valNbits: (recoveredStack4) valType: (recoveredStack5) name: (recoveredStack6) description: (recoveredStack7) text: (recoveredStack8).
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredLocal5 := recoveredStack2.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 46] ifFalse: [recoveredPC := 44].
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x20321880; bytecode file offset 0xc1e148"
!RBMDFStorageManager methodsFor: 'recovered'!
winDWordList: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := ByteArray.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue1) size.
    recoveredValue3 := (recoveredValue2) * (4).
    recoveredValue4 := (recoveredValue0) new: (recoveredValue3).
    recoveredLocal2 := recoveredValue4.
    recoveredLocal1 := 0.
    recoveredValue5 := recoveredArg1.
    recoveredValue6 := [:recoveredBlock25Arg1 | 
    | recoveredBlock25Value0 recoveredBlock25Value1 recoveredBlock25Value2 recoveredBlock25Value3 recoveredBlock25Value4 recoveredBlock25Value5 |
    recoveredBlock25Value0 := recoveredLocal2.
    recoveredBlock25Value1 := recoveredLocal1.
    recoveredBlock25Value2 := recoveredBlock25Arg1.
    (recoveredBlock25Value0) uint32At: (recoveredBlock25Value1) put: (recoveredBlock25Value2).
    recoveredBlock25Value3 := recoveredLocal1.
    recoveredBlock25Value4 := (recoveredBlock25Value3) + (4).
    recoveredBlock25Value5 := recoveredBlock25Value4.
    recoveredLocal1 := recoveredBlock25Value5.
    recoveredBlock25Value4
].
    (recoveredValue5) do: (recoveredValue6).
    recoveredValue7 := recoveredLocal2.
    ^recoveredValue7
! !

"ASDBase.ic method 0x203668fc; bytecode file offset 0xc631c4"
!RBMDFStorageManager methodsFor: 'recovered'!
winMDFChannelList: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := ByteArray.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue1) size.
    recoveredValue3 := (recoveredValue2) * (4).
    recoveredValue4 := (recoveredValue0) new: (recoveredValue3).
    recoveredLocal2 := recoveredValue4.
    recoveredLocal1 := 1.
    recoveredValue5 := recoveredArg1.
    recoveredValue6 := [:recoveredBlock25Arg1 | 
    | recoveredBlock25Value0 recoveredBlock25Value1 recoveredBlock25Value2 recoveredBlock25Value3 recoveredBlock25Value4 recoveredBlock25Value5 recoveredBlock25Value6 recoveredBlock25Value7 |
    recoveredBlock25Value0 := recoveredLocal2.
    recoveredBlock25Value1 := recoveredLocal1.
    recoveredBlock25Value2 := recoveredLocal1.
    recoveredBlock25Value3 := (recoveredBlock25Value2) + (3).
    recoveredBlock25Value4 := recoveredBlock25Arg1.
    (recoveredBlock25Value0) replaceFrom: (recoveredBlock25Value1) to: (recoveredBlock25Value3) with: (recoveredBlock25Value4) startingAt: (1).
    recoveredBlock25Value5 := recoveredLocal1.
    recoveredBlock25Value6 := (recoveredBlock25Value5) + (4).
    recoveredBlock25Value7 := recoveredBlock25Value6.
    recoveredLocal1 := recoveredBlock25Value7.
    recoveredBlock25Value6
].
    (recoveredValue5) do: (recoveredValue6).
    recoveredValue7 := recoveredLocal2.
    ^recoveredValue7
! !

"ASDBase.ic method 0x2039e1cc; bytecode file offset 0xc9aacc"
!RBMDFStorageManager methodsFor: 'recovered'!
writeMDFHeader: recoveredArg1 toFile: recoveredArg2
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 recoveredValue21 recoveredValue22 recoveredValue23 recoveredValue24 recoveredValue25 recoveredValue26 recoveredValue27 recoveredValue28 recoveredValue29 recoveredValue30 recoveredValue31 recoveredValue32 recoveredValue33 recoveredValue34 recoveredValue35 recoveredValue36 recoveredValue37 recoveredValue38 recoveredValue39 recoveredValue40 |
    recoveredValue0 := (self) oemConverter.
    recoveredLocal1 := recoveredValue0.
    recoveredValue1 := mdfLib.
    recoveredValue2 := recoveredValue1.
    recoveredValue3 := recoveredArg2.
    recoveredValue4 := Date.
    recoveredValue5 := (recoveredValue4) today.
    recoveredValue6 := (recoveredValue5) printString.
    (recoveredValue2) fileSetDate: (recoveredValue3) date: (recoveredValue6).
    recoveredValue7 := recoveredValue1.
    recoveredValue8 := recoveredArg2.
    recoveredValue9 := Time.
    recoveredValue10 := (recoveredValue9) now.
    recoveredValue11 := (recoveredValue10) printString.
    (recoveredValue7) fileSetTime: (recoveredValue8) time: (recoveredValue11).
    recoveredValue12 := recoveredValue1.
    recoveredValue13 := recoveredArg2.
    recoveredValue14 := recoveredLocal1.
    recoveredValue15 := recoveredArg1.
    recoveredValue16 := (recoveredValue15) division.
    recoveredValue17 := (recoveredValue14) charToOem: (recoveredValue16).
    (recoveredValue12) fileSetDivision: (recoveredValue13) division: (recoveredValue17).
    recoveredValue18 := recoveredValue1.
    recoveredValue19 := recoveredArg2.
    recoveredValue20 := recoveredLocal1.
    recoveredValue21 := recoveredArg1.
    recoveredValue22 := (recoveredValue21) name.
    recoveredValue23 := (recoveredValue20) charToOem: (recoveredValue22).
    (recoveredValue18) fileSetName: (recoveredValue19) name: (recoveredValue23).
    recoveredValue24 := recoveredValue1.
    recoveredValue25 := recoveredArg2.
    recoveredValue26 := recoveredLocal1.
    recoveredValue27 := recoveredArg1.
    recoveredValue28 := (recoveredValue27) project.
    recoveredValue29 := (recoveredValue26) charToOem: (recoveredValue28).
    (recoveredValue24) fileSetProject: (recoveredValue25) project: (recoveredValue29).
    recoveredValue30 := recoveredValue1.
    recoveredValue31 := recoveredArg2.
    recoveredValue32 := recoveredLocal1.
    recoveredValue33 := recoveredArg1.
    recoveredValue34 := (recoveredValue33) subject.
    recoveredValue35 := (recoveredValue32) charToOem: (recoveredValue34).
    (recoveredValue30) fileSetSubject: (recoveredValue31) subject: (recoveredValue35).
    recoveredValue36 := recoveredArg2.
    recoveredValue37 := recoveredLocal1.
    recoveredValue38 := recoveredArg1.
    recoveredValue39 := (recoveredValue38) text.
    recoveredValue40 := (recoveredValue37) charToOem: (recoveredValue39).
    (recoveredValue1) fileSetText: (recoveredValue36) text: (recoveredValue40).
    ^self
! !

"ASDBase.ic method 0x204655a0; bytecode file offset 0xd61e98"
!RBMDFStorageManager methodsFor: 'recovered'!
createMDFChannelFor: recoveredArg1 inGroup: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredStack7 recoveredStack8 recoveredStack9 recoveredStack10 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) wName.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := (recoveredStack1) dataType.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) byteSize.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := 'Muzaffar'.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := 'EHI_1003505'.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := (recoveredStack1) == (recoveredStack2).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := (recoveredStack1) text.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := (recoveredStack1) dataType.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := (recoveredStack1) isRBFloat.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 32] ifFalse: [recoveredPC := 42].
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := MDFValueFloat.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := 4.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredPC := 59.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack1 := (recoveredStack1) dataType.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack1 := (recoveredStack1) isSigned.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 50] ifFalse: [recoveredPC := 56].
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack1 := MDFValueSigned.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredPC := 59.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack1 := MDFValueUnsigned.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack1 := 'Muzaffar'.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack2 := 'EHI_1003505'.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack1 := (recoveredStack1) == (recoveredStack2).
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack1 := mdfLib.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack3 := MDFChnValue.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack4 := recoveredLocal2.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack5 := 8.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack4 := (recoveredStack4) * (recoveredStack5).
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack5 := recoveredLocal3.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack6 := self.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack6 := (recoveredStack6) oemConverter.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack7 := recoveredLocal4.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack6 := (recoveredStack6) charToOem: (recoveredStack7).
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack7 := recoveredLocal1.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack8 := self.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack8 := (recoveredStack8) oemConverter.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack9 := recoveredLocal4.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredStack8 := (recoveredStack8) charToOem: (recoveredStack9).
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack1 := (recoveredStack1) chnCreate: (recoveredStack2) type: (recoveredStack3) valNbits: (recoveredStack4) valType: (recoveredStack5) name: (recoveredStack6) description: (recoveredStack7) text: (recoveredStack8).
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredLocal5 := recoveredStack2.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 100] ifFalse: [recoveredPC := 98].
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            recoveredStack1 := (recoveredStack1) wFormula.
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            recoveredStack2 := mdfLib.
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            recoveredStack3 := recoveredLocal5.
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            recoveredStack1 := (recoveredStack1) setMDFFormulaIn: (recoveredStack2) channel: (recoveredStack3).
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 116] ifFalse: [recoveredPC := 114].
        ].
        recoveredStep = 114 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 116 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 118.
        ].
        recoveredStep = 118 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x20553e88; bytecode file offset 0xe50784"
!RBMDFStorageManager methodsFor: 'recovered'!
writeMDFTo: recoveredArg1 mdfHeader: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := INKAMDFLib.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) createDefault.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            mdfLib := recoveredStack2.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := mdfLib.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack2 := 'INCA'.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := (recoveredStack1) open: (recoveredStack2).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 26] ifFalse: [recoveredPC := 24].
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := mdfLib.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack3 := MDFOpenCreate.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := (recoveredStack1) fileOpen: (recoveredStack2) mode: (recoveredStack3).
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredLocal5 := recoveredStack2.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 46] ifFalse: [recoveredPC := 42].
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack1 := (recoveredStack1) errorSaveMeasureDataFailed.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack2 := recoveredLocal5.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            (recoveredStack0) writeMDFHeader: (recoveredStack1) toFile: (recoveredStack2).
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack0 := 1.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack0 := true.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack0 := acquisitionList.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack1 := [:recoveredBlock65Arg1 | 
    | recoveredBlock65Local1 recoveredBlock65Value0 recoveredBlock65Value1 recoveredBlock65Value2 recoveredBlock65Value3 recoveredBlock65Value4 recoveredBlock65Value5 |
    recoveredBlock65Value0 := acquisitionList.
    recoveredBlock65Value1 := recoveredBlock65Arg1.
    recoveredBlock65Value2 := (recoveredBlock65Value0) at: (recoveredBlock65Value1).
    recoveredBlock65Local1 := recoveredBlock65Value2.
    recoveredBlock65Value3 := recoveredBlock65Local1.
    recoveredBlock65Value4 := [:recoveredBlock65Block85Arg1 | 
    | recoveredBlock65Block85Stack0 recoveredBlock65Block85Stack1 recoveredBlock65Block85Stack2 recoveredBlock65Block85Stack3 recoveredBlock65Block85Stack4 recoveredBlock65Block85Stack5 recoveredBlock65Block85Stack6 recoveredBlock65Block85Stack7 recoveredBlock65Block85PC recoveredBlock65Block85Step recoveredBlock65Block85Done recoveredBlock65Block85Result |
    recoveredBlock65Block85Stack0 := self.
    recoveredBlock65Block85PC := 92.
    recoveredBlock65Block85Done := false.
    [recoveredBlock65Block85Done not] whileTrue: [
        recoveredBlock65Block85Step := recoveredBlock65Block85PC.
        recoveredBlock65Block85Step = 92 ifTrue: [
            recoveredBlock65Block85Stack1 := nil.
            recoveredBlock65Block85PC := 93.
        ].
        recoveredBlock65Block85Step = 93 ifTrue: [
            recoveredBlock65Block85Stack2 := recoveredLocal2.
            recoveredBlock65Block85PC := 96.
        ].
        recoveredBlock65Block85Step = 96 ifTrue: [
            (recoveredBlock65Block85Stack2) ifTrue: [recoveredBlock65Block85PC := 100] ifFalse: [recoveredBlock65Block85PC := 205].
        ].
        recoveredBlock65Block85Step = 100 ifTrue: [
            recoveredBlock65Block85PC := 101.
        ].
        recoveredBlock65Block85Step = 101 ifTrue: [
            recoveredBlock65Block85Stack1 := mdfLib.
            recoveredBlock65Block85PC := 103.
        ].
        recoveredBlock65Block85Step = 103 ifTrue: [
            recoveredBlock65Block85Stack2 := recoveredLocal5.
            recoveredBlock65Block85PC := 106.
        ].
        recoveredBlock65Block85Step = 106 ifTrue: [
            recoveredBlock65Block85Stack3 := recoveredLocal3.
            recoveredBlock65Block85PC := 109.
        ].
        recoveredBlock65Block85Step = 109 ifTrue: [
            recoveredBlock65Block85Stack4 := MDFOpenCreate.
            recoveredBlock65Block85PC := 111.
        ].
        recoveredBlock65Block85Step = 111 ifTrue: [
            recoveredBlock65Block85Stack1 := (recoveredBlock65Block85Stack1) grpOpen: (recoveredBlock65Block85Stack2) groupNo: (recoveredBlock65Block85Stack3) mode: (recoveredBlock65Block85Stack4).
            recoveredBlock65Block85PC := 114.
        ].
        recoveredBlock65Block85Step = 114 ifTrue: [
            recoveredBlock65Block85Stack2 := recoveredBlock65Block85Stack1.
            recoveredBlock65Block85PC := 115.
        ].
        recoveredBlock65Block85Step = 115 ifTrue: [
            recoveredLocal4 := recoveredBlock65Block85Stack2.
            recoveredBlock65Block85PC := 118.
        ].
        recoveredBlock65Block85Step = 118 ifTrue: [
            (recoveredBlock65Block85Stack1 ~~ nil) ifTrue: [recoveredBlock65Block85PC := 126] ifFalse: [recoveredBlock65Block85PC := 122].
        ].
        recoveredBlock65Block85Step = 122 ifTrue: [
            recoveredBlock65Block85Stack1 := self.
            recoveredBlock65Block85PC := 123.
        ].
        recoveredBlock65Block85Step = 123 ifTrue: [
            recoveredBlock65Block85Stack1 := (recoveredBlock65Block85Stack1) errorSaveMeasureDataFailed.
            recoveredBlock65Block85PC := 125.
        ].
        recoveredBlock65Block85Step = 125 ifTrue: [
            ^recoveredBlock65Block85Stack1
        ].
        recoveredBlock65Block85Step = 126 ifTrue: [
            recoveredBlock65Block85Stack1 := self.
            recoveredBlock65Block85PC := 127.
        ].
        recoveredBlock65Block85Step = 127 ifTrue: [
            recoveredBlock65Block85Stack2 := recoveredLocal4.
            recoveredBlock65Block85PC := 130.
        ].
        recoveredBlock65Block85Step = 130 ifTrue: [
            recoveredBlock65Block85Stack3 := recoveredBlock65Block85Arg1.
            recoveredBlock65Block85PC := 131.
        ].
        recoveredBlock65Block85Step = 131 ifTrue: [
            recoveredBlock65Block85Stack4 := recoveredBlock65Local1.
            recoveredBlock65Block85PC := 134.
        ].
        recoveredBlock65Block85Step = 134 ifTrue: [
            recoveredBlock65Block85Stack5 := recoveredBlock65Block85Arg1.
            recoveredBlock65Block85PC := 135.
        ].
        recoveredBlock65Block85Step = 135 ifTrue: [
            recoveredBlock65Block85Stack4 := (recoveredBlock65Block85Stack4) at: (recoveredBlock65Block85Stack5).
            recoveredBlock65Block85PC := 137.
        ].
        recoveredBlock65Block85Step = 137 ifTrue: [
            recoveredBlock65Block85Stack5 := recoveredBlock65Arg1.
            recoveredBlock65Block85PC := 140.
        ].
        recoveredBlock65Block85Step = 140 ifTrue: [
            recoveredBlock65Block85Stack6 := recoveredLocal3.
            recoveredBlock65Block85PC := 143.
        ].
        recoveredBlock65Block85Step = 143 ifTrue: [
            recoveredBlock65Block85Stack1 := (recoveredBlock65Block85Stack1) createAndSetupMDFChannelsInGroup: (recoveredBlock65Block85Stack2) level: (recoveredBlock65Block85Stack3) dataList: (recoveredBlock65Block85Stack4) device: (recoveredBlock65Block85Stack5) groupNo: (recoveredBlock65Block85Stack6).
            recoveredBlock65Block85PC := 146.
        ].
        recoveredBlock65Block85Step = 146 ifTrue: [
            recoveredBlock65Block85Stack2 := recoveredBlock65Block85Stack1.
            recoveredBlock65Block85PC := 147.
        ].
        recoveredBlock65Block85Step = 147 ifTrue: [
            recoveredLocal1 := recoveredBlock65Block85Stack2.
            recoveredBlock65Block85PC := 150.
        ].
        recoveredBlock65Block85Step = 150 ifTrue: [
            (recoveredBlock65Block85Stack1 ~~ nil) ifTrue: [recoveredBlock65Block85PC := 158] ifFalse: [recoveredBlock65Block85PC := 154].
        ].
        recoveredBlock65Block85Step = 154 ifTrue: [
            recoveredBlock65Block85Stack1 := self.
            recoveredBlock65Block85PC := 155.
        ].
        recoveredBlock65Block85Step = 155 ifTrue: [
            recoveredBlock65Block85Stack1 := (recoveredBlock65Block85Stack1) errorSaveMeasureDataFailed.
            recoveredBlock65Block85PC := 157.
        ].
        recoveredBlock65Block85Step = 157 ifTrue: [
            ^recoveredBlock65Block85Stack1
        ].
        recoveredBlock65Block85Step = 158 ifTrue: [
            recoveredBlock65Block85Stack1 := recoveredBlock65Arg1.
            recoveredBlock65Block85PC := 161.
        ].
        recoveredBlock65Block85Step = 161 ifTrue: [
            recoveredBlock65Block85Stack2 := recoveredBlock65Block85Arg1.
            recoveredBlock65Block85PC := 162.
        ].
        recoveredBlock65Block85Step = 162 ifTrue: [
            recoveredBlock65Block85Stack1 := (recoveredBlock65Block85Stack1) storeOfflineData: (recoveredBlock65Block85Stack2).
            recoveredBlock65Block85PC := 164.
        ].
        recoveredBlock65Block85Step = 164 ifTrue: [
            (recoveredBlock65Block85Stack1) ifTrue: [recoveredBlock65Block85PC := 172] ifFalse: [recoveredBlock65Block85PC := 168].
        ].
        recoveredBlock65Block85Step = 168 ifTrue: [
            recoveredBlock65Block85Stack1 := self.
            recoveredBlock65Block85PC := 169.
        ].
        recoveredBlock65Block85Step = 169 ifTrue: [
            recoveredBlock65Block85Stack1 := (recoveredBlock65Block85Stack1) errorSaveMeasureDataFailed.
            recoveredBlock65Block85PC := 171.
        ].
        recoveredBlock65Block85Step = 171 ifTrue: [
            ^recoveredBlock65Block85Stack1
        ].
        recoveredBlock65Block85Step = 172 ifTrue: [
            recoveredBlock65Block85Stack1 := recoveredLocal1.
            recoveredBlock65Block85PC := 175.
        ].
        recoveredBlock65Block85Step = 175 ifTrue: [
            recoveredBlock65Block85Stack2 := [:recoveredBlock65Block85Block175Arg1 | 
    | recoveredBlock65Block85Block175Value0 recoveredBlock65Block85Block175Value1 recoveredBlock65Block85Block175Value2 |
    recoveredBlock65Block85Block175Value0 := mdfLib.
    recoveredBlock65Block85Block175Value1 := recoveredBlock65Block85Block175Arg1.
    recoveredBlock65Block85Block175Value2 := (recoveredBlock65Block85Block175Value0) chnClose: (recoveredBlock65Block85Block175Value1).
    recoveredBlock65Block85Block175Value2
].
            recoveredBlock65Block85PC := 188.
        ].
        recoveredBlock65Block85Step = 188 ifTrue: [
            (recoveredBlock65Block85Stack1) do: (recoveredBlock65Block85Stack2).
            recoveredBlock65Block85PC := 190.
        ].
        recoveredBlock65Block85Step = 190 ifTrue: [
            recoveredBlock65Block85Stack1 := mdfLib.
            recoveredBlock65Block85PC := 192.
        ].
        recoveredBlock65Block85Step = 192 ifTrue: [
            recoveredBlock65Block85Stack2 := recoveredLocal4.
            recoveredBlock65Block85PC := 195.
        ].
        recoveredBlock65Block85Step = 195 ifTrue: [
            (recoveredBlock65Block85Stack1) grpClose: (recoveredBlock65Block85Stack2).
            recoveredBlock65Block85PC := 197.
        ].
        recoveredBlock65Block85Step = 197 ifTrue: [
            recoveredBlock65Block85Stack1 := recoveredLocal3.
            recoveredBlock65Block85PC := 200.
        ].
        recoveredBlock65Block85Step = 200 ifTrue: [
            recoveredBlock65Block85Stack1 := (recoveredBlock65Block85Stack1) + (1).
            recoveredBlock65Block85PC := 201.
        ].
        recoveredBlock65Block85Step = 201 ifTrue: [
            recoveredBlock65Block85Stack2 := recoveredBlock65Block85Stack1.
            recoveredBlock65Block85PC := 202.
        ].
        recoveredBlock65Block85Step = 202 ifTrue: [
            recoveredLocal3 := recoveredBlock65Block85Stack2.
            recoveredBlock65Block85PC := 205.
        ].
        recoveredBlock65Block85Step = 205 ifTrue: [
            recoveredBlock65Block85Result := recoveredBlock65Block85Stack1.
            recoveredBlock65Block85Done := true.
        ].
    ].
    recoveredBlock65Block85Result
].
    recoveredBlock65Value5 := (recoveredBlock65Value3) keysDo: (recoveredBlock65Value4).
    recoveredBlock65Value5
].
            recoveredPC := 209.
        ].
        recoveredStep = 209 ifTrue: [
            (recoveredStack0) keysDo: (recoveredStack1).
            recoveredPC := 211.
        ].
        recoveredStep = 211 ifTrue: [
            recoveredStack0 := mdfLib.
            recoveredPC := 213.
        ].
        recoveredStep = 213 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 214.
        ].
        recoveredStep = 214 ifTrue: [
            recoveredStack2 := recoveredLocal5.
            recoveredPC := 217.
        ].
        recoveredStep = 217 ifTrue: [
            (recoveredStack1) fileClose: (recoveredStack2).
            recoveredPC := 219.
        ].
        recoveredStep = 219 ifTrue: [
            (recoveredStack0) close.
            recoveredPC := 221.
        ].
        recoveredStep = 221 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 224.
        ].
        recoveredStep = 224 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2055a26c; bytecode file offset 0xe56b9c"
!RBMDFStorageManager methodsFor: 'recovered'!
createAndSetupMDFChannelsInGroup: recoveredArg1 level: recoveredArg2 dataList: recoveredArg3 device: recoveredArg4 groupNo: recoveredArg5
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredLocal6 recoveredLocal7 recoveredLocal8 recoveredLocal9 recoveredLocal10 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredStack7 recoveredStack8 recoveredStack9 recoveredPC recoveredStep |
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
            recoveredLocal9 := recoveredStack1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := OrderedCollection.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) oemConverter.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := 32.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredLocal8 := recoveredStack0.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := MDFValueUnsigned.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredLocal7 := recoveredStack0.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := recoveredArg3.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := (recoveredStack0) someElement.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := (recoveredStack0) xName.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredLocal6 := recoveredStack0.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack0 := recoveredArg3.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack0 := (recoveredStack0) someElement.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack0 := (recoveredStack0) xUnit.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredLocal5 := recoveredStack0.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack0 := 'Muzaffar'.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack1 := 'EHI_1003505'.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack0 := (recoveredStack0) == (recoveredStack1).
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack0 := mdfLib.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack2 := MDFChnTime.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack3 := recoveredLocal8.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack4 := recoveredLocal7.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack5 := recoveredLocal2.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack6 := recoveredLocal6.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack5 := (recoveredStack5) charToOem: (recoveredStack6).
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack6 := recoveredArg3.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack6 := (recoveredStack6) someElement.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack6 := (recoveredStack6) text.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack7 := recoveredLocal2.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack8 := recoveredLocal6.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack7 := (recoveredStack7) charToOem: (recoveredStack8).
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack0 := (recoveredStack0) chnCreate: (recoveredStack1) type: (recoveredStack2) valNbits: (recoveredStack3) valType: (recoveredStack4) name: (recoveredStack5) description: (recoveredStack6) text: (recoveredStack7).
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredLocal10 := recoveredStack1.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 82] ifFalse: [recoveredPC := 80].
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack0 := mdfLib.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack1 := recoveredLocal10.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredStack3 := recoveredLocal5.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack2 := (recoveredStack2) charToOem: (recoveredStack3).
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredStack3 := #[0 0 0 0 0 0 0 0].
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredStack4 := self.
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack4 := (recoveredStack4) secondsPerTick.
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack0 := (recoveredStack0) chnSetFormLin: (recoveredStack1) unit: (recoveredStack2) p1: (recoveredStack3) p2: (recoveredStack4).
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 104] ifFalse: [recoveredPC := 102].
        ].
        recoveredStep = 102 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 104 ifTrue: [
            recoveredStack0 := recoveredLocal9.
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            recoveredStack1 := recoveredLocal10.
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            (recoveredStack0) add: (recoveredStack1).
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            (recoveredStack0) add: (recoveredStack1).
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            recoveredStack0 := 0.
            recoveredPC := 117.
        ].
        recoveredStep = 117 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 118.
        ].
        recoveredStep = 118 ifTrue: [
            recoveredStack0 := recoveredArg3.
            recoveredPC := 120.
        ].
        recoveredStep = 120 ifTrue: [
            recoveredStack0 := (recoveredStack0) size.
            recoveredPC := 122.
        ].
        recoveredStep = 122 ifTrue: [
            recoveredPC := 185.
        ].
        recoveredStep = 126 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 128.
        ].
        recoveredStep = 128 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 129.
        ].
        recoveredStep = 129 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2).
            recoveredPC := 131.
        ].
        recoveredStep = 131 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 132.
        ].
        recoveredStep = 132 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 133.
        ].
        recoveredStep = 133 ifTrue: [
            recoveredStack2 := recoveredLocal4.
            recoveredPC := 134.
        ].
        recoveredStep = 134 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 136.
        ].
        recoveredStep = 136 ifTrue: [
            recoveredStack1 := (recoveredStack1) createMDFChannelFor: (recoveredStack2) inGroup: (recoveredStack3).
            recoveredPC := 138.
        ].
        recoveredStep = 138 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 139.
        ].
        recoveredStep = 139 ifTrue: [
            recoveredLocal10 := recoveredStack2.
            recoveredPC := 141.
        ].
        recoveredStep = 141 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 146] ifFalse: [recoveredPC := 144].
        ].
        recoveredStep = 144 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 145.
        ].
        recoveredStep = 145 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 146 ifTrue: [
            recoveredStack1 := recoveredLocal9.
            recoveredPC := 148.
        ].
        recoveredStep = 148 ifTrue: [
            recoveredStack2 := recoveredLocal10.
            recoveredPC := 150.
        ].
        recoveredStep = 150 ifTrue: [
            (recoveredStack1) add: (recoveredStack2).
            recoveredPC := 152.
        ].
        recoveredStep = 152 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 153.
        ].
        recoveredStep = 153 ifTrue: [
            recoveredStack1 := (recoveredStack1) deviceDataId.
            recoveredPC := 155.
        ].
        recoveredStep = 155 ifTrue: [
            recoveredStack1 := (recoveredStack1) isNumber.
            recoveredPC := 157.
        ].
        recoveredStep = 157 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 160] ifFalse: [recoveredPC := 166].
        ].
        recoveredStep = 160 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 161.
        ].
        recoveredStep = 161 ifTrue: [
            recoveredStack2 := recoveredLocal4.
            recoveredPC := 162.
        ].
        recoveredStep = 162 ifTrue: [
            recoveredStack2 := (recoveredStack2) deviceDataId.
            recoveredPC := 164.
        ].
        recoveredStep = 164 ifTrue: [
            (recoveredStack1) add: (recoveredStack2).
            recoveredPC := 166.
        ].
        recoveredStep = 166 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 167.
        ].
        recoveredStep = 167 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 168.
        ].
        recoveredStep = 168 ifTrue: [
            recoveredStack2 := (recoveredStack2) class.
            recoveredPC := 170.
        ].
        recoveredStep = 170 ifTrue: [
            recoveredStack2 := (recoveredStack2) defaultOfflineDataIdClass.
            recoveredPC := 172.
        ].
        recoveredStep = 172 ifTrue: [
            recoveredStack2 := (recoveredStack2) createDefault.
            recoveredPC := 174.
        ].
        recoveredStep = 174 ifTrue: [
            recoveredStack3 := recoveredStack2.
            recoveredPC := 175.
        ].
        recoveredStep = 175 ifTrue: [
            recoveredStack4 := recoveredArg5.
            recoveredPC := 177.
        ].
        recoveredStep = 177 ifTrue: [
            (recoveredStack3) groupId: (recoveredStack4).
            recoveredPC := 179.
        ].
        recoveredStep = 179 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 180.
        ].
        recoveredStep = 180 ifTrue: [
            recoveredStack3 := (recoveredStack3) + (1).
            recoveredPC := 181.
        ].
        recoveredStep = 181 ifTrue: [
            recoveredStack2 := (recoveredStack2) dataId: (recoveredStack3).
            recoveredPC := 183.
        ].
        recoveredStep = 183 ifTrue: [
            (recoveredStack1) offlineDataId: (recoveredStack2).
            recoveredPC := 185.
        ].
        recoveredStep = 185 ifTrue: [
            (recoveredStack0 isInteger and: [recoveredLocal1 isInteger]) ifTrue: [(recoveredLocal1 + 1 <= recoveredStack0) ifTrue: [recoveredLocal1 := recoveredLocal1 + 1. recoveredPC := 126] ifFalse: [recoveredLocal1 := nil. recoveredPC := 199]] ifFalse: [recoveredPC := 189].
        ].
        recoveredStep = 189 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 190.
        ].
        recoveredStep = 190 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 191.
        ].
        recoveredStep = 191 ifTrue: [
            recoveredStack2 := (recoveredStack2) + (1).
            recoveredPC := 192.
        ].
        recoveredStep = 192 ifTrue: [
            recoveredStack3 := recoveredStack2.
            recoveredPC := 193.
        ].
        recoveredStep = 193 ifTrue: [
            recoveredLocal1 := recoveredStack3.
            recoveredPC := 194.
        ].
        recoveredStep = 194 ifTrue: [
            recoveredStack1 := (recoveredStack1) < (recoveredStack2).
            recoveredPC := 195.
        ].
        recoveredStep = 195 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 197] ifFalse: [recoveredPC := 126].
        ].
        recoveredStep = 197 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 198.
        ].
        recoveredStep = 198 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 199.
        ].
        recoveredStep = 199 ifTrue: [
            recoveredPC := 200.
        ].
        recoveredStep = 200 ifTrue: [
            recoveredStack0 := recoveredArg4.
            recoveredPC := 202.
        ].
        recoveredStep = 202 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 204.
        ].
        recoveredStep = 204 ifTrue: [
            recoveredStack2 := recoveredLocal9.
            recoveredPC := 206.
        ].
        recoveredStep = 206 ifTrue: [
            recoveredStack2 := (recoveredStack2) size.
            recoveredPC := 208.
        ].
        recoveredStep = 208 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 209.
        ].
        recoveredStep = 209 ifTrue: [
            recoveredStack4 := recoveredLocal9.
            recoveredPC := 211.
        ].
        recoveredStep = 211 ifTrue: [
            recoveredStack3 := (recoveredStack3) winMDFChannelList: (recoveredStack4).
            recoveredPC := 213.
        ].
        recoveredStep = 213 ifTrue: [
            recoveredStack4 := self.
            recoveredPC := 214.
        ].
        recoveredStep = 214 ifTrue: [
            recoveredStack5 := recoveredLocal3.
            recoveredPC := 215.
        ].
        recoveredStep = 215 ifTrue: [
            recoveredStack4 := (recoveredStack4) winDWordList: (recoveredStack5).
            recoveredPC := 217.
        ].
        recoveredStep = 217 ifTrue: [
            recoveredStack0 := (recoveredStack0) setupMDFChannelsLevel: (recoveredStack1) size: (recoveredStack2) mdfChannels: (recoveredStack3) dataIds: (recoveredStack4).
            recoveredPC := 220.
        ].
        recoveredStep = 220 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 226] ifFalse: [recoveredPC := 224].
        ].
        recoveredStep = 224 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 225.
        ].
        recoveredStep = 225 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 226 ifTrue: [
            recoveredStack0 := recoveredLocal9.
            recoveredPC := 228.
        ].
        recoveredStep = 228 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2055defc; bytecode file offset 0xe5a80c"
!RBMDFStorageManager methodsFor: 'recovered'!
writeOnlineDLLToMDF: recoveredArg1 mdfHeader: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := INKAMDFLib.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) createDefault.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            mdfLib := recoveredStack2.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := mdfLib.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack2 := 'GMM'.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := (recoveredStack1) open: (recoveredStack2).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 26] ifFalse: [recoveredPC := 24].
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := mdfLib.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack3 := MDFOpenCreate.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := (recoveredStack1) fileOpen: (recoveredStack2) mode: (recoveredStack3).
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredLocal5 := recoveredStack2.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 46] ifFalse: [recoveredPC := 42].
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack1 := (recoveredStack1) errorSaveMeasureDataFailed.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack2 := recoveredLocal5.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            (recoveredStack0) writeMDFHeader: (recoveredStack1) toFile: (recoveredStack2).
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack0 := 1.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack0 := true.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack0 := acquisitionList.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack1 := [:recoveredBlock65Arg1 | 
    | recoveredBlock65Stack0 recoveredBlock65Stack1 recoveredBlock65Stack2 recoveredBlock65Stack3 recoveredBlock65Stack4 recoveredBlock65Stack5 recoveredBlock65PC recoveredBlock65Step recoveredBlock65Done recoveredBlock65Result |
    recoveredBlock65Stack0 := self.
    recoveredBlock65PC := 72.
    recoveredBlock65Done := false.
    [recoveredBlock65Done not] whileTrue: [
        recoveredBlock65Step := recoveredBlock65PC.
        recoveredBlock65Step = 72 ifTrue: [
            recoveredBlock65Stack1 := nil.
            recoveredBlock65PC := 73.
        ].
        recoveredBlock65Step = 73 ifTrue: [
            recoveredBlock65Stack2 := recoveredLocal1.
            recoveredBlock65PC := 76.
        ].
        recoveredBlock65Step = 76 ifTrue: [
            (recoveredBlock65Stack2) ifTrue: [recoveredBlock65PC := 80] ifFalse: [recoveredBlock65PC := 215].
        ].
        recoveredBlock65Step = 80 ifTrue: [
            recoveredBlock65PC := 81.
        ].
        recoveredBlock65Step = 81 ifTrue: [
            recoveredBlock65Stack1 := mdfLib.
            recoveredBlock65PC := 83.
        ].
        recoveredBlock65Step = 83 ifTrue: [
            recoveredBlock65Stack2 := recoveredLocal5.
            recoveredBlock65PC := 86.
        ].
        recoveredBlock65Step = 86 ifTrue: [
            recoveredBlock65Stack3 := recoveredLocal2.
            recoveredBlock65PC := 89.
        ].
        recoveredBlock65Step = 89 ifTrue: [
            recoveredBlock65Stack4 := MDFOpenCreate.
            recoveredBlock65PC := 91.
        ].
        recoveredBlock65Step = 91 ifTrue: [
            recoveredBlock65Stack1 := (recoveredBlock65Stack1) grpOpen: (recoveredBlock65Stack2) groupNo: (recoveredBlock65Stack3) mode: (recoveredBlock65Stack4).
            recoveredBlock65PC := 94.
        ].
        recoveredBlock65Step = 94 ifTrue: [
            recoveredBlock65Stack2 := recoveredBlock65Stack1.
            recoveredBlock65PC := 95.
        ].
        recoveredBlock65Step = 95 ifTrue: [
            recoveredLocal4 := recoveredBlock65Stack2.
            recoveredBlock65PC := 98.
        ].
        recoveredBlock65Step = 98 ifTrue: [
            (recoveredBlock65Stack1 ~~ nil) ifTrue: [recoveredBlock65PC := 106] ifFalse: [recoveredBlock65PC := 102].
        ].
        recoveredBlock65Step = 102 ifTrue: [
            recoveredBlock65Stack1 := self.
            recoveredBlock65PC := 103.
        ].
        recoveredBlock65Step = 103 ifTrue: [
            recoveredBlock65Stack1 := (recoveredBlock65Stack1) errorSaveMeasureDataFailed.
            recoveredBlock65PC := 105.
        ].
        recoveredBlock65Step = 105 ifTrue: [
            ^recoveredBlock65Stack1
        ].
        recoveredBlock65Step = 106 ifTrue: [
            recoveredBlock65Stack1 := self.
            recoveredBlock65PC := 107.
        ].
        recoveredBlock65Step = 107 ifTrue: [
            recoveredBlock65Stack2 := recoveredLocal4.
            recoveredBlock65PC := 110.
        ].
        recoveredBlock65Step = 110 ifTrue: [
            recoveredBlock65Stack3 := Array.
            recoveredBlock65PC := 112.
        ].
        recoveredBlock65Step = 112 ifTrue: [
            recoveredBlock65Stack4 := recoveredBlock65Arg1.
            recoveredBlock65PC := 113.
        ].
        recoveredBlock65Step = 113 ifTrue: [
            recoveredBlock65Stack3 := (recoveredBlock65Stack3) with: (recoveredBlock65Stack4).
            recoveredBlock65PC := 115.
        ].
        recoveredBlock65Step = 115 ifTrue: [
            recoveredBlock65Stack1 := (recoveredBlock65Stack1) createMDFChannelsInGroup: (recoveredBlock65Stack2) dataList: (recoveredBlock65Stack3).
            recoveredBlock65PC := 117.
        ].
        recoveredBlock65Step = 117 ifTrue: [
            recoveredBlock65Stack2 := recoveredBlock65Stack1.
            recoveredBlock65PC := 118.
        ].
        recoveredBlock65Step = 118 ifTrue: [
            recoveredLocal3 := recoveredBlock65Stack2.
            recoveredBlock65PC := 121.
        ].
        recoveredBlock65Step = 121 ifTrue: [
            (recoveredBlock65Stack1 ~~ nil) ifTrue: [recoveredBlock65PC := 128] ifFalse: [recoveredBlock65PC := 124].
        ].
        recoveredBlock65Step = 124 ifTrue: [
            recoveredBlock65Stack1 := self.
            recoveredBlock65PC := 125.
        ].
        recoveredBlock65Step = 125 ifTrue: [
            recoveredBlock65Stack1 := (recoveredBlock65Stack1) errorSaveMeasureDataFailed.
            recoveredBlock65PC := 127.
        ].
        recoveredBlock65Step = 127 ifTrue: [
            ^recoveredBlock65Stack1
        ].
        recoveredBlock65Step = 128 ifTrue: [
            recoveredBlock65Stack1 := self.
            recoveredBlock65PC := 129.
        ].
        recoveredBlock65Step = 129 ifTrue: [
            recoveredBlock65Stack2 := Array.
            recoveredBlock65PC := 131.
        ].
        recoveredBlock65Step = 131 ifTrue: [
            recoveredBlock65Stack3 := acquisitionList.
            recoveredBlock65PC := 133.
        ].
        recoveredBlock65Step = 133 ifTrue: [
            recoveredBlock65Stack4 := recoveredBlock65Arg1.
            recoveredBlock65PC := 134.
        ].
        recoveredBlock65Step = 134 ifTrue: [
            recoveredBlock65Stack3 := (recoveredBlock65Stack3) at: (recoveredBlock65Stack4).
            recoveredBlock65PC := 136.
        ].
        recoveredBlock65Step = 136 ifTrue: [
            recoveredBlock65Stack2 := (recoveredBlock65Stack2) with: (recoveredBlock65Stack3).
            recoveredBlock65PC := 138.
        ].
        recoveredBlock65Step = 138 ifTrue: [
            recoveredBlock65Stack3 := recoveredLocal3.
            recoveredBlock65PC := 141.
        ].
        recoveredBlock65Step = 141 ifTrue: [
            recoveredBlock65Stack1 := (recoveredBlock65Stack1) writeOnlineDLLOfflineData: (recoveredBlock65Stack2) toChannels: (recoveredBlock65Stack3).
            recoveredBlock65PC := 143.
        ].
        recoveredBlock65Step = 143 ifTrue: [
            (recoveredBlock65Stack1) ifTrue: [recoveredBlock65PC := 150] ifFalse: [recoveredBlock65PC := 146].
        ].
        recoveredBlock65Step = 146 ifTrue: [
            recoveredBlock65Stack1 := self.
            recoveredBlock65PC := 147.
        ].
        recoveredBlock65Step = 147 ifTrue: [
            recoveredBlock65Stack1 := (recoveredBlock65Stack1) errorSaveMeasureDataFailed.
            recoveredBlock65PC := 149.
        ].
        recoveredBlock65Step = 149 ifTrue: [
            ^recoveredBlock65Stack1
        ].
        recoveredBlock65Step = 150 ifTrue: [
            recoveredBlock65Stack1 := recoveredLocal3.
            recoveredBlock65PC := 153.
        ].
        recoveredBlock65Step = 153 ifTrue: [
            recoveredBlock65Stack2 := [:recoveredBlock65Block153Arg1 | 
    | recoveredBlock65Block153Stack0 recoveredBlock65Block153Stack1 recoveredBlock65Block153Stack2 recoveredBlock65Block153Stack3 recoveredBlock65Block153PC recoveredBlock65Block153Step recoveredBlock65Block153Done recoveredBlock65Block153Result |
    recoveredBlock65Block153Stack0 := self.
    recoveredBlock65Block153PC := 160.
    recoveredBlock65Block153Done := false.
    [recoveredBlock65Block153Done not] whileTrue: [
        recoveredBlock65Block153Step := recoveredBlock65Block153PC.
        recoveredBlock65Block153Step = 160 ifTrue: [
            recoveredBlock65Block153Stack1 := recoveredBlock65Block153Arg1.
            recoveredBlock65Block153PC := 161.
        ].
        recoveredBlock65Block153Step = 161 ifTrue: [
            recoveredBlock65Block153Stack1 := (recoveredBlock65Block153Stack1) key.
            recoveredBlock65Block153PC := 163.
        ].
        recoveredBlock65Block153Step = 163 ifTrue: [
            recoveredBlock65Block153Stack1 := (recoveredBlock65Block153Stack1) isCollection.
            recoveredBlock65Block153PC := 165.
        ].
        recoveredBlock65Block153Step = 165 ifTrue: [
            (recoveredBlock65Block153Stack1) ifTrue: [recoveredBlock65Block153PC := 168] ifFalse: [recoveredBlock65Block153PC := 190].
        ].
        recoveredBlock65Block153Step = 168 ifTrue: [
            recoveredBlock65Block153Stack1 := recoveredBlock65Block153Arg1.
            recoveredBlock65Block153PC := 169.
        ].
        recoveredBlock65Block153Step = 169 ifTrue: [
            recoveredBlock65Block153Stack1 := (recoveredBlock65Block153Stack1) value.
            recoveredBlock65Block153PC := 171.
        ].
        recoveredBlock65Block153Step = 171 ifTrue: [
            recoveredBlock65Block153Stack2 := [:recoveredBlock65Block153Block171Arg1 | 
    | recoveredBlock65Block153Block171Value0 recoveredBlock65Block153Block171Value1 recoveredBlock65Block153Block171Value2 |
    recoveredBlock65Block153Block171Value0 := mdfLib.
    recoveredBlock65Block153Block171Value1 := recoveredBlock65Block153Block171Arg1.
    recoveredBlock65Block153Block171Value2 := (recoveredBlock65Block153Block171Value0) chnClose: (recoveredBlock65Block153Block171Value1).
    recoveredBlock65Block153Block171Value2
].
            recoveredBlock65Block153PC := 184.
        ].
        recoveredBlock65Block153Step = 184 ifTrue: [
            recoveredBlock65Block153Stack1 := (recoveredBlock65Block153Stack1) do: (recoveredBlock65Block153Stack2).
            recoveredBlock65Block153PC := 186.
        ].
        recoveredBlock65Block153Step = 186 ifTrue: [
            recoveredBlock65Block153PC := 197.
        ].
        recoveredBlock65Block153Step = 190 ifTrue: [
            recoveredBlock65Block153Stack1 := mdfLib.
            recoveredBlock65Block153PC := 192.
        ].
        recoveredBlock65Block153Step = 192 ifTrue: [
            recoveredBlock65Block153Stack2 := recoveredBlock65Block153Arg1.
            recoveredBlock65Block153PC := 193.
        ].
        recoveredBlock65Block153Step = 193 ifTrue: [
            recoveredBlock65Block153Stack2 := (recoveredBlock65Block153Stack2) value.
            recoveredBlock65Block153PC := 195.
        ].
        recoveredBlock65Block153Step = 195 ifTrue: [
            recoveredBlock65Block153Stack1 := (recoveredBlock65Block153Stack1) chnClose: (recoveredBlock65Block153Stack2).
            recoveredBlock65Block153PC := 197.
        ].
        recoveredBlock65Block153Step = 197 ifTrue: [
            recoveredBlock65Block153Result := recoveredBlock65Block153Stack1.
            recoveredBlock65Block153Done := true.
        ].
    ].
    recoveredBlock65Block153Result
].
            recoveredBlock65PC := 198.
        ].
        recoveredBlock65Step = 198 ifTrue: [
            (recoveredBlock65Stack1) do: (recoveredBlock65Stack2).
            recoveredBlock65PC := 200.
        ].
        recoveredBlock65Step = 200 ifTrue: [
            recoveredBlock65Stack1 := mdfLib.
            recoveredBlock65PC := 202.
        ].
        recoveredBlock65Step = 202 ifTrue: [
            recoveredBlock65Stack2 := recoveredLocal4.
            recoveredBlock65PC := 205.
        ].
        recoveredBlock65Step = 205 ifTrue: [
            (recoveredBlock65Stack1) grpClose: (recoveredBlock65Stack2).
            recoveredBlock65PC := 207.
        ].
        recoveredBlock65Step = 207 ifTrue: [
            recoveredBlock65Stack1 := recoveredLocal2.
            recoveredBlock65PC := 210.
        ].
        recoveredBlock65Step = 210 ifTrue: [
            recoveredBlock65Stack1 := (recoveredBlock65Stack1) + (1).
            recoveredBlock65PC := 211.
        ].
        recoveredBlock65Step = 211 ifTrue: [
            recoveredBlock65Stack2 := recoveredBlock65Stack1.
            recoveredBlock65PC := 212.
        ].
        recoveredBlock65Step = 212 ifTrue: [
            recoveredLocal2 := recoveredBlock65Stack2.
            recoveredBlock65PC := 215.
        ].
        recoveredBlock65Step = 215 ifTrue: [
            recoveredBlock65Result := recoveredBlock65Stack1.
            recoveredBlock65Done := true.
        ].
    ].
    recoveredBlock65Result
].
            recoveredPC := 216.
        ].
        recoveredStep = 216 ifTrue: [
            (recoveredStack0) keysDo: (recoveredStack1).
            recoveredPC := 218.
        ].
        recoveredStep = 218 ifTrue: [
            recoveredStack0 := mdfLib.
            recoveredPC := 220.
        ].
        recoveredStep = 220 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 221.
        ].
        recoveredStep = 221 ifTrue: [
            recoveredStack2 := recoveredLocal5.
            recoveredPC := 224.
        ].
        recoveredStep = 224 ifTrue: [
            (recoveredStack1) fileClose: (recoveredStack2).
            recoveredPC := 226.
        ].
        recoveredStep = 226 ifTrue: [
            (recoveredStack0) close.
            recoveredPC := 228.
        ].
        recoveredStep = 228 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 231.
        ].
        recoveredStep = 231 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x205ccc0c; bytecode file offset 0xec952c"
!RBMDFStorageManager methodsFor: 'recovered'!
createMDFChannelsInGroup: recoveredArg1 dataList: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredLocal6 recoveredLocal7 recoveredLocal8 recoveredLocal9 recoveredLocal10 recoveredLocal11 recoveredLocal12 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredStack7 recoveredStack8 recoveredStack9 recoveredPC recoveredStep |
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
            recoveredLocal11 := recoveredStack1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := (recoveredStack0) oemConverter.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredLocal6 := recoveredStack0.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := 32.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredLocal10 := recoveredStack0.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := MDFValueUnsigned.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredLocal9 := recoveredStack0.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := recoveredArg2.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := (recoveredStack0) someElement.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredLocal5 := recoveredStack1.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack0 := (recoveredStack0) isCollection.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 38] ifFalse: [recoveredPC := 78].
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := recoveredLocal5.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack0 := (recoveredStack0) first.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack0 := (recoveredStack0) xName.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredLocal8 := recoveredStack0.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack0 := recoveredLocal5.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack0 := (recoveredStack0) first.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack0 := (recoveredStack0) xUnit.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredLocal7 := recoveredStack0.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack0 := 'Muzaffar'.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack1 := 'EHI_1003505'.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack0 := (recoveredStack0) == (recoveredStack1).
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack0 := recoveredLocal5.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack0 := (recoveredStack0) first.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack0 := (recoveredStack0) text.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredLocal4 := recoveredStack0.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredPC := 108.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack0 := recoveredLocal5.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack0 := (recoveredStack0) xName.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredLocal8 := recoveredStack0.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack0 := recoveredLocal5.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack0 := (recoveredStack0) xUnit.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredLocal7 := recoveredStack0.
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack0 := 'Muzaffar'.
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack1 := 'EHI_1003505'.
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack0 := (recoveredStack0) == (recoveredStack1).
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack0 := recoveredLocal5.
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            recoveredStack0 := (recoveredStack0) text.
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            recoveredLocal4 := recoveredStack0.
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            recoveredStack0 := 'Muzaffar'.
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            recoveredStack1 := 'EHI_1003505'.
            recoveredPC := 112.
        ].
        recoveredStep = 112 ifTrue: [
            recoveredStack0 := (recoveredStack0) == (recoveredStack1).
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            recoveredPC := 114.
        ].
        recoveredStep = 114 ifTrue: [
            recoveredStack0 := mdfLib.
            recoveredPC := 116.
        ].
        recoveredStep = 116 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 119.
        ].
        recoveredStep = 119 ifTrue: [
            recoveredStack2 := MDFChnTime.
            recoveredPC := 121.
        ].
        recoveredStep = 121 ifTrue: [
            recoveredStack3 := recoveredLocal10.
            recoveredPC := 124.
        ].
        recoveredStep = 124 ifTrue: [
            recoveredStack4 := recoveredLocal9.
            recoveredPC := 127.
        ].
        recoveredStep = 127 ifTrue: [
            recoveredStack5 := recoveredLocal6.
            recoveredPC := 130.
        ].
        recoveredStep = 130 ifTrue: [
            recoveredStack6 := recoveredLocal8.
            recoveredPC := 133.
        ].
        recoveredStep = 133 ifTrue: [
            recoveredStack5 := (recoveredStack5) charToOem: (recoveredStack6).
            recoveredPC := 135.
        ].
        recoveredStep = 135 ifTrue: [
            recoveredStack6 := recoveredLocal4.
            recoveredPC := 138.
        ].
        recoveredStep = 138 ifTrue: [
            recoveredStack7 := recoveredLocal6.
            recoveredPC := 141.
        ].
        recoveredStep = 141 ifTrue: [
            recoveredStack8 := recoveredLocal8.
            recoveredPC := 144.
        ].
        recoveredStep = 144 ifTrue: [
            recoveredStack7 := (recoveredStack7) charToOem: (recoveredStack8).
            recoveredPC := 146.
        ].
        recoveredStep = 146 ifTrue: [
            recoveredStack0 := (recoveredStack0) chnCreate: (recoveredStack1) type: (recoveredStack2) valNbits: (recoveredStack3) valType: (recoveredStack4) name: (recoveredStack5) description: (recoveredStack6) text: (recoveredStack7).
            recoveredPC := 149.
        ].
        recoveredStep = 149 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 150.
        ].
        recoveredStep = 150 ifTrue: [
            recoveredLocal12 := recoveredStack1.
            recoveredPC := 153.
        ].
        recoveredStep = 153 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 158] ifFalse: [recoveredPC := 156].
        ].
        recoveredStep = 156 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 157.
        ].
        recoveredStep = 157 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 158 ifTrue: [
            recoveredStack0 := mdfLib.
            recoveredPC := 160.
        ].
        recoveredStep = 160 ifTrue: [
            recoveredStack1 := recoveredLocal12.
            recoveredPC := 163.
        ].
        recoveredStep = 163 ifTrue: [
            recoveredStack2 := recoveredLocal6.
            recoveredPC := 166.
        ].
        recoveredStep = 166 ifTrue: [
            recoveredStack3 := recoveredLocal7.
            recoveredPC := 169.
        ].
        recoveredStep = 169 ifTrue: [
            recoveredStack2 := (recoveredStack2) charToOem: (recoveredStack3).
            recoveredPC := 171.
        ].
        recoveredStep = 171 ifTrue: [
            recoveredStack3 := #[0 0 0 0 0 0 0 0].
            recoveredPC := 173.
        ].
        recoveredStep = 173 ifTrue: [
            recoveredStack4 := self.
            recoveredPC := 174.
        ].
        recoveredStep = 174 ifTrue: [
            recoveredStack4 := (recoveredStack4) secondsPerTick.
            recoveredPC := 176.
        ].
        recoveredStep = 176 ifTrue: [
            recoveredStack0 := (recoveredStack0) chnSetFormLin: (recoveredStack1) unit: (recoveredStack2) p1: (recoveredStack3) p2: (recoveredStack4).
            recoveredPC := 179.
        ].
        recoveredStep = 179 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 184] ifFalse: [recoveredPC := 182].
        ].
        recoveredStep = 182 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 183.
        ].
        recoveredStep = 183 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 184 ifTrue: [
            recoveredStack0 := recoveredLocal11.
            recoveredPC := 187.
        ].
        recoveredStep = 187 ifTrue: [
            recoveredStack1 := Association.
            recoveredPC := 189.
        ].
        recoveredStep = 189 ifTrue: [
            recoveredStack2 := $t.
            recoveredPC := 192.
        ].
        recoveredStep = 192 ifTrue: [
            recoveredStack3 := recoveredLocal12.
            recoveredPC := 195.
        ].
        recoveredStep = 195 ifTrue: [
            recoveredStack1 := (recoveredStack1) key: (recoveredStack2) value: (recoveredStack3).
            recoveredPC := 197.
        ].
        recoveredStep = 197 ifTrue: [
            (recoveredStack0) add: (recoveredStack1).
            recoveredPC := 199.
        ].
        recoveredStep = 199 ifTrue: [
            recoveredStack0 := recoveredArg2.
            recoveredPC := 202.
        ].
        recoveredStep = 202 ifTrue: [
            recoveredStack0 := (recoveredStack0) size.
            recoveredPC := 204.
        ].
        recoveredStep = 204 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 206.
        ].
        recoveredStep = 206 ifTrue: [
            recoveredPC := 312.
        ].
        recoveredStep = 210 ifTrue: [
            recoveredLocal3 := recoveredStack2.
            recoveredPC := 213.
        ].
        recoveredStep = 213 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 216.
        ].
        recoveredStep = 216 ifTrue: [
            recoveredStack3 := recoveredLocal3.
            recoveredPC := 219.
        ].
        recoveredStep = 219 ifTrue: [
            recoveredStack2 := (recoveredStack2) at: (recoveredStack3).
            recoveredPC := 221.
        ].
        recoveredStep = 221 ifTrue: [
            recoveredLocal2 := recoveredStack2.
            recoveredPC := 224.
        ].
        recoveredStep = 224 ifTrue: [
            recoveredStack2 := OrderedCollection.
            recoveredPC := 226.
        ].
        recoveredStep = 226 ifTrue: [
            recoveredStack2 := (recoveredStack2) new.
            recoveredPC := 227.
        ].
        recoveredStep = 227 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 230.
        ].
        recoveredStep = 230 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 233.
        ].
        recoveredStep = 233 ifTrue: [
            recoveredStack3 := [:recoveredBlock233Arg1 | 
    | recoveredBlock233Stack0 recoveredBlock233Stack1 recoveredBlock233Stack2 recoveredBlock233Stack3 recoveredBlock233Stack4 recoveredBlock233PC recoveredBlock233Step recoveredBlock233Done recoveredBlock233Result |
    recoveredBlock233Stack0 := self.
    recoveredBlock233PC := 240.
    recoveredBlock233Done := false.
    [recoveredBlock233Done not] whileTrue: [
        recoveredBlock233Step := recoveredBlock233PC.
        recoveredBlock233Step = 240 ifTrue: [
            recoveredBlock233Stack1 := recoveredBlock233Arg1.
            recoveredBlock233PC := 241.
        ].
        recoveredBlock233Step = 241 ifTrue: [
            recoveredBlock233Stack1 := (recoveredBlock233Stack1) isDigital.
            recoveredBlock233PC := 243.
        ].
        recoveredBlock233Step = 243 ifTrue: [
            (recoveredBlock233Stack1) ifTrue: [recoveredBlock233PC := 246] ifFalse: [recoveredBlock233PC := 260].
        ].
        recoveredBlock233Step = 246 ifTrue: [
            recoveredBlock233Stack1 := self.
            recoveredBlock233PC := 247.
        ].
        recoveredBlock233Step = 247 ifTrue: [
            recoveredBlock233Stack2 := recoveredBlock233Arg1.
            recoveredBlock233PC := 248.
        ].
        recoveredBlock233Step = 248 ifTrue: [
            recoveredBlock233Stack3 := recoveredArg1.
            recoveredBlock233PC := 251.
        ].
        recoveredBlock233Step = 251 ifTrue: [
            recoveredBlock233Stack1 := (recoveredBlock233Stack1) createMDFDigitalChannelFor: (recoveredBlock233Stack2) inGroup: (recoveredBlock233Stack3).
            recoveredBlock233PC := 253.
        ].
        recoveredBlock233Step = 253 ifTrue: [
            recoveredLocal12 := recoveredBlock233Stack1.
            recoveredBlock233PC := 256.
        ].
        recoveredBlock233Step = 256 ifTrue: [
            recoveredBlock233PC := 270.
        ].
        recoveredBlock233Step = 260 ifTrue: [
            recoveredBlock233Stack1 := self.
            recoveredBlock233PC := 261.
        ].
        recoveredBlock233Step = 261 ifTrue: [
            recoveredBlock233Stack2 := recoveredBlock233Arg1.
            recoveredBlock233PC := 262.
        ].
        recoveredBlock233Step = 262 ifTrue: [
            recoveredBlock233Stack3 := recoveredArg1.
            recoveredBlock233PC := 265.
        ].
        recoveredBlock233Step = 265 ifTrue: [
            recoveredBlock233Stack1 := (recoveredBlock233Stack1) createMDFChannelFor: (recoveredBlock233Stack2) inGroup: (recoveredBlock233Stack3).
            recoveredBlock233PC := 267.
        ].
        recoveredBlock233Step = 267 ifTrue: [
            recoveredLocal12 := recoveredBlock233Stack1.
            recoveredBlock233PC := 270.
        ].
        recoveredBlock233Step = 270 ifTrue: [
            recoveredBlock233Stack1 := recoveredLocal12.
            recoveredBlock233PC := 273.
        ].
        recoveredBlock233Step = 273 ifTrue: [
            (recoveredBlock233Stack1 ~~ nil) ifTrue: [recoveredBlock233PC := 278] ifFalse: [recoveredBlock233PC := 276].
        ].
        recoveredBlock233Step = 276 ifTrue: [
            recoveredBlock233Stack1 := nil.
            recoveredBlock233PC := 277.
        ].
        recoveredBlock233Step = 277 ifTrue: [
            ^recoveredBlock233Stack1
        ].
        recoveredBlock233Step = 278 ifTrue: [
            recoveredBlock233Stack1 := recoveredLocal1.
            recoveredBlock233PC := 281.
        ].
        recoveredBlock233Step = 281 ifTrue: [
            recoveredBlock233Stack2 := recoveredLocal12.
            recoveredBlock233PC := 284.
        ].
        recoveredBlock233Step = 284 ifTrue: [
            recoveredBlock233Stack1 := (recoveredBlock233Stack1) add: (recoveredBlock233Stack2).
            recoveredBlock233PC := 286.
        ].
        recoveredBlock233Step = 286 ifTrue: [
            recoveredBlock233Result := recoveredBlock233Stack1.
            recoveredBlock233Done := true.
        ].
    ].
    recoveredBlock233Result
].
            recoveredPC := 287.
        ].
        recoveredStep = 287 ifTrue: [
            (recoveredStack2) do: (recoveredStack3).
            recoveredPC := 289.
        ].
        recoveredStep = 289 ifTrue: [
            recoveredStack2 := recoveredLocal11.
            recoveredPC := 292.
        ].
        recoveredStep = 292 ifTrue: [
            recoveredStack3 := Association.
            recoveredPC := 294.
        ].
        recoveredStep = 294 ifTrue: [
            recoveredStack4 := recoveredLocal2.
            recoveredPC := 297.
        ].
        recoveredStep = 297 ifTrue: [
            recoveredStack5 := recoveredLocal1.
            recoveredPC := 300.
        ].
        recoveredStep = 300 ifTrue: [
            recoveredStack3 := (recoveredStack3) key: (recoveredStack4) value: (recoveredStack5).
            recoveredPC := 302.
        ].
        recoveredStep = 302 ifTrue: [
            (recoveredStack2) add: (recoveredStack3).
            recoveredPC := 304.
        ].
        recoveredStep = 304 ifTrue: [
            recoveredStack2 := nil.
            recoveredPC := 305.
        ].
        recoveredStep = 305 ifTrue: [
            recoveredStack3 := recoveredStack2.
            recoveredPC := 306.
        ].
        recoveredStep = 306 ifTrue: [
            recoveredLocal2 := recoveredStack3.
            recoveredPC := 309.
        ].
        recoveredStep = 309 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 312.
        ].
        recoveredStep = 312 ifTrue: [
            (recoveredStack0 isInteger and: [recoveredStack1 isInteger]) ifTrue: [(recoveredStack1 + 1 <= recoveredStack0) ifTrue: [recoveredStack1 := recoveredStack1 + 1. recoveredStack2 := recoveredStack1. recoveredPC := 210] ifFalse: [recoveredPC := 341]] ifFalse: [recoveredPC := 315].
        ].
        recoveredStep = 315 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 318.
        ].
        recoveredStep = 318 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 319.
        ].
        recoveredStep = 319 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 322.
        ].
        recoveredStep = 322 ifTrue: [
            recoveredStack2 := (recoveredStack2) + (1).
            recoveredPC := 323.
        ].
        recoveredStep = 323 ifTrue: [
            recoveredStack3 := recoveredStack2.
            recoveredPC := 324.
        ].
        recoveredStep = 324 ifTrue: [
            recoveredLocal3 := recoveredStack3.
            recoveredPC := 327.
        ].
        recoveredStep = 327 ifTrue: [
            recoveredStack1 := (recoveredStack1) < (recoveredStack2).
            recoveredPC := 328.
        ].
        recoveredStep = 328 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 337] ifFalse: [recoveredPC := 332].
        ].
        recoveredStep = 332 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 335.
        ].
        recoveredStep = 335 ifTrue: [
            recoveredPC := 213.
        ].
        recoveredStep = 337 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 338.
        ].
        recoveredStep = 338 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 341.
        ].
        recoveredStep = 341 ifTrue: [
            recoveredPC := 342.
        ].
        recoveredStep = 342 ifTrue: [
            recoveredStack0 := recoveredLocal11.
            recoveredPC := 345.
        ].
        recoveredStep = 345 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x206319b8; bytecode file offset 0xf2e318"
!RBMDFStorageManager methodsFor: 'recovered'!
writeOnlineDLLOfflineData: recoveredArg1 toChannels: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredLocal6 recoveredLocal7 recoveredLocal8 recoveredLocal9 recoveredLocal10 recoveredLocal11 recoveredLocal12 recoveredLocal13 recoveredLocal14 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredStack7 recoveredStack8 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) first.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) x.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredLocal13 := recoveredStack1.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := recoveredLocal13.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) noPoints.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredLocal12 := recoveredStack1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := OSPtr.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack2 := OSHglobal.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack3 := recoveredLocal13.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack3 := (recoveredStack3) dataBufferHandle.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack2 := (recoveredStack2) immediate: (recoveredStack3).
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack2 := (recoveredStack2) globalLock.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := (recoveredStack1) address: (recoveredStack2).
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredLocal14 := recoveredStack1.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack1 := recoveredLocal14.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := (recoveredStack1) isNull.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 46] ifFalse: [recoveredPC := 48].
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack1 := Array.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack2 := (recoveredStack2) size.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack1 := (recoveredStack1) new: (recoveredStack2).
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredLocal11 := recoveredStack1.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack1 := Array.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack2 := (recoveredStack2) size.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack1 := (recoveredStack1) new: (recoveredStack2).
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredLocal10 := recoveredStack1.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack2 := [:recoveredBlock75Arg1 :recoveredBlock75Arg2 | 
    | recoveredBlock75Local1 recoveredBlock75Local2 recoveredBlock75Stack0 recoveredBlock75Stack1 recoveredBlock75Stack2 recoveredBlock75Stack3 recoveredBlock75Stack4 recoveredBlock75Stack5 recoveredBlock75PC recoveredBlock75Step recoveredBlock75Done recoveredBlock75Result |
    recoveredBlock75Stack0 := self.
    recoveredBlock75PC := 82.
    recoveredBlock75Done := false.
    [recoveredBlock75Done not] whileTrue: [
        recoveredBlock75Step := recoveredBlock75PC.
        recoveredBlock75Step = 82 ifTrue: [
            recoveredBlock75Stack1 := OSPtr.
            recoveredBlock75PC := 84.
        ].
        recoveredBlock75Step = 84 ifTrue: [
            recoveredBlock75Stack2 := OSHglobal.
            recoveredBlock75PC := 86.
        ].
        recoveredBlock75Step = 86 ifTrue: [
            recoveredBlock75Stack3 := recoveredBlock75Arg1.
            recoveredBlock75PC := 87.
        ].
        recoveredBlock75Step = 87 ifTrue: [
            recoveredBlock75Stack3 := (recoveredBlock75Stack3) y.
            recoveredBlock75PC := 89.
        ].
        recoveredBlock75Step = 89 ifTrue: [
            recoveredBlock75Stack3 := (recoveredBlock75Stack3) dataBufferHandle.
            recoveredBlock75PC := 91.
        ].
        recoveredBlock75Step = 91 ifTrue: [
            recoveredBlock75Stack2 := (recoveredBlock75Stack2) immediate: (recoveredBlock75Stack3).
            recoveredBlock75PC := 93.
        ].
        recoveredBlock75Step = 93 ifTrue: [
            recoveredBlock75Stack2 := (recoveredBlock75Stack2) globalLock.
            recoveredBlock75PC := 95.
        ].
        recoveredBlock75Step = 95 ifTrue: [
            recoveredBlock75Stack1 := (recoveredBlock75Stack1) address: (recoveredBlock75Stack2).
            recoveredBlock75PC := 97.
        ].
        recoveredBlock75Step = 97 ifTrue: [
            recoveredBlock75Local2 := recoveredBlock75Stack1.
            recoveredBlock75PC := 98.
        ].
        recoveredBlock75Step = 98 ifTrue: [
            recoveredBlock75Stack1 := recoveredBlock75Local2.
            recoveredBlock75PC := 99.
        ].
        recoveredBlock75Step = 99 ifTrue: [
            recoveredBlock75Stack1 := (recoveredBlock75Stack1) isNull.
            recoveredBlock75PC := 101.
        ].
        recoveredBlock75Step = 101 ifTrue: [
            (recoveredBlock75Stack1) ifTrue: [recoveredBlock75PC := 104] ifFalse: [recoveredBlock75PC := 157].
        ].
        recoveredBlock75Step = 104 ifTrue: [
            recoveredBlock75Stack1 := OSHglobal.
            recoveredBlock75PC := 106.
        ].
        recoveredBlock75Step = 106 ifTrue: [
            recoveredBlock75Stack2 := recoveredLocal13.
            recoveredBlock75PC := 109.
        ].
        recoveredBlock75Step = 109 ifTrue: [
            recoveredBlock75Stack2 := (recoveredBlock75Stack2) dataBufferHandle.
            recoveredBlock75PC := 111.
        ].
        recoveredBlock75Step = 111 ifTrue: [
            recoveredBlock75Stack1 := (recoveredBlock75Stack1) immediate: (recoveredBlock75Stack2).
            recoveredBlock75PC := 113.
        ].
        recoveredBlock75Step = 113 ifTrue: [
            (recoveredBlock75Stack1) globalUnlock.
            recoveredBlock75PC := 115.
        ].
        recoveredBlock75Step = 115 ifTrue: [
            recoveredBlock75Stack1 := 0.
            recoveredBlock75PC := 117.
        ].
        recoveredBlock75Step = 117 ifTrue: [
            recoveredBlock75Local1 := recoveredBlock75Stack1.
            recoveredBlock75PC := 118.
        ].
        recoveredBlock75Step = 118 ifTrue: [
            recoveredBlock75Stack1 := recoveredBlock75Arg2.
            recoveredBlock75PC := 119.
        ].
        recoveredBlock75Step = 119 ifTrue: [
            recoveredBlock75Stack1 := (recoveredBlock75Stack1) + (-1).
            recoveredBlock75PC := 120.
        ].
        recoveredBlock75Step = 120 ifTrue: [
            recoveredBlock75PC := 140.
        ].
        recoveredBlock75Step = 124 ifTrue: [
            recoveredBlock75Stack2 := OSHglobal.
            recoveredBlock75PC := 126.
        ].
        recoveredBlock75Step = 126 ifTrue: [
            recoveredBlock75Stack3 := recoveredArg1.
            recoveredBlock75PC := 129.
        ].
        recoveredBlock75Step = 129 ifTrue: [
            recoveredBlock75Stack4 := recoveredBlock75Local1.
            recoveredBlock75PC := 130.
        ].
        recoveredBlock75Step = 130 ifTrue: [
            recoveredBlock75Stack3 := (recoveredBlock75Stack3) at: (recoveredBlock75Stack4).
            recoveredBlock75PC := 132.
        ].
        recoveredBlock75Step = 132 ifTrue: [
            recoveredBlock75Stack3 := (recoveredBlock75Stack3) y.
            recoveredBlock75PC := 134.
        ].
        recoveredBlock75Step = 134 ifTrue: [
            recoveredBlock75Stack3 := (recoveredBlock75Stack3) dataBufferHandle.
            recoveredBlock75PC := 136.
        ].
        recoveredBlock75Step = 136 ifTrue: [
            recoveredBlock75Stack2 := (recoveredBlock75Stack2) immediate: (recoveredBlock75Stack3).
            recoveredBlock75PC := 138.
        ].
        recoveredBlock75Step = 138 ifTrue: [
            (recoveredBlock75Stack2) globalUnlock.
            recoveredBlock75PC := 140.
        ].
        recoveredBlock75Step = 140 ifTrue: [
            (recoveredBlock75Stack1 isInteger and: [recoveredBlock75Local1 isInteger]) ifTrue: [(recoveredBlock75Local1 + 1 <= recoveredBlock75Stack1) ifTrue: [recoveredBlock75Local1 := recoveredBlock75Local1 + 1. recoveredBlock75PC := 124] ifFalse: [recoveredBlock75Local1 := nil. recoveredBlock75PC := 154]] ifFalse: [recoveredBlock75PC := 144].
        ].
        recoveredBlock75Step = 144 ifTrue: [
            recoveredBlock75Stack2 := recoveredBlock75Stack1.
            recoveredBlock75PC := 145.
        ].
        recoveredBlock75Step = 145 ifTrue: [
            recoveredBlock75Stack3 := recoveredBlock75Local1.
            recoveredBlock75PC := 146.
        ].
        recoveredBlock75Step = 146 ifTrue: [
            recoveredBlock75Stack3 := (recoveredBlock75Stack3) + (1).
            recoveredBlock75PC := 147.
        ].
        recoveredBlock75Step = 147 ifTrue: [
            recoveredBlock75Stack4 := recoveredBlock75Stack3.
            recoveredBlock75PC := 148.
        ].
        recoveredBlock75Step = 148 ifTrue: [
            recoveredBlock75Local1 := recoveredBlock75Stack4.
            recoveredBlock75PC := 149.
        ].
        recoveredBlock75Step = 149 ifTrue: [
            recoveredBlock75Stack2 := (recoveredBlock75Stack2) < (recoveredBlock75Stack3).
            recoveredBlock75PC := 150.
        ].
        recoveredBlock75Step = 150 ifTrue: [
            (recoveredBlock75Stack2) ifTrue: [recoveredBlock75PC := 152] ifFalse: [recoveredBlock75PC := 124].
        ].
        recoveredBlock75Step = 152 ifTrue: [
            recoveredBlock75Stack2 := nil.
            recoveredBlock75PC := 153.
        ].
        recoveredBlock75Step = 153 ifTrue: [
            recoveredBlock75Local1 := recoveredBlock75Stack2.
            recoveredBlock75PC := 154.
        ].
        recoveredBlock75Step = 154 ifTrue: [
            recoveredBlock75PC := 155.
        ].
        recoveredBlock75Step = 155 ifTrue: [
            recoveredBlock75Stack1 := false.
            recoveredBlock75PC := 156.
        ].
        recoveredBlock75Step = 156 ifTrue: [
            ^recoveredBlock75Stack1
        ].
        recoveredBlock75Step = 157 ifTrue: [
            recoveredBlock75Stack1 := recoveredLocal11.
            recoveredBlock75PC := 160.
        ].
        recoveredBlock75Step = 160 ifTrue: [
            recoveredBlock75Stack2 := recoveredBlock75Arg2.
            recoveredBlock75PC := 161.
        ].
        recoveredBlock75Step = 161 ifTrue: [
            recoveredBlock75Stack3 := recoveredBlock75Local2.
            recoveredBlock75PC := 162.
        ].
        recoveredBlock75Step = 162 ifTrue: [
            (recoveredBlock75Stack1) at: (recoveredBlock75Stack2) put: (recoveredBlock75Stack3).
            recoveredBlock75PC := 164.
        ].
        recoveredBlock75Step = 164 ifTrue: [
            recoveredBlock75Stack1 := recoveredBlock75Arg1.
            recoveredBlock75PC := 165.
        ].
        recoveredBlock75Step = 165 ifTrue: [
            recoveredBlock75Stack1 := (recoveredBlock75Stack1) y.
            recoveredBlock75PC := 167.
        ].
        recoveredBlock75Step = 167 ifTrue: [
            recoveredBlock75Stack1 := (recoveredBlock75Stack1) byteSize.
            recoveredBlock75PC := 169.
        ].
        recoveredBlock75Step = 169 ifTrue: [
            recoveredBlock75Stack2 := 1.
            recoveredBlock75PC := 171.
        ].
        recoveredBlock75Step = 171 ifTrue: [
            recoveredBlock75Stack1 := (recoveredBlock75Stack1) = (recoveredBlock75Stack2).
            recoveredBlock75PC := 172.
        ].
        recoveredBlock75Step = 172 ifTrue: [
            (recoveredBlock75Stack1) ifTrue: [recoveredBlock75PC := 176] ifFalse: [recoveredBlock75PC := 196].
        ].
        recoveredBlock75Step = 176 ifTrue: [
            recoveredBlock75Stack1 := recoveredLocal10.
            recoveredBlock75PC := 179.
        ].
        recoveredBlock75Step = 179 ifTrue: [
            recoveredBlock75Stack2 := recoveredBlock75Arg2.
            recoveredBlock75PC := 180.
        ].
        recoveredBlock75Step = 180 ifTrue: [
            recoveredBlock75Stack3 := [:block28120298Arg1 :block28120298Arg2 | 
    | block28120298Value0 block28120298Value1 block28120298Value2 |
    block28120298Value0 := block28120298Arg1.
    block28120298Value1 := block28120298Arg2.
    block28120298Value2 := (block28120298Value0) uint8At: (block28120298Value1).
    block28120298Value2
].
            recoveredBlock75PC := 182.
        ].
        recoveredBlock75Step = 182 ifTrue: [
            recoveredBlock75PC := 191.
        ].
        recoveredBlock75Step = 191 ifTrue: [
            recoveredBlock75Stack1 := (recoveredBlock75Stack1) at: (recoveredBlock75Stack2) put: (recoveredBlock75Stack3).
            recoveredBlock75PC := 193.
        ].
        recoveredBlock75Step = 193 ifTrue: [
            recoveredBlock75PC := 309.
        ].
        recoveredBlock75Step = 196 ifTrue: [
            recoveredBlock75Stack1 := recoveredBlock75Arg1.
            recoveredBlock75PC := 197.
        ].
        recoveredBlock75Step = 197 ifTrue: [
            recoveredBlock75Stack1 := (recoveredBlock75Stack1) y.
            recoveredBlock75PC := 199.
        ].
        recoveredBlock75Step = 199 ifTrue: [
            recoveredBlock75Stack1 := (recoveredBlock75Stack1) byteSize.
            recoveredBlock75PC := 201.
        ].
        recoveredBlock75Step = 201 ifTrue: [
            recoveredBlock75Stack2 := 2.
            recoveredBlock75PC := 203.
        ].
        recoveredBlock75Step = 203 ifTrue: [
            recoveredBlock75Stack1 := (recoveredBlock75Stack1) = (recoveredBlock75Stack2).
            recoveredBlock75PC := 204.
        ].
        recoveredBlock75Step = 204 ifTrue: [
            (recoveredBlock75Stack1) ifTrue: [recoveredBlock75PC := 208] ifFalse: [recoveredBlock75PC := 232].
        ].
        recoveredBlock75Step = 208 ifTrue: [
            recoveredBlock75Stack1 := recoveredLocal10.
            recoveredBlock75PC := 211.
        ].
        recoveredBlock75Step = 211 ifTrue: [
            recoveredBlock75Stack2 := recoveredBlock75Arg2.
            recoveredBlock75PC := 212.
        ].
        recoveredBlock75Step = 212 ifTrue: [
            recoveredBlock75Stack3 := [:block281202bcArg1 :block281202bcArg2 | 
    | block281202bcValue0 block281202bcValue1 block281202bcValue2 block281202bcValue3 |
    block281202bcValue0 := block281202bcArg1.
    block281202bcValue1 := block281202bcArg2.
    block281202bcValue2 := (block281202bcValue1) * (2).
    block281202bcValue3 := (block281202bcValue0) uint16At: (block281202bcValue2).
    block281202bcValue3
].
            recoveredBlock75PC := 214.
        ].
        recoveredBlock75Step = 214 ifTrue: [
            recoveredBlock75PC := 226.
        ].
        recoveredBlock75Step = 226 ifTrue: [
            recoveredBlock75Stack1 := (recoveredBlock75Stack1) at: (recoveredBlock75Stack2) put: (recoveredBlock75Stack3).
            recoveredBlock75PC := 228.
        ].
        recoveredBlock75Step = 228 ifTrue: [
            recoveredBlock75PC := 309.
        ].
        recoveredBlock75Step = 232 ifTrue: [
            recoveredBlock75Stack1 := self.
            recoveredBlock75PC := 233.
        ].
        recoveredBlock75Step = 233 ifTrue: [
            (recoveredBlock75Stack1) unfinished.
            recoveredBlock75PC := 235.
        ].
        recoveredBlock75Step = 235 ifTrue: [
            recoveredBlock75Stack1 := recoveredBlock75Arg1.
            recoveredBlock75PC := 236.
        ].
        recoveredBlock75Step = 236 ifTrue: [
            recoveredBlock75Stack1 := (recoveredBlock75Stack1) y.
            recoveredBlock75PC := 238.
        ].
        recoveredBlock75Step = 238 ifTrue: [
            recoveredBlock75Stack1 := (recoveredBlock75Stack1) byteSize.
            recoveredBlock75PC := 240.
        ].
        recoveredBlock75Step = 240 ifTrue: [
            recoveredBlock75Stack2 := 4.
            recoveredBlock75PC := 242.
        ].
        recoveredBlock75Step = 242 ifTrue: [
            recoveredBlock75Stack1 := (recoveredBlock75Stack1) = (recoveredBlock75Stack2).
            recoveredBlock75PC := 243.
        ].
        recoveredBlock75Step = 243 ifTrue: [
            (recoveredBlock75Stack1) ifTrue: [recoveredBlock75PC := 246] ifFalse: [recoveredBlock75PC := 270].
        ].
        recoveredBlock75Step = 246 ifTrue: [
            recoveredBlock75Stack1 := recoveredLocal10.
            recoveredBlock75PC := 249.
        ].
        recoveredBlock75Step = 249 ifTrue: [
            recoveredBlock75Stack2 := recoveredBlock75Arg2.
            recoveredBlock75PC := 250.
        ].
        recoveredBlock75Step = 250 ifTrue: [
            recoveredBlock75Stack3 := [:block281202e0Arg1 :block281202e0Arg2 | 
    | block281202e0Value0 block281202e0Value1 block281202e0Value2 block281202e0Value3 |
    block281202e0Value0 := block281202e0Arg1.
    block281202e0Value1 := block281202e0Arg2.
    block281202e0Value2 := (block281202e0Value1) * (4).
    block281202e0Value3 := (block281202e0Value0) uint32At: (block281202e0Value2).
    block281202e0Value3
].
            recoveredBlock75PC := 252.
        ].
        recoveredBlock75Step = 252 ifTrue: [
            recoveredBlock75PC := 264.
        ].
        recoveredBlock75Step = 264 ifTrue: [
            recoveredBlock75Stack1 := (recoveredBlock75Stack1) at: (recoveredBlock75Stack2) put: (recoveredBlock75Stack3).
            recoveredBlock75PC := 266.
        ].
        recoveredBlock75Step = 266 ifTrue: [
            recoveredBlock75PC := 309.
        ].
        recoveredBlock75Step = 270 ifTrue: [
            recoveredBlock75Stack1 := recoveredLocal10.
            recoveredBlock75PC := 273.
        ].
        recoveredBlock75Step = 273 ifTrue: [
            recoveredBlock75Stack2 := recoveredBlock75Arg2.
            recoveredBlock75PC := 274.
        ].
        recoveredBlock75Step = 274 ifTrue: [
            recoveredBlock75Stack3 := [:block28120304Arg1 :block28120304Arg2 | 
    | block28120304Local1 block28120304Local2 block28120304Value0 block28120304Value1 block28120304Value2 block28120304Value3 block28120304Value4 block28120304Value5 block28120304Value6 block28120304Value7 block28120304Value8 block28120304Value9 block28120304Value10 block28120304Value11 block28120304Value12 |
    block28120304Value0 := WinUInt64.
    block28120304Value1 := block28120304Arg1.
    block28120304Value2 := block28120304Arg2.
    block28120304Value3 := (block28120304Value2) * (8).
    block28120304Value4 := (block28120304Value1) uint64At: (block28120304Value3).
    block28120304Value5 := (block28120304Value0) with: (block28120304Value4).
    block28120304Local2 := block28120304Value5.
    block28120304Value6 := WinUInt32.
    block28120304Value7 := (block28120304Value6) createDefault.
    block28120304Local1 := block28120304Value7.
    block28120304Value8 := ByteArray.
    block28120304Value9 := block28120304Local2.
    block28120304Value10 := block28120304Local1.
    (block28120304Value8) apiDouble2float: (block28120304Value9) float: (block28120304Value10).
    block28120304Value11 := block28120304Local1.
    block28120304Value12 := (block28120304Value11) asValue.
    block28120304Value12
].
            recoveredBlock75PC := 276.
        ].
        recoveredBlock75Step = 276 ifTrue: [
            recoveredBlock75PC := 307.
        ].
        recoveredBlock75Step = 307 ifTrue: [
            recoveredBlock75Stack1 := (recoveredBlock75Stack1) at: (recoveredBlock75Stack2) put: (recoveredBlock75Stack3).
            recoveredBlock75PC := 309.
        ].
        recoveredBlock75Step = 309 ifTrue: [
            recoveredBlock75Result := recoveredBlock75Stack1.
            recoveredBlock75Done := true.
        ].
    ].
    recoveredBlock75Result
].
            recoveredPC := 310.
        ].
        recoveredStep = 310 ifTrue: [
            (recoveredStack1) doWithIndex: (recoveredStack2).
            recoveredPC := 312.
        ].
        recoveredStep = 312 ifTrue: [
            recoveredStack1 := recoveredLocal12.
            recoveredPC := 315.
        ].
        recoveredStep = 315 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 317.
        ].
        recoveredStep = 317 ifTrue: [
            recoveredPC := 525.
        ].
        recoveredStep = 320 ifTrue: [
            recoveredLocal5 := recoveredStack3.
            recoveredPC := 323.
        ].
        recoveredStep = 323 ifTrue: [
            recoveredStack3 := recoveredLocal14.
            recoveredPC := 326.
        ].
        recoveredStep = 326 ifTrue: [
            recoveredStack4 := recoveredLocal5.
            recoveredPC := 329.
        ].
        recoveredStep = 329 ifTrue: [
            recoveredStack4 := (recoveredStack4) + (-1).
            recoveredPC := 330.
        ].
        recoveredStep = 330 ifTrue: [
            recoveredStack5 := 4.
            recoveredPC := 332.
        ].
        recoveredStep = 332 ifTrue: [
            recoveredStack4 := (recoveredStack4) * (recoveredStack5).
            recoveredPC := 333.
        ].
        recoveredStep = 333 ifTrue: [
            recoveredStack3 := (recoveredStack3) uint32At: (recoveredStack4).
            recoveredPC := 335.
        ].
        recoveredStep = 335 ifTrue: [
            recoveredLocal9 := recoveredStack3.
            recoveredPC := 338.
        ].
        recoveredStep = 338 ifTrue: [
            recoveredStack3 := mdfLib.
            recoveredPC := 340.
        ].
        recoveredStep = 340 ifTrue: [
            recoveredStack4 := recoveredArg2.
            recoveredPC := 343.
        ].
        recoveredStep = 343 ifTrue: [
            recoveredStack4 := (recoveredStack4) first.
            recoveredPC := 344.
        ].
        recoveredStep = 344 ifTrue: [
            recoveredStack4 := (recoveredStack4) value.
            recoveredPC := 346.
        ].
        recoveredStep = 346 ifTrue: [
            recoveredStack5 := recoveredLocal9.
            recoveredPC := 349.
        ].
        recoveredStep = 349 ifTrue: [
            (recoveredStack3) chnWrite: (recoveredStack4) value: (recoveredStack5).
            recoveredPC := 351.
        ].
        recoveredStep = 351 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 354.
        ].
        recoveredStep = 354 ifTrue: [
            recoveredStack3 := (recoveredStack3) size.
            recoveredPC := 356.
        ].
        recoveredStep = 356 ifTrue: [
            recoveredStack4 := 1.
            recoveredPC := 358.
        ].
        recoveredStep = 358 ifTrue: [
            recoveredPC := 492.
        ].
        recoveredStep = 362 ifTrue: [
            recoveredLocal4 := recoveredStack5.
            recoveredPC := 365.
        ].
        recoveredStep = 365 ifTrue: [
            recoveredStack5 := recoveredArg2.
            recoveredPC := 368.
        ].
        recoveredStep = 368 ifTrue: [
            recoveredStack6 := recoveredLocal4.
            recoveredPC := 371.
        ].
        recoveredStep = 371 ifTrue: [
            recoveredStack5 := (recoveredStack5) at: (recoveredStack6).
            recoveredPC := 373.
        ].
        recoveredStep = 373 ifTrue: [
            recoveredLocal3 := recoveredStack5.
            recoveredPC := 376.
        ].
        recoveredStep = 376 ifTrue: [
            recoveredStack5 := recoveredLocal10.
            recoveredPC := 379.
        ].
        recoveredStep = 379 ifTrue: [
            recoveredStack6 := recoveredLocal4.
            recoveredPC := 382.
        ].
        recoveredStep = 382 ifTrue: [
            recoveredStack6 := (recoveredStack6) + (-1).
            recoveredPC := 383.
        ].
        recoveredStep = 383 ifTrue: [
            recoveredStack5 := (recoveredStack5) at: (recoveredStack6).
            recoveredPC := 385.
        ].
        recoveredStep = 385 ifTrue: [
            recoveredStack6 := recoveredLocal11.
            recoveredPC := 388.
        ].
        recoveredStep = 388 ifTrue: [
            recoveredStack7 := recoveredLocal4.
            recoveredPC := 391.
        ].
        recoveredStep = 391 ifTrue: [
            recoveredStack7 := (recoveredStack7) + (-1).
            recoveredPC := 392.
        ].
        recoveredStep = 392 ifTrue: [
            recoveredStack6 := (recoveredStack6) at: (recoveredStack7).
            recoveredPC := 394.
        ].
        recoveredStep = 394 ifTrue: [
            recoveredStack7 := recoveredLocal5.
            recoveredPC := 397.
        ].
        recoveredStep = 397 ifTrue: [
            recoveredStack7 := (recoveredStack7) + (-1).
            recoveredPC := 398.
        ].
        recoveredStep = 398 ifTrue: [
            recoveredStack5 := (recoveredStack5) value: (recoveredStack6) value: (recoveredStack7).
            recoveredPC := 400.
        ].
        recoveredStep = 400 ifTrue: [
            recoveredLocal8 := recoveredStack5.
            recoveredPC := 403.
        ].
        recoveredStep = 403 ifTrue: [
            recoveredStack5 := recoveredLocal3.
            recoveredPC := 406.
        ].
        recoveredStep = 406 ifTrue: [
            recoveredStack5 := (recoveredStack5) key.
            recoveredPC := 408.
        ].
        recoveredStep = 408 ifTrue: [
            recoveredLocal2 := recoveredStack5.
            recoveredPC := 411.
        ].
        recoveredStep = 411 ifTrue: [
            recoveredStack5 := recoveredLocal3.
            recoveredPC := 414.
        ].
        recoveredStep = 414 ifTrue: [
            recoveredStack5 := (recoveredStack5) value.
            recoveredPC := 416.
        ].
        recoveredStep = 416 ifTrue: [
            recoveredLocal1 := recoveredStack5.
            recoveredPC := 419.
        ].
        recoveredStep = 419 ifTrue: [
            recoveredStack5 := recoveredLocal2.
            recoveredPC := 422.
        ].
        recoveredStep = 422 ifTrue: [
            recoveredStack6 := [:recoveredBlock422Arg1 :recoveredBlock422Arg2 | 
    | recoveredBlock422Stack0 recoveredBlock422Stack1 recoveredBlock422Stack2 recoveredBlock422Stack3 recoveredBlock422Stack4 recoveredBlock422PC recoveredBlock422Step recoveredBlock422Done recoveredBlock422Result |
    recoveredBlock422Stack0 := self.
    recoveredBlock422PC := 428.
    recoveredBlock422Done := false.
    [recoveredBlock422Done not] whileTrue: [
        recoveredBlock422Step := recoveredBlock422PC.
        recoveredBlock422Step = 428 ifTrue: [
            recoveredBlock422Stack1 := recoveredBlock422Arg1.
            recoveredBlock422PC := 429.
        ].
        recoveredBlock422Step = 429 ifTrue: [
            recoveredBlock422Stack1 := (recoveredBlock422Stack1) isBitData.
            recoveredBlock422PC := 431.
        ].
        recoveredBlock422Step = 431 ifTrue: [
            (recoveredBlock422Stack1) ifTrue: [recoveredBlock422PC := 434] ifFalse: [recoveredBlock422PC := 464].
        ].
        recoveredBlock422Step = 434 ifTrue: [
            recoveredBlock422Stack1 := recoveredBlock422Arg1.
            recoveredBlock422PC := 435.
        ].
        recoveredBlock422Step = 435 ifTrue: [
            recoveredBlock422Stack1 := (recoveredBlock422Stack1) data.
            recoveredBlock422PC := 437.
        ].
        recoveredBlock422Step = 437 ifTrue: [
            recoveredBlock422Stack1 := (recoveredBlock422Stack1) baseData.
            recoveredBlock422PC := 439.
        ].
        recoveredBlock422Step = 439 ifTrue: [
            recoveredBlock422Stack2 := recoveredLocal8.
            recoveredBlock422PC := 442.
        ].
        recoveredBlock422Step = 442 ifTrue: [
            recoveredBlock422Stack1 := (recoveredBlock422Stack1) getPhysValue: (recoveredBlock422Stack2).
            recoveredBlock422PC := 444.
        ].
        recoveredBlock422Step = 444 ifTrue: [
            recoveredLocal6 := recoveredBlock422Stack1.
            recoveredBlock422PC := 447.
        ].
        recoveredBlock422Step = 447 ifTrue: [
            recoveredBlock422Stack1 := mdfLib.
            recoveredBlock422PC := 449.
        ].
        recoveredBlock422Step = 449 ifTrue: [
            recoveredBlock422Stack2 := recoveredLocal1.
            recoveredBlock422PC := 452.
        ].
        recoveredBlock422Step = 452 ifTrue: [
            recoveredBlock422Stack3 := recoveredBlock422Arg2.
            recoveredBlock422PC := 453.
        ].
        recoveredBlock422Step = 453 ifTrue: [
            recoveredBlock422Stack2 := (recoveredBlock422Stack2) at: (recoveredBlock422Stack3).
            recoveredBlock422PC := 455.
        ].
        recoveredBlock422Step = 455 ifTrue: [
            recoveredBlock422Stack3 := recoveredLocal6.
            recoveredBlock422PC := 458.
        ].
        recoveredBlock422Step = 458 ifTrue: [
            recoveredBlock422Stack1 := (recoveredBlock422Stack1) chnWrite: (recoveredBlock422Stack2) value: (recoveredBlock422Stack3).
            recoveredBlock422PC := 460.
        ].
        recoveredBlock422Step = 460 ifTrue: [
            recoveredBlock422PC := 477.
        ].
        recoveredBlock422Step = 464 ifTrue: [
            recoveredBlock422Stack1 := mdfLib.
            recoveredBlock422PC := 466.
        ].
        recoveredBlock422Step = 466 ifTrue: [
            recoveredBlock422Stack2 := recoveredLocal1.
            recoveredBlock422PC := 469.
        ].
        recoveredBlock422Step = 469 ifTrue: [
            recoveredBlock422Stack3 := recoveredBlock422Arg2.
            recoveredBlock422PC := 470.
        ].
        recoveredBlock422Step = 470 ifTrue: [
            recoveredBlock422Stack2 := (recoveredBlock422Stack2) at: (recoveredBlock422Stack3).
            recoveredBlock422PC := 472.
        ].
        recoveredBlock422Step = 472 ifTrue: [
            recoveredBlock422Stack3 := recoveredLocal8.
            recoveredBlock422PC := 475.
        ].
        recoveredBlock422Step = 475 ifTrue: [
            recoveredBlock422Stack1 := (recoveredBlock422Stack1) chnWrite: (recoveredBlock422Stack2) value: (recoveredBlock422Stack3).
            recoveredBlock422PC := 477.
        ].
        recoveredBlock422Step = 477 ifTrue: [
            recoveredBlock422Result := recoveredBlock422Stack1.
            recoveredBlock422Done := true.
        ].
    ].
    recoveredBlock422Result
].
            recoveredPC := 478.
        ].
        recoveredStep = 478 ifTrue: [
            (recoveredStack5) doWithIndex: (recoveredStack6).
            recoveredPC := 480.
        ].
        recoveredStep = 480 ifTrue: [
            recoveredStack5 := nil.
            recoveredPC := 481.
        ].
        recoveredStep = 481 ifTrue: [
            recoveredStack6 := recoveredStack5.
            recoveredPC := 482.
        ].
        recoveredStep = 482 ifTrue: [
            recoveredLocal3 := recoveredStack6.
            recoveredPC := 485.
        ].
        recoveredStep = 485 ifTrue: [
            recoveredStack6 := recoveredStack5.
            recoveredPC := 486.
        ].
        recoveredStep = 486 ifTrue: [
            recoveredLocal2 := recoveredStack6.
            recoveredPC := 489.
        ].
        recoveredStep = 489 ifTrue: [
            recoveredLocal1 := recoveredStack5.
            recoveredPC := 492.
        ].
        recoveredStep = 492 ifTrue: [
            (recoveredStack3 isInteger and: [recoveredStack4 isInteger]) ifTrue: [(recoveredStack4 + 1 <= recoveredStack3) ifTrue: [recoveredStack4 := recoveredStack4 + 1. recoveredStack5 := recoveredStack4. recoveredPC := 362] ifFalse: [recoveredPC := 524]] ifFalse: [recoveredPC := 497].
        ].
        recoveredStep = 497 ifTrue: [
            recoveredLocal4 := recoveredStack4.
            recoveredPC := 500.
        ].
        recoveredStep = 500 ifTrue: [
            recoveredStack4 := recoveredStack3.
            recoveredPC := 501.
        ].
        recoveredStep = 501 ifTrue: [
            recoveredStack5 := recoveredLocal4.
            recoveredPC := 504.
        ].
        recoveredStep = 504 ifTrue: [
            recoveredStack5 := (recoveredStack5) + (1).
            recoveredPC := 505.
        ].
        recoveredStep = 505 ifTrue: [
            recoveredStack6 := recoveredStack5.
            recoveredPC := 506.
        ].
        recoveredStep = 506 ifTrue: [
            recoveredLocal4 := recoveredStack6.
            recoveredPC := 509.
        ].
        recoveredStep = 509 ifTrue: [
            recoveredStack4 := (recoveredStack4) < (recoveredStack5).
            recoveredPC := 510.
        ].
        recoveredStep = 510 ifTrue: [
            (recoveredStack4) ifTrue: [recoveredPC := 520] ifFalse: [recoveredPC := 514].
        ].
        recoveredStep = 514 ifTrue: [
            recoveredStack4 := recoveredLocal4.
            recoveredPC := 517.
        ].
        recoveredStep = 517 ifTrue: [
            recoveredPC := 365.
        ].
        recoveredStep = 520 ifTrue: [
            recoveredStack4 := nil.
            recoveredPC := 521.
        ].
        recoveredStep = 521 ifTrue: [
            recoveredLocal4 := recoveredStack4.
            recoveredPC := 524.
        ].
        recoveredStep = 524 ifTrue: [
            recoveredPC := 525.
        ].
        recoveredStep = 525 ifTrue: [
            (recoveredStack1 isInteger and: [recoveredStack2 isInteger]) ifTrue: [(recoveredStack2 + 1 <= recoveredStack1) ifTrue: [recoveredStack2 := recoveredStack2 + 1. recoveredStack3 := recoveredStack2. recoveredPC := 320] ifFalse: [recoveredPC := 556]] ifFalse: [recoveredPC := 529].
        ].
        recoveredStep = 529 ifTrue: [
            recoveredLocal5 := recoveredStack2.
            recoveredPC := 532.
        ].
        recoveredStep = 532 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 533.
        ].
        recoveredStep = 533 ifTrue: [
            recoveredStack3 := recoveredLocal5.
            recoveredPC := 536.
        ].
        recoveredStep = 536 ifTrue: [
            recoveredStack3 := (recoveredStack3) + (1).
            recoveredPC := 537.
        ].
        recoveredStep = 537 ifTrue: [
            recoveredStack4 := recoveredStack3.
            recoveredPC := 538.
        ].
        recoveredStep = 538 ifTrue: [
            recoveredLocal5 := recoveredStack4.
            recoveredPC := 541.
        ].
        recoveredStep = 541 ifTrue: [
            recoveredStack2 := (recoveredStack2) < (recoveredStack3).
            recoveredPC := 542.
        ].
        recoveredStep = 542 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 552] ifFalse: [recoveredPC := 546].
        ].
        recoveredStep = 546 ifTrue: [
            recoveredStack2 := recoveredLocal5.
            recoveredPC := 549.
        ].
        recoveredStep = 549 ifTrue: [
            recoveredPC := 323.
        ].
        recoveredStep = 552 ifTrue: [
            recoveredStack2 := nil.
            recoveredPC := 553.
        ].
        recoveredStep = 553 ifTrue: [
            recoveredLocal5 := recoveredStack2.
            recoveredPC := 556.
        ].
        recoveredStep = 556 ifTrue: [
            recoveredPC := 557.
        ].
        recoveredStep = 557 ifTrue: [
            recoveredStack1 := OSHglobal.
            recoveredPC := 559.
        ].
        recoveredStep = 559 ifTrue: [
            recoveredStack2 := recoveredLocal13.
            recoveredPC := 562.
        ].
        recoveredStep = 562 ifTrue: [
            recoveredStack2 := (recoveredStack2) dataBufferHandle.
            recoveredPC := 564.
        ].
        recoveredStep = 564 ifTrue: [
            recoveredStack1 := (recoveredStack1) immediate: (recoveredStack2).
            recoveredPC := 566.
        ].
        recoveredStep = 566 ifTrue: [
            (recoveredStack1) globalUnlock.
            recoveredPC := 568.
        ].
        recoveredStep = 568 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 571.
        ].
        recoveredStep = 571 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 573.
        ].
        recoveredStep = 573 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 575.
        ].
        recoveredStep = 575 ifTrue: [
            recoveredPC := 599.
        ].
        recoveredStep = 578 ifTrue: [
            recoveredLocal5 := recoveredStack3.
            recoveredPC := 581.
        ].
        recoveredStep = 581 ifTrue: [
            recoveredStack3 := OSHglobal.
            recoveredPC := 583.
        ].
        recoveredStep = 583 ifTrue: [
            recoveredStack4 := recoveredArg1.
            recoveredPC := 586.
        ].
        recoveredStep = 586 ifTrue: [
            recoveredStack5 := recoveredLocal5.
            recoveredPC := 589.
        ].
        recoveredStep = 589 ifTrue: [
            recoveredStack4 := (recoveredStack4) at: (recoveredStack5).
            recoveredPC := 591.
        ].
        recoveredStep = 591 ifTrue: [
            recoveredStack4 := (recoveredStack4) y.
            recoveredPC := 593.
        ].
        recoveredStep = 593 ifTrue: [
            recoveredStack4 := (recoveredStack4) dataBufferHandle.
            recoveredPC := 595.
        ].
        recoveredStep = 595 ifTrue: [
            recoveredStack3 := (recoveredStack3) immediate: (recoveredStack4).
            recoveredPC := 597.
        ].
        recoveredStep = 597 ifTrue: [
            (recoveredStack3) globalUnlock.
            recoveredPC := 599.
        ].
        recoveredStep = 599 ifTrue: [
            (recoveredStack1 isInteger and: [recoveredStack2 isInteger]) ifTrue: [(recoveredStack2 + 1 <= recoveredStack1) ifTrue: [recoveredStack2 := recoveredStack2 + 1. recoveredStack3 := recoveredStack2. recoveredPC := 578] ifFalse: [recoveredPC := 627]] ifFalse: [recoveredPC := 602].
        ].
        recoveredStep = 602 ifTrue: [
            recoveredLocal5 := recoveredStack2.
            recoveredPC := 605.
        ].
        recoveredStep = 605 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 606.
        ].
        recoveredStep = 606 ifTrue: [
            recoveredStack3 := recoveredLocal5.
            recoveredPC := 609.
        ].
        recoveredStep = 609 ifTrue: [
            recoveredStack3 := (recoveredStack3) + (1).
            recoveredPC := 610.
        ].
        recoveredStep = 610 ifTrue: [
            recoveredStack4 := recoveredStack3.
            recoveredPC := 611.
        ].
        recoveredStep = 611 ifTrue: [
            recoveredLocal5 := recoveredStack4.
            recoveredPC := 614.
        ].
        recoveredStep = 614 ifTrue: [
            recoveredStack2 := (recoveredStack2) < (recoveredStack3).
            recoveredPC := 615.
        ].
        recoveredStep = 615 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 623] ifFalse: [recoveredPC := 618].
        ].
        recoveredStep = 618 ifTrue: [
            recoveredStack2 := recoveredLocal5.
            recoveredPC := 621.
        ].
        recoveredStep = 621 ifTrue: [
            recoveredPC := 581.
        ].
        recoveredStep = 623 ifTrue: [
            recoveredStack2 := nil.
            recoveredPC := 624.
        ].
        recoveredStep = 624 ifTrue: [
            recoveredLocal5 := recoveredStack2.
            recoveredPC := 627.
        ].
        recoveredStep = 627 ifTrue: [
            recoveredPC := 628.
        ].
        recoveredStep = 628 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 629.
        ].
        recoveredStep = 629 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

