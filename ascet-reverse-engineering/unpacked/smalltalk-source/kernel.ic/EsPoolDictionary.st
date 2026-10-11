"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"kernel.ic method 0x200016a0; bytecode file offset 0x4c844"
!EsPoolDictionary methodsFor: 'recovered'!
species
    | recoveredValue0 |
    recoveredValue0 := Dictionary.
    ^recoveredValue0
! !

"kernel.ic method 0x20002158; bytecode file offset 0x4d074"
!EsPoolDictionary methodsFor: 'recovered'!
emConvertKey: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) asPoolKey.
    ^recoveredValue1
! !

"kernel.ic method 0x20002634; bytecode file offset 0x4d578"
!EsPoolDictionary methodsFor: 'recovered'!
isNlsPool
    | recoveredValue0 |
    recoveredValue0 := (self) includesKey: ('!!LOCALE').
    ^recoveredValue0
! !

"kernel.ic method 0x200058a4; bytecode file offset 0x507f8"
!EsPoolDictionary methodsFor: 'recovered'!
locale: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) at: ('!!LOCALE') put: (recoveredValue0).
    ^recoveredValue1
! !

"kernel.ic method 0x200058b4; bytecode file offset 0x507f8"
!EsPoolDictionary methodsFor: 'recovered'!
relocalizeNeeded: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) at: ('!!RELOCALIZE') put: (recoveredValue0).
    ^recoveredValue1
! !

"kernel.ic method 0x200058c4; bytecode file offset 0x507f8"
!EsPoolDictionary methodsFor: 'recovered'!
catalogName: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) at: ('!!CATALOGNAME') put: (recoveredValue0).
    ^recoveredValue1
! !

"kernel.ic method 0x200058d4; bytecode file offset 0x507f8"
!EsPoolDictionary methodsFor: 'recovered'!
resident: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) at: ('!!RESIDENT') put: (recoveredValue0).
    ^recoveredValue1
! !

"kernel.ic method 0x200058e4; bytecode file offset 0x507f8"
!EsPoolDictionary methodsFor: 'recovered'!
requestedLocale: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) at: ('!!REQUESTEDLOCALE') put: (recoveredValue0).
    ^recoveredValue1
! !

"kernel.ic method 0x20005a58; bytecode file offset 0x5096c"
!EsPoolDictionary methodsFor: 'recovered'!
relocalizeTo: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) catalogName.
    recoveredValue2 := (self) relocalizeTo: (recoveredValue0) catalogName: (recoveredValue1).
    ^recoveredValue2
! !

"kernel.ic method 0x200060c4; bytecode file offset 0x51004"
!EsPoolDictionary methodsFor: 'recovered'!
locale
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := [].
    recoveredValue1 := (self) at: ('!!LOCALE') ifAbsent: (recoveredValue0).
    ^recoveredValue1
! !

"kernel.ic method 0x200060d8; bytecode file offset 0x51004"
!EsPoolDictionary methodsFor: 'recovered'!
requestedLocale
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := [].
    recoveredValue1 := (self) at: ('!!REQUESTEDLOCALE') ifAbsent: (recoveredValue0).
    ^recoveredValue1
! !

"kernel.ic method 0x200060ec; bytecode file offset 0x51004"
!EsPoolDictionary methodsFor: 'recovered'!
catalogName
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := [].
    recoveredValue1 := (self) at: ('!!CATALOGNAME') ifAbsent: (recoveredValue0).
    ^recoveredValue1
! !

"kernel.ic method 0x2000a3fc; bytecode file offset 0x55320"
!EsPoolDictionary methodsFor: 'recovered'!
expand
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := elements.
    recoveredValue1 := (recoveredValue0) size.
    recoveredValue2 := (recoveredValue1) // (2).
    recoveredValue3 := elements.
    recoveredValue4 := (recoveredValue3) size.
    recoveredValue5 := (recoveredValue2) + (recoveredValue4).
    recoveredValue6 := (self) rehash: (recoveredValue5).
    ^recoveredValue6
! !

"kernel.ic method 0x2000af28; bytecode file offset 0x55e54"
!EsPoolDictionary methodsFor: 'recovered'!
relocalizeNeeded
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := '!!RELOCALIZE'.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := [
    false
].
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1) ifAbsent: (recoveredStack2).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"kernel.ic method 0x2000af3c; bytecode file offset 0x55e54"
!EsPoolDictionary methodsFor: 'recovered'!
resident
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := '!!RESIDENT'.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := [
    false
].
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1) ifAbsent: (recoveredStack2).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"kernel.ic method 0x2000bbc4; bytecode file offset 0x56ae8"
!EsPoolDictionary methodsFor: 'recovered'!
initialize: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := Array.
    recoveredValue1 := String.
    recoveredValue2 := (recoveredValue1) new.
    recoveredValue3 := (recoveredValue0) with: (recoveredValue2).
    strings := recoveredValue3.
    recoveredValue4 := recoveredArg1.
    recoveredValue5 := super initialize: (recoveredValue4).
    ^recoveredValue5
! !

"kernel.ic method 0x2000f8cc; bytecode file offset 0x5a7e4"
!EsPoolDictionary methodsFor: 'recovered'!
residentMsg: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := [
    | recoveredBlock7Value0 recoveredBlock7Value1 |
    recoveredBlock7Value0 := recoveredArg1.
    recoveredBlock7Value1 := ('MISSING %1') bindWith: (recoveredBlock7Value0).
    ^recoveredBlock7Value1
].
    recoveredValue2 := (self) at: (recoveredValue0) ifAbsent: (recoveredValue1).
    ^recoveredValue2
! !

"kernel.ic method 0x20011410; bytecode file offset 0x5c338"
!EsPoolDictionary methodsFor: 'recovered'!
makeNlsPoolWithCatalog: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    (self) relocalizeNeeded: (true).
    recoveredValue0 := recoveredArg1.
    (self) catalogName: (recoveredValue0).
    recoveredValue1 := (self) locale.
    (self) locale: (recoveredValue1).
    recoveredValue2 := (self) requestedLocale.
    (self) requestedLocale: (recoveredValue2).
    (self) resident: (false).
    ^self
! !

"kernel.ic method 0x20011548; bytecode file offset 0x5c468"
!EsPoolDictionary methodsFor: 'recovered'!
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
    | block28008bccValue0 block28008bccValue1 |
    block28008bccValue0 := ExCLDTKeyNotFound.
    block28008bccValue1 := (block28008bccValue0) signal.
    block28008bccValue1
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

"kernel.ic method 0x200138c4; bytecode file offset 0x5e7e0"
!EsPoolDictionary methodsFor: 'recovered'!
makeResident: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := (recoveredStack2) resident.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 24].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            (recoveredStack1) installMessagesIntoPool.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredPC := 27.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            (recoveredStack1) removeMessagesFromPool.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            (recoveredStack0) resident: (recoveredStack1).
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"kernel.ic method 0x20014924; bytecode file offset 0x5f844"
!EsPoolDictionary methodsFor: 'recovered'!
deepCopy
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := (self) species.
    recoveredValue1 := elementCount.
    recoveredValue2 := (recoveredValue0) new: (recoveredValue1).
    recoveredLocal1 := recoveredValue2.
    recoveredValue3 := [:recoveredBlock12Arg1 :recoveredBlock12Arg2 | 
    | recoveredBlock12Value0 recoveredBlock12Value1 recoveredBlock12Value2 recoveredBlock12Value3 recoveredBlock12Value4 recoveredBlock12Value5 |
    recoveredBlock12Value0 := recoveredLocal1.
    recoveredBlock12Value1 := recoveredBlock12Arg1.
    recoveredBlock12Value2 := (recoveredBlock12Value1) copy.
    recoveredBlock12Value3 := recoveredBlock12Arg2.
    recoveredBlock12Value4 := (recoveredBlock12Value3) copy.
    recoveredBlock12Value5 := (recoveredBlock12Value0) at: (recoveredBlock12Value2) put: (recoveredBlock12Value4).
    recoveredBlock12Value5
].
    (self) keysAndValuesDo: (recoveredValue3).
    recoveredValue4 := recoveredLocal1.
    ^recoveredValue4
! !

"kernel.ic method 0x20016210; bytecode file offset 0x61164"
!EsPoolDictionary methodsFor: 'recovered'!
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

"kernel.ic method 0x200183a4; bytecode file offset 0x632d0"
!EsPoolDictionary methodsFor: 'recovered'!
removeMessagesFromPool
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := OrderedCollection.
    recoveredValue1 := (self) size.
    recoveredValue2 := (recoveredValue0) new: (recoveredValue1).
    recoveredLocal1 := recoveredValue2.
    recoveredValue3 := [:recoveredBlock12Arg1 | 
    | recoveredBlock12Stack0 recoveredBlock12Stack1 recoveredBlock12Stack2 recoveredBlock12Stack3 recoveredBlock12PC recoveredBlock12Step recoveredBlock12Done recoveredBlock12Result |
    recoveredBlock12Stack0 := self.
    recoveredBlock12PC := 18.
    recoveredBlock12Done := false.
    [recoveredBlock12Done not] whileTrue: [
        recoveredBlock12Step := recoveredBlock12PC.
        recoveredBlock12Step = 18 ifTrue: [
            recoveredBlock12Stack1 := nil.
            recoveredBlock12PC := 19.
        ].
        recoveredBlock12Step = 19 ifTrue: [
            recoveredBlock12Stack2 := recoveredBlock12Arg1.
            recoveredBlock12PC := 20.
        ].
        recoveredBlock12Step = 20 ifTrue: [
            recoveredBlock12Stack2 := (recoveredBlock12Stack2) first.
            recoveredBlock12PC := 21.
        ].
        recoveredBlock12Step = 21 ifTrue: [
            recoveredBlock12Stack2 := (recoveredBlock12Stack2) isDigit.
            recoveredBlock12PC := 23.
        ].
        recoveredBlock12Step = 23 ifTrue: [
            (recoveredBlock12Stack2) ifTrue: [recoveredBlock12PC := 26] ifFalse: [recoveredBlock12PC := 33].
        ].
        recoveredBlock12Step = 26 ifTrue: [
            recoveredBlock12PC := 27.
        ].
        recoveredBlock12Step = 27 ifTrue: [
            recoveredBlock12Stack1 := recoveredLocal1.
            recoveredBlock12PC := 30.
        ].
        recoveredBlock12Step = 30 ifTrue: [
            recoveredBlock12Stack2 := recoveredBlock12Arg1.
            recoveredBlock12PC := 31.
        ].
        recoveredBlock12Step = 31 ifTrue: [
            recoveredBlock12Stack1 := (recoveredBlock12Stack1) add: (recoveredBlock12Stack2).
            recoveredBlock12PC := 33.
        ].
        recoveredBlock12Step = 33 ifTrue: [
            recoveredBlock12Result := recoveredBlock12Stack1.
            recoveredBlock12Done := true.
        ].
    ].
    recoveredBlock12Result
].
    (self) keysDo: (recoveredValue3).
    recoveredValue4 := recoveredLocal1.
    (self) removeAllKeys: (recoveredValue4).
    ^self
! !

"kernel.ic method 0x200197f4; bytecode file offset 0x64714"
!EsPoolDictionary methodsFor: 'recovered'!
verifyRelocalize: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 |
    recoveredLocal1 := false.
    recoveredValue0 := [:recoveredBlock8Arg1 | 
    | recoveredBlock8Stack0 recoveredBlock8Stack1 recoveredBlock8Stack2 recoveredBlock8Stack3 recoveredBlock8Stack4 recoveredBlock8PC recoveredBlock8Step recoveredBlock8Done recoveredBlock8Result |
    recoveredBlock8Stack0 := self.
    recoveredBlock8PC := 14.
    recoveredBlock8Done := false.
    [recoveredBlock8Done not] whileTrue: [
        recoveredBlock8Step := recoveredBlock8PC.
        recoveredBlock8Step = 14 ifTrue: [
            recoveredBlock8Stack1 := nil.
            recoveredBlock8PC := 15.
        ].
        recoveredBlock8Step = 15 ifTrue: [
            recoveredBlock8Stack2 := recoveredBlock8Arg1.
            recoveredBlock8PC := 16.
        ].
        recoveredBlock8Step = 16 ifTrue: [
            recoveredBlock8Stack2 := (recoveredBlock8Stack2) value.
            recoveredBlock8PC := 17.
        ].
        recoveredBlock8Step = 17 ifTrue: [
            (recoveredBlock8Stack2 ~~ nil) ifTrue: [recoveredBlock8PC := 36] ifFalse: [recoveredBlock8PC := 20].
        ].
        recoveredBlock8Step = 20 ifTrue: [
            recoveredBlock8Stack2 := recoveredBlock8Arg1.
            recoveredBlock8PC := 21.
        ].
        recoveredBlock8Step = 21 ifTrue: [
            recoveredBlock8Stack2 := (recoveredBlock8Stack2) key.
            recoveredBlock8PC := 22.
        ].
        recoveredBlock8Step = 22 ifTrue: [
            recoveredBlock8Stack2 := (recoveredBlock8Stack2) first.
            recoveredBlock8PC := 23.
        ].
        recoveredBlock8Step = 23 ifTrue: [
            recoveredBlock8Stack3 := $!!.
            recoveredBlock8PC := 26.
        ].
        recoveredBlock8Step = 26 ifTrue: [
            recoveredBlock8Stack2 := (recoveredBlock8Stack2) ~= (recoveredBlock8Stack3).
            recoveredBlock8PC := 27.
        ].
        recoveredBlock8Step = 27 ifTrue: [
            (recoveredBlock8Stack2) ifTrue: [recoveredBlock8PC := 30] ifFalse: [recoveredBlock8PC := 36].
        ].
        recoveredBlock8Step = 30 ifTrue: [
            recoveredBlock8PC := 31.
        ].
        recoveredBlock8Step = 31 ifTrue: [
            recoveredBlock8Stack1 := true.
            recoveredBlock8PC := 32.
        ].
        recoveredBlock8Step = 32 ifTrue: [
            recoveredBlock8Stack2 := recoveredBlock8Stack1.
            recoveredBlock8PC := 33.
        ].
        recoveredBlock8Step = 33 ifTrue: [
            recoveredLocal1 := recoveredBlock8Stack2.
            recoveredBlock8PC := 36.
        ].
        recoveredBlock8Step = 36 ifTrue: [
            recoveredBlock8Result := recoveredBlock8Stack1.
            recoveredBlock8Done := true.
        ].
    ].
    recoveredBlock8Result
].
    (self) associationsDo: (recoveredValue0).
    recoveredValue1 := recoveredLocal1.
    (self) relocalizeNeeded: (recoveredValue1).
    ^self
! !

