"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20040fbc; bytecode file offset 0x93d880"
!SGResultConnector methodsFor: 'recovered'!
isConnected
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := connections.
    recoveredValue1 := (recoveredValue0) notNil.
    ^recoveredValue1
! !

"ASDBase.ic method 0x200597b8; bytecode file offset 0x956284"
!SGResultConnector methodsFor: 'recovered'!
bdlPrereqArgumentIfFail: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) port.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) bdlPrereqArgumentIfFail: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x200638c4; bytecode file offset 0x961970"
!SGResultConnector methodsFor: 'recovered'!
buildMdl
    | recoveredValue0 |
    recoveredValue0 := (self) port.
    (recoveredValue0) buildMdl.
    ^self
! !

"ASDBase.ic method 0x20067eec; bytecode file offset 0x965b90"
!SGResultConnector methodsFor: 'recovered'!
connections
    | recoveredValue0 |
    recoveredValue0 := connections.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20078604; bytecode file offset 0x9757c8"
!SGResultConnector methodsFor: 'recovered'!
isBdlResultConnector
    ^true
! !

"ASDBase.ic method 0x20098d34; bytecode file offset 0x995850"
!SGResultConnector methodsFor: 'recovered'!
buildMdlAccessOp: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) port.
    recoveredValue1 := recoveredArg1.
    (recoveredValue0) buildMdlAccessOp: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x2009a408; bytecode file offset 0x997194"
!SGResultConnector methodsFor: 'recovered'!
bdlPrereqArgument: recoveredArg1 ifFail: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) port.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := (recoveredValue0) bdlPrereqArgument: (recoveredValue1) ifFail: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x201643cc; bytecode file offset 0xa60c8c"
!SGResultConnector methodsFor: 'recovered'!
connection: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := connections.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 15] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := OrderedCollection.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            connections := recoveredStack1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := connections.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            (recoveredStack1) add: (recoveredStack2).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201e8e1c; bytecode file offset 0xae56e4"
!SGResultConnector methodsFor: 'recovered'!
methodScopeName: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) connections.
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
            recoveredStack0 := (recoveredStack0) connections.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := [:recoveredBlock10Arg1 | 
    | recoveredBlock10Value0 recoveredBlock10Value1 recoveredBlock10Value2 recoveredBlock10Value3 |
    recoveredBlock10Value0 := recoveredBlock10Arg1.
    recoveredBlock10Value1 := recoveredArg1.
    recoveredBlock10Value2 := (recoveredBlock10Value1) copy.
    recoveredBlock10Value3 := (recoveredBlock10Value0) methodScopeName: (recoveredBlock10Value2).
    recoveredBlock10Value3
].
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := (recoveredStack0) collect: (recoveredStack1).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := (recoveredStack0) first.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            ^recoveredStack0
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

