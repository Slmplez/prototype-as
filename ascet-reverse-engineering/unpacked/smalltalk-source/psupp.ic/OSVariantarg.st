"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"psupp.ic method 0x20001adc; bytecode file offset 0x155d58"
!OSVariantarg methodsFor: 'recovered'!
vt
    | recoveredValue0 |
    recoveredValue0 := (self) uint16At: (0).
    ^recoveredValue0
! !

"psupp.ic method 0x2000262c; bytecode file offset 0x1561c4"
!OSVariantarg methodsFor: 'recovered'!
wReserved1
    | recoveredValue0 |
    recoveredValue0 := (self) uint16At: (2).
    ^recoveredValue0
! !

"psupp.ic method 0x200036e0; bytecode file offset 0x157170"
!OSVariantarg methodsFor: 'recovered'!
wReserved2
    | recoveredValue0 |
    recoveredValue0 := (self) uint16At: (4).
    ^recoveredValue0
! !

"psupp.ic method 0x20003978; bytecode file offset 0x1572b8"
!OSVariantarg methodsFor: 'recovered'!
wReserved3
    | recoveredValue0 |
    recoveredValue0 := (self) uint16At: (6).
    ^recoveredValue0
! !

"psupp.ic method 0x20003acc; bytecode file offset 0x157f64"
!OSVariantarg methodsFor: 'recovered'!
dblVal
    | recoveredValue0 |
    recoveredValue0 := (self) float64At: (8).
    ^recoveredValue0
! !

"psupp.ic method 0x20003be0; bytecode file offset 0x157f64"
!OSVariantarg methodsFor: 'recovered'!
bVal
    | recoveredValue0 |
    recoveredValue0 := (self) uint8At: (8).
    ^recoveredValue0
! !

"psupp.ic method 0x200040e4; bytecode file offset 0x157f64"
!OSVariantarg methodsFor: 'recovered'!
byref
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (8).
    ^recoveredValue0
! !

"psupp.ic method 0x200040f0; bytecode file offset 0x157f64"
!OSVariantarg methodsFor: 'recovered'!
date
    | recoveredValue0 |
    recoveredValue0 := (self) float64At: (8).
    ^recoveredValue0
! !

"psupp.ic method 0x20004240; bytecode file offset 0x157f64"
!OSVariantarg methodsFor: 'recovered'!
fltVal
    | recoveredValue0 |
    recoveredValue0 := (self) float32At: (8).
    ^recoveredValue0
! !

"psupp.ic method 0x20004408; bytecode file offset 0x157f64"
!OSVariantarg methodsFor: 'recovered'!
scode
    | recoveredValue0 |
    recoveredValue0 := (self) int32At: (8).
    ^recoveredValue0
! !

"psupp.ic method 0x200044a4; bytecode file offset 0x157f64"
!OSVariantarg methodsFor: 'recovered'!
lVal
    | recoveredValue0 |
    recoveredValue0 := (self) int32At: (8).
    ^recoveredValue0
! !

"psupp.ic method 0x200044d4; bytecode file offset 0x157f64"
!OSVariantarg methodsFor: 'recovered'!
bool
    | recoveredValue0 |
    recoveredValue0 := (self) int16At: (8).
    ^recoveredValue0
! !

"psupp.ic method 0x2000466c; bytecode file offset 0x157f64"
!OSVariantarg methodsFor: 'recovered'!
iVal
    | recoveredValue0 |
    recoveredValue0 := (self) int16At: (8).
    ^recoveredValue0
! !

"psupp.ic method 0x20008658; bytecode file offset 0x15caa4"
!OSVariantarg methodsFor: 'recovered'!
variantInit
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := VariantInit.
    recoveredValue1 := (recoveredValue0) callWith: (self).
    ^recoveredValue1
! !

"psupp.ic method 0x20008cc8; bytecode file offset 0x15caa4"
!OSVariantarg methodsFor: 'recovered'!
variantClear
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := VariantClear.
    recoveredValue1 := (recoveredValue0) callWith: (self).
    ^recoveredValue1
