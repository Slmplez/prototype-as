"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2004a928; bytecode file offset 0x9471ec"
!SGCgMessageUsageInfo methodsFor: 'recovered'!
setFlowDirectionSend
    send := true.
    ^self
! !

"ASDBase.ic method 0x2004a958; bytecode file offset 0x94721c"
!SGCgMessageUsageInfo methodsFor: 'recovered'!
setFlowDirectionReceive
    receive := true.
    ^self
! !

"ASDBase.ic method 0x2004a978; bytecode file offset 0x947254"
!SGCgMessageUsageInfo methodsFor: 'recovered'!
setExternalAccessSet
    setAccess := true.
    ^self
! !

"ASDBase.ic method 0x2004a9e0; bytecode file offset 0x94729c"
!SGCgMessageUsageInfo methodsFor: 'recovered'!
setExternalAccessGet
    getAccess := true.
    ^self
! !

"ASDBase.ic method 0x20065dac; bytecode file offset 0x963428"
!SGCgMessageUsageInfo methodsFor: 'recovered'!
usage
    | recoveredValue0 |
    recoveredValue0 := usage.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006764c; bytecode file offset 0x9646f8"
!SGCgMessageUsageInfo methodsFor: 'recovered'!
label
    | recoveredValue0 |
    recoveredValue0 := label.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20068ac4; bytecode file offset 0x965b90"
!SGCgMessageUsageInfo methodsFor: 'recovered'!
isPureFlowDirectionSend
    | recoveredValue0 |
    recoveredValue0 := send.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20069eb8; bytecode file offset 0x966bdc"
!SGCgMessageUsageInfo methodsFor: 'recovered'!
isPureFlowDirectionReceive
    | recoveredValue0 |
    recoveredValue0 := receive.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006b054; bytecode file offset 0x967a18"
!SGCgMessageUsageInfo methodsFor: 'recovered'!
isExternalAccessSet
    | recoveredValue0 |
    recoveredValue0 := setAccess.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006b928; bytecode file offset 0x96873c"
!SGCgMessageUsageInfo methodsFor: 'recovered'!
isExternalAccessGet
    | recoveredValue0 |
    recoveredValue0 := getAccess.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200be9b0; bytecode file offset 0x9bc0b4"
!SGCgMessageUsageInfo methodsFor: 'recovered'!
label: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    label := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200e2324; bytecode file offset 0x9dec60"
!SGCgMessageUsageInfo methodsFor: 'recovered'!
isFlowDirectionSendReceive
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := (recoveredStack2) isFlowDirectionSend.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 13].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) isFlowDirectionReceive.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x200e2334; bytecode file offset 0x9dec60"
!SGCgMessageUsageInfo methodsFor: 'recovered'!
isPureFlowDirectionSendReceive
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := (recoveredStack2) isPureFlowDirectionSend.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 13].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) isPureFlowDirectionReceive.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x200e281c; bytecode file offset 0x9df0d4"
!SGCgMessageUsageInfo methodsFor: 'recovered'!
isFlowDirectionSend
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack2 := send.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 13] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) isExternalAccessSet.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x200e2838; bytecode file offset 0x9df0f0"
!SGCgMessageUsageInfo methodsFor: 'recovered'!
isFlowDirectionReceive
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack2 := receive.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 13] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) isExternalAccessGet.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x201004c4; bytecode file offset 0x9fcda8"
!SGCgMessageUsageInfo methodsFor: 'recovered'!
setFlowDirectionCTInput: recoveredArg1 connectingComponent: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    (self) setFlowDirectionReceive.
    recoveredValue0 := (self) usage.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := (recoveredValue1) mdlClassType.
    recoveredValue3 := (recoveredValue2) classId.
    (recoveredValue0) add: (recoveredValue3).
    ^self
! !

"ASDBase.ic method 0x201004e0; bytecode file offset 0x9fcda8"
!SGCgMessageUsageInfo methodsFor: 'recovered'!
setFlowDirectionCTOutput: recoveredArg1 connectingComponent: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    (self) setFlowDirectionSend.
    recoveredValue0 := (self) usage.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := (recoveredValue1) mdlClassType.
    recoveredValue3 := (recoveredValue2) classId.
    (recoveredValue0) add: (recoveredValue3).
    ^self
! !

