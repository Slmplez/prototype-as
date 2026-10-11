"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"xxx_dyn.ic method 0x20000408; bytecode file offset 0x615ac"
!SstWSEngine methodsFor: 'recovered'!
invokeGlobalHandlers: recoveredArg1
    ^self
! !

"xxx_dyn.ic method 0x20000440; bytecode file offset 0x615ac"
!SstWSEngine methodsFor: 'recovered'!
setupUsing: recoveredArg1
    ^self
! !

"xxx_dyn.ic method 0x20000450; bytecode file offset 0x615ac"
!SstWSEngine methodsFor: 'recovered'!
invokeTransportHandlers: recoveredArg1
    ^self
! !

"xxx_dyn.ic method 0x20000458; bytecode file offset 0x615ac"
!SstWSEngine methodsFor: 'recovered'!
invokeHandlers: recoveredArg1
    ^self
! !

"xxx_dyn.ic method 0x2000069c; bytecode file offset 0x619a4"
!SstWSEngine methodsFor: 'recovered'!
globalOutputHandlerKey
    | recoveredValue0 |
    recoveredValue0 := (self) subclassResponsibility.
    ^recoveredValue0
! !

"xxx_dyn.ic method 0x200006fc; bytecode file offset 0x619a4"
!SstWSEngine methodsFor: 'recovered'!
serviceInputHandlerKey
    | recoveredValue0 |
    recoveredValue0 := (self) subclassResponsibility.
    ^recoveredValue0
! !

"xxx_dyn.ic method 0x20000780; bytecode file offset 0x619a4"
!SstWSEngine methodsFor: 'recovered'!
globalInputHandlerKey
    | recoveredValue0 |
    recoveredValue0 := (self) subclassResponsibility.
    ^recoveredValue0
! !

"xxx_dyn.ic method 0x200007a4; bytecode file offset 0x619a4"
!SstWSEngine methodsFor: 'recovered'!
globalFaultHandlerKey
    | recoveredValue0 |
    recoveredValue0 := (self) subclassResponsibility.
    ^recoveredValue0
! !

"xxx_dyn.ic method 0x20000864; bytecode file offset 0x619a4"
!SstWSEngine methodsFor: 'recovered'!
serviceOutputHandlerKey
    | recoveredValue0 |
    recoveredValue0 := (self) subclassResponsibility.
    ^recoveredValue0
! !

"xxx_dyn.ic method 0x20000e00; bytecode file offset 0x6209c"
!SstWSEngine methodsFor: 'recovered'!
noOpHandlerKey
    | recoveredValue0 |
    recoveredValue0 := WSNoOpHandler.
    ^recoveredValue0
! !

"xxx_dyn.ic method 0x2000176c; bytecode file offset 0x62c08"
!SstWSEngine methodsFor: 'recovered'!
handlerFactory
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) container.
    recoveredValue1 := (recoveredValue0) handlerFactory.
    ^recoveredValue1
! !

"xxx_dyn.ic method 0x20001a0c; bytecode file offset 0x62c08"
!SstWSEngine methodsFor: 'recovered'!
globalNamespace
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) container.
    recoveredValue1 := (recoveredValue0) globalNamespace.
    ^recoveredValue1
! !

"xxx_dyn.ic method 0x200027d0; bytecode file offset 0x638ac"
!SstWSEngine methodsFor: 'recovered'!
noOperationHandler
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) noOpHandlerKey.
    recoveredValue1 := (self) handlerNamed: (recoveredValue0).
    ^recoveredValue1
! !

"xxx_dyn.ic method 0x20002afc; bytecode file offset 0x63be8"
!SstWSEngine methodsFor: 'recovered'!
globalInputHandlerFor: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) globalInputHandlerKey.
    recoveredValue1 := (self) handlerNamed: (recoveredValue0).
    ^recoveredValue1
! !

