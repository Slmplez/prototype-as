"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2004b6dc; bytecode file offset 0x948384"
!ASAP2DisplayTableConfig methodsFor: 'recovered'!
displayTableType
    | recoveredValue0 |
    recoveredValue0 := (self) at: (4).
    ^recoveredValue0
! !

"ASDBase.ic method 0x2004bea0; bytecode file offset 0x94877c"
!ASAP2DisplayTableConfig methodsFor: 'recovered'!
dataMode
    | recoveredValue0 |
    recoveredValue0 := (self) at: (5).
    ^recoveredValue0
! !

"ASDBase.ic method 0x2004bfe0; bytecode file offset 0x948b80"
!ASAP2DisplayTableConfig methodsFor: 'recovered'!
byteOrder
    | recoveredValue0 |
    recoveredValue0 := (self) at: (6).
    ^recoveredValue0
! !

"ASDBase.ic method 0x2004c324; bytecode file offset 0x948e28"
!ASAP2DisplayTableConfig methodsFor: 'recovered'!
triggerSegmentAddress
    | recoveredValue0 |
    recoveredValue0 := (self) at: (7).
    ^recoveredValue0
! !

"ASDBase.ic method 0x2004c65c; bytecode file offset 0x949118"
!ASAP2DisplayTableConfig methodsFor: 'recovered'!
triggerConfig
    | recoveredValue0 |
    recoveredValue0 := (self) at: (8).
    ^recoveredValue0
! !

"ASDBase.ic method 0x2004c9d0; bytecode file offset 0x9492dc"
!ASAP2DisplayTableConfig methodsFor: 'recovered'!
triggerMode
    | recoveredValue0 |
    recoveredValue0 := (self) at: (9).
    ^recoveredValue0
! !

"ASDBase.ic method 0x200a63d4; bytecode file offset 0x9a2f38"
!ASAP2DisplayTableConfig methodsFor: 'recovered'!
displayTableType: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) at: (4) put: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x200a67f4; bytecode file offset 0x9a32e0"
!ASAP2DisplayTableConfig methodsFor: 'recovered'!
dataMode: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) at: (5) put: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x200a6c8c; bytecode file offset 0x9a3694"
!ASAP2DisplayTableConfig methodsFor: 'recovered'!
byteOrder: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) at: (6) put: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x200a7004; bytecode file offset 0x9a391c"
!ASAP2DisplayTableConfig methodsFor: 'recovered'!
triggerSegmentAddress: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) at: (7) put: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x200a7250; bytecode file offset 0x9a3b44"
!ASAP2DisplayTableConfig methodsFor: 'recovered'!
triggerConfig: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) at: (8) put: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x200a7334; bytecode file offset 0x9a3d0c"
!ASAP2DisplayTableConfig methodsFor: 'recovered'!
triggerMode: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) at: (9) put: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x200aa108; bytecode file offset 0x9a69f0"
!ASAP2DisplayTableConfig methodsFor: 'recovered'!
getIntegerList: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) class.
    recoveredValue2 := (recoveredValue1) keyWords.
    recoveredValue3 := (self) getIntegerList: (recoveredValue0) upToOneOff: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x200fb354; bytecode file offset 0x9f7ee4"
!ASAP2DisplayTableConfig methodsFor: 'recovered'!
putDataModeIn: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    (self) putSeparatorIn: (recoveredValue0).
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (self) dataMode.
    (self) putIn: (recoveredValue1) hex: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x200fb548; bytecode file offset 0x9f7ee4"
!ASAP2DisplayTableConfig methodsFor: 'recovered'!
putTriggerSegmentAddressIn: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    (self) putSeparatorIn: (recoveredValue0).
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (self) triggerSegmentAddress.
    (self) putIn: (recoveredValue1) hex: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x200fb5fc; bytecode file offset 0x9f7ee4"
!ASAP2DisplayTableConfig methodsFor: 'recovered'!
putDisplayTableTypeIn: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    (self) putSeparatorIn: (recoveredValue0).
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (self) displayTableType.
    (self) putIn: (recoveredValue1) hex: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x200fb624; bytecode file offset 0x9f7ee4"