"ASDBase.ic method 0x201ca7b0; bytecode file offset 0xac7074"
!SGCgMessageUsageInfo methodsFor: 'recovered'!
initialize
    | recoveredValue0 recoveredValue1 |
    super initialize.
    recoveredValue0 := Set.
    recoveredValue1 := (recoveredValue0) new.
    usage := recoveredValue1.
    send := false.
    receive := false.
    setAccess := false.
    getAccess := false.
    ^self
! !

"ASDBase.ic method 0x201dcac0; bytecode file offset 0xad9394"
!SGCgMessageUsageInfo methodsFor: 'recovered'!
setFlowDirectionExport: recoveredArg1 exportOwner: recoveredArg2 projectInterface: recoveredArg3
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := (recoveredStack1) mdlKey.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := recoveredArg3.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := (recoveredStack2) mdlClassType.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack2 := (recoveredStack2) mdlKey.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := (recoveredStack1) equals: (recoveredStack2).
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 27] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := (recoveredStack2) dataModelRef.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack1) setFlowDirection: (recoveredStack2).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := (recoveredStack1) usage.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack2 := (recoveredStack2) classId.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            (recoveredStack1) add: (recoveredStack2).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20284308; bytecode file offset 0xb80c04"
!SGCgMessageUsageInfo methodsFor: 'recovered'!
setFlowDirection: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := (recoveredStack1) isReceive.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 13].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack1) setFlowDirectionReceive.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) isSend.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 21].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            (recoveredStack1) setFlowDirectionSend.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := (recoveredStack1) hasGetAccess.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 28] ifFalse: [recoveredPC := 31].
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            (recoveredStack1) setExternalAccessGet.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := (recoveredStack1) hasSetAccess.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 38] ifFalse: [recoveredPC := 41].
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            (recoveredStack1) setExternalAccessSet.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20284330; bytecode file offset 0xb80c04"
!SGCgMessageUsageInfo methodsFor: 'recovered'!
flowDirectionFromAttributes: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := (recoveredStack1) isCgAttrReceiveDirection.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 13].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack1) setFlowDirectionReceive.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) isCgAttrSendDirection.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 21].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            (recoveredStack1) setFlowDirectionSend.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := (recoveredStack1) isCgAttrGetAccess.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 28] ifFalse: [recoveredPC := 31].
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            (recoveredStack1) setExternalAccessGet.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := (recoveredStack1) isCgAttrSetAccess.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 38] ifFalse: [recoveredPC := 41].
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            (recoveredStack1) setExternalAccessSet.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20345d08; bytecode file offset 0xc425f0"
!SGCgMessageUsageInfo methodsFor: 'recovered'!
setFlowDirectionImport: recoveredArg1 importOwner: recoveredArg2 hwcInstance: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 |
    recoveredValue0 := ('RL') == ('Call_66128').
    recoveredValue1 := recoveredArg3.
    recoveredValue2 := [
    | recoveredBlock13Stack0 recoveredBlock13Stack1 recoveredBlock13Stack2 recoveredBlock13Stack3 recoveredBlock13Stack4 recoveredBlock13PC recoveredBlock13Step recoveredBlock13Done recoveredBlock13Result |
    recoveredBlock13Stack0 := self.
    recoveredBlock13PC := 20.
    recoveredBlock13Done := false.
    [recoveredBlock13Done not] whileTrue: [
        recoveredBlock13Step := recoveredBlock13PC.
        recoveredBlock13Step = 20 ifTrue: [
            recoveredBlock13Stack1 := nil.
            recoveredBlock13PC := 21.
        ].
        recoveredBlock13Step = 21 ifTrue: [
            recoveredBlock13Stack2 := recoveredArg3.
            recoveredBlock13PC := 24.
        ].
        recoveredBlock13Step = 24 ifTrue: [
            recoveredBlock13Stack2 := (recoveredBlock13Stack2) type.
            recoveredBlock13PC := 25.
        ].
        recoveredBlock13Step = 25 ifTrue: [
            recoveredBlock13Stack2 := (recoveredBlock13Stack2) className.
            recoveredBlock13PC := 26.
        ].
        recoveredBlock13Step = 26 ifTrue: [
            recoveredBlock13Stack3 := recoveredArg2.
            recoveredBlock13PC := 29.
        ].
        recoveredBlock13Step = 29 ifTrue: [
            recoveredBlock13Stack3 := (recoveredBlock13Stack3) label.
            recoveredBlock13PC := 31.
        ].
        recoveredBlock13Step = 31 ifTrue: [
            recoveredBlock13Stack2 := (recoveredBlock13Stack2) equals: (recoveredBlock13Stack3).
            recoveredBlock13PC := 33.
        ].
        recoveredBlock13Step = 33 ifTrue: [
            (recoveredBlock13Stack2) ifTrue: [recoveredBlock13PC := 36] ifFalse: [recoveredBlock13PC := 39].
        ].
        recoveredBlock13Step = 36 ifTrue: [
            recoveredBlock13PC := 37.
        ].
        recoveredBlock13Step = 37 ifTrue: [
            recoveredBlock13Stack1 := self.
            recoveredBlock13PC := 38.
        ].
        recoveredBlock13Step = 38 ifTrue: [
            ^recoveredBlock13Stack1
        ].
        recoveredBlock13Step = 39 ifTrue: [
            recoveredBlock13Result := recoveredBlock13Stack1.
            recoveredBlock13Done := true.
        ].
    ].
    recoveredBlock13Result
].
    (recoveredValue1) notNil: (recoveredValue2).
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := (recoveredValue3) dataModelRef.
    (self) setFlowDirection: (recoveredValue4).
    recoveredValue5 := (self) usage.
    recoveredValue6 := recoveredArg2.
    recoveredValue7 := (recoveredValue6) dbObject.
    recoveredValue8 := (recoveredValue7) globalIdString.
    (recoveredValue5) add: (recoveredValue8).
    ^self
