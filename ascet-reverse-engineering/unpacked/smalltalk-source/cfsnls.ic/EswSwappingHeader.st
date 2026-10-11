"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"cfsnls.ic method 0x20000c9c; bytecode file offset 0x23f54"
!EswSwappingHeader methodsFor: 'recovered'!
size
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) byteArrayRepresentation.
    recoveredValue1 := (recoveredValue0) size.
    ^recoveredValue1
! !

"cfsnls.ic method 0x20001a34; bytecode file offset 0x24c64"
!EswSwappingHeader methodsFor: 'recovered'!
byteArrayRepresentation
    | recoveredValue0 |
    recoveredValue0 := byteArrayRepresentation.
    ^recoveredValue0
! !

"cfsnls.ic method 0x20002e9c; bytecode file offset 0x260d4"
!EswSwappingHeader methodsFor: 'recovered'!
dumpOn: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) byteArrayRepresentation.
    (recoveredValue0) nextPutAll: (recoveredValue1).
    ^self
! !

"cfsnls.ic method 0x20003c14; bytecode file offset 0x26e50"
!EswSwappingHeader methodsFor: 'recovered'!
initialize: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := ByteArray.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) new: (recoveredValue1).
    (self) byteArrayRepresentation: (recoveredValue2).
    ^self
! !

"cfsnls.ic method 0x20003e78; bytecode file offset 0x270d8"
!EswSwappingHeader methodsFor: 'recovered'!
byteArrayRepresentation: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    byteArrayRepresentation := recoveredValue0.
    ^self
! !

