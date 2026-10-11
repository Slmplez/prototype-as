"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2006ce40; bytecode file offset 0x969c04"
!FamosChannel methodsFor: 'recovered'!
bitIndex
    | recoveredValue0 |
    recoveredValue0 := bitIndex.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006dad4; bytecode file offset 0x96a390"
!FamosChannel methodsFor: 'recovered'!
nameLength
    | recoveredValue0 |
    recoveredValue0 := nameLength.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006e048; bytecode file offset 0x96a9dc"
!FamosChannel methodsFor: 'recovered'!
name
    | recoveredValue0 |
    recoveredValue0 := name.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006e64c; bytecode file offset 0x96af48"
!FamosChannel methodsFor: 'recovered'!
commentLength
    | recoveredValue0 |
    recoveredValue0 := commentLength.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006ea90; bytecode file offset 0x96b41c"
!FamosChannel methodsFor: 'recovered'!
comment
    | recoveredValue0 |
    recoveredValue0 := comment.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2007565c; bytecode file offset 0x9757c8"
!FamosChannel methodsFor: 'recovered'!
isFamosChannel
    ^true
! !

"ASDBase.ic method 0x20092df4; bytecode file offset 0x98f718"
!FamosChannel methodsFor: 'recovered'!
addUserDefined: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := userDefineds.
    recoveredValue1 := recoveredArg1.
    (recoveredValue0) add: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x200c3cd0; bytecode file offset 0x9c058c"
!FamosChannel methodsFor: 'recovered'!
bitIndex: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    bitIndex := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c3df4; bytecode file offset 0x9c0bf0"
!FamosChannel methodsFor: 'recovered'!
nameLength: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    nameLength := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c4858; bytecode file offset 0x9c11bc"
!FamosChannel methodsFor: 'recovered'!
name: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    name := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c4bb4; bytecode file offset 0x9c16b0"
!FamosChannel methodsFor: 'recovered'!
commentLength: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    commentLength := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c4f08; bytecode file offset 0x9c1afc"
!FamosChannel methodsFor: 'recovered'!
comment: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    comment := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200d93bc; bytecode file offset 0x9d5d08"
!FamosChannel methodsFor: 'recovered'!
addToSuper: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    (self) parent: (recoveredValue0).
    recoveredValue1 := recoveredArg1.
    (recoveredValue1) addChannel: (self).
    ^true
! !

"ASDBase.ic method 0x200fafd8; bytecode file offset 0x9f78a4"
!FamosChannel methodsFor: 'recovered'!
putBitIndexIn: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    (self) putSeparatorIn: (recoveredValue0).
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := bitIndex.
    (self) putIn: (recoveredValue1) integer: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x200fe918; bytecode file offset 0x9fb278"
!FamosChannel methodsFor: 'recovered'!
putIn: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    super putIn: (recoveredValue0).
    recoveredValue1 := recoveredArg1.
    (self) putSubKeysIn: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x201b29bc; bytecode file offset 0xaaf280"
!FamosChannel methodsFor: 'recovered'!
createItemIndexFor: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := userDefineds.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) isEmpty.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack2 := -1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack1) itemIndex: (recoveredStack2).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredPC := 25.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack2 := userDefineds.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack2 := (recoveredStack2) first.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack2 := (recoveredStack2) getIntegerData.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            (recoveredStack1) itemIndex: (recoveredStack2).
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201e4f70; bytecode file offset 0xae1830"
!FamosChannel methodsFor: 'recovered'!
initialize
    super initialize.
    nameLength := 0.
    name := ''.
    commentLength := 0.
    comment := ''.
    bitIndex := nil.
    ^self
! !

"ASDBase.ic method 0x2021163c; bytecode file offset 0xb0df08"
!FamosChannel methodsFor: 'recovered'!
itemIndex
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := subKeys.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := [:block280da8ecArg1 | 
    | block280da8ecValue0 block280da8ecValue1 |
    block280da8ecValue0 := block280da8ecArg1.
    block280da8ecValue1 := (block280da8ecValue0) isFamosUserDefinedKey.
    block280da8ecValue1
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
            recoveredStack2 := recoveredStack1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := (recoveredStack1) isEmpty.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 22] ifFalse: [recoveredPC := 25].
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := -1.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := (recoveredStack1) first.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := (recoveredStack1) dataAsInteger.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x20277488; bytecode file offset 0xb73d60"
!FamosChannel methodsFor: 'recovered'!
putFieldsIn: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := recoveredArg1.
    super putFieldsIn: (recoveredValue0).
    recoveredValue1 := recoveredArg1.
    (self) putIn: (recoveredValue1) zeros: (1).
    recoveredValue2 := recoveredArg1.
    (self) putBitIndexIn: (recoveredValue2).
    recoveredValue3 := recoveredArg1.
    (self) putNameLengthIn: (recoveredValue3).
    recoveredValue4 := recoveredArg1.
    (self) putNameIn: (recoveredValue4).
    recoveredValue5 := recoveredArg1.
    (self) putCommentLengthIn: (recoveredValue5).
    recoveredValue6 := recoveredArg1.
    (self) putCommentIn: (recoveredValue6).
    recoveredValue7 := recoveredArg1.
    (self) putEndIn: (recoveredValue7).
    ^self
! !

"ASDBase.ic method 0x202d9458; bytecode file offset 0xbd5d24"
!FamosChannel methodsFor: 'recovered'!
getFrom: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 |
    recoveredValue0 := recoveredArg1.
    super getFrom: (recoveredValue0).
    recoveredValue1 := recoveredArg1.
    (self) getInteger: (recoveredValue1).
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (self) getInteger: (recoveredValue2).
    bitIndex := recoveredValue3.
    recoveredValue4 := recoveredArg1.
    recoveredValue5 := (self) getFieldLength: (recoveredValue4).
    nameLength := recoveredValue5.
    recoveredValue6 := nameLength.
    recoveredValue7 := recoveredArg1.
    recoveredValue8 := (self) getString: (recoveredValue6) from: (recoveredValue7).
    name := recoveredValue8.
    recoveredValue9 := recoveredArg1.
    recoveredValue10 := (self) getFieldLength: (recoveredValue9).
    commentLength := recoveredValue10.
    recoveredValue11 := commentLength.
    recoveredValue12 := recoveredArg1.
    recoveredValue13 := (self) getString: (recoveredValue11) from: (recoveredValue12).
    comment := recoveredValue13.
    recoveredValue14 := recoveredArg1.
    (self) parse: (recoveredValue14).
    ^self
! !

