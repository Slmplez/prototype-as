"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2004b0a0; bytecode file offset 0x947a60"
!MotorolaSRecord methodsFor: 'recovered'!
recordType
    | recoveredValue0 |
    recoveredValue0 := (self) hexNibbleAt: (1).
    ^recoveredValue0
! !

"ASDBase.ic method 0x2004b324; bytecode file offset 0x947d20"
!MotorolaSRecord methodsFor: 'recovered'!
numberOfBytes
    | recoveredValue0 |
    recoveredValue0 := (self) hexByteAt: (2).
    ^recoveredValue0
! !

"ASDBase.ic method 0x2007e26c; bytecode file offset 0x97c330"
!MotorolaSRecord methodsFor: 'recovered'!
hasDataBytes
    ^false
! !

"ASDBase.ic method 0x20081400; bytecode file offset 0x97dd1c"
!MotorolaSRecord methodsFor: 'recovered'!
address
    ^-1
! !

"ASDBase.ic method 0x200b4c44; bytecode file offset 0x9b14fc"
!MotorolaSRecord methodsFor: 'recovered'!
numberOfHexBytes
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) numberOfBytes.
    recoveredValue1 := (recoveredValue0) * (2).
    recoveredValue2 := (recoveredValue1) + (4).
    ^recoveredValue2
! !

"ASDBase.ic method 0x2021c430; bytecode file offset 0xb18d00"
!MotorolaSRecord methodsFor: 'recovered'!
printOn: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := (self) asString.
    recoveredValue1 := recoveredArg1.
    (recoveredValue0) printOn: (recoveredValue1).
    recoveredValue2 := recoveredArg1.
    (recoveredValue2) cr.
    recoveredValue3 := recoveredArg1.
    (recoveredValue3) nextPutAll: ('size: ').
    recoveredValue4 := (self) size.
    recoveredValue5 := recoveredArg1.
    (recoveredValue4) printOn: (recoveredValue5).
    recoveredValue6 := recoveredArg1.
    (recoveredValue6) cr.
    recoveredValue7 := recoveredArg1.
    super printOn: (recoveredValue7).
    ^self
! !

"ASDBase.ic method 0x20222e40; bytecode file offset 0xb1f714"
!MotorolaSRecord methodsFor: 'recovered'!
recordType: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 |
    recoveredValue0 := ReadWriteStream.
    recoveredValue1 := (recoveredValue0) on: ('').
    recoveredLocal2 := recoveredValue1.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := recoveredLocal2.
    (recoveredValue2) printOn: (recoveredValue3) base: (16) showRadix: (false).
    recoveredValue4 := recoveredLocal2.
    (recoveredValue4) reset.
    recoveredValue5 := recoveredLocal2.
    recoveredValue6 := (recoveredValue5) next.
    recoveredLocal1 := recoveredValue6.
    recoveredValue7 := recoveredLocal1.
    recoveredValue8 := (recoveredValue7) digitValue.
    recoveredValue9 := (self) uint8At: (1) put: (recoveredValue8).
    ^recoveredValue9
! !

"ASDBase.ic method 0x2028a508; bytecode file offset 0xb86ddc"
!MotorolaSRecord methodsFor: 'recovered'!
putOn: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 |
    recoveredValue0 := (self) class.
    recoveredValue1 := (self) address.
    recoveredValue2 := (self) numberOfDataBytes.
    recoveredValue3 := recoveredValue2.
    recoveredLocal1 := recoveredValue3.
    recoveredValue4 := recoveredArg1.
    recoveredValue5 := (recoveredValue0) putRecordHeader: (recoveredValue1) size: (recoveredValue2) on: (recoveredValue4).
    recoveredLocal2 := recoveredValue5.
    recoveredValue6 := recoveredLocal2.
    recoveredValue7 := (self) class.
    recoveredValue8 := recoveredLocal1.
    recoveredValue9 := (self) asBinary.
    recoveredValue10 := recoveredArg1.
    recoveredValue11 := (recoveredValue7) put: (recoveredValue8) at: (0) from: (recoveredValue9) on: (recoveredValue10).
    recoveredValue12 := (recoveredValue6) + (recoveredValue11).
    recoveredLocal2 := recoveredValue12.
    recoveredValue13 := (self) class.
    recoveredValue14 := recoveredLocal2.
    recoveredValue15 := recoveredArg1.
    (recoveredValue13) putCheckSum: (recoveredValue14) on: (recoveredValue15).
    recoveredValue16 := recoveredArg1.
    (recoveredValue16) cr.
    ^self
! !

