"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2004214c; bytecode file offset 0x93ea4c"
!FamosComponent methodsFor: 'recovered'!
noOfComponents
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := channels.
    recoveredValue1 := (recoveredValue0) size.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2006c924; bytecode file offset 0x9692b0"
!FamosComponent methodsFor: 'recovered'!
index
    | recoveredValue0 |
    recoveredValue0 := index.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006cf98; bytecode file offset 0x969c04"
!FamosComponent methodsFor: 'recovered'!
analogDigital
    | recoveredValue0 |
    recoveredValue0 := analogDigital.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006da24; bytecode file offset 0x96a390"
!FamosComponent methodsFor: 'recovered'!
packInfo
    | recoveredValue0 |
    recoveredValue0 := packInfo.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006dbb8; bytecode file offset 0x96a9dc"
!FamosComponent methodsFor: 'recovered'!
range
    | recoveredValue0 |
    recoveredValue0 := range.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006e67c; bytecode file offset 0x96af48"
!FamosComponent methodsFor: 'recovered'!
channels
    | recoveredValue0 |
    recoveredValue0 := channels.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006e998; bytecode file offset 0x96b41c"
!FamosComponent methodsFor: 'recovered'!
scaling
    | recoveredValue0 |
    recoveredValue0 := scaling.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006ed8c; bytecode file offset 0x96b8a0"
!FamosComponent methodsFor: 'recovered'!
triggerTime
    | recoveredValue0 |
    recoveredValue0 := triggerTime.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006f1a0; bytecode file offset 0x96bc1c"
!FamosComponent methodsFor: 'recovered'!
displayProperty
    | recoveredValue0 |
    recoveredValue0 := displayProperty.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20078134; bytecode file offset 0x9757c8"
!FamosComponent methodsFor: 'recovered'!
isFamosComponent
    ^true
! !

"ASDBase.ic method 0x20092fc8; bytecode file offset 0x98f8a4"
!FamosComponent methodsFor: 'recovered'!
addGroupFrom: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := packInfo.
    recoveredValue1 := recoveredArg1.
    (recoveredValue0) addGroupFrom: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x2009307c; bytecode file offset 0x98f958"
!FamosComponent methodsFor: 'recovered'!
addChannel: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := channels.
    recoveredValue1 := recoveredArg1.
    (recoveredValue0) add: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x200c30e4; bytecode file offset 0x9bfde0"
!FamosComponent methodsFor: 'recovered'!
index: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    index := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c35e8; bytecode file offset 0x9c058c"
!FamosComponent methodsFor: 'recovered'!
analogDigital: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    analogDigital := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c406c; bytecode file offset 0x9c0bf0"
!FamosComponent methodsFor: 'recovered'!
packInfo: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    packInfo := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c43f0; bytecode file offset 0x9c11bc"
!FamosComponent methodsFor: 'recovered'!
range: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    range := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c5140; bytecode file offset 0x9c1afc"
!FamosComponent methodsFor: 'recovered'!
scaling: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    scaling := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c5360; bytecode file offset 0x9c1f64"
!FamosComponent methodsFor: 'recovered'!
triggerTime: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    triggerTime := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c583c; bytecode file offset 0x9c22c8"
!FamosComponent methodsFor: 'recovered'!
displayProperty: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    displayProperty := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200d938c; bytecode file offset 0x9d5d08"
!FamosComponent methodsFor: 'recovered'!
addToSuper: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    (self) parent: (recoveredValue0).
    recoveredValue1 := recoveredArg1.
    (recoveredValue1) addComponent: (self).
    ^true
! !

"ASDBase.ic method 0x200fafa8; bytecode file offset 0x9f78a4"
!FamosComponent methodsFor: 'recovered'!
putAnalogDigitalIn: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    (self) putSeparatorIn: (recoveredValue0).
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := analogDigital.
    (self) putIn: (recoveredValue1) integer: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x2010cd10; bytecode file offset 0xa095c8"
