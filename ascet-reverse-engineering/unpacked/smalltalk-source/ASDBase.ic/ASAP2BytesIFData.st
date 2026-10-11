"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x200038d0; bytecode file offset 0x90206c"
!ASAP2BytesIFData methodsFor: 'recovered'!
module: recoveredArg1
    ^self
! !

"ASDBase.ic method 0x200039f0; bytecode file offset 0x90206c"
!ASAP2BytesIFData methodsFor: 'recovered'!
paBlob: recoveredArg1
    ^self
! !

"ASDBase.ic method 0x20003ed0; bytecode file offset 0x90206c"
!ASAP2BytesIFData methodsFor: 'recovered'!
dpBlob: recoveredArg1
    ^self
! !

"ASDBase.ic method 0x20004500; bytecode file offset 0x90206c"
!ASAP2BytesIFData methodsFor: 'recovered'!
name: recoveredArg1
    ^self
! !

"ASDBase.ic method 0x20004ec8; bytecode file offset 0x90206c"
!ASAP2BytesIFData methodsFor: 'recovered'!
kpBlob: recoveredArg1
    ^self
! !

"ASDBase.ic method 0x200052e8; bytecode file offset 0x90206c"
!ASAP2BytesIFData methodsFor: 'recovered'!
comments: recoveredArg1
    ^self
! !

"ASDBase.ic method 0x2000bf0c; bytecode file offset 0x908be4"
!ASAP2BytesIFData methodsFor: 'recovered'!
kpBlobObject
    | recoveredValue0 |
    recoveredValue0 := (self) kpBlob.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20023990; bytecode file offset 0x92209c"
!ASAP2BytesIFData methodsFor: 'recovered'!
kpBlob
    ^''
! !

"ASDBase.ic method 0x20024488; bytecode file offset 0x92209c"
!ASAP2BytesIFData methodsFor: 'recovered'!
dpBlob
    ^''
! !

"ASDBase.ic method 0x20025f6c; bytecode file offset 0x923928"
!ASAP2BytesIFData methodsFor: 'recovered'!
paBlob
    ^''
! !

"ASDBase.ic method 0x2004fc2c; bytecode file offset 0x94d048"
!ASAP2BytesIFData methodsFor: 'recovered'!
initializeCollections
    (self) initializeBytes.
    ^self
! !

"ASDBase.ic method 0x2005a024; bytecode file offset 0x9568d8"
!ASAP2BytesIFData methodsFor: 'recovered'!
addressFrom: recoveredArg1 base: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := (recoveredValue0) + (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x20074020; bytecode file offset 0x970b34"
!ASAP2BytesIFData methodsFor: 'recovered'!
module
    ^nil
! !

"ASDBase.ic method 0x20074120; bytecode file offset 0x970b34"
!ASAP2BytesIFData methodsFor: 'recovered'!
kpBlobPredefinedRasterIDs
    ^nil
! !

"ASDBase.ic method 0x20086950; bytecode file offset 0x983274"
!ASAP2BytesIFData methodsFor: 'recovered'!
putIn: recoveredArg1 parent: recoveredArg2
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) putIn: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x200d6ab4; bytecode file offset 0x9d3600"
!ASAP2BytesIFData methodsFor: 'recovered'!
putParameterIn: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    (self) putNameIn: (recoveredValue0).
    recoveredValue1 := recoveredArg1.
    (self) putNewLineIn: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x200dc4dc; bytecode file offset 0x9d8e58"
!ASAP2BytesIFData methodsFor: 'recovered'!
putIn: recoveredArg1 dpBlob: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) dpBlob.
    recoveredValue2 := recoveredArg2.
    (self) putIn: (recoveredValue0) blob: (recoveredValue1) keyWord: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x200dc52c; bytecode file offset 0x9d8e58"
!ASAP2BytesIFData methodsFor: 'recovered'!
putIn: recoveredArg1 paBlob: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) paBlob.
    recoveredValue2 := recoveredArg2.
    (self) putIn: (recoveredValue0) blob: (recoveredValue1) keyWord: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x2010aa88; bytecode file offset 0xa07348"
!ASAP2BytesIFData methodsFor: 'recovered'!
isEXRAMRange
    | recoveredStack0 recoveredStack1 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) kpBlobObject.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) isString.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) kpBlobObject.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := (recoveredStack0) isEXRAMRange.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2010aad4; bytecode file offset 0xa073d0"
!ASAP2BytesIFData methodsFor: 'recovered'!
addressFromIfData
    | recoveredStack0 recoveredStack1 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) kpBlobObject.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) isString.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) kpBlobObject.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := (recoveredStack0) address.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201692b0; bytecode file offset 0xa65b6c"
!ASAP2BytesIFData methodsFor: 'recovered'!
collectObjectsFlat: recoveredArg1 in: recoveredArg2
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) comments.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack0) comments: (recoveredStack1).
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredPC := 18.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := (recoveredStack0) + (1).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2017902c; bytecode file offset 0xa75928"
!ASAP2BytesIFData methodsFor: 'recovered'!
putIn: recoveredArg1 tpBlob: recoveredArg2
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) tpBlob.
    recoveredValue1 := [:recoveredBlock5Arg1 | 
    | recoveredBlock5Value0 recoveredBlock5Value1 recoveredBlock5Value2 |
    recoveredBlock5Value0 := recoveredBlock5Arg1.
    recoveredBlock5Value1 := recoveredArg1.
    recoveredBlock5Value2 := (recoveredBlock5Value0) putIn: (recoveredBlock5Value1).
    recoveredBlock5Value2
].
    (recoveredValue0) ifNotNil: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x20179040; bytecode file offset 0xa75928"
