"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"xxx_dyn.ic method 0x200014f8; bytecode file offset 0x626a4"
!SstTcpCommunications class methodsFor: 'recovered'!
instanceMethodCategories
    ^#('SST-API Developer' 'SST-API User' 'SST-Internal')
! !

"xxx_dyn.ic method 0x200015a0; bytecode file offset 0x626a4"
!SstTcpCommunications class methodsFor: 'recovered'!
classMethodCategories
    ^#('SST-API Developer' 'SST-API User' 'SST-Internal')
! !

"xxx_dyn.ic method 0x200028f8; bytecode file offset 0x63b1c"
!SstTcpCommunications class methodsFor: 'recovered'!
failedRemove
    (self) loaded.
    ^self
! !

"xxx_dyn.ic method 0x20005e00; bytecode file offset 0x66f2c"
!SstTcpCommunications class methodsFor: 'recovered'!
packagingRulesFor: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) symbol.
    (recoveredValue0) doNotReduceSubApplicationNamed: (recoveredValue1).
    ^self
! !

"xxx_dyn.ic method 0x2000cf58; bytecode file offset 0x6e068"
!SstTcpCommunications class methodsFor: 'recovered'!
cleanUpBeforeRemove
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := SstTransport.
    recoveredValue1 := (self) serverTransportConfiguration.
    recoveredValue2 := (recoveredValue1) transportIdentifier.
    (recoveredValue0) unregister: (recoveredValue2).
    recoveredValue3 := SstTransport.
    recoveredValue4 := (self) lightTransportConfiguration.
    recoveredValue5 := (recoveredValue4) transportIdentifier.
    (recoveredValue3) unregister: (recoveredValue5).
    ^self
! !

"xxx_dyn.ic method 0x200141fc; bytecode file offset 0x75324"
!SstTcpCommunications class methodsFor: 'recovered'!
setupAfterLoad
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 |
    recoveredValue0 := (self) serverTransportConfiguration.
    recoveredLocal3 := recoveredValue0.
    recoveredValue1 := (self) lightTransportConfiguration.
    recoveredLocal2 := recoveredValue1.
    recoveredValue2 := Set.
    recoveredValue3 := recoveredLocal3.
    recoveredValue4 := (recoveredValue3) transportIdentifier.
    recoveredValue5 := recoveredLocal2.
    recoveredValue6 := (recoveredValue5) transportIdentifier.
    recoveredValue7 := (recoveredValue2) with: (recoveredValue4) with: (recoveredValue6).
    recoveredLocal1 := recoveredValue7.
    recoveredValue8 := SstTransport.
    recoveredValue9 := recoveredValue8.
    recoveredValue10 := recoveredLocal3.
    recoveredValue11 := recoveredLocal1.
    (recoveredValue9) register: (recoveredValue10) mutuallyReachableBy: (recoveredValue11).
    recoveredValue12 := recoveredLocal2.
    recoveredValue13 := recoveredLocal1.
    (recoveredValue8) register: (recoveredValue12) mutuallyReachableBy: (recoveredValue13).
    ^self
! !

"xxx_dyn.ic method 0x2001736c; bytecode file offset 0x78460"
!SstTcpCommunications class methodsFor: 'recovered'!
serverTransportConfiguration
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 |
    recoveredValue0 := SstTcpConfiguration.
    recoveredValue1 := (recoveredValue0) new.
    recoveredValue2 := recoveredValue1.
    recoveredValue3 := SciSocketAddress.
    (recoveredValue2) addressClass: (recoveredValue3).
    recoveredValue4 := recoveredValue1.
    (recoveredValue4) transportIdentifier: ('tcp').
    recoveredValue5 := recoveredValue1.
    recoveredValue6 := SstTcpTransport.
    (recoveredValue5) transportClass: (recoveredValue6).
    recoveredValue7 := recoveredValue1.
    (recoveredValue7) nonBlocking: (true).
    recoveredValue8 := recoveredValue1.
    (recoveredValue8) noDelay: (true).
    recoveredValue9 := recoveredValue1.
    (recoveredValue9) allowIncomingConnections: (true).
    recoveredValue10 := recoveredValue1.
    (recoveredValue10) reuseAddress: (true).
    ^recoveredValue1
