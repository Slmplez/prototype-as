"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x200006d0; bytecode file offset 0x8ffcfc"
!AMLIfData methodsFor: 'recovered'!
baseString
    ^self
! !

"ASDBase.ic method 0x20000930; bytecode file offset 0x8ffcfc"
!AMLIfData methodsFor: 'recovered'!
asLabelIFData
    ^self
! !

"ASDBase.ic method 0x20001138; bytecode file offset 0x8ffcfc"
!AMLIfData methodsFor: 'recovered'!
asMemorySegmentIFData
    ^self
! !

"ASDBase.ic method 0x200017f0; bytecode file offset 0x8ffcfc"
!AMLIfData methodsFor: 'recovered'!
asModuleIFData
    ^self
! !

"ASDBase.ic method 0x20002278; bytecode file offset 0x8ffcfc"
!AMLIfData methodsFor: 'recovered'!
kpBlobObject
    ^self
! !

"ASDBase.ic method 0x20002850; bytecode file offset 0x8ffcfc"
!AMLIfData methodsFor: 'recovered'!
emMutate
    ^self
! !

"ASDBase.ic method 0x20003600; bytecode file offset 0x90206c"
!AMLIfData methodsFor: 'recovered'!
longName: recoveredArg1
    ^self
! !

"ASDBase.ic method 0x200048c8; bytecode file offset 0x90206c"
!AMLIfData methodsFor: 'recovered'!
displayIdentifier: recoveredArg1
    ^self
! !

"ASDBase.ic method 0x20004b48; bytecode file offset 0x90206c"
!AMLIfData methodsFor: 'recovered'!
annotation: recoveredArg1
    ^self
! !

"ASDBase.ic method 0x2000d3ec; bytecode file offset 0x909e08"
!AMLIfData methodsFor: 'recovered'!
versionCheck: recoveredArg1
    ^true
! !

"ASDBase.ic method 0x20022928; bytecode file offset 0x92209c"
!AMLIfData methodsFor: 'recovered'!
getModuleSetMethod
    ^'addIFData:'
! !

"ASDBase.ic method 0x20024410; bytecode file offset 0x92209c"
!AMLIfData methodsFor: 'recovered'!
pathName
    ^'the ifData itself '
! !

"ASDBase.ic method 0x20040ac8; bytecode file offset 0x93d83c"
!AMLIfData methodsFor: 'recovered'!
isValidMemoryLayoutIfData
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := ifData.
    recoveredValue1 := (recoveredValue0) notEmpty.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20040d74; bytecode file offset 0x93d83c"
!AMLIfData methodsFor: 'recovered'!
isValid
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := ifData.
    recoveredValue1 := (recoveredValue0) notEmpty.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20056238; bytecode file offset 0x952c58"
!AMLIfData methodsFor: 'recovered'!
putNewLineIn: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (recoveredValue0) cr.
    ^self
! !

"ASDBase.ic method 0x20066694; bytecode file offset 0x963428"
!AMLIfData methodsFor: 'recovered'!
name
    | recoveredValue0 |
    recoveredValue0 := name.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200669dc; bytecode file offset 0x963428"
!AMLIfData methodsFor: 'recovered'!
label
    | recoveredValue0 |
    recoveredValue0 := name.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006727c; bytecode file offset 0x9646f8"
!AMLIfData methodsFor: 'recovered'!
ifData
    | recoveredValue0 |
    recoveredValue0 := ifData.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20068c3c; bytecode file offset 0x965b90"
!AMLIfData methodsFor: 'recovered'!
module
    | recoveredValue0 |
    recoveredValue0 := module.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20069d30; bytecode file offset 0x966bdc"
!AMLIfData methodsFor: 'recovered'!
aml
    | recoveredValue0 |
    recoveredValue0 := aml.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20073210; bytecode file offset 0x970b34"
!AMLIfData methodsFor: 'recovered'!
addressFromIfData
    ^nil
! !

