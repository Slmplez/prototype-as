"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2001b1d0; bytecode file offset 0x92209c"
!SGPacketLayout methodsFor: 'recovered'!
sourceModel
    ^'packetlayout'
! !

"ASDBase.ic method 0x200235f4; bytecode file offset 0x92209c"
!SGPacketLayout methodsFor: 'recovered'!
iconName
    ^'ComponentsPacket'
! !

"ASDBase.ic method 0x20066af4; bytecode file offset 0x963428"
!SGPacketLayout methodsFor: 'recovered'!
fields
    | recoveredValue0 |
    recoveredValue0 := fields.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20067944; bytecode file offset 0x9646f8"
!SGPacketLayout methodsFor: 'recovered'!
generalStates
    | recoveredValue0 |
    recoveredValue0 := generalStates.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20098bf4; bytecode file offset 0x995850"
!SGPacketLayout methodsFor: 'recovered'!
name: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) dbObject.
    recoveredValue1 := recoveredArg1.
    (recoveredValue0) name: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x20098ea4; bytecode file offset 0x995850"
!SGPacketLayout methodsFor: 'recovered'!
addField: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) fields.
    recoveredValue1 := recoveredArg1.
    (recoveredValue0) addLast: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x200be394; bytecode file offset 0x9bb178"
!SGPacketLayout methodsFor: 'recovered'!
fields: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    fields := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200becf0; bytecode file offset 0x9bc0b4"
!SGPacketLayout methodsFor: 'recovered'!
generalStates: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    generalStates := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200da754; bytecode file offset 0x9d7154"
!SGPacketLayout methodsFor: 'recovered'!
removeField: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) fields.
    recoveredValue1 := recoveredArg1.
    (recoveredValue0) remove: (recoveredValue1).
    (self) modified.
    ^self
! !

"ASDBase.ic method 0x200ec504; bytecode file offset 0x9e8e14"
!SGPacketLayout methodsFor: 'recovered'!
addField: recoveredArg1 after: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) fields.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    (recoveredValue0) add: (recoveredValue1) after: (recoveredValue2).
    (self) modified.
    ^self
! !

"ASDBase.ic method 0x200ec518; bytecode file offset 0x9e8e14"
!SGPacketLayout methodsFor: 'recovered'!
addField: recoveredArg1 before: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) fields.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    (recoveredValue0) add: (recoveredValue1) before: (recoveredValue2).
    (self) modified.
    ^self
! !

"ASDBase.ic method 0x201154b8; bytecode file offset 0xa11db4"
!SGPacketLayout methodsFor: 'recovered'!
fieldsWithFormula
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := fields.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := [:block280c6a68Arg1 | 
    | block280c6a68Value0 block280c6a68Value1 |
    block280c6a68Value0 := block280c6a68Arg1.
    block280c6a68Value1 := (block280c6a68Value0) hasFormula.
    block280c6a68Value1
].
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) select: (recoveredStack2).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x201154e0; bytecode file offset 0xa11db4"
!SGPacketLayout methodsFor: 'recovered'!
dataFields
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := fields.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := [:block280c6ab0Arg1 | 
    | block280c6ab0Value0 block280c6ab0Value1 |
    block280c6ab0Value0 := block280c6ab0Arg1.
    block280c6ab0Value1 := (block280c6ab0Value0) isDataField.
    block280c6ab0Value1
].
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) select: (recoveredStack2).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2011b26c; bytecode file offset 0xa17b54"
!SGPacketLayout methodsFor: 'recovered'!
name
    | recoveredStack0 recoveredStack1 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) dbObject.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) dbObject.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := (recoveredStack0) name.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := 'Unnamed'.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201b182c; bytecode file offset 0xaae100"
!SGPacketLayout methodsFor: 'recovered'!
initialize
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    super initialize.
    recoveredValue0 := OrderedCollection.
    recoveredValue1 := SGPacketLayoutField.
    recoveredValue2 := (recoveredValue1) createPredefinedField.
    recoveredValue3 := (recoveredValue0) with: (recoveredValue2).
    (self) fields: (recoveredValue3).
    (self) generalStates: (0).
    ^self
! !

"ASDBase.ic method 0x201f3944; bytecode file offset 0xaf0214"
!SGPacketLayout methodsFor: 'recovered'!
copyInfoFrom: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := OrderedCollection.
    recoveredValue1 := (recoveredValue0) new.
    fields := recoveredValue1.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (recoveredValue2) fields.
    recoveredValue4 := [:recoveredBlock11Arg1 | 
    | recoveredBlock11Value0 recoveredBlock11Value1 |
    recoveredBlock11Value0 := recoveredBlock11Arg1.
    recoveredBlock11Value1 := (self) addField: (recoveredBlock11Value0).
    recoveredBlock11Value1
].
    (recoveredValue3) do: (recoveredValue4).
    recoveredValue5 := recoveredArg1.
    recoveredValue6 := (recoveredValue5) generalStates.
    (self) generalStates: (recoveredValue6).
    ^self
! !

"ASDBase.ic method 0x20298a38; bytecode file offset 0xb9530c"
!SGPacketLayout methodsFor: 'recovered'!
printOn: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) name.
    recoveredValue2 := ('Protocol: ') , (recoveredValue1).
    (recoveredValue0) nextPutAll: (recoveredValue2).
    recoveredValue3 := recoveredArg1.
    (recoveredValue3) cr.
    recoveredValue4 := (self) fields.
    recoveredValue5 := [:recoveredBlock21Arg1 | 
    | recoveredBlock21Value0 recoveredBlock21Value1 recoveredBlock21Value2 recoveredBlock21Value3 |
    recoveredBlock21Value0 := recoveredBlock21Arg1.
    recoveredBlock21Value1 := recoveredArg1.
    (recoveredBlock21Value0) printOn: (recoveredBlock21Value1).
    recoveredBlock21Value2 := recoveredArg1.
    recoveredBlock21Value3 := (recoveredBlock21Value2) cr.
    recoveredBlock21Value3
].
    (recoveredValue4) do: (recoveredValue5).
    ^self
! !

