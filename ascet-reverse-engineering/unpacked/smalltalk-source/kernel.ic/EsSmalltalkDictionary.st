"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"kernel.ic method 0x20002128; bytecode file offset 0x4d074"
!EsSmalltalkDictionary methodsFor: 'recovered'!
emConvertKey: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) asGlobalKey.
    ^recoveredValue1
! !

"kernel.ic method 0x2000779c; bytecode file offset 0x52760"
!EsSmalltalkDictionary methodsFor: 'recovered'!
removedAssociations: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    removedAssociations := recoveredValue0.
    ^self
! !

"kernel.ic method 0x20007900; bytecode file offset 0x5280c"
!EsSmalltalkDictionary methodsFor: 'recovered'!
owningImage: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    owningImage := recoveredValue0.
    ^self
! !

"kernel.ic method 0x2000a42c; bytecode file offset 0x5533c"
!EsSmalltalkDictionary methodsFor: 'recovered'!
owningImage
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := owningImage.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 13] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := System.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := owningImage.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"kernel.ic method 0x2000b984; bytecode file offset 0x568a8"
!EsSmalltalkDictionary methodsFor: 'recovered'!
removedAssociations
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := removedAssociations.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 15] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := Dictionary.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            removedAssociations := recoveredStack1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := removedAssociations.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"kernel.ic method 0x2000c890; bytecode file offset 0x577ac"
!EsSmalltalkDictionary methodsFor: 'recovered'!
classAt: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := [
    ^nil
].
    recoveredValue2 := (self) classAt: (recoveredValue0) ifAbsent: (recoveredValue1).
    ^recoveredValue2
! !

"kernel.ic method 0x2000fa24; bytecode file offset 0x5a93c"
!EsSmalltalkDictionary methodsFor: 'recovered'!
basicRemoveKey: recoveredArg1 ifAbsent: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := [
    | recoveredBlock7Value0 recoveredBlock7Value1 |
    recoveredBlock7Value0 := recoveredArg2.
    recoveredBlock7Value1 := (recoveredBlock7Value0) value.
    ^recoveredBlock7Value1
].
    recoveredValue2 := super removeKey: (recoveredValue0) ifAbsent: (recoveredValue1).
    ^recoveredValue2
! !

"kernel.ic method 0x2001152c; bytecode file offset 0x5c468"
!EsSmalltalkDictionary methodsFor: 'recovered'!
removeAllKeys: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := [:recoveredBlock5Arg1 | 
    | recoveredBlock5Stack0 recoveredBlock5Stack1 recoveredBlock5Stack2 recoveredBlock5Stack3 recoveredBlock5PC recoveredBlock5Step recoveredBlock5Done recoveredBlock5Result |
    recoveredBlock5Stack0 := self.
    recoveredBlock5PC := 12.
    recoveredBlock5Done := false.
    [recoveredBlock5Done not] whileTrue: [
        recoveredBlock5Step := recoveredBlock5PC.
        recoveredBlock5Step = 12 ifTrue: [
            recoveredBlock5Stack1 := recoveredBlock5Arg1.
            recoveredBlock5PC := 13.
        ].
        recoveredBlock5Step = 13 ifTrue: [
            recoveredBlock5Stack2 := [
    | block28008ba8Value0 block28008ba8Value1 |
    block28008ba8Value0 := ExCLDTKeyNotFound.
    block28008ba8Value1 := (block28008ba8Value0) signal.
    block28008ba8Value1
].
            recoveredBlock5PC := 15.
        ].
        recoveredBlock5Step = 15 ifTrue: [
            recoveredBlock5PC := 22.
        ].
        recoveredBlock5Step = 22 ifTrue: [
            recoveredBlock5Stack0 := (recoveredBlock5Stack0) removeKey: (recoveredBlock5Stack1) ifAbsent: (recoveredBlock5Stack2).
            recoveredBlock5PC := 24.
        ].
        recoveredBlock5Step = 24 ifTrue: [
            recoveredBlock5Result := recoveredBlock5Stack0.
            recoveredBlock5Done := true.
        ].
    ].
    recoveredBlock5Result
].
    (recoveredValue0) do: (recoveredValue1).
    ^self
! !

