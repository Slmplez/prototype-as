"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2006c7ac; bytecode file offset 0x9692b0"
!FamosBufferDefinition methodsFor: 'recovered'!
noOfBuffers
    | recoveredValue0 |
    recoveredValue0 := noOfBuffers.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006cac0; bytecode file offset 0x969c04"
!FamosBufferDefinition methodsFor: 'recovered'!
userInfoSize
    | recoveredValue0 |
    recoveredValue0 := userInfoSize.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006d76c; bytecode file offset 0x96a390"
!FamosBufferDefinition methodsFor: 'recovered'!
buffers
    | recoveredValue0 |
    recoveredValue0 := buffers.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200783fc; bytecode file offset 0x9757c8"
!FamosBufferDefinition methodsFor: 'recovered'!
isFamosBufferDefinition
    ^true
! !

"ASDBase.ic method 0x200c34e4; bytecode file offset 0x9bfde0"
!FamosBufferDefinition methodsFor: 'recovered'!
noOfBuffers: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    noOfBuffers := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c36c8; bytecode file offset 0x9c058c"
!FamosBufferDefinition methodsFor: 'recovered'!
userInfoSize: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    userInfoSize := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c41dc; bytecode file offset 0x9c0bf0"
!FamosBufferDefinition methodsFor: 'recovered'!
buffers: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    buffers := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200d93cc; bytecode file offset 0x9d5d08"
!FamosBufferDefinition methodsFor: 'recovered'!
addToSuper: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    (self) parent: (recoveredValue0).
    recoveredValue1 := recoveredArg1.
    (recoveredValue1) addBufferDefinition: (self).
    ^true
! !

"ASDBase.ic method 0x200faf28; bytecode file offset 0x9f7824"
!FamosBufferDefinition methodsFor: 'recovered'!
putNoOfBuffersIn: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    (self) putSeparatorIn: (recoveredValue0).
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := noOfBuffers.
    (self) putIn: (recoveredValue1) integer: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x200faf88; bytecode file offset 0x9f78a4"
!FamosBufferDefinition methodsFor: 'recovered'!
putUserInfoSizeIn: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    (self) putSeparatorIn: (recoveredValue0).
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := userInfoSize.
    (self) putIn: (recoveredValue1) integer: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x200fb648; bytecode file offset 0x9f7f04"
!FamosBufferDefinition methodsFor: 'recovered'!
putOneNoBuffersIn: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    (self) putSeparatorIn: (recoveredValue0).
    recoveredValue1 := recoveredArg1.
    (self) putIn: (recoveredValue1) integer: (1).
    ^self
! !

"ASDBase.ic method 0x200fe904; bytecode file offset 0x9fb278"
!FamosBufferDefinition methodsFor: 'recovered'!
putIn: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    super putIn: (recoveredValue0).
    recoveredValue1 := recoveredArg1.
    (self) putSubKeysIn: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x2011623c; bytecode file offset 0xa12b10"