! !

"psupp.ic method 0x2000d9f8; bytecode file offset 0x161514"
!OSVariantarg methodsFor: 'recovered'!
cyVal
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := OSCy.
    recoveredValue1 := (self) structAt: (8) type: (recoveredValue0).
    ^recoveredValue1
! !

"psupp.ic method 0x2000ed3c; bytecode file offset 0x163098"
!OSVariantarg methodsFor: 'recovered'!
variantCopy: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := VariantCopy.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) callWith: (self) with: (recoveredValue1).
    ^recoveredValue2
! !

"psupp.ic method 0x200116d8; bytecode file offset 0x165330"
!OSVariantarg methodsFor: 'recovered'!
vt: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint16At: (0) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20011eb8; bytecode file offset 0x1657d4"
!OSVariantarg methodsFor: 'recovered'!
wReserved1: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint16At: (2) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20012e6c; bytecode file offset 0x166e00"
!OSVariantarg methodsFor: 'recovered'!
wReserved2: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint16At: (4) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x200136ac; bytecode file offset 0x166f5c"
!OSVariantarg methodsFor: 'recovered'!
wReserved3: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint16At: (6) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x2001376c; bytecode file offset 0x1683c0"
!OSVariantarg methodsFor: 'recovered'!
dblVal: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) float64At: (8) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x200137d8; bytecode file offset 0x1683c0"
!OSVariantarg methodsFor: 'recovered'!
iVal: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) int16At: (8) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x200137f0; bytecode file offset 0x1683c0"
!OSVariantarg methodsFor: 'recovered'!
pcyVal: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (8) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x200138d4; bytecode file offset 0x1683c0"
!OSVariantarg methodsFor: 'recovered'!
piVal: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (8) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20013904; bytecode file offset 0x1683c0"
!OSVariantarg methodsFor: 'recovered'!
pdispVal: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (8) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20013a30; bytecode file offset 0x1683c0"
!OSVariantarg methodsFor: 'recovered'!
scode: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) int32At: (8) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20013b80; bytecode file offset 0x1683c0"
!OSVariantarg methodsFor: 'recovered'!
date: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) float64At: (8) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20013b8c; bytecode file offset 0x1683c0"
!OSVariantarg methodsFor: 'recovered'!
pscode: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (8) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20013b98; bytecode file offset 0x1683c0"
!OSVariantarg methodsFor: 'recovered'!
byref: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (8) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20013c4c; bytecode file offset 0x1683c0"
!OSVariantarg methodsFor: 'recovered'!
pbVal: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (8) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20013d6c; bytecode file offset 0x1683c0"
!OSVariantarg methodsFor: 'recovered'!
pdate: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (8) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20013dcc; bytecode file offset 0x1683c0"
!OSVariantarg methodsFor: 'recovered'!
ppunkVal: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (8) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20014060; bytecode file offset 0x1683c0"
!OSVariantarg methodsFor: 'recovered'!
ppdispVal: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (8) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20014078; bytecode file offset 0x1683c0"
!OSVariantarg methodsFor: 'recovered'!
bool: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) int16At: (8) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x200140f0; bytecode file offset 0x1683c0"
!OSVariantarg methodsFor: 'recovered'!
pdblVal: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (8) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20014180; bytecode file offset 0x1683c0"
!OSVariantarg methodsFor: 'recovered'!
punkVal: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (8) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x2001418c; bytecode file offset 0x1683c0"
!OSVariantarg methodsFor: 'recovered'!
bstrVal: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (8) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x200142c4; bytecode file offset 0x1683c0"
!OSVariantarg methodsFor: 'recovered'!
fltVal: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) float32At: (8) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20014480; bytecode file offset 0x1683c0"
!OSVariantarg methodsFor: 'recovered'!
parray: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (8) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x200145dc; bytecode file offset 0x1683c0"
!OSVariantarg methodsFor: 'recovered'!
bVal: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint8At: (8) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20014654; bytecode file offset 0x1683c0"
!OSVariantarg methodsFor: 'recovered'!
pbool: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (8) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x2001469c; bytecode file offset 0x1683c0"
!OSVariantarg methodsFor: 'recovered'!
pvarVal: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (8) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20014714; bytecode file offset 0x1683c0"
!OSVariantarg methodsFor: 'recovered'!
pparray: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (8) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20014798; bytecode file offset 0x1683c0"
!OSVariantarg methodsFor: 'recovered'!
pbstrVal: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (8) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20014828; bytecode file offset 0x1683c0"
!OSVariantarg methodsFor: 'recovered'!
lVal: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) int32At: (8) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20014984; bytecode file offset 0x1683c0"
!OSVariantarg methodsFor: 'recovered'!
pfltVal: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (8) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20014a5c; bytecode file offset 0x1683c0"
!OSVariantarg methodsFor: 'recovered'!
cyVal: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) structAt: (8) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20014a8c; bytecode file offset 0x1683c0"
!OSVariantarg methodsFor: 'recovered'!
plVal: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (8) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x2001b9b8; bytecode file offset 0x16f8e8"
!OSVariantarg methodsFor: 'recovered'!
punkVal
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := OSIUnknown.
    recoveredValue1 := (self) uint32At: (8).
    recoveredValue2 := (recoveredValue0) address: (recoveredValue1).
    ^recoveredValue2
