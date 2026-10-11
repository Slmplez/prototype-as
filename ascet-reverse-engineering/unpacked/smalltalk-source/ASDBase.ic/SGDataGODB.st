"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x200015c0; bytecode file offset 0x8ffcfc"
!SGDataGODB methodsFor: 'recovered'!
contents
    ^self
! !

"ASDBase.ic method 0x200fdd4c; bytecode file offset 0x9fa60c"
!SGDataGODB methodsFor: 'recovered'!
getXMLType: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := ASDDisplayStrings.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := (recoveredStack1) undefinedString.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) getXMLType.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x201ed198; bytecode file offset 0xae9a68"
!SGDataGODB methodsFor: 'recovered'!
isValidElement: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
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
            recoveredStack2 := (recoveredStack2) aliasName.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) elementAliasName: (recoveredStack2).
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 27] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := (recoveredStack2) sgClass.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack3 := OrderedCollection.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack4 := recoveredArg1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack4 := (recoveredStack4) specification.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack3 := (recoveredStack3) with: (recoveredStack4).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := (recoveredStack1) isPossibleElementFor: (recoveredStack2) specifications: (recoveredStack3).
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x20260cc4; bytecode file offset 0xb5d590"
!SGDataGODB methodsFor: 'recovered'!
getXMLTag: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := 'Kli'.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := 'Call_71034'.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) == (recoveredStack2).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) sgClass.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 23] ifFalse: [recoveredPC := 20].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := 'SimpleElement'.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := (recoveredStack1) sgClass.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := (recoveredStack1) isSGResource.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 30] ifFalse: [recoveredPC := 36].
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := 'Resource'.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredPC := 38.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := 'SimpleElement'.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x20325754; bytecode file offset 0xc22034"
!SGDataGODB methodsFor: 'recovered'!
internalWriteXMLAttrs: recoveredArg1 class: recoveredArg2 element: recoveredArg3
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
            recoveredStack2 := recoveredArg2.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack3 := recoveredArg3.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            super internalWriteXMLAttrs: (recoveredStack1) class: (recoveredStack2) element: (recoveredStack3).
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := 'Kli'.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := 'Call_71034'.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) == (recoveredStack1).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := recoveredArg3.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 28] ifFalse: [recoveredPC := 22].
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := recoveredArg3.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := (recoveredStack0) sgClass.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 40] ifFalse: [recoveredPC := 28].
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := 'type'.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack2 := ASDDisplayStrings.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack2 := (recoveredStack2) undefinedString.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            (recoveredStack0) attr: (recoveredStack1) nmToken: (recoveredStack2).
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredPC := 57.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack0 := recoveredArg3.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack0 := (recoveredStack0) sgClass.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack0 := (recoveredStack0) isSGResource.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 57] ifFalse: [recoveredPC := 48].
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack1 := 'type'.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack3 := recoveredArg3.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack2 := (recoveredStack2) getXMLType: (recoveredStack3).
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            (recoveredStack0) attr: (recoveredStack1) nmToken: (recoveredStack2).
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x203c2184; bytecode file offset 0xcbea78"
!SGDataGODB methodsFor: 'recovered'!
internalWriteXML: recoveredArg1 simpleSelectorPort: recoveredArg2 methodId: recoveredArg3 sgClass: recoveredArg4 tag: recoveredArg5
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := 1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := (recoveredStack1) ~= (recoveredStack2).
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 25].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := 'Size of select pins = '.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack3 := (recoveredStack3) size.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack3 := (recoveredStack3) printString.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack2 := (recoveredStack2) , (recoveredStack3).
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            (recoveredStack1) wrongAssumption: (recoveredStack2).
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack2 := [:block280f678cArg1 | 
    true
].
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := (recoveredStack1) detect: (recoveredStack2).
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack2 := recoveredArg5.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            (recoveredStack1) openComplex: (recoveredStack2).
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack2 := 'graphicOID'.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack4 := 1.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack3 := (recoveredStack3) at: (recoveredStack4).
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            (recoveredStack1) attr: (recoveredStack2) graphicOID: (recoveredStack3).
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack2 := 'location'.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack4 := 2.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack3 := (recoveredStack3) at: (recoveredStack4).
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            (recoveredStack1) attr: (recoveredStack2) enum: (recoveredStack3).
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack2 := (recoveredStack2) sequences.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack3 := recoveredArg3.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack2 := (recoveredStack2) at: (recoveredStack3).
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack3 := recoveredArg4.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            (recoveredStack0) internalWriteXML: (recoveredStack1) sequenceCall: (recoveredStack2) sgClass: (recoveredStack3).
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            (recoveredStack0) closeComplex.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20548cd8; bytecode file offset 0xe455f4"
!SGDataGODB methodsFor: 'recovered'!
internalWriteXMLPorts: recoveredArg1 class: recoveredArg2 refClass: recoveredArg3
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredStack7 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := 'Interfaces'.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack1) openComplex: (recoveredStack2).
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 86] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := (recoveredStack1) isSGResource.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 26] ifFalse: [recoveredPC := 86].
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := selectorPorts.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack2 := 'reserve'.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2).
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack4 := 'reserve'.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack5 := recoveredArg2.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack6 := 'ReservePort'.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            (recoveredStack1) internalWriteXML: (recoveredStack2) simpleSelectorPort: (recoveredStack3) methodId: (recoveredStack4) sgClass: (recoveredStack5) tag: (recoveredStack6).
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack1 := selectorPorts.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack2 := 'release'.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2).
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack4 := 'release'.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack5 := recoveredArg2.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack6 := 'ReleasePort'.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            (recoveredStack1) internalWriteXML: (recoveredStack2) simpleSelectorPort: (recoveredStack3) methodId: (recoveredStack4) sgClass: (recoveredStack5) tag: (recoveredStack6).
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredPC := 212.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack1 := returnPorts.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack2 := [:recoveredBlock88Arg1 :recoveredBlock88Arg2 | 
    | recoveredBlock88Local1 recoveredBlock88Stack0 recoveredBlock88Stack1 recoveredBlock88Stack2 recoveredBlock88Stack3 recoveredBlock88Stack4 recoveredBlock88Stack5 recoveredBlock88PC recoveredBlock88Step recoveredBlock88Done recoveredBlock88Result |
    recoveredBlock88Stack0 := self.
    recoveredBlock88PC := 94.
    recoveredBlock88Done := false.
    [recoveredBlock88Done not] whileTrue: [
        recoveredBlock88Step := recoveredBlock88PC.
        recoveredBlock88Step = 94 ifTrue: [
            recoveredBlock88Stack1 := nil.
            recoveredBlock88PC := 95.
        ].
        recoveredBlock88Step = 95 ifTrue: [
            recoveredBlock88Stack2 := recoveredBlock88Arg1.
            recoveredBlock88PC := 96.
        ].
        recoveredBlock88Step = 96 ifTrue: [
            recoveredBlock88Stack3 := 'set'.
            recoveredBlock88PC := 98.
        ].
        recoveredBlock88Step = 98 ifTrue: [
            recoveredBlock88Stack2 := (recoveredBlock88Stack2) = (recoveredBlock88Stack3).
            recoveredBlock88PC := 99.
        ].
        recoveredBlock88Step = 99 ifTrue: [
            (recoveredBlock88Stack2) ifTrue: [recoveredBlock88PC := 175] ifFalse: [recoveredBlock88PC := 102].
        ].
        recoveredBlock88Step = 102 ifTrue: [
            recoveredBlock88PC := 103.
        ].
        recoveredBlock88Step = 103 ifTrue: [
            recoveredBlock88Stack1 := recoveredBlock88Arg2.
            recoveredBlock88PC := 104.
        ].
        recoveredBlock88Step = 104 ifTrue: [
            recoveredBlock88Stack1 := (recoveredBlock88Stack1) size.
            recoveredBlock88PC := 106.
        ].
        recoveredBlock88Step = 106 ifTrue: [
            recoveredBlock88Stack2 := 1.
            recoveredBlock88PC := 108.
        ].
        recoveredBlock88Step = 108 ifTrue: [
            recoveredBlock88Stack1 := (recoveredBlock88Stack1) ~= (recoveredBlock88Stack2).
            recoveredBlock88PC := 109.
        ].
        recoveredBlock88Step = 109 ifTrue: [
            (recoveredBlock88Stack1) ifTrue: [recoveredBlock88PC := 112] ifFalse: [recoveredBlock88PC := 126].
        ].
        recoveredBlock88Step = 112 ifTrue: [
            recoveredBlock88Stack1 := recoveredArg1.
            recoveredBlock88PC := 115.
        ].
        recoveredBlock88Step = 115 ifTrue: [
            recoveredBlock88Stack2 := 'Size of return pins = '.
            recoveredBlock88PC := 117.
        ].
        recoveredBlock88Step = 117 ifTrue: [
            recoveredBlock88Stack3 := recoveredBlock88Arg2.
            recoveredBlock88PC := 118.
        ].
        recoveredBlock88Step = 118 ifTrue: [
            recoveredBlock88Stack3 := (recoveredBlock88Stack3) size.
            recoveredBlock88PC := 120.
        ].
        recoveredBlock88Step = 120 ifTrue: [
            recoveredBlock88Stack3 := (recoveredBlock88Stack3) printString.
            recoveredBlock88PC := 122.
        ].
        recoveredBlock88Step = 122 ifTrue: [
            recoveredBlock88Stack2 := (recoveredBlock88Stack2) , (recoveredBlock88Stack3).
            recoveredBlock88PC := 124.
        ].
        recoveredBlock88Step = 124 ifTrue: [
            (recoveredBlock88Stack1) wrongAssumption: (recoveredBlock88Stack2).
            recoveredBlock88PC := 126.
        ].
        recoveredBlock88Step = 126 ifTrue: [
            recoveredBlock88Stack1 := recoveredBlock88Arg2.
            recoveredBlock88PC := 127.
        ].
        recoveredBlock88Step = 127 ifTrue: [
            recoveredBlock88Stack2 := [:block2810ed6cArg1 | 
    true
].
            recoveredBlock88PC := 129.
        ].
        recoveredBlock88Step = 129 ifTrue: [
            recoveredBlock88PC := 134.
        ].
        recoveredBlock88Step = 134 ifTrue: [
            recoveredBlock88Stack1 := (recoveredBlock88Stack1) detect: (recoveredBlock88Stack2).
            recoveredBlock88PC := 136.
        ].
        recoveredBlock88Step = 136 ifTrue: [
            recoveredBlock88Local1 := recoveredBlock88Stack1.
            recoveredBlock88PC := 137.
        ].
        recoveredBlock88Step = 137 ifTrue: [
            recoveredBlock88Stack1 := recoveredArg1.
            recoveredBlock88PC := 140.
        ].
        recoveredBlock88Step = 140 ifTrue: [
            recoveredBlock88Stack2 := 'ReturnPort'.
            recoveredBlock88PC := 142.
        ].
        recoveredBlock88Step = 142 ifTrue: [
            (recoveredBlock88Stack1) openComplex: (recoveredBlock88Stack2).
            recoveredBlock88PC := 144.
        ].
        recoveredBlock88Step = 144 ifTrue: [
            recoveredBlock88Stack1 := recoveredArg1.
            recoveredBlock88PC := 147.
        ].
        recoveredBlock88Step = 147 ifTrue: [
            recoveredBlock88Stack2 := 'graphicOID'.
            recoveredBlock88PC := 149.
        ].
        recoveredBlock88Step = 149 ifTrue: [
            recoveredBlock88Stack3 := recoveredBlock88Local1.
            recoveredBlock88PC := 150.
        ].
        recoveredBlock88Step = 150 ifTrue: [
            recoveredBlock88Stack4 := 1.
            recoveredBlock88PC := 152.
        ].
        recoveredBlock88Step = 152 ifTrue: [
            recoveredBlock88Stack3 := (recoveredBlock88Stack3) at: (recoveredBlock88Stack4).
            recoveredBlock88PC := 154.
        ].
        recoveredBlock88Step = 154 ifTrue: [
            (recoveredBlock88Stack1) attr: (recoveredBlock88Stack2) graphicOID: (recoveredBlock88Stack3).
            recoveredBlock88PC := 156.
        ].
        recoveredBlock88Step = 156 ifTrue: [
            recoveredBlock88Stack1 := recoveredArg1.
            recoveredBlock88PC := 159.
        ].
        recoveredBlock88Step = 159 ifTrue: [
            recoveredBlock88Stack2 := 'location'.
            recoveredBlock88PC := 161.
        ].
        recoveredBlock88Step = 161 ifTrue: [
            recoveredBlock88Stack3 := recoveredBlock88Local1.
            recoveredBlock88PC := 162.
        ].
        recoveredBlock88Step = 162 ifTrue: [
            recoveredBlock88Stack4 := 2.
            recoveredBlock88PC := 164.
        ].
        recoveredBlock88Step = 164 ifTrue: [
            recoveredBlock88Stack3 := (recoveredBlock88Stack3) at: (recoveredBlock88Stack4).
            recoveredBlock88PC := 166.
        ].
        recoveredBlock88Step = 166 ifTrue: [
            (recoveredBlock88Stack1) attr: (recoveredBlock88Stack2) enum: (recoveredBlock88Stack3).
            recoveredBlock88PC := 168.
        ].
        recoveredBlock88Step = 168 ifTrue: [
            recoveredBlock88Stack1 := recoveredArg1.
            recoveredBlock88PC := 171.
        ].
        recoveredBlock88Step = 171 ifTrue: [
            recoveredBlock88Stack1 := (recoveredBlock88Stack1) closeComplex.
            recoveredBlock88PC := 173.
        ].
        recoveredBlock88Step = 173 ifTrue: [
            recoveredBlock88Stack2 := nil.
            recoveredBlock88PC := 174.
        ].
        recoveredBlock88Step = 174 ifTrue: [
            recoveredBlock88Local1 := recoveredBlock88Stack2.
            recoveredBlock88PC := 175.
        ].
        recoveredBlock88Step = 175 ifTrue: [
            recoveredBlock88Result := recoveredBlock88Stack1.
            recoveredBlock88Done := true.
        ].
    ].
    recoveredBlock88Result
].
            recoveredPC := 176.
        ].
        recoveredStep = 176 ifTrue: [
            (recoveredStack1) keysAndValuesDo: (recoveredStack2).
            recoveredPC := 178.
        ].
        recoveredStep = 178 ifTrue: [
            recoveredStack1 := selectorPorts.
            recoveredPC := 180.
        ].
        recoveredStep = 180 ifTrue: [
            recoveredStack2 := [:recoveredBlock180Arg1 :recoveredBlock180Arg2 | 
    | recoveredBlock180Stack0 recoveredBlock180Stack1 recoveredBlock180Stack2 recoveredBlock180Stack3 recoveredBlock180Stack4 recoveredBlock180Stack5 recoveredBlock180Stack6 recoveredBlock180Stack7 recoveredBlock180PC recoveredBlock180Step recoveredBlock180Done recoveredBlock180Result |
    recoveredBlock180Stack0 := self.
    recoveredBlock180PC := 186.
    recoveredBlock180Done := false.
    [recoveredBlock180Done not] whileTrue: [
        recoveredBlock180Step := recoveredBlock180PC.
        recoveredBlock180Step = 186 ifTrue: [
            recoveredBlock180Stack1 := nil.
            recoveredBlock180PC := 187.
        ].
        recoveredBlock180Step = 187 ifTrue: [
            recoveredBlock180Stack2 := recoveredBlock180Arg1.
            recoveredBlock180PC := 188.
        ].
        recoveredBlock180Step = 188 ifTrue: [
            recoveredBlock180Stack3 := 'get'.
            recoveredBlock180PC := 190.
        ].
        recoveredBlock180Step = 190 ifTrue: [
            recoveredBlock180Stack2 := (recoveredBlock180Stack2) = (recoveredBlock180Stack3).
            recoveredBlock180PC := 191.
        ].
        recoveredBlock180Step = 191 ifTrue: [
            (recoveredBlock180Stack2) ifTrue: [recoveredBlock180PC := 209] ifFalse: [recoveredBlock180PC := 194].
        ].
        recoveredBlock180Step = 194 ifTrue: [
            recoveredBlock180PC := 195.
        ].
        recoveredBlock180Step = 195 ifTrue: [
            recoveredBlock180Stack1 := self.
            recoveredBlock180PC := 196.
        ].
        recoveredBlock180Step = 196 ifTrue: [
            recoveredBlock180Stack2 := recoveredArg1.
            recoveredBlock180PC := 199.
        ].
        recoveredBlock180Step = 199 ifTrue: [
            recoveredBlock180Stack3 := recoveredBlock180Arg2.
            recoveredBlock180PC := 200.
        ].
        recoveredBlock180Step = 200 ifTrue: [
            recoveredBlock180Stack4 := recoveredBlock180Arg1.
            recoveredBlock180PC := 201.
        ].
        recoveredBlock180Step = 201 ifTrue: [
            recoveredBlock180Stack5 := recoveredArg2.
            recoveredBlock180PC := 204.
        ].
        recoveredBlock180Step = 204 ifTrue: [
            recoveredBlock180Stack6 := 'SelectorPort'.
            recoveredBlock180PC := 206.
        ].
        recoveredBlock180Step = 206 ifTrue: [
            recoveredBlock180Stack1 := (recoveredBlock180Stack1) internalWriteXML: (recoveredBlock180Stack2) simpleSelectorPort: (recoveredBlock180Stack3) methodId: (recoveredBlock180Stack4) sgClass: (recoveredBlock180Stack5) tag: (recoveredBlock180Stack6).
            recoveredBlock180PC := 209.
        ].
        recoveredBlock180Step = 209 ifTrue: [
            recoveredBlock180Result := recoveredBlock180Stack1.
            recoveredBlock180Done := true.
        ].
    ].
    recoveredBlock180Result
].
            recoveredPC := 210.
        ].
        recoveredStep = 210 ifTrue: [
            (recoveredStack1) keysAndValuesDo: (recoveredStack2).
            recoveredPC := 212.
        ].
        recoveredStep = 212 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 215.
        ].
        recoveredStep = 215 ifTrue: [
            (recoveredStack1) closeComplex.
            recoveredPC := 217.
        ].
        recoveredStep = 217 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

