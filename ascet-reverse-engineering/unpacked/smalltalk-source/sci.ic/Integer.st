"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"sci.ic method 0x200027e0; bytecode file offset 0x15874"
!Integer methodsFor: 'recovered'!
inetNtoa
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := ByteArray.
    recoveredValue1 := (recoveredValue0) new: (4).
    recoveredValue2 := recoveredValue1.
    (recoveredValue2) hton32At: (0) put: (self).
    recoveredValue3 := (recoveredValue1) uint32At: (0).
    recoveredLocal1 := recoveredValue3.
    recoveredValue4 := OSSocketAddrInet.
    recoveredValue5 := recoveredLocal1.
    recoveredValue6 := (recoveredValue4) inetNtoa: (recoveredValue5).
    ^recoveredValue6
! !

