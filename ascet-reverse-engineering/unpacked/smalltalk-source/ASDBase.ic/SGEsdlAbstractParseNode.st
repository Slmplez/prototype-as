"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20002990; bytecode file offset 0x8ffcfc"
!SGEsdlAbstractParseNode methodsFor: 'recovered'!
markAsMethodIdentifier
    ^self
! !

"ASDBase.ic method 0x20026d04; bytecode file offset 0x923928"
!SGEsdlAbstractParseNode methodsFor: 'recovered'!
subnodes
    ^#()
! !

"ASDBase.ic method 0x2003f228; bytecode file offset 0x93bf94"
!SGEsdlAbstractParseNode methodsFor: 'recovered'!
logicManager
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := SGLmManager.
    recoveredValue1 := (recoveredValue0) current.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20058fe8; bytecode file offset 0x956284"
!SGEsdlAbstractParseNode methodsFor: 'recovered'!
subnodesDo: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) subnodes.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) do: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x20066024; bytecode file offset 0x963428"
!SGEsdlAbstractParseNode methodsFor: 'recovered'!
sourceStart
    | recoveredValue0 |
    recoveredValue0 := sourceStart.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20066e8c; bytecode file offset 0x9646f8"
!SGEsdlAbstractParseNode methodsFor: 'recovered'!
sourceEnd
    | recoveredValue0 |
    recoveredValue0 := sourceEnd.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20068eac; bytecode file offset 0x965b90"
!SGEsdlAbstractParseNode methodsFor: 'recovered'!
comment
    | recoveredValue0 |
    recoveredValue0 := comment.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006a238; bytecode file offset 0x966bdc"
!SGEsdlAbstractParseNode methodsFor: 'recovered'!
length
    | recoveredValue0 |
    recoveredValue0 := length.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200737f0; bytecode file offset 0x970b34"
!SGEsdlAbstractParseNode methodsFor: 'recovered'!
errorPositionPoint
    ^nil
! !

"ASDBase.ic method 0x20074220; bytecode file offset 0x970b34"
!SGEsdlAbstractParseNode methodsFor: 'recovered'!
nodeColor
    ^nil
! !

"ASDBase.ic method 0x200917c0; bytecode file offset 0x98e0cc"
!SGEsdlAbstractParseNode methodsFor: 'recovered'!
initialize
    super initialize.
    ^self
! !

"ASDBase.ic method 0x200be4f4; bytecode file offset 0x9bb178"
!SGEsdlAbstractParseNode methodsFor: 'recovered'!
sourceStart: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    sourceStart := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200bed90; bytecode file offset 0x9bc0b4"
!SGEsdlAbstractParseNode methodsFor: 'recovered'!
sourceEnd: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    sourceEnd := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c03b4; bytecode file offset 0x9bd228"
!SGEsdlAbstractParseNode methodsFor: 'recovered'!
comment: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    comment := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c1278; bytecode file offset 0x9bdf14"
!SGEsdlAbstractParseNode methodsFor: 'recovered'!
length: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    length := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x201b533c; bytecode file offset 0xab1bfc"
!SGEsdlAbstractParseNode methodsFor: 'recovered'!
allNodesDo: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    (recoveredValue0) value: (self).
    recoveredValue1 := [:recoveredBlock10Arg1 | 
    | recoveredBlock10Value0 recoveredBlock10Value1 recoveredBlock10Value2 |
    recoveredBlock10Value0 := recoveredBlock10Arg1.
    recoveredBlock10Value1 := recoveredArg1.
    recoveredBlock10Value2 := (recoveredBlock10Value0) allNodesDo: (recoveredBlock10Value1).
    recoveredBlock10Value2
].
    (self) subnodesDo: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x201de87c; bytecode file offset 0xadb140"
!SGEsdlAbstractParseNode methodsFor: 'recovered'!
asCollectionOfNodeColors
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := OrderedCollection.
    recoveredValue1 := (recoveredValue0) new.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := [:recoveredBlock10Arg1 | 
    | recoveredBlock10Value0 recoveredBlock10Value1 recoveredBlock10Value2 |
    recoveredBlock10Value0 := recoveredBlock10Arg1.
    recoveredBlock10Value1 := recoveredLocal1.
    recoveredBlock10Value2 := (recoveredBlock10Value0) appendNodeColorAssociations: (recoveredBlock10Value1).
    recoveredBlock10Value2
].
    (self) allNodesDo: (recoveredValue2).
    recoveredValue3 := recoveredLocal1.
    ^recoveredValue3
! !

"ASDBase.ic method 0x20220438; bytecode file offset 0xb1cd00"
!SGEsdlAbstractParseNode methodsFor: 'recovered'!
appendNodeColorAssociations: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := sourceStart.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) nodeColor.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 31] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := Association.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack2 := sourceStart.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack3 := sourceEnd.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack2 := (recoveredStack2) @ (recoveredStack3).
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := (recoveredStack1) key: (recoveredStack2) value: (recoveredStack3).
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            (recoveredStack0) add: (recoveredStack1).
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