"ASDBase.ic method 0x20073970; bytecode file offset 0x970b34"
!AMLIfData methodsFor: 'recovered'!
displayIdentifier
    ^nil
! !

"ASDBase.ic method 0x20073b78; bytecode file offset 0x970b34"
!AMLIfData methodsFor: 'recovered'!
isEXRAMRange
    ^nil
! !

"ASDBase.ic method 0x20074090; bytecode file offset 0x970b34"
!AMLIfData methodsFor: 'recovered'!
longName
    ^nil
! !

"ASDBase.ic method 0x20074108; bytecode file offset 0x970b34"
!AMLIfData methodsFor: 'recovered'!
annotation
    ^nil
! !

"ASDBase.ic method 0x200778e4; bytecode file offset 0x9757c8"
!AMLIfData methodsFor: 'recovered'!
isAmlIfdata
    ^true
! !

"ASDBase.ic method 0x20083314; bytecode file offset 0x97fbf0"
!AMLIfData methodsFor: 'recovered'!
readFromBytesUsing: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := ifData.
    recoveredValue2 := (recoveredValue0) readFromBytes: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x200aa3a8; bytecode file offset 0x9a6c6c"
!AMLIfData methodsFor: 'recovered'!
putSeparatorIn: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (recoveredValue0) nextPut: ($ ).
    ^self
! !

"ASDBase.ic method 0x200b16dc; bytecode file offset 0x9adf94"
!AMLIfData methodsFor: 'recovered'!
getAml
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := module.
    recoveredValue1 := name.
    recoveredValue2 := (recoveredValue0) amlForDeviceLabel: (recoveredValue1).
    aml := recoveredValue2.
    ^self
! !

"ASDBase.ic method 0x200be69c; bytecode file offset 0x9bb178"
!AMLIfData methodsFor: 'recovered'!
name: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    name := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200bf368; bytecode file offset 0x9bc0b4"
!AMLIfData methodsFor: 'recovered'!
ifData: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    ifData := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200bfa74; bytecode file offset 0x9bd228"
!AMLIfData methodsFor: 'recovered'!
module: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    module := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c15e8; bytecode file offset 0x9bdf14"
!AMLIfData methodsFor: 'recovered'!
aml: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    aml := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c7da4; bytecode file offset 0x9c468c"
!AMLIfData methodsFor: 'recovered'!
putIn: recoveredArg1 string: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := ETASFileParsing.
    recoveredValue1 := (recoveredValue0) new.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := recoveredArg2.
    (recoveredValue1) putIn: (recoveredValue2) string: (recoveredValue3).
    ^self
! !

"ASDBase.ic method 0x200c7dcc; bytecode file offset 0x9c468c"
!AMLIfData methodsFor: 'recovered'!
putIn: recoveredArg1 integer: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := ETASFileParsing.
    recoveredValue1 := (recoveredValue0) new.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := recoveredArg2.
    (recoveredValue1) putIn: (recoveredValue2) integer: (recoveredValue3).
    ^self
! !

"ASDBase.ic method 0x201084fc; bytecode file offset 0xa04dbc"
!AMLIfData methodsFor: 'recovered'!
collectNamedOrIndexLeafes
    | recoveredValue0 recoveredValue1 |
    (self) getAml.
    recoveredValue0 := aml.
    (recoveredValue0) restoreParents.
    recoveredValue1 := aml.
    (recoveredValue1) generateAccessMethods.
    ^self
! !

"ASDBase.ic method 0x2014f278; bytecode file offset 0xa4bb40"
!AMLIfData methodsFor: 'recovered'!
callAllMethods
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := (self) class.
    recoveredValue1 := AMLRT.
    recoveredValue2 := (recoveredValue0) allSelectorsFor: (recoveredValue1).
    recoveredValue3 := [:recoveredBlock8Arg1 | 
    | recoveredBlock8Value0 recoveredBlock8Value1 |
    recoveredBlock8Value0 := recoveredBlock8Arg1.
    recoveredBlock8Value1 := (self) perform: (recoveredBlock8Value0).
    recoveredBlock8Value1
].
    recoveredValue4 := (recoveredValue2) collect: (recoveredValue3).
    ^recoveredValue4
