"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"xxx_dyn.ic method 0x200010cc; bytecode file offset 0x626a4"
!SstSocketCommunications class methodsFor: 'recovered'!
instanceMethodCategories
    ^#('SST-API Developer' 'SST-API User' 'SST-Internal')
! !

"xxx_dyn.ic method 0x20001228; bytecode file offset 0x626a4"
!SstSocketCommunications class methodsFor: 'recovered'!
classMethodCategories
    ^#('SST-API Developer' 'SST-API User' 'SST-Internal')
! !

"xxx_dyn.ic method 0x20002a54; bytecode file offset 0x63b1c"
!SstSocketCommunications class methodsFor: 'recovered'!
failedRemove
    (self) loaded.
    ^self
! !

"xxx_dyn.ic method 0x20012b04; bytecode file offset 0x73be4"
!SstSocketCommunications class methodsFor: 'recovered'!
packagingRulesFor: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredValue0.
    (recoveredValue1) excludeMethod: ('createSocket') inClassNamed: ('SstSocketTransport').
    recoveredValue2 := recoveredValue0.
    (recoveredValue2) excludeMethod: ('createSocketSieve') inClassNamed: ('SstSocketTransport').
    (recoveredValue0) ignoreNoImplementorErrorsForMessageSend: ('stream') inMethod: ('makeConnectionAvailable:') inClassNamed: ('SstSocketTransport').
    ^self
! !

