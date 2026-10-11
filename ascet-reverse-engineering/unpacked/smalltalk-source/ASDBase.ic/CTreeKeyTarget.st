"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20007ebc; bytecode file offset 0x908be4"
!CTreeKeyTarget methodsFor: 'recovered'!
blobSize
    | recoveredValue0 |
    recoveredValue0 := (self) size.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2014c474; bytecode file offset 0xa48d38"
!CTreeKeyTarget methodsFor: 'recovered'!
bytes
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := ByteArray.
    recoveredValue1 := (self) size.
    recoveredValue2 := (recoveredValue0) new: (recoveredValue1).
    recoveredValue3 := (self) size.
    recoveredValue4 := (recoveredValue2) replaceFrom: (1) to: (recoveredValue3) with: (self) startingAt: (1).
    ^recoveredValue4
! !

"ASDBase.ic method 0x20153e5c; bytecode file offset 0xa5071c"
!CTreeKeyTarget methodsFor: 'recovered'!
fillFromBytes: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) size.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (recoveredValue2) size.
    recoveredValue4 := (recoveredValue1) min: (recoveredValue3).
    recoveredValue5 := (recoveredValue4) + (-1).
    (recoveredValue0) memcpyFrom: (0) to: (recoveredValue5) into: (self) startingAt: (0).
    ^self
! !

