"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20001ac8; bytecode file offset 0x8ffcfc"
!ASAP2ModuleParameter class methodsFor: 'recovered'!
_PRAGMA_IS_
    ^self
! !

"ASDBase.ic method 0x2001b02c; bytecode file offset 0x92209c"
!ASAP2ModuleParameter class methodsFor: 'recovered'!
keyWord
    ^'MOD_PAR'
! !

"ASDBase.ic method 0x200233fc; bytecode file offset 0x92209c"
!ASAP2ModuleParameter class methodsFor: 'recovered'!
setMembers
    ^#('name:' 'longName:' 'comments:' 'version:' 'addrEpk:' 'epk:' 'supplier:' 'customer:' 'customerNo:' 'user:' 'phoneNo:' 'ecu:' 'cpuType:' 'noOfInterface:' 'memoryLayout:' 'memorySegment:' 'systemConstant:' 'ecuCalibrationOffset:' 'calibrationMethod:')
! !

"ASDBase.ic method 0x20074894; bytecode file offset 0x971148"
!ASAP2ModuleParameter class methodsFor: 'recovered'!
emBehaviorId
    ^141
! !

"ASDBase.ic method 0x200b69b0; bytecode file offset 0x9b39ac"
!ASAP2ModuleParameter class methodsFor: 'recovered'!
members
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := super members.
    recoveredValue1 := (recoveredValue0) , (#('version' 'addrEpk' 'epk' 'supplier' 'customer' 'customerNo' 'user' 'phoneNo' 'ecu' 'cpuType' 'noOfInterface' 'memoryLayout' 'memorySegment' 'systemConstant' 'ecuCalibrationOffset' 'calibrationMethod')).
    ^recoveredValue1
! !

"ASDBase.ic method 0x200b7764; bytecode file offset 0x9b4020"
!ASAP2ModuleParameter class methodsFor: 'recovered'!
fixedSize
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := super fixedSize.
    recoveredValue1 := (recoveredValue0) + (16).
    ^recoveredValue1
! !

"ASDBase.ic method 0x2018ce78; bytecode file offset 0xa89944"
!ASAP2ModuleParameter class methodsFor: 'recovered'!
abtPrimFlushInterfaceSpecCache
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := IS_ASAP2ModuleParameter.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := [:block280d1058Arg1 | 
    | block280d1058Value0 block280d1058Value1 |
    block280d1058Value0 := block280d1058Arg1.
    block280d1058Value1 := (block280d1058Value0) value: (nil).
    block280d1058Value1
].
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack1) associationsDo: (recoveredStack2).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            super abtPrimFlushInterfaceSpecCache.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201c5c6c; bytecode file offset 0xac3724"
!ASAP2ModuleParameter class methodsFor: 'recovered'!
IS_modified
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := IS_modified.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := IS_modified.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredPC := 26.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := AbtEventSpec.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack2 := 'modified'.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := (recoveredStack1) symbol: (recoveredStack2).
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            IS_modified := recoveredStack2.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x201f031c; bytecode file offset 0xaecc08"
!ASAP2ModuleParameter class methodsFor: 'recovered'!
IS_instanceInterfaceSpec
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := IS_instanceInterfaceSpec.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := IS_instanceInterfaceSpec.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredPC := 29.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := AbtInterfaceSpec.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack2 := 'modified'.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack3 := (recoveredStack3) IS_modified.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := (recoveredStack1) featureNamed: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            IS_instanceInterfaceSpec := recoveredStack2.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x20397fbc; bytecode file offset 0xc948a8"
!ASAP2ModuleParameter class methodsFor: 'recovered'!
create: recoveredArg1 longName: recoveredArg2 version: recoveredArg3 addrEpk: recoveredArg4 epk: recoveredArg5 supplier: recoveredArg6 customer: recoveredArg7 customerNo: recoveredArg8 user: recoveredArg9 phoneNo: recoveredArg10 ecu: recoveredArg11 cpuType: recoveredArg12 noOfInterface: recoveredArg13 memoryLayout: recoveredArg14 systemConstant: recoveredArg15
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 recoveredValue21 recoveredValue22 recoveredValue23 recoveredValue24 recoveredValue25 recoveredValue26 recoveredValue27 recoveredValue28 recoveredValue29 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := (self) create: (recoveredValue0) longName: (recoveredValue1).
    recoveredLocal1 := recoveredValue2.
    recoveredValue3 := recoveredLocal1.
    recoveredValue4 := recoveredValue3.
    recoveredValue5 := recoveredArg3.
    (recoveredValue4) version: (recoveredValue5).
    recoveredValue6 := recoveredValue3.
    recoveredValue7 := recoveredArg4.
    (recoveredValue6) addrEpk: (recoveredValue7).
    recoveredValue8 := recoveredValue3.
    recoveredValue9 := recoveredArg5.
    (recoveredValue8) epk: (recoveredValue9).
    recoveredValue10 := recoveredValue3.
    recoveredValue11 := recoveredArg6.
    (recoveredValue10) supplier: (recoveredValue11).
    recoveredValue12 := recoveredValue3.
    recoveredValue13 := recoveredArg7.
    (recoveredValue12) customer: (recoveredValue13).
    recoveredValue14 := recoveredValue3.
    recoveredValue15 := recoveredArg8.
    (recoveredValue14) customerNo: (recoveredValue15).
    recoveredValue16 := recoveredValue3.
    recoveredValue17 := recoveredArg9.
    (recoveredValue16) user: (recoveredValue17).
    recoveredValue18 := recoveredValue3.
    recoveredValue19 := recoveredArg10.
    (recoveredValue18) phoneNo: (recoveredValue19).
    recoveredValue20 := recoveredValue3.
    recoveredValue21 := recoveredArg11.
    (recoveredValue20) ecu: (recoveredValue21).
    recoveredValue22 := recoveredValue3.
    recoveredValue23 := recoveredArg12.
    (recoveredValue22) cpuType: (recoveredValue23).
    recoveredValue24 := recoveredValue3.
    recoveredValue25 := recoveredArg13.
    (recoveredValue24) noOfInterface: (recoveredValue25).
    recoveredValue26 := recoveredValue3.
    recoveredValue27 := recoveredArg14.
    (recoveredValue26) memoryLayout: (recoveredValue27).
    recoveredValue28 := recoveredArg15.
    (recoveredValue3) systemConstant: (recoveredValue28).
    recoveredValue29 := recoveredLocal1.
    ^recoveredValue29