"xxx_dyn.ic method 0x2001890c; bytecode file offset 0x79c2c"
!SstSocketCommunications class methodsFor: 'recovered'!
loaded
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := defined.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := [:block2800b370Arg1 | 
    | block2800b370Stack0 block2800b370Stack1 block2800b370Stack2 block2800b370Stack3 block2800b370Stack4 block2800b370PC block2800b370Step block2800b370Done block2800b370Result |
    block2800b370Stack0 := self.
    block2800b370PC := 4.
    block2800b370Done := false.
    [block2800b370Done not] whileTrue: [
        block2800b370Step := block2800b370PC.
        block2800b370Step = 4 ifTrue: [
            block2800b370Stack1 := block2800b370Arg1.
            block2800b370PC := 5.
        ].
        block2800b370Step = 5 ifTrue: [
            block2800b370Stack2 := 'setupAfterLoad'.
            block2800b370PC := 7.
        ].
        block2800b370Step = 7 ifTrue: [
            block2800b370Stack1 := (block2800b370Stack1) respondsTo: (block2800b370Stack2).
            block2800b370PC := 8.
        ].
        block2800b370Step = 8 ifTrue: [
            (block2800b370Stack1) ifTrue: [block2800b370PC := 12] ifFalse: [block2800b370PC := 15].
        ].
        block2800b370Step = 12 ifTrue: [
            block2800b370Stack1 := block2800b370Arg1.
            block2800b370PC := 13.
        ].
        block2800b370Step = 13 ifTrue: [
            (block2800b370Stack1) setupAfterLoad.
            block2800b370PC := 15.
        ].
        block2800b370Step = 15 ifTrue: [
            block2800b370Stack1 := nil.
            block2800b370PC := 16.
        ].
        block2800b370Step = 16 ifTrue: [
            block2800b370Stack2 := block2800b370Arg1.
            block2800b370PC := 17.
        ].
        block2800b370Step = 17 ifTrue: [
            block2800b370Stack2 := (block2800b370Stack2) class.
            block2800b370PC := 18.
        ].
        block2800b370Step = 18 ifTrue: [
            block2800b370Stack3 := 'setupAfterLoadNonInherited'.
            block2800b370PC := 20.
        ].
        block2800b370Step = 20 ifTrue: [
            block2800b370Stack2 := (block2800b370Stack2) includesSelector: (block2800b370Stack3).
            block2800b370PC := 22.
        ].
        block2800b370Step = 22 ifTrue: [
            (block2800b370Stack2) ifTrue: [block2800b370PC := 26] ifFalse: [block2800b370PC := 30].
        ].
        block2800b370Step = 26 ifTrue: [
            block2800b370PC := 27.
        ].
        block2800b370Step = 27 ifTrue: [
            block2800b370Stack1 := block2800b370Arg1.
            block2800b370PC := 28.
        ].
        block2800b370Step = 28 ifTrue: [
            block2800b370Stack1 := (block2800b370Stack1) setupAfterLoadNonInherited.
            block2800b370PC := 30.
        ].
        block2800b370Step = 30 ifTrue: [
            block2800b370Result := block2800b370Stack1.
            block2800b370Done := true.
        ].
    ].
    block2800b370Result
].
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"xxx_dyn.ic method 0x20018abc; bytecode file offset 0x79c2c"
!SstSocketCommunications class methodsFor: 'recovered'!
removing
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := defined.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := [:block2800b520Arg1 | 
    | block2800b520Stack0 block2800b520Stack1 block2800b520Stack2 block2800b520Stack3 block2800b520Stack4 block2800b520PC block2800b520Step block2800b520Done block2800b520Result |
    block2800b520Stack0 := self.
    block2800b520PC := 4.
    block2800b520Done := false.
    [block2800b520Done not] whileTrue: [
        block2800b520Step := block2800b520PC.
        block2800b520Step = 4 ifTrue: [
            block2800b520Stack1 := block2800b520Arg1.
            block2800b520PC := 5.
        ].
        block2800b520Step = 5 ifTrue: [
            block2800b520Stack2 := 'cleanUpBeforeRemove'.
            block2800b520PC := 7.
        ].
        block2800b520Step = 7 ifTrue: [
            block2800b520Stack1 := (block2800b520Stack1) respondsTo: (block2800b520Stack2).
            block2800b520PC := 8.
        ].
        block2800b520Step = 8 ifTrue: [
            (block2800b520Stack1) ifTrue: [block2800b520PC := 12] ifFalse: [block2800b520PC := 15].
        ].
        block2800b520Step = 12 ifTrue: [
            block2800b520Stack1 := block2800b520Arg1.
            block2800b520PC := 13.
        ].
        block2800b520Step = 13 ifTrue: [
            (block2800b520Stack1) cleanUpBeforeRemove.
            block2800b520PC := 15.
        ].
        block2800b520Step = 15 ifTrue: [
            block2800b520Stack1 := nil.
            block2800b520PC := 16.
        ].
        block2800b520Step = 16 ifTrue: [
            block2800b520Stack2 := block2800b520Arg1.
            block2800b520PC := 17.
        ].
        block2800b520Step = 17 ifTrue: [
            block2800b520Stack2 := (block2800b520Stack2) class.
            block2800b520PC := 18.
        ].
        block2800b520Step = 18 ifTrue: [
            block2800b520Stack3 := 'cleanUpBeforeRemoveNonInherited'.
            block2800b520PC := 20.
        ].
        block2800b520Step = 20 ifTrue: [
            block2800b520Stack2 := (block2800b520Stack2) includesSelector: (block2800b520Stack3).
            block2800b520PC := 22.
        ].
        block2800b520Step = 22 ifTrue: [
            (block2800b520Stack2) ifTrue: [block2800b520PC := 26] ifFalse: [block2800b520PC := 30].
        ].
        block2800b520Step = 26 ifTrue: [
            block2800b520PC := 27.
        ].
        block2800b520Step = 27 ifTrue: [
            block2800b520Stack1 := block2800b520Arg1.
            block2800b520PC := 28.
        ].
        block2800b520Step = 28 ifTrue: [
            block2800b520Stack1 := (block2800b520Stack1) cleanUpBeforeRemoveNonInherited.
            block2800b520PC := 30.
        ].
        block2800b520Step = 30 ifTrue: [
            block2800b520Result := block2800b520Stack1.
            block2800b520Done := true.
        ].
    ].
    block2800b520Result
].
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

