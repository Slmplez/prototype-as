"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20056d30; bytecode file offset 0x9536dc"
!EtasGenericDOMDocument methodsFor: 'recovered'!
parseStream: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) contents.
    recoveredValue2 := (self) parseString: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x2009218c; bytecode file offset 0x98ea4c"
!EtasGenericDOMDocument methodsFor: 'recovered'!
errorMessage: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := RBUserInfo.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) errorMessage: (recoveredValue1).
    recoveredValue3 := (recoveredValue2) prompt.
    ^recoveredValue3
! !

"ASDBase.ic method 0x200999f0; bytecode file offset 0x9962cc"
!EtasGenericDOMDocument methodsFor: 'recovered'!
parseStream: recoveredArg1 ifFail: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) contents.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := (self) parseString: (recoveredValue1) ifFail: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x200c45a8; bytecode file offset 0x9c11bc"
!EtasGenericDOMDocument methodsFor: 'recovered'!
parser: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    parser := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x201449a8; bytecode file offset 0xa41268"
!EtasGenericDOMDocument methodsFor: 'recovered'!
parseString: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := [
    | recoveredBlock5Value0 |
    recoveredBlock5Value0 := (self) errorMessage: ('An XML parser error occured and the parsing was stopped.').
    recoveredBlock5Value0
].
    recoveredValue2 := (self) parseString: (recoveredValue0) ifFail: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x201fd550; bytecode file offset 0xaf9e1c"
!EtasGenericDOMDocument methodsFor: 'recovered'!
parser
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := parser.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 28] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := AbtXmlDOMParser.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) newNonValidatingParser.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            parser := recoveredStack1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := parser.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := false.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            (recoveredStack1) decodingEnabled: (recoveredStack2).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := parser.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack2 := EtasGenericDOMHandler.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack2 := (recoveredStack2) new.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            (recoveredStack1) setAllHandlersTo: (recoveredStack2).
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := parser.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x20210764; bytecode file offset 0xb0d028"
!EtasGenericDOMDocument methodsFor: 'recovered'!
parseString: recoveredArg1 ifFail: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := [
    | recoveredBlock4Value0 recoveredBlock4Value1 recoveredBlock4Value2 |
    recoveredBlock4Value0 := (self) parser.
    recoveredBlock4Value1 := recoveredArg1.
    recoveredBlock4Value2 := (recoveredBlock4Value0) parse: (recoveredBlock4Value1).
    recoveredBlock4Value2
].
    recoveredValue1 := [
    | recoveredBlock16Value0 |
    recoveredBlock16Value0 := recoveredArg2.
    (recoveredBlock16Value0) value.
    nil
].
    recoveredValue2 := (self) handleExceptionsIn: (recoveredValue0) ifFail: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x2022e58c; bytecode file offset 0xb2ae64"
!EtasGenericDOMDocument methodsFor: 'recovered'!
abtXmlPrintOn: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 |
    recoveredValue0 := recoveredArg1.
    (recoveredValue0) nextPutAll: ('<?xml version="1.0" encoding="US-ASCII"?>').
    recoveredValue1 := (self) docType.
    recoveredValue2 := recoveredArg1.
    (recoveredValue1) abtXmlPrintOn: (recoveredValue2).
    recoveredValue3 := ReadWriteStream.
    recoveredValue4 := (recoveredValue3) on: ('').
    recoveredLocal2 := recoveredValue4.
    recoveredValue5 := (self) documentElement.
    recoveredValue6 := recoveredLocal2.
    (recoveredValue5) abtXmlPrintOn: (recoveredValue6).
    recoveredValue7 := recoveredArg1.
    recoveredValue8 := recoveredLocal2.
    recoveredValue9 := (recoveredValue8) contents.
    (recoveredValue7) nextPutAll: (recoveredValue9).
    ^self
! !