! !

"psupp.ic method 0x2001ba80; bytecode file offset 0x16f8e8"
!OSVariantarg methodsFor: 'recovered'!
plVal
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := OSInt32.
    recoveredValue1 := (self) uint32At: (8).
    recoveredValue2 := (recoveredValue0) address: (recoveredValue1).
    ^recoveredValue2
! !

"psupp.ic method 0x2001bc24; bytecode file offset 0x16f8e8"
!OSVariantarg methodsFor: 'recovered'!
parray
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := OSSafearray.
    recoveredValue1 := (self) uint32At: (8).
    recoveredValue2 := (recoveredValue0) address: (recoveredValue1).
    ^recoveredValue2
! !

"psupp.ic method 0x2001bd00; bytecode file offset 0x16f8e8"
!OSVariantarg methodsFor: 'recovered'!
pcyVal
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := OSCy.
    recoveredValue1 := (self) uint32At: (8).
    recoveredValue2 := (recoveredValue0) address: (recoveredValue1).
    ^recoveredValue2
! !

"psupp.ic method 0x2001bd3c; bytecode file offset 0x16f8e8"
!OSVariantarg methodsFor: 'recovered'!
pscode
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := OSInt32.
    recoveredValue1 := (self) uint32At: (8).
    recoveredValue2 := (recoveredValue0) address: (recoveredValue1).
    ^recoveredValue2
! !

"psupp.ic method 0x2001bdc8; bytecode file offset 0x16f8e8"
!OSVariantarg methodsFor: 'recovered'!
pdate
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := OSFloat64.
    recoveredValue1 := (self) uint32At: (8).
    recoveredValue2 := (recoveredValue0) address: (recoveredValue1).
    ^recoveredValue2
! !

"psupp.ic method 0x2001be40; bytecode file offset 0x16f8e8"
!OSVariantarg methodsFor: 'recovered'!
piVal
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := OSInt16.
    recoveredValue1 := (self) uint32At: (8).
    recoveredValue2 := (recoveredValue0) address: (recoveredValue1).
    ^recoveredValue2
! !

"psupp.ic method 0x2001be54; bytecode file offset 0x16f8e8"
!OSVariantarg methodsFor: 'recovered'!
pdblVal
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := OSFloat64.
    recoveredValue1 := (self) uint32At: (8).
    recoveredValue2 := (recoveredValue0) address: (recoveredValue1).
    ^recoveredValue2
! !

"psupp.ic method 0x2001be7c; bytecode file offset 0x16f8e8"
!OSVariantarg methodsFor: 'recovered'!
pbVal
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := OSUInt8.
    recoveredValue1 := (self) uint32At: (8).
    recoveredValue2 := (recoveredValue0) address: (recoveredValue1).
    ^recoveredValue2
