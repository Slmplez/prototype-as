"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20003f78; bytecode file offset 0x90206c"
!ASAP2BytesASAP1BAddress methodsFor: 'recovered'!
name: recoveredArg1
    ^self
! !

"ASDBase.ic method 0x20005920; bytecode file offset 0x902744"
!ASAP2BytesASAP1BAddress methodsFor: 'recovered'!
putIn: recoveredArg1 paBlob: recoveredArg2
    ^self
! !

"ASDBase.ic method 0x20005e30; bytecode file offset 0x902744"
!ASAP2BytesASAP1BAddress methodsFor: 'recovered'!
putIn: recoveredArg1 dpBlob: recoveredArg2
    ^self
! !

"ASDBase.ic method 0x2000b4f8; bytecode file offset 0x908be4"
!ASAP2BytesASAP1BAddress methodsFor: 'recovered'!
addressFromIfData
    | recoveredValue0 |
    recoveredValue0 := (self) address.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200205d0; bytecode file offset 0x92209c"
!ASAP2BytesASAP1BAddress methodsFor: 'recovered'!
name
    ^'ASAP1B_ADDRESS'
! !

"ASDBase.ic method 0x2004b058; bytecode file offset 0x947a60"
!ASAP2BytesASAP1BAddress methodsFor: 'recovered'!
address
    | recoveredValue0 |
    recoveredValue0 := (self) at: (1).
    ^recoveredValue0
! !

"ASDBase.ic method 0x20096320; bytecode file offset 0x992bec"
!ASAP2BytesASAP1BAddress methodsFor: 'recovered'!
kpBlob: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) asIntegerFromHex.
    (self) address: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x200a5dc4; bytecode file offset 0x9a27f0"
!ASAP2BytesASAP1BAddress methodsFor: 'recovered'!
address: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) at: (1) put: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x200d9150; bytecode file offset 0x9d5b4c"
!ASAP2BytesASAP1BAddress methodsFor: 'recovered'!
putParameterIn: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    (self) putNameIn: (recoveredValue0).
    recoveredValue1 := recoveredArg1.
    (self) putAddressIn: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x200fd48c; bytecode file offset 0x9f9d74"
!ASAP2BytesASAP1BAddress methodsFor: 'recovered'!
putAddressIn: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) address.
    (self) putIn: (recoveredValue0) hex: (recoveredValue1).
    recoveredValue2 := recoveredArg1.
    (self) putSeparatorIn: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x20258148; bytecode file offset 0xb54a10"
!ASAP2BytesASAP1BAddress methodsFor: 'recovered'!
putIn: recoveredArg1 kpBlob: recoveredArg2
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) address.
    recoveredValue1 := [:recoveredBlock5Arg1 | 
    | recoveredBlock5Value0 recoveredBlock5Value1 recoveredBlock5Value2 recoveredBlock5Value3 recoveredBlock5Value4 recoveredBlock5Value5 |
    recoveredBlock5Value0 := recoveredArg1.
    recoveredBlock5Value1 := recoveredArg2.
    (self) putIn: (recoveredBlock5Value0) string: (recoveredBlock5Value1).
    recoveredBlock5Value2 := recoveredArg1.
    (self) putSeparatorIn: (recoveredBlock5Value2).
    recoveredBlock5Value3 := recoveredArg1.
    recoveredBlock5Value4 := recoveredBlock5Arg1.
    recoveredBlock5Value5 := (self) putIn: (recoveredBlock5Value3) hex: (recoveredBlock5Value4).
    recoveredBlock5Value5
].
    (recoveredValue0) ifNotNil: (recoveredValue1).
    ^self
! !