"kernel.ic method 0x20020d10; bytecode file offset 0x6bc54"
!EsPoolDictionary methodsFor: 'recovered'!
declareFromCatalog: recoveredArg1 locale: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack2 := true.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1) relocalizeNeeded: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack1) catalogName: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := (recoveredStack2) locale.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack1) locale: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack2 := (recoveredStack2) requestedLocale.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            (recoveredStack1) requestedLocale: (recoveredStack2).
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            (recoveredStack0) resident: (recoveredStack1).
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := System.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := (recoveredStack0) startUpClass.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack0 := (recoveredStack0) localesIn: (recoveredStack1).
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 44] ifFalse: [recoveredPC := 38].
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack0 := (recoveredStack0) isEmpty.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 44] ifFalse: [recoveredPC := 46].
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack0 := (recoveredStack0) includes: (recoveredStack1).
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 54] ifFalse: [recoveredPC := 60].
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack0 := recoveredArg2.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredPC := 64.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack0 := (recoveredStack0) first.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack0 := System.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack0 := (recoveredStack0) startUpClass.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack0 := (recoveredStack0) declareKeysFor: (recoveredStack1) locale: (recoveredStack2) catalog: (recoveredStack3).
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"kernel.ic method 0x20021c14; bytecode file offset 0x6cb50"
!EsPoolDictionary methodsFor: 'recovered'!
failedRelocalize: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) catalogName.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := 'in UNKNOWN'.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredPC := 29.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := ' in '.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := (recoveredStack0) , (recoveredStack1).
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := [:recoveredBlock30Arg1 | 
    | recoveredBlock30Stack0 recoveredBlock30Stack1 recoveredBlock30Stack2 recoveredBlock30Stack3 recoveredBlock30Stack4 recoveredBlock30PC recoveredBlock30Step recoveredBlock30Done recoveredBlock30Result |
    recoveredBlock30Stack0 := self.
    recoveredBlock30PC := 36.
    recoveredBlock30Done := false.
    [recoveredBlock30Done not] whileTrue: [
        recoveredBlock30Step := recoveredBlock30PC.
        recoveredBlock30Step = 36 ifTrue: [
            recoveredBlock30Stack1 := nil.
            recoveredBlock30PC := 37.
        ].
        recoveredBlock30Step = 37 ifTrue: [
            recoveredBlock30Stack2 := recoveredBlock30Arg1.
            recoveredBlock30PC := 38.
        ].
        recoveredBlock30Step = 38 ifTrue: [
            recoveredBlock30Stack2 := (recoveredBlock30Stack2) key.
            recoveredBlock30PC := 40.
        ].
        recoveredBlock30Step = 40 ifTrue: [
            recoveredBlock30Stack2 := (recoveredBlock30Stack2) first.
            recoveredBlock30PC := 42.
        ].
        recoveredBlock30Step = 42 ifTrue: [
            recoveredBlock30Stack3 := $!!.
            recoveredBlock30PC := 46.
        ].
        recoveredBlock30Step = 46 ifTrue: [
            recoveredBlock30Stack2 := (recoveredBlock30Stack2) ~= (recoveredBlock30Stack3).
            recoveredBlock30PC := 47.
        ].
        recoveredBlock30Step = 47 ifTrue: [
            (recoveredBlock30Stack2) ifTrue: [recoveredBlock30PC := 50] ifFalse: [recoveredBlock30PC := 64].
        ].
        recoveredBlock30Step = 50 ifTrue: [
            recoveredBlock30PC := 51.
        ].
        recoveredBlock30Step = 51 ifTrue: [
            recoveredBlock30Stack1 := recoveredBlock30Arg1.
            recoveredBlock30PC := 52.
        ].
        recoveredBlock30Step = 52 ifTrue: [
            recoveredBlock30Stack2 := 'MISSING '.
            recoveredBlock30PC := 54.
        ].
        recoveredBlock30Step = 54 ifTrue: [
            recoveredBlock30Stack3 := recoveredBlock30Arg1.
            recoveredBlock30PC := 55.
        ].
        recoveredBlock30Step = 55 ifTrue: [
            recoveredBlock30Stack3 := (recoveredBlock30Stack3) key.
            recoveredBlock30PC := 57.
        ].
        recoveredBlock30Step = 57 ifTrue: [
            recoveredBlock30Stack2 := (recoveredBlock30Stack2) , (recoveredBlock30Stack3).
            recoveredBlock30PC := 58.
        ].
        recoveredBlock30Step = 58 ifTrue: [
            recoveredBlock30Stack3 := recoveredLocal1.
            recoveredBlock30PC := 61.
        ].
        recoveredBlock30Step = 61 ifTrue: [
            recoveredBlock30Stack2 := (recoveredBlock30Stack2) , (recoveredBlock30Stack3).
            recoveredBlock30PC := 62.
        ].
        recoveredBlock30Step = 62 ifTrue: [
            recoveredBlock30Stack1 := (recoveredBlock30Stack1) value: (recoveredBlock30Stack2).
            recoveredBlock30PC := 64.
        ].
        recoveredBlock30Step = 64 ifTrue: [
            recoveredBlock30Result := recoveredBlock30Stack1.
            recoveredBlock30Done := true.
        ].
    ].
    recoveredBlock30Result
].
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            (recoveredStack0) associationsDo: (recoveredStack1).
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack2 := nil.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            (recoveredStack1) locale: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack2 := nil.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            (recoveredStack1) requestedLocale: (recoveredStack2).
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            (recoveredStack0) relocalizeNeeded: (recoveredStack1).
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"kernel.ic method 0x20028874; bytecode file offset 0x737c4"
!EsPoolDictionary methodsFor: 'recovered'!
relocalizeTo: recoveredArg1 catalogName: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) resident.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 8] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := recoveredArg2.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := (recoveredStack0) failedRelocalize: (recoveredStack1).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            (recoveredStack0) catalogName: (recoveredStack1).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := (recoveredStack0) copy.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := 3.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack3 := 3.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack2 := (recoveredStack2) at: (recoveredStack3).
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack2 := (recoveredStack2) asLowercase.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            (recoveredStack0) at: (recoveredStack1) put: (recoveredStack2).
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack1 := (recoveredStack1) locale.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 54] ifFalse: [recoveredPC := 46].
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack1 := (recoveredStack1) requestedLocale.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 54] ifFalse: [recoveredPC := 65].
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack0 := (recoveredStack0) relocalizeNeeded.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 65] ifFalse: [recoveredPC := 60].
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack0 := (recoveredStack0) requestedLocale: (recoveredStack1).
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack0 := System.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack0 := (recoveredStack0) startUpClass.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack0 := (recoveredStack0) localeCompatibleWith: (recoveredStack1) catalog: (recoveredStack2).
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 82] ifFalse: [recoveredPC := 78].
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack0 := (recoveredStack0) failedRelocalize: (recoveredStack1).
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack1 := (recoveredStack1) locale.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 90] ifFalse: [recoveredPC := 101].
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredStack0 := (recoveredStack0) relocalizeNeeded.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 101] ifFalse: [recoveredPC := 96].
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack0 := (recoveredStack0) requestedLocale: (recoveredStack1).
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 101 ifTrue: [
            recoveredStack0 := System.
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            recoveredStack0 := (recoveredStack0) startUpClass.
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            recoveredStack0 := (recoveredStack0) loadLocale: (recoveredStack1) catalog: (recoveredStack2) intoDictionary: (recoveredStack3).
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 114] ifFalse: [recoveredPC := 127].
        ].
        recoveredStep = 114 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 116.
        ].
        recoveredStep = 116 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 117.
        ].
        recoveredStep = 117 ifTrue: [
            (recoveredStack1) requestedLocale: (recoveredStack2).
            recoveredPC := 119.
        ].
        recoveredStep = 119 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 120.
        ].
        recoveredStep = 120 ifTrue: [
            (recoveredStack0) locale: (recoveredStack1).
            recoveredPC := 122.
        ].
        recoveredStep = 122 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 123.
        ].
        recoveredStep = 123 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 124.
        ].
        recoveredStep = 124 ifTrue: [
            recoveredStack0 := (recoveredStack0) verifyRelocalize: (recoveredStack1).
            recoveredPC := 126.
        ].
        recoveredStep = 126 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 127 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 128.
        ].
        recoveredStep = 128 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 129.
        ].
        recoveredStep = 129 ifTrue: [
            recoveredStack0 := (recoveredStack0) failedRelocalize: (recoveredStack1).
            recoveredPC := 130.
        ].
        recoveredStep = 130 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"kernel.ic method 0x20028e14; bytecode file offset 0x73d4c"
!EsPoolDictionary methodsFor: 'recovered'!
indexedMsg: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) resident.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 8] ifFalse: [recoveredPC := 42].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) printString.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := [
    | recoveredBlock13Local1 recoveredBlock13Stack0 recoveredBlock13Stack1 recoveredBlock13Stack2 recoveredBlock13Stack3 recoveredBlock13PC recoveredBlock13Step recoveredBlock13Done recoveredBlock13Result |
    recoveredBlock13Stack0 := self.
    recoveredBlock13PC := 20.
    recoveredBlock13Done := false.
    [recoveredBlock13Done not] whileTrue: [
        recoveredBlock13Step := recoveredBlock13PC.
        recoveredBlock13Step = 20 ifTrue: [
            recoveredBlock13Stack0 := (recoveredBlock13Stack0) catalogName.
            recoveredBlock13PC := 21.
        ].
        recoveredBlock13Step = 21 ifTrue: [
            recoveredBlock13Stack1 := recoveredBlock13Stack0.
            recoveredBlock13PC := 22.
        ].
        recoveredBlock13Step = 22 ifTrue: [
            recoveredBlock13Local1 := recoveredBlock13Stack1.
            recoveredBlock13PC := 23.
        ].
        recoveredBlock13Step = 23 ifTrue: [
            (recoveredBlock13Stack0 ~~ nil) ifTrue: [recoveredBlock13PC := 29] ifFalse: [recoveredBlock13PC := 26].
        ].
        recoveredBlock13Step = 26 ifTrue: [
            recoveredBlock13Stack0 := 'UNKNOWN'.
            recoveredBlock13PC := 28.
        ].
        recoveredBlock13Step = 28 ifTrue: [
            recoveredBlock13Local1 := recoveredBlock13Stack0.
            recoveredBlock13PC := 29.
        ].
        recoveredBlock13Step = 29 ifTrue: [
            recoveredBlock13Stack0 := 'MISSING %1 in %2'.
            recoveredBlock13PC := 31.
        ].
        recoveredBlock13Step = 31 ifTrue: [
            recoveredBlock13Stack1 := recoveredArg1.
            recoveredBlock13PC := 34.
        ].
        recoveredBlock13Step = 34 ifTrue: [
            recoveredBlock13Stack1 := (recoveredBlock13Stack1) printString.
            recoveredBlock13PC := 35.
        ].
        recoveredBlock13Step = 35 ifTrue: [
            recoveredBlock13Stack2 := recoveredBlock13Local1.
            recoveredBlock13PC := 36.
        ].
        recoveredBlock13Step = 36 ifTrue: [
            recoveredBlock13Stack0 := (recoveredBlock13Stack0) bindWith: (recoveredBlock13Stack1) with: (recoveredBlock13Stack2).
            recoveredBlock13PC := 38.
        ].
        recoveredBlock13Step = 38 ifTrue: [
            ^recoveredBlock13Stack0
        ].
    ].
    recoveredBlock13Result
].
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1) ifAbsent: (recoveredStack2).
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack0 := (recoveredStack0) locale.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 79] ifFalse: [recoveredPC := 52].
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack0 := (recoveredStack0) catalogName.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 67] ifFalse: [recoveredPC := 62].
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack0 := 'UNKNOWN'.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack0 := 'MISSING %1 in %2'.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack1 := (recoveredStack1) printString.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack0 := (recoveredStack0) bindWith: (recoveredStack1) with: (recoveredStack2).
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack0 := System.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack0 := (recoveredStack0) startUpClass.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack1 := (recoveredStack1) locale.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredStack2 := (recoveredStack2) catalogName.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredStack0 := (recoveredStack0) loadLocale: (recoveredStack1) catalog: (recoveredStack2) index: (recoveredStack3).
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
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 131] ifFalse: [recoveredPC := 104].
        ].
        recoveredStep = 104 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            recoveredStack0 := (recoveredStack0) catalogName.
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 119] ifFalse: [recoveredPC := 114].
        ].
        recoveredStep = 114 ifTrue: [
            recoveredStack0 := 'UNKNOWN'.
            recoveredPC := 116.
        ].
        recoveredStep = 116 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 119.
        ].
        recoveredStep = 119 ifTrue: [
            recoveredStack0 := 'MISSING %1 in %2'.
            recoveredPC := 121.
        ].
        recoveredStep = 121 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 124.
        ].
        recoveredStep = 124 ifTrue: [
            recoveredStack1 := (recoveredStack1) printString.
            recoveredPC := 125.
        ].
        recoveredStep = 125 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 128.
        ].
        recoveredStep = 128 ifTrue: [
            recoveredStack0 := (recoveredStack0) bindWith: (recoveredStack1) with: (recoveredStack2).
            recoveredPC := 130.
        ].
        recoveredStep = 130 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 131 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 134.
        ].
        recoveredStep = 134 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"kernel.ic method 0x200294d0; bytecode file offset 0x7441c"
!EsPoolDictionary methodsFor: 'recovered'!
installMessagesIntoPool
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) locale.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 29] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := Transcript.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack1) cr.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := NlsCatKRN.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := 46.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := (recoveredStack1) indexedMsg: (recoveredStack2).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack2 := (recoveredStack2) catalogName.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack2 := (recoveredStack2) printString.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := (recoveredStack1) bindWith: (recoveredStack2).
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := (recoveredStack0) show: (recoveredStack1).
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := (recoveredStack0) locale.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := System.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := (recoveredStack0) startUpClass.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack2 := (recoveredStack2) catalogName.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack0 := (recoveredStack0) indexesForLocale: (recoveredStack1) catalog: (recoveredStack2).
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 75] ifFalse: [recoveredPC := 54].
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack0 := Transcript.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            (recoveredStack1) cr.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack1 := NlsCatKRN.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack2 := 47.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack1 := (recoveredStack1) indexedMsg: (recoveredStack2).
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack2 := (recoveredStack2) catalogName.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack2 := (recoveredStack2) printString.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack1 := (recoveredStack1) bindWith: (recoveredStack2).
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack0 := (recoveredStack0) show: (recoveredStack1).
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack1 := [:recoveredBlock78Arg1 | 
    | recoveredBlock78Local1 recoveredBlock78Stack0 recoveredBlock78Stack1 recoveredBlock78Stack2 recoveredBlock78Stack3 recoveredBlock78Stack4 recoveredBlock78Stack5 recoveredBlock78PC recoveredBlock78Step recoveredBlock78Done recoveredBlock78Result |
    recoveredBlock78Stack0 := self.
    recoveredBlock78PC := 84.
    recoveredBlock78Done := false.
    [recoveredBlock78Done not] whileTrue: [
        recoveredBlock78Step := recoveredBlock78PC.
        recoveredBlock78Step = 84 ifTrue: [
            recoveredBlock78Stack1 := System.
            recoveredBlock78PC := 86.
        ].
        recoveredBlock78Step = 86 ifTrue: [
            recoveredBlock78Stack1 := (recoveredBlock78Stack1) startUpClass.
            recoveredBlock78PC := 88.
        ].
        recoveredBlock78Step = 88 ifTrue: [
            recoveredBlock78Stack2 := recoveredLocal1.
            recoveredBlock78PC := 91.
        ].
        recoveredBlock78Step = 91 ifTrue: [
            recoveredBlock78Stack3 := self.
            recoveredBlock78PC := 92.
        ].
        recoveredBlock78Step = 92 ifTrue: [
            recoveredBlock78Stack3 := (recoveredBlock78Stack3) catalogName.
            recoveredBlock78PC := 94.
        ].
        recoveredBlock78Step = 94 ifTrue: [
            recoveredBlock78Stack4 := recoveredBlock78Arg1.
            recoveredBlock78PC := 95.
        ].
        recoveredBlock78Step = 95 ifTrue: [
            recoveredBlock78Stack1 := (recoveredBlock78Stack1) loadLocale: (recoveredBlock78Stack2) catalog: (recoveredBlock78Stack3) index: (recoveredBlock78Stack4).
            recoveredBlock78PC := 98.
        ].
        recoveredBlock78Step = 98 ifTrue: [
            recoveredBlock78Stack2 := recoveredBlock78Stack1.
            recoveredBlock78PC := 99.
        ].
        recoveredBlock78Step = 99 ifTrue: [
            recoveredBlock78Local1 := recoveredBlock78Stack2.
            recoveredBlock78PC := 100.
        ].
        recoveredBlock78Step = 100 ifTrue: [
            (recoveredBlock78Stack1 ~~ nil) ifTrue: [recoveredBlock78PC := 128] ifFalse: [recoveredBlock78PC := 104].
        ].
        recoveredBlock78Step = 104 ifTrue: [
            recoveredBlock78Stack1 := Transcript.
            recoveredBlock78PC := 106.
        ].
        recoveredBlock78Step = 106 ifTrue: [
            recoveredBlock78Stack2 := recoveredBlock78Stack1.
            recoveredBlock78PC := 107.
        ].
        recoveredBlock78Step = 107 ifTrue: [
            (recoveredBlock78Stack2) cr.
            recoveredBlock78PC := 109.
        ].
        recoveredBlock78Step = 109 ifTrue: [
            recoveredBlock78Stack2 := NlsCatKRN.
            recoveredBlock78PC := 111.
        ].
        recoveredBlock78Step = 111 ifTrue: [
            recoveredBlock78Stack3 := 48.
            recoveredBlock78PC := 113.
        ].
        recoveredBlock78Step = 113 ifTrue: [
            recoveredBlock78Stack2 := (recoveredBlock78Stack2) indexedMsg: (recoveredBlock78Stack3).
            recoveredBlock78PC := 115.
        ].
        recoveredBlock78Step = 115 ifTrue: [
            recoveredBlock78Stack3 := recoveredBlock78Arg1.
            recoveredBlock78PC := 116.
        ].
        recoveredBlock78Step = 116 ifTrue: [
            recoveredBlock78Stack3 := (recoveredBlock78Stack3) printString.
            recoveredBlock78PC := 118.
        ].
        recoveredBlock78Step = 118 ifTrue: [
            recoveredBlock78Stack4 := self.
            recoveredBlock78PC := 119.
        ].
        recoveredBlock78Step = 119 ifTrue: [
            recoveredBlock78Stack4 := (recoveredBlock78Stack4) catalogName.
            recoveredBlock78PC := 121.
        ].
        recoveredBlock78Step = 121 ifTrue: [
            recoveredBlock78Stack4 := (recoveredBlock78Stack4) printString.
            recoveredBlock78PC := 123.
        ].
        recoveredBlock78Step = 123 ifTrue: [
            recoveredBlock78Stack2 := (recoveredBlock78Stack2) bindWith: (recoveredBlock78Stack3) with: (recoveredBlock78Stack4).
            recoveredBlock78PC := 125.
        ].
        recoveredBlock78Step = 125 ifTrue: [
            recoveredBlock78Stack1 := (recoveredBlock78Stack1) show: (recoveredBlock78Stack2).
            recoveredBlock78PC := 127.
        ].
        recoveredBlock78Step = 127 ifTrue: [
            ^recoveredBlock78Stack1
        ].
        recoveredBlock78Step = 128 ifTrue: [
            recoveredBlock78Stack1 := recoveredBlock78Arg1.
            recoveredBlock78PC := 129.
        ].
        recoveredBlock78Step = 129 ifTrue: [
            recoveredBlock78Stack1 := (recoveredBlock78Stack1) printString.
            recoveredBlock78PC := 131.
        ].
        recoveredBlock78Step = 131 ifTrue: [
            recoveredBlock78Stack2 := recoveredBlock78Local1.
            recoveredBlock78PC := 132.
        ].
        recoveredBlock78Step = 132 ifTrue: [
            recoveredBlock78Stack0 := (recoveredBlock78Stack0) at: (recoveredBlock78Stack1) put: (recoveredBlock78Stack2).
            recoveredBlock78PC := 134.
        ].
        recoveredBlock78Step = 134 ifTrue: [
            recoveredBlock78Result := recoveredBlock78Stack0.
            recoveredBlock78Done := true.
        ].
    ].
    recoveredBlock78Result
].
            recoveredPC := 135.
        ].
        recoveredStep = 135 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 137.
        ].
        recoveredStep = 137 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 138.
        ].
        recoveredStep = 138 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"kernel.ic method 0x2002b328; bytecode file offset 0x7627c"