! !

"psupp.ic method 0x2001bea4; bytecode file offset 0x16f8e8"
!OSVariantarg methodsFor: 'recovered'!
pdispVal
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := OSIDispatch.
    recoveredValue1 := (self) uint32At: (8).
    recoveredValue2 := (recoveredValue0) address: (recoveredValue1).
    ^recoveredValue2
! !

"psupp.ic method 0x2001bf08; bytecode file offset 0x16f8e8"
!OSVariantarg methodsFor: 'recovered'!
bstrVal
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := OSChar16.
    recoveredValue1 := (self) uint32At: (8).
    recoveredValue2 := (recoveredValue0) address: (recoveredValue1).
    ^recoveredValue2
! !

"psupp.ic method 0x2001bf80; bytecode file offset 0x16f8e8"
!OSVariantarg methodsFor: 'recovered'!
pbool
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := OSInt16.
    recoveredValue1 := (self) uint32At: (8).
    recoveredValue2 := (recoveredValue0) address: (recoveredValue1).
    ^recoveredValue2
! !

"psupp.ic method 0x2001bfbc; bytecode file offset 0x16f8e8"
!OSVariantarg methodsFor: 'recovered'!
pfltVal
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := OSFloat32.
    recoveredValue1 := (self) uint32At: (8).
    recoveredValue2 := (recoveredValue0) address: (recoveredValue1).
    ^recoveredValue2
! !

"psupp.ic method 0x2001bfd0; bytecode file offset 0x16f8e8"
!OSVariantarg methodsFor: 'recovered'!
pvarVal
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := OSVariantarg.
    recoveredValue1 := (self) uint32At: (8).
    recoveredValue2 := (recoveredValue0) address: (recoveredValue1).
    ^recoveredValue2
! !

"psupp.ic method 0x200248e8; bytecode file offset 0x1781a4"
!OSVariantarg methodsFor: 'recovered'!
variantChangeType: recoveredArg1 wFlags: recoveredArg2 vt: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := VariantChangeType.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := recoveredArg3.
    recoveredValue4 := (recoveredValue0) callWith: (self) with: (recoveredValue1) with: (recoveredValue2) with: (recoveredValue3).
    ^recoveredValue4
! !

"psupp.ic method 0x200264cc; bytecode file offset 0x179e98"
!OSVariantarg methodsFor: 'recovered'!
variantChangeTypeEx: recoveredArg1 lcid: recoveredArg2 wFlags: recoveredArg3 vt: recoveredArg4
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := VariantChangeTypeEx.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := recoveredArg3.
    recoveredValue4 := recoveredArg4.
    recoveredValue5 := (recoveredValue0) callWith: (self) with: (recoveredValue1) with: (recoveredValue2) with: (recoveredValue3) with: (recoveredValue4).
    ^recoveredValue5
! !

"psupp.ic method 0x20029f24; bytecode file offset 0x17d810"
!OSVariantarg methodsFor: 'recovered'!
pbstrVal
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := OSObjectPointer.
    recoveredValue1 := (self) uint32At: (8).
    recoveredValue2 := OSChar16.
    recoveredValue3 := (recoveredValue0) address: (recoveredValue1) itemType: (recoveredValue2) indirectionLevel: (2).
    ^recoveredValue3
! !

"psupp.ic method 0x20029f3c; bytecode file offset 0x17d810"
!OSVariantarg methodsFor: 'recovered'!
ppdispVal
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := OSObjectPointer.
    recoveredValue1 := (self) uint32At: (8).
    recoveredValue2 := OSIDispatch.
    recoveredValue3 := (recoveredValue0) address: (recoveredValue1) itemType: (recoveredValue2) indirectionLevel: (2).
    ^recoveredValue3
! !