"xxx_dyn.ic method 0x20002b0c; bytecode file offset 0x63be8"
!SstWSEngine methodsFor: 'recovered'!
globalFaultHandlerFor: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) globalFaultHandlerKey.
    recoveredValue1 := (self) handlerNamed: (recoveredValue0).
    ^recoveredValue1
! !

"xxx_dyn.ic method 0x20002b1c; bytecode file offset 0x63be8"
!SstWSEngine methodsFor: 'recovered'!
globalOutputHandlerFor: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) globalOutputHandlerKey.
    recoveredValue1 := (self) handlerNamed: (recoveredValue0).
    ^recoveredValue1
! !

"xxx_dyn.ic method 0x20002b4c; bytecode file offset 0x63c2c"
!SstWSEngine methodsFor: 'recovered'!
invokeFaultHandlers: recoveredArg1
    (self) subclassResponsibility.
    ^self
! !

"xxx_dyn.ic method 0x20003c54; bytecode file offset 0x64d78"
!SstWSEngine methodsFor: 'recovered'!
container
    | recoveredValue0 |
    recoveredValue0 := container.
    ^recoveredValue0
! !

"xxx_dyn.ic method 0x20004e10; bytecode file offset 0x65fa4"
!SstWSEngine methodsFor: 'recovered'!
basicInvoke: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) invokeHandlers: (recoveredValue0).
    ^self
! !

"xxx_dyn.ic method 0x20005bdc; bytecode file offset 0x66cac"
!SstWSEngine methodsFor: 'recovered'!
transportOutputHandlerFor: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := WSTransportResponseIdentifier.
    recoveredValue2 := (recoveredValue0) propertyNamed: (recoveredValue1).
    recoveredValue3 := (self) handlerNamed: (recoveredValue2).
    ^recoveredValue3
! !

"xxx_dyn.ic method 0x20005d64; bytecode file offset 0x66e50"
!SstWSEngine methodsFor: 'recovered'!
handlerNamed: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) globalNamespace.
    recoveredValue2 := (self) handlerNamed: (recoveredValue0) inNamespace: (recoveredValue1).
    ^recoveredValue2
! !

"xxx_dyn.ic method 0x20006324; bytecode file offset 0x67530"
!SstWSEngine methodsFor: 'recovered'!
handlerNamed: recoveredArg1 inNamespace: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) handlerFactory.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := (recoveredValue0) handlerNamed: (recoveredValue1) inNamespace: (recoveredValue2).
    ^recoveredValue3
! !

"xxx_dyn.ic method 0x20006e78; bytecode file offset 0x67f64"
!SstWSEngine methodsFor: 'recovered'!
invokeGlobalFaultHandlers: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) globalFaultHandlerFor: (recoveredValue0).
    recoveredValue2 := recoveredArg1.
    (recoveredValue1) invoke: (recoveredValue2).
    ^self
! !

"xxx_dyn.ic method 0x20006e88; bytecode file offset 0x67f64"
!SstWSEngine methodsFor: 'recovered'!
invokeTransportFaultHandlers: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) transportFaultHandlerFor: (recoveredValue0).
    recoveredValue2 := recoveredArg1.
    (recoveredValue1) invoke: (recoveredValue2).
    ^self
! !

"xxx_dyn.ic method 0x20006e98; bytecode file offset 0x67f64"
!SstWSEngine methodsFor: 'recovered'!
invokeServiceFaultHandlers: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) serviceFaultHandlerFor: (recoveredValue0).
    recoveredValue2 := recoveredArg1.
    (recoveredValue1) invoke: (recoveredValue2).
    ^self
! !

"xxx_dyn.ic method 0x20008094; bytecode file offset 0x692b8"
!SstWSEngine methodsFor: 'recovered'!
container: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    container := recoveredValue0.
    ^self
! !

"xxx_dyn.ic method 0x20008cb8; bytecode file offset 0x69de4"
!SstWSEngine methodsFor: 'recovered'!
handlerNamed: recoveredArg1 inNamespace: recoveredArg2 ifAbsent: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := (self) handlerFactory.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := recoveredArg3.
    recoveredValue4 := (recoveredValue0) handlerNamed: (recoveredValue1) inNamespace: (recoveredValue2) ifAbsent: (recoveredValue3).
    ^recoveredValue4