!FamosComponent methodsFor: 'recovered'!
createRecordAccessIn: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := packInfo.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := channels.
    recoveredValue3 := range.
    (recoveredValue0) createRecordAccessIn: (recoveredValue1) channel: (recoveredValue2) range: (recoveredValue3).
    recoveredValue4 := recoveredArg1.
    ^recoveredValue4
! !

"ASDBase.ic method 0x20116368; bytecode file offset 0xa12c24"
!FamosComponent methodsFor: 'recovered'!
getUnit
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := range.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := range.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) unit.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := ''.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2011d8f8; bytecode file offset 0xa1a2f8"
!FamosComponent methodsFor: 'recovered'!
putFieldsIn: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    (self) putIndexIn: (recoveredValue0).
    recoveredValue1 := recoveredArg1.
    (self) putAnalogDigitalIn: (recoveredValue1).
    recoveredValue2 := recoveredArg1.
    (self) putEndIn: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x2012a484; bytecode file offset 0xa26d48"
!FamosComponent methodsFor: 'recovered'!
bufferReferences
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := channels.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := [:block280c9768Arg1 | 
    | block280c9768Value0 block280c9768Value1 block280c9768Value2 |
    block280c9768Value0 := block280c9768Arg1.
    block280c9768Value1 := (block280c9768Value0) packInfo.
    block280c9768Value2 := (block280c9768Value1) bufferReference.
    block280c9768Value2
].
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) collect: (recoveredStack2).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x201624dc; bytecode file offset 0xa5eda0"
!FamosComponent methodsFor: 'recovered'!
initialize
    | recoveredValue0 recoveredValue1 |
    super initialize.
    index := nil.
    analogDigital := nil.
    recoveredValue0 := OrderedCollection.
    recoveredValue1 := (recoveredValue0) new.
    channels := recoveredValue1.
    ^self
! !

"ASDBase.ic method 0x201da4b8; bytecode file offset 0xad6d80"
!FamosComponent methodsFor: 'recovered'!
getFrom: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := recoveredArg1.
    super getFrom: (recoveredValue0).
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (self) getInteger: (recoveredValue1).
    index := recoveredValue2.
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := (self) getInteger: (recoveredValue3).
    analogDigital := recoveredValue4.
    (self) checkConsistency.
    recoveredValue5 := recoveredArg1.
    (self) parse: (recoveredValue5).
    ^self
! !