!EsPoolDictionary methodsFor: 'recovered'!
addString: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredStack7 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := 'PR'.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := '1E65KUX'.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) class.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := String.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack1 == recoveredStack2) ifTrue: [recoveredPC := 26] ifFalse: [recoveredPC := 20].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := ExCLDTInvalidClass.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack2 := 1.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            (recoveredStack1) signalWith: (recoveredStack2).
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := strings.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := (recoveredStack1) last.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack2 := 32767.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := (recoveredStack1) >= (recoveredStack2).
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 46] ifFalse: [recoveredPC := 38].
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := strings.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := (recoveredStack1) isReadOnly.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 46] ifFalse: [recoveredPC := 56].
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack1 := strings.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack2 := String.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack2 := (recoveredStack2) new.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack1 := (recoveredStack1) copyWith: (recoveredStack2).
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            strings := recoveredStack1.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack1 := strings.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack1 := (recoveredStack1) last.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (1).
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack1 := String.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack3 := (recoveredStack3) size.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack2 := (recoveredStack2) + (recoveredStack3).
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack1 := (recoveredStack1) new: (recoveredStack2).
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack3 := 1.
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack4 := recoveredLocal2.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredStack4 := (recoveredStack4) + (-1).
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack5 := recoveredLocal3.
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            recoveredStack6 := 1.
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            (recoveredStack2) replaceFrom: (recoveredStack3) to: (recoveredStack4) with: (recoveredStack5) startingAt: (recoveredStack6).
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            recoveredStack3 := (recoveredStack3) size.
            recoveredPC := 112.
        ].
        recoveredStep = 112 ifTrue: [
            recoveredStack3 := (recoveredStack3) + (-1).
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            recoveredStack4 := recoveredArg1.
            recoveredPC := 116.
        ].
        recoveredStep = 116 ifTrue: [
            recoveredStack5 := 1.
            recoveredPC := 118.
        ].
        recoveredStep = 118 ifTrue: [
            (recoveredStack1) replaceFrom: (recoveredStack2) to: (recoveredStack3) with: (recoveredStack4) startingAt: (recoveredStack5).
            recoveredPC := 121.
        ].
        recoveredStep = 121 ifTrue: [
            recoveredStack1 := [:recoveredBlock121Arg1 | 
    | recoveredBlock121Stack0 recoveredBlock121Stack1 recoveredBlock121Stack2 recoveredBlock121Stack3 recoveredBlock121Stack4 recoveredBlock121PC recoveredBlock121Step recoveredBlock121Done recoveredBlock121Result |
    recoveredBlock121Stack0 := self.
    recoveredBlock121PC := 128.
    recoveredBlock121Done := false.
    [recoveredBlock121Done not] whileTrue: [
        recoveredBlock121Step := recoveredBlock121PC.
        recoveredBlock121Step = 128 ifTrue: [
            recoveredBlock121Stack1 := nil.
            recoveredBlock121PC := 129.
        ].
        recoveredBlock121Step = 129 ifTrue: [
            recoveredBlock121Stack2 := recoveredBlock121Arg1.
            recoveredBlock121PC := 130.
        ].
        recoveredBlock121Step = 130 ifTrue: [
            recoveredBlock121Stack2 := (recoveredBlock121Stack2) stringTable.
            recoveredBlock121PC := 132.
        ].
        recoveredBlock121Step = 132 ifTrue: [
            recoveredBlock121Stack3 := recoveredLocal3.
            recoveredBlock121PC := 135.
        ].
        recoveredBlock121Step = 135 ifTrue: [
            (recoveredBlock121Stack2 ~~ recoveredBlock121Stack3) ifTrue: [recoveredBlock121PC := 145] ifFalse: [recoveredBlock121PC := 138].
        ].
        recoveredBlock121Step = 138 ifTrue: [
            recoveredBlock121PC := 139.
        ].
        recoveredBlock121Step = 139 ifTrue: [
            recoveredBlock121Stack1 := recoveredBlock121Arg1.
            recoveredBlock121PC := 140.
        ].
        recoveredBlock121Step = 140 ifTrue: [
            recoveredBlock121Stack2 := recoveredLocal1.
            recoveredBlock121PC := 143.
        ].
        recoveredBlock121Step = 143 ifTrue: [
            recoveredBlock121Stack1 := (recoveredBlock121Stack1) stringTable: (recoveredBlock121Stack2).
            recoveredBlock121PC := 145.
        ].
        recoveredBlock121Step = 145 ifTrue: [
            recoveredBlock121Result := recoveredBlock121Stack1.
            recoveredBlock121Done := true.
        ].
    ].
    recoveredBlock121Result
].
            recoveredPC := 146.
        ].
        recoveredStep = 146 ifTrue: [
            (recoveredStack0) associationsDo: (recoveredStack1).
            recoveredPC := 148.
        ].
        recoveredStep = 148 ifTrue: [
            recoveredStack0 := strings.
            recoveredPC := 150.
        ].
        recoveredStep = 150 ifTrue: [
            recoveredStack1 := strings.
            recoveredPC := 152.
        ].
        recoveredStep = 152 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 154.
        ].
        recoveredStep = 154 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 157.
        ].
        recoveredStep = 157 ifTrue: [
            (recoveredStack0) at: (recoveredStack1) put: (recoveredStack2).
            recoveredPC := 159.
        ].
        recoveredStep = 159 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 162.
        ].
        recoveredStep = 162 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"kernel.ic method 0x2002c234; bytecode file offset 0x77174"
!EsPoolDictionary methodsFor: 'recovered'!
atUnique: recoveredArg1 put: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredStack7 recoveredStack8 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) hash.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := elements.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack2 := (recoveredStack2) size.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack3 := recoveredStack2.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredLocal2 := recoveredStack3.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) \\ (recoveredStack2).
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (1).
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (-1).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredPC := 79.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack2 := elements.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack2 := (recoveredStack2) at: (recoveredStack3).
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            (recoveredStack2 ~~ nil) ifTrue: [recoveredPC := 79] ifFalse: [recoveredPC := 30].
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack2 := elements.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack4 := EsPoolAssociation.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack4 := (recoveredStack4) new.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack5 := recoveredStack4.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack6 := self.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack7 := recoveredArg1.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack6 := (recoveredStack6) addString: (recoveredStack7).
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            (recoveredStack5) stringIndex: (recoveredStack6).
            recoveredStack5 := recoveredStack4.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack6 := strings.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack6 := (recoveredStack6) last.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            (recoveredStack5) stringTable: (recoveredStack6).
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack5 := recoveredArg2.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack4 := (recoveredStack4) value: (recoveredStack5).
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack2 := elementCount.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack2 := (recoveredStack2) + (1).
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack3 := recoveredStack2.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            elementCount := recoveredStack3.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack3 := recoveredLocal2.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack4 := 5.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack3 := (recoveredStack3) * (recoveredStack4).
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack4 := 8.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack3 := (recoveredStack3) // (recoveredStack4).
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack2 := (recoveredStack2) > (recoveredStack3).
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 74] ifFalse: [recoveredPC := 77].
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            (recoveredStack2) expand.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            ^recoveredStack2
        ].
        recoveredStep = 79 ifTrue: [
            (recoveredStack1 isInteger and: [recoveredLocal1 isInteger]) ifTrue: [(recoveredLocal1 + 1 <= recoveredStack1) ifTrue: [recoveredLocal1 := recoveredLocal1 + 1. recoveredPC := 22] ifFalse: [recoveredLocal1 := nil. recoveredPC := 93]] ifFalse: [recoveredPC := 83].
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack3 := (recoveredStack3) + (1).
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack4 := recoveredStack3.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredLocal1 := recoveredStack4.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack2 := (recoveredStack2) < (recoveredStack3).
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 91] ifFalse: [recoveredPC := 22].
        ].
        recoveredStep = 91 ifTrue: [
            recoveredStack2 := nil.
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (-1).
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            recoveredPC := 159.
        ].
        recoveredStep = 102 ifTrue: [
            recoveredStack2 := elements.
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            recoveredStack2 := (recoveredStack2) at: (recoveredStack3).
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            (recoveredStack2 ~~ nil) ifTrue: [recoveredPC := 159] ifFalse: [recoveredPC := 110].
        ].
        recoveredStep = 110 ifTrue: [
            recoveredStack2 := elements.
            recoveredPC := 112.
        ].
        recoveredStep = 112 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            recoveredStack4 := EsPoolAssociation.
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            recoveredStack4 := (recoveredStack4) new.
            recoveredPC := 117.
        ].
        recoveredStep = 117 ifTrue: [
            recoveredStack5 := recoveredStack4.
            recoveredPC := 118.
        ].
        recoveredStep = 118 ifTrue: [
            recoveredStack6 := self.
            recoveredPC := 119.
        ].
        recoveredStep = 119 ifTrue: [
            recoveredStack7 := recoveredArg1.
            recoveredPC := 121.
        ].
        recoveredStep = 121 ifTrue: [
            recoveredStack6 := (recoveredStack6) addString: (recoveredStack7).
            recoveredPC := 123.
        ].
        recoveredStep = 123 ifTrue: [
            (recoveredStack5) stringIndex: (recoveredStack6).
            recoveredStack5 := recoveredStack4.
            recoveredPC := 126.
        ].
        recoveredStep = 126 ifTrue: [
            recoveredStack6 := strings.
            recoveredPC := 128.
        ].
        recoveredStep = 128 ifTrue: [
            recoveredStack6 := (recoveredStack6) last.
            recoveredPC := 130.
        ].
        recoveredStep = 130 ifTrue: [
            (recoveredStack5) stringTable: (recoveredStack6).
            recoveredPC := 132.
        ].
        recoveredStep = 132 ifTrue: [
            recoveredStack5 := recoveredArg2.
            recoveredPC := 133.
        ].
        recoveredStep = 133 ifTrue: [
            recoveredStack4 := (recoveredStack4) value: (recoveredStack5).
            recoveredPC := 135.
        ].
        recoveredStep = 135 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredPC := 137.
        ].
        recoveredStep = 137 ifTrue: [
            recoveredStack2 := elementCount.
            recoveredPC := 139.
        ].
        recoveredStep = 139 ifTrue: [
            recoveredStack2 := (recoveredStack2) + (1).
            recoveredPC := 140.
        ].
        recoveredStep = 140 ifTrue: [
            recoveredStack3 := recoveredStack2.
            recoveredPC := 141.
        ].
        recoveredStep = 141 ifTrue: [
            elementCount := recoveredStack3.
            recoveredPC := 143.
        ].
        recoveredStep = 143 ifTrue: [
            recoveredStack3 := recoveredLocal2.
            recoveredPC := 144.
        ].
        recoveredStep = 144 ifTrue: [
            recoveredStack4 := 5.
            recoveredPC := 146.
        ].
        recoveredStep = 146 ifTrue: [
            recoveredStack3 := (recoveredStack3) * (recoveredStack4).
            recoveredPC := 147.
        ].
        recoveredStep = 147 ifTrue: [
            recoveredStack4 := 8.
            recoveredPC := 149.
        ].
        recoveredStep = 149 ifTrue: [
            recoveredStack3 := (recoveredStack3) // (recoveredStack4).
            recoveredPC := 150.
        ].
        recoveredStep = 150 ifTrue: [
            recoveredStack2 := (recoveredStack2) > (recoveredStack3).
            recoveredPC := 151.
        ].
        recoveredStep = 151 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 154] ifFalse: [recoveredPC := 157].
        ].
        recoveredStep = 154 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 155.
        ].
        recoveredStep = 155 ifTrue: [
            (recoveredStack2) expand.
            recoveredPC := 157.
        ].
        recoveredStep = 157 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 158.
        ].
        recoveredStep = 158 ifTrue: [
            ^recoveredStack2
        ].
        recoveredStep = 159 ifTrue: [
            (recoveredStack1 isInteger and: [recoveredLocal1 isInteger]) ifTrue: [(recoveredLocal1 + 1 <= recoveredStack1) ifTrue: [recoveredLocal1 := recoveredLocal1 + 1. recoveredPC := 102] ifFalse: [recoveredLocal1 := nil. recoveredPC := 173]] ifFalse: [recoveredPC := 163].
        ].
        recoveredStep = 163 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 164.
        ].
        recoveredStep = 164 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 165.
        ].
        recoveredStep = 165 ifTrue: [
            recoveredStack3 := (recoveredStack3) + (1).
            recoveredPC := 166.
        ].
        recoveredStep = 166 ifTrue: [
            recoveredStack4 := recoveredStack3.
            recoveredPC := 167.
        ].
        recoveredStep = 167 ifTrue: [
            recoveredLocal1 := recoveredStack4.
            recoveredPC := 168.
        ].
        recoveredStep = 168 ifTrue: [
            recoveredStack2 := (recoveredStack2) < (recoveredStack3).
            recoveredPC := 169.
        ].
        recoveredStep = 169 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 171] ifFalse: [recoveredPC := 102].
        ].
        recoveredStep = 171 ifTrue: [
            recoveredStack2 := nil.
            recoveredPC := 172.
        ].
        recoveredStep = 172 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 173.
        ].
        recoveredStep = 173 ifTrue: [
            recoveredPC := 174.
        ].
        recoveredStep = 174 ifTrue: [
            recoveredStack0 := (recoveredStack0) expand.
            recoveredPC := 176.
        ].
        recoveredStep = 176 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 178.
        ].
        recoveredStep = 178 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 179.
        ].
        recoveredStep = 179 ifTrue: [
            recoveredStack0 := (recoveredStack0) atUnique: (recoveredStack1) put: (recoveredStack2).
            recoveredPC := 181.
        ].
        recoveredStep = 181 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"kernel.ic method 0x2002c450; bytecode file offset 0x77394"