! !

"xxx_dyn.ic method 0x200092d8; bytecode file offset 0x6a3ac"
!SstWSEngine methodsFor: 'recovered'!
transportInputHandlerFor: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    (self) sstToBeFixed.
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := WSTransportRequestIdentifier.
    recoveredValue2 := (recoveredValue0) propertyNamed: (recoveredValue1).
    recoveredValue3 := (self) handlerNamed: (recoveredValue2).
    ^recoveredValue3
! !

"xxx_dyn.ic method 0x20010c70; bytecode file offset 0x71d48"
!SstWSEngine methodsFor: 'recovered'!
handleFatalException: recoveredArg1 with: recoveredArg2
    | recoveredValue0 |
    recoveredValue0 := [
    | recoveredBlock4Value0 recoveredBlock4Value1 recoveredBlock4Value2 recoveredBlock4Value3 recoveredBlock4Value4 |
    recoveredBlock4Value0 := Transcript.
    recoveredBlock4Value1 := recoveredBlock4Value0.
    (recoveredBlock4Value1) cr.
    recoveredBlock4Value2 := recoveredArg1.
    recoveredBlock4Value3 := (recoveredBlock4Value2) printString.
    recoveredBlock4Value4 := (recoveredBlock4Value0) show: (recoveredBlock4Value3).
    recoveredBlock4Value4
].
    (recoveredValue0) fork.
    ^nil
! !

"xxx_dyn.ic method 0x20010d18; bytecode file offset 0x71df0"
!SstWSEngine methodsFor: 'recovered'!
transportFaultHandlerFor: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack2 := WSTransportFaultIdentifier.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) propertyNamed: (recoveredStack2).
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) handlerNamed: (recoveredStack2).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredPC := 24.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := SstWSNoOperationHandler.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := (recoveredStack1) default.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"xxx_dyn.ic method 0x2001476c; bytecode file offset 0x7584c"
!SstWSEngine methodsFor: 'recovered'!
serviceFaultHandlerFor: recoveredArg1
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
            recoveredStack0 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack0) currentMessage.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := (recoveredStack0) bindingOperation.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 28] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack2 := WSOperationName.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := (recoveredStack1) propertyNamed: (recoveredStack2).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := (recoveredStack0) serviceFaultHandlerForOperationNamed: (recoveredStack1) using: (recoveredStack2).
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredPC := 31.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack0 := (recoveredStack0) noOperationHandler.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"xxx_dyn.ic method 0x2001a9cc; bytecode file offset 0x7bab4"
!SstWSEngine methodsFor: 'recovered'!
invoke: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := [
    | recoveredBlock4Value0 recoveredBlock4Value1 |
    recoveredBlock4Value0 := recoveredArg1.
    recoveredBlock4Value1 := (self) basicInvoke: (recoveredBlock4Value0).
    recoveredBlock4Value1
].
    recoveredValue1 := ExError.
    recoveredValue2 := SgmlException.
    recoveredValue3 := (recoveredValue1) | (recoveredValue2).
    recoveredValue4 := [:recoveredBlock20Arg1 | 
    | recoveredBlock20Value0 recoveredBlock20Value1 recoveredBlock20Value2 recoveredBlock20Value3 recoveredBlock20Value4 recoveredBlock20Value5 recoveredBlock20Value6 |
    recoveredBlock20Value0 := recoveredBlock20Arg1.
    recoveredBlock20Value1 := recoveredArg1.
    (self) handleException: (recoveredBlock20Value0) with: (recoveredBlock20Value1).
    recoveredBlock20Value2 := recoveredBlock20Arg1.
    recoveredBlock20Value3 := recoveredArg1.
    recoveredBlock20Value4 := WSResult.
    recoveredBlock20Value5 := (recoveredBlock20Value3) propertyNamed: (recoveredBlock20Value4).
    recoveredBlock20Value6 := (recoveredBlock20Value2) exitWith: (recoveredBlock20Value5).
    recoveredBlock20Value6
].
    (recoveredValue0) when: (recoveredValue3) do: (recoveredValue4).
    ^self