!ASAP2DisplayTableConfig methodsFor: 'recovered'!
putTriggerConfigIn: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    (self) putSeparatorIn: (recoveredValue0).
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (self) triggerConfig.
    (self) putIn: (recoveredValue1) hex: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x200fd6a0; bytecode file offset 0x9fa1f4"
!ASAP2DisplayTableConfig methodsFor: 'recovered'!
getTriggerConfig: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    (self) skipComment: (recoveredValue0).
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (self) getInteger: (recoveredValue1).
    (self) triggerConfig: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x200fd77c; bytecode file offset 0x9fa1f4"
!ASAP2DisplayTableConfig methodsFor: 'recovered'!
getDisplayTableType: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    (self) skipComment: (recoveredValue0).
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (self) getInteger: (recoveredValue1).
    (self) displayTableType: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x200fd858; bytecode file offset 0x9fa1f4"
!ASAP2DisplayTableConfig methodsFor: 'recovered'!
getTriggerSegmentAddress: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    (self) skipComment: (recoveredValue0).
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (self) getInteger: (recoveredValue1).
    (self) triggerSegmentAddress: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x200fd934; bytecode file offset 0x9fa1f4"
!ASAP2DisplayTableConfig methodsFor: 'recovered'!
getDataMode: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    (self) skipComment: (recoveredValue0).
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (self) getInteger: (recoveredValue1).
    (self) dataMode: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x201a3b04; bytecode file offset 0xaa0458"
!ASAP2DisplayTableConfig methodsFor: 'recovered'!
putParameterIn: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := recoveredArg1.
    (self) putDisplayTableTypeIn: (recoveredValue0).
    recoveredValue1 := recoveredArg1.
    (self) putDataModeIn: (recoveredValue1).
    recoveredValue2 := recoveredArg1.
    (self) putByteOrderIn: (recoveredValue2).
    recoveredValue3 := recoveredArg1.
    (self) putTriggerSegmentAddressIn: (recoveredValue3).
    recoveredValue4 := recoveredArg1.
    (self) putTriggerConfigIn: (recoveredValue4).
    ^self
! !

"ASDBase.ic method 0x201cc4d0; bytecode file offset 0xac8da4"
!ASAP2DisplayTableConfig methodsFor: 'recovered'!
getTriggerMode: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := recoveredArg1.
    (self) skipComment: (recoveredValue0).
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (self) getIntegerList: (recoveredValue1).
    (self) triggerMode: (recoveredValue2).
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := (self) class.
    recoveredValue5 := (recoveredValue4) keyWords.
    recoveredValue6 := (recoveredValue5) keyAtValue: ('getTriggerMode:').
    (self) getEndKeyword: (recoveredValue3) keyWord: (recoveredValue6).
    ^self
! !

"ASDBase.ic method 0x201e98bc; bytecode file offset 0xae6830"
!ASAP2DisplayTableConfig methodsFor: 'recovered'!
putIn: recoveredArg1 triggerMode: recoveredArg2
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) triggerMode.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 27] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack1) putNewLineIn: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack1) putIn: (recoveredStack2) string: (recoveredStack3).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            (recoveredStack1) putSeparatorIn: (recoveredStack2).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack2 := (recoveredStack2) triggerMode.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            (recoveredStack0) putIn: (recoveredStack1) integerListHex: (recoveredStack2).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2021a874; bytecode file offset 0xb17144"
!ASAP2DisplayTableConfig methodsFor: 'recovered'!
getFrom: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := recoveredArg1.
    (self) getShortBegin: (recoveredValue0).
    recoveredValue1 := recoveredArg1.
    (self) getDisplayTableType: (recoveredValue1).
    recoveredValue2 := recoveredArg1.
    (self) getDataMode: (recoveredValue2).
    recoveredValue3 := recoveredArg1.
    (self) getByteOrder: (recoveredValue3).
    recoveredValue4 := recoveredArg1.
    (self) getTriggerSegmentAddress: (recoveredValue4).
    recoveredValue5 := recoveredArg1.
    (self) getTriggerConfig: (recoveredValue5).
    recoveredValue6 := recoveredArg1.
    (self) parseStruct: (recoveredValue6).
    ^self
! !

