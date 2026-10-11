"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"xxx_dyn.ic method 0x200000a8; bytecode file offset 0x6147c"
!SstObjectSpace methodsFor: 'recovered'!
shutDown
    ^self
! !

"xxx_dyn.ic method 0x20000208; bytecode file offset 0x6147c"
!SstObjectSpace methodsFor: 'recovered'!
startUp
    ^self
! !

"xxx_dyn.ic method 0x20000220; bytecode file offset 0x6147c"
!SstObjectSpace methodsFor: 'recovered'!
clear
    ^self
! !

"xxx_dyn.ic method 0x20000258; bytecode file offset 0x6147c"
!SstObjectSpace methodsFor: 'recovered'!
initialize
    ^self
! !

"xxx_dyn.ic method 0x200003a0; bytecode file offset 0x6147c"
!SstObjectSpace methodsFor: 'recovered'!
reset
    ^self
! !

"xxx_dyn.ic method 0x200008c4; bytecode file offset 0x619a4"
!SstObjectSpace methodsFor: 'recovered'!
localSpace
    | recoveredValue0 |
    recoveredValue0 := (self) subclassResponsibility.
    ^recoveredValue0
! !

"xxx_dyn.ic method 0x2000252c; bytecode file offset 0x6363c"
!SstObjectSpace methodsFor: 'recovered'!
context
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := location.
    recoveredValue1 := (recoveredValue0) context.
    ^recoveredValue1
! !

"xxx_dyn.ic method 0x20002550; bytecode file offset 0x6363c"
!SstObjectSpace methodsFor: 'recovered'!
handlers
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := location.
    recoveredValue1 := (recoveredValue0) handlers.
    ^recoveredValue1
! !

"xxx_dyn.ic method 0x200037fc; bytecode file offset 0x649e8"
!SstObjectSpace methodsFor: 'recovered'!
id
    | recoveredValue0 |
    recoveredValue0 := id.
    ^recoveredValue0
! !

"xxx_dyn.ic method 0x20003ac8; bytecode file offset 0x64bac"
!SstObjectSpace methodsFor: 'recovered'!
location
    | recoveredValue0 |
    recoveredValue0 := location.
    ^recoveredValue0
! !

"xxx_dyn.ic method 0x20003b6c; bytecode file offset 0x64d78"
!SstObjectSpace methodsFor: 'recovered'!
activation
    | recoveredValue0 |
    recoveredValue0 := activation.
    ^recoveredValue0
! !

"xxx_dyn.ic method 0x200047e0; bytecode file offset 0x6592c"
!SstObjectSpace methodsFor: 'recovered'!
sstIsImmutable
    ^true
! !

"xxx_dyn.ic method 0x20004848; bytecode file offset 0x6592c"
!SstObjectSpace methodsFor: 'recovered'!
sstIsSpace
    ^true
! !

"xxx_dyn.ic method 0x200048e4; bytecode file offset 0x65b30"
!SstObjectSpace methodsFor: 'recovered'!
isLocalSpace
    ^false
! !

"xxx_dyn.ic method 0x20004c20; bytecode file offset 0x65cf4"
!SstObjectSpace methodsFor: 'recovered'!
addHandler: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := location.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) addHandler: (recoveredValue1).
    ^recoveredValue2
! !

"xxx_dyn.ic method 0x20004c2c; bytecode file offset 0x65cf4"
!SstObjectSpace methodsFor: 'recovered'!
removeHandler: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := location.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) removeHandler: (recoveredValue1).
    ^recoveredValue2
! !

"xxx_dyn.ic method 0x20007d64; bytecode file offset 0x68f50"
!SstObjectSpace methodsFor: 'recovered'!
id: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    id := recoveredValue0.
    ^self
! !

"xxx_dyn.ic method 0x20007f18; bytecode file offset 0x69104"
!SstObjectSpace methodsFor: 'recovered'!
location: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    location := recoveredValue0.
    ^self
! !

