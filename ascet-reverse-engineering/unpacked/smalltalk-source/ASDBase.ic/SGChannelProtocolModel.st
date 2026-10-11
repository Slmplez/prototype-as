"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20002eb8; bytecode file offset 0x8ffcfc"
!SGChannelProtocolModel methodsFor: 'recovered'!
analyzeSyntax
    ^self
! !

"ASDBase.ic method 0x200261f4; bytecode file offset 0x923928"
!SGChannelProtocolModel methodsFor: 'recovered'!
labelForCompare
    ^'Protocol for: '
! !

"ASDBase.ic method 0x20037e6c; bytecode file offset 0x934768"
!SGChannelProtocolModel methodsFor: 'recovered'!
usedPacketLayouts
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) protocol.
    recoveredValue1 := (recoveredValue0) usedPacketLayouts.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20068a2c; bytecode file offset 0x965b90"
!SGChannelProtocolModel methodsFor: 'recovered'!
protocol
    | recoveredValue0 |
    recoveredValue0 := protocol.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200d3cc8; bytecode file offset 0x9d058c"
!SGChannelProtocolModel methodsFor: 'recovered'!
analyze
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) errorHandler.
    recoveredValue1 := (self) source.
    (recoveredValue0) obsoleteFeature: ('Code Generation for Protocol classes') source: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x200d6554; bytecode file offset 0x9d3134"
!SGChannelProtocolModel methodsFor: 'recovered'!
initialize
    super initialize.
    (self) initProtocol.
    ^self
! !

"ASDBase.ic method 0x200da114; bytecode file offset 0x9d69d8"
!SGChannelProtocolModel methodsFor: 'recovered'!
createLogicMethods: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) errorHandler.
    recoveredValue1 := (self) source.
    (recoveredValue0) obsoleteFeature: ('Code Generation for Protocol classes') source: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x200ef7f8; bytecode file offset 0x9ec0b8"
!SGChannelProtocolModel methodsFor: 'recovered'!
initProtocol
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := SGChannelProtocol.
    recoveredValue1 := (recoveredValue0) create: ('Protocol') channelNumber: (1).
    protocol := recoveredValue1.
    ^self
! !

"ASDBase.ic method 0x20149b2c; bytecode file offset 0xa463f4"
!SGChannelProtocolModel methodsFor: 'recovered'!
transmissions
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) protocol.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) transmissions.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) asArray.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := Array.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := (recoveredStack0) new.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2041fde0; bytecode file offset 0xd1c770"
!SGChannelProtocolModel methodsFor: 'recovered'!
existingItemBelongsTo
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) dbObject.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) readReferences.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack0 := (recoveredStack0) getIsReferencedBy.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) isEmpty.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := [:block280fc438Arg1 | 
    | block280fc438Local1 block280fc438Stack0 block280fc438Stack1 block280fc438Stack2 block280fc438Stack3 block280fc438Stack4 block280fc438PC block280fc438Step block280fc438Done block280fc438Result |
    block280fc438Stack0 := self.
    block280fc438PC := 4.
    block280fc438Done := false.
    [block280fc438Done not] whileTrue: [
        block280fc438Step := block280fc438PC.
        block280fc438Step = 4 ifTrue: [
            block280fc438Stack1 := false.
            block280fc438PC := 5.
        ].
        block280fc438Step = 5 ifTrue: [
            block280fc438Stack2 := block280fc438Arg1.
            block280fc438PC := 6.
        ].
        block280fc438Step = 6 ifTrue: [
            block280fc438Stack3 := [:block280fc45cArg1 | 
    nil
].
            block280fc438PC := 8.
        ].
        block280fc438Step = 8 ifTrue: [
            block280fc438PC := 14.
        ].
        block280fc438Step = 14 ifTrue: [
            block280fc438Stack2 := (block280fc438Stack2) readKeyIfUndefined: (block280fc438Stack3).
            block280fc438PC := 16.
        ].
        block280fc438Step = 16 ifTrue: [
            block280fc438Stack3 := block280fc438Stack2.
            block280fc438PC := 17.
        ].
        block280fc438Step = 17 ifTrue: [
            block280fc438Local1 := block280fc438Stack3.
            block280fc438PC := 18.
        ].
        block280fc438Step = 18 ifTrue: [
            (block280fc438Stack2 == nil) ifTrue: [block280fc438PC := 43] ifFalse: [block280fc438PC := 22].
        ].
        block280fc438Step = 22 ifTrue: [
            block280fc438PC := 23.
        ].
        block280fc438Step = 23 ifTrue: [
            block280fc438Stack1 := SGItemWithSpec.
            block280fc438PC := 25.
        ].
        block280fc438Step = 25 ifTrue: [
            block280fc438Stack1 := (block280fc438Stack1) allSubclasses.
            block280fc438PC := 27.
        ].
        block280fc438Step = 27 ifTrue: [
            block280fc438Stack2 := [:block280fc480Arg1 | 
    | block280fc480Value0 block280fc480Value1 |
    block280fc480Value0 := block280fc480Arg1.
    block280fc480Value1 := (block280fc480Value0) printString.
    block280fc480Value1
].
            block280fc438PC := 29.
        ].
        block280fc438Step = 29 ifTrue: [
            block280fc438PC := 36.
        ].
        block280fc438Step = 36 ifTrue: [
            block280fc438Stack1 := (block280fc438Stack1) collect: (block280fc438Stack2).
            block280fc438PC := 38.
        ].
        block280fc438Step = 38 ifTrue: [
            block280fc438Stack2 := block280fc438Local1.
            block280fc438PC := 39.
        ].
        block280fc438Step = 39 ifTrue: [
            block280fc438Stack2 := (block280fc438Stack2) className.
            block280fc438PC := 41.
        ].
        block280fc438Step = 41 ifTrue: [
            block280fc438Stack1 := (block280fc438Stack1) includes: (block280fc438Stack2).
            block280fc438PC := 43.
        ].
        block280fc438Step = 43 ifTrue: [
            block280fc438Result := block280fc438Stack1.
            block280fc438Done := true.
        ].
    ].
    block280fc438Result
].
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack2 := [].
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack0 := (recoveredStack0) detect: (recoveredStack1) ifNone: (recoveredStack2).
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 80] ifFalse: [recoveredPC := 78].
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack1 := [:recoveredBlock83Arg1 | 
    ^nil
].
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack0 := (recoveredStack0) getObjectIfUndefined: (recoveredStack1).
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

