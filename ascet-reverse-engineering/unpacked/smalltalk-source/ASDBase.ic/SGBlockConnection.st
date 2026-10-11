"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20005df0; bytecode file offset 0x902744"
!SGBlockConnection methodsFor: 'recovered'!
findPathTo: recoveredArg1 path: recoveredArg2
    ^self
! !

"ASDBase.ic method 0x20030964; bytecode file offset 0x934580"
!SGBlockConnection methodsFor: 'recovered'!
senderPort
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) senderInterfaceElement.
    recoveredValue1 := (recoveredValue0) port.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20040bdc; bytecode file offset 0x93d83c"
!SGBlockConnection methodsFor: 'recovered'!
senderInterfaceElement
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := sender.
    recoveredValue1 := (recoveredValue0) interfaceElement.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2004121c; bytecode file offset 0x93dd2c"
!SGBlockConnection methodsFor: 'recovered'!
receiverPort
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := receiver.
    recoveredValue1 := (recoveredValue0) port.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20057ab8; bytecode file offset 0x956284"
!SGBlockConnection methodsFor: 'recovered'!
methodScopeName: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) receiver.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) methodScopeName: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x2005d588; bytecode file offset 0x959e64"
!SGBlockConnection methodsFor: 'recovered'!
buildMdl
    | recoveredValue0 |
    recoveredValue0 := sender.
    (recoveredValue0) buildMdl.
    ^self
! !

"ASDBase.ic method 0x20067b6c; bytecode file offset 0x9646f8"
!SGBlockConnection methodsFor: 'recovered'!
sender
    | recoveredValue0 |
    recoveredValue0 := sender.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20068bac; bytecode file offset 0x965b90"
!SGBlockConnection methodsFor: 'recovered'!
receiver
    | recoveredValue0 |
    recoveredValue0 := receiver.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200929b0; bytecode file offset 0x98f298"
!SGBlockConnection methodsFor: 'recovered'!
buildMdlAccessOp: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := sender.
    recoveredValue1 := recoveredArg1.
    (recoveredValue0) buildMdlAccessOp: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x201474f0; bytecode file offset 0xa43da8"
!SGBlockConnection methodsFor: 'recovered'!
initialize: recoveredArg1 with: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg2.
    (recoveredValue0) connection: (self).
    recoveredValue1 := recoveredArg2.
    receiver := recoveredValue1.
    recoveredValue2 := recoveredArg1.
    (recoveredValue2) connection: (self).
    recoveredValue3 := recoveredArg1.
    sender := recoveredValue3.
    ^self
! !

"ASDBase.ic method 0x201e6a50; bytecode file offset 0xae3320"
!SGBlockConnection methodsFor: 'recovered'!
printOn: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := recoveredArg1.
    (recoveredValue0) nextPutAll: (' Block connection from ').
    recoveredValue1 := (self) sender.
    recoveredValue2 := recoveredArg1.
    (recoveredValue1) printOn: (recoveredValue2).
    recoveredValue3 := recoveredArg1.
    (recoveredValue3) nextPutAll: (' to ').
    recoveredValue4 := (self) receiver.
    recoveredValue5 := recoveredArg1.
    (recoveredValue4) printOn: (recoveredValue5).
    recoveredValue6 := recoveredArg1.
    (recoveredValue6) cr.
    ^self
! !

"ASDBase.ic method 0x2023f654; bytecode file offset 0xb3bf20"
!SGBlockConnection methodsFor: 'recovered'!
bdlPrereqArgumentIfFail: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := sender.
    recoveredValue1 := [
    | recoveredBlock6Value0 recoveredBlock6Value1 recoveredBlock6Value2 recoveredBlock6Value3 |
    recoveredBlock6Value0 := recoveredArg1.
    recoveredBlock6Value1 := Array.
    recoveredBlock6Value2 := (recoveredBlock6Value1) with: (false) with: (nil) with: (nil) with: (nil).
    recoveredBlock6Value3 := (recoveredBlock6Value0) valueWithArguments: (recoveredBlock6Value2).
    ^recoveredBlock6Value3
].
    (recoveredValue0) ifNil: (recoveredValue1).
    recoveredValue2 := (self) senderPort.
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := (recoveredValue2) bdlPrereqArgumentIfFail: (recoveredValue3).
    ^recoveredValue4
! !

"ASDBase.ic method 0x202630f8; bytecode file offset 0xb5f9c4"
!SGBlockConnection methodsFor: 'recovered'!
bdlPrereqArgument: recoveredArg1 ifFail: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := sender.
    recoveredValue1 := [
    | recoveredBlock6Value0 recoveredBlock6Value1 recoveredBlock6Value2 recoveredBlock6Value3 |
    recoveredBlock6Value0 := recoveredArg2.
    recoveredBlock6Value1 := Array.
    recoveredBlock6Value2 := (recoveredBlock6Value1) with: (false) with: (nil) with: (nil) with: (nil).
    recoveredBlock6Value3 := (recoveredBlock6Value0) valueWithArguments: (recoveredBlock6Value2).
    ^recoveredBlock6Value3
].
    (recoveredValue0) ifNil: (recoveredValue1).
    recoveredValue2 := (self) senderPort.
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := recoveredArg2.
    recoveredValue5 := (recoveredValue2) bdlPrereqArgument: (recoveredValue3) ifFail: (recoveredValue4).
    ^recoveredValue5
! !