"kernel.ic method 0x200123a8; bytecode file offset 0x5d2bc"
!EsSmalltalkDictionary methodsFor: 'recovered'!
undeclare: recoveredArg1 poolName: recoveredArg2
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := recoveredArg2.
    recoveredValue1 := [
    ^nil
].
    recoveredValue2 := (self) poolDictionaryAt: (recoveredValue0) ifAbsent: (recoveredValue1).
    recoveredLocal1 := recoveredValue2.
    recoveredValue3 := recoveredLocal1.
    recoveredValue4 := recoveredArg1.
    recoveredValue5 := (recoveredValue3) undeclare: (recoveredValue4).
    ^recoveredValue5
! !

"kernel.ic method 0x20014a50; bytecode file offset 0x5f968"
!EsSmalltalkDictionary methodsFor: 'recovered'!
at: recoveredArg1 ifAbsentPut: recoveredArg2
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := [
    | recoveredBlock7Value0 recoveredBlock7Value1 recoveredBlock7Value2 recoveredBlock7Value3 |
    recoveredBlock7Value0 := recoveredArg1.
    recoveredBlock7Value1 := recoveredArg2.
    recoveredBlock7Value2 := (recoveredBlock7Value1) value.
    recoveredBlock7Value3 := (self) at: (recoveredBlock7Value0) put: (recoveredBlock7Value2).
    ^recoveredBlock7Value3
].
    recoveredValue2 := (self) associationAt: (recoveredValue0) ifAbsent: (recoveredValue1).
    recoveredLocal1 := recoveredValue2.
    recoveredValue3 := recoveredLocal1.
    recoveredValue4 := (recoveredValue3) value.
    ^recoveredValue4
! !

"kernel.ic method 0x2001624c; bytecode file offset 0x61164"
!EsSmalltalkDictionary methodsFor: 'recovered'!
removeAllKeys: recoveredArg1 ifAbsent: recoveredArg2
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := [:recoveredBlock7Arg1 | 
    | recoveredBlock7Value0 recoveredBlock7Value1 recoveredBlock7Value2 |
    recoveredBlock7Value0 := recoveredBlock7Arg1.
    recoveredBlock7Value1 := [
    | recoveredBlock7Block17Value0 recoveredBlock7Block17Value1 recoveredBlock7Block17Value2 |
    recoveredBlock7Block17Value0 := recoveredArg2.
    recoveredBlock7Block17Value1 := recoveredBlock7Arg1.
    recoveredBlock7Block17Value2 := (recoveredBlock7Block17Value0) value: (recoveredBlock7Block17Value1).
    recoveredBlock7Block17Value2
].
    recoveredBlock7Value2 := (self) removeKey: (recoveredBlock7Value0) ifAbsent: (recoveredBlock7Value1).
    recoveredBlock7Value2
].
    (recoveredValue0) do: (recoveredValue1).
    ^self
! !

