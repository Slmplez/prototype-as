"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20041258; bytecode file offset 0x93dd2c"
!DBMethodDecoder methodsFor: 'recovered'!
bytes
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := stream.
    recoveredValue1 := (recoveredValue0) collection.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20069fa0; bytecode file offset 0x966bdc"
!DBMethodDecoder methodsFor: 'recovered'!
behaviors
    | recoveredValue0 |
    recoveredValue0 := behaviors.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20092a8c; bytecode file offset 0x98f464"
!DBMethodDecoder methodsFor: 'recovered'!
writeSmallInt16: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := stream.
    recoveredValue1 := recoveredArg1.
    (recoveredValue0) nextint16Put: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x20092ac8; bytecode file offset 0x98f464"
!DBMethodDecoder methodsFor: 'recovered'!
writeSmallInt8: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := stream.
    recoveredValue1 := recoveredArg1.
    (recoveredValue0) nextint8Put: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x20092aec; bytecode file offset 0x98f464"
!DBMethodDecoder methodsFor: 'recovered'!
writeSmallInt: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := stream.
    recoveredValue1 := recoveredArg1.
    (recoveredValue0) nextint32Put: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x20092b64; bytecode file offset 0x98f464"
!DBMethodDecoder methodsFor: 'recovered'!
writeF4ByteArray: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := stream.
    recoveredValue1 := recoveredArg1.
    (recoveredValue0) nextPutAll: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x200b7d90; bytecode file offset 0x9b46dc"
!DBMethodDecoder methodsFor: 'recovered'!
writeLiteralTypeFor: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := DBMethodLinker.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) literalTypeFor: (recoveredValue1).
    (self) writeByte: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x20129564; bytecode file offset 0xa25e24"
!DBMethodDecoder methodsFor: 'recovered'!
reset
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := stream.
    (recoveredValue0) reset.
    recoveredValue1 := LookupTable.
    recoveredValue2 := (recoveredValue1) new.
    behaviors := recoveredValue2.
    numBehaviors := 0.
    ^self
! !

"ASDBase.ic method 0x201406b8; bytecode file offset 0xa3cf7c"
!DBMethodDecoder methodsFor: 'recovered'!
initialize
    | recoveredValue0 recoveredValue1 |
    super initialize.
    recoveredValue0 := LookupTable.
    recoveredValue1 := (recoveredValue0) new.
    behaviors := recoveredValue1.
    numBehaviors := 0.
    ^self
! !

"ASDBase.ic method 0x201cb3b8; bytecode file offset 0xac7c84"
!DBMethodDecoder methodsFor: 'recovered'!
initialize: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := WriteStream.
    recoveredValue1 := String.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (recoveredValue1) new: (recoveredValue2).
    recoveredValue4 := (recoveredValue0) on: (recoveredValue3).
    stream := recoveredValue4.
    recoveredValue5 := recoveredArg1.
    streamSize := recoveredValue5.
    recoveredValue6 := LookupTable.
    recoveredValue7 := (recoveredValue6) new.
    behaviors := recoveredValue7.
    numBehaviors := 0.
    ^self
! !

"ASDBase.ic method 0x202b2424; bytecode file offset 0xbaece8"
!DBMethodDecoder methodsFor: 'recovered'!
appendAll: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredLocal3 := 0.
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := [:recoveredBlock12Arg1 | 
    | recoveredBlock12Value0 recoveredBlock12Value1 recoveredBlock12Value2 recoveredBlock12Value3 recoveredBlock12Value4 |
    recoveredBlock12Value0 := recoveredLocal3.
    recoveredBlock12Value1 := recoveredBlock12Arg1.
    recoveredBlock12Value2 := (recoveredBlock12Value1) size.
    recoveredBlock12Value3 := (recoveredBlock12Value0) + (recoveredBlock12Value2).
    recoveredBlock12Value4 := recoveredBlock12Value3.
    recoveredLocal3 := recoveredBlock12Value4.
    recoveredBlock12Value3
].
    (recoveredValue0) do: (recoveredValue1).
    recoveredValue2 := stream.
    recoveredValue3 := recoveredLocal3.
    (recoveredValue2) growBy: (recoveredValue3).
    recoveredValue4 := stream.
    recoveredValue5 := recoveredArg1.
    (recoveredValue4) appendAll: (recoveredValue5).
    ^self
! !

"ASDBase.ic method 0x202dcb88; bytecode file offset 0xbd9454"
!DBMethodDecoder methodsFor: 'recovered'!
emWriteClass: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := (recoveredStack1) emBehaviorId.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 44] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := behaviors.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := (recoveredStack2) name.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack3 := [
    | recoveredBlock16Value0 recoveredBlock16Value1 recoveredBlock16Value2 |
    recoveredBlock16Value0 := numBehaviors.
    recoveredBlock16Value1 := (recoveredBlock16Value0) + (1).
    recoveredBlock16Value2 := recoveredBlock16Value1.
    numBehaviors := recoveredBlock16Value2.
    recoveredBlock16Value1
].
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2) ifAbsentPut: (recoveredStack3).
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack3 := DBMethodLinker.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack3 := (recoveredStack3) numPredefinedIDs.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack2 := (recoveredStack2) + (recoveredStack3).
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            (recoveredStack1) writeByte: (recoveredStack2).
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredPC := 48.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            (recoveredStack1) writeByte: (recoveredStack2).
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x202f25d0; bytecode file offset 0xbeeea8"
!DBMethodDecoder methodsFor: 'recovered'!
getBehaviorsBytes
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 |
    recoveredValue0 := Array.
    recoveredValue1 := behaviors.
    recoveredValue2 := (recoveredValue1) size.
    recoveredValue3 := (recoveredValue0) new: (recoveredValue2).
    recoveredLocal2 := recoveredValue3.
    recoveredValue4 := behaviors.
    recoveredValue5 := [:recoveredBlock15Arg1 :recoveredBlock15Arg2 | 
    | recoveredBlock15Value0 recoveredBlock15Value1 recoveredBlock15Value2 recoveredBlock15Value3 |
    recoveredBlock15Value0 := recoveredLocal2.
    recoveredBlock15Value1 := recoveredBlock15Arg2.
    recoveredBlock15Value2 := recoveredBlock15Arg1.
    recoveredBlock15Value3 := (recoveredBlock15Value0) at: (recoveredBlock15Value1) put: (recoveredBlock15Value2).
    recoveredBlock15Value3
].
    (recoveredValue4) keysAndValuesDo: (recoveredValue5).
    recoveredValue6 := recoveredLocal2.
    recoveredValue7 := (self) class.
    recoveredValue8 := (recoveredValue7) create.
    recoveredValue9 := recoveredValue8.
    recoveredLocal1 := recoveredValue9.
    (recoveredValue6) emWriteObjectOrLiteralOn: (recoveredValue8).
    recoveredValue10 := recoveredLocal1.
    recoveredValue11 := (recoveredValue10) stream.
    ^recoveredValue11
! !