!ASAP2BytesIFData methodsFor: 'recovered'!
putIn: recoveredArg1 seedKey: recoveredArg2
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) seedKey.
    recoveredValue1 := [:recoveredBlock5Arg1 | 
    | recoveredBlock5Value0 recoveredBlock5Value1 recoveredBlock5Value2 |
    recoveredBlock5Value0 := recoveredBlock5Arg1.
    recoveredBlock5Value1 := recoveredArg1.
    recoveredBlock5Value2 := (recoveredBlock5Value0) putIn: (recoveredBlock5Value1).
    recoveredBlock5Value2
].
    (recoveredValue0) ifNotNil: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x201ea2ec; bytecode file offset 0xae6bb4"
!ASAP2BytesIFData methodsFor: 'recovered'!
putIn: recoveredArg1 kpBlob: recoveredArg2
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) kpBlobObject.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) isCollection.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 22].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := (recoveredStack2) kpBlob.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack0) putIn: (recoveredStack1) blob: (recoveredStack2) keyWord: (recoveredStack3).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredPC := 27.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := (recoveredStack0) kpBlobObject.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            (recoveredStack0) putIn: (recoveredStack1).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20210864; bytecode file offset 0xb0d170"
!ASAP2BytesIFData methodsFor: 'recovered'!
putIn: recoveredArg1 eventGroup: recoveredArg2
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) eventGroup.
    recoveredValue1 := [:recoveredBlock5Arg1 | 
    | recoveredBlock5Value0 recoveredBlock5Value1 recoveredBlock5Value2 |
    recoveredBlock5Value0 := recoveredBlock5Arg1.
    recoveredBlock5Value1 := [:recoveredBlock5Block13Arg1 | 
    | recoveredBlock5Block13Value0 recoveredBlock5Block13Value1 recoveredBlock5Block13Value2 |
    recoveredBlock5Block13Value0 := recoveredBlock5Block13Arg1.
    recoveredBlock5Block13Value1 := recoveredArg1.
    recoveredBlock5Block13Value2 := (recoveredBlock5Block13Value0) putIn: (recoveredBlock5Block13Value1).
    recoveredBlock5Block13Value2
].
    recoveredBlock5Value2 := (recoveredBlock5Value0) do: (recoveredBlock5Value1).
    recoveredBlock5Value2
].
    (recoveredValue0) ifNotNil: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x2021087c; bytecode file offset 0xb0d170"
!ASAP2BytesIFData methodsFor: 'recovered'!
putIn: recoveredArg1 raster: recoveredArg2
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) raster.
    recoveredValue1 := [:recoveredBlock5Arg1 | 
    | recoveredBlock5Value0 recoveredBlock5Value1 recoveredBlock5Value2 |
    recoveredBlock5Value0 := recoveredBlock5Arg1.
    recoveredBlock5Value1 := [:recoveredBlock5Block13Arg1 | 
    | recoveredBlock5Block13Value0 recoveredBlock5Block13Value1 recoveredBlock5Block13Value2 |
    recoveredBlock5Block13Value0 := recoveredBlock5Block13Arg1.
    recoveredBlock5Block13Value1 := recoveredArg1.
    recoveredBlock5Block13Value2 := (recoveredBlock5Block13Value0) putIn: (recoveredBlock5Block13Value1).
    recoveredBlock5Block13Value2
].
    recoveredBlock5Value2 := (recoveredBlock5Value0) do: (recoveredBlock5Value1).
    recoveredBlock5Value2
].
    (recoveredValue0) ifNotNil: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x2021e16c; bytecode file offset 0xb1aa34"
!ASAP2BytesIFData methodsFor: 'recovered'!
putIn: recoveredArg1 source: recoveredArg2
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) source.
    recoveredValue1 := [:recoveredBlock5Arg1 | 
    | recoveredBlock5Value0 recoveredBlock5Value1 recoveredBlock5Value2 |
    recoveredBlock5Value0 := recoveredBlock5Arg1.
    recoveredBlock5Value1 := [:recoveredBlock5Block13Arg1 | 
    | recoveredBlock5Block13Value0 recoveredBlock5Block13Value1 recoveredBlock5Block13Value2 recoveredBlock5Block13Value3 |
    recoveredBlock5Block13Value0 := recoveredBlock5Block13Arg1.
    recoveredBlock5Block13Value1 := (recoveredBlock5Block13Value0) getObject.
    recoveredBlock5Block13Value2 := recoveredArg1.
    recoveredBlock5Block13Value3 := (recoveredBlock5Block13Value1) putIn: (recoveredBlock5Block13Value2).
    recoveredBlock5Block13Value3
].
    recoveredBlock5Value2 := (recoveredBlock5Value0) do: (recoveredBlock5Value1).
    recoveredBlock5Value2
].
    (recoveredValue0) ifNotNil: (recoveredValue1).
    ^self
! !