! !

"ASDBase.ic method 0x201684dc; bytecode file offset 0xa64da0"
!AMLIfData methodsFor: 'recovered'!
putIn: recoveredArg1 keyWord: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := ASAP2InterfaceData.
    recoveredValue2 := (recoveredValue1) keyWord.
    (self) putIn: (recoveredValue0) string: (recoveredValue2).
    recoveredValue3 := recoveredArg1.
    (self) putSeparatorIn: (recoveredValue3).
    recoveredValue4 := recoveredArg1.
    recoveredValue5 := recoveredArg2.
    (self) putIn: (recoveredValue4) string: (recoveredValue5).
    ^self
! !

"ASDBase.ic method 0x2017580c; bytecode file offset 0xa72138"
!AMLIfData methodsFor: 'recovered'!
putEndIn: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := recoveredArg1.
    (self) putNewLineIn: (recoveredValue0).
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredValue1.
    recoveredValue3 := ASAP2BaseObject.
    recoveredValue4 := (recoveredValue3) endKeyWord.
    recoveredValue5 := (recoveredValue4) last.
    (recoveredValue2) nextPutAll: (recoveredValue5).
    (recoveredValue1) nextPut: ($ ).
    ^self
! !

"ASDBase.ic method 0x2017586c; bytecode file offset 0xa72138"
!AMLIfData methodsFor: 'recovered'!
putBeginIn: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := recoveredArg1.
    (self) putNewLineIn: (recoveredValue0).
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredValue1.
    recoveredValue3 := ASAP2BaseObject.
    recoveredValue4 := (recoveredValue3) beginKeyWord.
    recoveredValue5 := (recoveredValue4) last.
    (recoveredValue2) nextPutAll: (recoveredValue5).
    (recoveredValue1) nextPut: ($ ).
    ^self
! !

"ASDBase.ic method 0x2017880c; bytecode file offset 0xa750d0"
!AMLIfData methodsFor: 'recovered'!
putIn: recoveredArg1 parent: recoveredArg2
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := (recoveredStack1) getHardwareModule.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack0) module: (recoveredStack1).
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack0) getAmlOnceAndRead.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := aml.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            (recoveredStack0) putIn: (recoveredStack1).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201ca1a8; bytecode file offset 0xac6a6c"
!AMLIfData methodsFor: 'recovered'!
getAmlOnce
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) class.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) amlForWriteA2l.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            aml := recoveredStack1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 24] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) class.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := module.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := name.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := (recoveredStack1) amlForDeviceLabel: (recoveredStack2).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            aml := recoveredStack2.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            (recoveredStack0) amlForWriteA2l: (recoveredStack1).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := aml.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201ef5d8; bytecode file offset 0xaebe94"
!AMLIfData methodsFor: 'recovered'!
emWriteObjectOrLiteralOn: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := module.
    recoveredLocal2 := recoveredValue0.
    module := nil.
    recoveredValue1 := aml.
    recoveredLocal1 := recoveredValue1.
    aml := nil.
    recoveredValue2 := recoveredArg1.
    super emWriteObjectOrLiteralOn: (recoveredValue2).
    recoveredValue3 := recoveredLocal2.
    module := recoveredValue3.
    recoveredValue4 := recoveredLocal1.
    aml := recoveredValue4.
    ^self
! !

"ASDBase.ic method 0x201efbf0; bytecode file offset 0xaec4ac"
!AMLIfData methodsFor: 'recovered'!
dumpSize
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := module.
    recoveredLocal3 := recoveredValue0.
    module := nil.
    recoveredValue1 := aml.
    recoveredLocal2 := recoveredValue1.
    aml := nil.
    recoveredValue2 := super dumpSize.
    recoveredLocal1 := recoveredValue2.
    recoveredValue3 := recoveredLocal3.
    module := recoveredValue3.
    recoveredValue4 := recoveredLocal2.
    aml := recoveredValue4.
    recoveredValue5 := recoveredLocal1.
    ^recoveredValue5
