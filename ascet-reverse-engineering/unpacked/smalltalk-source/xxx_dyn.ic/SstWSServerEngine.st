"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"xxx_dyn.ic method 0x20000dc4; bytecode file offset 0x6209c"
!SstWSServerEngine methodsFor: 'recovered'!
serviceFaultHandlerKey
    | recoveredValue0 |
    recoveredValue0 := WSServiceFaultServerHandler.
    ^recoveredValue0
! !

"xxx_dyn.ic method 0x20000f08; bytecode file offset 0x6209c"
!SstWSServerEngine methodsFor: 'recovered'!
serviceOutputHandlerKey
    | recoveredValue0 |
    recoveredValue0 := WSServiceResponseServerHandler.
    ^recoveredValue0
! !

"xxx_dyn.ic method 0x20000fa4; bytecode file offset 0x6209c"
!SstWSServerEngine methodsFor: 'recovered'!
serviceInputHandlerKey
    | recoveredValue0 |
    recoveredValue0 := WSServiceRequestServerHandler.
    ^recoveredValue0
! !

"xxx_dyn.ic method 0x200033f4; bytecode file offset 0x644f0"
!SstWSServerEngine methodsFor: 'recovered'!
globalInputHandlerKey
    | recoveredValue0 |
    (self) sstToBeFixed.
    recoveredValue0 := WSGlobalRequestServerHandler.
    ^recoveredValue0
! !

"xxx_dyn.ic method 0x20003414; bytecode file offset 0x644f0"
!SstWSServerEngine methodsFor: 'recovered'!
globalFaultHandlerKey
    | recoveredValue0 |
    (self) sstToBeFixed.
    recoveredValue0 := WSGlobalFaultServerHandler.
    ^recoveredValue0
! !

"xxx_dyn.ic method 0x20003424; bytecode file offset 0x644f0"
!SstWSServerEngine methodsFor: 'recovered'!
globalOutputHandlerKey
    | recoveredValue0 |
    (self) sstToBeFixed.
    recoveredValue0 := WSGlobalResponseServerHandler.
    ^recoveredValue0
! !

"xxx_dyn.ic method 0x20004e1c; bytecode file offset 0x65fa4"
!SstWSServerEngine methodsFor: 'recovered'!
invokeHandlers: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) invokeTransportHandlers: (recoveredValue0).
    ^self
! !

"xxx_dyn.ic method 0x20005ed0; bytecode file offset 0x66f9c"
!SstWSServerEngine methodsFor: 'recovered'!
constructFaultMessageFor: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) faultMessageConstructor.
    recoveredValue2 := recoveredArg1.
    (recoveredValue1) invoke: (recoveredValue2).
    ^self
! !

"xxx_dyn.ic method 0x20005f34; bytecode file offset 0x67000"
!SstWSServerEngine methodsFor: 'recovered'!
invoke: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := super invoke: (recoveredValue0).
    ^recoveredValue1
! !

"xxx_dyn.ic method 0x2000d568; bytecode file offset 0x6e63c"
!SstWSServerEngine methodsFor: 'recovered'!
invokeServiceHandlers: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) serviceInputHandlerFor: (recoveredValue0).
    recoveredValue2 := recoveredArg1.
    (recoveredValue1) invoke: (recoveredValue2).
    recoveredValue3 := recoveredArg1.
    (recoveredValue3) markPastPivot.
    recoveredValue4 := recoveredArg1.
    recoveredValue5 := (self) serviceOutputHandlerFor: (recoveredValue4).
    recoveredValue6 := recoveredArg1.
    (recoveredValue5) invoke: (recoveredValue6).
    ^self
! !

"xxx_dyn.ic method 0x2000de50; bytecode file offset 0x6ef6c"
!SstWSServerEngine methodsFor: 'recovered'!
invokeGlobalHandlers: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) globalInputHandlerFor: (recoveredValue0).
    recoveredValue2 := recoveredArg1.
    (recoveredValue1) invoke: (recoveredValue2).
    recoveredValue3 := recoveredArg1.
    (self) invokeServiceHandlers: (recoveredValue3).
    recoveredValue4 := recoveredArg1.
    recoveredValue5 := (self) globalOutputHandlerFor: (recoveredValue4).
    recoveredValue6 := recoveredArg1.
    (recoveredValue5) invoke: (recoveredValue6).
    ^self
! !

"xxx_dyn.ic method 0x2000de80; bytecode file offset 0x6ef6c"
!SstWSServerEngine methodsFor: 'recovered'!
invokeTransportHandlers: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) transportInputHandlerFor: (recoveredValue0).
    recoveredValue2 := recoveredArg1.
    (recoveredValue1) invoke: (recoveredValue2).
    recoveredValue3 := recoveredArg1.
    (self) invokeGlobalHandlers: (recoveredValue3).
    recoveredValue4 := recoveredArg1.
    recoveredValue5 := (self) transportOutputHandlerFor: (recoveredValue4).
    recoveredValue6 := recoveredArg1.
    (recoveredValue5) invoke: (recoveredValue6).
    ^self
! !

"xxx_dyn.ic method 0x2000e108; bytecode file offset 0x6f1dc"
!SstWSServerEngine methodsFor: 'recovered'!
handleException: recoveredArg1 with: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := recoveredArg2.
    (recoveredValue0) markPastPivot.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    (self) addFaultFor: (recoveredValue1) to: (recoveredValue2).
    recoveredValue3 := recoveredArg2.
    (self) constructFaultMessageFor: (recoveredValue3).
    recoveredValue4 := recoveredArg2.
    (self) invokeFaultHandlers: (recoveredValue4).
    ^self
! !

"xxx_dyn.ic method 0x200195ec; bytecode file offset 0x7a6d0"
!SstWSServerEngine methodsFor: 'recovered'!
addFaultFor: recoveredArg1 to: recoveredArg2
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack3 := WSSignal.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack1) addProperty: (recoveredStack2) named: (recoveredStack3).
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) arguments.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := 2.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack1 ~~ recoveredStack2) ifTrue: [recoveredPC := 25] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := (recoveredStack1) arguments.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack2 := 2.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := (recoveredStack1) isSoapFault.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 38] ifFalse: [recoveredPC := 32].
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := (recoveredStack1) newFaultFor: (recoveredStack2) using: (recoveredStack3).
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            (recoveredStack1) addResult: (recoveredStack2).
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"xxx_dyn.ic method 0x2001aa28; bytecode file offset 0x7bb24"
!SstWSServerEngine methodsFor: 'recovered'!
invokeFaultHandlers: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := [
    | recoveredBlock4Value0 recoveredBlock4Value1 recoveredBlock4Value2 recoveredBlock4Value3 |
    recoveredBlock4Value0 := recoveredArg1.
    (self) invokeGlobalFaultHandlers: (recoveredBlock4Value0).
    recoveredBlock4Value1 := recoveredArg1.
    (self) invokeServiceFaultHandlers: (recoveredBlock4Value1).
    recoveredBlock4Value2 := recoveredArg1.
    recoveredBlock4Value3 := (self) invokeTransportFaultHandlers: (recoveredBlock4Value2).
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

