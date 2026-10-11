"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20036844; bytecode file offset 0x934580"
!AbtXmlSaxAttributes methodsFor: 'recovered'!
length
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) attributes.
    recoveredValue1 := (recoveredValue0) size.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2004f1f4; bytecode file offset 0x94d048"
!AbtXmlSaxAttributes methodsFor: 'recovered'!
clear
    (self) initialize.
    ^self
! !

"ASDBase.ic method 0x20057b18; bytecode file offset 0x956284"
!AbtXmlSaxAttributes methodsFor: 'recovered'!
indexOf: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) attributes.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) indexOf: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x20057fc8; bytecode file offset 0x956284"
!AbtXmlSaxAttributes methodsFor: 'recovered'!
removeAttributeAtIndex: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) attributes.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) removeAtIndex: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x20066074; bytecode file offset 0x963428"
!AbtXmlSaxAttributes methodsFor: 'recovered'!
attributes
    | recoveredValue0 |
    recoveredValue0 := attributes.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2008959c; bytecode file offset 0x985ef8"
!AbtXmlSaxAttributes methodsFor: 'recovered'!
initialize
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := EsIndexedDictionary.
    recoveredValue1 := (recoveredValue0) new.
    attributes := recoveredValue1.
    ^self
! !

"ASDBase.ic method 0x20096750; bytecode file offset 0x993010"
!AbtXmlSaxAttributes methodsFor: 'recovered'!
valueAtIndex: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) atIndex: (recoveredValue0).
    recoveredValue2 := (recoveredValue1) at: ('value').
    ^recoveredValue2
! !

"ASDBase.ic method 0x200ab468; bytecode file offset 0x9a8250"
!AbtXmlSaxAttributes methodsFor: 'recovered'!
indexForRawName: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) attributes.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := [].
    recoveredValue3 := (recoveredValue0) indexAt: (recoveredValue1) ifAbsent: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x200ab5f8; bytecode file offset 0x9a8250"
!AbtXmlSaxAttributes methodsFor: 'recovered'!
atIndex: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) attributes.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := [].
    recoveredValue3 := (recoveredValue0) atIndex: (recoveredValue1) ifAbsent: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x200abe68; bytecode file offset 0x9a8728"
!AbtXmlSaxAttributes methodsFor: 'recovered'!
valueForRawName: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) attributes.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) at: (recoveredValue1).
    recoveredValue3 := (recoveredValue2) at: ('value').
    ^recoveredValue3
! !

"ASDBase.ic method 0x200d9a94; bytecode file offset 0x9d63a0"
!AbtXmlSaxAttributes methodsFor: 'recovered'!
typeAtIndex: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) atIndex: (recoveredValue0).
    recoveredValue2 := [].
    recoveredValue3 := (recoveredValue1) at: ('type') ifAbsent: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x200d9aac; bytecode file offset 0x9d63a0"
!AbtXmlSaxAttributes methodsFor: 'recovered'!
rawNameAtIndex: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) atIndex: (recoveredValue0).
    recoveredValue2 := [].
    recoveredValue3 := (recoveredValue1) at: ('rawName') ifAbsent: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x200d9ac4; bytecode file offset 0x9d63a0"
!AbtXmlSaxAttributes methodsFor: 'recovered'!
uriAtIndex: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) atIndex: (recoveredValue0).
    recoveredValue2 := [].
    recoveredValue3 := (recoveredValue1) at: ('uri') ifAbsent: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x200d9adc; bytecode file offset 0x9d63a0"
!AbtXmlSaxAttributes methodsFor: 'recovered'!
localNameAtIndex: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) atIndex: (recoveredValue0).
    recoveredValue2 := [].
    recoveredValue3 := (recoveredValue1) at: ('localName') ifAbsent: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x200dcccc; bytecode file offset 0x9d95dc"