"ASDBase.ic method 0x2026b6c0; bytecode file offset 0xb67f84"
!FamosComponent methodsFor: 'recovered'!
minimizeSize
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            super minimizeSize.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := channels.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack0) minimizeSize.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := channels.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := [:block280e0280Arg1 | 
    | block280e0280Value0 block280e0280Value1 |
    block280e0280Value0 := block280e0280Arg1.
    block280e0280Value1 := (block280e0280Value0) minimizeSize.
    block280e0280Value1
].
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := range.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 34] ifFalse: [recoveredPC := 30].
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := range.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            (recoveredStack0) minimizeSize.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := packInfo.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            (recoveredStack0) minimizeSize.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x202c3d90; bytecode file offset 0xbc0664"
!FamosComponent methodsFor: 'recovered'!
checkConsistency
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := #(1 2).
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := index.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) includes: (recoveredStack2).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 25] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := SCFamosInvalidValue.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack3 := 'index'.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := (recoveredStack2) bindWith: (recoveredStack3).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack3 := index.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack3 := (recoveredStack3) printString.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            (recoveredStack1) logError: (recoveredStack2) word: (recoveredStack3).
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := #(1 2).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack2 := analogDigital.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := (recoveredStack1) includes: (recoveredStack2).
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 47] ifFalse: [recoveredPC := 34].
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack2 := SCFamosInvalidValue.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack3 := 'analogDigital'.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack2 := (recoveredStack2) bindWith: (recoveredStack3).
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack3 := analogDigital.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack3 := (recoveredStack3) printString.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            (recoveredStack1) logError: (recoveredStack2) word: (recoveredStack3).
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2030d278; bytecode file offset 0xc09b44"
!FamosComponent methodsFor: 'recovered'!
changeToChannelLayout: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 |
    recoveredValue0 := packInfo.
    recoveredValue1 := recoveredArg1.
    (recoveredValue0) changeToChannelLayout: (recoveredValue1).
    recoveredValue2 := range.
    recoveredValue3 := recoveredArg1.
    (recoveredValue2) changeToChannelLayout: (recoveredValue3).
    recoveredValue4 := channels.
    recoveredValue5 := [:recoveredBlock20Arg1 | 
    | recoveredBlock20Value0 recoveredBlock20Value1 recoveredBlock20Value2 |
    recoveredBlock20Value0 := recoveredBlock20Arg1.
    recoveredBlock20Value1 := recoveredArg1.
    recoveredBlock20Value2 := (recoveredBlock20Value0) changeToChannelLayout: (recoveredBlock20Value1).
    recoveredBlock20Value2
].
    (recoveredValue4) do: (recoveredValue5).
    recoveredValue6 := scaling.
    recoveredValue7 := recoveredArg1.
    (recoveredValue6) changeToChannelLayout: (recoveredValue7).
    recoveredValue8 := triggerTime.
    recoveredValue9 := recoveredArg1.
    (recoveredValue8) changeToChannelLayout: (recoveredValue9).
    recoveredValue10 := displayProperty.
    recoveredValue11 := recoveredArg1.
    (recoveredValue10) changeToChannelLayout: (recoveredValue11).
    ^self
! !

"ASDBase.ic method 0x2030d288; bytecode file offset 0xc09b44"
!FamosComponent methodsFor: 'recovered'!
changeToRecordLayout: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 |
    recoveredValue0 := packInfo.
    recoveredValue1 := recoveredArg1.
    (recoveredValue0) changeToRecordLayout: (recoveredValue1).
    recoveredValue2 := range.
    recoveredValue3 := recoveredArg1.
    (recoveredValue2) changeToRecordLayout: (recoveredValue3).
    recoveredValue4 := channels.
    recoveredValue5 := [:recoveredBlock20Arg1 | 
    | recoveredBlock20Value0 recoveredBlock20Value1 recoveredBlock20Value2 |
    recoveredBlock20Value0 := recoveredBlock20Arg1.
    recoveredBlock20Value1 := recoveredArg1.
    recoveredBlock20Value2 := (recoveredBlock20Value0) changeToRecordLayout: (recoveredBlock20Value1).
    recoveredBlock20Value2
].
    (recoveredValue4) do: (recoveredValue5).
    recoveredValue6 := scaling.
    recoveredValue7 := recoveredArg1.
    (recoveredValue6) changeToRecordLayout: (recoveredValue7).
    recoveredValue8 := triggerTime.
    recoveredValue9 := recoveredArg1.
    (recoveredValue8) changeToRecordLayout: (recoveredValue9).
    recoveredValue10 := displayProperty.
    recoveredValue11 := recoveredArg1.
    (recoveredValue10) changeToRecordLayout: (recoveredValue11).
    ^self
! !

