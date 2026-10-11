"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"xxx_dyn.ic method 0x20000d64; bytecode file offset 0x6209c"
!SstWSClientEngine methodsFor: 'recovered'!
serviceInputHandlerKey
    | recoveredValue0 |
    recoveredValue0 := WSServiceRequestClientHandler.
    ^recoveredValue0
! !

"xxx_dyn.ic method 0x20000da0; bytecode file offset 0x6209c"
!SstWSClientEngine methodsFor: 'recovered'!
serviceFaultHandlerKey
    | recoveredValue0 |
    recoveredValue0 := WSServiceFaultClientHandler.
    ^recoveredValue0
! !

"xxx_dyn.ic method 0x20000de8; bytecode file offset 0x6209c"
!SstWSClientEngine methodsFor: 'recovered'!
serviceOutputHandlerKey
    | recoveredValue0 |
    recoveredValue0 := WSServiceResponseClientHandler.
    ^recoveredValue0
! !

"xxx_dyn.ic method 0x20000f68; bytecode file offset 0x6209c"
!SstWSClientEngine methodsFor: 'recovered'!
globalInputHandlerKey
    | recoveredValue0 |
    recoveredValue0 := WSGlobalClientInputHandler.
    ^recoveredValue0
! !

"xxx_dyn.ic method 0x200033e4; bytecode file offset 0x644f0"
!SstWSClientEngine methodsFor: 'recovered'!
globalOutputHandlerKey
    | recoveredValue0 |
    (self) sstToBeFixed.
    recoveredValue0 := WSGlobalResponseClientHandler.
    ^recoveredValue0
! !

"xxx_dyn.ic method 0x20003404; bytecode file offset 0x644f0"
!SstWSClientEngine methodsFor: 'recovered'!
globalFaultHandlerKey
    | recoveredValue0 |
    (self) sstToBeFixed.
    recoveredValue0 := WSGlobalFaultClientHandler.
    ^recoveredValue0
! !

"xxx_dyn.ic method 0x20008b00; bytecode file offset 0x69bcc"
!SstWSClientEngine methodsFor: 'recovered'!
handleException: recoveredArg1 with: recoveredArg2
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg2.
    (self) invokeFaultHandlers: (recoveredValue0).
    recoveredValue1 := recoveredArg1.
    (recoveredValue1) signal.
    ^self
! !

"xxx_dyn.ic method 0x2000d550; bytecode file offset 0x6e63c"
!SstWSClientEngine methodsFor: 'recovered'!
invokeTransportHandlers: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) transportInputHandlerFor: (recoveredValue0).
    recoveredValue2 := recoveredArg1.
    (recoveredValue1) invoke: (recoveredValue2).
    recoveredValue3 := recoveredArg1.
    (recoveredValue3) markPastPivot.
    recoveredValue4 := recoveredArg1.
    recoveredValue5 := (self) transportOutputHandlerFor: (recoveredValue4).
    recoveredValue6 := recoveredArg1.
    (recoveredValue5) invoke: (recoveredValue6).
    ^self
! !

"xxx_dyn.ic method 0x2000de68; bytecode file offset 0x6ef6c"
!SstWSClientEngine methodsFor: 'recovered'!
invokeGlobalHandlers: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) globalInputHandlerFor: (recoveredValue0).
    recoveredValue2 := recoveredArg1.
    (recoveredValue1) invoke: (recoveredValue2).
    recoveredValue3 := recoveredArg1.
    (self) invokeTransportHandlers: (recoveredValue3).
    recoveredValue4 := recoveredArg1.
    recoveredValue5 := (self) globalOutputHandlerFor: (recoveredValue4).
    recoveredValue6 := recoveredArg1.
    (recoveredValue5) invoke: (recoveredValue6).
    ^self
! !

"xxx_dyn.ic method 0x2000de98; bytecode file offset 0x6ef6c"
!SstWSClientEngine methodsFor: 'recovered'!
invokeServiceHandlers: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) serviceInputHandlerFor: (recoveredValue0).
    recoveredValue2 := recoveredArg1.
    (recoveredValue1) invoke: (recoveredValue2).
    recoveredValue3 := recoveredArg1.
    (self) invokeGlobalHandlers: (recoveredValue3).
    recoveredValue4 := recoveredArg1.
    recoveredValue5 := (self) serviceOutputHandlerFor: (recoveredValue4).
    recoveredValue6 := recoveredArg1.
    (recoveredValue5) invoke: (recoveredValue6).
    ^self
! !

"xxx_dyn.ic method 0x20018e5c; bytecode file offset 0x79f48"
!SstWSClientEngine methodsFor: 'recovered'!
invokeHandlers: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            (recoveredStack0) sstToBeFixed.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack0) invokeServiceHandlers: (recoveredStack1).
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) results.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := [:block2800b5d4Arg1 | 
    | block2800b5d4Value0 block2800b5d4Value1 |
    block2800b5d4Value0 := block2800b5d4Arg1.
    block2800b5d4Value1 := (block2800b5d4Value0) isSoapFault.
    block2800b5d4Value1
].
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack2 := [].
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := (recoveredStack0) detect: (recoveredStack1) ifNone: (recoveredStack2).
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := [:block2800b5f8Arg1 | 
    | block2800b5f8Value0 block2800b5f8Value1 |
    block2800b5f8Value0 := block2800b5f8Arg1.
    block2800b5f8Value1 := (block2800b5f8Value0) raise.
    block2800b5f8Value1
].
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            (recoveredStack0) ifNotNil: (recoveredStack1).
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"xxx_dyn.ic method 0x2001aa48; bytecode file offset 0x7bb24"
!SstWSClientEngine methodsFor: 'recovered'!
invokeFaultHandlers: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := [
    | recoveredBlock4Value0 recoveredBlock4Value1 recoveredBlock4Value2 recoveredBlock4Value3 |
    recoveredBlock4Value0 := recoveredArg1.
    (self) invokeTransportFaultHandlers: (recoveredBlock4Value0).
    recoveredBlock4Value1 := recoveredArg1.
    (self) invokeServiceFaultHandlers: (recoveredBlock4Value1).
    recoveredBlock4Value2 := recoveredArg1.
    recoveredBlock4Value3 := (self) invokeGlobalFaultHandlers: (recoveredBlock4Value2).
    recoveredBlock4Value3
].
    recoveredValue1 := ExError.
    recoveredValue2 := [:recoveredBlock29Arg1 | 
    | recoveredBlock29Value0 recoveredBlock29Value1 recoveredBlock29Value2 |
    recoveredBlock29Value0 := recoveredBlock29Arg1.
    recoveredBlock29Value1 := recoveredArg1.
    recoveredBlock29Value2 := (self) handleFatalException: (recoveredBlock29Value0) with: (recoveredBlock29Value1).
    recoveredBlock29Value2
].
    (recoveredValue0) when: (recoveredValue1) do: (recoveredValue2).
    ^self
! !