"kernel.ic method 0x200175fc; bytecode file offset 0x62518"
!EsSmalltalkDictionary methodsFor: 'recovered'!
classAt: recoveredArg1 ifAbsent: recoveredArg2
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) asGlobalKey.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack2 := [
    | recoveredBlock8Value0 recoveredBlock8Value1 |
    recoveredBlock8Value0 := recoveredArg2.
    recoveredBlock8Value1 := (recoveredBlock8Value0) value.
    ^recoveredBlock8Value1
].
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1) ifAbsent: (recoveredStack2).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := (recoveredStack0) isClass.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 37] ifFalse: [recoveredPC := 32].
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := recoveredArg2.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack0 := (recoveredStack0) value.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"kernel.ic method 0x20019d84; bytecode file offset 0x64ca0"
!EsSmalltalkDictionary methodsFor: 'recovered'!
declareVariable: recoveredArg1 poolName: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := recoveredArg2.
    recoveredValue1 := [
    | recoveredBlock7Stack0 recoveredBlock7Stack1 recoveredBlock7Stack2 recoveredBlock7PC recoveredBlock7Step recoveredBlock7Done recoveredBlock7Result |
    recoveredBlock7Stack0 := self.
    recoveredBlock7PC := 14.
    recoveredBlock7Done := false.
    [recoveredBlock7Done not] whileTrue: [
        recoveredBlock7Step := recoveredBlock7PC.
        recoveredBlock7Step = 14 ifTrue: [
            recoveredBlock7Stack1 := recoveredArg2.
            recoveredBlock7PC := 17.
        ].
        recoveredBlock7Step = 17 ifTrue: [
            recoveredBlock7Stack0 := (recoveredBlock7Stack0) declarePoolDictionary: (recoveredBlock7Stack1).
            recoveredBlock7PC := 18.
        ].
        recoveredBlock7Step = 18 ifTrue: [
            recoveredLocal1 := recoveredBlock7Stack0.
            recoveredBlock7PC := 21.
        ].
        recoveredBlock7Step = 21 ifTrue: [
            recoveredBlock7Stack0 := recoveredLocal1.
            recoveredBlock7PC := 24.
        ].
        recoveredBlock7Step = 24 ifTrue: [
            (recoveredBlock7Stack0 ~~ nil) ifTrue: [recoveredBlock7PC := 30] ifFalse: [recoveredBlock7PC := 28].
        ].
        recoveredBlock7Step = 28 ifTrue: [
            recoveredBlock7Stack0 := nil.
            recoveredBlock7PC := 29.
        ].
        recoveredBlock7Step = 29 ifTrue: [
            ^recoveredBlock7Stack0
        ].
        recoveredBlock7Step = 30 ifTrue: [
            recoveredBlock7Stack0 := recoveredLocal1.
            recoveredBlock7PC := 33.
        ].
        recoveredBlock7Step = 33 ifTrue: [
            recoveredBlock7Stack0 := (recoveredBlock7Stack0) value.
            recoveredBlock7PC := 34.
        ].
        recoveredBlock7Step = 34 ifTrue: [
            recoveredBlock7Result := recoveredBlock7Stack0.
            recoveredBlock7Done := true.
        ].
    ].
    recoveredBlock7Result
].
    recoveredValue2 := (self) poolDictionaryAt: (recoveredValue0) ifAbsent: (recoveredValue1).
    recoveredLocal2 := recoveredValue2.
    recoveredValue3 := recoveredLocal2.
    recoveredValue4 := recoveredArg1.
    recoveredValue5 := (recoveredValue3) declareVariable: (recoveredValue4).
    ^recoveredValue5
! !

"kernel.ic method 0x2001b488; bytecode file offset 0x663a4"
!EsSmalltalkDictionary methodsFor: 'recovered'!
declareConstant: recoveredArg1 poolName: recoveredArg2 value: recoveredArg3
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := recoveredArg2.
    recoveredValue1 := [
    | recoveredBlock7Stack0 recoveredBlock7Stack1 recoveredBlock7Stack2 recoveredBlock7PC recoveredBlock7Step recoveredBlock7Done recoveredBlock7Result |
    recoveredBlock7Stack0 := self.
    recoveredBlock7PC := 14.
    recoveredBlock7Done := false.
    [recoveredBlock7Done not] whileTrue: [
        recoveredBlock7Step := recoveredBlock7PC.
        recoveredBlock7Step = 14 ifTrue: [
            recoveredBlock7Stack1 := recoveredArg2.
            recoveredBlock7PC := 17.
        ].
        recoveredBlock7Step = 17 ifTrue: [
            recoveredBlock7Stack0 := (recoveredBlock7Stack0) declarePoolDictionary: (recoveredBlock7Stack1).
            recoveredBlock7PC := 18.
        ].
        recoveredBlock7Step = 18 ifTrue: [
            recoveredLocal1 := recoveredBlock7Stack0.
            recoveredBlock7PC := 21.
        ].
        recoveredBlock7Step = 21 ifTrue: [
            recoveredBlock7Stack0 := recoveredLocal1.
            recoveredBlock7PC := 24.
        ].
        recoveredBlock7Step = 24 ifTrue: [
            (recoveredBlock7Stack0 ~~ nil) ifTrue: [recoveredBlock7PC := 30] ifFalse: [recoveredBlock7PC := 28].
        ].
        recoveredBlock7Step = 28 ifTrue: [
            recoveredBlock7Stack0 := nil.
            recoveredBlock7PC := 29.
        ].
        recoveredBlock7Step = 29 ifTrue: [
            ^recoveredBlock7Stack0
        ].
        recoveredBlock7Step = 30 ifTrue: [
            recoveredBlock7Stack0 := recoveredLocal1.
            recoveredBlock7PC := 33.
        ].
        recoveredBlock7Step = 33 ifTrue: [
            recoveredBlock7Stack0 := (recoveredBlock7Stack0) value.
            recoveredBlock7PC := 34.
        ].
        recoveredBlock7Step = 34 ifTrue: [
            recoveredBlock7Result := recoveredBlock7Stack0.
            recoveredBlock7Done := true.
        ].
    ].
    recoveredBlock7Result
].
    recoveredValue2 := (self) poolDictionaryAt: (recoveredValue0) ifAbsent: (recoveredValue1).
    recoveredLocal2 := recoveredValue2.
    recoveredValue3 := recoveredLocal2.
    recoveredValue4 := recoveredArg1.
    recoveredValue5 := recoveredArg3.
    recoveredValue6 := (recoveredValue3) declareConstant: (recoveredValue4) value: (recoveredValue5).
    ^recoveredValue6