!FamosBufferDefinition methodsFor: 'recovered'!
bufferReferences
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := buffers.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := [:block280c6f30Arg1 | 
    | block280c6f30Value0 block280c6f30Value1 |
    block280c6f30Value0 := block280c6f30Arg1.
    block280c6f30Value1 := (block280c6f30Value0) bufferReference.
    block280c6f30Value1
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

"ASDBase.ic method 0x20140818; bytecode file offset 0xa3d0d4"
!FamosBufferDefinition methodsFor: 'recovered'!
initialize
    super initialize.
    noOfBuffers := nil.
    userInfoSize := nil.
    buffers := nil.
    ^self
! !

"ASDBase.ic method 0x20163bd0; bytecode file offset 0xa605cc"
!FamosBufferDefinition methodsFor: 'recovered'!
putFieldsIn: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg1.
    (self) putNoOfBuffersIn: (recoveredValue0).
    recoveredValue1 := recoveredArg1.
    (self) putUserInfoSizeIn: (recoveredValue1).
    recoveredValue2 := recoveredArg1.
    (self) putBuffersIn: (recoveredValue2).
    recoveredValue3 := recoveredArg1.
    (self) putEndIn: (recoveredValue3).
    ^self
! !

"ASDBase.ic method 0x20167f1c; bytecode file offset 0xa647e8"
!FamosBufferDefinition methodsFor: 'recovered'!
setFirstSampleOffset: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := buffers.
    recoveredValue1 := [:recoveredBlock6Arg1 | 
    | recoveredBlock6Value0 recoveredBlock6Value1 recoveredBlock6Value2 |
    recoveredBlock6Value0 := recoveredBlock6Arg1.
    recoveredBlock6Value1 := recoveredArg1.
    recoveredBlock6Value2 := (recoveredBlock6Value0) firstSampleOffset: (recoveredBlock6Value1).
    recoveredBlock6Value2
].
    (recoveredValue0) do: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x20167f2c; bytecode file offset 0xa647e8"
!FamosBufferDefinition methodsFor: 'recovered'!
putBuffersIn: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := buffers.
    recoveredValue1 := [:recoveredBlock6Arg1 | 
    | recoveredBlock6Value0 recoveredBlock6Value1 recoveredBlock6Value2 |
    recoveredBlock6Value0 := recoveredBlock6Arg1.
    recoveredBlock6Value1 := recoveredArg1.
    recoveredBlock6Value2 := (recoveredBlock6Value0) putIn: (recoveredBlock6Value1).
    recoveredBlock6Value2
].
    (recoveredValue0) do: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x201ca89c; bytecode file offset 0xac7160"
!FamosBufferDefinition methodsFor: 'recovered'!
minimizeSize
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            super minimizeSize.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := buffers.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack0) minimizeSize.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := buffers.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := [:block280d4f10Arg1 | 
    | block280d4f10Value0 block280d4f10Value1 |
    block280d4f10Value0 := block280d4f10Arg1.
    block280d4f10Value1 := (block280d4f10Value0) minimizeSize.
    block280d4f10Value1
].
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
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

"ASDBase.ic method 0x201e1008; bytecode file offset 0xadd8d4"
!FamosBufferDefinition methodsFor: 'recovered'!
getKeyBytesFor: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 |
    recoveredValue0 := ReadWriteStream.
    recoveredValue1 := (recoveredValue0) on: ('').
    recoveredLocal2 := recoveredValue1.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := recoveredLocal2.
    (self) putBuffer: (recoveredValue2) fieldsIn: (recoveredValue3).
    recoveredValue4 := recoveredLocal2.
    recoveredValue5 := (recoveredValue4) contents.
    recoveredLocal1 := recoveredValue5.
    recoveredValue6 := recoveredLocal1.
    recoveredValue7 := (recoveredValue6) size.
    recoveredValue8 := (recoveredValue7) - (4).
    keyLength := recoveredValue8.
    recoveredValue9 := recoveredLocal1.
    ^recoveredValue9
! !

"ASDBase.ic method 0x202125fc; bytecode file offset 0xb0eebc"
!FamosBufferDefinition methodsFor: 'recovered'!
getMaxBufferIndex
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredLocal1 := 1.
    recoveredValue0 := buffers.
    recoveredValue1 := [:recoveredBlock11Arg1 | 
    | recoveredBlock11Value0 recoveredBlock11Value1 recoveredBlock11Value2 recoveredBlock11Value3 |
    recoveredBlock11Value0 := recoveredBlock11Arg1.
    recoveredBlock11Value1 := (recoveredBlock11Value0) bufferReference.
    recoveredBlock11Value2 := (recoveredBlock11Value1) key.
    recoveredBlock11Value3 := recoveredBlock11Value2.
    recoveredLocal1 := recoveredBlock11Value3.
    recoveredBlock11Value2
].
    (recoveredValue0) do: (recoveredValue1).
    recoveredValue2 := recoveredLocal1.
    ^recoveredValue2
! !

"ASDBase.ic method 0x20221ca4; bytecode file offset 0xb1e570"
!FamosBufferDefinition methodsFor: 'recovered'!
putBuffer: recoveredArg1 fieldsIn: recoveredArg2
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) firstSampleOffset.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := recoveredArg1.
    (recoveredValue2) firstSampleOffset: (0).
    recoveredValue3 := recoveredArg2.
    (self) putOneNoBuffersIn: (recoveredValue3).
    recoveredValue4 := recoveredArg2.
    (self) putUserInfoSizeIn: (recoveredValue4).
    recoveredValue5 := recoveredArg1.
    recoveredValue6 := recoveredArg2.
    (recoveredValue5) putIn: (recoveredValue6).
    recoveredValue7 := recoveredArg2.
    (self) putEndIn: (recoveredValue7).
    recoveredValue8 := recoveredArg1.
    recoveredValue9 := recoveredLocal1.
    (recoveredValue8) firstSampleOffset: (recoveredValue9).
    ^self
