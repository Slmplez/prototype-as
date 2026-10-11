"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20066a0c; bytecode file offset 0x963428"
!EtasZipArchiveEntry methodsFor: 'recovered'!
method
    | recoveredValue0 |
    recoveredValue0 := method.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20067b74; bytecode file offset 0x9646f8"
!EtasZipArchiveEntry methodsFor: 'recovered'!
name
    | recoveredValue0 |
    recoveredValue0 := name.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200684a4; bytecode file offset 0x965b90"
!EtasZipArchiveEntry methodsFor: 'recovered'!
time
    | recoveredValue0 |
    recoveredValue0 := time.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006a288; bytecode file offset 0x966bdc"
!EtasZipArchiveEntry methodsFor: 'recovered'!
ratio
    | recoveredValue0 |
    recoveredValue0 := ratio.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006affc; bytecode file offset 0x967a18"
!EtasZipArchiveEntry methodsFor: 'recovered'!
crc32
    | recoveredValue0 |
    recoveredValue0 := crc32.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006bc00; bytecode file offset 0x96873c"
!EtasZipArchiveEntry methodsFor: 'recovered'!
originalSize
    | recoveredValue0 |
    recoveredValue0 := originalSize.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006c524; bytecode file offset 0x9692b0"
!EtasZipArchiveEntry methodsFor: 'recovered'!
zippedSize
    | recoveredValue0 |
    recoveredValue0 := zippedSize.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006d2c0; bytecode file offset 0x969c04"
!EtasZipArchiveEntry methodsFor: 'recovered'!
date
    | recoveredValue0 |
    recoveredValue0 := date.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200be1fc; bytecode file offset 0x9bb178"
!EtasZipArchiveEntry methodsFor: 'recovered'!
method: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    method := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200bf650; bytecode file offset 0x9bc0b4"
!EtasZipArchiveEntry methodsFor: 'recovered'!
name: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    name := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200bfec4; bytecode file offset 0x9bd228"
!EtasZipArchiveEntry methodsFor: 'recovered'!
time: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    time := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c0a48; bytecode file offset 0x9bdf14"
!EtasZipArchiveEntry methodsFor: 'recovered'!
ratio: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    ratio := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c1fe4; bytecode file offset 0x9beac8"
!EtasZipArchiveEntry methodsFor: 'recovered'!
crc32: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    crc32 := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c2858; bytecode file offset 0x9bf474"
!EtasZipArchiveEntry methodsFor: 'recovered'!
originalSize: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    originalSize := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c3024; bytecode file offset 0x9bfde0"
!EtasZipArchiveEntry methodsFor: 'recovered'!
zippedSize: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    zippedSize := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c36d0; bytecode file offset 0x9c058c"
!EtasZipArchiveEntry methodsFor: 'recovered'!
date: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    date := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x2040fc54; bytecode file offset 0xd0c554"
!EtasZipArchiveEntry methodsFor: 'recovered'!
printOn: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 recoveredValue21 recoveredValue22 recoveredValue23 recoveredValue24 recoveredValue25 recoveredValue26 recoveredValue27 recoveredValue28 recoveredValue29 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredValue0.
    (recoveredValue1) nextPutAll: ('EtasZipArchiveEntry ').
    recoveredValue2 := recoveredValue0.
    (recoveredValue2) cr.
    recoveredValue3 := recoveredValue0.
    recoveredValue4 := (self) name.
    (recoveredValue3) nextPutAll: (recoveredValue4).
    recoveredValue5 := recoveredValue0.
    (recoveredValue5) cr.
    recoveredValue6 := recoveredValue0.
    recoveredValue7 := (self) date.
    recoveredValue8 := (recoveredValue7) , (' ').
    recoveredValue9 := (self) time.
    recoveredValue10 := (recoveredValue8) , (recoveredValue9).
    recoveredValue11 := ('  Archived: ') , (recoveredValue10).
    (recoveredValue6) nextPutAll: (recoveredValue11).
    recoveredValue12 := recoveredValue0.
    (recoveredValue12) cr.
    recoveredValue13 := recoveredValue0.
    recoveredValue14 := (self) originalSize.
    recoveredValue15 := (recoveredValue14) asString.
    recoveredValue16 := ('  Size:     ') , (recoveredValue15).
    (recoveredValue13) nextPutAll: (recoveredValue16).
    recoveredValue17 := recoveredValue0.
    (recoveredValue17) cr.
    recoveredValue18 := recoveredValue0.
    recoveredValue19 := (self) zippedSize.
    recoveredValue20 := (recoveredValue19) asString.
    recoveredValue21 := (recoveredValue20) , (' (').
    recoveredValue22 := (self) ratio.
    recoveredValue23 := (recoveredValue21) , (recoveredValue22).
    recoveredValue24 := (recoveredValue23) , (', ').
    recoveredValue25 := (self) method.
    recoveredValue26 := (recoveredValue24) , (recoveredValue25).
    recoveredValue27 := (recoveredValue26) , (')').
    recoveredValue28 := ('  Zipped:   ') , (recoveredValue27).
    (recoveredValue18) nextPutAll: (recoveredValue28).
    recoveredValue29 := recoveredValue0.
    (recoveredValue29) cr.
    (recoveredValue0) cr.
    ^self
! !

