"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20001ce0; bytecode file offset 0x8ffcfc"
!EtasDCMFunction methodsFor: 'recovered'!
asDefCalibrationLabel
    ^self
! !

"ASDBase.ic method 0x20001dc0; bytecode file offset 0x8ffcfc"
!EtasDCMFunction methodsFor: 'recovered'!
asAllCalibrationLabel
    ^self
! !

"ASDBase.ic method 0x20002918; bytecode file offset 0x8ffcfc"
!EtasDCMFunction methodsFor: 'recovered'!
asRefCalibrationLabel
    ^self
! !

"ASDBase.ic method 0x200094d0; bytecode file offset 0x908be4"
!EtasDCMFunction methodsFor: 'recovered'!
name
    | recoveredValue0 |
    recoveredValue0 := (self) shortName.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2000a6a0; bytecode file offset 0x908be4"
!EtasDCMFunction methodsFor: 'recovered'!
asap2Copy
    | recoveredValue0 |
    recoveredValue0 := (self) deepCopy.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2000a9dc; bytecode file offset 0x908be4"
!EtasDCMFunction methodsFor: 'recovered'!
label
    | recoveredValue0 |
    recoveredValue0 := (self) shortName.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20065acc; bytecode file offset 0x963428"
!EtasDCMFunction methodsFor: 'recovered'!
dataElements
    | recoveredValue0 |
    recoveredValue0 := dataElements.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200672c4; bytecode file offset 0x9646f8"
!EtasDCMFunction methodsFor: 'recovered'!
shortName
    | recoveredValue0 |
    recoveredValue0 := shortName.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20068b34; bytecode file offset 0x965b90"
!EtasDCMFunction methodsFor: 'recovered'!
longName
    | recoveredValue0 |
    recoveredValue0 := longName.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200741d0; bytecode file offset 0x970b34"
!EtasDCMFunction methodsFor: 'recovered'!
displayIdentifier
    ^nil
! !

"ASDBase.ic method 0x20077b6c; bytecode file offset 0x9757c8"
!EtasDCMFunction methodsFor: 'recovered'!
isRoot
    ^true
! !

"ASDBase.ic method 0x2009cca0; bytecode file offset 0x999628"
!EtasDCMFunction methodsFor: 'recovered'!
initialize
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := OrderedCollection.
    recoveredValue1 := (recoveredValue0) new.
    (self) dataElements: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x200be0cc; bytecode file offset 0x9bb178"
!EtasDCMFunction methodsFor: 'recovered'!
dataElements: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    dataElements := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200beb40; bytecode file offset 0x9bc0b4"
!EtasDCMFunction methodsFor: 'recovered'!
shortName: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    shortName := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200bfaac; bytecode file offset 0x9bd228"
!EtasDCMFunction methodsFor: 'recovered'!
longName: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    longName := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200cbe64; bytecode file offset 0x9c8728"
!EtasDCMFunction methodsFor: 'recovered'!
objectInformationAssociation
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := Association.
    recoveredValue1 := (self) shortName.
    recoveredValue2 := (recoveredValue0) key: ('Function') value: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x200e016c; bytecode file offset 0x9dca34"
!EtasDCMFunction methodsFor: 'recovered'!
shortNameType
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := ASAP2TypedShortName.
    recoveredValue1 := ASAP2Function.
    recoveredValue2 := (recoveredValue1) keyWord.
    recoveredValue3 := (self) shortName.
    recoveredValue4 := (recoveredValue0) key: (recoveredValue2) value: (recoveredValue3).
    ^recoveredValue4
! !

"ASDBase.ic method 0x201154cc; bytecode file offset 0xa11db4"
!EtasDCMFunction methodsFor: 'recovered'!
defCharacteristic
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := dataElements.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := [:block280c6a8cArg1 | 
    | block280c6a8cValue0 block280c6a8cValue1 |
    block280c6a8cValue0 := block280c6a8cArg1.
    block280c6a8cValue1 := (block280c6a8cValue0) asap2Node.
    block280c6a8cValue1
].
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) collect: (recoveredStack2).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x20194508; bytecode file offset 0xa90dcc"
!EtasDCMFunction methodsFor: 'recovered'!
removeNotIncludedLabels: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := [:recoveredBlock5Arg1 | 
    | recoveredBlock5Value0 recoveredBlock5Value1 recoveredBlock5Value2 recoveredBlock5Value3 recoveredBlock5Value4 |
    recoveredBlock5Value0 := dataElements.
    recoveredBlock5Value1 := recoveredBlock5Arg1.
    recoveredBlock5Value2 := (recoveredBlock5Value1) dataElement.
    recoveredBlock5Value3 := [].
    recoveredBlock5Value4 := (recoveredBlock5Value0) remove: (recoveredBlock5Value2) ifAbsent: (recoveredBlock5Value3).
    recoveredBlock5Value4
].
    (recoveredValue0) do: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x20278f68; bytecode file offset 0xb75848"
