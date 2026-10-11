"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2004ad60; bytecode file offset 0x947768"
!RBOnlineDLLVisibleChannelDataStruct32 methodsFor: 'recovered'!
channelId
    | recoveredValue0 |
    recoveredValue0 := (self) int32At: (0).
    ^recoveredValue0
! !

"ASDBase.ic method 0x2004b790; bytecode file offset 0x948384"
!RBOnlineDLLVisibleChannelDataStruct32 methodsFor: 'recovered'!
groupId
    | recoveredValue0 |
    recoveredValue0 := (self) int32At: (4).
    ^recoveredValue0
! !

"ASDBase.ic method 0x2004c800; bytecode file offset 0x949118"
!RBOnlineDLLVisibleChannelDataStruct32 methodsFor: 'recovered'!
noPoints
    | recoveredValue0 |
    recoveredValue0 := (self) int32At: (8).
    ^recoveredValue0
! !

"ASDBase.ic method 0x2004ce50; bytecode file offset 0x949804"
!RBOnlineDLLVisibleChannelDataStruct32 methodsFor: 'recovered'!
dataBufferHandle
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (12).
    ^recoveredValue0
! !

"ASDBase.ic method 0x2004d224; bytecode file offset 0x949bf0"
!RBOnlineDLLVisibleChannelDataStruct32 methodsFor: 'recovered'!
byteSize
    | recoveredValue0 |
    recoveredValue0 := (self) int16At: (16).
    ^recoveredValue0
! !

"ASDBase.ic method 0x2004d338; bytecode file offset 0x949bf0"
!RBOnlineDLLVisibleChannelDataStruct32 methodsFor: 'recovered'!
dataType
    | recoveredValue0 |
    recoveredValue0 := (self) int16At: (16).
    ^recoveredValue0
! !

"ASDBase.ic method 0x20094090; bytecode file offset 0x990960"
!RBOnlineDLLVisibleChannelDataStruct32 methodsFor: 'recovered'!
byteSize: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) int16At: (16) put: (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x203e500c; bytecode file offset 0xce1900"
!RBOnlineDLLVisibleChannelDataStruct32 methodsFor: 'recovered'!
printOn: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 recoveredValue21 recoveredValue22 recoveredValue23 recoveredValue24 recoveredValue25 recoveredValue26 recoveredValue27 |
    recoveredValue0 := recoveredArg1.
    super printOn: (recoveredValue0).
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredValue1.
    (recoveredValue2) cr.
    recoveredValue3 := recoveredValue1.
    recoveredValue4 := (self) channelId.
    recoveredValue5 := (recoveredValue4) printString.
    recoveredValue6 := ('    channelId:		') , (recoveredValue5).
    (recoveredValue3) nextPutAll: (recoveredValue6).
    recoveredValue7 := recoveredValue1.
    (recoveredValue7) cr.
    recoveredValue8 := recoveredValue1.
    recoveredValue9 := (self) groupId.
    recoveredValue10 := (recoveredValue9) printString.
    recoveredValue11 := ('    groupId:			') , (recoveredValue10).
    (recoveredValue8) nextPutAll: (recoveredValue11).
    recoveredValue12 := recoveredValue1.
    (recoveredValue12) cr.
    recoveredValue13 := recoveredValue1.
    recoveredValue14 := (self) noPoints.
    recoveredValue15 := (recoveredValue14) printString.
    recoveredValue16 := ('    noPoints:			') , (recoveredValue15).
    (recoveredValue13) nextPutAll: (recoveredValue16).
    recoveredValue17 := recoveredValue1.
    (recoveredValue17) cr.
    recoveredValue18 := recoveredValue1.
    recoveredValue19 := (self) dataBufferHandle.
    recoveredValue20 := (recoveredValue19) printString.
    recoveredValue21 := ('    hBuffer: 			') , (recoveredValue20).
    (recoveredValue18) nextPutAll: (recoveredValue21).
    recoveredValue22 := recoveredValue1.
    (recoveredValue22) cr.
    recoveredValue23 := recoveredValue1.
    recoveredValue24 := (self) dataType.
    recoveredValue25 := (recoveredValue24) printString.
    recoveredValue26 := ('    dataType:		') , (recoveredValue25).
    (recoveredValue23) nextPutAll: (recoveredValue26).
    (recoveredValue1) cr.
    recoveredValue27 := recoveredArg1.
    ^recoveredValue27
! !

