"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"sci.ic method 0x200024b0; bytecode file offset 0x15544"
!String methodsFor: 'recovered'!
inetAddr
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := ByteArray.
    recoveredValue1 := (recoveredValue0) new: (4).
    recoveredValue2 := recoveredValue1.
    recoveredValue3 := OSSocketAddrInet.
    recoveredValue4 := (recoveredValue3) inetAddr: (self).
    (recoveredValue2) uint32At: (0) put: (recoveredValue4).
    recoveredValue5 := (recoveredValue1) ntoh32At: (0).
    ^recoveredValue5
! !

"sci.ic method 0x20002ee0; bytecode file offset 0x15f74"
!String methodsFor: 'recovered'!
sciPing
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 |
    recoveredValue0 := (self) subStrings: ($:).
    recoveredLocal3 := recoveredValue0.
    recoveredValue1 := recoveredLocal3.
    recoveredValue2 := (recoveredValue1) at: (1).
    recoveredLocal2 := recoveredValue2.
    recoveredValue3 := recoveredLocal3.
    recoveredValue4 := (recoveredValue3) at: (2).
    recoveredValue5 := (recoveredValue4) asNumber.
    recoveredLocal1 := recoveredValue5.
    recoveredValue6 := SciSocketManager.
    recoveredValue7 := (recoveredValue6) default.
    recoveredValue8 := recoveredLocal1.
    recoveredValue9 := recoveredLocal2.
    recoveredValue10 := (recoveredValue7) ping: (recoveredValue8) at: (recoveredValue9).
    ^recoveredValue10
! !