!EtasDCMFunction methodsFor: 'recovered'!
objectInformationDescription
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := WriteStream.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := Locale.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack2 := (recoveredStack2) current.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack2 := (recoveredStack2) preferredStringClass.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack2 := (recoveredStack2) new.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) on: (recoveredStack2).
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) longName.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 37] ifFalse: [recoveredPC := 20].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := (recoveredStack0) longName.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := (recoveredStack0) notEmpty.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 28] ifFalse: [recoveredPC := 37].
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack2 := (recoveredStack2) longName.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            (recoveredStack1) nextPutAll: (recoveredStack2).
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            (recoveredStack0) cr.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := (recoveredStack0) contents.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20487038; bytecode file offset 0xd83940"
!EtasDCMFunction methodsFor: 'recovered'!
objectInformationDictionary
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := LookupTable.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := [:block28102d78Arg1 | 
    | block28102d78Value0 block28102d78Value1 |
    block28102d78Value0 := block28102d78Arg1.
    block28102d78Value1 := (block28102d78Value0) shortName.
    block28102d78Value1
].
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := [:recoveredBlock22Arg1 | 
    | recoveredBlock22Local1 recoveredBlock22Stack0 recoveredBlock22Stack1 recoveredBlock22Stack2 recoveredBlock22Stack3 recoveredBlock22PC recoveredBlock22Step recoveredBlock22Done recoveredBlock22Result |
    recoveredBlock22Stack0 := self.
    recoveredBlock22PC := 28.
    recoveredBlock22Done := false.
    [recoveredBlock22Done not] whileTrue: [
        recoveredBlock22Step := recoveredBlock22PC.
        recoveredBlock22Step = 28 ifTrue: [
            recoveredBlock22Stack1 := WriteStream.
            recoveredBlock22PC := 30.
        ].
        recoveredBlock22Step = 30 ifTrue: [
            recoveredBlock22Stack2 := Locale.
            recoveredBlock22PC := 32.
        ].
        recoveredBlock22Step = 32 ifTrue: [
            recoveredBlock22Stack2 := (recoveredBlock22Stack2) current.
            recoveredBlock22PC := 34.
        ].
        recoveredBlock22Step = 34 ifTrue: [
            recoveredBlock22Stack2 := (recoveredBlock22Stack2) preferredStringClass.
            recoveredBlock22PC := 36.
        ].
        recoveredBlock22Step = 36 ifTrue: [
            recoveredBlock22Stack2 := (recoveredBlock22Stack2) new.
            recoveredBlock22PC := 37.
        ].
        recoveredBlock22Step = 37 ifTrue: [
            recoveredBlock22Stack1 := (recoveredBlock22Stack1) on: (recoveredBlock22Stack2).
            recoveredBlock22PC := 39.
        ].
        recoveredBlock22Step = 39 ifTrue: [
            recoveredBlock22Local1 := recoveredBlock22Stack1.
            recoveredBlock22PC := 42.
        ].
        recoveredBlock22Step = 42 ifTrue: [
            recoveredBlock22Stack1 := recoveredBlock22Arg1.
            recoveredBlock22PC := 45.
        ].
        recoveredBlock22Step = 45 ifTrue: [
            recoveredBlock22Stack2 := [:recoveredBlock22Block45Arg1 | 
    | recoveredBlock22Block45Value0 recoveredBlock22Block45Value1 recoveredBlock22Block45Value2 |
    recoveredBlock22Block45Value0 := recoveredLocal1.
    recoveredBlock22Block45Value1 := recoveredBlock22Block45Arg1.
    recoveredBlock22Block45Value2 := (recoveredBlock22Block45Value0) value: (recoveredBlock22Block45Value1).
    recoveredBlock22Block45Value2
].
            recoveredBlock22PC := 59.
        ].
        recoveredBlock22Step = 59 ifTrue: [
            recoveredBlock22Stack1 := (recoveredBlock22Stack1) collect: (recoveredBlock22Stack2).
            recoveredBlock22PC := 61.
        ].
        recoveredBlock22Step = 61 ifTrue: [
            recoveredBlock22Stack2 := [:recoveredBlock22Block61Arg1 | 
    | recoveredBlock22Block61Value0 recoveredBlock22Block61Value1 recoveredBlock22Block61Value2 recoveredBlock22Block61Value3 |
    recoveredBlock22Block61Value0 := recoveredBlock22Local1.
    recoveredBlock22Block61Value1 := recoveredBlock22Block61Value0.
    recoveredBlock22Block61Value2 := recoveredBlock22Block61Arg1.
    (recoveredBlock22Block61Value1) nextPutAll: (recoveredBlock22Block61Value2).
    recoveredBlock22Block61Value3 := (recoveredBlock22Block61Value0) cr.
    recoveredBlock22Block61Value3
].
            recoveredBlock22PC := 78.
        ].
        recoveredBlock22Step = 78 ifTrue: [
            (recoveredBlock22Stack1) do: (recoveredBlock22Stack2).
            recoveredBlock22PC := 80.
        ].
        recoveredBlock22Step = 80 ifTrue: [
            recoveredBlock22Stack1 := recoveredBlock22Local1.
            recoveredBlock22PC := 83.
        ].
        recoveredBlock22Step = 83 ifTrue: [
            recoveredBlock22Stack1 := (recoveredBlock22Stack1) isEmpty.
            recoveredBlock22PC := 85.
        ].
        recoveredBlock22Step = 85 ifTrue: [
            (recoveredBlock22Stack1) ifTrue: [recoveredBlock22PC := 99] ifFalse: [recoveredBlock22PC := 88].
        ].
        recoveredBlock22Step = 88 ifTrue: [
            recoveredBlock22Stack1 := recoveredBlock22Local1.
            recoveredBlock22PC := 91.
        ].
        recoveredBlock22Step = 91 ifTrue: [
            recoveredBlock22Stack2 := recoveredBlock22Local1.
            recoveredBlock22PC := 94.
        ].
        recoveredBlock22Step = 94 ifTrue: [
            recoveredBlock22Stack2 := (recoveredBlock22Stack2) position.
            recoveredBlock22PC := 96.
        ].
        recoveredBlock22Step = 96 ifTrue: [
            recoveredBlock22Stack2 := (recoveredBlock22Stack2) + (-2).
            recoveredBlock22PC := 97.
        ].
        recoveredBlock22Step = 97 ifTrue: [
            (recoveredBlock22Stack1) position: (recoveredBlock22Stack2).
            recoveredBlock22PC := 99.
        ].
        recoveredBlock22Step = 99 ifTrue: [
            recoveredBlock22Stack1 := recoveredBlock22Local1.
            recoveredBlock22PC := 102.
        ].
        recoveredBlock22Step = 102 ifTrue: [
            recoveredBlock22Stack1 := (recoveredBlock22Stack1) contents.
            recoveredBlock22PC := 104.
        ].
        recoveredBlock22Step = 104 ifTrue: [
            recoveredBlock22Result := recoveredBlock22Stack1.
            recoveredBlock22Done := true.
        ].
    ].
    recoveredBlock22Result
].
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 112.
        ].
        recoveredStep = 112 ifTrue: [
            recoveredStack3 := 'Def. characteristics'.
            recoveredPC := 114.
        ].
        recoveredStep = 114 ifTrue: [
            recoveredStack4 := recoveredLocal2.
            recoveredPC := 117.
        ].
        recoveredStep = 117 ifTrue: [
            recoveredStack5 := self.
            recoveredPC := 118.
        ].
        recoveredStep = 118 ifTrue: [
            recoveredStack5 := (recoveredStack5) defCharacteristic.
            recoveredPC := 120.
        ].
        recoveredStep = 120 ifTrue: [
            recoveredStack4 := (recoveredStack4) value: (recoveredStack5).
            recoveredPC := 122.
        ].
        recoveredStep = 122 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredPC := 124.
        ].
        recoveredStep = 124 ifTrue: [
            recoveredPC := 125.
        ].
        recoveredStep = 125 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 128.
        ].
        recoveredStep = 128 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

