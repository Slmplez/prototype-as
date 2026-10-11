"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20012c90; bytecode file offset 0x912098"
!ASAP2Source class methodsFor: 'recovered'!
ScalingUnits
    | recoveredValue0 |
    recoveredValue0 := ScalingUnits.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200194cc; bytecode file offset 0x92209c"
!ASAP2Source class methodsFor: 'recovered'!
setMembers
    ^#('name:' 'longName:' 'comments:' 'sourceName:' 'scalingUnit:' 'rate:' 'qpBlob:' 'scaledRating:' 'periodic:')
! !

"ASDBase.ic method 0x2001b1e8; bytecode file offset 0x92209c"
!ASAP2Source class methodsFor: 'recovered'!
keyWord
    ^'SOURCE'
! !

"ASDBase.ic method 0x2003c564; bytecode file offset 0x938e30"
!ASAP2Source class methodsFor: 'recovered'!
createWithsourcName: recoveredArg1 scalingUnit: recoveredArg2 rate: recoveredArg3 qpBlob: recoveredArg4 qpData: recoveredArg5
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) new.
    recoveredValue1 := (recoveredValue0) initialize.
    ^recoveredValue1
! !

"ASDBase.ic method 0x200790ac; bytecode file offset 0x975960"
!ASAP2Source class methodsFor: 'recovered'!
emBehaviorId
    ^144
! !