!AbtXmlSaxAttributes methodsFor: 'recovered'!
valueAtIndex: recoveredArg1 put: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) atIndex: (recoveredValue0).
    recoveredValue2 := recoveredArg2.
    (recoveredValue1) at: ('value') put: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x200dcce0; bytecode file offset 0x9d95dc"
!AbtXmlSaxAttributes methodsFor: 'recovered'!
localNameAtIndex: recoveredArg1 put: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) atIndex: (recoveredValue0).
    recoveredValue2 := recoveredArg2.
    (recoveredValue1) at: ('localName') put: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x200dccf4; bytecode file offset 0x9d95dc"
!AbtXmlSaxAttributes methodsFor: 'recovered'!
typeAtIndex: recoveredArg1 put: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) atIndex: (recoveredValue0).
    recoveredValue2 := recoveredArg2.
    (recoveredValue1) at: ('type') put: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x200dcd08; bytecode file offset 0x9d95dc"
!AbtXmlSaxAttributes methodsFor: 'recovered'!
rawNameAtIndex: recoveredArg1 put: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) atIndex: (recoveredValue0).
    recoveredValue2 := recoveredArg2.
    (recoveredValue1) at: ('rawName') put: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x200dcd1c; bytecode file offset 0x9d95dc"
!AbtXmlSaxAttributes methodsFor: 'recovered'!
uriAtIndex: recoveredArg1 put: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) atIndex: (recoveredValue0).
    recoveredValue2 := recoveredArg2.
    (recoveredValue1) at: ('uri') put: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x201bd998; bytecode file offset 0xaba260"
!AbtXmlSaxAttributes methodsFor: 'recovered'!
typeForRawName: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) attributes.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := [].
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1) ifAbsent: (recoveredStack2).
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 24] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := 'type'.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredPC := 25.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20289550; bytecode file offset 0xb85e24"
!AbtXmlSaxAttributes methodsFor: 'recovered'!
addAttribute: recoveredArg1 uri: recoveredArg2 rawName: recoveredArg3 type: recoveredArg4 value: recoveredArg5
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 |
    recoveredValue0 := Dictionary.
    recoveredValue1 := (recoveredValue0) new.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := recoveredLocal1.
    recoveredValue3 := recoveredValue2.
    recoveredValue4 := recoveredArg1.
    (recoveredValue3) at: ('localName') put: (recoveredValue4).
    recoveredValue5 := recoveredValue2.
    recoveredValue6 := recoveredArg4.
    (recoveredValue5) at: ('type') put: (recoveredValue6).
    recoveredValue7 := recoveredValue2.
    recoveredValue8 := recoveredArg5.
    (recoveredValue7) at: ('value') put: (recoveredValue8).
    recoveredValue9 := recoveredArg2.
    (recoveredValue2) at: ('uri') put: (recoveredValue9).
    recoveredValue10 := (self) attributes.
    recoveredValue11 := recoveredArg3.
    recoveredValue12 := recoveredLocal1.
    (recoveredValue10) at: (recoveredValue11) put: (recoveredValue12).
    ^self
! !

"ASDBase.ic method 0x202dff88; bytecode file offset 0xbdc860"
!AbtXmlSaxAttributes methodsFor: 'recovered'!
setAttributeAtIndex: recoveredArg1 localName: recoveredArg2 uri: recoveredArg3 rawName: recoveredArg4 type: recoveredArg5 value: recoveredArg6
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 |
    recoveredValue0 := Dictionary.
    recoveredValue1 := (recoveredValue0) new.
    recoveredLocal2 := recoveredValue1.
    recoveredValue2 := recoveredLocal2.
    recoveredValue3 := recoveredValue2.
    recoveredValue4 := recoveredArg2.
    (recoveredValue3) at: ('localName') put: (recoveredValue4).
    recoveredValue5 := recoveredValue2.
    recoveredValue6 := recoveredArg5.
    (recoveredValue5) at: ('type') put: (recoveredValue6).
    recoveredValue7 := recoveredValue2.
    recoveredValue8 := recoveredArg6.
    (recoveredValue7) at: ('value') put: (recoveredValue8).
    recoveredValue9 := recoveredArg3.
    (recoveredValue2) at: ('uri') put: (recoveredValue9).
    recoveredValue10 := (self) attributes.
    recoveredValue11 := recoveredArg1.
    recoveredValue12 := (recoveredValue10) keyAtIndex: (recoveredValue11).
    recoveredLocal1 := recoveredValue12.
    recoveredValue13 := (self) attributes.
    recoveredValue14 := recoveredLocal1.
    recoveredValue15 := recoveredLocal2.
    (recoveredValue13) at: (recoveredValue14) put: (recoveredValue15).
    ^self
