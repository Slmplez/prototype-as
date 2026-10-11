"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x200256f4; bytecode file offset 0x92209c"
!SGCgInfoMessage methodsFor: 'recovered'!
iconName
    ^'CodeGenMessageInformation'
! !

"ASDBase.ic method 0x20074d6c; bytecode file offset 0x9757c8"
!SGCgInfoMessage methodsFor: 'recovered'!
isInfoMessage
    ^true
! !

"ASDBase.ic method 0x20192b60; bytecode file offset 0xa8f448"
!SGCgInfoMessage methodsFor: 'recovered'!
printMessageOn: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredValue0.
    (recoveredValue1) nextPutAll: ('INFO(').
    recoveredValue2 := recoveredValue0.
    recoveredValue3 := id.
    (recoveredValue2) nextPutAll: (recoveredValue3).
    recoveredValue4 := recoveredValue0.
    (recoveredValue4) nextPutAll: ('): ').
    recoveredValue5 := text.
    recoveredValue6 := (recoveredValue0) nextPutAll: (recoveredValue5).
    ^recoveredValue6
! !

"ASDBase.ic method 0x201f04ac; bytecode file offset 0xaecdb8"
!SGCgInfoMessage methodsFor: 'recovered'!
text
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 |
    recoveredValue0 := SGBasicTempWriteStream.
    recoveredValue1 := (recoveredValue0) reserveTempStream.
    recoveredValue2 := recoveredValue1.
    (recoveredValue2) nextPutAll: ('INFO(').
    recoveredValue3 := recoveredValue1.
    recoveredValue4 := id.
    (recoveredValue3) nextPutAll: (recoveredValue4).
    recoveredValue5 := recoveredValue1.
    (recoveredValue5) nextPutAll: ('): ').
    recoveredValue6 := recoveredValue1.
    recoveredValue7 := text.
    (recoveredValue6) nextPutAll: (recoveredValue7).
    recoveredValue8 := (recoveredValue1) releaseGetContents.
    ^recoveredValue8
! !