! !

"ASDBase.ic method 0x2041d200; bytecode file offset 0xd19b00"
!SGCgMessageUsageInfo methodsFor: 'recovered'!
printOn: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 recoveredValue21 recoveredValue22 recoveredValue23 recoveredValue24 recoveredValue25 recoveredValue26 recoveredValue27 recoveredValue28 recoveredValue29 recoveredValue30 |
    recoveredValue0 := recoveredArg1.
    super printOn: (recoveredValue0).
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredValue1.
    (recoveredValue2) cr.
    recoveredValue3 := (self) label.
    recoveredValue4 := ('label:   ') , (recoveredValue3).
    (recoveredValue1) nextPutAll: (recoveredValue4).
    recoveredValue5 := recoveredArg1.
    recoveredValue6 := recoveredValue5.
    (recoveredValue6) cr.
    recoveredValue7 := (self) usage.
    recoveredValue8 := (recoveredValue7) size.
    recoveredValue9 := (recoveredValue8) asString.
    recoveredValue10 := ('#usages: ') , (recoveredValue9).
    (recoveredValue5) nextPutAll: (recoveredValue10).
    recoveredValue11 := recoveredArg1.
    recoveredValue12 := recoveredValue11.
    (recoveredValue12) cr.
    recoveredValue13 := (self) isPureFlowDirectionReceive.
    recoveredValue14 := (recoveredValue13) asString.
    recoveredValue15 := ('RECEIVE: ') , (recoveredValue14).
    (recoveredValue11) nextPutAll: (recoveredValue15).
    recoveredValue16 := recoveredArg1.
    recoveredValue17 := recoveredValue16.
    (recoveredValue17) cr.
    recoveredValue18 := (self) isPureFlowDirectionSend.
    recoveredValue19 := (recoveredValue18) asString.
    recoveredValue20 := ('SEND: ') , (recoveredValue19).
    (recoveredValue16) nextPutAll: (recoveredValue20).
    recoveredValue21 := recoveredArg1.
    recoveredValue22 := recoveredValue21.
    (recoveredValue22) cr.
    recoveredValue23 := (self) isFlowDirectionReceive.
    recoveredValue24 := (recoveredValue23) asString.
    recoveredValue25 := ('flow RECEIVE: ') , (recoveredValue24).
    (recoveredValue21) nextPutAll: (recoveredValue25).
    recoveredValue26 := recoveredArg1.
    recoveredValue27 := recoveredValue26.
    (recoveredValue27) cr.
    recoveredValue28 := (self) isFlowDirectionSend.
    recoveredValue29 := (recoveredValue28) asString.
    recoveredValue30 := ('flow SEND: ') , (recoveredValue29).
    (recoveredValue26) nextPutAll: (recoveredValue30).
    ^self
! !