!EsPoolDictionary methodsFor: 'recovered'!
removeStringAtIndex: recoveredArg1 from: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredStack7 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) isReadOnly.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack2 := (recoveredStack2) asCharacter.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := (recoveredStack1) indexOf: (recoveredStack2) startingAt: (recoveredStack3).
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := (recoveredStack1) - (recoveredStack2).
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := String.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack2 := (recoveredStack2) size.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack3 := recoveredLocal3.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack2 := (recoveredStack2) - (recoveredStack3).
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack2 := (recoveredStack2) + (-1).
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack1 := (recoveredStack1) new: (recoveredStack2).
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredLocal2 := recoveredStack2.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack3 := 1.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack4 := recoveredArg1.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack4 := (recoveredStack4) + (-1).
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack5 := recoveredArg2.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack6 := 1.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            (recoveredStack2) replaceFrom: (recoveredStack3) to: (recoveredStack4) with: (recoveredStack5) startingAt: (recoveredStack6).
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack3 := recoveredLocal2.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack3 := (recoveredStack3) size.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack4 := recoveredArg2.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack5 := recoveredArg1.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack6 := recoveredLocal3.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack5 := (recoveredStack5) + (recoveredStack6).
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack5 := (recoveredStack5) + (1).
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            (recoveredStack1) replaceFrom: (recoveredStack2) to: (recoveredStack3) with: (recoveredStack4) startingAt: (recoveredStack5).
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredStack1 := [:recoveredBlock87Arg1 | 
    | recoveredBlock87Stack0 recoveredBlock87Stack1 recoveredBlock87Stack2 recoveredBlock87Stack3 recoveredBlock87Stack4 recoveredBlock87PC recoveredBlock87Step recoveredBlock87Done recoveredBlock87Result |
    recoveredBlock87Stack0 := self.
    recoveredBlock87PC := 94.
    recoveredBlock87Done := false.
    [recoveredBlock87Done not] whileTrue: [
        recoveredBlock87Step := recoveredBlock87PC.
        recoveredBlock87Step = 94 ifTrue: [
            recoveredBlock87Stack1 := nil.
            recoveredBlock87PC := 95.
        ].
        recoveredBlock87Step = 95 ifTrue: [
            recoveredBlock87Stack2 := recoveredBlock87Arg1.
            recoveredBlock87PC := 96.
        ].
        recoveredBlock87Step = 96 ifTrue: [
            recoveredBlock87Stack2 := (recoveredBlock87Stack2) stringTable.
            recoveredBlock87PC := 98.
        ].
        recoveredBlock87Step = 98 ifTrue: [
            recoveredBlock87Stack3 := recoveredArg2.
            recoveredBlock87PC := 101.
        ].
        recoveredBlock87Step = 101 ifTrue: [
            (recoveredBlock87Stack2 ~~ recoveredBlock87Stack3) ifTrue: [recoveredBlock87PC := 133] ifFalse: [recoveredBlock87PC := 104].
        ].
        recoveredBlock87Step = 104 ifTrue: [
            recoveredBlock87PC := 105.
        ].
        recoveredBlock87Step = 105 ifTrue: [
            recoveredBlock87Stack1 := recoveredBlock87Arg1.
            recoveredBlock87PC := 106.
        ].
        recoveredBlock87Step = 106 ifTrue: [
            recoveredBlock87Stack1 := (recoveredBlock87Stack1) stringIndex.
            recoveredBlock87PC := 108.
        ].
        recoveredBlock87Step = 108 ifTrue: [
            recoveredBlock87Stack2 := recoveredArg1.
            recoveredBlock87PC := 111.
        ].
        recoveredBlock87Step = 111 ifTrue: [
            recoveredBlock87Stack1 := (recoveredBlock87Stack1) > (recoveredBlock87Stack2).
            recoveredBlock87PC := 112.
        ].
        recoveredBlock87Step = 112 ifTrue: [
            (recoveredBlock87Stack1) ifTrue: [recoveredBlock87PC := 116] ifFalse: [recoveredBlock87PC := 127].
        ].
        recoveredBlock87Step = 116 ifTrue: [
            recoveredBlock87Stack1 := recoveredBlock87Arg1.
            recoveredBlock87PC := 117.
        ].
        recoveredBlock87Step = 117 ifTrue: [
            recoveredBlock87Stack2 := recoveredBlock87Arg1.
            recoveredBlock87PC := 118.
        ].
        recoveredBlock87Step = 118 ifTrue: [
            recoveredBlock87Stack2 := (recoveredBlock87Stack2) stringIndex.
            recoveredBlock87PC := 120.
        ].
        recoveredBlock87Step = 120 ifTrue: [
            recoveredBlock87Stack3 := recoveredLocal3.
            recoveredBlock87PC := 123.
        ].
        recoveredBlock87Step = 123 ifTrue: [
            recoveredBlock87Stack2 := (recoveredBlock87Stack2) - (recoveredBlock87Stack3).
            recoveredBlock87PC := 124.
        ].
        recoveredBlock87Step = 124 ifTrue: [
            recoveredBlock87Stack2 := (recoveredBlock87Stack2) + (-1).
            recoveredBlock87PC := 125.
        ].
        recoveredBlock87Step = 125 ifTrue: [
            (recoveredBlock87Stack1) stringIndex: (recoveredBlock87Stack2).
            recoveredBlock87PC := 127.
        ].
        recoveredBlock87Step = 127 ifTrue: [
            recoveredBlock87Stack1 := recoveredBlock87Arg1.
            recoveredBlock87PC := 128.
        ].
        recoveredBlock87Step = 128 ifTrue: [
            recoveredBlock87Stack2 := recoveredLocal2.
            recoveredBlock87PC := 131.
        ].
        recoveredBlock87Step = 131 ifTrue: [
            recoveredBlock87Stack1 := (recoveredBlock87Stack1) stringTable: (recoveredBlock87Stack2).
            recoveredBlock87PC := 133.
        ].
        recoveredBlock87Step = 133 ifTrue: [
            recoveredBlock87Result := recoveredBlock87Stack1.
            recoveredBlock87Done := true.
        ].
    ].
    recoveredBlock87Result
].
            recoveredPC := 134.
        ].
        recoveredStep = 134 ifTrue: [
            (recoveredStack0) associationsDo: (recoveredStack1).
            recoveredPC := 136.
        ].
        recoveredStep = 136 ifTrue: [
            recoveredStack0 := 1.
            recoveredPC := 138.
        ].
        recoveredStep = 138 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 141.
        ].
        recoveredStep = 141 ifTrue: [
            recoveredPC := 151.
        ].
        recoveredStep = 144 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 147.
        ].
        recoveredStep = 147 ifTrue: [
            recoveredStack0 := (recoveredStack0) + (1).
            recoveredPC := 148.
        ].
        recoveredStep = 148 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 151.
        ].
        recoveredStep = 151 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 154.
        ].
        recoveredStep = 154 ifTrue: [
            recoveredStack1 := strings.
            recoveredPC := 156.
        ].
        recoveredStep = 156 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 158.
        ].
        recoveredStep = 158 ifTrue: [
            recoveredStack0 := (recoveredStack0) > (recoveredStack1).
            recoveredPC := 159.
        ].
        recoveredStep = 159 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 174] ifFalse: [recoveredPC := 162].
        ].
        recoveredStep = 162 ifTrue: [
            recoveredStack0 := strings.
            recoveredPC := 164.
        ].
        recoveredStep = 164 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 167.
        ].
        recoveredStep = 167 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1).
            recoveredPC := 169.
        ].
        recoveredStep = 169 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 172.
        ].
        recoveredStep = 172 ifTrue: [
            (recoveredStack0 ~~ recoveredStack1) ifTrue: [recoveredPC := 144] ifFalse: [recoveredPC := 174].
        ].
        recoveredStep = 174 ifTrue: [
            recoveredStack0 := strings.
            recoveredPC := 176.
        ].
        recoveredStep = 176 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 179.
        ].
        recoveredStep = 179 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 182.
        ].
        recoveredStep = 182 ifTrue: [
            (recoveredStack0) at: (recoveredStack1) put: (recoveredStack2).
            recoveredPC := 184.
        ].
        recoveredStep = 184 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 185.
        ].
        recoveredStep = 185 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"kernel.ic method 0x2002d350; bytecode file offset 0x782ac"