! !

"xxx_dyn.ic method 0x20018858; bytecode file offset 0x79c2c"
!SstTcpCommunications class methodsFor: 'recovered'!
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
            recoveredStack2 := [:block2800b2bcArg1 | 
    | block2800b2bcStack0 block2800b2bcStack1 block2800b2bcStack2 block2800b2bcStack3 block2800b2bcStack4 block2800b2bcPC block2800b2bcStep block2800b2bcDone block2800b2bcResult |
    block2800b2bcStack0 := self.
    block2800b2bcPC := 4.
    block2800b2bcDone := false.
    [block2800b2bcDone not] whileTrue: [
        block2800b2bcStep := block2800b2bcPC.
        block2800b2bcStep = 4 ifTrue: [
            block2800b2bcStack1 := block2800b2bcArg1.
            block2800b2bcPC := 5.
        ].
        block2800b2bcStep = 5 ifTrue: [
            block2800b2bcStack2 := 'setupAfterLoad'.
            block2800b2bcPC := 7.
        ].
        block2800b2bcStep = 7 ifTrue: [
            block2800b2bcStack1 := (block2800b2bcStack1) respondsTo: (block2800b2bcStack2).
            block2800b2bcPC := 8.
        ].
        block2800b2bcStep = 8 ifTrue: [
            (block2800b2bcStack1) ifTrue: [block2800b2bcPC := 12] ifFalse: [block2800b2bcPC := 15].
        ].
        block2800b2bcStep = 12 ifTrue: [
            block2800b2bcStack1 := block2800b2bcArg1.
            block2800b2bcPC := 13.
        ].
        block2800b2bcStep = 13 ifTrue: [
            (block2800b2bcStack1) setupAfterLoad.
            block2800b2bcPC := 15.
        ].
        block2800b2bcStep = 15 ifTrue: [
            block2800b2bcStack1 := nil.
            block2800b2bcPC := 16.
        ].
        block2800b2bcStep = 16 ifTrue: [
            block2800b2bcStack2 := block2800b2bcArg1.
            block2800b2bcPC := 17.
        ].
        block2800b2bcStep = 17 ifTrue: [
            block2800b2bcStack2 := (block2800b2bcStack2) class.
            block2800b2bcPC := 18.
        ].
        block2800b2bcStep = 18 ifTrue: [
            block2800b2bcStack3 := 'setupAfterLoadNonInherited'.
            block2800b2bcPC := 20.
        ].
        block2800b2bcStep = 20 ifTrue: [
            block2800b2bcStack2 := (block2800b2bcStack2) includesSelector: (block2800b2bcStack3).
            block2800b2bcPC := 22.
        ].
        block2800b2bcStep = 22 ifTrue: [
            (block2800b2bcStack2) ifTrue: [block2800b2bcPC := 26] ifFalse: [block2800b2bcPC := 30].
        ].
        block2800b2bcStep = 26 ifTrue: [
            block2800b2bcPC := 27.
        ].
        block2800b2bcStep = 27 ifTrue: [
            block2800b2bcStack1 := block2800b2bcArg1.
            block2800b2bcPC := 28.
        ].
        block2800b2bcStep = 28 ifTrue: [
            block2800b2bcStack1 := (block2800b2bcStack1) setupAfterLoadNonInherited.
            block2800b2bcPC := 30.
        ].
        block2800b2bcStep = 30 ifTrue: [
            block2800b2bcResult := block2800b2bcStack1.
            block2800b2bcDone := true.
        ].
    ].
    block2800b2bcResult
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

"xxx_dyn.ic method 0x20018a2c; bytecode file offset 0x79c2c"
!SstTcpCommunications class methodsFor: 'recovered'!
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
            recoveredStack2 := [:block2800b490Arg1 | 
    | block2800b490Stack0 block2800b490Stack1 block2800b490Stack2 block2800b490Stack3 block2800b490Stack4 block2800b490PC block2800b490Step block2800b490Done block2800b490Result |
    block2800b490Stack0 := self.
    block2800b490PC := 4.
    block2800b490Done := false.
    [block2800b490Done not] whileTrue: [
        block2800b490Step := block2800b490PC.
        block2800b490Step = 4 ifTrue: [
            block2800b490Stack1 := block2800b490Arg1.
            block2800b490PC := 5.
        ].
        block2800b490Step = 5 ifTrue: [
            block2800b490Stack2 := 'cleanUpBeforeRemove'.
            block2800b490PC := 7.
        ].
        block2800b490Step = 7 ifTrue: [
            block2800b490Stack1 := (block2800b490Stack1) respondsTo: (block2800b490Stack2).
            block2800b490PC := 8.
        ].
        block2800b490Step = 8 ifTrue: [
            (block2800b490Stack1) ifTrue: [block2800b490PC := 12] ifFalse: [block2800b490PC := 15].
        ].
        block2800b490Step = 12 ifTrue: [
            block2800b490Stack1 := block2800b490Arg1.
            block2800b490PC := 13.
        ].
        block2800b490Step = 13 ifTrue: [
            (block2800b490Stack1) cleanUpBeforeRemove.
            block2800b490PC := 15.
        ].
        block2800b490Step = 15 ifTrue: [
            block2800b490Stack1 := nil.
            block2800b490PC := 16.
        ].
        block2800b490Step = 16 ifTrue: [
            block2800b490Stack2 := block2800b490Arg1.
            block2800b490PC := 17.
        ].
        block2800b490Step = 17 ifTrue: [
            block2800b490Stack2 := (block2800b490Stack2) class.
            block2800b490PC := 18.
        ].
        block2800b490Step = 18 ifTrue: [
            block2800b490Stack3 := 'cleanUpBeforeRemoveNonInherited'.
            block2800b490PC := 20.
        ].
        block2800b490Step = 20 ifTrue: [
            block2800b490Stack2 := (block2800b490Stack2) includesSelector: (block2800b490Stack3).
            block2800b490PC := 22.
        ].
        block2800b490Step = 22 ifTrue: [
            (block2800b490Stack2) ifTrue: [block2800b490PC := 26] ifFalse: [block2800b490PC := 30].
        ].
        block2800b490Step = 26 ifTrue: [
            block2800b490PC := 27.
        ].
        block2800b490Step = 27 ifTrue: [
            block2800b490Stack1 := block2800b490Arg1.
            block2800b490PC := 28.
        ].
        block2800b490Step = 28 ifTrue: [
            block2800b490Stack1 := (block2800b490Stack1) cleanUpBeforeRemoveNonInherited.
            block2800b490PC := 30.
        ].
        block2800b490Step = 30 ifTrue: [
            block2800b490Result := block2800b490Stack1.
            block2800b490Done := true.
        ].
    ].
    block2800b490Result
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

"xxx_dyn.ic method 0x20019774; bytecode file offset 0x7a86c"
!SstTcpCommunications class methodsFor: 'recovered'!
lightTransportConfiguration
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 |
    recoveredValue0 := SstTcpConfiguration.
    recoveredValue1 := (recoveredValue0) new.
    recoveredValue2 := recoveredValue1.
    recoveredValue3 := SciSocketAddress.
    (recoveredValue2) addressClass: (recoveredValue3).
    recoveredValue4 := recoveredValue1.
    (recoveredValue4) transportIdentifier: ('tcpl').
    recoveredValue5 := recoveredValue1.
    recoveredValue6 := SstTcpLightTransport.
    (recoveredValue5) transportClass: (recoveredValue6).
    recoveredValue7 := recoveredValue1.
    (recoveredValue7) defaultPort: (0).
    recoveredValue8 := recoveredValue1.
    (recoveredValue8) nonBlocking: (false).
    recoveredValue9 := recoveredValue1.
    (recoveredValue9) noDelay: (true).
    recoveredValue10 := recoveredValue1.
    (recoveredValue10) allowIncomingConnections: (false).
    recoveredValue11 := recoveredValue1.
    (recoveredValue11) reuseAddress: (true).
    ^recoveredValue1
! !