! !

"ASDBase.ic method 0x2032fcd4; bytecode file offset 0xc2c5c8"
!AbtXmlSaxAttributes methodsFor: 'recovered'!
valueFor: recoveredArg1 uri: recoveredArg2
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) attributes.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := [:recoveredBlock5Arg1 | 
    | recoveredBlock5Stack0 recoveredBlock5Stack1 recoveredBlock5Stack2 recoveredBlock5Stack3 recoveredBlock5Stack4 recoveredBlock5PC recoveredBlock5Step recoveredBlock5Done recoveredBlock5Result |
    recoveredBlock5Stack0 := self.
    recoveredBlock5PC := 12.
    recoveredBlock5Done := false.
    [recoveredBlock5Done not] whileTrue: [
        recoveredBlock5Step := recoveredBlock5PC.
        recoveredBlock5Step = 12 ifTrue: [
            recoveredBlock5Stack1 := false.
            recoveredBlock5PC := 13.
        ].
        recoveredBlock5Step = 13 ifTrue: [
            recoveredBlock5Stack2 := recoveredBlock5Arg1.
            recoveredBlock5PC := 14.
        ].
        recoveredBlock5Step = 14 ifTrue: [
            recoveredBlock5Stack3 := 'localName'.
            recoveredBlock5PC := 16.
        ].
        recoveredBlock5Step = 16 ifTrue: [
            recoveredBlock5Stack2 := (recoveredBlock5Stack2) at: (recoveredBlock5Stack3).
            recoveredBlock5PC := 17.
        ].
        recoveredBlock5Step = 17 ifTrue: [
            recoveredBlock5Stack3 := recoveredArg1.
            recoveredBlock5PC := 20.
        ].
        recoveredBlock5Step = 20 ifTrue: [
            recoveredBlock5Stack2 := (recoveredBlock5Stack2) = (recoveredBlock5Stack3).
            recoveredBlock5PC := 21.
        ].
        recoveredBlock5Step = 21 ifTrue: [
            (recoveredBlock5Stack2) ifTrue: [recoveredBlock5PC := 24] ifFalse: [recoveredBlock5PC := 33].
        ].
        recoveredBlock5Step = 24 ifTrue: [
            recoveredBlock5PC := 25.
        ].
        recoveredBlock5Step = 25 ifTrue: [
            recoveredBlock5Stack1 := recoveredBlock5Arg1.
            recoveredBlock5PC := 26.
        ].
        recoveredBlock5Step = 26 ifTrue: [
            recoveredBlock5Stack2 := 'uri'.
            recoveredBlock5PC := 28.
        ].
        recoveredBlock5Step = 28 ifTrue: [
            recoveredBlock5Stack1 := (recoveredBlock5Stack1) at: (recoveredBlock5Stack2).
            recoveredBlock5PC := 29.
        ].
        recoveredBlock5Step = 29 ifTrue: [
            recoveredBlock5Stack2 := recoveredArg2.
            recoveredBlock5PC := 32.
        ].
        recoveredBlock5Step = 32 ifTrue: [
            recoveredBlock5Stack1 := (recoveredBlock5Stack1) = (recoveredBlock5Stack2).
            recoveredBlock5PC := 33.
        ].
        recoveredBlock5Step = 33 ifTrue: [
            recoveredBlock5Result := recoveredBlock5Stack1.
            recoveredBlock5Done := true.
        ].
    ].
    recoveredBlock5Result
].
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack2 := [].
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := (recoveredStack0) detect: (recoveredStack1) ifNone: (recoveredStack2).
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 58] ifFalse: [recoveredPC := 48].
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack1 := 'value'.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1).
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredPC := 59.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2032fcf8; bytecode file offset 0xc2c5c8"
!AbtXmlSaxAttributes methodsFor: 'recovered'!
typeFor: recoveredArg1 uri: recoveredArg2
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) attributes.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := [:recoveredBlock5Arg1 | 
    | recoveredBlock5Stack0 recoveredBlock5Stack1 recoveredBlock5Stack2 recoveredBlock5Stack3 recoveredBlock5Stack4 recoveredBlock5PC recoveredBlock5Step recoveredBlock5Done recoveredBlock5Result |
    recoveredBlock5Stack0 := self.
    recoveredBlock5PC := 12.
    recoveredBlock5Done := false.
    [recoveredBlock5Done not] whileTrue: [
        recoveredBlock5Step := recoveredBlock5PC.
        recoveredBlock5Step = 12 ifTrue: [
            recoveredBlock5Stack1 := false.
            recoveredBlock5PC := 13.
        ].
        recoveredBlock5Step = 13 ifTrue: [
            recoveredBlock5Stack2 := recoveredBlock5Arg1.
            recoveredBlock5PC := 14.
        ].
        recoveredBlock5Step = 14 ifTrue: [
            recoveredBlock5Stack3 := 'localName'.
            recoveredBlock5PC := 16.
        ].
        recoveredBlock5Step = 16 ifTrue: [
            recoveredBlock5Stack2 := (recoveredBlock5Stack2) at: (recoveredBlock5Stack3).
            recoveredBlock5PC := 17.
        ].
        recoveredBlock5Step = 17 ifTrue: [
            recoveredBlock5Stack3 := recoveredArg1.
            recoveredBlock5PC := 20.
        ].
        recoveredBlock5Step = 20 ifTrue: [
            recoveredBlock5Stack2 := (recoveredBlock5Stack2) = (recoveredBlock5Stack3).
            recoveredBlock5PC := 21.
        ].
        recoveredBlock5Step = 21 ifTrue: [
            (recoveredBlock5Stack2) ifTrue: [recoveredBlock5PC := 24] ifFalse: [recoveredBlock5PC := 33].
        ].
        recoveredBlock5Step = 24 ifTrue: [
            recoveredBlock5PC := 25.
        ].
        recoveredBlock5Step = 25 ifTrue: [
            recoveredBlock5Stack1 := recoveredBlock5Arg1.
            recoveredBlock5PC := 26.
        ].
        recoveredBlock5Step = 26 ifTrue: [
            recoveredBlock5Stack2 := 'uri'.
            recoveredBlock5PC := 28.
        ].
        recoveredBlock5Step = 28 ifTrue: [
            recoveredBlock5Stack1 := (recoveredBlock5Stack1) at: (recoveredBlock5Stack2).
            recoveredBlock5PC := 29.
        ].
        recoveredBlock5Step = 29 ifTrue: [
            recoveredBlock5Stack2 := recoveredArg2.
            recoveredBlock5PC := 32.
        ].
        recoveredBlock5Step = 32 ifTrue: [
            recoveredBlock5Stack1 := (recoveredBlock5Stack1) = (recoveredBlock5Stack2).
            recoveredBlock5PC := 33.
        ].
        recoveredBlock5Step = 33 ifTrue: [
            recoveredBlock5Result := recoveredBlock5Stack1.
            recoveredBlock5Done := true.
        ].
    ].
    recoveredBlock5Result
].
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack2 := [].
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := (recoveredStack0) detect: (recoveredStack1) ifNone: (recoveredStack2).
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 58] ifFalse: [recoveredPC := 48].
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack1 := 'type'.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1).
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredPC := 59.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

