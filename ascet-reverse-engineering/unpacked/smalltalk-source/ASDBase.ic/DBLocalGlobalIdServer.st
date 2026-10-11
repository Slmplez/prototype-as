"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x200334c4; bytecode file offset 0x934580"
!DBLocalGlobalIdServer methodsFor: 'recovered'!
defaultNetAddress
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) getHostName.
    recoveredValue1 := (recoveredValue0) asNetAddress.
    ^recoveredValue1
! !

"ASDBase.ic method 0x200d06bc; bytecode file offset 0x9cd3a0"
!DBLocalGlobalIdServer methodsFor: 'recovered'!
arbiterCounter
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := ('Kk') == ('Call_67666').
    recoveredValue1 := (self) class.
    recoveredValue2 := (recoveredValue1) arbiterCounter.
    ^recoveredValue2
! !

"ASDBase.ic method 0x202943ec; bytecode file offset 0xb90ccc"
!DBLocalGlobalIdServer methodsFor: 'recovered'!
getHostName
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 |
    recoveredValue0 := String.
    recoveredValue1 := MaxPath.
    recoveredValue2 := (recoveredValue0) new: (recoveredValue1).
    recoveredLocal2 := recoveredValue2.
    recoveredValue3 := ByteArray.
    recoveredValue4 := (recoveredValue3) new: (4).
    recoveredLocal1 := recoveredValue4.
    recoveredValue5 := recoveredLocal1.
    recoveredValue6 := recoveredLocal2.
    recoveredValue7 := (recoveredValue6) size.
    (recoveredValue5) uint32At: (0) put: (recoveredValue7).
    recoveredValue8 := OSCall.
    recoveredValue9 := (recoveredValue8) new.
    recoveredValue10 := recoveredLocal2.
    recoveredValue11 := recoveredLocal1.
    (recoveredValue9) getComputerName: (recoveredValue10) lpcchBuffer: (recoveredValue11).
    recoveredValue12 := recoveredLocal2.
    recoveredValue13 := recoveredLocal1.
    recoveredValue14 := (recoveredValue13) uint32At: (0).
    recoveredValue15 := (recoveredValue12) copyFrom: (1) to: (recoveredValue14).
    ^recoveredValue15
! !