"ASDBase.ic method 0x200b6c08; bytecode file offset 0x9b39ac"
!ASAP2Source class methodsFor: 'recovered'!
members
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := super members.
    recoveredValue1 := (recoveredValue0) , (#('sourceName' 'scalingUnit' 'rate' 'qpBlob' 'scaledRating' 'periodic' 'displayIdentifier')).
    ^recoveredValue1
! !

"ASDBase.ic method 0x200b7678; bytecode file offset 0x9b3f54"
!ASAP2Source class methodsFor: 'recovered'!
fixedSize
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := super fixedSize.
    recoveredValue1 := (recoveredValue0) + (7).
    ^recoveredValue1
! !

"ASDBase.ic method 0x201cd610; bytecode file offset 0xac9ee8"
!ASAP2Source class methodsFor: 'recovered'!
convertFromAsd: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 |
    recoveredValue0 := (self) create.
    recoveredValue1 := recoveredValue0.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (recoveredValue2) sourceName.
    (recoveredValue1) sourceName: (recoveredValue3).
    recoveredValue4 := recoveredValue0.
    recoveredValue5 := recoveredArg1.
    recoveredValue6 := (recoveredValue5) scalingUnit.
    (recoveredValue4) scalingUnit: (recoveredValue6).
    recoveredValue7 := recoveredValue0.
    recoveredValue8 := recoveredArg1.
    recoveredValue9 := (recoveredValue8) rate.
    (recoveredValue7) rate: (recoveredValue9).
    recoveredValue10 := recoveredArg1.
    recoveredValue11 := (recoveredValue10) qpBlob.
    recoveredValue12 := (recoveredValue0) qpBlob: (recoveredValue11).
    ^recoveredValue12
! !

"ASDBase.ic method 0x202c5f14; bytecode file offset 0xbc27fc"
!ASAP2Source class methodsFor: 'recovered'!
createForTask: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 |
    recoveredValue0 := (self) create.
    recoveredValue1 := recoveredValue0.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (recoveredValue2) name.
    (recoveredValue1) name: (recoveredValue3).
    recoveredValue4 := recoveredValue0.
    recoveredValue5 := recoveredArg1.
    recoveredValue6 := (recoveredValue5) name.
    (recoveredValue4) sourceName: (recoveredValue6).
    recoveredValue7 := recoveredValue0.
    (recoveredValue7) scalingUnit: (3).
    recoveredValue8 := recoveredValue0.
    recoveredValue9 := recoveredArg1.
    recoveredValue10 := (recoveredValue9) triggerObject.
    recoveredValue11 := (recoveredValue10) asapPeriod.
    recoveredValue12 := (recoveredValue11) * (1000).
    recoveredValue13 := (recoveredValue12) asInteger.
    recoveredValue14 := (recoveredValue13) max: (1).
    (recoveredValue8) rate: (recoveredValue14).
    recoveredValue15 := recoveredValue0.
    recoveredValue16 := recoveredArg1.
    recoveredValue17 := (recoveredValue16) id.
    recoveredValue18 := (recoveredValue17) printString.
    (recoveredValue15) qpBlob: (recoveredValue18).
    ^recoveredValue0
! !

"ASDBase.ic method 0x20359dc8; bytecode file offset 0xc56740"
!ASAP2Source class methodsFor: 'recovered'!
initializeKeyWords
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 |
    super initializeKeyWords.
    recoveredValue0 := keyWords.
    recoveredValue1 := recoveredValue0.
    (recoveredValue1) at: ('QP_BLOB') put: ('getQpBlob:').
    recoveredValue2 := recoveredValue0.
    (recoveredValue2) at: ('DISPLAY_IDENTIFIER') put: ('getDisplayIdentifier:').
    (recoveredValue0) at: ('PERIODIC') put: ('getPeriodic:').
    recoveredValue3 := options.
    recoveredValue4 := recoveredValue3.
    recoveredValue5 := Association.
    recoveredValue6 := (recoveredValue5) key: ('QP_BLOB') value: ('putIn:qpBlob:').
    (recoveredValue4) add: (recoveredValue6).
    recoveredValue7 := recoveredValue3.
    recoveredValue8 := Association.
    recoveredValue9 := (recoveredValue8) key: ('DISPLAY_IDENTIFIER') value: ('putIn:displayIdentifier:').
    (recoveredValue7) add: (recoveredValue9).
    recoveredValue10 := Association.
    recoveredValue11 := (recoveredValue10) key: ('PERIODIC') value: ('putIn:periodic:').
    (recoveredValue3) add: (recoveredValue11).
    ^self
! !

"ASDBase.ic method 0x204b9a40; bytecode file offset 0xdb633c"
!ASAP2Source class methodsFor: 'recovered'!
initializeClass
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 recoveredValue21 recoveredValue22 recoveredValue23 recoveredValue24 recoveredValue25 |
    recoveredValue0 := LookupTable.
    recoveredValue1 := (recoveredValue0) new.
    ScalingUnits := recoveredValue1.
    recoveredValue2 := ScalingUnits.
    recoveredValue3 := recoveredValue2.
    recoveredValue4 := (Fraction) numerator: (1) denominator: (1000000).
    (recoveredValue3) at: (0) put: (recoveredValue4).
    recoveredValue5 := recoveredValue2.
    recoveredValue6 := (Fraction) numerator: (1) denominator: (100000).
    (recoveredValue5) at: (1) put: (recoveredValue6).
    recoveredValue7 := recoveredValue2.
    recoveredValue8 := (Fraction) numerator: (1) denominator: (10000).
    (recoveredValue7) at: (2) put: (recoveredValue8).
    recoveredValue9 := recoveredValue2.
    recoveredValue10 := (Fraction) numerator: (1) denominator: (1000).
    (recoveredValue9) at: (3) put: (recoveredValue10).
    recoveredValue11 := recoveredValue2.
    recoveredValue12 := (Fraction) numerator: (1) denominator: (100).
    (recoveredValue11) at: (4) put: (recoveredValue12).
    recoveredValue13 := recoveredValue2.
    recoveredValue14 := (Fraction) numerator: (1) denominator: (10).
    (recoveredValue13) at: (5) put: (recoveredValue14).
    recoveredValue15 := recoveredValue2.
    (recoveredValue15) at: (6) put: (1).
    recoveredValue16 := recoveredValue2.
    (recoveredValue16) at: (7) put: (10).
    recoveredValue17 := recoveredValue2.
    (recoveredValue17) at: (8) put: (60).
    recoveredValue18 := recoveredValue2.
    (recoveredValue18) at: (9) put: (3600).
    recoveredValue19 := recoveredValue2.
    (recoveredValue19) at: (10) put: (86400).
    recoveredValue20 := recoveredValue2.
    (recoveredValue20) at: (100) put: ('AngualarDegrees').
    recoveredValue21 := recoveredValue2.
    (recoveredValue21) at: (101) put: ('Revolutions 360 degrees').
    recoveredValue22 := recoveredValue2.
    (recoveredValue22) at: (102) put: ('Cycle 720 degrees').
    recoveredValue23 := recoveredValue2.
    (recoveredValue23) at: (103) put: ('CyclinderSegment').
    recoveredValue24 := recoveredValue2.
    (recoveredValue24) at: (998) put: ('WhenFrameAvailable').
    recoveredValue25 := recoveredValue2.
    (recoveredValue25) at: (999) put: ('OnNewValue').
    (recoveredValue2) at: (1000) put: ('NonDeterministic').
    ^self
! !