! !

"kernel.ic method 0x2001c780; bytecode file offset 0x676a0"
!EsSmalltalkDictionary methodsFor: 'recovered'!
removeClassNamed: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) asGlobalKey.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack2 := [
    ^nil
].
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := (recoveredStack0) associationAt: (recoveredStack1) ifAbsent: (recoveredStack2).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := (recoveredStack0) value.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack0 := (recoveredStack0) isClass.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 36] ifFalse: [recoveredPC := 34].
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := (recoveredStack1) asGlobalKey.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack2 := [
    ^nil
].
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            (recoveredStack0) removeKey: (recoveredStack1) ifAbsent: (recoveredStack2).
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"kernel.ic method 0x2001cf70; bytecode file offset 0x67e94"
!EsSmalltalkDictionary methodsFor: 'recovered'!
installClass: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) symbol.
    recoveredValue2 := [
    | recoveredBlock8Value0 recoveredBlock8Value1 recoveredBlock8Value2 recoveredBlock8Value3 recoveredBlock8Value4 recoveredBlock8Value5 |
    recoveredBlock8Value0 := recoveredArg1.
    recoveredBlock8Value1 := (recoveredBlock8Value0) symbol.
    recoveredBlock8Value2 := recoveredArg1.
    (self) at: (recoveredBlock8Value1) put: (recoveredBlock8Value2).
    recoveredBlock8Value3 := recoveredArg1.
    recoveredBlock8Value4 := (recoveredBlock8Value3) symbol.
    recoveredBlock8Value5 := (self) associationAt: (recoveredBlock8Value4).
    recoveredBlock8Value5
].
    recoveredValue3 := (self) associationAt: (recoveredValue1) ifAbsent: (recoveredValue2).
    recoveredLocal1 := recoveredValue3.
    recoveredValue4 := recoveredLocal1.
    (recoveredValue4) markReadOnly: (false).
    recoveredValue5 := recoveredLocal1.
    recoveredValue6 := recoveredArg1.
    (recoveredValue5) value: (recoveredValue6).
    recoveredValue7 := recoveredLocal1.
    (recoveredValue7) markReadOnly: (true).
    recoveredValue8 := recoveredArg1.
    ^recoveredValue8
! !

"kernel.ic method 0x200231d8; bytecode file offset 0x6e108"
!EsSmalltalkDictionary methodsFor: 'recovered'!
at: recoveredArg1 put: recoveredArg2
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := [
    | recoveredBlock7Value0 recoveredBlock7Value1 recoveredBlock7Value2 recoveredBlock7Value3 recoveredBlock7Value4 recoveredBlock7Value5 recoveredBlock7Value6 recoveredBlock7Value7 recoveredBlock7Value8 recoveredBlock7Value9 recoveredBlock7Value10 recoveredBlock7Value11 |
    recoveredBlock7Value0 := (self) removedAssociations.
    recoveredBlock7Value1 := recoveredArg1.
    recoveredBlock7Value2 := [
    | recoveredBlock7Block18Value0 recoveredBlock7Block18Value1 recoveredBlock7Block18Value2 |
    recoveredBlock7Block18Value0 := recoveredArg1.
    recoveredBlock7Block18Value1 := recoveredArg2.
    recoveredBlock7Block18Value2 := super at: (recoveredBlock7Block18Value0) put: (recoveredBlock7Block18Value1).
    ^recoveredBlock7Block18Value2
].
    recoveredBlock7Value3 := (recoveredBlock7Value0) associationAt: (recoveredBlock7Value1) ifAbsent: (recoveredBlock7Value2).
    recoveredLocal1 := recoveredBlock7Value3.
    recoveredBlock7Value4 := (self) removedAssociations.
    recoveredBlock7Value5 := recoveredLocal1.
    recoveredBlock7Value6 := (recoveredBlock7Value5) key.
    (recoveredBlock7Value4) removeKey: (recoveredBlock7Value6).
    recoveredBlock7Value7 := recoveredLocal1.
    recoveredBlock7Value8 := recoveredBlock7Value7.
    (recoveredBlock7Value8) markReadOnly: (false).
    recoveredBlock7Value9 := recoveredArg2.
    (recoveredBlock7Value7) value: (recoveredBlock7Value9).
    recoveredBlock7Value10 := recoveredLocal1.
    super add: (recoveredBlock7Value10).
    recoveredBlock7Value11 := recoveredArg2.
    ^recoveredBlock7Value11
].
    recoveredValue2 := (self) associationAt: (recoveredValue0) ifAbsent: (recoveredValue1).
    recoveredLocal1 := recoveredValue2.
    recoveredValue3 := recoveredLocal1.
    recoveredValue4 := recoveredArg2.
    (recoveredValue3) value: (recoveredValue4).
    recoveredValue5 := recoveredArg2.
    ^recoveredValue5
