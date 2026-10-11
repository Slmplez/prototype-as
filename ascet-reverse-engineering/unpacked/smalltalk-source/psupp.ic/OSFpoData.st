"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"psupp.ic method 0x20001a64; bytecode file offset 0x155d58"
!OSFpoData methodsFor: 'recovered'!
ulOffStart
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (0).
    ^recoveredValue0
! !

"psupp.ic method 0x20002a50; bytecode file offset 0x157170"
!OSFpoData methodsFor: 'recovered'!
cbProcSize
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (4).
    ^recoveredValue0
! !

"psupp.ic method 0x20003f1c; bytecode file offset 0x157f64"
!OSFpoData methodsFor: 'recovered'!
cdwLocals
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (8).
    ^recoveredValue0
! !

"psupp.ic method 0x20004c2c; bytecode file offset 0x1589a4"
!OSFpoData methodsFor: 'recovered'!
cdwParams
    | recoveredValue0 |
    recoveredValue0 := (self) uint16At: (12).
    ^recoveredValue0
! !

"psupp.ic method 0x2001055c; bytecode file offset 0x165330"
!OSFpoData methodsFor: 'recovered'!
ulOffStart: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (0) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x200134b4; bytecode file offset 0x166e00"
!OSFpoData methodsFor: 'recovered'!
cbProcSize: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (4) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20014228; bytecode file offset 0x1683c0"
!OSFpoData methodsFor: 'recovered'!
cdwLocals: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (8) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20014f90; bytecode file offset 0x169290"
!OSFpoData methodsFor: 'recovered'!
cdwParams: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint16At: (12) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20027434; bytecode file offset 0x17acd0"
!OSFpoData methodsFor: 'recovered'!
cbProlog
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) uint16At: (14).
    recoveredValue1 := (self) bitFieldExtract: (recoveredValue0) bitOffset: (0) bitWidth: (8).
    ^recoveredValue1
! !

"psupp.ic method 0x20027454; bytecode file offset 0x17acf0"
!OSFpoData methodsFor: 'recovered'!
cbRegs
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) uint16At: (14).
    recoveredValue1 := (self) bitFieldExtract: (recoveredValue0) bitOffset: (8) bitWidth: (3).
    ^recoveredValue1
! !

"psupp.ic method 0x20027474; bytecode file offset 0x17ad10"
!OSFpoData methodsFor: 'recovered'!
fHasSEH
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) uint16At: (14).
    recoveredValue1 := (self) bitFieldExtract: (recoveredValue0) bitOffset: (11) bitWidth: (1).
    ^recoveredValue1
! !

"psupp.ic method 0x20027494; bytecode file offset 0x17ad30"
!OSFpoData methodsFor: 'recovered'!
fUseBP
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) uint16At: (14).
    recoveredValue1 := (self) bitFieldExtract: (recoveredValue0) bitOffset: (12) bitWidth: (1).
    ^recoveredValue1
! !

"psupp.ic method 0x200274b4; bytecode file offset 0x17ad50"
!OSFpoData methodsFor: 'recovered'!
reserved
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) uint16At: (14).
    recoveredValue1 := (self) bitFieldExtract: (recoveredValue0) bitOffset: (13) bitWidth: (1).
    ^recoveredValue1
! !

"psupp.ic method 0x200274d4; bytecode file offset 0x17ad70"
!OSFpoData methodsFor: 'recovered'!
cbFrame
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) uint16At: (14).
    recoveredValue1 := (self) bitFieldExtract: (recoveredValue0) bitOffset: (14) bitWidth: (2).
    ^recoveredValue1
! !

"psupp.ic method 0x2002de78; bytecode file offset 0x181718"
!OSFpoData methodsFor: 'recovered'!
cbProlog: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) uint16At: (14).
    recoveredValue2 := (self) bitFieldMerge: (recoveredValue0) with: (recoveredValue1) bitOffset: (0) bitWidth: (8).
    (self) uint16At: (14) put: (recoveredValue2).
    ^self
! !

"psupp.ic method 0x2002dea4; bytecode file offset 0x181744"
!OSFpoData methodsFor: 'recovered'!
cbRegs: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) uint16At: (14).
    recoveredValue2 := (self) bitFieldMerge: (recoveredValue0) with: (recoveredValue1) bitOffset: (8) bitWidth: (3).
    (self) uint16At: (14) put: (recoveredValue2).
    ^self
! !

"psupp.ic method 0x2002ded0; bytecode file offset 0x181770"
!OSFpoData methodsFor: 'recovered'!
fHasSEH: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) uint16At: (14).
    recoveredValue2 := (self) bitFieldMerge: (recoveredValue0) with: (recoveredValue1) bitOffset: (11) bitWidth: (1).
    (self) uint16At: (14) put: (recoveredValue2).
    ^self
! !

"psupp.ic method 0x2002defc; bytecode file offset 0x18179c"
!OSFpoData methodsFor: 'recovered'!
fUseBP: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) uint16At: (14).
    recoveredValue2 := (self) bitFieldMerge: (recoveredValue0) with: (recoveredValue1) bitOffset: (12) bitWidth: (1).
    (self) uint16At: (14) put: (recoveredValue2).
    ^self
! !

"psupp.ic method 0x2002df28; bytecode file offset 0x1817c8"
!OSFpoData methodsFor: 'recovered'!
reserved: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) uint16At: (14).
    recoveredValue2 := (self) bitFieldMerge: (recoveredValue0) with: (recoveredValue1) bitOffset: (13) bitWidth: (1).
    (self) uint16At: (14) put: (recoveredValue2).
    ^self
! !

"psupp.ic method 0x2002df54; bytecode file offset 0x1817f4"
!OSFpoData methodsFor: 'recovered'!
cbFrame: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) uint16At: (14).
    recoveredValue2 := (self) bitFieldMerge: (recoveredValue0) with: (recoveredValue1) bitOffset: (14) bitWidth: (2).
    (self) uint16At: (14) put: (recoveredValue2).
    ^self
! !