!EsPoolDictionary methodsFor: 'recovered'!
addAll: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack2 := elements.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack2 := (recoveredStack2) size.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack3 := 5.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := (recoveredStack2) * (recoveredStack3).
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack3 := 8.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := (recoveredStack2) // (recoveredStack3).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := (recoveredStack1) > (recoveredStack2).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 22] ifFalse: [recoveredPC := 36].
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack2 := (recoveredStack2) size.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack2 := (recoveredStack2) + (1).
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack3 := 8.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack2 := (recoveredStack2) * (recoveredStack3).
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack3 := 5.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack2 := (recoveredStack2) // (recoveredStack3).
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            (recoveredStack1) rehash: (recoveredStack2).
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := OrderedCollection.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack2 := (recoveredStack2) size.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := (recoveredStack1) new: (recoveredStack2).
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack2 := [:recoveredBlock49Arg1 | 
    | recoveredBlock49Local1 recoveredBlock49Local2 recoveredBlock49Local3 recoveredBlock49Local4 recoveredBlock49Local5 recoveredBlock49Stack0 recoveredBlock49Stack1 recoveredBlock49Stack2 recoveredBlock49Stack3 recoveredBlock49Stack4 recoveredBlock49Stack5 recoveredBlock49Stack6 recoveredBlock49Stack7 recoveredBlock49PC recoveredBlock49Step recoveredBlock49Done recoveredBlock49Result |
    recoveredBlock49Stack0 := self.
    recoveredBlock49PC := 56.
    recoveredBlock49Done := false.
    [recoveredBlock49Done not] whileTrue: [
        recoveredBlock49Step := recoveredBlock49PC.
        recoveredBlock49Step = 56 ifTrue: [
            recoveredBlock49Stack1 := false.
            recoveredBlock49PC := 57.
        ].
        recoveredBlock49Step = 57 ifTrue: [
            recoveredBlock49Local5 := recoveredBlock49Stack1.
            recoveredBlock49PC := 59.
        ].
        recoveredBlock49Step = 59 ifTrue: [
            recoveredBlock49Stack1 := recoveredBlock49Arg1.
            recoveredBlock49PC := 61.
        ].
        recoveredBlock49Step = 61 ifTrue: [
            recoveredBlock49Stack1 := (recoveredBlock49Stack1) key.
            recoveredBlock49PC := 63.
        ].
        recoveredBlock49Step = 63 ifTrue: [
            recoveredBlock49Stack2 := recoveredBlock49Stack1.
            recoveredBlock49PC := 64.
        ].
        recoveredBlock49Step = 64 ifTrue: [
            recoveredBlock49Local3 := recoveredBlock49Stack2.
            recoveredBlock49PC := 65.
        ].
        recoveredBlock49Step = 65 ifTrue: [
            recoveredBlock49Stack1 := (recoveredBlock49Stack1) hash.
            recoveredBlock49PC := 67.
        ].
        recoveredBlock49Step = 67 ifTrue: [
            recoveredBlock49Stack2 := elements.
            recoveredBlock49PC := 69.
        ].
        recoveredBlock49Step = 69 ifTrue: [
            recoveredBlock49Stack2 := (recoveredBlock49Stack2) size.
            recoveredBlock49PC := 70.
        ].
        recoveredBlock49Step = 70 ifTrue: [
            recoveredBlock49Stack3 := recoveredBlock49Stack2.
            recoveredBlock49PC := 71.
        ].
        recoveredBlock49Step = 71 ifTrue: [
            recoveredBlock49Local2 := recoveredBlock49Stack3.
            recoveredBlock49PC := 72.
        ].
        recoveredBlock49Step = 72 ifTrue: [
            recoveredBlock49Stack1 := (recoveredBlock49Stack1) \\ (recoveredBlock49Stack2).
            recoveredBlock49PC := 73.
        ].
        recoveredBlock49Step = 73 ifTrue: [
            recoveredBlock49Local4 := recoveredBlock49Stack1.
            recoveredBlock49PC := 74.
        ].
        recoveredBlock49Step = 74 ifTrue: [
            recoveredBlock49Stack1 := recoveredBlock49Local4.
            recoveredBlock49PC := 75.
        ].
        recoveredBlock49Step = 75 ifTrue: [
            recoveredBlock49Stack1 := (recoveredBlock49Stack1) + (1).
            recoveredBlock49PC := 76.
        ].
        recoveredBlock49Step = 76 ifTrue: [
            recoveredBlock49Stack2 := recoveredBlock49Stack1.
            recoveredBlock49PC := 77.
        ].
        recoveredBlock49Step = 77 ifTrue: [
            recoveredBlock49Local4 := recoveredBlock49Stack2.
            recoveredBlock49PC := 78.
        ].
        recoveredBlock49Step = 78 ifTrue: [
            recoveredBlock49Stack2 := recoveredBlock49Local2.
            recoveredBlock49PC := 79.
        ].
        recoveredBlock49Step = 79 ifTrue: [
            recoveredBlock49Stack1 := (recoveredBlock49Stack1) > (recoveredBlock49Stack2).
            recoveredBlock49PC := 80.
        ].
        recoveredBlock49Step = 80 ifTrue: [
            (recoveredBlock49Stack1) ifTrue: [recoveredBlock49PC := 84] ifFalse: [recoveredBlock49PC := 87].
        ].
        recoveredBlock49Step = 84 ifTrue: [
            recoveredBlock49Stack1 := 1.
            recoveredBlock49PC := 86.
        ].
        recoveredBlock49Step = 86 ifTrue: [
            recoveredBlock49Local4 := recoveredBlock49Stack1.
            recoveredBlock49PC := 87.
        ].
        recoveredBlock49Step = 87 ifTrue: [
            recoveredBlock49Stack1 := elements.
            recoveredBlock49PC := 89.
        ].
        recoveredBlock49Step = 89 ifTrue: [
            recoveredBlock49Stack2 := recoveredBlock49Local4.
            recoveredBlock49PC := 90.
        ].
        recoveredBlock49Step = 90 ifTrue: [
            recoveredBlock49Stack1 := (recoveredBlock49Stack1) at: (recoveredBlock49Stack2).
            recoveredBlock49PC := 92.
        ].
        recoveredBlock49Step = 92 ifTrue: [
            recoveredBlock49Stack2 := recoveredBlock49Stack1.
            recoveredBlock49PC := 93.
        ].
        recoveredBlock49Step = 93 ifTrue: [
            recoveredBlock49Local1 := recoveredBlock49Stack2.
            recoveredBlock49PC := 94.
        ].
        recoveredBlock49Step = 94 ifTrue: [
            (recoveredBlock49Stack1 ~~ nil) ifTrue: [recoveredBlock49PC := 170] ifFalse: [recoveredBlock49PC := 98].
        ].
        recoveredBlock49Step = 98 ifTrue: [
            recoveredBlock49Stack1 := true.
            recoveredBlock49PC := 99.
        ].
        recoveredBlock49Step = 99 ifTrue: [
            recoveredBlock49Local5 := recoveredBlock49Stack1.
            recoveredBlock49PC := 101.
        ].
        recoveredBlock49Step = 101 ifTrue: [
            recoveredBlock49Stack1 := elements.
            recoveredBlock49PC := 103.
        ].
        recoveredBlock49Step = 103 ifTrue: [
            recoveredBlock49Stack1 := (recoveredBlock49Stack1) isReadOnly.
            recoveredBlock49PC := 105.
        ].
        recoveredBlock49Step = 105 ifTrue: [
            (recoveredBlock49Stack1) ifTrue: [recoveredBlock49PC := 108] ifFalse: [recoveredBlock49PC := 114].
        ].
        recoveredBlock49Step = 108 ifTrue: [
            recoveredBlock49Stack1 := elements.
            recoveredBlock49PC := 110.
        ].
        recoveredBlock49Step = 110 ifTrue: [
            recoveredBlock49Stack1 := (recoveredBlock49Stack1) copy.
            recoveredBlock49PC := 112.
        ].
        recoveredBlock49Step = 112 ifTrue: [
            elements := recoveredBlock49Stack1.
            recoveredBlock49PC := 114.
        ].
        recoveredBlock49Step = 114 ifTrue: [
            recoveredBlock49Stack1 := elements.
            recoveredBlock49PC := 116.
        ].
        recoveredBlock49Step = 116 ifTrue: [
            recoveredBlock49Stack2 := recoveredBlock49Local4.
            recoveredBlock49PC := 117.
        ].
        recoveredBlock49Step = 117 ifTrue: [
            recoveredBlock49Stack3 := recoveredLocal1.
            recoveredBlock49PC := 120.
        ].
        recoveredBlock49Step = 120 ifTrue: [
            recoveredBlock49Stack4 := EsPoolAssociation.
            recoveredBlock49PC := 122.
        ].
        recoveredBlock49Step = 122 ifTrue: [
            recoveredBlock49Stack4 := (recoveredBlock49Stack4) new.
            recoveredBlock49PC := 124.
        ].
        recoveredBlock49Step = 124 ifTrue: [
            recoveredBlock49Stack5 := recoveredBlock49Stack4.
            recoveredBlock49PC := 125.
        ].
        recoveredBlock49Step = 125 ifTrue: [
            recoveredBlock49Stack6 := 0.
            recoveredBlock49PC := 127.
        ].
        recoveredBlock49Step = 127 ifTrue: [
            (recoveredBlock49Stack5) stringIndex: (recoveredBlock49Stack6).
            recoveredBlock49Stack5 := recoveredBlock49Stack4.
            recoveredBlock49PC := 130.
        ].
        recoveredBlock49Step = 130 ifTrue: [
            recoveredBlock49Stack6 := recoveredBlock49Arg1.
            recoveredBlock49PC := 132.
        ].
        recoveredBlock49Step = 132 ifTrue: [
            recoveredBlock49Stack6 := (recoveredBlock49Stack6) key.
            recoveredBlock49PC := 134.
        ].
        recoveredBlock49Step = 134 ifTrue: [
            (recoveredBlock49Stack5) stringTable: (recoveredBlock49Stack6).
            recoveredBlock49PC := 136.
        ].
        recoveredBlock49Step = 136 ifTrue: [
            recoveredBlock49Stack5 := recoveredBlock49Arg1.
            recoveredBlock49PC := 138.
        ].
        recoveredBlock49Step = 138 ifTrue: [
            recoveredBlock49Stack5 := (recoveredBlock49Stack5) value.
            recoveredBlock49PC := 140.
        ].
        recoveredBlock49Step = 140 ifTrue: [
            recoveredBlock49Stack4 := (recoveredBlock49Stack4) value: (recoveredBlock49Stack5).
            recoveredBlock49PC := 142.
        ].
        recoveredBlock49Step = 142 ifTrue: [
            recoveredBlock49Stack3 := (recoveredBlock49Stack3) add: (recoveredBlock49Stack4).
            recoveredBlock49PC := 144.
        ].
        recoveredBlock49Step = 144 ifTrue: [
            (recoveredBlock49Stack1) at: (recoveredBlock49Stack2) put: (recoveredBlock49Stack3).
            recoveredBlock49PC := 146.
        ].
        recoveredBlock49Step = 146 ifTrue: [
            recoveredBlock49Stack1 := elementCount.
            recoveredBlock49PC := 148.
        ].
        recoveredBlock49Step = 148 ifTrue: [
            recoveredBlock49Stack1 := (recoveredBlock49Stack1) + (1).
            recoveredBlock49PC := 149.
        ].
        recoveredBlock49Step = 149 ifTrue: [
            recoveredBlock49Stack2 := recoveredBlock49Stack1.
            recoveredBlock49PC := 150.
        ].
        recoveredBlock49Step = 150 ifTrue: [
            elementCount := recoveredBlock49Stack2.
            recoveredBlock49PC := 152.
        ].
        recoveredBlock49Step = 152 ifTrue: [
            recoveredBlock49Stack2 := recoveredBlock49Local2.
            recoveredBlock49PC := 153.
        ].
        recoveredBlock49Step = 153 ifTrue: [
            recoveredBlock49Stack3 := 5.
            recoveredBlock49PC := 155.
        ].
        recoveredBlock49Step = 155 ifTrue: [
            recoveredBlock49Stack2 := (recoveredBlock49Stack2) * (recoveredBlock49Stack3).
            recoveredBlock49PC := 156.
        ].
        recoveredBlock49Step = 156 ifTrue: [
            recoveredBlock49Stack3 := 8.
            recoveredBlock49PC := 158.
        ].
        recoveredBlock49Step = 158 ifTrue: [
            recoveredBlock49Stack2 := (recoveredBlock49Stack2) // (recoveredBlock49Stack3).
            recoveredBlock49PC := 159.
        ].
        recoveredBlock49Step = 159 ifTrue: [
            recoveredBlock49Stack1 := (recoveredBlock49Stack1) > (recoveredBlock49Stack2).
            recoveredBlock49PC := 160.
        ].
        recoveredBlock49Step = 160 ifTrue: [
            (recoveredBlock49Stack1) ifTrue: [recoveredBlock49PC := 164] ifFalse: [recoveredBlock49PC := 167].
        ].
        recoveredBlock49Step = 164 ifTrue: [
            recoveredBlock49Stack1 := self.
            recoveredBlock49PC := 165.
        ].
        recoveredBlock49Step = 165 ifTrue: [
            (recoveredBlock49Stack1) expand.
            recoveredBlock49PC := 167.
        ].
        recoveredBlock49Step = 167 ifTrue: [
            recoveredBlock49PC := 188.
        ].
        recoveredBlock49Step = 170 ifTrue: [
            recoveredBlock49Stack1 := recoveredBlock49Local1.
            recoveredBlock49PC := 171.
        ].
        recoveredBlock49Step = 171 ifTrue: [
            recoveredBlock49Stack1 := (recoveredBlock49Stack1) key.
            recoveredBlock49PC := 173.
        ].
        recoveredBlock49Step = 173 ifTrue: [
            recoveredBlock49Stack2 := recoveredBlock49Local3.
            recoveredBlock49PC := 174.
        ].
        recoveredBlock49Step = 174 ifTrue: [
            recoveredBlock49Stack1 := (recoveredBlock49Stack1) = (recoveredBlock49Stack2).
            recoveredBlock49PC := 175.
        ].
        recoveredBlock49Step = 175 ifTrue: [
            (recoveredBlock49Stack1) ifTrue: [recoveredBlock49PC := 178] ifFalse: [recoveredBlock49PC := 188].
        ].
        recoveredBlock49Step = 178 ifTrue: [
            recoveredBlock49Stack1 := true.
            recoveredBlock49PC := 179.
        ].
        recoveredBlock49Step = 179 ifTrue: [
            recoveredBlock49Local5 := recoveredBlock49Stack1.
            recoveredBlock49PC := 181.
        ].
        recoveredBlock49Step = 181 ifTrue: [
            recoveredBlock49Stack1 := recoveredBlock49Local1.
            recoveredBlock49PC := 182.
        ].
        recoveredBlock49Step = 182 ifTrue: [
            recoveredBlock49Stack2 := recoveredBlock49Arg1.
            recoveredBlock49PC := 184.
        ].
        recoveredBlock49Step = 184 ifTrue: [
            recoveredBlock49Stack2 := (recoveredBlock49Stack2) value.
            recoveredBlock49PC := 186.
        ].
        recoveredBlock49Step = 186 ifTrue: [
            (recoveredBlock49Stack1) value: (recoveredBlock49Stack2).
            recoveredBlock49PC := 188.
        ].
        recoveredBlock49Step = 188 ifTrue: [
            recoveredBlock49Stack1 := recoveredBlock49Local5.
            recoveredBlock49PC := 190.
        ].
        recoveredBlock49Step = 190 ifTrue: [
            (recoveredBlock49Stack1) ifTrue: [recoveredBlock49PC := 192] ifFalse: [recoveredBlock49PC := 74].
        ].
        recoveredBlock49Step = 192 ifTrue: [
            recoveredBlock49Stack1 := nil.
            recoveredBlock49PC := 193.
        ].
        recoveredBlock49Step = 193 ifTrue: [
            recoveredBlock49Result := recoveredBlock49Stack1.
            recoveredBlock49Done := true.
        ].
    ].
    recoveredBlock49Result
].
            recoveredPC := 194.
        ].
        recoveredStep = 194 ifTrue: [
            (recoveredStack1) associationsDo: (recoveredStack2).
            recoveredPC := 196.
        ].
        recoveredStep = 196 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 199.
        ].
        recoveredStep = 199 ifTrue: [
            (recoveredStack0) addAllAssociations: (recoveredStack1).
            recoveredPC := 201.
        ].
        recoveredStep = 201 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 204.
        ].
        recoveredStep = 204 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"kernel.ic method 0x2002df10; bytecode file offset 0x78e50"
!EsPoolDictionary methodsFor: 'recovered'!
removeKey: recoveredArg1 ifAbsent: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredLocal6 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) hash.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := elements.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack2 := (recoveredStack2) size.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack3 := recoveredStack2.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredLocal3 := recoveredStack3.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) \\ (recoveredStack2).
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (1).
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredLocal5 := recoveredStack1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (-1).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredPC := 100.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack2 := elements.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack2 := (recoveredStack2) at: (recoveredStack3).
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack3 := recoveredStack2.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredLocal4 := recoveredStack3.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            (recoveredStack2 ~~ nil) ifTrue: [recoveredPC := 38] ifFalse: [recoveredPC := 34].
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack2 := (recoveredStack2) value.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            ^recoveredStack2
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack2 := recoveredLocal4.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack2 := (recoveredStack2) key.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack2 := (recoveredStack2) = (recoveredStack3).
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 48] ifFalse: [recoveredPC := 100].
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack2 := elements.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack2 := (recoveredStack2) isReadOnly.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 56] ifFalse: [recoveredPC := 62].
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack2 := elements.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack2 := (recoveredStack2) copy.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            elements := recoveredStack2.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            (recoveredStack2) rehashTo: (recoveredStack3).
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack2 := elementCount.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack2 := (recoveredStack2) + (-1).
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            elementCount := recoveredStack2.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack2 := recoveredLocal4.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack2 := (recoveredStack2) stringTable.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredLocal2 := recoveredStack2.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack2 := recoveredLocal4.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack2 := (recoveredStack2) stringIndex.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredLocal6 := recoveredStack2.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack2 := recoveredLocal4.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack3 := recoveredStack2.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack4 := recoveredLocal4.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack4 := (recoveredStack4) key.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            (recoveredStack3) stringTable: (recoveredStack4).
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredStack3 := 0.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            (recoveredStack2) stringIndex: (recoveredStack3).
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack3 := recoveredLocal6.
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack4 := recoveredLocal2.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            (recoveredStack2) removeStringAtIndex: (recoveredStack3) from: (recoveredStack4).
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            recoveredStack2 := recoveredLocal4.
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack2 := (recoveredStack2) value.
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            ^recoveredStack2
        ].
        recoveredStep = 100 ifTrue: [
            (recoveredStack1 isInteger and: [recoveredLocal1 isInteger]) ifTrue: [(recoveredLocal1 + 1 <= recoveredStack1) ifTrue: [recoveredLocal1 := recoveredLocal1 + 1. recoveredPC := 24] ifFalse: [recoveredLocal1 := nil. recoveredPC := 114]] ifFalse: [recoveredPC := 104].
        ].
        recoveredStep = 104 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            recoveredStack3 := (recoveredStack3) + (1).
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            recoveredStack4 := recoveredStack3.
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            recoveredLocal1 := recoveredStack4.
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            recoveredStack2 := (recoveredStack2) < (recoveredStack3).
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 112] ifFalse: [recoveredPC := 24].
        ].
        recoveredStep = 112 ifTrue: [
            recoveredStack2 := nil.
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 114.
        ].
        recoveredStep = 114 ifTrue: [
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 117.
        ].
        recoveredStep = 117 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 118.
        ].
        recoveredStep = 118 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 120.
        ].
        recoveredStep = 120 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (-1).
            recoveredPC := 121.
        ].
        recoveredStep = 121 ifTrue: [
            recoveredPC := 200.
        ].
        recoveredStep = 124 ifTrue: [
            recoveredStack2 := elements.
            recoveredPC := 126.
        ].
        recoveredStep = 126 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 127.
        ].
        recoveredStep = 127 ifTrue: [
            recoveredStack2 := (recoveredStack2) at: (recoveredStack3).
            recoveredPC := 128.
        ].
        recoveredStep = 128 ifTrue: [
            recoveredStack3 := recoveredStack2.
            recoveredPC := 129.
        ].
        recoveredStep = 129 ifTrue: [
            recoveredLocal4 := recoveredStack3.
            recoveredPC := 130.
        ].
        recoveredStep = 130 ifTrue: [
            (recoveredStack2 ~~ nil) ifTrue: [recoveredPC := 138] ifFalse: [recoveredPC := 134].
        ].
        recoveredStep = 134 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 136.
        ].
        recoveredStep = 136 ifTrue: [
            recoveredStack2 := (recoveredStack2) value.
            recoveredPC := 137.
        ].
        recoveredStep = 137 ifTrue: [
            ^recoveredStack2
        ].
        recoveredStep = 138 ifTrue: [
            recoveredStack2 := recoveredLocal4.
            recoveredPC := 139.
        ].
        recoveredStep = 139 ifTrue: [
            recoveredStack2 := (recoveredStack2) key.
            recoveredPC := 141.
        ].
        recoveredStep = 141 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 143.
        ].
        recoveredStep = 143 ifTrue: [
            recoveredStack2 := (recoveredStack2) = (recoveredStack3).
            recoveredPC := 144.
        ].
        recoveredStep = 144 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 148] ifFalse: [recoveredPC := 200].
        ].
        recoveredStep = 148 ifTrue: [
            recoveredStack2 := elements.
            recoveredPC := 150.
        ].
        recoveredStep = 150 ifTrue: [
            recoveredStack2 := (recoveredStack2) isReadOnly.
            recoveredPC := 152.
        ].
        recoveredStep = 152 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 156] ifFalse: [recoveredPC := 162].
        ].
        recoveredStep = 156 ifTrue: [
            recoveredStack2 := elements.
            recoveredPC := 158.
        ].
        recoveredStep = 158 ifTrue: [
            recoveredStack2 := (recoveredStack2) copy.
            recoveredPC := 160.
        ].
        recoveredStep = 160 ifTrue: [
            elements := recoveredStack2.
            recoveredPC := 162.
        ].
        recoveredStep = 162 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 163.
        ].
        recoveredStep = 163 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 164.
        ].
        recoveredStep = 164 ifTrue: [
            (recoveredStack2) rehashTo: (recoveredStack3).
            recoveredPC := 166.
        ].
        recoveredStep = 166 ifTrue: [
            recoveredStack2 := elementCount.
            recoveredPC := 168.
        ].
        recoveredStep = 168 ifTrue: [
            recoveredStack2 := (recoveredStack2) + (-1).
            recoveredPC := 169.
        ].
        recoveredStep = 169 ifTrue: [
            elementCount := recoveredStack2.
            recoveredPC := 171.
        ].
        recoveredStep = 171 ifTrue: [
            recoveredStack2 := recoveredLocal4.
            recoveredPC := 172.
        ].
        recoveredStep = 172 ifTrue: [
            recoveredStack2 := (recoveredStack2) stringTable.
            recoveredPC := 174.
        ].
        recoveredStep = 174 ifTrue: [
            recoveredLocal2 := recoveredStack2.
            recoveredPC := 175.
        ].
        recoveredStep = 175 ifTrue: [
            recoveredStack2 := recoveredLocal4.
            recoveredPC := 176.
        ].
        recoveredStep = 176 ifTrue: [
            recoveredStack2 := (recoveredStack2) stringIndex.
            recoveredPC := 178.
        ].
        recoveredStep = 178 ifTrue: [
            recoveredLocal6 := recoveredStack2.
            recoveredPC := 180.
        ].
        recoveredStep = 180 ifTrue: [
            recoveredStack2 := recoveredLocal4.
            recoveredPC := 181.
        ].
        recoveredStep = 181 ifTrue: [
            recoveredStack3 := recoveredStack2.
            recoveredPC := 182.
        ].
        recoveredStep = 182 ifTrue: [
            recoveredStack4 := recoveredLocal4.
            recoveredPC := 183.
        ].
        recoveredStep = 183 ifTrue: [
            recoveredStack4 := (recoveredStack4) key.
            recoveredPC := 185.
        ].
        recoveredStep = 185 ifTrue: [
            (recoveredStack3) stringTable: (recoveredStack4).
            recoveredPC := 187.
        ].
        recoveredStep = 187 ifTrue: [
            recoveredStack3 := 0.
            recoveredPC := 189.
        ].
        recoveredStep = 189 ifTrue: [
            (recoveredStack2) stringIndex: (recoveredStack3).
            recoveredPC := 191.
        ].
        recoveredStep = 191 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 192.
        ].
        recoveredStep = 192 ifTrue: [
            recoveredStack3 := recoveredLocal6.
            recoveredPC := 194.
        ].
        recoveredStep = 194 ifTrue: [
            recoveredStack4 := recoveredLocal2.
            recoveredPC := 195.
        ].
        recoveredStep = 195 ifTrue: [
            (recoveredStack2) removeStringAtIndex: (recoveredStack3) from: (recoveredStack4).
            recoveredPC := 197.
        ].
        recoveredStep = 197 ifTrue: [
            recoveredStack2 := recoveredLocal4.
            recoveredPC := 198.
        ].
        recoveredStep = 198 ifTrue: [
            recoveredStack2 := (recoveredStack2) value.
            recoveredPC := 199.
        ].
        recoveredStep = 199 ifTrue: [
            ^recoveredStack2
        ].
        recoveredStep = 200 ifTrue: [
            (recoveredStack1 isInteger and: [recoveredLocal1 isInteger]) ifTrue: [(recoveredLocal1 + 1 <= recoveredStack1) ifTrue: [recoveredLocal1 := recoveredLocal1 + 1. recoveredPC := 124] ifFalse: [recoveredLocal1 := nil. recoveredPC := 214]] ifFalse: [recoveredPC := 204].
        ].
        recoveredStep = 204 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 205.
        ].
        recoveredStep = 205 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 206.
        ].
        recoveredStep = 206 ifTrue: [
            recoveredStack3 := (recoveredStack3) + (1).
            recoveredPC := 207.
        ].
        recoveredStep = 207 ifTrue: [
            recoveredStack4 := recoveredStack3.
            recoveredPC := 208.
        ].
        recoveredStep = 208 ifTrue: [
            recoveredLocal1 := recoveredStack4.
            recoveredPC := 209.
        ].
        recoveredStep = 209 ifTrue: [
            recoveredStack2 := (recoveredStack2) < (recoveredStack3).
            recoveredPC := 210.
        ].
        recoveredStep = 210 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 212] ifFalse: [recoveredPC := 124].
        ].
        recoveredStep = 212 ifTrue: [
            recoveredStack2 := nil.
            recoveredPC := 213.
        ].
        recoveredStep = 213 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 214.
        ].
        recoveredStep = 214 ifTrue: [
            recoveredPC := 215.
        ].
        recoveredStep = 215 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 217.
        ].
        recoveredStep = 217 ifTrue: [
            recoveredStack1 := (recoveredStack1) value.
            recoveredPC := 218.
        ].
        recoveredStep = 218 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"kernel.ic method 0x2002e93c; bytecode file offset 0x79888"
