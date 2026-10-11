"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2001784c; bytecode file offset 0x92209c"
!SGPacketLayoutField class methodsFor: 'recovered'!
defaultAttribute
    ^'data'
! !

"ASDBase.ic method 0x2001ac18; bytecode file offset 0x92209c"
!SGPacketLayoutField class methodsFor: 'recovered'!
lengthAttribute
    ^'length'
! !

"ASDBase.ic method 0x200242b4; bytecode file offset 0x92209c"
!SGPacketLayoutField class methodsFor: 'recovered'!
getInt32BufferName
    ^'int32Buf'
! !

"ASDBase.ic method 0x2003d4a8; bytecode file offset 0x93bf94"
!SGPacketLayoutField class methodsFor: 'recovered'!
defaultType
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := SGUnsignedInteger.
    recoveredValue1 := (recoveredValue0) createDefault.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2003e948; bytecode file offset 0x93bf94"
!SGPacketLayoutField class methodsFor: 'recovered'!
defaultModelType
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := SGReal.
    recoveredValue1 := (recoveredValue0) createDefault.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20051268; bytecode file offset 0x94f0e0"
!SGPacketLayoutField class methodsFor: 'recovered'!
availableChecksumTypes
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) availableChecksumTypesDictionary.
    recoveredValue1 := (recoveredValue0) keys.
    recoveredValue2 := (recoveredValue1) asArray.
    ^recoveredValue2
! !

"ASDBase.ic method 0x20051eac; bytecode file offset 0x94f0e0"
!SGPacketLayoutField class methodsFor: 'recovered'!
availableAttributes
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) availableAttributesDictionary.
    recoveredValue1 := (recoveredValue0) keys.
    recoveredValue2 := (recoveredValue1) asArray.
    ^recoveredValue2
! !

"ASDBase.ic method 0x20079068; bytecode file offset 0x97594c"
!SGPacketLayoutField class methodsFor: 'recovered'!
defaultIntegerLength
    ^16
! !

"ASDBase.ic method 0x2007fe80; bytecode file offset 0x97c764"
!SGPacketLayoutField class methodsFor: 'recovered'!
maximumLength
    ^32
! !

"ASDBase.ic method 0x200efe58; bytecode file offset 0x9ec7e4"
!SGPacketLayoutField class methodsFor: 'recovered'!
availableChecksumTypesDictionary
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := Dictionary.
    recoveredValue1 := (recoveredValue0) new.
    recoveredValue2 := recoveredValue1.
    (recoveredValue2) at: ('addDataBytes') put: ('Add Data Bytes').
    ^recoveredValue1
! !

"ASDBase.ic method 0x2017223c; bytecode file offset 0xa6eb0c"
!SGPacketLayoutField class methodsFor: 'recovered'!
createPredefinedField
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := (self) new.
    recoveredValue1 := (recoveredValue0) initialize.
    recoveredValue2 := recoveredValue1.
    (recoveredValue2) name: ('ID').
    recoveredValue3 := recoveredValue1.
    (recoveredValue3) attribute: ('id').
    recoveredValue4 := recoveredValue1.
    (recoveredValue4) length: (16).
    ^recoveredValue1
! !

"ASDBase.ic method 0x2028b26c; bytecode file offset 0xb87b54"
!SGPacketLayoutField class methodsFor: 'recovered'!
availableAttributesDictionary
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := Dictionary.
    recoveredValue1 := (recoveredValue0) new.
    recoveredValue2 := recoveredValue1.
    (recoveredValue2) at: ('data') put: ('Data').
    recoveredValue3 := recoveredValue1.
    (recoveredValue3) at: ('id') put: ('ID').
    recoveredValue4 := recoveredValue1.
    (recoveredValue4) at: ('length') put: ('Length').
    recoveredValue5 := recoveredValue1.
    (recoveredValue5) at: ('checksum') put: ('Checksum').
    recoveredValue6 := recoveredValue1.
    (recoveredValue6) at: ('stuffing') put: ('Stuffing').
    ^recoveredValue1
! !