"ASDBase.ic method 0x202de480; bytecode file offset 0xbdad50"
!EtasGenericDOMDocument methodsFor: 'recovered'!
parseString: recoveredArg1 notify: recoveredArg2
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := [
    | recoveredBlock4Value0 recoveredBlock4Value1 recoveredBlock4Value2 recoveredBlock4Value3 |
    recoveredBlock4Value0 := (self) parser.
    recoveredBlock4Value1 := recoveredArg1.
    recoveredBlock4Value2 := (recoveredBlock4Value0) parse: (recoveredBlock4Value1).
    recoveredBlock4Value3 := recoveredBlock4Value2.
    recoveredLocal1 := recoveredBlock4Value3.
    recoveredBlock4Value2
].
    recoveredValue1 := ExAll.
    recoveredValue2 := [:recoveredBlock22Arg1 | 
    | recoveredBlock22Stack0 recoveredBlock22Stack1 recoveredBlock22Stack2 recoveredBlock22Stack3 recoveredBlock22PC recoveredBlock22Step recoveredBlock22Done recoveredBlock22Result |
    recoveredBlock22Stack0 := self.
    recoveredBlock22PC := 28.
    recoveredBlock22Done := false.
    [recoveredBlock22Done not] whileTrue: [
        recoveredBlock22Step := recoveredBlock22PC.
        recoveredBlock22Step = 28 ifTrue: [
            recoveredBlock22Stack1 := recoveredArg2.
            recoveredBlock22PC := 31.
        ].
        recoveredBlock22Step = 31 ifTrue: [
            (recoveredBlock22Stack1) ifTrue: [recoveredBlock22PC := 34] ifFalse: [recoveredBlock22PC := 39].
        ].
        recoveredBlock22Step = 34 ifTrue: [
            recoveredBlock22Stack1 := self.
            recoveredBlock22PC := 35.
        ].
        recoveredBlock22Step = 35 ifTrue: [
            recoveredBlock22Stack2 := 'An XML parser error occured and the parsing was stopped.'.
            recoveredBlock22PC := 37.
        ].
        recoveredBlock22Step = 37 ifTrue: [
            (recoveredBlock22Stack1) errorMessage: (recoveredBlock22Stack2).
            recoveredBlock22PC := 39.
        ].
        recoveredBlock22Step = 39 ifTrue: [
            recoveredBlock22Stack1 := recoveredBlock22Arg1.
            recoveredBlock22PC := 40.
        ].
        recoveredBlock22Step = 40 ifTrue: [
            recoveredBlock22Stack2 := nil.
            recoveredBlock22PC := 41.
        ].
        recoveredBlock22Step = 41 ifTrue: [
            recoveredBlock22Stack1 := (recoveredBlock22Stack1) exitWith: (recoveredBlock22Stack2).
            recoveredBlock22PC := 43.
        ].
        recoveredBlock22Step = 43 ifTrue: [
            recoveredBlock22Result := recoveredBlock22Stack1.
            recoveredBlock22Done := true.
        ].
    ].
    recoveredBlock22Result
].
    (recoveredValue0) when: (recoveredValue1) do: (recoveredValue2).
    recoveredValue3 := recoveredLocal1.
    ^recoveredValue3
! !

"ASDBase.ic method 0x20300028; bytecode file offset 0xbfc914"
!EtasGenericDOMDocument methodsFor: 'recovered'!
convertCharacterValue: recoveredArg1
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
            recoveredStack1 := (recoveredStack1) value.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := 255.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := (recoveredStack1) > (recoveredStack2).
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 46].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := WriteStream.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := String.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack2 := (recoveredStack2) new.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := (recoveredStack1) on: (recoveredStack2).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack2 := '&#'.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack3 := (recoveredStack3) value.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack3 := (recoveredStack3) asString.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack2 := (recoveredStack2) , (recoveredStack3).
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack3 := ';'.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack2 := (recoveredStack2) , (recoveredStack3).
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            (recoveredStack1) nextPutAll: (recoveredStack2).
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack2 := (recoveredStack2) contents.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack1 := super convertStringValue: (recoveredStack2).
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack1 := super convertCharacterValue: (recoveredStack2).
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x20355b74; bytecode file offset 0xc52454"
!EtasGenericDOMDocument methodsFor: 'recovered'!
convertStringValue: recoveredArg1
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
            recoveredStack1 := (recoveredStack1) isDBString.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 55].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := WriteStream.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := String.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := (recoveredStack2) new.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := (recoveredStack1) on: (recoveredStack2).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack2 := [:recoveredBlock25Arg1 | 
    | recoveredBlock25Value0 recoveredBlock25Value1 recoveredBlock25Value2 recoveredBlock25Value3 |
    recoveredBlock25Value0 := recoveredLocal1.
    recoveredBlock25Value1 := recoveredBlock25Arg1.
    recoveredBlock25Value2 := (self) convertCharacterValue: (recoveredBlock25Value1).
    recoveredBlock25Value3 := (recoveredBlock25Value0) nextPutAll: (recoveredBlock25Value2).
    recoveredBlock25Value3
].
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack2 := (recoveredStack2) contents.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack1 := super convertStringValue: (recoveredStack2).
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack1 := super convertStringValue: (recoveredStack2).
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