! !

"ASDBase.ic method 0x202281ac; bytecode file offset 0xb24a74"
!AMLIfData methodsFor: 'recovered'!
printOn: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 |
    recoveredValue0 := recoveredArg1.
    super printOn: (recoveredValue0).
    recoveredValue1 := recoveredArg1.
    (recoveredValue1) cr.
    recoveredValue2 := name.
    recoveredValue3 := recoveredArg1.
    (recoveredValue2) printOn: (recoveredValue3).
    recoveredValue4 := (self) abtHash32.
    recoveredValue5 := recoveredArg1.
    (recoveredValue4) printOn: (recoveredValue5).
    recoveredValue6 := recoveredArg1.
    (recoveredValue6) cr.
    recoveredValue7 := ifData.
    recoveredValue8 := (recoveredValue7) size.
    recoveredValue9 := recoveredArg1.
    (recoveredValue8) printOn: (recoveredValue9).
    ^self
! !

"ASDBase.ic method 0x2023d46c; bytecode file offset 0xb39d44"
!AMLIfData methodsFor: 'recovered'!
putIn: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 |
    recoveredValue0 := recoveredArg1.
    (self) putBeginIn: (recoveredValue0).
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (self) class.
    recoveredValue3 := (recoveredValue2) keyWord.
    (self) putIn: (recoveredValue1) keyWord: (recoveredValue3).
    recoveredValue4 := aml.
    recoveredValue5 := recoveredArg1.
    (recoveredValue4) putValueIn: (recoveredValue5).
    recoveredValue6 := recoveredArg1.
    (self) putEndIn: (recoveredValue6).
    recoveredValue7 := recoveredArg1.
    recoveredValue8 := ASAP2InterfaceData.
    recoveredValue9 := (recoveredValue8) keyWord.
    (self) putIn: (recoveredValue7) string: (recoveredValue9).
    recoveredValue10 := recoveredArg1.
    (self) putNewLineIn: (recoveredValue10).
    ^self
! !

