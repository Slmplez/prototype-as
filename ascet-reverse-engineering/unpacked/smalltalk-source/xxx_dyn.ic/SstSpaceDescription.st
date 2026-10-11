"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"xxx_dyn.ic method 0x2000390c; bytecode file offset 0x649e8"
!SstSpaceDescription methodsFor: 'recovered'!
id
    | recoveredValue0 |
    recoveredValue0 := id.
    ^recoveredValue0
! !

"xxx_dyn.ic method 0x20003948; bytecode file offset 0x64bac"
!SstSpaceDescription methodsFor: 'recovered'!
activation
    | recoveredValue0 |
    recoveredValue0 := activation.
    ^recoveredValue0
! !

"xxx_dyn.ic method 0x20003bd4; bytecode file offset 0x64d78"
!SstSpaceDescription methodsFor: 'recovered'!
locationName
    | recoveredValue0 |
    recoveredValue0 := locationName.
    ^recoveredValue0
! !

"xxx_dyn.ic method 0x20003ce0; bytecode file offset 0x64ed4"
!SstSpaceDescription methodsFor: 'recovered'!
urls
    | recoveredValue0 |
    recoveredValue0 := urls.
    ^recoveredValue0
! !

"xxx_dyn.ic method 0x20004708; bytecode file offset 0x6592c"
!SstSpaceDescription methodsFor: 'recovered'!
sstIsImmutable
    ^true
! !

"xxx_dyn.ic method 0x20007d5c; bytecode file offset 0x68f50"
!SstSpaceDescription methodsFor: 'recovered'!
id: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    id := recoveredValue0.
    ^self
! !

"xxx_dyn.ic method 0x200080e4; bytecode file offset 0x692b8"
!SstSpaceDescription methodsFor: 'recovered'!
locationName: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    locationName := recoveredValue0.
    ^self
! !

"xxx_dyn.ic method 0x200082e8; bytecode file offset 0x69404"
!SstSpaceDescription methodsFor: 'recovered'!
urls: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    urls := recoveredValue0.
    ^self
! !

"xxx_dyn.ic method 0x2000feec; bytecode file offset 0x70fc4"
!SstSpaceDescription methodsFor: 'recovered'!
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

"xxx_dyn.ic method 0x20015db0; bytecode file offset 0x76e94"
!SstSpaceDescription methodsFor: 'recovered'!
sstMarshalingValue
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) copy.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := urls.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack3 := [:block2800af38Arg1 | 
    | block2800af38Stack0 block2800af38Stack1 block2800af38Stack2 block2800af38PC block2800af38Step block2800af38Done block2800af38Result |
    block2800af38Stack0 := self.
    block2800af38PC := 4.
    block2800af38Done := false.
    [block2800af38Done not] whileTrue: [
        block2800af38Step := block2800af38PC.
        block2800af38Step = 4 ifTrue: [
            block2800af38Stack1 := block2800af38Arg1.
            block2800af38PC := 5.
        ].
        block2800af38Step = 5 ifTrue: [
            block2800af38Stack1 := (block2800af38Stack1) isString.
            block2800af38PC := 6.
        ].
        block2800af38Step = 6 ifTrue: [
            (block2800af38Stack1) ifTrue: [block2800af38PC := 10] ifFalse: [block2800af38PC := 14].
        ].
        block2800af38Step = 10 ifTrue: [
            block2800af38Stack1 := block2800af38Arg1.
            block2800af38PC := 11.
        ].
        block2800af38Step = 11 ifTrue: [
            block2800af38PC := 16.
        ].
        block2800af38Step = 14 ifTrue: [
            block2800af38Stack1 := block2800af38Arg1.
            block2800af38PC := 15.
        ].
        block2800af38Step = 15 ifTrue: [
            block2800af38Stack1 := (block2800af38Stack1) printString.
            block2800af38PC := 16.
        ].
        block2800af38Step = 16 ifTrue: [
            block2800af38Result := block2800af38Stack1.
            block2800af38Done := true.
        ].
    ].
    block2800af38Result
].
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack2 := (recoveredStack2) collect: (recoveredStack3).
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack2 := (recoveredStack2) asArray.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack2 := (recoveredStack2) sstAsShallowValue.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            (recoveredStack1) urls: (recoveredStack2).
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"xxx_dyn.ic method 0x200260a8; bytecode file offset 0x87198"
!SstSpaceDescription methodsFor: 'recovered'!
debugPrintOn: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 |
    recoveredValue0 := recoveredArg1.
    (self) printOn: (recoveredValue0).
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredValue1.
    (recoveredValue2) cr.
    recoveredValue3 := recoveredValue1.
    (recoveredValue3) tab.
    recoveredValue4 := recoveredValue1.
    (recoveredValue4) nextPutAll: ('id: ').
    recoveredValue5 := recoveredValue1.
    recoveredValue6 := id.
    recoveredValue7 := (recoveredValue6) printString.
    (recoveredValue5) nextPutAll: (recoveredValue7).
    recoveredValue8 := recoveredValue1.
    (recoveredValue8) cr.
    recoveredValue9 := recoveredValue1.
    (recoveredValue9) tab.
    recoveredValue10 := recoveredValue1.
    (recoveredValue10) nextPutAll: ('location: ').
    recoveredValue11 := recoveredValue1.
    recoveredValue12 := locationName.
    recoveredValue13 := (recoveredValue12) printString.
    (recoveredValue11) nextPutAll: (recoveredValue13).
    recoveredValue14 := recoveredValue1.
    (recoveredValue14) cr.
    recoveredValue15 := recoveredValue1.
    (recoveredValue15) tab.
    recoveredValue16 := recoveredValue1.
    (recoveredValue16) nextPutAll: ('urls: ').
    (recoveredValue1) nextPut: (${).
    recoveredValue17 := urls.
    recoveredValue18 := [:recoveredBlock66Arg1 | 
    | recoveredBlock66Value0 recoveredBlock66Value1 recoveredBlock66Value2 recoveredBlock66Value3 |
    recoveredBlock66Value0 := recoveredBlock66Arg1.
    recoveredBlock66Value1 := recoveredArg1.
    (recoveredBlock66Value0) printOn: (recoveredBlock66Value1).
    recoveredBlock66Value2 := recoveredArg1.
    recoveredBlock66Value3 := (recoveredBlock66Value2) space.
    recoveredBlock66Value3
].
    (recoveredValue17) do: (recoveredValue18).
    recoveredValue19 := recoveredArg1.
    (recoveredValue19) nextPut: ($}).
    ^self
! !