! !

"ASDBase.ic method 0x202b819c; bytecode file offset 0xbb4a6c"
!FamosBufferDefinition methodsFor: 'recovered'!
addGroupFrom: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := LookupTable.
    recoveredValue1 := (recoveredValue0) new.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := buffers.
    recoveredValue3 := [:recoveredBlock12Arg1 :recoveredBlock12Arg2 | 
    | recoveredBlock12Value0 recoveredBlock12Value1 recoveredBlock12Value2 recoveredBlock12Value3 recoveredBlock12Value4 recoveredBlock12Value5 recoveredBlock12Value6 recoveredBlock12Value7 recoveredBlock12Value8 recoveredBlock12Value9 recoveredBlock12Value10 recoveredBlock12Value11 recoveredBlock12Value12 |
    recoveredBlock12Value0 := recoveredLocal1.
    recoveredBlock12Value1 := recoveredBlock12Arg1.
    recoveredBlock12Value2 := (recoveredBlock12Value1) bufferReference.
    recoveredBlock12Value3 := (recoveredBlock12Value2) key.
    recoveredBlock12Value4 := recoveredBlock12Arg2.
    recoveredBlock12Value5 := recoveredArg1.
    recoveredBlock12Value6 := (recoveredBlock12Value4) + (recoveredBlock12Value5).
    (recoveredBlock12Value0) at: (recoveredBlock12Value3) put: (recoveredBlock12Value6).
    recoveredBlock12Value7 := recoveredBlock12Arg1.
    recoveredBlock12Value8 := (recoveredBlock12Value7) bufferReference.
    recoveredBlock12Value9 := recoveredBlock12Arg2.
    recoveredBlock12Value10 := recoveredArg1.
    recoveredBlock12Value11 := (recoveredBlock12Value9) + (recoveredBlock12Value10).
    recoveredBlock12Value12 := (recoveredBlock12Value8) key: (recoveredBlock12Value11).
    recoveredBlock12Value12
].
    (recoveredValue2) doWithIndex: (recoveredValue3).
    recoveredValue4 := recoveredLocal1.
    ^recoveredValue4
! !

"ASDBase.ic method 0x20434694; bytecode file offset 0xd30f80"
!FamosBufferDefinition methodsFor: 'recovered'!
getFrom: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            super getFrom: (recoveredStack1).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) getInteger: (recoveredStack1).
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            noOfBuffers := recoveredStack0.
            recoveredPC := 14.
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
            recoveredStack0 := (recoveredStack0) getInteger: (recoveredStack1).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            userInfoSize := recoveredStack0.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := OrderedCollection.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := noOfBuffers.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (1).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := (recoveredStack0) new: (recoveredStack1).
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            buffers := recoveredStack0.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredPC := 95.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := 0.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack0 := noOfBuffers.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredPC := 54.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := FamosBuffer.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := (recoveredStack1) create.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack1 := (recoveredStack1) getFrom: (recoveredStack2).
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack1 := buffers.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            (recoveredStack1) add: (recoveredStack2).
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            (recoveredStack0 isInteger and: [recoveredLocal2 isInteger]) ifTrue: [(recoveredLocal2 + 1 <= recoveredStack0) ifTrue: [recoveredLocal2 := recoveredLocal2 + 1. recoveredPC := 40] ifFalse: [recoveredLocal2 := nil. recoveredPC := 68]] ifFalse: [recoveredPC := 58].
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack2 := (recoveredStack2) + (1).
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack3 := recoveredStack2.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredLocal2 := recoveredStack3.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack1 := (recoveredStack1) < (recoveredStack2).
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 66] ifFalse: [recoveredPC := 40].
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack1 := 1.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            (recoveredStack0) backup: (recoveredStack1).
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack0 := (recoveredStack0) peek.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack1 := (recoveredStack1) endChar.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 93] ifFalse: [recoveredPC := 84].
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack1 := SCFamosInvalidNumberOfBuffers.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredStack2 := noOfBuffers.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack2 := (recoveredStack2) printString.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            (recoveredStack0) logError: (recoveredStack1) word: (recoveredStack2).
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 95 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack0 := (recoveredStack0) peek.
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            recoveredStack1 := (recoveredStack1) endChar.
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 104] ifFalse: [recoveredPC := 32].
        ].
        recoveredStep = 104 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

