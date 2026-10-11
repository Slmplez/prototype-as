"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20013248; bytecode file offset 0x912098"
!ASAP2Module class methodsFor: 'recovered'!
ParseCheckBlock
    | recoveredValue0 |
    recoveredValue0 := ParseCheckBlock.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20025310; bytecode file offset 0x92209c"
!ASAP2Module class methodsFor: 'recovered'!
keyWord
    ^'MODULE'
! !

"ASDBase.ic method 0x20026488; bytecode file offset 0x923928"
!ASAP2Module class methodsFor: 'recovered'!
setMembers
    ^#('name:' 'longName:' 'comments:' 'dbObject:' 'nameTable:' 'modPar:' 'modCommon:' 'ifData:' 'characteristic:' 'measurement:' 'function:' 'recordLayout:' 'axisPoint:' 'compuMethod:' 'compuTab:' 'compuVTab:' 'a2ml:' 'variantCoding:' 'frame:' 'group:' 'unit:' 'userRights:')
! !

"ASDBase.ic method 0x20054878; bytecode file offset 0x951190"
!ASAP2Module class methodsFor: 'recovered'!
ParseCheckBlock: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    ParseCheckBlock := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200b5bb8; bytecode file offset 0x9b39ac"
!ASAP2Module class methodsFor: 'recovered'!
nonLabelMembers
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := super members.
    recoveredValue1 := (recoveredValue0) , (#('nameTable' 'modPar' 'modCommon' 'ifData' 'function' 'recordLayout' 'compuMethod' 'compuTab' 'compuVTab' 'a2ml' 'variantCoding')).
    ^recoveredValue1
! !

"ASDBase.ic method 0x200b6ff8; bytecode file offset 0x9b39ac"
!ASAP2Module class methodsFor: 'recovered'!
members
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := super members.
    recoveredValue1 := (recoveredValue0) , (#('nameTable' 'modPar' 'modCommon' 'ifData' 'characteristic' 'measurement' 'function' 'recordLayout' 'axisPoint' 'compuMethod' 'compuTab' 'compuVTab' 'a2ml' 'variantCoding' 'frame' 'group' 'unit' 'userRights')).
    ^recoveredValue1
! !

"ASDBase.ic method 0x200b77b0; bytecode file offset 0x9b408c"
!ASAP2Module class methodsFor: 'recovered'!
fixedSize
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := super fixedSize.
    recoveredValue1 := (recoveredValue0) + (18).
    ^recoveredValue1
! !

"ASDBase.ic method 0x201397c0; bytecode file offset 0xa36078"
!ASAP2Module class methodsFor: 'recovered'!
emBehaviorId
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := ASAP2Module.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 15].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := 66.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201beda0; bytecode file offset 0xabb668"
!ASAP2Module class methodsFor: 'recovered'!
create: recoveredArg1 longName: recoveredArg2 modPar: recoveredArg3 modCommon: recoveredArg4
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := (self) create: (recoveredValue0) longName: (recoveredValue1).
    recoveredLocal1 := recoveredValue2.
    recoveredValue3 := recoveredLocal1.
    recoveredValue4 := recoveredValue3.
    recoveredValue5 := recoveredArg3.
    (recoveredValue4) modPar: (recoveredValue5).
    recoveredValue6 := recoveredValue3.
    recoveredValue7 := recoveredArg4.
    (recoveredValue6) modCommon: (recoveredValue7).
    (recoveredValue3) initializeCollections.
    recoveredValue8 := recoveredLocal1.
    (recoveredValue8) commit.
    recoveredValue9 := recoveredLocal1.
    ^recoveredValue9
! !

"ASDBase.ic method 0x205b6a4c; bytecode file offset 0xeb33e8"
!ASAP2Module class methodsFor: 'recovered'!
initializeKeyWords
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 recoveredValue21 recoveredValue22 recoveredValue23 recoveredValue24 recoveredValue25 recoveredValue26 recoveredValue27 recoveredValue28 recoveredValue29 recoveredValue30 recoveredValue31 recoveredValue32 recoveredValue33 recoveredValue34 recoveredValue35 recoveredValue36 recoveredValue37 recoveredValue38 recoveredValue39 recoveredValue40 recoveredValue41 recoveredValue42 recoveredValue43 recoveredValue44 recoveredValue45 recoveredValue46 recoveredValue47 recoveredValue48 recoveredValue49 recoveredValue50 recoveredValue51 recoveredValue52 recoveredValue53 recoveredValue54 recoveredValue55 recoveredValue56 recoveredValue57 recoveredValue58 recoveredValue59 recoveredValue60 recoveredValue61 recoveredValue62 recoveredValue63 recoveredValue64 recoveredValue65 |
    super initializeKeyWords.
    recoveredValue0 := keyWords.
    recoveredValue1 := recoveredValue0.
    (recoveredValue1) at: ('VARIANT_CODING') put: ('getVariantCoding:').
    recoveredValue2 := recoveredValue0.
    (recoveredValue2) at: ('A2ML') put: ('getA2ml:').
    recoveredValue3 := recoveredValue0.
    (recoveredValue3) at: ('MOD_PAR') put: ('getModPar:').
    recoveredValue4 := recoveredValue0.
    (recoveredValue4) at: ('MOD_COMMON') put: ('getModCommon:').
    recoveredValue5 := recoveredValue0.
    (recoveredValue5) at: ('IF_DATA') put: ('getIfData:').
    recoveredValue6 := recoveredValue0.
    (recoveredValue6) at: ('CHARACTERISTIC') put: ('getCharacteristic:').
    recoveredValue7 := recoveredValue0.
    (recoveredValue7) at: ('MEASUREMENT') put: ('getMeasurement:').
    recoveredValue8 := recoveredValue0.
    (recoveredValue8) at: ('COMPU_METHOD') put: ('getCompuMethod:').
    recoveredValue9 := recoveredValue0.
    (recoveredValue9) at: ('COMPU_TAB') put: ('getCompuTab:').
    recoveredValue10 := recoveredValue0.
    (recoveredValue10) at: ('COMPU_VTAB') put: ('getCompuVTab:').
    recoveredValue11 := recoveredValue0.
    (recoveredValue11) at: ('COMPU_VTAB_RANGE') put: ('getCompuVTabRange:').
    recoveredValue12 := recoveredValue0.
    (recoveredValue12) at: ('FUNCTION') put: ('getFunction:').
    recoveredValue13 := recoveredValue0.
    (recoveredValue13) at: ('FRAME') put: ('getFrame:').
    recoveredValue14 := recoveredValue0.
    (recoveredValue14) at: ('AXIS_PTS') put: ('getAxisPoints:').
    recoveredValue15 := recoveredValue0.
    (recoveredValue15) at: ('RECORD_LAYOUT') put: ('getRecordLayout:').
    recoveredValue16 := recoveredValue0.
    (recoveredValue16) at: ('GROUP') put: ('getGroup:').
    recoveredValue17 := recoveredValue0.
    (recoveredValue17) at: ('UNIT') put: ('getUnit:').
    (recoveredValue0) at: ('USER_RIGHTS') put: ('getUserRights:').
    recoveredValue18 := options.
    recoveredValue19 := recoveredValue18.
    recoveredValue20 := Association.
    recoveredValue21 := (recoveredValue20) key: ('VARIANT_CODING') value: ('putIn:variantCoding:').
    (recoveredValue19) add: (recoveredValue21).
    recoveredValue22 := recoveredValue18.
    recoveredValue23 := Association.
    recoveredValue24 := (recoveredValue23) key: ('A2ML') value: ('putIn:a2ml:').
    (recoveredValue22) add: (recoveredValue24).
    recoveredValue25 := recoveredValue18.
    recoveredValue26 := Association.
    recoveredValue27 := (recoveredValue26) key: ('MOD_PAR') value: ('putIn:modPar:').
    (recoveredValue25) add: (recoveredValue27).
    recoveredValue28 := recoveredValue18.
    recoveredValue29 := Association.
    recoveredValue30 := (recoveredValue29) key: ('MOD_COMMON') value: ('putIn:modCommon:').
    (recoveredValue28) add: (recoveredValue30).
    recoveredValue31 := recoveredValue18.
    recoveredValue32 := Association.
    recoveredValue33 := (recoveredValue32) key: ('IF_DATA') value: ('putIn:ifData:').
    (recoveredValue31) add: (recoveredValue33).
    recoveredValue34 := recoveredValue18.
    recoveredValue35 := Association.
    recoveredValue36 := (recoveredValue35) key: ('CHARACTERISTIC') value: ('putIn:characteristic:').
    (recoveredValue34) add: (recoveredValue36).
    recoveredValue37 := recoveredValue18.
    recoveredValue38 := Association.
    recoveredValue39 := (recoveredValue38) key: ('AXIS_PTS') value: ('putIn:axisPoints:').
    (recoveredValue37) add: (recoveredValue39).
    recoveredValue40 := recoveredValue18.
    recoveredValue41 := Association.
    recoveredValue42 := (recoveredValue41) key: ('MEASUREMENT') value: ('putIn:measurement:').
    (recoveredValue40) add: (recoveredValue42).
    recoveredValue43 := recoveredValue18.
    recoveredValue44 := Association.
    recoveredValue45 := (recoveredValue44) key: ('COMPU_METHOD') value: ('putIn:compuMethod:').
    (recoveredValue43) add: (recoveredValue45).
    recoveredValue46 := recoveredValue18.
    recoveredValue47 := Association.
    recoveredValue48 := (recoveredValue47) key: ('COMPU_TAB') value: ('putIn:compuTab:').
    (recoveredValue46) add: (recoveredValue48).
    recoveredValue49 := recoveredValue18.
    recoveredValue50 := Association.
    recoveredValue51 := (recoveredValue50) key: ('FRAME') value: ('putIn:frame:').
    (recoveredValue49) add: (recoveredValue51).
    recoveredValue52 := recoveredValue18.
    recoveredValue53 := Association.
    recoveredValue54 := (recoveredValue53) key: ('FUNCTION') value: ('putIn:function:').
    (recoveredValue52) add: (recoveredValue54).
    recoveredValue55 := recoveredValue18.
    recoveredValue56 := Association.
    recoveredValue57 := (recoveredValue56) key: ('RECORD_LAYOUT') value: ('putIn:recordLayout:').
    (recoveredValue55) add: (recoveredValue57).
    recoveredValue58 := recoveredValue18.
    recoveredValue59 := Association.
    recoveredValue60 := (recoveredValue59) key: ('GROUP') value: ('putIn:group:').
    (recoveredValue58) add: (recoveredValue60).
    recoveredValue61 := recoveredValue18.
    recoveredValue62 := Association.
    recoveredValue63 := (recoveredValue62) key: ('UNIT') value: ('putIn:unit:').
    (recoveredValue61) add: (recoveredValue63).
    recoveredValue64 := Association.
    recoveredValue65 := (recoveredValue64) key: ('USER_RIGHTS') value: ('putIn:userRights:').
    (recoveredValue18) add: (recoveredValue65).
    ^self
! !