"ASDBase.ic method 0x2037d6f0; bytecode file offset 0xc79fb4"
!FamosComponent methodsFor: 'recovered'!
putIn: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 |
    recoveredValue0 := recoveredArg1.
    super putIn: (recoveredValue0).
    recoveredValue1 := packInfo.
    recoveredValue2 := recoveredArg1.
    (recoveredValue1) putIn: (recoveredValue2).
    recoveredValue3 := range.
    recoveredValue4 := recoveredArg1.
    (recoveredValue3) putIn: (recoveredValue4).
    recoveredValue5 := channels.
    recoveredValue6 := [:recoveredBlock27Arg1 | 
    | recoveredBlock27Value0 recoveredBlock27Value1 recoveredBlock27Value2 |
    recoveredBlock27Value0 := recoveredBlock27Arg1.
    recoveredBlock27Value1 := recoveredArg1.
    recoveredBlock27Value2 := (recoveredBlock27Value0) putIn: (recoveredBlock27Value1).
    recoveredBlock27Value2
].
    (recoveredValue5) do: (recoveredValue6).
    recoveredValue7 := scaling.
    recoveredValue8 := recoveredArg1.
    (recoveredValue7) putIn: (recoveredValue8).
    recoveredValue9 := triggerTime.
    recoveredValue10 := recoveredArg1.
    (recoveredValue9) putIn: (recoveredValue10).
    recoveredValue11 := displayProperty.
    recoveredValue12 := recoveredArg1.
    (recoveredValue11) putIn: (recoveredValue12).
    recoveredValue13 := recoveredArg1.
    (self) putSubKeysIn: (recoveredValue13).
    ^self
! !

"ASDBase.ic method 0x204ddf74; bytecode file offset 0xdda894"
!FamosComponent methodsFor: 'recovered'!
createByteAccess
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredLocal6 recoveredLocal7 recoveredLocal8 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) selectPackInfos.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) first.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal8 := recoveredStack0.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) selectFamosChannels.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := (recoveredStack0) first.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredLocal7 := recoveredStack0.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := (recoveredStack0) selectFamosRanges.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := (recoveredStack0) isEmpty.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 22] ifFalse: [recoveredPC := 26].
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredPC := 28.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := (recoveredStack0) first.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredLocal6 := recoveredStack0.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := recoveredLocal8.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := (recoveredStack0) bufferReference.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := (recoveredStack0) isAssociation.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 42] ifFalse: [recoveredPC := 48].
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack0 := (recoveredStack0) value.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredPC := 49.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredLocal5 := recoveredStack0.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack0 := (recoveredStack0) class.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack0 := (recoveredStack0) dataAccessClasses.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack1 := recoveredLocal8.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack1 := (recoveredStack1) format.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1).
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredLocal4 := recoveredStack0.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack0 := (recoveredStack0) byteSize.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack1 := recoveredLocal8.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 105] ifFalse: [recoveredPC := 74].
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack1 := SCItemFileWrongByteSize.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack2 := recoveredLocal4.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack2 := (recoveredStack2) name.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack3 := ' '.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack2 := (recoveredStack2) , (recoveredStack3).
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack3 := recoveredLocal4.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack3 := (recoveredStack3) byteSize.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredStack3 := (recoveredStack3) printString.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack2 := (recoveredStack2) , (recoveredStack3).
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredStack3 := '<>cp '.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredStack2 := (recoveredStack2) , (recoveredStack3).
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredStack3 := recoveredLocal8.
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            recoveredStack3 := (recoveredStack3) size.
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            recoveredStack3 := (recoveredStack3) printString.
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            recoveredStack2 := (recoveredStack2) , (recoveredStack3).
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            (recoveredStack0) logError: (recoveredStack1) word: (recoveredStack2).
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            recoveredStack0 := recoveredLocal7.
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            recoveredStack0 := (recoveredStack0) name.
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            recoveredStack0 := (recoveredStack0) isEmpty.
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 114] ifFalse: [recoveredPC := 128].
        ].
        recoveredStep = 114 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 117.
        ].
        recoveredStep = 117 ifTrue: [
            recoveredStack1 := (recoveredStack1) offsetIntoSample.
            recoveredPC := 119.
        ].
        recoveredStep = 119 ifTrue: [
            recoveredStack2 := '-'.
            recoveredPC := 121.
        ].
        recoveredStep = 121 ifTrue: [
            recoveredStack0 := (recoveredStack0) create: (recoveredStack1) name: (recoveredStack2).
            recoveredPC := 123.
        ].
        recoveredStep = 123 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 124.
        ].
        recoveredStep = 124 ifTrue: [
            recoveredPC := 140.
        ].
        recoveredStep = 128 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 129.
        ].
        recoveredStep = 129 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 131.
        ].
        recoveredStep = 131 ifTrue: [
            recoveredStack1 := (recoveredStack1) offsetIntoSample.
            recoveredPC := 133.
        ].
        recoveredStep = 133 ifTrue: [
            recoveredStack2 := recoveredLocal7.
            recoveredPC := 135.
        ].
        recoveredStep = 135 ifTrue: [
            recoveredStack2 := (recoveredStack2) name.
            recoveredPC := 137.
        ].
        recoveredStep = 137 ifTrue: [
            recoveredStack0 := (recoveredStack0) create: (recoveredStack1) name: (recoveredStack2).
            recoveredPC := 139.
        ].
        recoveredStep = 139 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 140.
        ].
        recoveredStep = 140 ifTrue: [
            recoveredStack0 := recoveredLocal6.
            recoveredPC := 142.
        ].
        recoveredStep = 142 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 158] ifFalse: [recoveredPC := 146].
        ].
        recoveredStep = 146 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 147.
        ].
        recoveredStep = 147 ifTrue: [
            recoveredStack1 := recoveredLocal6.
            recoveredPC := 149.
        ].
        recoveredStep = 149 ifTrue: [
            recoveredStack1 := (recoveredStack1) m.
            recoveredPC := 151.
        ].
        recoveredStep = 151 ifTrue: [
            recoveredStack2 := recoveredLocal6.
            recoveredPC := 153.
        ].
        recoveredStep = 153 ifTrue: [
            recoveredStack2 := (recoveredStack2) y0.
            recoveredPC := 155.
        ].
        recoveredStep = 155 ifTrue: [
            recoveredStack0 := (recoveredStack0) asDBFormulaLiteral: (recoveredStack1) offset: (recoveredStack2).
            recoveredPC := 157.
        ].
        recoveredStep = 157 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 158 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 159.
        ].
        recoveredStep = 159 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2054de7c; bytecode file offset 0xe4a79c"