"psupp.ic method 0x20029f54; bytecode file offset 0x17d810"
!OSVariantarg methodsFor: 'recovered'!
ppunkVal
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := OSObjectPointer.
    recoveredValue1 := (self) uint32At: (8).
    recoveredValue2 := OSIUnknown.
    recoveredValue3 := (recoveredValue0) address: (recoveredValue1) itemType: (recoveredValue2) indirectionLevel: (2).
    ^recoveredValue3
! !

"psupp.ic method 0x20029f6c; bytecode file offset 0x17d810"
!OSVariantarg methodsFor: 'recovered'!
pparray
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := OSObjectPointer.
    recoveredValue1 := (self) uint32At: (8).
    recoveredValue2 := OSSafearray.
    recoveredValue3 := (recoveredValue0) address: (recoveredValue1) itemType: (recoveredValue2) indirectionLevel: (2).
    ^recoveredValue3
! !

"psupp.ic method 0x20044af4; bytecode file offset 0x1983c4"
!OSVariantarg methodsFor: 'recovered'!
printOn: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := LookupTable.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := PlatformConstants.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := [:recoveredBlock12Arg1 :recoveredBlock12Arg2 | 
    | recoveredBlock12Stack0 recoveredBlock12Stack1 recoveredBlock12Stack2 recoveredBlock12Stack3 recoveredBlock12Stack4 recoveredBlock12Stack5 recoveredBlock12PC recoveredBlock12Step recoveredBlock12Done recoveredBlock12Result |
    recoveredBlock12Stack0 := self.
    recoveredBlock12PC := 18.
    recoveredBlock12Done := false.
    [recoveredBlock12Done not] whileTrue: [
        recoveredBlock12Step := recoveredBlock12PC.
        recoveredBlock12Step = 18 ifTrue: [
            recoveredBlock12Stack1 := nil.
            recoveredBlock12PC := 19.
        ].
        recoveredBlock12Step = 19 ifTrue: [
            recoveredBlock12Stack2 := recoveredBlock12Arg1.
            recoveredBlock12PC := 20.
        ].
        recoveredBlock12Step = 20 ifTrue: [
            recoveredBlock12Stack3 := 1.
            recoveredBlock12PC := 22.
        ].
        recoveredBlock12Step = 22 ifTrue: [
            recoveredBlock12Stack4 := 2.
            recoveredBlock12PC := 24.
        ].
        recoveredBlock12Step = 24 ifTrue: [
            recoveredBlock12Stack2 := (recoveredBlock12Stack2) copyFrom: (recoveredBlock12Stack3) to: (recoveredBlock12Stack4).
            recoveredBlock12PC := 26.
        ].
        recoveredBlock12Step = 26 ifTrue: [
            recoveredBlock12Stack3 := 'Vt'.
            recoveredBlock12PC := 28.
        ].
        recoveredBlock12Step = 28 ifTrue: [
            recoveredBlock12Stack2 := (recoveredBlock12Stack2) = (recoveredBlock12Stack3).
            recoveredBlock12PC := 29.
        ].
        recoveredBlock12Step = 29 ifTrue: [
            (recoveredBlock12Stack2) ifTrue: [recoveredBlock12PC := 32] ifFalse: [recoveredBlock12PC := 40].
        ].
        recoveredBlock12Step = 32 ifTrue: [
            recoveredBlock12PC := 33.
        ].
        recoveredBlock12Step = 33 ifTrue: [
            recoveredBlock12Stack1 := recoveredLocal2.
            recoveredBlock12PC := 36.
        ].
        recoveredBlock12Step = 36 ifTrue: [
            recoveredBlock12Stack2 := recoveredBlock12Arg1.
            recoveredBlock12PC := 37.
        ].
        recoveredBlock12Step = 37 ifTrue: [
            recoveredBlock12Stack3 := recoveredBlock12Arg2.
            recoveredBlock12PC := 38.
        ].
        recoveredBlock12Step = 38 ifTrue: [
            recoveredBlock12Stack1 := (recoveredBlock12Stack1) at: (recoveredBlock12Stack2) put: (recoveredBlock12Stack3).
            recoveredBlock12PC := 40.
        ].
        recoveredBlock12Step = 40 ifTrue: [
            recoveredBlock12Result := recoveredBlock12Stack1.
            recoveredBlock12Done := true.
        ].
    ].
    recoveredBlock12Result
].
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            (recoveredStack1) keysAndValuesDo: (recoveredStack2).
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            super printOn: (recoveredStack1).
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack0 := (recoveredStack0) vt.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack1 := VtArray.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack0 := (recoveredStack0) bitAnd: (recoveredStack1).
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack0 := (recoveredStack0) ~= (recoveredStack1).
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 64] ifFalse: [recoveredPC := 86].
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            (recoveredStack1) cr.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack1 := 'VtArray'.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            (recoveredStack0) nextPutAll: (recoveredStack1).
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack0 := (recoveredStack0) vt.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack1 := VtArray.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack0 := (recoveredStack0) - (recoveredStack1).
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredPC := 92.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredStack0 := (recoveredStack0) vt.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredStack1 := [:recoveredBlock95Arg1 :recoveredBlock95Arg2 | 
    | recoveredBlock95Stack0 recoveredBlock95Stack1 recoveredBlock95Stack2 recoveredBlock95Stack3 recoveredBlock95Stack4 recoveredBlock95PC recoveredBlock95Step recoveredBlock95Done recoveredBlock95Result |
    recoveredBlock95Stack0 := self.
    recoveredBlock95PC := 102.
    recoveredBlock95Done := false.
    [recoveredBlock95Done not] whileTrue: [
        recoveredBlock95Step := recoveredBlock95PC.
        recoveredBlock95Step = 102 ifTrue: [
            recoveredBlock95Stack1 := nil.
            recoveredBlock95PC := 103.
        ].
        recoveredBlock95Step = 103 ifTrue: [
            recoveredBlock95Stack2 := recoveredLocal1.
            recoveredBlock95PC := 106.
        ].
        recoveredBlock95Step = 106 ifTrue: [
            recoveredBlock95Stack3 := recoveredBlock95Arg2.
            recoveredBlock95PC := 107.
        ].
        recoveredBlock95Step = 107 ifTrue: [
            recoveredBlock95Stack2 := (recoveredBlock95Stack2) = (recoveredBlock95Stack3).
            recoveredBlock95PC := 108.
        ].
        recoveredBlock95Step = 108 ifTrue: [
            (recoveredBlock95Stack2) ifTrue: [recoveredBlock95PC := 112] ifFalse: [recoveredBlock95PC := 122].
        ].
        recoveredBlock95Step = 112 ifTrue: [
            recoveredBlock95PC := 113.
        ].
        recoveredBlock95Step = 113 ifTrue: [
            recoveredBlock95Stack1 := recoveredArg1.
            recoveredBlock95PC := 116.
        ].
        recoveredBlock95Step = 116 ifTrue: [
            recoveredBlock95Stack2 := recoveredBlock95Stack1.
            recoveredBlock95PC := 117.
        ].
        recoveredBlock95Step = 117 ifTrue: [
            (recoveredBlock95Stack2) cr.
            recoveredBlock95PC := 119.
        ].
        recoveredBlock95Step = 119 ifTrue: [
            recoveredBlock95Stack2 := recoveredBlock95Arg1.
            recoveredBlock95PC := 120.
        ].
        recoveredBlock95Step = 120 ifTrue: [
            recoveredBlock95Stack1 := (recoveredBlock95Stack1) nextPutAll: (recoveredBlock95Stack2).
            recoveredBlock95PC := 122.
        ].
        recoveredBlock95Step = 122 ifTrue: [
            recoveredBlock95Result := recoveredBlock95Stack1.
            recoveredBlock95Done := true.
        ].
    ].
    recoveredBlock95Result
].
            recoveredPC := 123.
        ].
        recoveredStep = 123 ifTrue: [
            (recoveredStack0) keysAndValuesDo: (recoveredStack1).
            recoveredPC := 125.
        ].
        recoveredStep = 125 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 126.
        ].
        recoveredStep = 126 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

