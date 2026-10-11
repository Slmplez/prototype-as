"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"psupp.ic method 0x200014e8; bytecode file offset 0x155d58"
!OSOleuiobjectprops methodsFor: 'recovered'!
cbStruct
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (0).
    ^recoveredValue0
! !

"psupp.ic method 0x200034b8; bytecode file offset 0x157170"
!OSOleuiobjectprops methodsFor: 'recovered'!
dwFlags
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (4).
    ^recoveredValue0
! !

"psupp.ic method 0x20004ca4; bytecode file offset 0x1589a4"
!OSOleuiobjectprops methodsFor: 'recovered'!
dwObject
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (12).
    ^recoveredValue0
! !

"psupp.ic method 0x20005f98; bytecode file offset 0x159974"
!OSOleuiobjectprops methodsFor: 'recovered'!
dwLink
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (20).
    ^recoveredValue0
! !

"psupp.ic method 0x20008b28; bytecode file offset 0x15caa4"
!OSOleuiobjectprops methodsFor: 'recovered'!
oleUIObjectProperties
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := OleUIObjectProperties.
    recoveredValue1 := (recoveredValue0) callWith: (self).
    ^recoveredValue1
! !

"psupp.ic method 0x200108e0; bytecode file offset 0x165330"
!OSOleuiobjectprops methodsFor: 'recovered'!
cbStruct: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (0) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20012470; bytecode file offset 0x166e00"
!OSOleuiobjectprops methodsFor: 'recovered'!
dwFlags: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (4) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x200146e4; bytecode file offset 0x1683c0"
!OSOleuiobjectprops methodsFor: 'recovered'!
lpPS: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (8) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x200157e8; bytecode file offset 0x169290"
!OSOleuiobjectprops methodsFor: 'recovered'!
dwObject: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (12) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x2001628c; bytecode file offset 0x169eb4"
!OSOleuiobjectprops methodsFor: 'recovered'!
lpObjInfo: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (16) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20016b2c; bytecode file offset 0x16a7b4"
!OSOleuiobjectprops methodsFor: 'recovered'!
dwLink: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (20) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x200171a4; bytecode file offset 0x16afe8"
!OSOleuiobjectprops methodsFor: 'recovered'!
lpLinkInfo: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (24) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20017d44; bytecode file offset 0x16b690"
!OSOleuiobjectprops methodsFor: 'recovered'!
lpGP: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (28) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20017e7c; bytecode file offset 0x16bb70"
!OSOleuiobjectprops methodsFor: 'recovered'!
lpVP: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (32) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x200186f8; bytecode file offset 0x16bff0"
!OSOleuiobjectprops methodsFor: 'recovered'!
lpLP: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (36) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x2001bb20; bytecode file offset 0x16f8e8"
!OSOleuiobjectprops methodsFor: 'recovered'!
lpPS
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := OSPropsheetheader.
    recoveredValue1 := (self) uint32At: (8).
    recoveredValue2 := (recoveredValue0) address: (recoveredValue1).
    ^recoveredValue2
! !

"psupp.ic method 0x2001c68c; bytecode file offset 0x170238"
!OSOleuiobjectprops methodsFor: 'recovered'!
lpObjInfo
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := OSIOleUIObjInfo.
    recoveredValue1 := (self) uint32At: (16).
    recoveredValue2 := (recoveredValue0) address: (recoveredValue1).
    ^recoveredValue2
! !

"psupp.ic method 0x2001cc1c; bytecode file offset 0x170728"
!OSOleuiobjectprops methodsFor: 'recovered'!
lpLinkInfo
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := OSIOleUILinkInfo.
    recoveredValue1 := (self) uint32At: (24).
    recoveredValue2 := (recoveredValue0) address: (recoveredValue1).
    ^recoveredValue2
! !

"psupp.ic method 0x2001cf18; bytecode file offset 0x170948"
!OSOleuiobjectprops methodsFor: 'recovered'!
lpGP
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := OSOleuignrlprops.
    recoveredValue1 := (self) uint32At: (28).
    recoveredValue2 := (recoveredValue0) address: (recoveredValue1).
    ^recoveredValue2
! !

"psupp.ic method 0x2001d208; bytecode file offset 0x170b20"
!OSOleuiobjectprops methodsFor: 'recovered'!
lpVP
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := OSOleuiviewprops.
    recoveredValue1 := (self) uint32At: (32).
    recoveredValue2 := (recoveredValue0) address: (recoveredValue1).
    ^recoveredValue2
! !

"psupp.ic method 0x2001d400; bytecode file offset 0x170d40"
!OSOleuiobjectprops methodsFor: 'recovered'!
lpLP
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := OSOleuilinkprops.
    recoveredValue1 := (self) uint32At: (36).
    recoveredValue2 := (recoveredValue0) address: (recoveredValue1).
    ^recoveredValue2
! !