!EsPoolDictionary methodsFor: 'recovered'!
addAllAssociations: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := 1.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredLocal5 := recoveredStack1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := strings.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := (recoveredStack1) last.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (1).
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredPC := 56.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack3 := recoveredLocal4.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack2 := (recoveredStack2) at: (recoveredStack3).
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack2 := (recoveredStack2) key.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack2 := (recoveredStack2) size.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (recoveredStack2).
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (1).
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (1).
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack2 := 32767.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack1 := (recoveredStack1) <= (recoveredStack2).
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 66] ifFalse: [recoveredPC := 76].
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack2 := (recoveredStack2) size.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack1 := (recoveredStack1) <= (recoveredStack2).
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 32] ifFalse: [recoveredPC := 76].
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack1 := String.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack2 := (recoveredStack2) + (-1).
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack1 := (recoveredStack1) new: (recoveredStack2).
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack2 := 1.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack3 := recoveredLocal3.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredStack3 := (recoveredStack3) size.
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack4 := recoveredLocal3.
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            recoveredStack5 := 1.
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            (recoveredStack1) replaceFrom: (recoveredStack2) to: (recoveredStack3) with: (recoveredStack4) startingAt: (recoveredStack5).
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (1).
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            recoveredStack2 := recoveredLocal5.
            recoveredPC := 116.
        ].
        recoveredStep = 116 ifTrue: [
            recoveredStack3 := recoveredLocal4.
            recoveredPC := 119.
        ].
        recoveredStep = 119 ifTrue: [
            recoveredStack3 := (recoveredStack3) + (-1).
            recoveredPC := 120.
        ].
        recoveredStep = 120 ifTrue: [
            recoveredStack4 := [:recoveredBlock120Arg1 | 
    | recoveredBlock120Local1 recoveredBlock120Value0 recoveredBlock120Value1 recoveredBlock120Value2 recoveredBlock120Value3 recoveredBlock120Value4 recoveredBlock120Value5 recoveredBlock120Value6 recoveredBlock120Value7 recoveredBlock120Value8 recoveredBlock120Value9 recoveredBlock120Value10 recoveredBlock120Value11 recoveredBlock120Value12 recoveredBlock120Value13 recoveredBlock120Value14 recoveredBlock120Value15 recoveredBlock120Value16 recoveredBlock120Value17 recoveredBlock120Value18 recoveredBlock120Value19 |
    recoveredBlock120Value0 := recoveredBlock120Arg1.
    recoveredBlock120Value1 := (recoveredBlock120Value0) key.
    recoveredBlock120Local1 := recoveredBlock120Value1.
    recoveredBlock120Value2 := recoveredBlock120Arg1.
    recoveredBlock120Value3 := recoveredBlock120Value2.
    recoveredBlock120Value4 := recoveredLocal2.
    (recoveredBlock120Value3) stringIndex: (recoveredBlock120Value4).
    recoveredBlock120Value5 := recoveredLocal1.
    (recoveredBlock120Value2) stringTable: (recoveredBlock120Value5).
    recoveredBlock120Value6 := recoveredLocal1.
    recoveredBlock120Value7 := recoveredLocal2.
    recoveredBlock120Value8 := recoveredLocal2.
    recoveredBlock120Value9 := recoveredBlock120Local1.
    recoveredBlock120Value10 := (recoveredBlock120Value9) size.
    recoveredBlock120Value11 := (recoveredBlock120Value8) + (recoveredBlock120Value10).
    recoveredBlock120Value12 := (recoveredBlock120Value11) + (-1).
    recoveredBlock120Value13 := recoveredBlock120Local1.
    (recoveredBlock120Value6) replaceFrom: (recoveredBlock120Value7) to: (recoveredBlock120Value12) with: (recoveredBlock120Value13) startingAt: (1).
    recoveredBlock120Value14 := recoveredLocal2.
    recoveredBlock120Value15 := recoveredBlock120Local1.
    recoveredBlock120Value16 := (recoveredBlock120Value15) size.
    recoveredBlock120Value17 := (recoveredBlock120Value14) + (recoveredBlock120Value16).
    recoveredBlock120Value18 := (recoveredBlock120Value17) + (1).
    recoveredBlock120Value19 := recoveredBlock120Value18.
    recoveredLocal2 := recoveredBlock120Value19.
    recoveredBlock120Value18
].
            recoveredPC := 172.
        ].
        recoveredStep = 172 ifTrue: [
            (recoveredStack1) from: (recoveredStack2) to: (recoveredStack3) do: (recoveredStack4).
            recoveredPC := 175.
        ].
        recoveredStep = 175 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 176.
        ].
        recoveredStep = 176 ifTrue: [
            recoveredStack2 := [:recoveredBlock176Arg1 | 
    | recoveredBlock176Stack0 recoveredBlock176Stack1 recoveredBlock176Stack2 recoveredBlock176Stack3 recoveredBlock176Stack4 recoveredBlock176PC recoveredBlock176Step recoveredBlock176Done recoveredBlock176Result |
    recoveredBlock176Stack0 := self.
    recoveredBlock176PC := 182.
    recoveredBlock176Done := false.
    [recoveredBlock176Done not] whileTrue: [
        recoveredBlock176Step := recoveredBlock176PC.
        recoveredBlock176Step = 182 ifTrue: [
            recoveredBlock176Stack1 := nil.
            recoveredBlock176PC := 183.
        ].
        recoveredBlock176Step = 183 ifTrue: [
            recoveredBlock176Stack2 := recoveredBlock176Arg1.
            recoveredBlock176PC := 184.
        ].
        recoveredBlock176Step = 184 ifTrue: [
            recoveredBlock176Stack2 := (recoveredBlock176Stack2) stringTable.
            recoveredBlock176PC := 186.
        ].
        recoveredBlock176Step = 186 ifTrue: [
            recoveredBlock176Stack3 := recoveredLocal3.
            recoveredBlock176PC := 189.
        ].
        recoveredBlock176Step = 189 ifTrue: [
            (recoveredBlock176Stack2 ~~ recoveredBlock176Stack3) ifTrue: [recoveredBlock176PC := 199] ifFalse: [recoveredBlock176PC := 192].
        ].
        recoveredBlock176Step = 192 ifTrue: [
            recoveredBlock176PC := 193.
        ].
        recoveredBlock176Step = 193 ifTrue: [
            recoveredBlock176Stack1 := recoveredBlock176Arg1.
            recoveredBlock176PC := 194.
        ].
        recoveredBlock176Step = 194 ifTrue: [
            recoveredBlock176Stack2 := recoveredLocal1.
            recoveredBlock176PC := 197.
        ].
        recoveredBlock176Step = 197 ifTrue: [
            recoveredBlock176Stack1 := (recoveredBlock176Stack1) stringTable: (recoveredBlock176Stack2).
            recoveredBlock176PC := 199.
        ].
        recoveredBlock176Step = 199 ifTrue: [
            recoveredBlock176Result := recoveredBlock176Stack1.
            recoveredBlock176Done := true.
        ].
    ].
    recoveredBlock176Result
].
            recoveredPC := 200.
        ].
        recoveredStep = 200 ifTrue: [
            (recoveredStack1) associationsDo: (recoveredStack2).
            recoveredPC := 202.
        ].
        recoveredStep = 202 ifTrue: [
            recoveredStack1 := strings.
            recoveredPC := 204.
        ].
        recoveredStep = 204 ifTrue: [
            recoveredStack2 := strings.
            recoveredPC := 206.
        ].
        recoveredStep = 206 ifTrue: [
            recoveredStack2 := (recoveredStack2) size.
            recoveredPC := 207.
        ].
        recoveredStep = 207 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 210.
        ].
        recoveredStep = 210 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 212.
        ].
        recoveredStep = 212 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 215.
        ].
        recoveredStep = 215 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 218.
        ].
        recoveredStep = 218 ifTrue: [
            recoveredStack2 := (recoveredStack2) size.
            recoveredPC := 219.
        ].
        recoveredStep = 219 ifTrue: [
            recoveredStack1 := (recoveredStack1) < (recoveredStack2).
            recoveredPC := 220.
        ].
        recoveredStep = 220 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 226] ifFalse: [recoveredPC := 224].
        ].
        recoveredStep = 224 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 225.
        ].
        recoveredStep = 225 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 226 ifTrue: [
            recoveredStack1 := strings.
            recoveredPC := 228.
        ].
        recoveredStep = 228 ifTrue: [
            recoveredStack2 := String.
            recoveredPC := 230.
        ].
        recoveredStep = 230 ifTrue: [
            recoveredStack2 := (recoveredStack2) new.
            recoveredPC := 232.
        ].
        recoveredStep = 232 ifTrue: [
            recoveredStack1 := (recoveredStack1) copyWith: (recoveredStack2).
            recoveredPC := 234.
        ].
        recoveredStep = 234 ifTrue: [
            strings := recoveredStack1.
            recoveredPC := 236.
        ].
        recoveredStep = 236 ifTrue: [
            recoveredPC := 9.
        ].
    ]
! !

