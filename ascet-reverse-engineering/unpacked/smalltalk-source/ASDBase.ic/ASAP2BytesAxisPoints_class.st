"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20018d58; bytecode file offset 0x92209c"
!ASAP2BytesAxisPoints class methodsFor: 'recovered'!
type
    ^''
! !

"ASDBase.ic method 0x2001a2e8; bytecode file offset 0x92209c"
!ASAP2BytesAxisPoints class methodsFor: 'recovered'!
keyWord
    ^'AXIS_PTS'
! !

"ASDBase.ic method 0x2008084c; bytecode file offset 0x97d100"
!ASAP2BytesAxisPoints class methodsFor: 'recovered'!
asap2BehaviorId
    ^199
! !

"ASDBase.ic method 0x20091110; bytecode file offset 0x98d9dc"
!ASAP2BytesAxisPoints class methodsFor: 'recovered'!
fixedSize
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := super fixedSize.
    recoveredValue1 := (recoveredValue0) + (1).
    ^recoveredValue1
! !

"ASDBase.ic method 0x200b5f60; bytecode file offset 0x9b39ac"
!ASAP2BytesAxisPoints class methodsFor: 'recovered'!
setMembers
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := super setMembers.
    recoveredValue1 := (recoveredValue0) , (#('input:' 'deposit:' 'maxSize:')).
    ^recoveredValue1
! !

"ASDBase.ic method 0x200b6d10; bytecode file offset 0x9b39ac"
!ASAP2BytesAxisPoints class methodsFor: 'recovered'!
members
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := super members.
    recoveredValue1 := (recoveredValue0) , (#('input' 'deposit' 'maxSize')).
    ^recoveredValue1
! !

"ASDBase.ic method 0x200b74a4; bytecode file offset 0x9b3da0"
!ASAP2BytesAxisPoints class methodsFor: 'recovered'!
bytesSize
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := super bytesSize.
    recoveredValue1 := (recoveredValue0) + (4).
    ^recoveredValue1
! !

"ASDBase.ic method 0x201f2ddc; bytecode file offset 0xaef814"
!ASAP2BytesAxisPoints class methodsFor: 'recovered'!
initializeKeyWords
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    super initializeKeyWords.
    recoveredValue0 := keyWords.
    (recoveredValue0) at: ('DEPOSIT') put: ('getDeposit:').
    recoveredValue1 := options.
    recoveredValue2 := Association.
    recoveredValue3 := (recoveredValue2) key: ('DEPOSIT') value: ('putIn:deposit:').
    (recoveredValue1) add: (recoveredValue3).
    ^self
! !

"ASDBase.ic method 0x202ee368; bytecode file offset 0xbeac54"
!ASAP2BytesAxisPoints class methodsFor: 'recovered'!
referenceAccessors
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 |
    recoveredValue0 := super referenceAccessors.
    recoveredLocal1 := recoveredValue0.
    recoveredValue1 := recoveredLocal1.
    recoveredValue2 := ASAP2BytesCompuMethod.
    recoveredValue3 := (recoveredValue2) withAllSubclasses.
    (recoveredValue1) at: ('compuMethod') put: (recoveredValue3).
    recoveredValue4 := recoveredLocal1.
    recoveredValue5 := ASAP2Function.
    recoveredValue6 := (recoveredValue5) withAllSubclasses.
    recoveredValue7 := (self) allowedCollectionClasses.
    recoveredValue8 := (recoveredValue6) , (recoveredValue7).
    (recoveredValue4) at: ('functionList') put: (recoveredValue8).
    recoveredValue9 := recoveredLocal1.
    recoveredValue10 := ASAP2RecordLayout.
    recoveredValue11 := (recoveredValue10) withAllSubclasses.
    (recoveredValue9) at: ('recordLayout') put: (recoveredValue11).
    recoveredValue12 := recoveredLocal1.
    recoveredValue13 := ASAP2BytesMeasurement.
    recoveredValue14 := (recoveredValue13) withAllSubclasses.
    (recoveredValue12) at: ('input') put: (recoveredValue14).
    recoveredValue15 := recoveredLocal1.
    ^recoveredValue15
! !