! !

"kernel.ic method 0x20023328; bytecode file offset 0x6e264"
!EsSmalltalkDictionary methodsFor: 'recovered'!
purgeRemovedAssociations
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) removedAssociations.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) keys.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := (recoveredStack0) isEmpty.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := (recoveredStack0) owningImage.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := (recoveredStack0) allClasses.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := [:recoveredBlock20Arg1 | 
    | recoveredBlock20Value0 recoveredBlock20Value1 recoveredBlock20Value2 |
    recoveredBlock20Value0 := recoveredBlock20Arg1.
    recoveredBlock20Value1 := [:recoveredBlock20Block27Arg1 | 
    | recoveredBlock20Block27Value0 recoveredBlock20Block27Value1 recoveredBlock20Block27Value2 |
    recoveredBlock20Block27Value0 := recoveredBlock20Block27Arg1.
    recoveredBlock20Block27Value1 := [:recoveredBlock20Block27Block35Arg1 | 
    | recoveredBlock20Block27Block35Stack0 recoveredBlock20Block27Block35Stack1 recoveredBlock20Block27Block35Stack2 recoveredBlock20Block27Block35Stack3 recoveredBlock20Block27Block35Stack4 recoveredBlock20Block27Block35PC recoveredBlock20Block27Block35Step recoveredBlock20Block27Block35Done recoveredBlock20Block27Block35Result |
    recoveredBlock20Block27Block35Stack0 := nil.
    recoveredBlock20Block27Block35PC := 42.
    recoveredBlock20Block27Block35Done := false.
    [recoveredBlock20Block27Block35Done not] whileTrue: [
        recoveredBlock20Block27Block35Step := recoveredBlock20Block27Block35PC.
        recoveredBlock20Block27Block35Step = 42 ifTrue: [
            recoveredBlock20Block27Block35Stack1 := nil.
            recoveredBlock20Block27Block35PC := 43.
        ].
        recoveredBlock20Block27Block35Step = 43 ifTrue: [
            recoveredBlock20Block27Block35Stack2 := recoveredBlock20Block27Block35Arg1.
            recoveredBlock20Block27Block35PC := 44.
        ].
        recoveredBlock20Block27Block35Step = 44 ifTrue: [
            recoveredBlock20Block27Block35Stack2 := (recoveredBlock20Block27Block35Stack2) isAssociation.
            recoveredBlock20Block27Block35PC := 46.
        ].
        recoveredBlock20Block27Block35Step = 46 ifTrue: [
            (recoveredBlock20Block27Block35Stack2) ifTrue: [recoveredBlock20Block27Block35PC := 50] ifFalse: [recoveredBlock20Block27Block35PC := 73].
        ].
        recoveredBlock20Block27Block35Step = 50 ifTrue: [
            recoveredBlock20Block27Block35PC := 51.
        ].
        recoveredBlock20Block27Block35Step = 51 ifTrue: [
            recoveredBlock20Block27Block35Stack1 := nil.
            recoveredBlock20Block27Block35PC := 52.
        ].
        recoveredBlock20Block27Block35Step = 52 ifTrue: [
            recoveredBlock20Block27Block35Stack2 := recoveredLocal1.
            recoveredBlock20Block27Block35PC := 55.
        ].
        recoveredBlock20Block27Block35Step = 55 ifTrue: [
            recoveredBlock20Block27Block35Stack3 := recoveredBlock20Block27Block35Arg1.
            recoveredBlock20Block27Block35PC := 56.
        ].
        recoveredBlock20Block27Block35Step = 56 ifTrue: [
            recoveredBlock20Block27Block35Stack3 := (recoveredBlock20Block27Block35Stack3) key.
            recoveredBlock20Block27Block35PC := 58.
        ].
        recoveredBlock20Block27Block35Step = 58 ifTrue: [
            recoveredBlock20Block27Block35Stack2 := (recoveredBlock20Block27Block35Stack2) includes: (recoveredBlock20Block27Block35Stack3).
            recoveredBlock20Block27Block35PC := 60.
        ].
        recoveredBlock20Block27Block35Step = 60 ifTrue: [
            (recoveredBlock20Block27Block35Stack2) ifTrue: [recoveredBlock20Block27Block35PC := 64] ifFalse: [recoveredBlock20Block27Block35PC := 73].
        ].
        recoveredBlock20Block27Block35Step = 64 ifTrue: [
            recoveredBlock20Block27Block35PC := 65.
        ].
        recoveredBlock20Block27Block35Step = 65 ifTrue: [
            recoveredBlock20Block27Block35Stack1 := recoveredLocal1.
            recoveredBlock20Block27Block35PC := 68.
        ].
        recoveredBlock20Block27Block35Step = 68 ifTrue: [
            recoveredBlock20Block27Block35Stack2 := recoveredBlock20Block27Block35Arg1.
            recoveredBlock20Block27Block35PC := 69.
        ].
        recoveredBlock20Block27Block35Step = 69 ifTrue: [
            recoveredBlock20Block27Block35Stack2 := (recoveredBlock20Block27Block35Stack2) key.
            recoveredBlock20Block27Block35PC := 71.
        ].
        recoveredBlock20Block27Block35Step = 71 ifTrue: [
            recoveredBlock20Block27Block35Stack1 := (recoveredBlock20Block27Block35Stack1) remove: (recoveredBlock20Block27Block35Stack2).
            recoveredBlock20Block27Block35PC := 73.
        ].
        recoveredBlock20Block27Block35Step = 73 ifTrue: [
            recoveredBlock20Block27Block35Result := recoveredBlock20Block27Block35Stack1.
            recoveredBlock20Block27Block35Done := true.
        ].
    ].
    recoveredBlock20Block27Block35Result
].
    recoveredBlock20Block27Value2 := (recoveredBlock20Block27Value0) do: (recoveredBlock20Block27Value1).
    recoveredBlock20Block27Value2
].
    recoveredBlock20Value2 := (recoveredBlock20Value0) methodsDo: (recoveredBlock20Value1).
    recoveredBlock20Value2
].
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack0 := (recoveredStack0) removedAssociations.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            (recoveredStack0) removeAllKeys: (recoveredStack1).
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"kernel.ic method 0x200240d8; bytecode file offset 0x6f020"
!EsSmalltalkDictionary methodsFor: 'recovered'!
poolDictionaryAt: recoveredArg1 ifAbsent: recoveredArg2
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) asGlobalKey.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack2 := [
    | recoveredBlock8Value0 recoveredBlock8Value1 |
    recoveredBlock8Value0 := recoveredArg2.
    recoveredBlock8Value1 := (recoveredBlock8Value0) value.
    ^recoveredBlock8Value1
].
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1) ifAbsent: (recoveredStack2).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := EsPoolDictionary.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack0 := (recoveredStack0) isKindOf: (recoveredStack1).
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 34] ifFalse: [recoveredPC := 38].
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack0 := (recoveredStack0) class.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack1 := Dictionary.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            (recoveredStack0 ~~ recoveredStack1) ifTrue: [recoveredPC := 91] ifFalse: [recoveredPC := 48].
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack0 := (recoveredStack0) keys.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack1 := [:block28009380Arg1 | 
    | block28009380Value0 block28009380Value1 |
    block28009380Value0 := block28009380Arg1.
    block28009380Value1 := (block28009380Value0) isString.
    block28009380Value1
].
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack0 := (recoveredStack0) conform: (recoveredStack1).
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 68] ifFalse: [recoveredPC := 91].
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack1 := (recoveredStack1) asGlobalKey.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack2 := EsPoolDictionary.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack3 := (recoveredStack3) size.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack2 := (recoveredStack2) new: (recoveredStack3).
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack3 := recoveredStack2.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack4 := recoveredLocal1.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            (recoveredStack3) addAll: (recoveredStack4).
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1) put: (recoveredStack2).
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 91 ifTrue: [
            recoveredStack0 := recoveredArg2.
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack0 := (recoveredStack0) value.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"kernel.ic method 0x20024d04; bytecode file offset 0x6fc38"
!EsSmalltalkDictionary methodsFor: 'recovered'!
add: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) isReadOnly.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (recoveredValue2) key.
    recoveredValue4 := [
    | recoveredBlock15Value0 recoveredBlock15Value1 recoveredBlock15Value2 recoveredBlock15Value3 recoveredBlock15Value4 recoveredBlock15Value5 recoveredBlock15Value6 recoveredBlock15Value7 recoveredBlock15Value8 recoveredBlock15Value9 recoveredBlock15Value10 recoveredBlock15Value11 recoveredBlock15Value12 recoveredBlock15Value13 recoveredBlock15Value14 recoveredBlock15Value15 |
    recoveredBlock15Value0 := (self) removedAssociations.
    recoveredBlock15Value1 := recoveredArg1.
    recoveredBlock15Value2 := (recoveredBlock15Value1) key.
    recoveredBlock15Value3 := [
    | recoveredBlock15Block27Value0 recoveredBlock15Block27Value1 |
    recoveredBlock15Block27Value0 := recoveredArg1.
    recoveredBlock15Block27Value1 := super add: (recoveredBlock15Block27Value0).
    ^recoveredBlock15Block27Value1
].
    recoveredBlock15Value4 := (recoveredBlock15Value0) associationAt: (recoveredBlock15Value2) ifAbsent: (recoveredBlock15Value3).
    recoveredLocal2 := recoveredBlock15Value4.
    recoveredBlock15Value5 := (self) removedAssociations.
    recoveredBlock15Value6 := recoveredLocal2.
    recoveredBlock15Value7 := (recoveredBlock15Value6) key.
    (recoveredBlock15Value5) removeKey: (recoveredBlock15Value7).
    recoveredBlock15Value8 := recoveredLocal2.
    recoveredBlock15Value9 := recoveredBlock15Value8.
    (recoveredBlock15Value9) markReadOnly: (false).
    recoveredBlock15Value10 := recoveredBlock15Value8.
    recoveredBlock15Value11 := recoveredArg1.
    recoveredBlock15Value12 := (recoveredBlock15Value11) value.
    (recoveredBlock15Value10) value: (recoveredBlock15Value12).
    recoveredBlock15Value13 := recoveredLocal1.
    (recoveredBlock15Value8) markReadOnly: (recoveredBlock15Value13).
    recoveredBlock15Value14 := recoveredLocal2.
    recoveredBlock15Value15 := super add: (recoveredBlock15Value14).
    ^recoveredBlock15Value15
].
    recoveredValue5 := (self) associationAt: (recoveredValue3) ifAbsent: (recoveredValue4).
    recoveredLocal2 := recoveredValue5.
    recoveredValue6 := recoveredLocal2.
    recoveredValue7 := recoveredArg1.
    recoveredValue8 := (recoveredValue7) value.
    (recoveredValue6) value: (recoveredValue8).
    recoveredValue9 := recoveredLocal2.
    ^recoveredValue9