"kernel.ic method 0x2002eb94; bytecode file offset 0x79ae4"
!EsPoolDictionary methodsFor: 'recovered'!
at: recoveredArg1 ifAbsentPut: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredStack7 recoveredStack8 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) hash.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := elements.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack2 := (recoveredStack2) size.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack3 := recoveredStack2.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredLocal2 := recoveredStack3.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) \\ (recoveredStack2).
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (1).
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (-1).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredPC := 111.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack2 := elements.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack2 := (recoveredStack2) at: (recoveredStack3).
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack3 := recoveredStack2.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredLocal3 := recoveredStack3.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            (recoveredStack2 ~~ nil) ifTrue: [recoveredPC := 99] ifFalse: [recoveredPC := 32].
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack2 := (recoveredStack2) value.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredLocal3 := recoveredStack2.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack2 := elements.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack2 := (recoveredStack2) isReadOnly.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 44] ifFalse: [recoveredPC := 50].
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack2 := elements.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack2 := (recoveredStack2) copy.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            elements := recoveredStack2.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack2 := elements.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack4 := EsPoolAssociation.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack4 := (recoveredStack4) new.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack5 := recoveredStack4.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack6 := self.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack7 := recoveredArg1.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack6 := (recoveredStack6) addString: (recoveredStack7).
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            (recoveredStack5) stringIndex: (recoveredStack6).
            recoveredStack5 := recoveredStack4.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack6 := strings.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack6 := (recoveredStack6) last.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            (recoveredStack5) stringTable: (recoveredStack6).
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack5 := recoveredLocal3.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack4 := (recoveredStack4) value: (recoveredStack5).
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack2 := elementCount.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack2 := (recoveredStack2) + (1).
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack3 := recoveredStack2.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            elementCount := recoveredStack3.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack3 := recoveredLocal2.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack4 := 5.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack3 := (recoveredStack3) * (recoveredStack4).
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredStack4 := 8.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack3 := (recoveredStack3) // (recoveredStack4).
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack2 := (recoveredStack2) > (recoveredStack3).
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 94] ifFalse: [recoveredPC := 97].
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            (recoveredStack2) expand.
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            ^recoveredStack2
        ].
        recoveredStep = 99 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack2 := (recoveredStack2) key.
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            recoveredStack2 := (recoveredStack2) = (recoveredStack3).
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 108] ifFalse: [recoveredPC := 111].
        ].
        recoveredStep = 108 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            recoveredStack2 := (recoveredStack2) value.
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            ^recoveredStack2
        ].
        recoveredStep = 111 ifTrue: [
            (recoveredStack1 isInteger and: [recoveredLocal1 isInteger]) ifTrue: [(recoveredLocal1 + 1 <= recoveredStack1) ifTrue: [recoveredLocal1 := recoveredLocal1 + 1. recoveredPC := 22] ifFalse: [recoveredLocal1 := nil. recoveredPC := 125]] ifFalse: [recoveredPC := 115].
        ].
        recoveredStep = 115 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 116.
        ].
        recoveredStep = 116 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 117.
        ].
        recoveredStep = 117 ifTrue: [
            recoveredStack3 := (recoveredStack3) + (1).
            recoveredPC := 118.
        ].
        recoveredStep = 118 ifTrue: [
            recoveredStack4 := recoveredStack3.
            recoveredPC := 119.
        ].
        recoveredStep = 119 ifTrue: [
            recoveredLocal1 := recoveredStack4.
            recoveredPC := 120.
        ].
        recoveredStep = 120 ifTrue: [
            recoveredStack2 := (recoveredStack2) < (recoveredStack3).
            recoveredPC := 121.
        ].
        recoveredStep = 121 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 123] ifFalse: [recoveredPC := 22].
        ].
        recoveredStep = 123 ifTrue: [
            recoveredStack2 := nil.
            recoveredPC := 124.
        ].
        recoveredStep = 124 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 125.
        ].
        recoveredStep = 125 ifTrue: [
            recoveredPC := 126.
        ].
        recoveredStep = 126 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 128.
        ].
        recoveredStep = 128 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 129.
        ].
        recoveredStep = 129 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 130.
        ].
        recoveredStep = 130 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (-1).
            recoveredPC := 131.
        ].
        recoveredStep = 131 ifTrue: [
            recoveredPC := 223.
        ].
        recoveredStep = 134 ifTrue: [
            recoveredStack2 := elements.
            recoveredPC := 136.
        ].
        recoveredStep = 136 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 137.
        ].
        recoveredStep = 137 ifTrue: [
            recoveredStack2 := (recoveredStack2) at: (recoveredStack3).
            recoveredPC := 138.
        ].
        recoveredStep = 138 ifTrue: [
            recoveredStack3 := recoveredStack2.
            recoveredPC := 139.
        ].
        recoveredStep = 139 ifTrue: [
            recoveredLocal3 := recoveredStack3.
            recoveredPC := 140.
        ].
        recoveredStep = 140 ifTrue: [
            (recoveredStack2 ~~ nil) ifTrue: [recoveredPC := 211] ifFalse: [recoveredPC := 144].
        ].
        recoveredStep = 144 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 146.
        ].
        recoveredStep = 146 ifTrue: [
            recoveredStack2 := (recoveredStack2) value.
            recoveredPC := 147.
        ].
        recoveredStep = 147 ifTrue: [
            recoveredLocal3 := recoveredStack2.
            recoveredPC := 148.
        ].
        recoveredStep = 148 ifTrue: [
            recoveredStack2 := elements.
            recoveredPC := 150.
        ].
        recoveredStep = 150 ifTrue: [
            recoveredStack2 := (recoveredStack2) isReadOnly.
            recoveredPC := 152.
        ].
        recoveredStep = 152 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 156] ifFalse: [recoveredPC := 162].
        ].
        recoveredStep = 156 ifTrue: [
            recoveredStack2 := elements.
            recoveredPC := 158.
        ].
        recoveredStep = 158 ifTrue: [
            recoveredStack2 := (recoveredStack2) copy.
            recoveredPC := 160.
        ].
        recoveredStep = 160 ifTrue: [
            elements := recoveredStack2.
            recoveredPC := 162.
        ].
        recoveredStep = 162 ifTrue: [
            recoveredStack2 := elements.
            recoveredPC := 164.
        ].
        recoveredStep = 164 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 165.
        ].
        recoveredStep = 165 ifTrue: [
            recoveredStack4 := EsPoolAssociation.
            recoveredPC := 167.
        ].
        recoveredStep = 167 ifTrue: [
            recoveredStack4 := (recoveredStack4) new.
            recoveredPC := 169.
        ].
        recoveredStep = 169 ifTrue: [
            recoveredStack5 := recoveredStack4.
            recoveredPC := 170.
        ].
        recoveredStep = 170 ifTrue: [
            recoveredStack6 := self.
            recoveredPC := 171.
        ].
        recoveredStep = 171 ifTrue: [
            recoveredStack7 := recoveredArg1.
            recoveredPC := 173.
        ].
        recoveredStep = 173 ifTrue: [
            recoveredStack6 := (recoveredStack6) addString: (recoveredStack7).
            recoveredPC := 175.
        ].
        recoveredStep = 175 ifTrue: [
            (recoveredStack5) stringIndex: (recoveredStack6).
            recoveredStack5 := recoveredStack4.
            recoveredPC := 178.
        ].
        recoveredStep = 178 ifTrue: [
            recoveredStack6 := strings.
            recoveredPC := 180.
        ].
        recoveredStep = 180 ifTrue: [
            recoveredStack6 := (recoveredStack6) last.
            recoveredPC := 182.
        ].
        recoveredStep = 182 ifTrue: [
            (recoveredStack5) stringTable: (recoveredStack6).
            recoveredPC := 184.
        ].
        recoveredStep = 184 ifTrue: [
            recoveredStack5 := recoveredLocal3.
            recoveredPC := 185.
        ].
        recoveredStep = 185 ifTrue: [
            recoveredStack4 := (recoveredStack4) value: (recoveredStack5).
            recoveredPC := 187.
        ].
        recoveredStep = 187 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredPC := 189.
        ].
        recoveredStep = 189 ifTrue: [
            recoveredStack2 := elementCount.
            recoveredPC := 191.
        ].
        recoveredStep = 191 ifTrue: [
            recoveredStack2 := (recoveredStack2) + (1).
            recoveredPC := 192.
        ].
        recoveredStep = 192 ifTrue: [
            recoveredStack3 := recoveredStack2.
            recoveredPC := 193.
        ].
        recoveredStep = 193 ifTrue: [
            elementCount := recoveredStack3.
            recoveredPC := 195.
        ].
        recoveredStep = 195 ifTrue: [
            recoveredStack3 := recoveredLocal2.
            recoveredPC := 196.
        ].
        recoveredStep = 196 ifTrue: [
            recoveredStack4 := 5.
            recoveredPC := 198.
        ].
        recoveredStep = 198 ifTrue: [
            recoveredStack3 := (recoveredStack3) * (recoveredStack4).
            recoveredPC := 199.
        ].
        recoveredStep = 199 ifTrue: [
            recoveredStack4 := 8.
            recoveredPC := 201.
        ].
        recoveredStep = 201 ifTrue: [
            recoveredStack3 := (recoveredStack3) // (recoveredStack4).
            recoveredPC := 202.
        ].
        recoveredStep = 202 ifTrue: [
            recoveredStack2 := (recoveredStack2) > (recoveredStack3).
            recoveredPC := 203.
        ].
        recoveredStep = 203 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 206] ifFalse: [recoveredPC := 209].
        ].
        recoveredStep = 206 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 207.
        ].
        recoveredStep = 207 ifTrue: [
            (recoveredStack2) expand.
            recoveredPC := 209.
        ].
        recoveredStep = 209 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 210.
        ].
        recoveredStep = 210 ifTrue: [
            ^recoveredStack2
        ].
        recoveredStep = 211 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 212.
        ].
        recoveredStep = 212 ifTrue: [
            recoveredStack2 := (recoveredStack2) key.
            recoveredPC := 214.
        ].
        recoveredStep = 214 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 216.
        ].
        recoveredStep = 216 ifTrue: [
            recoveredStack2 := (recoveredStack2) = (recoveredStack3).
            recoveredPC := 217.
        ].
        recoveredStep = 217 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 220] ifFalse: [recoveredPC := 223].
        ].
        recoveredStep = 220 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 221.
        ].
        recoveredStep = 221 ifTrue: [
            recoveredStack2 := (recoveredStack2) value.
            recoveredPC := 222.
        ].
        recoveredStep = 222 ifTrue: [
            ^recoveredStack2
        ].
        recoveredStep = 223 ifTrue: [
            (recoveredStack1 isInteger and: [recoveredLocal1 isInteger]) ifTrue: [(recoveredLocal1 + 1 <= recoveredStack1) ifTrue: [recoveredLocal1 := recoveredLocal1 + 1. recoveredPC := 134] ifFalse: [recoveredLocal1 := nil. recoveredPC := 237]] ifFalse: [recoveredPC := 227].
        ].
        recoveredStep = 227 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 228.
        ].
        recoveredStep = 228 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 229.
        ].
        recoveredStep = 229 ifTrue: [
            recoveredStack3 := (recoveredStack3) + (1).
            recoveredPC := 230.
        ].
        recoveredStep = 230 ifTrue: [
            recoveredStack4 := recoveredStack3.
            recoveredPC := 231.
        ].
        recoveredStep = 231 ifTrue: [
            recoveredLocal1 := recoveredStack4.
            recoveredPC := 232.
        ].
        recoveredStep = 232 ifTrue: [
            recoveredStack2 := (recoveredStack2) < (recoveredStack3).
            recoveredPC := 233.
        ].
        recoveredStep = 233 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 235] ifFalse: [recoveredPC := 134].
        ].
        recoveredStep = 235 ifTrue: [
            recoveredStack2 := nil.
            recoveredPC := 236.
        ].
        recoveredStep = 236 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 237.
        ].
        recoveredStep = 237 ifTrue: [
            recoveredPC := 238.
        ].
        recoveredStep = 238 ifTrue: [
            recoveredStack0 := (recoveredStack0) expand.
            recoveredPC := 240.
        ].
        recoveredStep = 240 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 242.
        ].
        recoveredStep = 242 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 244.
        ].
        recoveredStep = 244 ifTrue: [
            (recoveredStack0) at: (recoveredStack1) ifAbsentPut: (recoveredStack2).
            recoveredPC := 246.
        ].
        recoveredStep = 246 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 247.
        ].
        recoveredStep = 247 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"kernel.ic method 0x2002efdc; bytecode file offset 0x79f24"
!EsPoolDictionary methodsFor: 'recovered'!
at: recoveredArg1 put: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredStack7 recoveredStack8 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) hash.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := elements.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack2 := (recoveredStack2) size.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack3 := recoveredStack2.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredLocal2 := recoveredStack3.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) \\ (recoveredStack2).
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (1).
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (-1).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredPC := 114.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack2 := elements.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack2 := (recoveredStack2) at: (recoveredStack3).
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack3 := recoveredStack2.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredLocal3 := recoveredStack3.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            (recoveredStack2 ~~ nil) ifTrue: [recoveredPC := 96] ifFalse: [recoveredPC := 32].
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack2 := elements.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack2 := (recoveredStack2) isReadOnly.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 38] ifFalse: [recoveredPC := 44].
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack2 := elements.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack2 := (recoveredStack2) copy.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            elements := recoveredStack2.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack2 := elements.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack4 := EsPoolAssociation.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack4 := (recoveredStack4) new.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack5 := recoveredStack4.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack6 := self.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack7 := recoveredArg1.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack6 := (recoveredStack6) addString: (recoveredStack7).
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            (recoveredStack5) stringIndex: (recoveredStack6).
            recoveredStack5 := recoveredStack4.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack6 := strings.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack6 := (recoveredStack6) last.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            (recoveredStack5) stringTable: (recoveredStack6).
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack5 := recoveredArg2.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack4 := (recoveredStack4) value: (recoveredStack5).
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack2 := elementCount.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack2 := (recoveredStack2) + (1).
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack3 := recoveredStack2.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            elementCount := recoveredStack3.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack3 := recoveredLocal2.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack4 := 5.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack3 := (recoveredStack3) * (recoveredStack4).
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack4 := 8.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack3 := (recoveredStack3) // (recoveredStack4).
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack2 := (recoveredStack2) > (recoveredStack3).
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 90] ifFalse: [recoveredPC := 93].
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            (recoveredStack2) expand.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            ^recoveredStack2
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            recoveredStack2 := (recoveredStack2) key.
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            recoveredStack2 := (recoveredStack2) = (recoveredStack3).
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 106] ifFalse: [recoveredPC := 114].
        ].
        recoveredStep = 106 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            (recoveredStack2) value: (recoveredStack3).
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            ^recoveredStack2
        ].
        recoveredStep = 114 ifTrue: [
            (recoveredStack1 isInteger and: [recoveredLocal1 isInteger]) ifTrue: [(recoveredLocal1 + 1 <= recoveredStack1) ifTrue: [recoveredLocal1 := recoveredLocal1 + 1. recoveredPC := 22] ifFalse: [recoveredLocal1 := nil. recoveredPC := 128]] ifFalse: [recoveredPC := 118].
        ].
        recoveredStep = 118 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 119.
        ].
        recoveredStep = 119 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 120.
        ].
        recoveredStep = 120 ifTrue: [
            recoveredStack3 := (recoveredStack3) + (1).
            recoveredPC := 121.
        ].
        recoveredStep = 121 ifTrue: [
            recoveredStack4 := recoveredStack3.
            recoveredPC := 122.
        ].
        recoveredStep = 122 ifTrue: [
            recoveredLocal1 := recoveredStack4.
            recoveredPC := 123.
        ].
        recoveredStep = 123 ifTrue: [
            recoveredStack2 := (recoveredStack2) < (recoveredStack3).
            recoveredPC := 124.
        ].
        recoveredStep = 124 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 126] ifFalse: [recoveredPC := 22].
        ].
        recoveredStep = 126 ifTrue: [
            recoveredStack2 := nil.
            recoveredPC := 127.
        ].
        recoveredStep = 127 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 128.
        ].
        recoveredStep = 128 ifTrue: [
            recoveredPC := 129.
        ].
        recoveredStep = 129 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 131.
        ].
        recoveredStep = 131 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 132.
        ].
        recoveredStep = 132 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 133.
        ].
        recoveredStep = 133 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (-1).
            recoveredPC := 134.
        ].
        recoveredStep = 134 ifTrue: [
            recoveredPC := 230.
        ].
        recoveredStep = 138 ifTrue: [
            recoveredStack2 := elements.
            recoveredPC := 140.
        ].
        recoveredStep = 140 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 141.
        ].
        recoveredStep = 141 ifTrue: [
            recoveredStack2 := (recoveredStack2) at: (recoveredStack3).
            recoveredPC := 142.
        ].
        recoveredStep = 142 ifTrue: [
            recoveredStack3 := recoveredStack2.
            recoveredPC := 143.
        ].
        recoveredStep = 143 ifTrue: [
            recoveredLocal3 := recoveredStack3.
            recoveredPC := 144.
        ].
        recoveredStep = 144 ifTrue: [
            (recoveredStack2 ~~ nil) ifTrue: [recoveredPC := 212] ifFalse: [recoveredPC := 148].
        ].
        recoveredStep = 148 ifTrue: [
            recoveredStack2 := elements.
            recoveredPC := 150.
        ].
        recoveredStep = 150 ifTrue: [
            recoveredStack2 := (recoveredStack2) isReadOnly.
            recoveredPC := 151.
        ].
        recoveredStep = 151 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 154] ifFalse: [recoveredPC := 160].
        ].
        recoveredStep = 154 ifTrue: [
            recoveredStack2 := elements.
            recoveredPC := 156.
        ].
        recoveredStep = 156 ifTrue: [
            recoveredStack2 := (recoveredStack2) copy.
            recoveredPC := 158.
        ].
        recoveredStep = 158 ifTrue: [
            elements := recoveredStack2.
            recoveredPC := 160.
        ].
        recoveredStep = 160 ifTrue: [
            recoveredStack2 := elements.
            recoveredPC := 162.
        ].
        recoveredStep = 162 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 163.
        ].
        recoveredStep = 163 ifTrue: [
            recoveredStack4 := EsPoolAssociation.
            recoveredPC := 165.
        ].
        recoveredStep = 165 ifTrue: [
            recoveredStack4 := (recoveredStack4) new.
            recoveredPC := 167.
        ].
        recoveredStep = 167 ifTrue: [
            recoveredStack5 := recoveredStack4.
            recoveredPC := 168.
        ].
        recoveredStep = 168 ifTrue: [
            recoveredStack6 := self.
            recoveredPC := 169.
        ].
        recoveredStep = 169 ifTrue: [
            recoveredStack7 := recoveredArg1.
            recoveredPC := 171.
        ].
        recoveredStep = 171 ifTrue: [
            recoveredStack6 := (recoveredStack6) addString: (recoveredStack7).
            recoveredPC := 173.
        ].
        recoveredStep = 173 ifTrue: [
            (recoveredStack5) stringIndex: (recoveredStack6).
            recoveredStack5 := recoveredStack4.
            recoveredPC := 176.
        ].
        recoveredStep = 176 ifTrue: [
            recoveredStack6 := strings.
            recoveredPC := 178.
        ].
        recoveredStep = 178 ifTrue: [
            recoveredStack6 := (recoveredStack6) last.
            recoveredPC := 180.
        ].
        recoveredStep = 180 ifTrue: [
            (recoveredStack5) stringTable: (recoveredStack6).
            recoveredPC := 182.
        ].
        recoveredStep = 182 ifTrue: [
            recoveredStack5 := recoveredArg2.
            recoveredPC := 184.
        ].
        recoveredStep = 184 ifTrue: [
            recoveredStack4 := (recoveredStack4) value: (recoveredStack5).
            recoveredPC := 186.
        ].
        recoveredStep = 186 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredPC := 188.
        ].
        recoveredStep = 188 ifTrue: [
            recoveredStack2 := elementCount.
            recoveredPC := 190.
        ].
        recoveredStep = 190 ifTrue: [
            recoveredStack2 := (recoveredStack2) + (1).
            recoveredPC := 191.
        ].
        recoveredStep = 191 ifTrue: [
            recoveredStack3 := recoveredStack2.
            recoveredPC := 192.
        ].
        recoveredStep = 192 ifTrue: [
            elementCount := recoveredStack3.
            recoveredPC := 194.
        ].
        recoveredStep = 194 ifTrue: [
            recoveredStack3 := recoveredLocal2.
            recoveredPC := 195.
        ].
        recoveredStep = 195 ifTrue: [
            recoveredStack4 := 5.
            recoveredPC := 197.
        ].
        recoveredStep = 197 ifTrue: [
            recoveredStack3 := (recoveredStack3) * (recoveredStack4).
            recoveredPC := 198.
        ].
        recoveredStep = 198 ifTrue: [
            recoveredStack4 := 8.
            recoveredPC := 200.
        ].
        recoveredStep = 200 ifTrue: [
            recoveredStack3 := (recoveredStack3) // (recoveredStack4).
            recoveredPC := 201.
        ].
        recoveredStep = 201 ifTrue: [
            recoveredStack2 := (recoveredStack2) > (recoveredStack3).
            recoveredPC := 202.
        ].
        recoveredStep = 202 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 206] ifFalse: [recoveredPC := 209].
        ].
        recoveredStep = 206 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 207.
        ].
        recoveredStep = 207 ifTrue: [
            (recoveredStack2) expand.
            recoveredPC := 209.
        ].
        recoveredStep = 209 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 211.
        ].
        recoveredStep = 211 ifTrue: [
            ^recoveredStack2
        ].
        recoveredStep = 212 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 213.
        ].
        recoveredStep = 213 ifTrue: [
            recoveredStack2 := (recoveredStack2) key.
            recoveredPC := 215.
        ].
        recoveredStep = 215 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 217.
        ].
        recoveredStep = 217 ifTrue: [
            recoveredStack2 := (recoveredStack2) = (recoveredStack3).
            recoveredPC := 218.
        ].
        recoveredStep = 218 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 222] ifFalse: [recoveredPC := 230].
        ].
        recoveredStep = 222 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 223.
        ].
        recoveredStep = 223 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 225.
        ].
        recoveredStep = 225 ifTrue: [
            (recoveredStack2) value: (recoveredStack3).
            recoveredPC := 227.
        ].
        recoveredStep = 227 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 229.
        ].
        recoveredStep = 229 ifTrue: [
            ^recoveredStack2
        ].
        recoveredStep = 230 ifTrue: [
            (recoveredStack1 isInteger and: [recoveredLocal1 isInteger]) ifTrue: [(recoveredLocal1 + 1 <= recoveredStack1) ifTrue: [recoveredLocal1 := recoveredLocal1 + 1. recoveredPC := 138] ifFalse: [recoveredLocal1 := nil. recoveredPC := 244]] ifFalse: [recoveredPC := 234].
        ].
        recoveredStep = 234 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 235.
        ].
        recoveredStep = 235 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 236.
        ].
        recoveredStep = 236 ifTrue: [
            recoveredStack3 := (recoveredStack3) + (1).
            recoveredPC := 237.
        ].
        recoveredStep = 237 ifTrue: [
            recoveredStack4 := recoveredStack3.
            recoveredPC := 238.
        ].
        recoveredStep = 238 ifTrue: [
            recoveredLocal1 := recoveredStack4.
            recoveredPC := 239.
        ].
        recoveredStep = 239 ifTrue: [
            recoveredStack2 := (recoveredStack2) < (recoveredStack3).
            recoveredPC := 240.
        ].
        recoveredStep = 240 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 242] ifFalse: [recoveredPC := 138].
        ].
        recoveredStep = 242 ifTrue: [
            recoveredStack2 := nil.
            recoveredPC := 243.
        ].
        recoveredStep = 243 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 244.
        ].
        recoveredStep = 244 ifTrue: [
            recoveredPC := 245.
        ].
        recoveredStep = 245 ifTrue: [
            recoveredStack0 := (recoveredStack0) expand.
            recoveredPC := 247.
        ].
        recoveredStep = 247 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 249.
        ].
        recoveredStep = 249 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 251.
        ].
        recoveredStep = 251 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1) put: (recoveredStack2).
            recoveredPC := 253.
        ].
        recoveredStep = 253 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"kernel.ic method 0x2002f4f4; bytecode file offset 0x7a444"