"ASDBase.ic method 0x20243878; bytecode file offset 0xb4013c"
!AMLIfData methodsFor: 'recovered'!
copyIn: recoveredArg1
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
            recoveredStack0 := (recoveredStack0) class.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := (recoveredStack0) instSize.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredPC := 19.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack4 := recoveredLocal1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack3 := (recoveredStack3) instVarAt: (recoveredStack4).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack1) instVarAt: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            (recoveredStack0 isInteger and: [recoveredLocal1 isInteger]) ifTrue: [(recoveredLocal1 + 1 <= recoveredStack0) ifTrue: [recoveredLocal1 := recoveredLocal1 + 1. recoveredPC := 12] ifFalse: [recoveredLocal1 := nil. recoveredPC := 33]] ifFalse: [recoveredPC := 23].
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack2 := (recoveredStack2) + (1).
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack3 := recoveredStack2.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredLocal1 := recoveredStack3.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := (recoveredStack1) < (recoveredStack2).
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 31] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20274644; bytecode file offset 0xb70f10"
!AMLIfData methodsFor: 'recovered'!
readObjectFrom: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
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
            recoveredStack0 := (recoveredStack0) class.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := (recoveredStack0) instSize.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredPC := 21.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) position.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack3 := (recoveredStack3) readObject.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            (recoveredStack1) instVarAt: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            (recoveredStack0 isInteger and: [recoveredLocal1 isInteger]) ifTrue: [(recoveredLocal1 + 1 <= recoveredStack0) ifTrue: [recoveredLocal1 := recoveredLocal1 + 1. recoveredPC := 12] ifFalse: [recoveredLocal1 := nil. recoveredPC := 35]] ifFalse: [recoveredPC := 25].
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack2 := (recoveredStack2) + (1).
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack3 := recoveredStack2.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredLocal1 := recoveredStack3.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := (recoveredStack1) < (recoveredStack2).
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 33] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack0 := (recoveredStack0) emMutate.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2029f6fc; bytecode file offset 0xb9bfc0"
!AMLIfData methodsFor: 'recovered'!
getAmlAndRead
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := aml.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 32] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack1) getAml.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := aml.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 29] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := aml.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := (recoveredStack1) copyTree.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            aml := recoveredStack1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := aml.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack2 := ifData.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            (recoveredStack1) readFromBytes: (recoveredStack2).
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredPC := 44.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := aml.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := (recoveredStack1) hasAMLValue.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 44] ifFalse: [recoveredPC := 38].
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := aml.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack2 := ifData.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            (recoveredStack1) readFromBytes: (recoveredStack2).
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x202a3e2c; bytecode file offset 0xba06ec"
!AMLIfData methodsFor: 'recovered'!
getAmlOnceAndRead
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := aml.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 34] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) getAmlOnce.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            aml := recoveredStack1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := aml.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 30] ifFalse: [recoveredPC := 20].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := aml.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            (recoveredStack1) clearValue.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := aml.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack2 := ifData.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            (recoveredStack1) readFromBytes: (recoveredStack2).
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredPC := 44.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := aml.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            (recoveredStack1) clearValue.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := aml.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack2 := ifData.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            (recoveredStack1) readFromBytes: (recoveredStack2).
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x203908a0; bytecode file offset 0xc8d180"
!AMLIfData methodsFor: 'recovered'!
generateCode
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := module.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) a2ml.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := [:recoveredBlock7Arg1 | 
    | recoveredBlock7Value0 recoveredBlock7Value1 recoveredBlock7Value2 recoveredBlock7Value3 recoveredBlock7Value4 |
    recoveredBlock7Value0 := recoveredBlock7Arg1.
    recoveredBlock7Value1 := (recoveredBlock7Value0) longName.
    recoveredBlock7Value2 := (self) name.
    recoveredBlock7Value3 := (recoveredBlock7Value1) getTaggedStructFor: (recoveredBlock7Value2).
    recoveredBlock7Value4 := (recoveredBlock7Value3) notNil.
    recoveredBlock7Value4
].
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack3 := [:recoveredBlock21Arg1 | 
    | recoveredBlock21Value0 recoveredBlock21Value1 |
    recoveredBlock21Value0 := recoveredBlock21Arg1.
    recoveredBlock21Value1 := recoveredBlock21Value0.
    recoveredLocal1 := recoveredBlock21Value1.
    recoveredBlock21Value0
].
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            (recoveredStack1) detect: (recoveredStack2) ifOne: (recoveredStack3).
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 44] ifFalse: [recoveredPC := 42].
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack1 := aml.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack1 := (recoveredStack1) definition.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 58] ifFalse: [recoveredPC := 52].
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack1 := aml.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack2 := 'IfData'.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            (recoveredStack1) definition: (recoveredStack2).
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack1 := aml.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack2 := (recoveredStack2) longName.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack3 := ''.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            (recoveredStack1) generateCode: (recoveredStack2) pathName: (recoveredStack3).
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack1 := aml.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            (recoveredStack0) generateClassAccessMethod: (recoveredStack1).
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x203e29f8; bytecode file offset 0xcdf2d8"
!AMLIfData methodsFor: 'recovered'!
removeAmlNamed: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := ASAP2BaseObject.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) Globals.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) a2ml.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := [:block280f8580Arg1 | 
    | block280f8580Value0 block280f8580Value1 block280f8580Value2 block280f8580Value3 |
    block280f8580Value0 := block280f8580Arg1.
    block280f8580Value1 := (block280f8580Value0) longName.
    block280f8580Value2 := (block280f8580Value1) isString.
    block280f8580Value3 := (block280f8580Value2) not.
    block280f8580Value3
].
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := (recoveredStack1) select: (recoveredStack2).
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack2 := [:recoveredBlock29Arg1 | 
    | recoveredBlock29Local1 recoveredBlock29Stack0 recoveredBlock29Stack1 recoveredBlock29Stack2 recoveredBlock29Stack3 recoveredBlock29Stack4 recoveredBlock29PC recoveredBlock29Step recoveredBlock29Done recoveredBlock29Result |
    recoveredBlock29Stack0 := self.
    recoveredBlock29PC := 36.
    recoveredBlock29Done := false.
    [recoveredBlock29Done not] whileTrue: [
        recoveredBlock29Step := recoveredBlock29PC.
        recoveredBlock29Step = 36 ifTrue: [
            recoveredBlock29Stack1 := nil.
            recoveredBlock29PC := 37.
        ].
        recoveredBlock29Step = 37 ifTrue: [
            recoveredBlock29Stack2 := recoveredBlock29Arg1.
            recoveredBlock29PC := 38.
        ].
        recoveredBlock29Step = 38 ifTrue: [
            recoveredBlock29Stack2 := (recoveredBlock29Stack2) longName.
            recoveredBlock29PC := 40.
        ].
        recoveredBlock29Step = 40 ifTrue: [
            recoveredBlock29Stack3 := recoveredArg1.
            recoveredBlock29PC := 43.
        ].
        recoveredBlock29Step = 43 ifTrue: [
            recoveredBlock29Stack2 := (recoveredBlock29Stack2) getTaggedStructFor: (recoveredBlock29Stack3).
            recoveredBlock29PC := 45.
        ].
        recoveredBlock29Step = 45 ifTrue: [
            recoveredBlock29Stack3 := recoveredBlock29Stack2.
            recoveredBlock29PC := 46.
        ].
        recoveredBlock29Step = 46 ifTrue: [
            recoveredBlock29Local1 := recoveredBlock29Stack3.
            recoveredBlock29PC := 47.
        ].
        recoveredBlock29Step = 47 ifTrue: [
            (recoveredBlock29Stack2 == nil) ifTrue: [recoveredBlock29PC := 56] ifFalse: [recoveredBlock29PC := 50].
        ].
        recoveredBlock29Step = 50 ifTrue: [
            recoveredBlock29PC := 51.
        ].
        recoveredBlock29Step = 51 ifTrue: [
            recoveredBlock29Stack1 := recoveredBlock29Arg1.
            recoveredBlock29PC := 52.
        ].
        recoveredBlock29Step = 52 ifTrue: [
            recoveredBlock29Stack2 := recoveredBlock29Stack1.
            recoveredBlock29PC := 53.
        ].
        recoveredBlock29Step = 53 ifTrue: [
            recoveredLocal1 := recoveredBlock29Stack2.
            recoveredBlock29PC := 56.
        ].
        recoveredBlock29Step = 56 ifTrue: [
            recoveredBlock29Result := recoveredBlock29Stack1.
            recoveredBlock29Done := true.
        ].
    ].
    recoveredBlock29Result
].
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 68] ifFalse: [recoveredPC := 66].
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack1 := ASAP2BaseObject.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack1 := (recoveredStack1) Globals.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack1 := (recoveredStack1) a2ml.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack3 := [
    | recoveredBlock75Value0 |
    recoveredBlock75Value0 := (self) etasDevHalt.
    recoveredBlock75Value0
].
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            (recoveredStack1) remove: (recoveredStack2) ifAbsent: (recoveredStack3).
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2040fe64; bytecode file offset 0xd0c754"
!AMLIfData methodsFor: 'recovered'!
addInspectorMenuEntriesIn: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            super addInspectorMenuEntriesIn: (recoveredStack1).
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := 'callAllMethods'.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack3 := 'callAllMethods'.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack4 := [
    true
].
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            (recoveredStack1) add: (recoveredStack2) label: (recoveredStack3) enable: (recoveredStack4).
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := 'generateCode'.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack2 := 'generateCode'.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack3 := [
    | recoveredBlock33Value0 recoveredBlock33Value1 recoveredBlock33Value2 |
    recoveredBlock33Value0 := (self) class.
    recoveredBlock33Value1 := AMLModuleIfDataXCP.
    recoveredBlock33Value2 := (recoveredBlock33Value0) = (recoveredBlock33Value1).
    recoveredBlock33Value2
].
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            (recoveredStack0) add: (recoveredStack1) label: (recoveredStack2) enable: (recoveredStack3).
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack0 := (recoveredStack0) class.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack1 := (recoveredStack1) class.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack1 := (recoveredStack1) getDefinedApplication.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack0 := (recoveredStack0) allSelectorsFor: (recoveredStack1).
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack1 := [:recoveredBlock59Arg1 :recoveredBlock59Arg2 | 
    | recoveredBlock59Stack0 recoveredBlock59Stack1 recoveredBlock59Stack2 recoveredBlock59Stack3 recoveredBlock59Stack4 recoveredBlock59Stack5 recoveredBlock59PC recoveredBlock59Step recoveredBlock59Done recoveredBlock59Result |
    recoveredBlock59Stack0 := self.
    recoveredBlock59PC := 66.
    recoveredBlock59Done := false.
    [recoveredBlock59Done not] whileTrue: [
        recoveredBlock59Step := recoveredBlock59PC.
        recoveredBlock59Step = 66 ifTrue: [
            recoveredBlock59Stack1 := nil.
            recoveredBlock59PC := 67.
        ].
        recoveredBlock59Step = 67 ifTrue: [
            recoveredBlock59Stack2 := recoveredBlock59Arg2.
            recoveredBlock59PC := 68.
        ].
        recoveredBlock59Step = 68 ifTrue: [
            recoveredBlock59Stack3 := 32.
            recoveredBlock59PC := 70.
        ].
        recoveredBlock59Step = 70 ifTrue: [
            recoveredBlock59Stack2 := (recoveredBlock59Stack2) < (recoveredBlock59Stack3).
            recoveredBlock59PC := 71.
        ].
        recoveredBlock59Step = 71 ifTrue: [
            (recoveredBlock59Stack2) ifTrue: [recoveredBlock59PC := 74] ifFalse: [recoveredBlock59PC := 93].
        ].
        recoveredBlock59Step = 74 ifTrue: [
            recoveredBlock59PC := 75.
        ].
        recoveredBlock59Step = 75 ifTrue: [
            recoveredBlock59Stack1 := recoveredArg1.
            recoveredBlock59PC := 78.
        ].
        recoveredBlock59Step = 78 ifTrue: [
            recoveredBlock59Stack2 := recoveredBlock59Arg1.
            recoveredBlock59PC := 79.
        ].
        recoveredBlock59Step = 79 ifTrue: [
            recoveredBlock59Stack3 := recoveredBlock59Arg1.
            recoveredBlock59PC := 80.
        ].
        recoveredBlock59Step = 80 ifTrue: [
            recoveredBlock59Stack3 := (recoveredBlock59Stack3) asString.
            recoveredBlock59PC := 82.
        ].
        recoveredBlock59Step = 82 ifTrue: [
            recoveredBlock59Stack4 := [
    true
].
            recoveredBlock59PC := 84.
        ].
        recoveredBlock59Step = 84 ifTrue: [
            recoveredBlock59PC := 90.
        ].
        recoveredBlock59Step = 90 ifTrue: [
            recoveredBlock59Stack1 := (recoveredBlock59Stack1) add: (recoveredBlock59Stack2) label: (recoveredBlock59Stack3) enable: (recoveredBlock59Stack4).
            recoveredBlock59PC := 93.
        ].
        recoveredBlock59Step = 93 ifTrue: [
            recoveredBlock59Result := recoveredBlock59Stack1.
            recoveredBlock59Done := true.
        ].
    ].
    recoveredBlock59Result
].
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            (recoveredStack0) doWithIndex: (recoveredStack1).
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