! !

"kernel.ic method 0x20025878; bytecode file offset 0x707bc"
!EsSmalltalkDictionary methodsFor: 'recovered'!
removeKey: recoveredArg1 ifAbsent: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := [
    | recoveredBlock7Value0 recoveredBlock7Value1 |
    recoveredBlock7Value0 := recoveredArg2.
    recoveredBlock7Value1 := (recoveredBlock7Value0) value.
    ^recoveredBlock7Value1
].
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := (recoveredStack0) associationAt: (recoveredStack1) ifAbsent: (recoveredStack2).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := (recoveredStack0) isReadOnly.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 32] ifFalse: [recoveredPC := 38].
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            (recoveredStack0) markReadOnly: (recoveredStack1).
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack0 := (recoveredStack0) value.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack0 := (recoveredStack0) isClass.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 52] ifFalse: [recoveredPC := 72].
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack1 := MxKRN12.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack2 := (recoveredStack2) key.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack2 := (recoveredStack2) asString.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack1 := (recoveredStack1) bindWith: (recoveredStack2).
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            (recoveredStack0) value: (recoveredStack1).
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredPC := 78.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            (recoveredStack0) value: (recoveredStack1).
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack0 := (recoveredStack0) removedAssociations.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            (recoveredStack0) add: (recoveredStack1).
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack2 := [
    | recoveredBlock90Value0 recoveredBlock90Value1 |
    recoveredBlock90Value0 := recoveredArg2.
    recoveredBlock90Value1 := (recoveredBlock90Value0) value.
    ^recoveredBlock90Value1
].
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            super removeKey: (recoveredStack1) ifAbsent: (recoveredStack2).
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"kernel.ic method 0x2002a02c; bytecode file offset 0x74f80"
!EsSmalltalkDictionary methodsFor: 'recovered'!
declarePoolDictionary: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) asGlobalKey.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := [
    | recoveredBlock14Value0 recoveredBlock14Value1 recoveredBlock14Value2 recoveredBlock14Value3 recoveredBlock14Value4 |
    recoveredBlock14Value0 := recoveredLocal3.
    recoveredBlock14Value1 := EsPoolDictionary.
    recoveredBlock14Value2 := (recoveredBlock14Value1) new.
    (self) at: (recoveredBlock14Value0) put: (recoveredBlock14Value2).
    recoveredBlock14Value3 := recoveredLocal3.
    recoveredBlock14Value4 := (self) associationAt: (recoveredBlock14Value3).
    ^recoveredBlock14Value4
].
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack0 := (recoveredStack0) associationAt: (recoveredStack1) ifAbsent: (recoveredStack2).
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack0 := (recoveredStack0) value.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 64] ifFalse: [recoveredPC := 54].
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack2 := EsPoolDictionary.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack2 := (recoveredStack2) new.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            (recoveredStack1) value: (recoveredStack2).
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack1 := EsPoolDictionary.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack0 := (recoveredStack0) isKindOf: (recoveredStack1).
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 74] ifFalse: [recoveredPC := 78].
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack1 := Dictionary.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack0 := (recoveredStack0) isKindOf: (recoveredStack1).
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 90] ifFalse: [recoveredPC := 88].
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredStack0 := (recoveredStack0) class.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredStack1 := Dictionary.
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            (recoveredStack0 ~~ recoveredStack1) ifTrue: [recoveredPC := 144] ifFalse: [recoveredPC := 100].
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            recoveredStack0 := (recoveredStack0) keys.
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            recoveredStack1 := [:block280094c4Arg1 | 
    | block280094c4Value0 block280094c4Value1 |
    block280094c4Value0 := block280094c4Arg1.
    block280094c4Value1 := (block280094c4Value0) isString.
    block280094c4Value1
].
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            recoveredPC := 114.
        ].
        recoveredStep = 114 ifTrue: [
            recoveredStack0 := (recoveredStack0) conform: (recoveredStack1).
            recoveredPC := 116.
        ].
        recoveredStep = 116 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 120] ifFalse: [recoveredPC := 144].
        ].
        recoveredStep = 120 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 123.
        ].
        recoveredStep = 123 ifTrue: [
            recoveredStack1 := EsPoolDictionary.
            recoveredPC := 125.
        ].
        recoveredStep = 125 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 128.
        ].
        recoveredStep = 128 ifTrue: [
            recoveredStack2 := (recoveredStack2) size.
            recoveredPC := 130.
        ].
        recoveredStep = 130 ifTrue: [
            recoveredStack1 := (recoveredStack1) new: (recoveredStack2).
            recoveredPC := 132.
        ].
        recoveredStep = 132 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 133.
        ].
        recoveredStep = 133 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 136.
        ].
        recoveredStep = 136 ifTrue: [
            (recoveredStack2) addAll: (recoveredStack3).
            recoveredPC := 138.
        ].
        recoveredStep = 138 ifTrue: [
            (recoveredStack0) value: (recoveredStack1).
            recoveredPC := 140.
        ].
        recoveredStep = 140 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 143.
        ].
        recoveredStep = 143 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 144 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 145.
        ].
        recoveredStep = 145 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