!EsPoolDictionary methodsFor: 'recovered'!
add: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredStack7 recoveredStack8 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) key.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredLocal2 := recoveredStack2.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := (recoveredStack1) hash.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack2 := elements.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := (recoveredStack2) size.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack3 := recoveredStack2.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredLocal3 := recoveredStack3.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) \\ (recoveredStack2).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (1).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredLocal5 := recoveredStack1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (-1).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredPC := 122.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack2 := elements.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack2 := (recoveredStack2) at: (recoveredStack3).
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack3 := recoveredStack2.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredLocal4 := recoveredStack3.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            (recoveredStack2 ~~ nil) ifTrue: [recoveredPC := 104] ifFalse: [recoveredPC := 38].
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack2 := elements.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack2 := (recoveredStack2) isReadOnly.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 46] ifFalse: [recoveredPC := 52].
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack2 := elements.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack2 := (recoveredStack2) copy.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            elements := recoveredStack2.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack2 := elements.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack4 := EsPoolAssociation.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack4 := (recoveredStack4) new.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack5 := recoveredStack4.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack6 := self.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack7 := recoveredLocal2.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack6 := (recoveredStack6) addString: (recoveredStack7).
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            (recoveredStack5) stringIndex: (recoveredStack6).
            recoveredStack5 := recoveredStack4.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack6 := strings.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack6 := (recoveredStack6) last.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            (recoveredStack5) stringTable: (recoveredStack6).
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack5 := recoveredArg1.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack5 := (recoveredStack5) value.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack4 := (recoveredStack4) value: (recoveredStack5).
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack2 := elementCount.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack2 := (recoveredStack2) + (1).
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack3 := recoveredStack2.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            elementCount := recoveredStack3.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredStack3 := recoveredLocal3.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack4 := 5.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack3 := (recoveredStack3) * (recoveredStack4).
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredStack4 := 8.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredStack3 := (recoveredStack3) // (recoveredStack4).
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack2 := (recoveredStack2) > (recoveredStack3).
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 98] ifFalse: [recoveredPC := 101].
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            (recoveredStack2) expand.
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            ^recoveredStack2
        ].
        recoveredStep = 104 ifTrue: [
            recoveredStack2 := recoveredLocal4.
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            recoveredStack2 := (recoveredStack2) key.
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            recoveredStack3 := recoveredLocal2.
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            recoveredStack2 := (recoveredStack2) = (recoveredStack3).
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 112] ifFalse: [recoveredPC := 122].
        ].
        recoveredStep = 112 ifTrue: [
            recoveredStack2 := recoveredLocal4.
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            recoveredStack3 := (recoveredStack3) value.
            recoveredPC := 117.
        ].
        recoveredStep = 117 ifTrue: [
            (recoveredStack2) value: (recoveredStack3).
            recoveredPC := 119.
        ].
        recoveredStep = 119 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 121.
        ].
        recoveredStep = 121 ifTrue: [
            ^recoveredStack2
        ].
        recoveredStep = 122 ifTrue: [
            (recoveredStack1 isInteger and: [recoveredLocal1 isInteger]) ifTrue: [(recoveredLocal1 + 1 <= recoveredStack1) ifTrue: [recoveredLocal1 := recoveredLocal1 + 1. recoveredPC := 28] ifFalse: [recoveredLocal1 := nil. recoveredPC := 136]] ifFalse: [recoveredPC := 126].
        ].
        recoveredStep = 126 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 127.
        ].
        recoveredStep = 127 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 128.
        ].
        recoveredStep = 128 ifTrue: [
            recoveredStack3 := (recoveredStack3) + (1).
            recoveredPC := 129.
        ].
        recoveredStep = 129 ifTrue: [
            recoveredStack4 := recoveredStack3.
            recoveredPC := 130.
        ].
        recoveredStep = 130 ifTrue: [
            recoveredLocal1 := recoveredStack4.
            recoveredPC := 131.
        ].
        recoveredStep = 131 ifTrue: [
            recoveredStack2 := (recoveredStack2) < (recoveredStack3).
            recoveredPC := 132.
        ].
        recoveredStep = 132 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 134] ifFalse: [recoveredPC := 28].
        ].
        recoveredStep = 134 ifTrue: [
            recoveredStack2 := nil.
            recoveredPC := 135.
        ].
        recoveredStep = 135 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 136.
        ].
        recoveredStep = 136 ifTrue: [
            recoveredPC := 137.
        ].
        recoveredStep = 137 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 139.
        ].
        recoveredStep = 139 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 140.
        ].
        recoveredStep = 140 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 142.
        ].
        recoveredStep = 142 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (-1).
            recoveredPC := 143.
        ].
        recoveredStep = 143 ifTrue: [
            recoveredPC := 240.
        ].
        recoveredStep = 146 ifTrue: [
            recoveredStack2 := elements.
            recoveredPC := 148.
        ].
        recoveredStep = 148 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 149.
        ].
        recoveredStep = 149 ifTrue: [
            recoveredStack2 := (recoveredStack2) at: (recoveredStack3).
            recoveredPC := 150.
        ].
        recoveredStep = 150 ifTrue: [
            recoveredStack3 := recoveredStack2.
            recoveredPC := 151.
        ].
        recoveredStep = 151 ifTrue: [
            recoveredLocal4 := recoveredStack3.
            recoveredPC := 152.
        ].
        recoveredStep = 152 ifTrue: [
            (recoveredStack2 ~~ nil) ifTrue: [recoveredPC := 222] ifFalse: [recoveredPC := 156].
        ].
        recoveredStep = 156 ifTrue: [
            recoveredStack2 := elements.
            recoveredPC := 158.
        ].
        recoveredStep = 158 ifTrue: [
            recoveredStack2 := (recoveredStack2) isReadOnly.
            recoveredPC := 160.
        ].
        recoveredStep = 160 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 164] ifFalse: [recoveredPC := 170].
        ].
        recoveredStep = 164 ifTrue: [
            recoveredStack2 := elements.
            recoveredPC := 166.
        ].
        recoveredStep = 166 ifTrue: [
            recoveredStack2 := (recoveredStack2) copy.
            recoveredPC := 168.
        ].
        recoveredStep = 168 ifTrue: [
            elements := recoveredStack2.
            recoveredPC := 170.
        ].
        recoveredStep = 170 ifTrue: [
            recoveredStack2 := elements.
            recoveredPC := 172.
        ].
        recoveredStep = 172 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 173.
        ].
        recoveredStep = 173 ifTrue: [
            recoveredStack4 := EsPoolAssociation.
            recoveredPC := 175.
        ].
        recoveredStep = 175 ifTrue: [
            recoveredStack4 := (recoveredStack4) new.
            recoveredPC := 177.
        ].
        recoveredStep = 177 ifTrue: [
            recoveredStack5 := recoveredStack4.
            recoveredPC := 178.
        ].
        recoveredStep = 178 ifTrue: [
            recoveredStack6 := self.
            recoveredPC := 179.
        ].
        recoveredStep = 179 ifTrue: [
            recoveredStack7 := recoveredLocal2.
            recoveredPC := 180.
        ].
        recoveredStep = 180 ifTrue: [
            recoveredStack6 := (recoveredStack6) addString: (recoveredStack7).
            recoveredPC := 182.
        ].
        recoveredStep = 182 ifTrue: [
            (recoveredStack5) stringIndex: (recoveredStack6).
            recoveredStack5 := recoveredStack4.
            recoveredPC := 185.
        ].
        recoveredStep = 185 ifTrue: [
            recoveredStack6 := strings.
            recoveredPC := 187.
        ].
        recoveredStep = 187 ifTrue: [
            recoveredStack6 := (recoveredStack6) last.
            recoveredPC := 189.
        ].
        recoveredStep = 189 ifTrue: [
            (recoveredStack5) stringTable: (recoveredStack6).
            recoveredPC := 191.
        ].
        recoveredStep = 191 ifTrue: [
            recoveredStack5 := recoveredArg1.
            recoveredPC := 193.
        ].
        recoveredStep = 193 ifTrue: [
            recoveredStack5 := (recoveredStack5) value.
            recoveredPC := 195.
        ].
        recoveredStep = 195 ifTrue: [
            recoveredStack4 := (recoveredStack4) value: (recoveredStack5).
            recoveredPC := 197.
        ].
        recoveredStep = 197 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredPC := 199.
        ].
        recoveredStep = 199 ifTrue: [
            recoveredStack2 := elementCount.
            recoveredPC := 201.
        ].
        recoveredStep = 201 ifTrue: [
            recoveredStack2 := (recoveredStack2) + (1).
            recoveredPC := 202.
        ].
        recoveredStep = 202 ifTrue: [
            recoveredStack3 := recoveredStack2.
            recoveredPC := 203.
        ].
        recoveredStep = 203 ifTrue: [
            elementCount := recoveredStack3.
            recoveredPC := 205.
        ].
        recoveredStep = 205 ifTrue: [
            recoveredStack3 := recoveredLocal3.
            recoveredPC := 206.
        ].
        recoveredStep = 206 ifTrue: [
            recoveredStack4 := 5.
            recoveredPC := 208.
        ].
        recoveredStep = 208 ifTrue: [
            recoveredStack3 := (recoveredStack3) * (recoveredStack4).
            recoveredPC := 209.
        ].
        recoveredStep = 209 ifTrue: [
            recoveredStack4 := 8.
            recoveredPC := 211.
        ].
        recoveredStep = 211 ifTrue: [
            recoveredStack3 := (recoveredStack3) // (recoveredStack4).
            recoveredPC := 212.
        ].
        recoveredStep = 212 ifTrue: [
            recoveredStack2 := (recoveredStack2) > (recoveredStack3).
            recoveredPC := 213.
        ].
        recoveredStep = 213 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 216] ifFalse: [recoveredPC := 219].
        ].
        recoveredStep = 216 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 217.
        ].
        recoveredStep = 217 ifTrue: [
            (recoveredStack2) expand.
            recoveredPC := 219.
        ].
        recoveredStep = 219 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 221.
        ].
        recoveredStep = 221 ifTrue: [
            ^recoveredStack2
        ].
        recoveredStep = 222 ifTrue: [
            recoveredStack2 := recoveredLocal4.
            recoveredPC := 223.
        ].
        recoveredStep = 223 ifTrue: [
            recoveredStack2 := (recoveredStack2) key.
            recoveredPC := 224.
        ].
        recoveredStep = 224 ifTrue: [
            recoveredStack3 := recoveredLocal2.
            recoveredPC := 225.
        ].
        recoveredStep = 225 ifTrue: [
            recoveredStack2 := (recoveredStack2) = (recoveredStack3).
            recoveredPC := 226.
        ].
        recoveredStep = 226 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 230] ifFalse: [recoveredPC := 240].
        ].
        recoveredStep = 230 ifTrue: [
            recoveredStack2 := recoveredLocal4.
            recoveredPC := 231.
        ].
        recoveredStep = 231 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 233.
        ].
        recoveredStep = 233 ifTrue: [
            recoveredStack3 := (recoveredStack3) value.
            recoveredPC := 235.
        ].
        recoveredStep = 235 ifTrue: [
            (recoveredStack2) value: (recoveredStack3).
            recoveredPC := 237.
        ].
        recoveredStep = 237 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 239.
        ].
        recoveredStep = 239 ifTrue: [
            ^recoveredStack2
        ].
        recoveredStep = 240 ifTrue: [
            (recoveredStack1 isInteger and: [recoveredLocal1 isInteger]) ifTrue: [(recoveredLocal1 + 1 <= recoveredStack1) ifTrue: [recoveredLocal1 := recoveredLocal1 + 1. recoveredPC := 146] ifFalse: [recoveredLocal1 := nil. recoveredPC := 254]] ifFalse: [recoveredPC := 244].
        ].
        recoveredStep = 244 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 245.
        ].
        recoveredStep = 245 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 246.
        ].
        recoveredStep = 246 ifTrue: [
            recoveredStack3 := (recoveredStack3) + (1).
            recoveredPC := 247.
        ].
        recoveredStep = 247 ifTrue: [
            recoveredStack4 := recoveredStack3.
            recoveredPC := 248.
        ].
        recoveredStep = 248 ifTrue: [
            recoveredLocal1 := recoveredStack4.
            recoveredPC := 249.
        ].
        recoveredStep = 249 ifTrue: [
            recoveredStack2 := (recoveredStack2) < (recoveredStack3).
            recoveredPC := 250.
        ].
        recoveredStep = 250 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 252] ifFalse: [recoveredPC := 146].
        ].
        recoveredStep = 252 ifTrue: [
            recoveredStack2 := nil.
            recoveredPC := 253.
        ].
        recoveredStep = 253 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 254.
        ].
        recoveredStep = 254 ifTrue: [
            recoveredPC := 255.
        ].
        recoveredStep = 255 ifTrue: [
            recoveredStack0 := (recoveredStack0) expand.
            recoveredPC := 257.
        ].
        recoveredStep = 257 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 259.
        ].
        recoveredStep = 259 ifTrue: [
            recoveredStack0 := (recoveredStack0) add: (recoveredStack1).
            recoveredPC := 261.
        ].
        recoveredStep = 261 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