! !

"xxx_dyn.ic method 0x2001de2c; bytecode file offset 0x7ef18"
!SstWSEngine methodsFor: 'recovered'!
serviceInputHandlerFor: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 |
    (self) sstToBeFixed.
    recoveredValue0 := recoveredArg1.
    (recoveredValue0) currentMessage.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue1) bindingOperation.
    recoveredLocal1 := recoveredValue2.
    recoveredValue3 := recoveredLocal1.
    recoveredValue4 := (recoveredValue3) input.
    recoveredValue5 := (recoveredValue4) soapBodyExtension.
    recoveredValue6 := (recoveredValue5) namespace.
    recoveredLocal2 := recoveredValue6.
    recoveredValue7 := recoveredLocal1.
    recoveredValue8 := (recoveredValue7) name.
    recoveredValue9 := recoveredLocal2.
    recoveredValue10 := [
    | recoveredBlock38Value0 recoveredBlock38Value1 recoveredBlock38Value2 |
    recoveredBlock38Value0 := (self) serviceInputHandlerKey.
    recoveredBlock38Value1 := recoveredLocal2.
    recoveredBlock38Value2 := (self) handlerNamed: (recoveredBlock38Value0) inNamespace: (recoveredBlock38Value1).
    recoveredBlock38Value2
].
    recoveredValue11 := (self) handlerNamed: (recoveredValue8) inNamespace: (recoveredValue9) ifAbsent: (recoveredValue10).
    ^recoveredValue11
! !

"xxx_dyn.ic method 0x2001f278; bytecode file offset 0x8035c"
!SstWSEngine methodsFor: 'recovered'!
serviceFaultHandlerForOperationNamed: recoveredArg1 using: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := (recoveredStack1) faultNamed: (recoveredStack2).
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 58] ifFalse: [recoveredPC := 20].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := (recoveredStack1) soapFaultExtension.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := (recoveredStack1) namespace.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack2 := (recoveredStack2) name.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack3 := recoveredLocal2.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack4 := [
    | recoveredBlock36Value0 recoveredBlock36Value1 recoveredBlock36Value2 |
    recoveredBlock36Value0 := (self) serviceFaultHandlerKey.
    recoveredBlock36Value1 := recoveredLocal2.
    recoveredBlock36Value2 := (self) handlerNamed: (recoveredBlock36Value0) inNamespace: (recoveredBlock36Value1).
    recoveredBlock36Value2
].
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack1 := (recoveredStack1) handlerNamed: (recoveredStack2) inNamespace: (recoveredStack3) ifAbsent: (recoveredStack4).
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredPC := 61.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack1 := (recoveredStack1) noOperationHandler.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"xxx_dyn.ic method 0x20020378; bytecode file offset 0x8145c"
!SstWSEngine methodsFor: 'recovered'!
serviceOutputHandlerFor: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) bindingOperation.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) output.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 30] ifFalse: [recoveredPC := 22].
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := (recoveredStack1) soapBodyExtension.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := (recoveredStack1) namespace.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredPC := 34.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := (recoveredStack1) namespace.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := (recoveredStack1) name.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack3 := [
    | recoveredBlock45Value0 recoveredBlock45Value1 recoveredBlock45Value2 |
    recoveredBlock45Value0 := (self) serviceOutputHandlerKey.
    recoveredBlock45Value1 := recoveredLocal3.
    recoveredBlock45Value2 := (self) handlerNamed: (recoveredBlock45Value0) inNamespace: (recoveredBlock45Value1).
    recoveredBlock45Value2
].
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack0 := (recoveredStack0) handlerNamed: (recoveredStack1) inNamespace: (recoveredStack2) ifAbsent: (recoveredStack3).
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