! !

"ASDBase.ic method 0x205ae158; bytecode file offset 0xeaaae8"
!ASAP2ModuleParameter class methodsFor: 'recovered'!
initializeKeyWords
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 recoveredValue21 recoveredValue22 recoveredValue23 recoveredValue24 recoveredValue25 recoveredValue26 recoveredValue27 recoveredValue28 recoveredValue29 recoveredValue30 recoveredValue31 recoveredValue32 recoveredValue33 recoveredValue34 recoveredValue35 recoveredValue36 recoveredValue37 recoveredValue38 recoveredValue39 recoveredValue40 recoveredValue41 recoveredValue42 recoveredValue43 recoveredValue44 recoveredValue45 recoveredValue46 recoveredValue47 recoveredValue48 recoveredValue49 recoveredValue50 recoveredValue51 recoveredValue52 recoveredValue53 recoveredValue54 recoveredValue55 recoveredValue56 recoveredValue57 recoveredValue58 recoveredValue59 recoveredValue60 recoveredValue61 recoveredValue62 recoveredValue63 recoveredValue64 |
    super initializeKeyWords.
    recoveredValue0 := keyWords.
    recoveredValue1 := recoveredValue0.
    (recoveredValue1) at: ('VERSION') put: ('getVersion:').
    recoveredValue2 := recoveredValue0.
    (recoveredValue2) at: ('ADDR_EPK') put: ('getAddrEpk:').
    recoveredValue3 := recoveredValue0.
    (recoveredValue3) at: ('EPK') put: ('getEpk:').
    recoveredValue4 := recoveredValue0.
    (recoveredValue4) at: ('SUPPLIER') put: ('getSupplier:').
    recoveredValue5 := recoveredValue0.
    (recoveredValue5) at: ('CUSTOMER') put: ('getCustomer:').
    recoveredValue6 := recoveredValue0.
    (recoveredValue6) at: ('CUSTOMER_NO') put: ('getCustomerNo:').
    recoveredValue7 := recoveredValue0.
    (recoveredValue7) at: ('USER') put: ('getUser:').
    recoveredValue8 := recoveredValue0.
    (recoveredValue8) at: ('PHONE_NO') put: ('getPhoneNo:').
    recoveredValue9 := recoveredValue0.
    (recoveredValue9) at: ('ECU') put: ('getEcu:').
    recoveredValue10 := recoveredValue0.
    (recoveredValue10) at: ('CPU_TYPE') put: ('getCpuType:').
    recoveredValue11 := recoveredValue0.
    (recoveredValue11) at: ('NO_OF_INTERFACES') put: ('getNoOfInterface:').
    recoveredValue12 := recoveredValue0.
    (recoveredValue12) at: ('MEMORY_SEGMENT') put: ('getMemorySegment:').
    recoveredValue13 := recoveredValue0.
    (recoveredValue13) at: ('MEMORY_LAYOUT') put: ('getMemoryLayout:').
    recoveredValue14 := recoveredValue0.
    (recoveredValue14) at: ('SYSTEM_CONSTANT') put: ('getSystemConstant:').
    recoveredValue15 := recoveredValue0.
    (recoveredValue15) at: ('ECU_CALIBRATION_OFFSET') put: ('getCalibrationAddressOffset:').
    recoveredValue16 := recoveredValue0.
    (recoveredValue16) at: ('CALIBRATION_ADDRESS_OFFSET') put: ('getCalibrationAddressOffset:').
    (recoveredValue0) at: ('CALIBRATION_METHOD') put: ('getCalibrationMethod:').
    recoveredValue17 := options.
    recoveredValue18 := recoveredValue17.
    recoveredValue19 := Association.
    recoveredValue20 := (recoveredValue19) key: ('VERSION') value: ('putIn:version:').
    (recoveredValue18) add: (recoveredValue20).
    recoveredValue21 := recoveredValue17.
    recoveredValue22 := Association.
    recoveredValue23 := (recoveredValue22) key: ('ADDR_EPK') value: ('putIn:addrEpk:').
    (recoveredValue21) add: (recoveredValue23).
    recoveredValue24 := recoveredValue17.
    recoveredValue25 := Association.
    recoveredValue26 := (recoveredValue25) key: ('EPK') value: ('putIn:epk:').
    (recoveredValue24) add: (recoveredValue26).
    recoveredValue27 := recoveredValue17.
    recoveredValue28 := Association.
    recoveredValue29 := (recoveredValue28) key: ('SUPPLIER') value: ('putIn:supplier:').
    (recoveredValue27) add: (recoveredValue29).
    recoveredValue30 := recoveredValue17.
    recoveredValue31 := Association.
    recoveredValue32 := (recoveredValue31) key: ('CUSTOMER') value: ('putIn:customer:').
    (recoveredValue30) add: (recoveredValue32).
    recoveredValue33 := recoveredValue17.
    recoveredValue34 := Association.
    recoveredValue35 := (recoveredValue34) key: ('CUSTOMER_NO') value: ('putIn:customerNo:').
    (recoveredValue33) add: (recoveredValue35).
    recoveredValue36 := recoveredValue17.
    recoveredValue37 := Association.
    recoveredValue38 := (recoveredValue37) key: ('USER') value: ('putIn:user:').
    (recoveredValue36) add: (recoveredValue38).
    recoveredValue39 := recoveredValue17.
    recoveredValue40 := Association.
    recoveredValue41 := (recoveredValue40) key: ('PHONE_NO') value: ('putIn:phoneNo:').
    (recoveredValue39) add: (recoveredValue41).
    recoveredValue42 := recoveredValue17.
    recoveredValue43 := Association.
    recoveredValue44 := (recoveredValue43) key: ('ECU') value: ('putIn:ecu:').
    (recoveredValue42) add: (recoveredValue44).
    recoveredValue45 := recoveredValue17.
    recoveredValue46 := Association.
    recoveredValue47 := (recoveredValue46) key: ('CPU_TYPE') value: ('putIn:cpuType:').
    (recoveredValue45) add: (recoveredValue47).
    recoveredValue48 := recoveredValue17.
    recoveredValue49 := Association.
    recoveredValue50 := (recoveredValue49) key: ('NO_OF_INTERFACES') value: ('putIn:noOfInterface:').
    (recoveredValue48) add: (recoveredValue50).
    recoveredValue51 := recoveredValue17.
    recoveredValue52 := Association.
    recoveredValue53 := (recoveredValue52) key: ('MEMORY_SEGMENT') value: ('putIn:memorySegment:').
    (recoveredValue51) add: (recoveredValue53).
    recoveredValue54 := recoveredValue17.
    recoveredValue55 := Association.
    recoveredValue56 := (recoveredValue55) key: ('MEMORY_LAYOUT') value: ('putIn:memoryLayout:').
    (recoveredValue54) add: (recoveredValue56).
    recoveredValue57 := recoveredValue17.
    recoveredValue58 := Association.
    recoveredValue59 := (recoveredValue58) key: ('SYSTEM_CONSTANT') value: ('putIn:systemConstant:').
    (recoveredValue57) add: (recoveredValue59).
    recoveredValue60 := recoveredValue17.
    recoveredValue61 := Association.
    recoveredValue62 := (recoveredValue61) key: ('ECU_CALIBRATION_OFFSET') value: ('putIn:calibrationAddressOffset:').
    (recoveredValue60) add: (recoveredValue62).
    recoveredValue63 := Association.
    recoveredValue64 := (recoveredValue63) key: ('CALIBRATION_METHOD') value: ('putIn:calibrationMethod:').
    (recoveredValue17) add: (recoveredValue64).
    ^self
! !