"xxx_dyn.ic method 0x2000ff20; bytecode file offset 0x70ff8"
!SstObjectSpace methodsFor: 'recovered'!
activation: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := (recoveredStack1) sstIsImmutable.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := ExSstNonFatalError.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := NlsCatSSTG.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack3 := 43.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := (recoveredStack2) indexedMsg: (recoveredStack3).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := (recoveredStack1) signalWith: (recoveredStack2).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            activation := recoveredStack1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"xxx_dyn.ic method 0x20011b0c; bytecode file offset 0x72be8"
!SstObjectSpace methodsFor: 'recovered'!
printOn: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack2 := MxSSTG12.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack3 := (recoveredStack3) id.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack3 := (recoveredStack3) isNumber.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack3) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 20].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack3 := (recoveredStack3) id.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack3 := (recoveredStack3) printString.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredPC := 22.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack3 := (recoveredStack3) id.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack2 := (recoveredStack2) bindWith: (recoveredStack3).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            (recoveredStack1) nextPutAll: (recoveredStack2).
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"xxx_dyn.ic method 0x200128c0; bytecode file offset 0x739a8"
!SstObjectSpace methodsFor: 'recovered'!
accessibleUrls
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) handlers.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := Set.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack2 := [:block2800add0Arg1 :block2800add0Arg2 | 
    | block2800add0Value0 block2800add0Value1 block2800add0Value2 block2800add0Value3 block2800add0Value4 |
    block2800add0Value0 := block2800add0Arg1.
    block2800add0Value1 := block2800add0Value0.
    block2800add0Value2 := block2800add0Arg2.
    block2800add0Value3 := (block2800add0Value2) endpoint.
    block2800add0Value4 := (block2800add0Value3) accessibleUrls.
    (block2800add0Value1) addAll: (block2800add0Value4).
    block2800add0Value0
].
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := (recoveredStack0) inject: (recoveredStack1) into: (recoveredStack2).
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := (recoveredStack0) asArray.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"xxx_dyn.ic method 0x20013768; bytecode file offset 0x74838"
!SstObjectSpace methodsFor: 'recovered'!
canReach: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) handlers.
    recoveredValue1 := [:recoveredBlock5Arg1 | 
    | recoveredBlock5Stack0 recoveredBlock5Stack1 recoveredBlock5Stack2 recoveredBlock5Stack3 recoveredBlock5Stack4 recoveredBlock5PC recoveredBlock5Step recoveredBlock5Done recoveredBlock5Result |
    recoveredBlock5Stack0 := self.
    recoveredBlock5PC := 12.
    recoveredBlock5Done := false.
    [recoveredBlock5Done not] whileTrue: [
        recoveredBlock5Step := recoveredBlock5PC.
        recoveredBlock5Step = 12 ifTrue: [
            recoveredBlock5Stack1 := nil.
            recoveredBlock5PC := 13.
        ].
        recoveredBlock5Step = 13 ifTrue: [
            recoveredBlock5Stack2 := recoveredBlock5Arg1.
            recoveredBlock5PC := 14.
        ].
        recoveredBlock5Step = 14 ifTrue: [
            recoveredBlock5Stack3 := recoveredArg1.
            recoveredBlock5PC := 17.
        ].
        recoveredBlock5Step = 17 ifTrue: [
            recoveredBlock5Stack2 := (recoveredBlock5Stack2) canReach: (recoveredBlock5Stack3).
            recoveredBlock5PC := 18.
        ].
        recoveredBlock5Step = 18 ifTrue: [
            (recoveredBlock5Stack2) ifTrue: [recoveredBlock5PC := 22] ifFalse: [recoveredBlock5PC := 25].
        ].
        recoveredBlock5Step = 22 ifTrue: [
            recoveredBlock5PC := 23.
        ].
        recoveredBlock5Step = 23 ifTrue: [
            recoveredBlock5Stack1 := true.
            recoveredBlock5PC := 24.
        ].
        recoveredBlock5Step = 24 ifTrue: [
            ^recoveredBlock5Stack1
        ].
        recoveredBlock5Step = 25 ifTrue: [
            recoveredBlock5Result := recoveredBlock5Stack1.
            recoveredBlock5Done := true.
        ].
    ].
    recoveredBlock5Result
].
    (recoveredValue0) do: (recoveredValue1).
    ^false
! !

"xxx_dyn.ic method 0x20014af8; bytecode file offset 0x75be8"
!SstObjectSpace methodsFor: 'recovered'!
description
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 |
    recoveredValue0 := SstSpaceDescription.
    recoveredValue1 := (recoveredValue0) new.
    recoveredValue2 := recoveredValue1.
    recoveredValue3 := (self) id.
    (recoveredValue2) id: (recoveredValue3).
    recoveredValue4 := recoveredValue1.
    recoveredValue5 := (self) activation.
    (recoveredValue4) activation: (recoveredValue5).
    recoveredValue6 := recoveredValue1.
    recoveredValue7 := (self) location.
    recoveredValue8 := (recoveredValue7) name.
    (recoveredValue6) locationName: (recoveredValue8).
    recoveredValue9 := recoveredValue1.
    recoveredValue10 := (self) accessibleUrls.
    (recoveredValue9) urls: (recoveredValue10).
    ^recoveredValue1
! !

