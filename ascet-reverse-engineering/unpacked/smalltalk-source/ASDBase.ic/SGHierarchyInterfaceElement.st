"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x200313e4; bytecode file offset 0x934580"
!SGHierarchyInterfaceElement methodsFor: 'recovered'!
isInDataflow
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) internalConnector.
    recoveredValue1 := (recoveredValue0) isBdlResultConnector.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20035894; bytecode file offset 0x934580"
!SGHierarchyInterfaceElement methodsFor: 'recovered'!
isOutDataflow
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) externalConnector.
    recoveredValue1 := (recoveredValue0) isBdlResultConnector.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20051358; bytecode file offset 0x94f0e0"
!SGHierarchyInterfaceElement methodsFor: 'recovered'!
senderPort
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) sender.
    recoveredValue1 := (recoveredValue0) interfaceElement.
    recoveredValue2 := (recoveredValue1) port.
    ^recoveredValue2
! !

"ASDBase.ic method 0x20051e34; bytecode file offset 0x94f0e0"
!SGHierarchyInterfaceElement methodsFor: 'recovered'!
sender
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) receiverConnector.
    recoveredValue1 := (recoveredValue0) connection.
    recoveredValue2 := (recoveredValue1) sender.
    ^recoveredValue2
! !

"ASDBase.ic method 0x2006a0b8; bytecode file offset 0x966bdc"
!SGHierarchyInterfaceElement methodsFor: 'recovered'!
internalConnector
    | recoveredValue0 |
    recoveredValue0 := internalConnector.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2010e268; bytecode file offset 0xa0ab20"
!SGHierarchyInterfaceElement methodsFor: 'recovered'!
internalConnector: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack1) interfaceElement: (recoveredStack2).
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            internalConnector := recoveredStack1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201152b0; bytecode file offset 0xa11b74"
!SGHierarchyInterfaceElement methodsFor: 'recovered'!
addHierarchyConnector
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := SGHierarchyConnector.
    recoveredValue1 := (recoveredValue0) create.
    (self) externalConnector: (recoveredValue1).
    recoveredValue2 := SGHierarchyConnector.
    recoveredValue3 := (recoveredValue2) create.
    (self) internalConnector: (recoveredValue3).
    ^self
! !

"ASDBase.ic method 0x20115328; bytecode file offset 0xa11c0c"
!SGHierarchyInterfaceElement methodsFor: 'recovered'!
addArgumentConnector
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := SGArgumentConnector.
    recoveredValue1 := (recoveredValue0) create.
    (self) externalConnector: (recoveredValue1).
    recoveredValue2 := SGResultConnector.
    recoveredValue3 := (recoveredValue2) create.
    (self) internalConnector: (recoveredValue3).
    ^self
! !

"ASDBase.ic method 0x20115344; bytecode file offset 0xa11c0c"
!SGHierarchyInterfaceElement methodsFor: 'recovered'!
addResultConnector
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := SGResultConnector.
    recoveredValue1 := (recoveredValue0) create.
    (self) externalConnector: (recoveredValue1).
    recoveredValue2 := SGArgumentConnector.
    recoveredValue3 := (recoveredValue2) create.
    (self) internalConnector: (recoveredValue3).
    ^self
! !

"ASDBase.ic method 0x2015ff20; bytecode file offset 0xa5c7fc"
!SGHierarchyInterfaceElement methodsFor: 'recovered'!
receiverConnector
    | recoveredStack0 recoveredStack1 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) isInDataflow.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 8] ifFalse: [recoveredPC := 11].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) externalConnector.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) isOutDataflow.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 19].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := (recoveredStack0) internalConnector.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2015ff38; bytecode file offset 0xa5c7fc"
!SGHierarchyInterfaceElement methodsFor: 'recovered'!
senderConnector
    | recoveredStack0 recoveredStack1 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) isInDataflow.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 8] ifFalse: [recoveredPC := 11].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) internalConnector.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) isOutDataflow.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 19].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := (recoveredStack0) externalConnector.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201a26a4; bytecode file offset 0xa9ef64"
!SGHierarchyInterfaceElement methodsFor: 'recovered'!
isConnected
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) internalConnector.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 23] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := internalConnector.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) isConnected.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 22].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := super isConnected.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