!FamosComponent methodsFor: 'recovered'!
createBitAccess
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredLocal6 recoveredLocal7 recoveredLocal8 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) selectPackInfos.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) first.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal8 := recoveredStack0.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := (recoveredStack0) selectFamosChannels.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredLocal7 := recoveredStack0.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := recoveredLocal8.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := (recoveredStack0) bufferReference.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := (recoveredStack0) isAssociation.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 28] ifFalse: [recoveredPC := 36].
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack0 := (recoveredStack0) value.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredPC := 39.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredLocal6 := recoveredStack0.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack0 := (recoveredStack0) class.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack0 := (recoveredStack0) dataAccessClasses.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack1 := recoveredLocal8.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack1 := (recoveredStack1) format.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1).
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredLocal5 := recoveredStack0.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack0 := recoveredLocal5.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack0 := (recoveredStack0) byteSize.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack1 := recoveredLocal8.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 108] ifFalse: [recoveredPC := 72].
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack1 := SCItemFileWrongByteSize.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack2 := recoveredLocal5.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack2 := (recoveredStack2) name.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack3 := ' '.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack2 := (recoveredStack2) , (recoveredStack3).
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack3 := recoveredLocal5.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredStack3 := (recoveredStack3) byteSize.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack3 := (recoveredStack3) printString.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredStack2 := (recoveredStack2) , (recoveredStack3).
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredStack3 := '<>cp '.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredStack2 := (recoveredStack2) , (recoveredStack3).
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            recoveredStack3 := recoveredLocal8.
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack3 := (recoveredStack3) size.
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            recoveredStack3 := (recoveredStack3) printString.
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            recoveredStack2 := (recoveredStack2) , (recoveredStack3).
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            (recoveredStack0) logError: (recoveredStack1) word: (recoveredStack2).
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            recoveredStack0 := recoveredLocal7.
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            recoveredStack0 := (recoveredStack0) size.
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            recoveredStack1 := recoveredLocal8.
            recoveredPC := 116.
        ].
        recoveredStep = 116 ifTrue: [
            recoveredStack1 := (recoveredStack1) significantBytes.
            recoveredPC := 118.
        ].
        recoveredStep = 118 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 119.
        ].
        recoveredStep = 119 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 147] ifFalse: [recoveredPC := 122].
        ].
        recoveredStep = 122 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 123.
        ].
        recoveredStep = 123 ifTrue: [
            recoveredStack1 := SCItemFileWrongSignificantBits.
            recoveredPC := 125.
        ].
        recoveredStep = 125 ifTrue: [
            recoveredStack2 := recoveredLocal7.
            recoveredPC := 128.
        ].
        recoveredStep = 128 ifTrue: [
            recoveredStack2 := (recoveredStack2) size.
            recoveredPC := 130.
        ].
        recoveredStep = 130 ifTrue: [
            recoveredStack2 := (recoveredStack2) printString.
            recoveredPC := 132.
        ].
        recoveredStep = 132 ifTrue: [
            recoveredStack3 := '<>cp '.
            recoveredPC := 134.
        ].
        recoveredStep = 134 ifTrue: [
            recoveredStack2 := (recoveredStack2) , (recoveredStack3).
            recoveredPC := 136.
        ].
        recoveredStep = 136 ifTrue: [
            recoveredStack3 := recoveredLocal8.
            recoveredPC := 139.
        ].
        recoveredStep = 139 ifTrue: [
            recoveredStack3 := (recoveredStack3) significantBytes.
            recoveredPC := 141.
        ].
        recoveredStep = 141 ifTrue: [
            recoveredStack3 := (recoveredStack3) printString.
            recoveredPC := 143.
        ].
        recoveredStep = 143 ifTrue: [
            recoveredStack2 := (recoveredStack2) , (recoveredStack3).
            recoveredPC := 145.
        ].
        recoveredStep = 145 ifTrue: [
            (recoveredStack0) logError: (recoveredStack1) word: (recoveredStack2).
            recoveredPC := 147.
        ].
        recoveredStep = 147 ifTrue: [
            recoveredStack0 := recoveredLocal7.
            recoveredPC := 150.
        ].
        recoveredStep = 150 ifTrue: [
            recoveredStack1 := [:recoveredBlock150Arg1 | 
    | recoveredBlock150Stack0 recoveredBlock150Stack1 recoveredBlock150Stack2 recoveredBlock150Stack3 recoveredBlock150Stack4 recoveredBlock150Stack5 recoveredBlock150PC recoveredBlock150Step recoveredBlock150Done recoveredBlock150Result |
    recoveredBlock150Stack0 := self.
    recoveredBlock150PC := 156.
    recoveredBlock150Done := false.
    [recoveredBlock150Done not] whileTrue: [
        recoveredBlock150Step := recoveredBlock150PC.
        recoveredBlock150Step = 156 ifTrue: [
            recoveredBlock150Stack1 := recoveredBlock150Arg1.
            recoveredBlock150PC := 157.
        ].
        recoveredBlock150Step = 157 ifTrue: [
            recoveredBlock150Stack1 := (recoveredBlock150Stack1) name.
            recoveredBlock150PC := 159.
        ].
        recoveredBlock150Step = 159 ifTrue: [
            recoveredBlock150Stack1 := (recoveredBlock150Stack1) isEmpty.
            recoveredBlock150PC := 161.
        ].
        recoveredBlock150Step = 161 ifTrue: [
            (recoveredBlock150Stack1) ifTrue: [recoveredBlock150PC := 164] ifFalse: [recoveredBlock150PC := 186].
        ].
        recoveredBlock150Step = 164 ifTrue: [
            recoveredBlock150Stack1 := recoveredLocal5.
            recoveredBlock150PC := 167.
        ].
        recoveredBlock150Step = 167 ifTrue: [
            recoveredBlock150Stack2 := recoveredLocal6.
            recoveredBlock150PC := 170.
        ].
        recoveredBlock150Step = 170 ifTrue: [
            recoveredBlock150Stack2 := (recoveredBlock150Stack2) offsetIntoSample.
            recoveredBlock150PC := 172.
        ].
        recoveredBlock150Step = 172 ifTrue: [
            recoveredBlock150Stack3 := recoveredBlock150Arg1.
            recoveredBlock150PC := 173.
        ].
        recoveredBlock150Step = 173 ifTrue: [
            recoveredBlock150Stack3 := (recoveredBlock150Stack3) bitIndex.
            recoveredBlock150PC := 175.
        ].
        recoveredBlock150Step = 175 ifTrue: [
            recoveredBlock150Stack4 := '-'.
            recoveredBlock150PC := 177.
        ].
        recoveredBlock150Step = 177 ifTrue: [
            recoveredBlock150Stack1 := (recoveredBlock150Stack1) create: (recoveredBlock150Stack2) bitIndex: (recoveredBlock150Stack3) name: (recoveredBlock150Stack4).
            recoveredBlock150PC := 180.
        ].
        recoveredBlock150Step = 180 ifTrue: [
            recoveredLocal4 := recoveredBlock150Stack1.
            recoveredBlock150PC := 183.
        ].
        recoveredBlock150Step = 183 ifTrue: [
            recoveredBlock150PC := 208.
        ].
        recoveredBlock150Step = 186 ifTrue: [
            recoveredBlock150Stack1 := recoveredLocal5.
            recoveredBlock150PC := 189.
        ].
        recoveredBlock150Step = 189 ifTrue: [
            recoveredBlock150Stack2 := recoveredLocal6.
            recoveredBlock150PC := 192.
        ].
        recoveredBlock150Step = 192 ifTrue: [
            recoveredBlock150Stack2 := (recoveredBlock150Stack2) offsetIntoSample.
            recoveredBlock150PC := 194.
        ].
        recoveredBlock150Step = 194 ifTrue: [
            recoveredBlock150Stack3 := recoveredBlock150Arg1.
            recoveredBlock150PC := 195.
        ].
        recoveredBlock150Step = 195 ifTrue: [
            recoveredBlock150Stack3 := (recoveredBlock150Stack3) bitIndex.
            recoveredBlock150PC := 197.
        ].
        recoveredBlock150Step = 197 ifTrue: [
            recoveredBlock150Stack4 := recoveredLocal7.
            recoveredBlock150PC := 200.
        ].
        recoveredBlock150Step = 200 ifTrue: [
            recoveredBlock150Stack4 := (recoveredBlock150Stack4) name.
            recoveredBlock150PC := 202.
        ].
        recoveredBlock150Step = 202 ifTrue: [
            recoveredBlock150Stack1 := (recoveredBlock150Stack1) create: (recoveredBlock150Stack2) bitIndex: (recoveredBlock150Stack3) name: (recoveredBlock150Stack4).
            recoveredBlock150PC := 205.
        ].
        recoveredBlock150Step = 205 ifTrue: [
            recoveredLocal4 := recoveredBlock150Stack1.
            recoveredBlock150PC := 208.
        ].
        recoveredBlock150Step = 208 ifTrue: [
            recoveredBlock150Stack1 := recoveredLocal4.
            recoveredBlock150PC := 211.
        ].
        recoveredBlock150Step = 211 ifTrue: [
            recoveredBlock150Result := recoveredBlock150Stack1.
            recoveredBlock150Done := true.
        ].
    ].
    recoveredBlock150Result
].
            recoveredPC := 212.
        ].
        recoveredStep = 212 ifTrue: [
            recoveredStack0 := (recoveredStack0) collect: (recoveredStack1).
            recoveredPC := 214.
        ].
        recoveredStep = 214 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 217.
        ].
        recoveredStep = 217 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 220.
        ].
        recoveredStep = 220 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

