"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20000800; bytecode file offset 0x8ffcfc"
!ASDXMLMemoryClassDeclaration methodsFor: 'recovered'!
initDeclarationFiles
    ^self
! !

"ASDBase.ic method 0x20007370; bytecode file offset 0x908be4"
!ASDXMLMemoryClassDeclaration methodsFor: 'recovered'!
memorySegments
    | recoveredValue0 |
    recoveredValue0 := (self) memorySegmentTable.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2001799c; bytecode file offset 0x92209c"
!ASDXMLMemoryClassDeclaration methodsFor: 'recovered'!
xmlCateory
    ^'MemClassConfig'
! !

"ASDBase.ic method 0x200229b8; bytecode file offset 0x92209c"
!ASDXMLMemoryClassDeclaration methodsFor: 'recovered'!
memClassSystemConstantKey
    ^'SystemConstant'
! !

"ASDBase.ic method 0x200248cc; bytecode file offset 0x92209c"
!ASDXMLMemoryClassDeclaration methodsFor: 'recovered'!
guiMarker
    ^'GUI'
! !

"ASDBase.ic method 0x2002bf34; bytecode file offset 0x934580"
!ASDXMLMemoryClassDeclaration methodsFor: 'recovered'!
memClassDistSearchResultKey
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) class.
    recoveredValue1 := (recoveredValue0) memClassDistSearchResultKey.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2002df94; bytecode file offset 0x934580"
!ASDXMLMemoryClassDeclaration methodsFor: 'recovered'!
memClassVariablKey
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) class.
    recoveredValue1 := (recoveredValue0) memClassVariablKey.
    ^recoveredValue1
! !

"ASDBase.ic method 0x200348f4; bytecode file offset 0x934580"
!ASDXMLMemoryClassDeclaration methodsFor: 'recovered'!
memClassCharacteristicKey
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) class.
    recoveredValue1 := (recoveredValue0) memClassCharacteristicKey.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20034ec4; bytecode file offset 0x934580"
!ASDXMLMemoryClassDeclaration methodsFor: 'recovered'!
memClassConstDataKey
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) class.
    recoveredValue1 := (recoveredValue0) memClassConstDataKey.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20037614; bytecode file offset 0x934580"
!ASDXMLMemoryClassDeclaration methodsFor: 'recovered'!
memClassCodeKey
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) class.
    recoveredValue1 := (recoveredValue0) memClassCodeKey.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2003d298; bytecode file offset 0x93bf94"
!ASDXMLMemoryClassDeclaration methodsFor: 'recovered'!
errorHandler
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := SGCgErrorHandler.
    recoveredValue1 := (recoveredValue0) current.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20041928; bytecode file offset 0x93e1ec"
!ASDXMLMemoryClassDeclaration methodsFor: 'recovered'!
isValid
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := checksum.
    recoveredValue1 := (recoveredValue0) notNil.
    ^recoveredValue1
! !

"ASDBase.ic method 0x200492bc; bytecode file offset 0x947128"
!ASDXMLMemoryClassDeclaration methodsFor: 'recovered'!
memClassDefaultCode
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) memClassCodeKey.
    recoveredValue1 := (self) memoryClassDefault: (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x200493ac; bytecode file offset 0x947128"
!ASDXMLMemoryClassDeclaration methodsFor: 'recovered'!
memoryClassesDistSearchResultGUI
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) memClassDistSearchResultKey.
    recoveredValue1 := (self) memoryClassesGUI: (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x200494ec; bytecode file offset 0x947128"
!ASDXMLMemoryClassDeclaration methodsFor: 'recovered'!
memClassDefaultConstData
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) memClassConstDataKey.
    recoveredValue1 := (self) memoryClassDefault: (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x2004965c; bytecode file offset 0x947128"
!ASDXMLMemoryClassDeclaration methodsFor: 'recovered'!
memClassDefaultSystemConstant
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) memClassSystemConstantKey.
    recoveredValue1 := (self) memoryClassDefault: (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x2004968c; bytecode file offset 0x947128"
!ASDXMLMemoryClassDeclaration methodsFor: 'recovered'!
memClassDefaultVariable
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) memClassVariablKey.
    recoveredValue1 := (self) memoryClassDefault: (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x2004988c; bytecode file offset 0x947128"
!ASDXMLMemoryClassDeclaration methodsFor: 'recovered'!
memoryClassesCode
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) memClassCodeKey.
    recoveredValue1 := (self) memoryClasses: (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x200498dc; bytecode file offset 0x947128"
!ASDXMLMemoryClassDeclaration methodsFor: 'recovered'!
memoryClassesConstData
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) memClassConstDataKey.
    recoveredValue1 := (self) memoryClasses: (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x20049c0c; bytecode file offset 0x947128"
!ASDXMLMemoryClassDeclaration methodsFor: 'recovered'!
memoryClassesVariableGUI
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) memClassVariablKey.
    recoveredValue1 := (self) memoryClassesGUI: (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x20049dac; bytecode file offset 0x947128"
!ASDXMLMemoryClassDeclaration methodsFor: 'recovered'!
memClassDefaultDistSearchResult
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) memClassDistSearchResultKey.
    recoveredValue1 := (self) memoryClassDefault: (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x20049f5c; bytecode file offset 0x947128"
!ASDXMLMemoryClassDeclaration methodsFor: 'recovered'!
memoryClassesDistSearchResult
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) memClassDistSearchResultKey.
    recoveredValue1 := (self) memoryClasses: (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x20049ffc; bytecode file offset 0x947128"
!ASDXMLMemoryClassDeclaration methodsFor: 'recovered'!
memoryClassesVariable
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) memClassVariablKey.
    recoveredValue1 := (self) memoryClasses: (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x2004a05c; bytecode file offset 0x947128"
!ASDXMLMemoryClassDeclaration methodsFor: 'recovered'!
memoryClassesCharacteristic
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) memClassCharacteristicKey.
    recoveredValue1 := (self) memoryClasses: (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x2004a0ac; bytecode file offset 0x947128"
!ASDXMLMemoryClassDeclaration methodsFor: 'recovered'!
memClassDefaultCharacteristic
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) memClassCharacteristicKey.
    recoveredValue1 := (self) memoryClassDefault: (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x2004a1bc; bytecode file offset 0x947128"
!ASDXMLMemoryClassDeclaration methodsFor: 'recovered'!
memoryClassesConstDataGUI
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) memClassConstDataKey.
    recoveredValue1 := (self) memoryClassesGUI: (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x2004a3bc; bytecode file offset 0x947128"
!ASDXMLMemoryClassDeclaration methodsFor: 'recovered'!
memoryClassesCodeGUI
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) memClassCodeKey.
    recoveredValue1 := (self) memoryClassesGUI: (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x2004a47c; bytecode file offset 0x947128"
!ASDXMLMemoryClassDeclaration methodsFor: 'recovered'!
memoryClassesCharacteristicGUI
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) memClassCharacteristicKey.
    recoveredValue1 := (self) memoryClassesGUI: (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x2004a5cc; bytecode file offset 0x947128"
!ASDXMLMemoryClassDeclaration methodsFor: 'recovered'!
memoryClassesSystemConstant
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) memClassSystemConstantKey.
    recoveredValue1 := (self) memoryClasses: (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x2006a474; bytecode file offset 0x967a18"
!ASDXMLMemoryClassDeclaration methodsFor: 'recovered'!
checksum
    | recoveredValue0 |
    recoveredValue0 := checksum.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006d1f0; bytecode file offset 0x969c04"
!ASDXMLMemoryClassDeclaration methodsFor: 'recovered'!
memClassReadCosts
    | recoveredValue0 |
    recoveredValue0 := readCostsMap.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006dcb8; bytecode file offset 0x96a9dc"
!ASDXMLMemoryClassDeclaration methodsFor: 'recovered'!
messages
    | recoveredValue0 |
    recoveredValue0 := messages.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20083e80; bytecode file offset 0x9807dc"
!ASDXMLMemoryClassDeclaration methodsFor: 'recovered'!
attributNameGUI: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) guiMarker.
    recoveredValue2 := (recoveredValue0) , (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x2008991c; bytecode file offset 0x9861e8"
!ASDXMLMemoryClassDeclaration methodsFor: 'recovered'!
resetMemorySegmentTable
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := LookupTable.
    recoveredValue1 := (recoveredValue0) new.
    memorySegmentTable := recoveredValue1.
    ^self
! !

"ASDBase.ic method 0x2009a558; bytecode file offset 0x997194"
!ASDXMLMemoryClassDeclaration methodsFor: 'recovered'!
getStreamFromXMLFile: recoveredArg1 ifFail: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) hostAccess.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := (recoveredValue0) getFileStream: (recoveredValue1) ifFail: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x200c8b94; bytecode file offset 0x9c5470"
!ASDXMLMemoryClassDeclaration methodsFor: 'recovered'!
addError: recoveredArg1 arguments: recoveredArg2
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    (self) addError: (recoveredValue0) arguments: (recoveredValue1) source: (nil).
    ^self
! !

"ASDBase.ic method 0x200d7240; bytecode file offset 0x9d3b64"
!ASDXMLMemoryClassDeclaration methodsFor: 'recovered'!
declarationFile: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := Array.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue1) removeDoubleBackslashes.
    recoveredValue3 := (recoveredValue0) with: (recoveredValue2).
    (self) declarationFiles: (recoveredValue3).
    ^self
! !

"ASDBase.ic method 0x200dc298; bytecode file offset 0x9d8b80"
!ASDXMLMemoryClassDeclaration methodsFor: 'recovered'!
addError: recoveredArg1 argument: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := Array.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := (recoveredValue1) with: (recoveredValue2).
    (self) addError: (recoveredValue0) arguments: (recoveredValue3).
    ^self
! !

"ASDBase.ic method 0x20129d58; bytecode file offset 0xa26694"
!ASDXMLMemoryClassDeclaration methodsFor: 'recovered'!
redundantMemoryClasses
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := redundantMap.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 15] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := LookupTable.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            redundantMap := recoveredStack1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := redundantMap.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x20129f9c; bytecode file offset 0xa26878"
!ASDXMLMemoryClassDeclaration methodsFor: 'recovered'!
varStructMemoryClasses
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := varStructMap.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 15] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := LookupTable.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            varStructMap := recoveredStack1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := varStructMap.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2013b41c; bytecode file offset 0xa37cd8"
!ASDXMLMemoryClassDeclaration methodsFor: 'recovered'!
memorySegmentTable
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := memorySegmentTable.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack1) resetMemorySegmentTable.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack1) addDefaultMemorySegments.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := memorySegmentTable.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x201487b8; bytecode file offset 0xa45080"
!ASDXMLMemoryClassDeclaration methodsFor: 'recovered'!
addError: recoveredArg1 arguments: recoveredArg2 source: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := (self) messages.
    recoveredValue1 := Array.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := recoveredArg2.
    recoveredValue4 := recoveredArg3.
    recoveredValue5 := (recoveredValue1) with: ('E') with: (recoveredValue2) with: (recoveredValue3) with: (recoveredValue4).
    (recoveredValue0) add: (recoveredValue5).
    ^self
! !

"ASDBase.ic method 0x20189c50; bytecode file offset 0xa8651c"
!ASDXMLMemoryClassDeclaration methodsFor: 'recovered'!
isUpToDate
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) isValid.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) declarationFiles.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) first.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := (recoveredStack0) calculateChecksumForFilename: (recoveredStack1).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := (recoveredStack1) checksum.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := (recoveredStack0) equals: (recoveredStack1).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x202213a8; bytecode file offset 0xb1dc70"
!ASDXMLMemoryClassDeclaration methodsFor: 'recovered'!
memoryClassDefault: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) xmlCateory.
    recoveredValue2 := (self) getOptionNamed: (recoveredValue0) fromCategory: (recoveredValue1).
    recoveredValue3 := recoveredValue2.
    recoveredLocal1 := recoveredValue3.
    recoveredValue4 := [
    ^nil
].
    (recoveredValue2) ifNil: (recoveredValue4).
    recoveredValue5 := recoveredLocal1.
    recoveredValue6 := (recoveredValue5) optionClass.
    recoveredValue7 := (recoveredValue6) default.
    ^recoveredValue7
! !

"ASDBase.ic method 0x20238b64; bytecode file offset 0xb35430"
!ASDXMLMemoryClassDeclaration methodsFor: 'recovered'!
memoryClasses: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) xmlCateory.
    recoveredValue2 := (self) getOptionNamed: (recoveredValue0) fromCategory: (recoveredValue1).
    recoveredValue3 := recoveredValue2.
    recoveredLocal1 := recoveredValue3.
    recoveredValue4 := [
    ^#()
].
    (recoveredValue2) ifNil: (recoveredValue4).
    recoveredValue5 := recoveredLocal1.
    recoveredValue6 := (recoveredValue5) optionClass.
    recoveredValue7 := (recoveredValue6) stringCollection.
    ^recoveredValue7
! !

"ASDBase.ic method 0x202503b0; bytecode file offset 0xb4cc80"
!ASDXMLMemoryClassDeclaration methodsFor: 'recovered'!
memoryClassesGUI: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) attributNameGUI: (recoveredValue0).
    recoveredValue2 := (self) xmlCateory.
    recoveredValue3 := (self) getOptionNamed: (recoveredValue1) fromCategory: (recoveredValue2).
    recoveredValue4 := recoveredValue3.
    recoveredLocal1 := recoveredValue4.
    recoveredValue5 := [
    ^#()
].
    (recoveredValue3) ifNil: (recoveredValue5).
    recoveredValue6 := recoveredLocal1.
    recoveredValue7 := (recoveredValue6) optionClass.
    recoveredValue8 := (recoveredValue7) stringCollection.
    ^recoveredValue8
! !

"ASDBase.ic method 0x202c4374; bytecode file offset 0xbc0c50"
!ASDXMLMemoryClassDeclaration methodsFor: 'recovered'!
addDefaultMemorySegments
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 |
    recoveredValue0 := (self) memorySegmentTable.
    recoveredValue1 := recoveredValue0.
    recoveredValue2 := TGPlatform.
    recoveredValue3 := (recoveredValue2) memorySegmentIDOn.
    recoveredValue4 := ASDMemorySegment.
    recoveredValue5 := TGPlatform.
    recoveredValue6 := (recoveredValue5) memorySegmentIDOn.
    recoveredValue7 := (recoveredValue4) createId: (recoveredValue6) label: ('Cache').
    recoveredValue8 := recoveredValue7.
    (recoveredValue8) priority: (2).
    (recoveredValue1) at: (recoveredValue3) put: (recoveredValue7).
    recoveredValue9 := TGPlatform.
    recoveredValue10 := (recoveredValue9) memorySegmentIDOff.
    recoveredValue11 := ASDMemorySegment.
    recoveredValue12 := TGPlatform.
    recoveredValue13 := (recoveredValue12) memorySegmentIDOff.
    recoveredValue14 := (recoveredValue11) createId: (recoveredValue13) label: ('Global').
    recoveredValue15 := recoveredValue14.
    (recoveredValue15) priority: (1).
    (recoveredValue0) at: (recoveredValue10) put: (recoveredValue14).
    ^self
! !

"ASDBase.ic method 0x20325c30; bytecode file offset 0xc2250c"
!ASDXMLMemoryClassDeclaration methodsFor: 'recovered'!
initializeGUIOptions
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 recoveredValue21 |
    recoveredValue0 := OrderedCollection.
    recoveredValue1 := (recoveredValue0) new.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := recoveredLocal1.
    recoveredValue3 := recoveredValue2.
    recoveredValue4 := (self) memClassCodeKey.
    recoveredValue5 := (self) initializeDefaultMemClassGUI: (recoveredValue4).
    (recoveredValue3) add: (recoveredValue5).
    recoveredValue6 := recoveredValue2.
    recoveredValue7 := (self) memClassVariablKey.
    recoveredValue8 := (self) initializeDefaultMemClassGUI: (recoveredValue7).
    (recoveredValue6) add: (recoveredValue8).
    recoveredValue9 := recoveredValue2.
    recoveredValue10 := (self) memClassCharacteristicKey.
    recoveredValue11 := (self) initializeDefaultMemClassGUI: (recoveredValue10).
    (recoveredValue9) add: (recoveredValue11).
    recoveredValue12 := recoveredValue2.
    recoveredValue13 := (self) memClassConstDataKey.
    recoveredValue14 := (self) initializeDefaultMemClassGUI: (recoveredValue13).
    (recoveredValue12) add: (recoveredValue14).
    recoveredValue15 := recoveredValue2.
    recoveredValue16 := (self) memClassSystemConstantKey.
    recoveredValue17 := (self) initializeDefaultMemClassGUI: (recoveredValue16).
    (recoveredValue15) add: (recoveredValue17).
    recoveredValue18 := recoveredValue2.
    recoveredValue19 := (self) memClassDistSearchResultKey.
    recoveredValue20 := (self) initializeDefaultMemClassGUI: (recoveredValue19).
    (recoveredValue18) add: (recoveredValue20).
    recoveredValue21 := recoveredLocal1.
    ^recoveredValue21
! !

"ASDBase.ic method 0x2035978c; bytecode file offset 0xc56074"
!ASDXMLMemoryClassDeclaration methodsFor: 'recovered'!
initialize
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 |
    recoveredValue0 := (self) options.
    recoveredValue1 := recoveredValue0.
    recoveredValue2 := (self) memClassCodeKey.
    recoveredValue3 := (self) initializeDefaultMemClass: (recoveredValue2).
    (recoveredValue1) add: (recoveredValue3).
    recoveredValue4 := recoveredValue0.
    recoveredValue5 := (self) memClassVariablKey.
    recoveredValue6 := (self) initializeDefaultMemClass: (recoveredValue5).
    (recoveredValue4) add: (recoveredValue6).
    recoveredValue7 := recoveredValue0.
    recoveredValue8 := (self) memClassCharacteristicKey.
    recoveredValue9 := (self) initializeDefaultMemClass: (recoveredValue8).
    (recoveredValue7) add: (recoveredValue9).
    recoveredValue10 := recoveredValue0.
    recoveredValue11 := (self) memClassConstDataKey.
    recoveredValue12 := (self) initializeDefaultMemClass: (recoveredValue11).
    (recoveredValue10) add: (recoveredValue12).
    recoveredValue13 := recoveredValue0.
    recoveredValue14 := (self) memClassSystemConstantKey.
    recoveredValue15 := (self) initializeDefaultMemClass: (recoveredValue14).
    (recoveredValue13) add: (recoveredValue15).
    recoveredValue16 := recoveredValue0.
    recoveredValue17 := (self) memClassDistSearchResultKey.
    recoveredValue18 := (self) initializeDefaultMemClass: (recoveredValue17).
    (recoveredValue16) add: (recoveredValue18).
    recoveredValue19 := OrderedCollection.
    recoveredValue20 := (recoveredValue19) new.
    messages := recoveredValue20.
    super initialize.
    ^self
! !

"ASDBase.ic method 0x20376468; bytecode file offset 0xc72d68"
!ASDXMLMemoryClassDeclaration methodsFor: 'recovered'!
initializeDefaultMemClassGUI: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 recoveredValue21 recoveredValue22 recoveredValue23 |
    recoveredValue0 := EtasXMLOptionEntry.
    recoveredValue1 := (self) xmlCateory.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (self) attributNameGUI: (recoveredValue2).
    recoveredValue4 := EtasEnumerationOption.
    recoveredValue5 := recoveredArg1.
    recoveredValue6 := ('Memory Classes (GUI selectable) ') , (recoveredValue5).
    recoveredValue7 := recoveredArg1.
    recoveredValue8 := ('Memory Classes to be used for ') , (recoveredValue7).
    recoveredValue9 := (recoveredValue8) , (' elements/methods (GUI selectable)').
    recoveredValue10 := recoveredArg1.
    recoveredValue11 := ('Memory Classes in category ') , (recoveredValue10).
    recoveredValue12 := (recoveredValue11) , (' (GUI selectable)').
    recoveredValue13 := recoveredArg1.
    recoveredValue14 := recoveredArg1.
    recoveredValue15 := ('Default_') , (recoveredValue14).
    recoveredValue16 := (recoveredValue4) label: (recoveredValue6) description: (recoveredValue9) toolTip: (recoveredValue12) value: (recoveredValue13) default: (recoveredValue15) group: ('MemClassConfig\Implementation') visible: (true) sensitive: (true) type: ('PROJECT') userField: (nil).
    recoveredValue17 := recoveredValue16.
    recoveredValue18 := OrderedCollection.
    recoveredValue19 := (recoveredValue18) new.
    (recoveredValue17) valueCollection: (recoveredValue19).
    recoveredValue20 := OrderedCollection.
    recoveredValue21 := (recoveredValue20) new.
    recoveredValue22 := (recoveredValue16) stringCollection: (recoveredValue21).
    recoveredValue23 := (recoveredValue0) xmlCategory: (recoveredValue1) attributeName: (recoveredValue3) optionClass: (recoveredValue22) optionFile: (nil).
    ^recoveredValue23
! !

"ASDBase.ic method 0x2038f0c8; bytecode file offset 0xc8b9c0"
!ASDXMLMemoryClassDeclaration methodsFor: 'recovered'!
initializeDefaultMemClass: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 recoveredValue21 recoveredValue22 recoveredValue23 recoveredValue24 recoveredValue25 |
    recoveredValue0 := EtasXMLOptionEntry.
    recoveredValue1 := (self) xmlCateory.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := EtasEnumerationOption.
    recoveredValue4 := recoveredArg1.
    recoveredValue5 := ('Memory Classes ') , (recoveredValue4).
    recoveredValue6 := recoveredArg1.
    recoveredValue7 := ('Memory Classes to be used for ') , (recoveredValue6).
    recoveredValue8 := (recoveredValue7) , (' elements/methods').
    recoveredValue9 := recoveredArg1.
    recoveredValue10 := ('Memory Classes in category ') , (recoveredValue9).
    recoveredValue11 := recoveredArg1.
    recoveredValue12 := recoveredArg1.
    recoveredValue13 := ('Default_') , (recoveredValue12).
    recoveredValue14 := (recoveredValue3) label: (recoveredValue5) description: (recoveredValue8) toolTip: (recoveredValue10) value: (recoveredValue11) default: (recoveredValue13) group: ('MemClassConfig\Implementation') visible: (true) sensitive: (true) type: ('PROJECT') userField: (nil).
    recoveredValue15 := recoveredValue14.
    recoveredValue16 := OrderedCollection.
    recoveredValue17 := recoveredArg1.
    recoveredValue18 := ('Default_') , (recoveredValue17).
    recoveredValue19 := (recoveredValue16) with: (recoveredValue18).
    (recoveredValue15) valueCollection: (recoveredValue19).
    recoveredValue20 := OrderedCollection.
    recoveredValue21 := recoveredArg1.
    recoveredValue22 := ('Default_') , (recoveredValue21).
    recoveredValue23 := (recoveredValue20) with: (recoveredValue22).
    recoveredValue24 := (recoveredValue14) stringCollection: (recoveredValue23).
    recoveredValue25 := (recoveredValue0) xmlCategory: (recoveredValue1) attributeName: (recoveredValue2) optionClass: (recoveredValue24) optionFile: (nil).
    ^recoveredValue25
! !

"ASDBase.ic method 0x204f9260; bytecode file offset 0xdf5b64"
!ASDXMLMemoryClassDeclaration methodsFor: 'recovered'!
checkGeneralRestrictions: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) declarationFiles.
    recoveredValue2 := (recoveredValue1) first.
    recoveredValue3 := (recoveredValue0) file: (recoveredValue2).
    recoveredLocal1 := recoveredValue3.
    recoveredValue4 := (self) messages.
    recoveredValue5 := [:recoveredBlock15Arg1 | 
    | recoveredBlock15Local1 recoveredBlock15Stack0 recoveredBlock15Stack1 recoveredBlock15Stack2 recoveredBlock15Stack3 recoveredBlock15Stack4 recoveredBlock15Stack5 recoveredBlock15Stack6 recoveredBlock15PC recoveredBlock15Step recoveredBlock15Done recoveredBlock15Result |
    recoveredBlock15Stack0 := self.
    recoveredBlock15PC := 22.
    recoveredBlock15Done := false.
    [recoveredBlock15Done not] whileTrue: [
        recoveredBlock15Step := recoveredBlock15PC.
        recoveredBlock15Step = 22 ifTrue: [
            recoveredBlock15Stack1 := recoveredBlock15Arg1.
            recoveredBlock15PC := 23.
        ].
        recoveredBlock15Step = 23 ifTrue: [
            recoveredBlock15Stack2 := 4.
            recoveredBlock15PC := 25.
        ].
        recoveredBlock15Step = 25 ifTrue: [
            recoveredBlock15Stack1 := (recoveredBlock15Stack1) at: (recoveredBlock15Stack2).
            recoveredBlock15PC := 27.
        ].
        recoveredBlock15Step = 27 ifTrue: [
            recoveredBlock15Local1 := recoveredBlock15Stack1.
            recoveredBlock15PC := 28.
        ].
        recoveredBlock15Step = 28 ifTrue: [
            recoveredBlock15Stack1 := recoveredBlock15Local1.
            recoveredBlock15PC := 29.
        ].
        recoveredBlock15Step = 29 ifTrue: [
            (recoveredBlock15Stack1 ~~ nil) ifTrue: [recoveredBlock15PC := 40] ifFalse: [recoveredBlock15PC := 32].
        ].
        recoveredBlock15Step = 32 ifTrue: [
            recoveredBlock15Stack1 := recoveredLocal1.
            recoveredBlock15PC := 35.
        ].
        recoveredBlock15Step = 35 ifTrue: [
            recoveredBlock15Local1 := recoveredBlock15Stack1.
            recoveredBlock15PC := 36.
        ].
        recoveredBlock15Step = 36 ifTrue: [
            recoveredBlock15PC := 78.
        ].
        recoveredBlock15Step = 40 ifTrue: [
            recoveredBlock15Stack1 := recoveredBlock15Local1.
            recoveredBlock15PC := 41.
        ].
        recoveredBlock15Step = 41 ifTrue: [
            recoveredBlock15Stack1 := (recoveredBlock15Stack1) isMultiSource.
            recoveredBlock15PC := 43.
        ].
        recoveredBlock15Step = 43 ifTrue: [
            (recoveredBlock15Stack1) ifTrue: [recoveredBlock15PC := 46] ifFalse: [recoveredBlock15PC := 78].
        ].
        recoveredBlock15Step = 46 ifTrue: [
            recoveredBlock15Stack1 := recoveredBlock15Local1.
            recoveredBlock15PC := 47.
        ].
        recoveredBlock15Step = 47 ifTrue: [
            recoveredBlock15Stack1 := (recoveredBlock15Stack1) source.
            recoveredBlock15PC := 49.
        ].
        recoveredBlock15Step = 49 ifTrue: [
            recoveredBlock15Stack2 := recoveredBlock15Local1.
            recoveredBlock15PC := 50.
        ].
        recoveredBlock15Step = 50 ifTrue: [
            recoveredBlock15Stack2 := (recoveredBlock15Stack2) sources.
            recoveredBlock15PC := 52.
        ].
        recoveredBlock15Step = 52 ifTrue: [
            recoveredBlock15Stack3 := [:recoveredBlock15Block52Arg1 | 
    | recoveredBlock15Block52Stack0 recoveredBlock15Block52Stack1 recoveredBlock15Block52Stack2 recoveredBlock15Block52PC recoveredBlock15Block52Step recoveredBlock15Block52Done recoveredBlock15Block52Result |
    recoveredBlock15Block52Stack0 := nil.
    recoveredBlock15Block52PC := 58.
    recoveredBlock15Block52Done := false.
    [recoveredBlock15Block52Done not] whileTrue: [
        recoveredBlock15Block52Step := recoveredBlock15Block52PC.
        recoveredBlock15Block52Step = 58 ifTrue: [
            recoveredBlock15Block52Stack1 := recoveredBlock15Block52Arg1.
            recoveredBlock15Block52PC := 59.
        ].
        recoveredBlock15Block52Step = 59 ifTrue: [
            (recoveredBlock15Block52Stack1 ~~ nil) ifTrue: [recoveredBlock15Block52PC := 68] ifFalse: [recoveredBlock15Block52PC := 62].
        ].
        recoveredBlock15Block52Step = 62 ifTrue: [
            recoveredBlock15Block52Stack1 := recoveredLocal1.
            recoveredBlock15Block52PC := 65.
        ].
        recoveredBlock15Block52Step = 65 ifTrue: [
            recoveredBlock15Block52PC := 69.
        ].
        recoveredBlock15Block52Step = 68 ifTrue: [
            recoveredBlock15Block52Stack1 := recoveredBlock15Block52Arg1.
            recoveredBlock15Block52PC := 69.
        ].
        recoveredBlock15Block52Step = 69 ifTrue: [
            recoveredBlock15Block52Result := recoveredBlock15Block52Stack1.
            recoveredBlock15Block52Done := true.
        ].
    ].
    recoveredBlock15Block52Result
].
            recoveredBlock15PC := 70.
        ].
        recoveredBlock15Step = 70 ifTrue: [
            recoveredBlock15Stack2 := (recoveredBlock15Stack2) collect: (recoveredBlock15Stack3).
            recoveredBlock15PC := 72.
        ].
        recoveredBlock15Step = 72 ifTrue: [
            recoveredBlock15Stack3 := recoveredBlock15Local1.
            recoveredBlock15PC := 73.
        ].
        recoveredBlock15Step = 73 ifTrue: [
            recoveredBlock15Stack3 := (recoveredBlock15Stack3) labels.
            recoveredBlock15PC := 75.
        ].
        recoveredBlock15Step = 75 ifTrue: [
            recoveredBlock15Stack1 := (recoveredBlock15Stack1) createMultiSource: (recoveredBlock15Stack2) labels: (recoveredBlock15Stack3).
            recoveredBlock15PC := 77.
        ].
        recoveredBlock15Step = 77 ifTrue: [
            recoveredBlock15Local1 := recoveredBlock15Stack1.
            recoveredBlock15PC := 78.
        ].
        recoveredBlock15Step = 78 ifTrue: [
            recoveredBlock15Stack1 := recoveredBlock15Arg1.
            recoveredBlock15PC := 79.
        ].
        recoveredBlock15Step = 79 ifTrue: [
            recoveredBlock15Stack1 := (recoveredBlock15Stack1) first.
            recoveredBlock15PC := 80.
        ].
        recoveredBlock15Step = 80 ifTrue: [
            recoveredBlock15Stack2 := 'E'.
            recoveredBlock15PC := 82.
        ].
        recoveredBlock15Step = 82 ifTrue: [
            recoveredBlock15Stack1 := (recoveredBlock15Stack1) = (recoveredBlock15Stack2).
            recoveredBlock15PC := 83.
        ].
        recoveredBlock15Step = 83 ifTrue: [
            (recoveredBlock15Stack1) ifTrue: [recoveredBlock15PC := 86] ifFalse: [recoveredBlock15PC := 108].
        ].
        recoveredBlock15Step = 86 ifTrue: [
            recoveredBlock15Stack1 := self.
            recoveredBlock15PC := 87.
        ].
        recoveredBlock15Step = 87 ifTrue: [
            recoveredBlock15Stack1 := (recoveredBlock15Stack1) errorHandler.
            recoveredBlock15PC := 89.
        ].
        recoveredBlock15Step = 89 ifTrue: [
            recoveredBlock15Stack2 := recoveredBlock15Arg1.
            recoveredBlock15PC := 90.
        ].
        recoveredBlock15Step = 90 ifTrue: [
            recoveredBlock15Stack3 := 2.
            recoveredBlock15PC := 92.
        ].
        recoveredBlock15Step = 92 ifTrue: [
            recoveredBlock15Stack2 := (recoveredBlock15Stack2) at: (recoveredBlock15Stack3).
            recoveredBlock15PC := 94.
        ].
        recoveredBlock15Step = 94 ifTrue: [
            recoveredBlock15Stack3 := recoveredBlock15Arg1.
            recoveredBlock15PC := 95.
        ].
        recoveredBlock15Step = 95 ifTrue: [
            recoveredBlock15Stack4 := 3.
            recoveredBlock15PC := 97.
        ].
        recoveredBlock15Step = 97 ifTrue: [
            recoveredBlock15Stack3 := (recoveredBlock15Stack3) at: (recoveredBlock15Stack4).
            recoveredBlock15PC := 99.
        ].
        recoveredBlock15Step = 99 ifTrue: [
            recoveredBlock15Stack4 := 'Make'.
            recoveredBlock15PC := 101.
        ].
        recoveredBlock15Step = 101 ifTrue: [
            recoveredBlock15Stack5 := recoveredBlock15Local1.
            recoveredBlock15PC := 102.
        ].
        recoveredBlock15Step = 102 ifTrue: [
            recoveredBlock15Stack1 := (recoveredBlock15Stack1) errorNo: (recoveredBlock15Stack2) args: (recoveredBlock15Stack3) category: (recoveredBlock15Stack4) source: (recoveredBlock15Stack5).
            recoveredBlock15PC := 105.
        ].
        recoveredBlock15Step = 105 ifTrue: [
            recoveredBlock15PC := 168.
        ].
        recoveredBlock15Step = 108 ifTrue: [
            recoveredBlock15Stack1 := recoveredBlock15Arg1.
            recoveredBlock15PC := 109.
        ].
        recoveredBlock15Step = 109 ifTrue: [
            recoveredBlock15Stack1 := (recoveredBlock15Stack1) first.
            recoveredBlock15PC := 110.
        ].
        recoveredBlock15Step = 110 ifTrue: [
            recoveredBlock15Stack2 := 'W'.
            recoveredBlock15PC := 112.
        ].
        recoveredBlock15Step = 112 ifTrue: [
            recoveredBlock15Stack1 := (recoveredBlock15Stack1) = (recoveredBlock15Stack2).
            recoveredBlock15PC := 113.
        ].
        recoveredBlock15Step = 113 ifTrue: [
            (recoveredBlock15Stack1) ifTrue: [recoveredBlock15PC := 116] ifFalse: [recoveredBlock15PC := 138].
        ].
        recoveredBlock15Step = 116 ifTrue: [
            recoveredBlock15Stack1 := self.
            recoveredBlock15PC := 117.
        ].
        recoveredBlock15Step = 117 ifTrue: [
            recoveredBlock15Stack1 := (recoveredBlock15Stack1) errorHandler.
            recoveredBlock15PC := 119.
        ].
        recoveredBlock15Step = 119 ifTrue: [
            recoveredBlock15Stack2 := recoveredBlock15Arg1.
            recoveredBlock15PC := 120.
        ].
        recoveredBlock15Step = 120 ifTrue: [
            recoveredBlock15Stack3 := 2.
            recoveredBlock15PC := 122.
        ].
        recoveredBlock15Step = 122 ifTrue: [
            recoveredBlock15Stack2 := (recoveredBlock15Stack2) at: (recoveredBlock15Stack3).
            recoveredBlock15PC := 124.
        ].
        recoveredBlock15Step = 124 ifTrue: [
            recoveredBlock15Stack3 := recoveredBlock15Arg1.
            recoveredBlock15PC := 125.
        ].
        recoveredBlock15Step = 125 ifTrue: [
            recoveredBlock15Stack4 := 3.
            recoveredBlock15PC := 127.
        ].
        recoveredBlock15Step = 127 ifTrue: [
            recoveredBlock15Stack3 := (recoveredBlock15Stack3) at: (recoveredBlock15Stack4).
            recoveredBlock15PC := 129.
        ].
        recoveredBlock15Step = 129 ifTrue: [
            recoveredBlock15Stack4 := 'Make'.
            recoveredBlock15PC := 131.
        ].
        recoveredBlock15Step = 131 ifTrue: [
            recoveredBlock15Stack5 := recoveredBlock15Local1.
            recoveredBlock15PC := 132.
        ].
        recoveredBlock15Step = 132 ifTrue: [
            recoveredBlock15Stack1 := (recoveredBlock15Stack1) warningNo: (recoveredBlock15Stack2) args: (recoveredBlock15Stack3) category: (recoveredBlock15Stack4) source: (recoveredBlock15Stack5).
            recoveredBlock15PC := 135.
        ].
        recoveredBlock15Step = 135 ifTrue: [
            recoveredBlock15PC := 168.
        ].
        recoveredBlock15Step = 138 ifTrue: [
            recoveredBlock15Stack1 := nil.
            recoveredBlock15PC := 139.
        ].
        recoveredBlock15Step = 139 ifTrue: [
            recoveredBlock15Stack2 := recoveredBlock15Arg1.
            recoveredBlock15PC := 140.
        ].
        recoveredBlock15Step = 140 ifTrue: [
            recoveredBlock15Stack2 := (recoveredBlock15Stack2) first.
            recoveredBlock15PC := 141.
        ].
        recoveredBlock15Step = 141 ifTrue: [
            recoveredBlock15Stack3 := 'I'.
            recoveredBlock15PC := 143.
        ].
        recoveredBlock15Step = 143 ifTrue: [
            recoveredBlock15Stack2 := (recoveredBlock15Stack2) = (recoveredBlock15Stack3).
            recoveredBlock15PC := 144.
        ].
        recoveredBlock15Step = 144 ifTrue: [
            (recoveredBlock15Stack2) ifTrue: [recoveredBlock15PC := 148] ifFalse: [recoveredBlock15PC := 168].
        ].
        recoveredBlock15Step = 148 ifTrue: [
            recoveredBlock15PC := 149.
        ].
        recoveredBlock15Step = 149 ifTrue: [
            recoveredBlock15Stack1 := self.
            recoveredBlock15PC := 150.
        ].
        recoveredBlock15Step = 150 ifTrue: [
            recoveredBlock15Stack1 := (recoveredBlock15Stack1) errorHandler.
            recoveredBlock15PC := 152.
        ].
        recoveredBlock15Step = 152 ifTrue: [
            recoveredBlock15Stack2 := recoveredBlock15Arg1.
            recoveredBlock15PC := 153.
        ].
        recoveredBlock15Step = 153 ifTrue: [
            recoveredBlock15Stack3 := 2.
            recoveredBlock15PC := 155.
        ].
        recoveredBlock15Step = 155 ifTrue: [
            recoveredBlock15Stack2 := (recoveredBlock15Stack2) at: (recoveredBlock15Stack3).
            recoveredBlock15PC := 157.
        ].
        recoveredBlock15Step = 157 ifTrue: [
            recoveredBlock15Stack3 := recoveredBlock15Arg1.
            recoveredBlock15PC := 158.
        ].
        recoveredBlock15Step = 158 ifTrue: [
            recoveredBlock15Stack4 := 3.
            recoveredBlock15PC := 160.
        ].
        recoveredBlock15Step = 160 ifTrue: [
            recoveredBlock15Stack3 := (recoveredBlock15Stack3) at: (recoveredBlock15Stack4).
            recoveredBlock15PC := 162.
        ].
        recoveredBlock15Step = 162 ifTrue: [
            recoveredBlock15Stack4 := 'Make'.
            recoveredBlock15PC := 164.
        ].
        recoveredBlock15Step = 164 ifTrue: [
            recoveredBlock15Stack5 := recoveredBlock15Local1.
            recoveredBlock15PC := 165.
        ].
        recoveredBlock15Step = 165 ifTrue: [
            recoveredBlock15Stack1 := (recoveredBlock15Stack1) infoNo: (recoveredBlock15Stack2) args: (recoveredBlock15Stack3) category: (recoveredBlock15Stack4) source: (recoveredBlock15Stack5).
            recoveredBlock15PC := 168.
        ].
        recoveredBlock15Step = 168 ifTrue: [
            recoveredBlock15Result := recoveredBlock15Stack1.
            recoveredBlock15Done := true.
        ].
    ].
    recoveredBlock15Result
].
    (recoveredValue4) do: (recoveredValue5).
    ^self
! !

"ASDBase.ic method 0x2067d414; bytecode file offset 0xf79e30"
!ASDXMLMemoryClassDeclaration methodsFor: 'recovered'!
readOptionsDeclarationsFromXMLFile: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredLocal6 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            checksum := recoveredStack1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := (recoveredStack0) fileExists: (recoveredStack1).
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 14].
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
            recoveredStack1 := recoveredArg1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack2 := 'MemClassConfig'.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := (recoveredStack0) getDOMFromXMLFile: (recoveredStack1) rootTagName: (recoveredStack2).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredLocal5 := recoveredStack1.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := [
    ^self
].
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            (recoveredStack0) ifNil: (recoveredStack1).
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack0 := LookupTable.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack0 := (recoveredStack0) new.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack0 := LookupTable.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack0 := (recoveredStack0) new.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            redundantMap := recoveredStack0.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack0 := LookupTable.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack0 := (recoveredStack0) new.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            varStructMap := recoveredStack0.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack0 := LookupTable.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack0 := (recoveredStack0) new.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            readCostsMap := recoveredStack0.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            (recoveredStack0) resetMemorySegmentTable.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack0 := recoveredLocal5.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack1 := 'MemClass'.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack0 := (recoveredStack0) getElementsByTagName: (recoveredStack1).
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredLocal4 := recoveredStack0.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack1 := [:recoveredBlock78Arg1 | 
    | recoveredBlock78Local1 recoveredBlock78Local2 recoveredBlock78Local3 recoveredBlock78Local4 recoveredBlock78Local5 recoveredBlock78Stack0 recoveredBlock78Stack1 recoveredBlock78Stack2 recoveredBlock78Stack3 recoveredBlock78Stack4 recoveredBlock78PC recoveredBlock78Step recoveredBlock78Done recoveredBlock78Result |
    recoveredBlock78Stack0 := self.
    recoveredBlock78PC := 84.
    recoveredBlock78Done := false.
    [recoveredBlock78Done not] whileTrue: [
        recoveredBlock78Step := recoveredBlock78PC.
        recoveredBlock78Step = 84 ifTrue: [
            recoveredBlock78Stack1 := recoveredBlock78Arg1.
            recoveredBlock78PC := 87.
        ].
        recoveredBlock78Step = 87 ifTrue: [
            recoveredBlock78Stack2 := 'name'.
            recoveredBlock78PC := 89.
        ].
        recoveredBlock78Step = 89 ifTrue: [
            recoveredBlock78Stack1 := (recoveredBlock78Stack1) getAttributeOrText: (recoveredBlock78Stack2).
            recoveredBlock78PC := 91.
        ].
        recoveredBlock78Step = 91 ifTrue: [
            recoveredBlock78Local5 := recoveredBlock78Stack1.
            recoveredBlock78PC := 94.
        ].
        recoveredBlock78Step = 94 ifTrue: [
            recoveredBlock78Stack1 := recoveredBlock78Arg1.
            recoveredBlock78PC := 97.
        ].
        recoveredBlock78Step = 97 ifTrue: [
            recoveredBlock78Stack2 := 'guiSelectable'.
            recoveredBlock78PC := 99.
        ].
        recoveredBlock78Step = 99 ifTrue: [
            recoveredBlock78Stack1 := (recoveredBlock78Stack1) findTagNamed: (recoveredBlock78Stack2).
            recoveredBlock78PC := 101.
        ].
        recoveredBlock78Step = 101 ifTrue: [
            (recoveredBlock78Stack1 ~~ nil) ifTrue: [recoveredBlock78PC := 108] ifFalse: [recoveredBlock78PC := 104].
        ].
        recoveredBlock78Step = 104 ifTrue: [
            recoveredBlock78Stack1 := true.
            recoveredBlock78PC := 105.
        ].
        recoveredBlock78Step = 105 ifTrue: [
            recoveredBlock78PC := 117.
        ].
        recoveredBlock78Step = 108 ifTrue: [
            recoveredBlock78Stack1 := recoveredBlock78Arg1.
            recoveredBlock78PC := 111.
        ].
        recoveredBlock78Step = 111 ifTrue: [
            recoveredBlock78Stack2 := 'guiSelectable'.
            recoveredBlock78PC := 113.
        ].
        recoveredBlock78Step = 113 ifTrue: [
            recoveredBlock78Stack1 := (recoveredBlock78Stack1) getAttributeOrText: (recoveredBlock78Stack2).
            recoveredBlock78PC := 115.
        ].
        recoveredBlock78Step = 115 ifTrue: [
            recoveredBlock78Stack1 := (recoveredBlock78Stack1) asBoolean.
            recoveredBlock78PC := 117.
        ].
        recoveredBlock78Step = 117 ifTrue: [
            recoveredBlock78Local4 := recoveredBlock78Stack1.
            recoveredBlock78PC := 120.
        ].
        recoveredBlock78Step = 120 ifTrue: [
            recoveredBlock78Stack1 := recoveredBlock78Arg1.
            recoveredBlock78PC := 123.
        ].
        recoveredBlock78Step = 123 ifTrue: [
            recoveredBlock78Stack2 := 'category'.
            recoveredBlock78PC := 125.
        ].
        recoveredBlock78Step = 125 ifTrue: [
            recoveredBlock78Stack1 := (recoveredBlock78Stack1) getElementsByTagName: (recoveredBlock78Stack2).
            recoveredBlock78PC := 127.
        ].
        recoveredBlock78Step = 127 ifTrue: [
            recoveredBlock78Stack2 := [:recoveredBlock78Block127Arg1 | 
    | recoveredBlock78Block127Value0 recoveredBlock78Block127Value1 recoveredBlock78Block127Value2 recoveredBlock78Block127Value3 recoveredBlock78Block127Value4 recoveredBlock78Block127Value5 recoveredBlock78Block127Value6 |
    recoveredBlock78Block127Value0 := recoveredLocal2.
    recoveredBlock78Block127Value1 := recoveredBlock78Block127Arg1.
    recoveredBlock78Block127Value2 := (recoveredBlock78Block127Value1) getContentText.
    recoveredBlock78Block127Value3 := (recoveredBlock78Block127Value2) asString.
    recoveredBlock78Block127Value4 := [
    | recoveredBlock78Block127Block142Value0 recoveredBlock78Block127Block142Value1 recoveredBlock78Block127Block142Value2 recoveredBlock78Block127Block142Value3 recoveredBlock78Block127Block142Value4 recoveredBlock78Block127Block142Value5 |
    recoveredBlock78Block127Block142Value0 := OrderedCollection.
    recoveredBlock78Block127Block142Value1 := Array.
    recoveredBlock78Block127Block142Value2 := recoveredBlock78Local5.
    recoveredBlock78Block127Block142Value3 := recoveredBlock78Local4.
    recoveredBlock78Block127Block142Value4 := (recoveredBlock78Block127Block142Value1) with: (recoveredBlock78Block127Block142Value2) with: (recoveredBlock78Block127Block142Value3).
    recoveredBlock78Block127Block142Value5 := (recoveredBlock78Block127Block142Value0) with: (recoveredBlock78Block127Block142Value4).
    recoveredBlock78Block127Block142Value5
].
    recoveredBlock78Block127Value5 := [:recoveredBlock78Block127Block163Arg1 | 
    | recoveredBlock78Block127Block163Value0 recoveredBlock78Block127Block163Value1 recoveredBlock78Block127Block163Value2 recoveredBlock78Block127Block163Value3 recoveredBlock78Block127Block163Value4 recoveredBlock78Block127Block163Value5 |
    recoveredBlock78Block127Block163Value0 := recoveredBlock78Block127Block163Arg1.
    recoveredBlock78Block127Block163Value1 := Array.
    recoveredBlock78Block127Block163Value2 := recoveredBlock78Local5.
    recoveredBlock78Block127Block163Value3 := recoveredBlock78Local4.
    recoveredBlock78Block127Block163Value4 := (recoveredBlock78Block127Block163Value1) with: (recoveredBlock78Block127Block163Value2) with: (recoveredBlock78Block127Block163Value3).
    recoveredBlock78Block127Block163Value5 := (recoveredBlock78Block127Block163Value0) add: (recoveredBlock78Block127Block163Value4).
    recoveredBlock78Block127Block163Value5
].
    recoveredBlock78Block127Value6 := (recoveredBlock78Block127Value0) at: (recoveredBlock78Block127Value3) ifAbsentPut: (recoveredBlock78Block127Value4) ifPresent: (recoveredBlock78Block127Value5).
    recoveredBlock78Block127Value6
].
            recoveredBlock78PC := 188.
        ].
        recoveredBlock78Step = 188 ifTrue: [
            (recoveredBlock78Stack1) do: (recoveredBlock78Stack2).
            recoveredBlock78PC := 190.
        ].
        recoveredBlock78Step = 190 ifTrue: [
            recoveredBlock78Stack1 := recoveredBlock78Arg1.
            recoveredBlock78PC := 193.
        ].
        recoveredBlock78Step = 193 ifTrue: [
            recoveredBlock78Stack2 := 'redundantMemClass'.
            recoveredBlock78PC := 195.
        ].
        recoveredBlock78Step = 195 ifTrue: [
            recoveredBlock78Stack1 := (recoveredBlock78Stack1) findTagNamed: (recoveredBlock78Stack2).
            recoveredBlock78PC := 197.
        ].
        recoveredBlock78Step = 197 ifTrue: [
            (recoveredBlock78Stack1 == nil) ifTrue: [recoveredBlock78PC := 220] ifFalse: [recoveredBlock78PC := 200].
        ].
        recoveredBlock78Step = 200 ifTrue: [
            recoveredBlock78Stack1 := recoveredBlock78Arg1.
            recoveredBlock78PC := 203.
        ].
        recoveredBlock78Step = 203 ifTrue: [
            recoveredBlock78Stack2 := 'redundantMemClass'.
            recoveredBlock78PC := 205.
        ].
        recoveredBlock78Step = 205 ifTrue: [
            recoveredBlock78Stack1 := (recoveredBlock78Stack1) getAttributeOrText: (recoveredBlock78Stack2).
            recoveredBlock78PC := 207.
        ].
        recoveredBlock78Step = 207 ifTrue: [
            recoveredBlock78Local3 := recoveredBlock78Stack1.
            recoveredBlock78PC := 210.
        ].
        recoveredBlock78Step = 210 ifTrue: [
            recoveredBlock78Stack1 := redundantMap.
            recoveredBlock78PC := 212.
        ].
        recoveredBlock78Step = 212 ifTrue: [
            recoveredBlock78Stack2 := recoveredBlock78Local5.
            recoveredBlock78PC := 215.
        ].
        recoveredBlock78Step = 215 ifTrue: [
            recoveredBlock78Stack3 := recoveredBlock78Local3.
            recoveredBlock78PC := 218.
        ].
        recoveredBlock78Step = 218 ifTrue: [
            (recoveredBlock78Stack1) at: (recoveredBlock78Stack2) put: (recoveredBlock78Stack3).
            recoveredBlock78PC := 220.
        ].
        recoveredBlock78Step = 220 ifTrue: [
            recoveredBlock78Stack1 := recoveredBlock78Arg1.
            recoveredBlock78PC := 223.
        ].
        recoveredBlock78Step = 223 ifTrue: [
            recoveredBlock78Stack2 := 'varStructMemClass'.
            recoveredBlock78PC := 225.
        ].
        recoveredBlock78Step = 225 ifTrue: [
            recoveredBlock78Stack1 := (recoveredBlock78Stack1) findTagNamed: (recoveredBlock78Stack2).
            recoveredBlock78PC := 227.
        ].
        recoveredBlock78Step = 227 ifTrue: [
            (recoveredBlock78Stack1 == nil) ifTrue: [recoveredBlock78PC := 254] ifFalse: [recoveredBlock78PC := 230].
        ].
        recoveredBlock78Step = 230 ifTrue: [
            recoveredBlock78Stack1 := recoveredBlock78Arg1.
            recoveredBlock78PC := 233.
        ].
        recoveredBlock78Step = 233 ifTrue: [
            recoveredBlock78Stack2 := 'varStructMemClass'.
            recoveredBlock78PC := 235.
        ].
        recoveredBlock78Step = 235 ifTrue: [
            recoveredBlock78Stack1 := (recoveredBlock78Stack1) getAttributeOrText: (recoveredBlock78Stack2).
            recoveredBlock78PC := 237.
        ].
        recoveredBlock78Step = 237 ifTrue: [
            recoveredBlock78Local2 := recoveredBlock78Stack1.
            recoveredBlock78PC := 240.
        ].
        recoveredBlock78Step = 240 ifTrue: [
            recoveredBlock78Stack1 := varStructMap.
            recoveredBlock78PC := 242.
        ].
        recoveredBlock78Step = 242 ifTrue: [
            recoveredBlock78Stack2 := recoveredBlock78Local5.
            recoveredBlock78PC := 245.
        ].
        recoveredBlock78Step = 245 ifTrue: [
            recoveredBlock78Stack3 := recoveredBlock78Local2.
            recoveredBlock78PC := 248.
        ].
        recoveredBlock78Step = 248 ifTrue: [
            (recoveredBlock78Stack1) at: (recoveredBlock78Stack2) put: (recoveredBlock78Stack3).
            recoveredBlock78PC := 250.
        ].
        recoveredBlock78Step = 250 ifTrue: [
            recoveredBlock78Stack1 := nil.
            recoveredBlock78PC := 251.
        ].
        recoveredBlock78Step = 251 ifTrue: [
            recoveredBlock78Local2 := recoveredBlock78Stack1.
            recoveredBlock78PC := 254.
        ].
        recoveredBlock78Step = 254 ifTrue: [
            recoveredBlock78Stack1 := nil.
            recoveredBlock78PC := 255.
        ].
        recoveredBlock78Step = 255 ifTrue: [
            recoveredBlock78Stack2 := recoveredBlock78Arg1.
            recoveredBlock78PC := 258.
        ].
        recoveredBlock78Step = 258 ifTrue: [
            recoveredBlock78Stack3 := 'readCosts'.
            recoveredBlock78PC := 260.
        ].
        recoveredBlock78Step = 260 ifTrue: [
            recoveredBlock78Stack2 := (recoveredBlock78Stack2) findTagNamed: (recoveredBlock78Stack3).
            recoveredBlock78PC := 262.
        ].
        recoveredBlock78Step = 262 ifTrue: [
            (recoveredBlock78Stack2 == nil) ifTrue: [recoveredBlock78PC := 339] ifFalse: [recoveredBlock78PC := 266].
        ].
        recoveredBlock78Step = 266 ifTrue: [
            recoveredBlock78PC := 267.
        ].
        recoveredBlock78Step = 267 ifTrue: [
            recoveredBlock78Stack1 := recoveredBlock78Arg1.
            recoveredBlock78PC := 270.
        ].
        recoveredBlock78Step = 270 ifTrue: [
            recoveredBlock78Stack2 := 'readCosts'.
            recoveredBlock78PC := 272.
        ].
        recoveredBlock78Step = 272 ifTrue: [
            recoveredBlock78Stack1 := (recoveredBlock78Stack1) getAttributeOrText: (recoveredBlock78Stack2).
            recoveredBlock78PC := 274.
        ].
        recoveredBlock78Step = 274 ifTrue: [
            recoveredBlock78Local2 := recoveredBlock78Stack1.
            recoveredBlock78PC := 277.
        ].
        recoveredBlock78Step = 277 ifTrue: [
            recoveredBlock78Stack1 := recoveredBlock78Local2.
            recoveredBlock78PC := 280.
        ].
        recoveredBlock78Step = 280 ifTrue: [
            recoveredBlock78Stack1 := (recoveredBlock78Stack1) asInteger.
            recoveredBlock78PC := 282.
        ].
        recoveredBlock78Step = 282 ifTrue: [
            recoveredBlock78Local1 := recoveredBlock78Stack1.
            recoveredBlock78PC := 285.
        ].
        recoveredBlock78Step = 285 ifTrue: [
            recoveredBlock78Stack1 := recoveredBlock78Local1.
            recoveredBlock78PC := 288.
        ].
        recoveredBlock78Step = 288 ifTrue: [
            recoveredBlock78Stack1 := (recoveredBlock78Stack1) asString.
            recoveredBlock78PC := 290.
        ].
        recoveredBlock78Step = 290 ifTrue: [
            recoveredBlock78Stack2 := recoveredBlock78Local2.
            recoveredBlock78PC := 293.
        ].
        recoveredBlock78Step = 293 ifTrue: [
            recoveredBlock78Stack1 := (recoveredBlock78Stack1) = (recoveredBlock78Stack2).
            recoveredBlock78PC := 294.
        ].
        recoveredBlock78Step = 294 ifTrue: [
            (recoveredBlock78Stack1) ifTrue: [recoveredBlock78PC := 298] ifFalse: [recoveredBlock78PC := 322].
        ].
        recoveredBlock78Step = 298 ifTrue: [
            recoveredBlock78Stack1 := recoveredBlock78Local1.
            recoveredBlock78PC := 301.
        ].
        recoveredBlock78Step = 301 ifTrue: [
            recoveredBlock78Stack2 := 0.
            recoveredBlock78PC := 303.
        ].
        recoveredBlock78Step = 303 ifTrue: [
            recoveredBlock78Stack1 := (recoveredBlock78Stack1) >= (recoveredBlock78Stack2).
            recoveredBlock78PC := 304.
        ].
        recoveredBlock78Step = 304 ifTrue: [
            (recoveredBlock78Stack1) ifTrue: [recoveredBlock78PC := 308] ifFalse: [recoveredBlock78PC := 322].
        ].
        recoveredBlock78Step = 308 ifTrue: [
            recoveredBlock78Stack1 := readCostsMap.
            recoveredBlock78PC := 310.
        ].
        recoveredBlock78Step = 310 ifTrue: [
            recoveredBlock78Stack2 := recoveredBlock78Local5.
            recoveredBlock78PC := 313.
        ].
        recoveredBlock78Step = 313 ifTrue: [
            recoveredBlock78Stack3 := recoveredBlock78Local1.
            recoveredBlock78PC := 316.
        ].
        recoveredBlock78Step = 316 ifTrue: [
            recoveredBlock78Stack1 := (recoveredBlock78Stack1) at: (recoveredBlock78Stack2) put: (recoveredBlock78Stack3).
            recoveredBlock78PC := 318.
        ].
        recoveredBlock78Step = 318 ifTrue: [
            recoveredBlock78PC := 331.
        ].
        recoveredBlock78Step = 322 ifTrue: [
            recoveredBlock78Stack1 := self.
            recoveredBlock78PC := 323.
        ].
        recoveredBlock78Step = 323 ifTrue: [
            recoveredBlock78Stack2 := 67.
            recoveredBlock78PC := 326.
        ].
        recoveredBlock78Step = 326 ifTrue: [
            recoveredBlock78Stack3 := recoveredBlock78Local5.
            recoveredBlock78PC := 329.
        ].
        recoveredBlock78Step = 329 ifTrue: [
            recoveredBlock78Stack1 := (recoveredBlock78Stack1) addError: (recoveredBlock78Stack2) argument: (recoveredBlock78Stack3).
            recoveredBlock78PC := 331.
        ].
        recoveredBlock78Step = 331 ifTrue: [
            recoveredBlock78Stack2 := nil.
            recoveredBlock78PC := 332.
        ].
        recoveredBlock78Step = 332 ifTrue: [
            recoveredBlock78Stack3 := recoveredBlock78Stack2.
            recoveredBlock78PC := 333.
        ].
        recoveredBlock78Step = 333 ifTrue: [
            recoveredBlock78Local2 := recoveredBlock78Stack3.
            recoveredBlock78PC := 336.
        ].
        recoveredBlock78Step = 336 ifTrue: [
            recoveredBlock78Local1 := recoveredBlock78Stack2.
            recoveredBlock78PC := 339.
        ].
        recoveredBlock78Step = 339 ifTrue: [
            recoveredBlock78Result := recoveredBlock78Stack1.
            recoveredBlock78Done := true.
        ].
    ].
    recoveredBlock78Result
].
            recoveredPC := 340.
        ].
        recoveredStep = 340 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 342.
        ].
        recoveredStep = 342 ifTrue: [
            recoveredStack0 := recoveredLocal5.
            recoveredPC := 345.
        ].
        recoveredStep = 345 ifTrue: [
            recoveredStack1 := 'MemorySegments'.
            recoveredPC := 347.
        ].
        recoveredStep = 347 ifTrue: [
            recoveredStack0 := (recoveredStack0) getElementsByTagName: (recoveredStack1).
            recoveredPC := 349.
        ].
        recoveredStep = 349 ifTrue: [
            recoveredStack1 := [:recoveredBlock349Arg1 | 
    | recoveredBlock349Value0 recoveredBlock349Value1 recoveredBlock349Value2 recoveredBlock349Value3 recoveredBlock349Value4 |
    recoveredBlock349Value0 := recoveredBlock349Arg1.
    recoveredBlock349Value1 := (recoveredBlock349Value0) getElementsByTagName: ('MemorySegment').
    recoveredLocal3 := recoveredBlock349Value1.
    recoveredBlock349Value2 := recoveredLocal3.
    recoveredBlock349Value3 := [:recoveredBlock349Block367Arg1 | 
    | recoveredBlock349Block367Local1 recoveredBlock349Block367Local2 recoveredBlock349Block367Local3 recoveredBlock349Block367Local4 recoveredBlock349Block367Local5 recoveredBlock349Block367Local6 recoveredBlock349Block367Stack0 recoveredBlock349Block367Stack1 recoveredBlock349Block367Stack2 recoveredBlock349Block367Stack3 recoveredBlock349Block367Stack4 recoveredBlock349Block367Stack5 recoveredBlock349Block367Stack6 recoveredBlock349Block367Stack7 recoveredBlock349Block367Stack8 recoveredBlock349Block367PC recoveredBlock349Block367Step recoveredBlock349Block367Done recoveredBlock349Block367Result |
    recoveredBlock349Block367Stack0 := self.
    recoveredBlock349Block367PC := 374.
    recoveredBlock349Block367Done := false.
    [recoveredBlock349Block367Done not] whileTrue: [
        recoveredBlock349Block367Step := recoveredBlock349Block367PC.
        recoveredBlock349Block367Step = 374 ifTrue: [
            recoveredBlock349Block367Stack1 := nil.
            recoveredBlock349Block367PC := 375.
        ].
        recoveredBlock349Block367Step = 375 ifTrue: [
            recoveredBlock349Block367Stack2 := recoveredBlock349Block367Arg1.
            recoveredBlock349Block367PC := 378.
        ].
        recoveredBlock349Block367Step = 378 ifTrue: [
            recoveredBlock349Block367Stack3 := 'id'.
            recoveredBlock349Block367PC := 380.
        ].
        recoveredBlock349Block367Step = 380 ifTrue: [
            recoveredBlock349Block367Stack2 := (recoveredBlock349Block367Stack2) getAttributeOrText: (recoveredBlock349Block367Stack3).
            recoveredBlock349Block367PC := 382.
        ].
        recoveredBlock349Block367Step = 382 ifTrue: [
            recoveredBlock349Block367Stack3 := recoveredBlock349Block367Stack2.
            recoveredBlock349Block367PC := 383.
        ].
        recoveredBlock349Block367Step = 383 ifTrue: [
            recoveredBlock349Block367Local6 := recoveredBlock349Block367Stack3.
            recoveredBlock349Block367PC := 386.
        ].
        recoveredBlock349Block367Step = 386 ifTrue: [
            recoveredBlock349Block367Stack2 := (recoveredBlock349Block367Stack2) notEmpty.
            recoveredBlock349Block367PC := 388.
        ].
        recoveredBlock349Block367Step = 388 ifTrue: [
            (recoveredBlock349Block367Stack2) ifTrue: [recoveredBlock349Block367PC := 392] ifFalse: [recoveredBlock349Block367PC := 769].
        ].
        recoveredBlock349Block367Step = 392 ifTrue: [
            recoveredBlock349Block367PC := 393.
        ].
        recoveredBlock349Block367Step = 393 ifTrue: [
            recoveredBlock349Block367Stack1 := recoveredBlock349Block367Arg1.
            recoveredBlock349Block367PC := 396.
        ].
        recoveredBlock349Block367Step = 396 ifTrue: [
            recoveredBlock349Block367Stack2 := 'label'.
            recoveredBlock349Block367PC := 398.
        ].
        recoveredBlock349Block367Step = 398 ifTrue: [
            recoveredBlock349Block367Stack1 := (recoveredBlock349Block367Stack1) getAttributeOrText: (recoveredBlock349Block367Stack2).
            recoveredBlock349Block367PC := 400.
        ].
        recoveredBlock349Block367Step = 400 ifTrue: [
            recoveredBlock349Block367Stack2 := recoveredBlock349Block367Stack1.
            recoveredBlock349Block367PC := 401.
        ].
        recoveredBlock349Block367Step = 401 ifTrue: [
            recoveredBlock349Block367Local5 := recoveredBlock349Block367Stack2.
            recoveredBlock349Block367PC := 404.
        ].
        recoveredBlock349Block367Step = 404 ifTrue: [
            recoveredBlock349Block367Stack1 := (recoveredBlock349Block367Stack1) isEmpty.
            recoveredBlock349Block367PC := 406.
        ].
        recoveredBlock349Block367Step = 406 ifTrue: [
            (recoveredBlock349Block367Stack1) ifTrue: [recoveredBlock349Block367PC := 410] ifFalse: [recoveredBlock349Block367PC := 416].
        ].
        recoveredBlock349Block367Step = 410 ifTrue: [
            recoveredBlock349Block367Stack1 := recoveredBlock349Block367Local6.
            recoveredBlock349Block367PC := 413.
        ].
        recoveredBlock349Block367Step = 413 ifTrue: [
            recoveredBlock349Block367Local5 := recoveredBlock349Block367Stack1.
            recoveredBlock349Block367PC := 416.
        ].
        recoveredBlock349Block367Step = 416 ifTrue: [
            recoveredBlock349Block367Stack1 := ASDMemorySegment.
            recoveredBlock349Block367PC := 418.
        ].
        recoveredBlock349Block367Step = 418 ifTrue: [
            recoveredBlock349Block367Stack2 := recoveredBlock349Block367Local6.
            recoveredBlock349Block367PC := 421.
        ].
        recoveredBlock349Block367Step = 421 ifTrue: [
            recoveredBlock349Block367Stack3 := recoveredBlock349Block367Local5.
            recoveredBlock349Block367PC := 424.
        ].
        recoveredBlock349Block367Step = 424 ifTrue: [
            recoveredBlock349Block367Stack1 := (recoveredBlock349Block367Stack1) createId: (recoveredBlock349Block367Stack2) label: (recoveredBlock349Block367Stack3).
            recoveredBlock349Block367PC := 426.
        ].
        recoveredBlock349Block367Step = 426 ifTrue: [
            recoveredBlock349Block367Local3 := recoveredBlock349Block367Stack1.
            recoveredBlock349Block367PC := 429.
        ].
        recoveredBlock349Block367Step = 429 ifTrue: [
            recoveredBlock349Block367Stack1 := recoveredBlock349Block367Arg1.
            recoveredBlock349Block367PC := 432.
        ].
        recoveredBlock349Block367Step = 432 ifTrue: [
            recoveredBlock349Block367Stack2 := 'priority'.
            recoveredBlock349Block367PC := 434.
        ].
        recoveredBlock349Block367Step = 434 ifTrue: [
            recoveredBlock349Block367Stack1 := (recoveredBlock349Block367Stack1) getAttributeOrText: (recoveredBlock349Block367Stack2).
            recoveredBlock349Block367PC := 436.
        ].
        recoveredBlock349Block367Step = 436 ifTrue: [
            recoveredBlock349Block367Stack2 := recoveredBlock349Block367Stack1.
            recoveredBlock349Block367PC := 437.
        ].
        recoveredBlock349Block367Step = 437 ifTrue: [
            recoveredBlock349Block367Local4 := recoveredBlock349Block367Stack2.
            recoveredBlock349Block367PC := 440.
        ].
        recoveredBlock349Block367Step = 440 ifTrue: [
            recoveredBlock349Block367Stack1 := (recoveredBlock349Block367Stack1) isEmpty.
            recoveredBlock349Block367PC := 442.
        ].
        recoveredBlock349Block367Step = 442 ifTrue: [
            (recoveredBlock349Block367Stack1) ifTrue: [recoveredBlock349Block367PC := 446] ifFalse: [recoveredBlock349Block367PC := 458].
        ].
        recoveredBlock349Block367Step = 446 ifTrue: [
            recoveredBlock349Block367Stack1 := self.
            recoveredBlock349Block367PC := 447.
        ].
        recoveredBlock349Block367Step = 447 ifTrue: [
            recoveredBlock349Block367Stack1 := (recoveredBlock349Block367Stack1) memorySegmentTable.
            recoveredBlock349Block367PC := 449.
        ].
        recoveredBlock349Block367Step = 449 ifTrue: [
            recoveredBlock349Block367Stack1 := (recoveredBlock349Block367Stack1) size.
            recoveredBlock349Block367PC := 451.
        ].
        recoveredBlock349Block367Step = 451 ifTrue: [
            recoveredBlock349Block367Stack1 := (recoveredBlock349Block367Stack1) + (1).
            recoveredBlock349Block367PC := 452.
        ].
        recoveredBlock349Block367Step = 452 ifTrue: [
            recoveredBlock349Block367Local4 := recoveredBlock349Block367Stack1.
            recoveredBlock349Block367PC := 455.
        ].
        recoveredBlock349Block367Step = 455 ifTrue: [
            recoveredBlock349Block367PC := 466.
        ].
        recoveredBlock349Block367Step = 458 ifTrue: [
            recoveredBlock349Block367Stack1 := recoveredBlock349Block367Local4.
            recoveredBlock349Block367PC := 461.
        ].
        recoveredBlock349Block367Step = 461 ifTrue: [
            recoveredBlock349Block367Stack1 := (recoveredBlock349Block367Stack1) asInteger.
            recoveredBlock349Block367PC := 463.
        ].
        recoveredBlock349Block367Step = 463 ifTrue: [
            recoveredBlock349Block367Local4 := recoveredBlock349Block367Stack1.
            recoveredBlock349Block367PC := 466.
        ].
        recoveredBlock349Block367Step = 466 ifTrue: [
            recoveredBlock349Block367Stack1 := recoveredBlock349Block367Local3.
            recoveredBlock349Block367PC := 469.
        ].
        recoveredBlock349Block367Step = 469 ifTrue: [
            recoveredBlock349Block367Stack2 := recoveredBlock349Block367Local4.
            recoveredBlock349Block367PC := 472.
        ].
        recoveredBlock349Block367Step = 472 ifTrue: [
            (recoveredBlock349Block367Stack1) priority: (recoveredBlock349Block367Stack2).
            recoveredBlock349Block367PC := 474.
        ].
        recoveredBlock349Block367Step = 474 ifTrue: [
            recoveredBlock349Block367Stack1 := recoveredBlock349Block367Local6.
            recoveredBlock349Block367PC := 477.
        ].
        recoveredBlock349Block367Step = 477 ifTrue: [
            recoveredBlock349Block367Stack2 := self.
            recoveredBlock349Block367PC := 478.
        ].
        recoveredBlock349Block367Step = 478 ifTrue: [
            recoveredBlock349Block367Stack2 := (recoveredBlock349Block367Stack2) class.
            recoveredBlock349Block367PC := 480.
        ].
        recoveredBlock349Block367Step = 480 ifTrue: [
            recoveredBlock349Block367Stack2 := (recoveredBlock349Block367Stack2) memorySegmentIDAutomatic.
            recoveredBlock349Block367PC := 482.
        ].
        recoveredBlock349Block367Step = 482 ifTrue: [
            recoveredBlock349Block367Stack1 := (recoveredBlock349Block367Stack1) = (recoveredBlock349Block367Stack2).
            recoveredBlock349Block367PC := 483.
        ].
        recoveredBlock349Block367Step = 483 ifTrue: [
            (recoveredBlock349Block367Stack1) ifTrue: [recoveredBlock349Block367PC := 486] ifFalse: [recoveredBlock349Block367PC := 494].
        ].
        recoveredBlock349Block367Step = 486 ifTrue: [
            recoveredBlock349Block367Stack1 := self.
            recoveredBlock349Block367PC := 487.
        ].
        recoveredBlock349Block367Step = 487 ifTrue: [
            recoveredBlock349Block367Stack2 := 62.
            recoveredBlock349Block367PC := 489.
        ].
        recoveredBlock349Block367Step = 489 ifTrue: [
            recoveredBlock349Block367Stack3 := recoveredBlock349Block367Local6.
            recoveredBlock349Block367PC := 492.
        ].
        recoveredBlock349Block367Step = 492 ifTrue: [
            (recoveredBlock349Block367Stack1) addError: (recoveredBlock349Block367Stack2) argument: (recoveredBlock349Block367Stack3).
            recoveredBlock349Block367PC := 494.
        ].
        recoveredBlock349Block367Step = 494 ifTrue: [
            recoveredBlock349Block367Stack1 := recoveredBlock349Block367Local6.
            recoveredBlock349Block367PC := 497.
        ].
        recoveredBlock349Block367Step = 497 ifTrue: [
            recoveredBlock349Block367Stack1 := (recoveredBlock349Block367Stack1) isValidANSICIdentifier.
            recoveredBlock349Block367PC := 499.
        ].
        recoveredBlock349Block367Step = 499 ifTrue: [
            (recoveredBlock349Block367Stack1) ifTrue: [recoveredBlock349Block367PC := 510] ifFalse: [recoveredBlock349Block367PC := 502].
        ].
        recoveredBlock349Block367Step = 502 ifTrue: [
            recoveredBlock349Block367Stack1 := self.
            recoveredBlock349Block367PC := 503.
        ].
        recoveredBlock349Block367Step = 503 ifTrue: [
            recoveredBlock349Block367Stack2 := 63.
            recoveredBlock349Block367PC := 505.
        ].
        recoveredBlock349Block367Step = 505 ifTrue: [
            recoveredBlock349Block367Stack3 := recoveredBlock349Block367Local6.
            recoveredBlock349Block367PC := 508.
        ].
        recoveredBlock349Block367Step = 508 ifTrue: [
            (recoveredBlock349Block367Stack1) addError: (recoveredBlock349Block367Stack2) argument: (recoveredBlock349Block367Stack3).
            recoveredBlock349Block367PC := 510.
        ].
        recoveredBlock349Block367Step = 510 ifTrue: [
            recoveredBlock349Block367Stack1 := self.
            recoveredBlock349Block367PC := 511.
        ].
        recoveredBlock349Block367Step = 511 ifTrue: [
            recoveredBlock349Block367Stack1 := (recoveredBlock349Block367Stack1) memorySegmentTable.
            recoveredBlock349Block367PC := 513.
        ].
        recoveredBlock349Block367Step = 513 ifTrue: [
            recoveredBlock349Block367Stack2 := recoveredBlock349Block367Local6.
            recoveredBlock349Block367PC := 516.
        ].
        recoveredBlock349Block367Step = 516 ifTrue: [
            recoveredBlock349Block367Stack1 := (recoveredBlock349Block367Stack1) includesKey: (recoveredBlock349Block367Stack2).
            recoveredBlock349Block367PC := 518.
        ].
        recoveredBlock349Block367Step = 518 ifTrue: [
            (recoveredBlock349Block367Stack1) ifTrue: [recoveredBlock349Block367PC := 522] ifFalse: [recoveredBlock349Block367PC := 534].
        ].
        recoveredBlock349Block367Step = 522 ifTrue: [
            recoveredBlock349Block367Stack1 := self.
            recoveredBlock349Block367PC := 523.
        ].
        recoveredBlock349Block367Step = 523 ifTrue: [
            recoveredBlock349Block367Stack2 := 61.
            recoveredBlock349Block367PC := 525.
        ].
        recoveredBlock349Block367Step = 525 ifTrue: [
            recoveredBlock349Block367Stack3 := recoveredBlock349Block367Local6.
            recoveredBlock349Block367PC := 528.
        ].
        recoveredBlock349Block367Step = 528 ifTrue: [
            recoveredBlock349Block367Stack1 := (recoveredBlock349Block367Stack1) addError: (recoveredBlock349Block367Stack2) argument: (recoveredBlock349Block367Stack3).
            recoveredBlock349Block367PC := 530.
        ].
        recoveredBlock349Block367Step = 530 ifTrue: [
            recoveredBlock349Block367PC := 769.
        ].
        recoveredBlock349Block367Step = 534 ifTrue: [
            recoveredBlock349Block367Stack1 := OrderedCollection.
            recoveredBlock349Block367PC := 536.
        ].
        recoveredBlock349Block367Step = 536 ifTrue: [
            recoveredBlock349Block367Stack1 := (recoveredBlock349Block367Stack1) new.
            recoveredBlock349Block367PC := 538.
        ].
        recoveredBlock349Block367Step = 538 ifTrue: [
            recoveredBlock349Block367Local2 := recoveredBlock349Block367Stack1.
            recoveredBlock349Block367PC := 541.
        ].
        recoveredBlock349Block367Step = 541 ifTrue: [
            recoveredBlock349Block367Stack1 := OrderedCollection.
            recoveredBlock349Block367PC := 543.
        ].
        recoveredBlock349Block367Step = 543 ifTrue: [
            recoveredBlock349Block367Stack1 := (recoveredBlock349Block367Stack1) new.
            recoveredBlock349Block367PC := 545.
        ].
        recoveredBlock349Block367Step = 545 ifTrue: [
            recoveredBlock349Block367Local1 := recoveredBlock349Block367Stack1.
            recoveredBlock349Block367PC := 548.
        ].
        recoveredBlock349Block367Step = 548 ifTrue: [
            recoveredBlock349Block367Stack1 := self.
            recoveredBlock349Block367PC := 549.
        ].
        recoveredBlock349Block367Step = 549 ifTrue: [
            recoveredBlock349Block367Stack1 := (recoveredBlock349Block367Stack1) memorySegmentTable.
            recoveredBlock349Block367PC := 551.
        ].
        recoveredBlock349Block367Step = 551 ifTrue: [
            recoveredBlock349Block367Stack2 := [:recoveredBlock349Block367Block551Arg1 | 
    | recoveredBlock349Block367Block551Stack0 recoveredBlock349Block367Block551Stack1 recoveredBlock349Block367Block551Stack2 recoveredBlock349Block367Block551Stack3 recoveredBlock349Block367Block551Stack4 recoveredBlock349Block367Block551PC recoveredBlock349Block367Block551Step recoveredBlock349Block367Block551Done recoveredBlock349Block367Block551Result |
    recoveredBlock349Block367Block551Stack0 := nil.
    recoveredBlock349Block367Block551PC := 558.
    recoveredBlock349Block367Block551Done := false.
    [recoveredBlock349Block367Block551Done not] whileTrue: [
        recoveredBlock349Block367Block551Step := recoveredBlock349Block367Block551PC.
        recoveredBlock349Block367Block551Step = 558 ifTrue: [
            recoveredBlock349Block367Block551Stack1 := recoveredBlock349Block367Block551Arg1.
            recoveredBlock349Block367Block551PC := 559.
        ].
        recoveredBlock349Block367Block551Step = 559 ifTrue: [
            recoveredBlock349Block367Block551Stack1 := (recoveredBlock349Block367Block551Stack1) priority.
            recoveredBlock349Block367Block551PC := 561.
        ].
        recoveredBlock349Block367Block551Step = 561 ifTrue: [
            recoveredBlock349Block367Block551Stack2 := recoveredBlock349Block367Local4.
            recoveredBlock349Block367Block551PC := 564.
        ].
        recoveredBlock349Block367Block551Step = 564 ifTrue: [
            recoveredBlock349Block367Block551Stack1 := (recoveredBlock349Block367Block551Stack1) = (recoveredBlock349Block367Block551Stack2).
            recoveredBlock349Block367Block551PC := 565.
        ].
        recoveredBlock349Block367Block551Step = 565 ifTrue: [
            (recoveredBlock349Block367Block551Stack1) ifTrue: [recoveredBlock349Block367Block551PC := 568] ifFalse: [recoveredBlock349Block367Block551PC := 574].
        ].
        recoveredBlock349Block367Block551Step = 568 ifTrue: [
            recoveredBlock349Block367Block551Stack1 := recoveredBlock349Block367Local2.
            recoveredBlock349Block367Block551PC := 571.
        ].
        recoveredBlock349Block367Block551Step = 571 ifTrue: [
            recoveredBlock349Block367Block551Stack2 := recoveredBlock349Block367Block551Arg1.
            recoveredBlock349Block367Block551PC := 572.
        ].
        recoveredBlock349Block367Block551Step = 572 ifTrue: [
            (recoveredBlock349Block367Block551Stack1) add: (recoveredBlock349Block367Block551Stack2).
            recoveredBlock349Block367Block551PC := 574.
        ].
        recoveredBlock349Block367Block551Step = 574 ifTrue: [
            recoveredBlock349Block367Block551Stack1 := nil.
            recoveredBlock349Block367Block551PC := 575.
        ].
        recoveredBlock349Block367Block551Step = 575 ifTrue: [
            recoveredBlock349Block367Block551Stack2 := recoveredBlock349Block367Block551Arg1.
            recoveredBlock349Block367Block551PC := 576.
        ].
        recoveredBlock349Block367Block551Step = 576 ifTrue: [
            recoveredBlock349Block367Block551Stack2 := (recoveredBlock349Block367Block551Stack2) label.
            recoveredBlock349Block367Block551PC := 578.
        ].
        recoveredBlock349Block367Block551Step = 578 ifTrue: [
            recoveredBlock349Block367Block551Stack3 := recoveredBlock349Block367Local5.
            recoveredBlock349Block367Block551PC := 581.
        ].
        recoveredBlock349Block367Block551Step = 581 ifTrue: [
            recoveredBlock349Block367Block551Stack2 := (recoveredBlock349Block367Block551Stack2) = (recoveredBlock349Block367Block551Stack3).
            recoveredBlock349Block367Block551PC := 582.
        ].
        recoveredBlock349Block367Block551Step = 582 ifTrue: [
            (recoveredBlock349Block367Block551Stack2) ifTrue: [recoveredBlock349Block367Block551PC := 586] ifFalse: [recoveredBlock349Block367Block551PC := 593].
        ].
        recoveredBlock349Block367Block551Step = 586 ifTrue: [
            recoveredBlock349Block367Block551PC := 587.
        ].
        recoveredBlock349Block367Block551Step = 587 ifTrue: [
            recoveredBlock349Block367Block551Stack1 := recoveredBlock349Block367Local1.
            recoveredBlock349Block367Block551PC := 590.
        ].
        recoveredBlock349Block367Block551Step = 590 ifTrue: [
            recoveredBlock349Block367Block551Stack2 := recoveredBlock349Block367Block551Arg1.
            recoveredBlock349Block367Block551PC := 591.
        ].
        recoveredBlock349Block367Block551Step = 591 ifTrue: [
            recoveredBlock349Block367Block551Stack1 := (recoveredBlock349Block367Block551Stack1) add: (recoveredBlock349Block367Block551Stack2).
            recoveredBlock349Block367Block551PC := 593.
        ].
        recoveredBlock349Block367Block551Step = 593 ifTrue: [
            recoveredBlock349Block367Block551Result := recoveredBlock349Block367Block551Stack1.
            recoveredBlock349Block367Block551Done := true.
        ].
    ].
    recoveredBlock349Block367Block551Result
].
            recoveredBlock349Block367PC := 594.
        ].
        recoveredBlock349Block367Step = 594 ifTrue: [
            (recoveredBlock349Block367Stack1) do: (recoveredBlock349Block367Stack2).
            recoveredBlock349Block367PC := 596.
        ].
        recoveredBlock349Block367Step = 596 ifTrue: [
            recoveredBlock349Block367Stack1 := recoveredBlock349Block367Local2.
            recoveredBlock349Block367PC := 599.
        ].
        recoveredBlock349Block367Step = 599 ifTrue: [
            recoveredBlock349Block367Stack1 := (recoveredBlock349Block367Stack1) notEmpty.
            recoveredBlock349Block367PC := 601.
        ].
        recoveredBlock349Block367Step = 601 ifTrue: [
            (recoveredBlock349Block367Stack1) ifTrue: [recoveredBlock349Block367PC := 604] ifFalse: [recoveredBlock349Block367PC := 672].
        ].
        recoveredBlock349Block367Step = 604 ifTrue: [
            recoveredBlock349Block367Stack1 := recoveredBlock349Block367Local2.
            recoveredBlock349Block367PC := 607.
        ].
        recoveredBlock349Block367Step = 607 ifTrue: [
            recoveredBlock349Block367Stack2 := recoveredBlock349Block367Local3.
            recoveredBlock349Block367PC := 610.
        ].
        recoveredBlock349Block367Step = 610 ifTrue: [
            (recoveredBlock349Block367Stack1) add: (recoveredBlock349Block367Stack2).
            recoveredBlock349Block367PC := 612.
        ].
        recoveredBlock349Block367Step = 612 ifTrue: [
            recoveredBlock349Block367Stack1 := self.
            recoveredBlock349Block367PC := 613.
        ].
        recoveredBlock349Block367Step = 613 ifTrue: [
            recoveredBlock349Block367Stack2 := 64.
            recoveredBlock349Block367PC := 616.
        ].
        recoveredBlock349Block367Step = 616 ifTrue: [
            recoveredBlock349Block367Stack3 := Array.
            recoveredBlock349Block367PC := 618.
        ].
        recoveredBlock349Block367Step = 618 ifTrue: [
            recoveredBlock349Block367Stack4 := recoveredBlock349Block367Local4.
            recoveredBlock349Block367PC := 621.
        ].
        recoveredBlock349Block367Step = 621 ifTrue: [
            recoveredBlock349Block367Stack4 := (recoveredBlock349Block367Stack4) asString.
            recoveredBlock349Block367PC := 623.
        ].
        recoveredBlock349Block367Step = 623 ifTrue: [
            recoveredBlock349Block367Stack3 := (recoveredBlock349Block367Stack3) with: (recoveredBlock349Block367Stack4).
            recoveredBlock349Block367PC := 625.
        ].
        recoveredBlock349Block367Step = 625 ifTrue: [
            recoveredBlock349Block367Stack4 := nil.
            recoveredBlock349Block367PC := 626.
        ].
        recoveredBlock349Block367Step = 626 ifTrue: [
            recoveredBlock349Block367Stack5 := recoveredBlock349Block367Local2.
            recoveredBlock349Block367PC := 629.
        ].
        recoveredBlock349Block367Step = 629 ifTrue: [
            recoveredBlock349Block367Stack6 := [:block28128c44Arg1 | 
    nil
].
            recoveredBlock349Block367PC := 631.
        ].
        recoveredBlock349Block367Step = 631 ifTrue: [
            recoveredBlock349Block367PC := 636.
        ].
        recoveredBlock349Block367Step = 636 ifTrue: [
            recoveredBlock349Block367Stack5 := (recoveredBlock349Block367Stack5) collect: (recoveredBlock349Block367Stack6).
            recoveredBlock349Block367PC := 638.
        ].
        recoveredBlock349Block367Step = 638 ifTrue: [
            recoveredBlock349Block367Stack6 := recoveredBlock349Block367Local2.
            recoveredBlock349Block367PC := 641.
        ].
        recoveredBlock349Block367Step = 641 ifTrue: [
            recoveredBlock349Block367Stack7 := [:block28128c68Arg1 | 
    | block28128c68Value0 block28128c68Value1 block28128c68Value2 block28128c68Value3 block28128c68Value4 block28128c68Value5 block28128c68Value6 block28128c68Value7 |
    block28128c68Value0 := block28128c68Arg1.
    block28128c68Value1 := (block28128c68Value0) id.
    block28128c68Value2 := ('Priority of memory segment ') , (block28128c68Value1).
    block28128c68Value3 := (block28128c68Value2) , (': ').
    block28128c68Value4 := block28128c68Arg1.
    block28128c68Value5 := (block28128c68Value4) priority.
    block28128c68Value6 := (block28128c68Value5) asString.
    block28128c68Value7 := (block28128c68Value3) , (block28128c68Value6).
    block28128c68Value7
].
            recoveredBlock349Block367PC := 643.
        ].
        recoveredBlock349Block367Step = 643 ifTrue: [
            recoveredBlock349Block367PC := 665.
        ].
        recoveredBlock349Block367Step = 665 ifTrue: [
            recoveredBlock349Block367Stack6 := (recoveredBlock349Block367Stack6) collect: (recoveredBlock349Block367Stack7).
            recoveredBlock349Block367PC := 667.
        ].
        recoveredBlock349Block367Step = 667 ifTrue: [
            recoveredBlock349Block367Stack4 := (recoveredBlock349Block367Stack4) createMultiSource: (recoveredBlock349Block367Stack5) labels: (recoveredBlock349Block367Stack6).
            recoveredBlock349Block367PC := 669.
        ].
        recoveredBlock349Block367Step = 669 ifTrue: [
            (recoveredBlock349Block367Stack1) addError: (recoveredBlock349Block367Stack2) arguments: (recoveredBlock349Block367Stack3) source: (recoveredBlock349Block367Stack4).
            recoveredBlock349Block367PC := 672.
        ].
        recoveredBlock349Block367Step = 672 ifTrue: [
            recoveredBlock349Block367Stack1 := recoveredBlock349Block367Local1.
            recoveredBlock349Block367PC := 675.
        ].
        recoveredBlock349Block367Step = 675 ifTrue: [
            recoveredBlock349Block367Stack1 := (recoveredBlock349Block367Stack1) notEmpty.
            recoveredBlock349Block367PC := 677.
        ].
        recoveredBlock349Block367Step = 677 ifTrue: [
            (recoveredBlock349Block367Stack1) ifTrue: [recoveredBlock349Block367PC := 680] ifFalse: [recoveredBlock349Block367PC := 750].
        ].
        recoveredBlock349Block367Step = 680 ifTrue: [
            recoveredBlock349Block367Stack1 := recoveredBlock349Block367Local1.
            recoveredBlock349Block367PC := 683.
        ].
        recoveredBlock349Block367Step = 683 ifTrue: [
            recoveredBlock349Block367Stack2 := recoveredBlock349Block367Local3.
            recoveredBlock349Block367PC := 686.
        ].
        recoveredBlock349Block367Step = 686 ifTrue: [
            (recoveredBlock349Block367Stack1) add: (recoveredBlock349Block367Stack2).
            recoveredBlock349Block367PC := 688.
        ].
        recoveredBlock349Block367Step = 688 ifTrue: [
            recoveredBlock349Block367Stack1 := self.
            recoveredBlock349Block367PC := 689.
        ].
        recoveredBlock349Block367Step = 689 ifTrue: [
            recoveredBlock349Block367Stack2 := 66.
            recoveredBlock349Block367PC := 692.
        ].
        recoveredBlock349Block367Step = 692 ifTrue: [
            recoveredBlock349Block367Stack3 := Array.
            recoveredBlock349Block367PC := 694.
        ].
        recoveredBlock349Block367Step = 694 ifTrue: [
            recoveredBlock349Block367Stack4 := recoveredBlock349Block367Local5.
            recoveredBlock349Block367PC := 697.
        ].
        recoveredBlock349Block367Step = 697 ifTrue: [
            recoveredBlock349Block367Stack3 := (recoveredBlock349Block367Stack3) with: (recoveredBlock349Block367Stack4).
            recoveredBlock349Block367PC := 699.
        ].
        recoveredBlock349Block367Step = 699 ifTrue: [
            recoveredBlock349Block367Stack4 := nil.
            recoveredBlock349Block367PC := 700.
        ].
        recoveredBlock349Block367Step = 700 ifTrue: [
            recoveredBlock349Block367Stack5 := recoveredBlock349Block367Local1.
            recoveredBlock349Block367PC := 703.
        ].
        recoveredBlock349Block367Step = 703 ifTrue: [
            recoveredBlock349Block367Stack6 := [:block28128c8cArg1 | 
    nil
].
            recoveredBlock349Block367PC := 706.
        ].
        recoveredBlock349Block367Step = 706 ifTrue: [
            recoveredBlock349Block367PC := 712.
        ].
        recoveredBlock349Block367Step = 712 ifTrue: [
            recoveredBlock349Block367Stack5 := (recoveredBlock349Block367Stack5) collect: (recoveredBlock349Block367Stack6).
            recoveredBlock349Block367PC := 714.
        ].
        recoveredBlock349Block367Step = 714 ifTrue: [
            recoveredBlock349Block367Stack6 := recoveredBlock349Block367Local1.
            recoveredBlock349Block367PC := 717.
        ].
        recoveredBlock349Block367Step = 717 ifTrue: [
            recoveredBlock349Block367Stack7 := [:block28128cb0Arg1 | 
    | block28128cb0Value0 block28128cb0Value1 block28128cb0Value2 block28128cb0Value3 block28128cb0Value4 block28128cb0Value5 block28128cb0Value6 |
    block28128cb0Value0 := block28128cb0Arg1.
    block28128cb0Value1 := (block28128cb0Value0) id.
    block28128cb0Value2 := ('Label of memory segment ') , (block28128cb0Value1).
    block28128cb0Value3 := (block28128cb0Value2) , (': ').
    block28128cb0Value4 := block28128cb0Arg1.
    block28128cb0Value5 := (block28128cb0Value4) label.
    block28128cb0Value6 := (block28128cb0Value3) , (block28128cb0Value5).
    block28128cb0Value6
].
            recoveredBlock349Block367PC := 720.
        ].
        recoveredBlock349Block367Step = 720 ifTrue: [
            recoveredBlock349Block367PC := 743.
        ].
        recoveredBlock349Block367Step = 743 ifTrue: [
            recoveredBlock349Block367Stack6 := (recoveredBlock349Block367Stack6) collect: (recoveredBlock349Block367Stack7).
            recoveredBlock349Block367PC := 745.
        ].
        recoveredBlock349Block367Step = 745 ifTrue: [
            recoveredBlock349Block367Stack4 := (recoveredBlock349Block367Stack4) createMultiSource: (recoveredBlock349Block367Stack5) labels: (recoveredBlock349Block367Stack6).
            recoveredBlock349Block367PC := 747.
        ].
        recoveredBlock349Block367Step = 747 ifTrue: [
            (recoveredBlock349Block367Stack1) addError: (recoveredBlock349Block367Stack2) arguments: (recoveredBlock349Block367Stack3) source: (recoveredBlock349Block367Stack4).
            recoveredBlock349Block367PC := 750.
        ].
        recoveredBlock349Block367Step = 750 ifTrue: [
            recoveredBlock349Block367Stack1 := self.
            recoveredBlock349Block367PC := 751.
        ].
        recoveredBlock349Block367Step = 751 ifTrue: [
            recoveredBlock349Block367Stack1 := (recoveredBlock349Block367Stack1) memorySegmentTable.
            recoveredBlock349Block367PC := 753.
        ].
        recoveredBlock349Block367Step = 753 ifTrue: [
            recoveredBlock349Block367Stack2 := recoveredBlock349Block367Local6.
            recoveredBlock349Block367PC := 756.
        ].
        recoveredBlock349Block367Step = 756 ifTrue: [
            recoveredBlock349Block367Stack3 := recoveredBlock349Block367Local3.
            recoveredBlock349Block367PC := 759.
        ].
        recoveredBlock349Block367Step = 759 ifTrue: [
            recoveredBlock349Block367Stack1 := (recoveredBlock349Block367Stack1) at: (recoveredBlock349Block367Stack2) put: (recoveredBlock349Block367Stack3).
            recoveredBlock349Block367PC := 761.
        ].
        recoveredBlock349Block367Step = 761 ifTrue: [
            recoveredBlock349Block367Stack2 := nil.
            recoveredBlock349Block367PC := 762.
        ].
        recoveredBlock349Block367Step = 762 ifTrue: [
            recoveredBlock349Block367Stack3 := recoveredBlock349Block367Stack2.
            recoveredBlock349Block367PC := 763.
        ].
        recoveredBlock349Block367Step = 763 ifTrue: [
            recoveredBlock349Block367Local2 := recoveredBlock349Block367Stack3.
            recoveredBlock349Block367PC := 766.
        ].
        recoveredBlock349Block367Step = 766 ifTrue: [
            recoveredBlock349Block367Local1 := recoveredBlock349Block367Stack2.
            recoveredBlock349Block367PC := 769.
        ].
        recoveredBlock349Block367Step = 769 ifTrue: [
            recoveredBlock349Block367Result := recoveredBlock349Block367Stack1.
            recoveredBlock349Block367Done := true.
        ].
    ].
    recoveredBlock349Block367Result
].
    recoveredBlock349Value4 := (recoveredBlock349Value2) do: (recoveredBlock349Value3).
    recoveredBlock349Value4
].
            recoveredPC := 773.
        ].
        recoveredStep = 773 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 775.
        ].
        recoveredStep = 775 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 776.
        ].
        recoveredStep = 776 ifTrue: [
            recoveredStack0 := (recoveredStack0) memorySegmentTable.
            recoveredPC := 778.
        ].
        recoveredStep = 778 ifTrue: [
            recoveredStack0 := (recoveredStack0) isEmpty.
            recoveredPC := 780.
        ].
        recoveredStep = 780 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 784] ifFalse: [recoveredPC := 789].
        ].
        recoveredStep = 784 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 785.
        ].
        recoveredStep = 785 ifTrue: [
            (recoveredStack0) addDefaultMemorySegments.
            recoveredPC := 789.
        ].
        recoveredStep = 789 ifTrue: [
            recoveredStack0 := 'Rl'.
            recoveredPC := 792.
        ].
        recoveredStep = 792 ifTrue: [
            recoveredStack1 := 'Call_72358'.
            recoveredPC := 796.
        ].
        recoveredStep = 796 ifTrue: [
            recoveredStack0 := (recoveredStack0) == (recoveredStack1).
            recoveredPC := 797.
        ].
        recoveredStep = 797 ifTrue: [
            recoveredPC := 798.
        ].
        recoveredStep = 798 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 799.
        ].
        recoveredStep = 799 ifTrue: [
            recoveredStack0 := (recoveredStack0) initializeGUIOptions.
            recoveredPC := 803.
        ].
        recoveredStep = 803 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 806.
        ].
        recoveredStep = 806 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 807.
        ].
        recoveredStep = 807 ifTrue: [
            recoveredStack0 := (recoveredStack0) options.
            recoveredPC := 811.
        ].
        recoveredStep = 811 ifTrue: [
            recoveredStack1 := [:recoveredBlock811Arg1 | 
    | recoveredBlock811Local1 recoveredBlock811Local2 recoveredBlock811Local3 recoveredBlock811Local4 recoveredBlock811Local5 recoveredBlock811Value0 recoveredBlock811Value1 recoveredBlock811Value2 recoveredBlock811Value3 recoveredBlock811Value4 recoveredBlock811Value5 recoveredBlock811Value6 recoveredBlock811Value7 |
    recoveredBlock811Value0 := recoveredLocal2.
    recoveredBlock811Value1 := recoveredBlock811Arg1.
    recoveredBlock811Value2 := (recoveredBlock811Value1) attributeName.
    recoveredBlock811Value3 := [].
    recoveredBlock811Value4 := (recoveredBlock811Value0) at: (recoveredBlock811Value2) ifAbsent: (recoveredBlock811Value3).
    recoveredBlock811Value5 := recoveredBlock811Value4.
    recoveredBlock811Local5 := recoveredBlock811Value5.
    recoveredBlock811Value6 := [
    | recoveredBlock811Block841Stack0 recoveredBlock811Block841Stack1 recoveredBlock811Block841Stack2 recoveredBlock811Block841Stack3 recoveredBlock811Block841Stack4 recoveredBlock811Block841PC recoveredBlock811Block841Step recoveredBlock811Block841Done recoveredBlock811Block841Result |
    recoveredBlock811Block841Stack0 := self.
    recoveredBlock811Block841PC := 848.
    recoveredBlock811Block841Done := false.
    [recoveredBlock811Block841Done not] whileTrue: [
        recoveredBlock811Block841Step := recoveredBlock811Block841PC.
        recoveredBlock811Block841Step = 848 ifTrue: [
            recoveredBlock811Block841Stack1 := recoveredBlock811Local5.
            recoveredBlock811Block841PC := 851.
        ].
        recoveredBlock811Block841Step = 851 ifTrue: [
            recoveredBlock811Block841Stack2 := [:block28128cd4Arg1 | 
    | block28128cd4Value0 block28128cd4Value1 |
    block28128cd4Value0 := block28128cd4Arg1.
    block28128cd4Value1 := (block28128cd4Value0) at: (1).
    block28128cd4Value1
].
            recoveredBlock811Block841PC := 854.
        ].
        recoveredBlock811Block841Step = 854 ifTrue: [
            recoveredBlock811Block841PC := 866.
        ].
        recoveredBlock811Block841Step = 866 ifTrue: [
            recoveredBlock811Block841Stack1 := (recoveredBlock811Block841Stack1) collect: (recoveredBlock811Block841Stack2).
            recoveredBlock811Block841PC := 868.
        ].
        recoveredBlock811Block841Step = 868 ifTrue: [
            recoveredBlock811Block841Stack1 := (recoveredBlock811Block841Stack1) asSet.
            recoveredBlock811Block841PC := 873.
        ].
        recoveredBlock811Block841Step = 873 ifTrue: [
            recoveredBlock811Local1 := recoveredBlock811Block841Stack1.
            recoveredBlock811Block841PC := 876.
        ].
        recoveredBlock811Block841Step = 876 ifTrue: [
            recoveredBlock811Block841Stack1 := recoveredLocal5.
            recoveredBlock811Block841PC := 879.
        ].
        recoveredBlock811Block841Step = 879 ifTrue: [
            recoveredBlock811Block841Stack1 := (recoveredBlock811Block841Stack1) rootTag.
            recoveredBlock811Block841PC := 883.
        ].
        recoveredBlock811Block841Step = 883 ifTrue: [
            recoveredBlock811Block841Stack2 := recoveredBlock811Arg1.
            recoveredBlock811Block841PC := 886.
        ].
        recoveredBlock811Block841Step = 886 ifTrue: [
            recoveredBlock811Block841Stack2 := (recoveredBlock811Block841Stack2) attributeName.
            recoveredBlock811Block841PC := 891.
        ].
        recoveredBlock811Block841Step = 891 ifTrue: [
            recoveredBlock811Block841Stack1 := (recoveredBlock811Block841Stack1) getElementByTagName: (recoveredBlock811Block841Stack2).
            recoveredBlock811Block841PC := 895.
        ].
        recoveredBlock811Block841Step = 895 ifTrue: [
            recoveredBlock811Local4 := recoveredBlock811Block841Stack1.
            recoveredBlock811Block841PC := 898.
        ].
        recoveredBlock811Block841Step = 898 ifTrue: [
            recoveredBlock811Block841Stack1 := recoveredBlock811Arg1.
            recoveredBlock811Block841PC := 901.
        ].
        recoveredBlock811Block841Step = 901 ifTrue: [
            recoveredBlock811Block841Stack1 := (recoveredBlock811Block841Stack1) optionClass.
            recoveredBlock811Block841PC := 905.
        ].
        recoveredBlock811Block841Step = 905 ifTrue: [
            recoveredBlock811Block841Stack2 := recoveredBlock811Block841Stack1.
            recoveredBlock811Block841PC := 906.
        ].
        recoveredBlock811Block841Step = 906 ifTrue: [
            recoveredBlock811Block841Stack3 := recoveredBlock811Local1.
            recoveredBlock811Block841PC := 909.
        ].
        recoveredBlock811Block841Step = 909 ifTrue: [
            recoveredBlock811Block841Stack3 := (recoveredBlock811Block841Stack3) asArray.
            recoveredBlock811Block841PC := 913.
        ].
        recoveredBlock811Block841Step = 913 ifTrue: [
            (recoveredBlock811Block841Stack2) stringCollection: (recoveredBlock811Block841Stack3).
            recoveredBlock811Block841Stack2 := recoveredBlock811Block841Stack1.
            recoveredBlock811Block841PC := 917.
        ].
        recoveredBlock811Block841Step = 917 ifTrue: [
            recoveredBlock811Block841Stack3 := recoveredBlock811Local1.
            recoveredBlock811Block841PC := 920.
        ].
        recoveredBlock811Block841Step = 920 ifTrue: [
            recoveredBlock811Block841Stack3 := (recoveredBlock811Block841Stack3) asArray.
            recoveredBlock811Block841PC := 925.
        ].
        recoveredBlock811Block841Step = 925 ifTrue: [
            (recoveredBlock811Block841Stack2) valueCollection: (recoveredBlock811Block841Stack3).
            recoveredBlock811Block841PC := 929.
        ].
        recoveredBlock811Block841Step = 929 ifTrue: [
            recoveredBlock811Block841Stack2 := recoveredBlock811Local4.
            recoveredBlock811Block841PC := 932.
        ].
        recoveredBlock811Block841Step = 932 ifTrue: [
            (recoveredBlock811Block841Stack2 ~~ nil) ifTrue: [recoveredBlock811Block841PC := 944] ifFalse: [recoveredBlock811Block841PC := 936].
        ].
        recoveredBlock811Block841Step = 936 ifTrue: [
            recoveredBlock811Block841Stack2 := 'Default'.
            recoveredBlock811Block841PC := 940.
        ].
        recoveredBlock811Block841Step = 940 ifTrue: [
            recoveredBlock811Block841PC := 955.
        ].
        recoveredBlock811Block841Step = 944 ifTrue: [
            recoveredBlock811Block841Stack2 := recoveredBlock811Local4.
            recoveredBlock811Block841PC := 947.
        ].
        recoveredBlock811Block841Step = 947 ifTrue: [
            recoveredBlock811Block841Stack3 := 'defaultMemClass'.
            recoveredBlock811Block841PC := 950.
        ].
        recoveredBlock811Block841Step = 950 ifTrue: [
            recoveredBlock811Block841Stack2 := (recoveredBlock811Block841Stack2) getAttribute: (recoveredBlock811Block841Stack3).
            recoveredBlock811Block841PC := 955.
        ].
        recoveredBlock811Block841Step = 955 ifTrue: [
            (recoveredBlock811Block841Stack1) default: (recoveredBlock811Block841Stack2).
            recoveredBlock811Block841PC := 959.
        ].
        recoveredBlock811Block841Step = 959 ifTrue: [
            recoveredBlock811Block841Stack0 := (recoveredBlock811Block841Stack0) memorySegmentTable.
            recoveredBlock811Block841PC := 961.
        ].
        recoveredBlock811Block841Step = 961 ifTrue: [
            recoveredBlock811Block841Stack1 := [:recoveredBlock811Block841Block961Arg1 | 
    | recoveredBlock811Block841Block961Value0 recoveredBlock811Block841Block961Value1 recoveredBlock811Block841Block961Value2 recoveredBlock811Block841Block961Value3 recoveredBlock811Block841Block961Value4 recoveredBlock811Block841Block961Value5 recoveredBlock811Block841Block961Value6 |
    recoveredBlock811Block841Block961Value0 := recoveredBlock811Block841Block961Arg1.
    recoveredBlock811Block841Block961Value1 := recoveredBlock811Arg1.
    recoveredBlock811Block841Block961Value2 := (recoveredBlock811Block841Block961Value1) attributeName.
    recoveredBlock811Block841Block961Value3 := recoveredBlock811Arg1.
    recoveredBlock811Block841Block961Value4 := (recoveredBlock811Block841Block961Value3) optionClass.
    recoveredBlock811Block841Block961Value5 := (recoveredBlock811Block841Block961Value4) default.
    recoveredBlock811Block841Block961Value6 := (recoveredBlock811Block841Block961Value0) defaultForCategory: (recoveredBlock811Block841Block961Value2) put: (recoveredBlock811Block841Block961Value5).
    recoveredBlock811Block841Block961Value6
].
            recoveredBlock811Block841PC := 994.
        ].
        recoveredBlock811Block841Step = 994 ifTrue: [
            (recoveredBlock811Block841Stack0) do: (recoveredBlock811Block841Stack1).
            recoveredBlock811Block841PC := 996.
        ].
        recoveredBlock811Block841Step = 996 ifTrue: [
            recoveredBlock811Block841Stack0 := recoveredBlock811Local4.
            recoveredBlock811Block841PC := 999.
        ].
        recoveredBlock811Block841Step = 999 ifTrue: [
            (recoveredBlock811Block841Stack0 == nil) ifTrue: [recoveredBlock811Block841PC := 1096] ifFalse: [recoveredBlock811Block841PC := 1002].
        ].
        recoveredBlock811Block841Step = 1002 ifTrue: [
            recoveredBlock811Block841Stack0 := recoveredBlock811Local4.
            recoveredBlock811Block841PC := 1005.
        ].
        recoveredBlock811Block841Step = 1005 ifTrue: [
            recoveredBlock811Block841Stack1 := 'MemorySegment'.
            recoveredBlock811Block841PC := 1007.
        ].
        recoveredBlock811Block841Step = 1007 ifTrue: [
            recoveredBlock811Block841Stack0 := (recoveredBlock811Block841Stack0) getElementsByTagName: (recoveredBlock811Block841Stack1).
            recoveredBlock811Block841PC := 1009.
        ].
        recoveredBlock811Block841Step = 1009 ifTrue: [
            recoveredBlock811Block841Stack1 := [:recoveredBlock811Block841Block1009Arg1 | 
    | recoveredBlock811Block841Block1009Local1 recoveredBlock811Block841Block1009Local2 recoveredBlock811Block841Block1009Stack0 recoveredBlock811Block841Block1009Stack1 recoveredBlock811Block841Block1009Stack2 recoveredBlock811Block841Block1009Stack3 recoveredBlock811Block841Block1009Stack4 recoveredBlock811Block841Block1009PC recoveredBlock811Block841Block1009Step recoveredBlock811Block841Block1009Done recoveredBlock811Block841Block1009Result |
    recoveredBlock811Block841Block1009Stack0 := self.
    recoveredBlock811Block841Block1009PC := 1016.
    recoveredBlock811Block841Block1009Done := false.
    [recoveredBlock811Block841Block1009Done not] whileTrue: [
        recoveredBlock811Block841Block1009Step := recoveredBlock811Block841Block1009PC.
        recoveredBlock811Block841Block1009Step = 1016 ifTrue: [
            recoveredBlock811Block841Block1009Stack1 := nil.
            recoveredBlock811Block841Block1009PC := 1017.
        ].
        recoveredBlock811Block841Block1009Step = 1017 ifTrue: [
            recoveredBlock811Block841Block1009Stack2 := recoveredBlock811Block841Block1009Arg1.
            recoveredBlock811Block841Block1009PC := 1018.
        ].
        recoveredBlock811Block841Block1009Step = 1018 ifTrue: [
            recoveredBlock811Block841Block1009Stack3 := 'id'.
            recoveredBlock811Block841Block1009PC := 1020.
        ].
        recoveredBlock811Block841Block1009Step = 1020 ifTrue: [
            recoveredBlock811Block841Block1009Stack2 := (recoveredBlock811Block841Block1009Stack2) getAttribute: (recoveredBlock811Block841Block1009Stack3).
            recoveredBlock811Block841Block1009PC := 1025.
        ].
        recoveredBlock811Block841Block1009Step = 1025 ifTrue: [
            recoveredBlock811Block841Block1009Stack3 := recoveredBlock811Block841Block1009Stack2.
            recoveredBlock811Block841Block1009PC := 1026.
        ].
        recoveredBlock811Block841Block1009Step = 1026 ifTrue: [
            recoveredBlock811Block841Block1009Local2 := recoveredBlock811Block841Block1009Stack3.
            recoveredBlock811Block841Block1009PC := 1027.
        ].
        recoveredBlock811Block841Block1009Step = 1027 ifTrue: [
            recoveredBlock811Block841Block1009Stack2 := (recoveredBlock811Block841Block1009Stack2) notEmpty.
            recoveredBlock811Block841Block1009PC := 1029.
        ].
        recoveredBlock811Block841Block1009Step = 1029 ifTrue: [
            (recoveredBlock811Block841Block1009Stack2) ifTrue: [recoveredBlock811Block841Block1009PC := 1032] ifFalse: [recoveredBlock811Block841Block1009PC := 1093].
        ].
        recoveredBlock811Block841Block1009Step = 1032 ifTrue: [
            recoveredBlock811Block841Block1009PC := 1033.
        ].
        recoveredBlock811Block841Block1009Step = 1033 ifTrue: [
            recoveredBlock811Block841Block1009Stack1 := nil.
            recoveredBlock811Block841Block1009PC := 1034.
        ].
        recoveredBlock811Block841Block1009Step = 1034 ifTrue: [
            recoveredBlock811Block841Block1009Stack2 := recoveredBlock811Block841Block1009Arg1.
            recoveredBlock811Block841Block1009PC := 1035.
        ].
        recoveredBlock811Block841Block1009Step = 1035 ifTrue: [
            recoveredBlock811Block841Block1009Stack3 := 'defaultMemClass'.
            recoveredBlock811Block841Block1009PC := 1038.
        ].
        recoveredBlock811Block841Block1009Step = 1038 ifTrue: [
            recoveredBlock811Block841Block1009Stack2 := (recoveredBlock811Block841Block1009Stack2) getAttribute: (recoveredBlock811Block841Block1009Stack3).
            recoveredBlock811Block841Block1009PC := 1043.
        ].
        recoveredBlock811Block841Block1009Step = 1043 ifTrue: [
            recoveredBlock811Block841Block1009Stack3 := recoveredBlock811Block841Block1009Stack2.
            recoveredBlock811Block841Block1009PC := 1044.
        ].
        recoveredBlock811Block841Block1009Step = 1044 ifTrue: [
            recoveredBlock811Block841Block1009Local1 := recoveredBlock811Block841Block1009Stack3.
            recoveredBlock811Block841Block1009PC := 1045.
        ].
        recoveredBlock811Block841Block1009Step = 1045 ifTrue: [
            recoveredBlock811Block841Block1009Stack2 := (recoveredBlock811Block841Block1009Stack2) notEmpty.
            recoveredBlock811Block841Block1009PC := 1047.
        ].
        recoveredBlock811Block841Block1009Step = 1047 ifTrue: [
            (recoveredBlock811Block841Block1009Stack2) ifTrue: [recoveredBlock811Block841Block1009PC := 1050] ifFalse: [recoveredBlock811Block841Block1009PC := 1093].
        ].
        recoveredBlock811Block841Block1009Step = 1050 ifTrue: [
            recoveredBlock811Block841Block1009PC := 1051.
        ].
        recoveredBlock811Block841Block1009Step = 1051 ifTrue: [
            recoveredBlock811Block841Block1009Stack1 := self.
            recoveredBlock811Block841Block1009PC := 1052.
        ].
        recoveredBlock811Block841Block1009Step = 1052 ifTrue: [
            recoveredBlock811Block841Block1009Stack1 := (recoveredBlock811Block841Block1009Stack1) memorySegmentTable.
            recoveredBlock811Block841Block1009PC := 1054.
        ].
        recoveredBlock811Block841Block1009Step = 1054 ifTrue: [
            recoveredBlock811Block841Block1009Stack2 := recoveredBlock811Block841Block1009Local2.
            recoveredBlock811Block841Block1009PC := 1055.
        ].
        recoveredBlock811Block841Block1009Step = 1055 ifTrue: [
            recoveredBlock811Block841Block1009Stack1 := (recoveredBlock811Block841Block1009Stack1) includesKey: (recoveredBlock811Block841Block1009Stack2).
            recoveredBlock811Block841Block1009PC := 1057.
        ].
        recoveredBlock811Block841Block1009Step = 1057 ifTrue: [
            (recoveredBlock811Block841Block1009Stack1) ifTrue: [recoveredBlock811Block841Block1009PC := 1060] ifFalse: [recoveredBlock811Block841Block1009PC := 1086].
        ].
        recoveredBlock811Block841Block1009Step = 1060 ifTrue: [
            recoveredBlock811Block841Block1009Stack1 := self.
            recoveredBlock811Block841Block1009PC := 1061.
        ].
        recoveredBlock811Block841Block1009Step = 1061 ifTrue: [
            recoveredBlock811Block841Block1009Stack1 := (recoveredBlock811Block841Block1009Stack1) memorySegmentTable.
            recoveredBlock811Block841Block1009PC := 1063.
        ].
        recoveredBlock811Block841Block1009Step = 1063 ifTrue: [
            recoveredBlock811Block841Block1009Stack2 := recoveredBlock811Block841Block1009Local2.
            recoveredBlock811Block841Block1009PC := 1064.
        ].
        recoveredBlock811Block841Block1009Step = 1064 ifTrue: [
            recoveredBlock811Block841Block1009Stack1 := (recoveredBlock811Block841Block1009Stack1) at: (recoveredBlock811Block841Block1009Stack2).
            recoveredBlock811Block841Block1009PC := 1069.
        ].
        recoveredBlock811Block841Block1009Step = 1069 ifTrue: [
            recoveredBlock811Block841Block1009Stack2 := recoveredBlock811Arg1.
            recoveredBlock811Block841Block1009PC := 1072.
        ].
        recoveredBlock811Block841Block1009Step = 1072 ifTrue: [
            recoveredBlock811Block841Block1009Stack2 := (recoveredBlock811Block841Block1009Stack2) attributeName.
            recoveredBlock811Block841Block1009PC := 1077.
        ].
        recoveredBlock811Block841Block1009Step = 1077 ifTrue: [
            recoveredBlock811Block841Block1009Stack3 := recoveredBlock811Block841Block1009Local1.
            recoveredBlock811Block841Block1009PC := 1078.
        ].
        recoveredBlock811Block841Block1009Step = 1078 ifTrue: [
            recoveredBlock811Block841Block1009Stack1 := (recoveredBlock811Block841Block1009Stack1) defaultForCategory: (recoveredBlock811Block841Block1009Stack2) put: (recoveredBlock811Block841Block1009Stack3).
            recoveredBlock811Block841Block1009PC := 1083.
        ].
        recoveredBlock811Block841Block1009Step = 1083 ifTrue: [
            recoveredBlock811Block841Block1009PC := 1093.
        ].
        recoveredBlock811Block841Block1009Step = 1086 ifTrue: [
            recoveredBlock811Block841Block1009Stack1 := self.
            recoveredBlock811Block841Block1009PC := 1087.
        ].
        recoveredBlock811Block841Block1009Step = 1087 ifTrue: [
            recoveredBlock811Block841Block1009Stack2 := 65.
            recoveredBlock811Block841Block1009PC := 1090.
        ].
        recoveredBlock811Block841Block1009Step = 1090 ifTrue: [
            recoveredBlock811Block841Block1009Stack3 := recoveredBlock811Block841Block1009Local2.
            recoveredBlock811Block841Block1009PC := 1091.
        ].
        recoveredBlock811Block841Block1009Step = 1091 ifTrue: [
            recoveredBlock811Block841Block1009Stack1 := (recoveredBlock811Block841Block1009Stack1) addError: (recoveredBlock811Block841Block1009Stack2) argument: (recoveredBlock811Block841Block1009Stack3).
            recoveredBlock811Block841Block1009PC := 1093.
        ].
        recoveredBlock811Block841Block1009Step = 1093 ifTrue: [
            recoveredBlock811Block841Block1009Result := recoveredBlock811Block841Block1009Stack1.
            recoveredBlock811Block841Block1009Done := true.
        ].
    ].
    recoveredBlock811Block841Block1009Result
].
            recoveredBlock811Block841PC := 1094.
        ].
        recoveredBlock811Block841Step = 1094 ifTrue: [
            (recoveredBlock811Block841Stack0) do: (recoveredBlock811Block841Stack1).
            recoveredBlock811Block841PC := 1096.
        ].
        recoveredBlock811Block841Step = 1096 ifTrue: [
            recoveredBlock811Block841Stack0 := nil.
            recoveredBlock811Block841PC := 1097.
        ].
        recoveredBlock811Block841Step = 1097 ifTrue: [
            recoveredBlock811Block841Stack1 := recoveredLocal1.
            recoveredBlock811Block841PC := 1100.
        ].
        recoveredBlock811Block841Step = 1100 ifTrue: [
            recoveredBlock811Block841Stack2 := [:recoveredBlock811Block841Block1100Arg1 | 
    | recoveredBlock811Block841Block1100Value0 recoveredBlock811Block841Block1100Value1 recoveredBlock811Block841Block1100Value2 recoveredBlock811Block841Block1100Value3 recoveredBlock811Block841Block1100Value4 recoveredBlock811Block841Block1100Value5 recoveredBlock811Block841Block1100Value6 |
    recoveredBlock811Block841Block1100Value0 := recoveredBlock811Block841Block1100Arg1.
    recoveredBlock811Block841Block1100Value1 := (recoveredBlock811Block841Block1100Value0) attributeName.
    recoveredBlock811Block841Block1100Value2 := recoveredBlock811Arg1.
    recoveredBlock811Block841Block1100Value3 := (recoveredBlock811Block841Block1100Value2) attributeName.
    recoveredBlock811Block841Block1100Value4 := (self) guiMarker.
    recoveredBlock811Block841Block1100Value5 := (recoveredBlock811Block841Block1100Value3) , (recoveredBlock811Block841Block1100Value4).
    recoveredBlock811Block841Block1100Value6 := (recoveredBlock811Block841Block1100Value1) = (recoveredBlock811Block841Block1100Value5).
    recoveredBlock811Block841Block1100Value6
].
            recoveredBlock811Block841PC := 1129.
        ].
        recoveredBlock811Block841Step = 1129 ifTrue: [
            recoveredBlock811Block841Stack3 := [].
            recoveredBlock811Block841PC := 1132.
        ].
        recoveredBlock811Block841Step = 1132 ifTrue: [
            recoveredBlock811Block841Stack1 := (recoveredBlock811Block841Stack1) detect: (recoveredBlock811Block841Stack2) ifNone: (recoveredBlock811Block841Stack3).
            recoveredBlock811Block841PC := 1137.
        ].
        recoveredBlock811Block841Step = 1137 ifTrue: [
            recoveredBlock811Block841Stack2 := recoveredBlock811Block841Stack1.
            recoveredBlock811Block841PC := 1138.
        ].
        recoveredBlock811Block841Step = 1138 ifTrue: [
            recoveredBlock811Local3 := recoveredBlock811Block841Stack2.
            recoveredBlock811Block841PC := 1141.
        ].
        recoveredBlock811Block841Step = 1141 ifTrue: [
            (recoveredBlock811Block841Stack1 == nil) ifTrue: [recoveredBlock811Block841PC := 1285] ifFalse: [recoveredBlock811Block841PC := 1144].
        ].
        recoveredBlock811Block841Step = 1144 ifTrue: [
            recoveredBlock811Block841PC := 1145.
        ].
        recoveredBlock811Block841Step = 1145 ifTrue: [
            recoveredBlock811Block841Stack0 := recoveredBlock811Arg1.
            recoveredBlock811Block841PC := 1148.
        ].
        recoveredBlock811Block841Step = 1148 ifTrue: [
            recoveredBlock811Block841Stack0 := (recoveredBlock811Block841Stack0) optionClass.
            recoveredBlock811Block841PC := 1153.
        ].
        recoveredBlock811Block841Step = 1153 ifTrue: [
            recoveredBlock811Block841Stack0 := (recoveredBlock811Block841Stack0) default.
            recoveredBlock811Block841PC := 1157.
        ].
        recoveredBlock811Block841Step = 1157 ifTrue: [
            recoveredBlock811Block841Stack1 := 'Default'.
            recoveredBlock811Block841PC := 1160.
        ].
        recoveredBlock811Block841Step = 1160 ifTrue: [
            recoveredBlock811Block841Stack0 := (recoveredBlock811Block841Stack0) equals: (recoveredBlock811Block841Stack1).
            recoveredBlock811Block841PC := 1165.
        ].
        recoveredBlock811Block841Step = 1165 ifTrue: [
            (recoveredBlock811Block841Stack0) ifTrue: [recoveredBlock811Block841PC := 1168] ifFalse: [recoveredBlock811Block841PC := 1178].
        ].
        recoveredBlock811Block841Step = 1168 ifTrue: [
            recoveredBlock811Block841Stack0 := OrderedCollection.
            recoveredBlock811Block841PC := 1170.
        ].
        recoveredBlock811Block841Step = 1170 ifTrue: [
            recoveredBlock811Block841Stack0 := (recoveredBlock811Block841Stack0) new.
            recoveredBlock811Block841PC := 1172.
        ].
        recoveredBlock811Block841Step = 1172 ifTrue: [
            recoveredBlock811Local2 := recoveredBlock811Block841Stack0.
            recoveredBlock811Block841PC := 1175.
        ].
        recoveredBlock811Block841Step = 1175 ifTrue: [
            recoveredBlock811Block841PC := 1196.
        ].
        recoveredBlock811Block841Step = 1178 ifTrue: [
            recoveredBlock811Block841Stack0 := OrderedCollection.
            recoveredBlock811Block841PC := 1180.
        ].
        recoveredBlock811Block841Step = 1180 ifTrue: [
            recoveredBlock811Block841Stack1 := recoveredBlock811Arg1.
            recoveredBlock811Block841PC := 1183.
        ].
        recoveredBlock811Block841Step = 1183 ifTrue: [
            recoveredBlock811Block841Stack1 := (recoveredBlock811Block841Stack1) optionClass.
            recoveredBlock811Block841PC := 1187.
        ].
        recoveredBlock811Block841Step = 1187 ifTrue: [
            recoveredBlock811Block841Stack1 := (recoveredBlock811Block841Stack1) default.
            recoveredBlock811Block841PC := 1191.
        ].
        recoveredBlock811Block841Step = 1191 ifTrue: [
            recoveredBlock811Block841Stack0 := (recoveredBlock811Block841Stack0) with: (recoveredBlock811Block841Stack1).
            recoveredBlock811Block841PC := 1193.
        ].
        recoveredBlock811Block841Step = 1193 ifTrue: [
            recoveredBlock811Local2 := recoveredBlock811Block841Stack0.
            recoveredBlock811Block841PC := 1196.
        ].
        recoveredBlock811Block841Step = 1196 ifTrue: [
            recoveredBlock811Block841Stack0 := recoveredBlock811Local5.
            recoveredBlock811Block841PC := 1199.
        ].
        recoveredBlock811Block841Step = 1199 ifTrue: [
            recoveredBlock811Block841Stack1 := [:recoveredBlock811Block841Block1199Arg1 | 
    | recoveredBlock811Block841Block1199Stack0 recoveredBlock811Block841Block1199Stack1 recoveredBlock811Block841Block1199Stack2 recoveredBlock811Block841Block1199Stack3 recoveredBlock811Block841Block1199Stack4 recoveredBlock811Block841Block1199Stack5 recoveredBlock811Block841Block1199PC recoveredBlock811Block841Block1199Step recoveredBlock811Block841Block1199Done recoveredBlock811Block841Block1199Result |
    recoveredBlock811Block841Block1199Stack0 := nil.
    recoveredBlock811Block841Block1199PC := 1206.
    recoveredBlock811Block841Block1199Done := false.
    [recoveredBlock811Block841Block1199Done not] whileTrue: [
        recoveredBlock811Block841Block1199Step := recoveredBlock811Block841Block1199PC.
        recoveredBlock811Block841Block1199Step = 1206 ifTrue: [
            recoveredBlock811Block841Block1199Stack1 := nil.
            recoveredBlock811Block841Block1199PC := 1207.
        ].
        recoveredBlock811Block841Block1199Step = 1207 ifTrue: [
            recoveredBlock811Block841Block1199Stack2 := recoveredBlock811Block841Block1199Arg1.
            recoveredBlock811Block841Block1199PC := 1208.
        ].
        recoveredBlock811Block841Block1199Step = 1208 ifTrue: [
            recoveredBlock811Block841Block1199Stack3 := 2.
            recoveredBlock811Block841Block1199PC := 1210.
        ].
        recoveredBlock811Block841Block1199Step = 1210 ifTrue: [
            recoveredBlock811Block841Block1199Stack2 := (recoveredBlock811Block841Block1199Stack2) at: (recoveredBlock811Block841Block1199Stack3).
            recoveredBlock811Block841Block1199PC := 1215.
        ].
        recoveredBlock811Block841Block1199Step = 1215 ifTrue: [
            (recoveredBlock811Block841Block1199Stack2) ifTrue: [recoveredBlock811Block841Block1199PC := 1218] ifFalse: [recoveredBlock811Block841Block1199PC := 1251].
        ].
        recoveredBlock811Block841Block1199Step = 1218 ifTrue: [
            recoveredBlock811Block841Block1199PC := 1219.
        ].
        recoveredBlock811Block841Block1199Step = 1219 ifTrue: [
            recoveredBlock811Block841Block1199Stack1 := nil.
            recoveredBlock811Block841Block1199PC := 1220.
        ].
        recoveredBlock811Block841Block1199Step = 1220 ifTrue: [
            recoveredBlock811Block841Block1199Stack2 := recoveredBlock811Local2.
            recoveredBlock811Block841Block1199PC := 1223.
        ].
        recoveredBlock811Block841Block1199Step = 1223 ifTrue: [
            recoveredBlock811Block841Block1199Stack3 := recoveredBlock811Block841Block1199Arg1.
            recoveredBlock811Block841Block1199PC := 1224.
        ].
        recoveredBlock811Block841Block1199Step = 1224 ifTrue: [
            recoveredBlock811Block841Block1199Stack4 := 1.
            recoveredBlock811Block841Block1199PC := 1226.
        ].
        recoveredBlock811Block841Block1199Step = 1226 ifTrue: [
            recoveredBlock811Block841Block1199Stack3 := (recoveredBlock811Block841Block1199Stack3) at: (recoveredBlock811Block841Block1199Stack4).
            recoveredBlock811Block841Block1199PC := 1231.
        ].
        recoveredBlock811Block841Block1199Step = 1231 ifTrue: [
            recoveredBlock811Block841Block1199Stack2 := (recoveredBlock811Block841Block1199Stack2) includes: (recoveredBlock811Block841Block1199Stack3).
            recoveredBlock811Block841Block1199PC := 1235.
        ].
        recoveredBlock811Block841Block1199Step = 1235 ifTrue: [
            (recoveredBlock811Block841Block1199Stack2) ifTrue: [recoveredBlock811Block841Block1199PC := 1251] ifFalse: [recoveredBlock811Block841Block1199PC := 1238].
        ].
        recoveredBlock811Block841Block1199Step = 1238 ifTrue: [
            recoveredBlock811Block841Block1199PC := 1239.
        ].
        recoveredBlock811Block841Block1199Step = 1239 ifTrue: [
            recoveredBlock811Block841Block1199Stack1 := recoveredBlock811Local2.
            recoveredBlock811Block841Block1199PC := 1242.
        ].
        recoveredBlock811Block841Block1199Step = 1242 ifTrue: [
            recoveredBlock811Block841Block1199Stack2 := recoveredBlock811Block841Block1199Arg1.
            recoveredBlock811Block841Block1199PC := 1243.
        ].
        recoveredBlock811Block841Block1199Step = 1243 ifTrue: [
            recoveredBlock811Block841Block1199Stack3 := 1.
            recoveredBlock811Block841Block1199PC := 1245.
        ].
        recoveredBlock811Block841Block1199Step = 1245 ifTrue: [
            recoveredBlock811Block841Block1199Stack2 := (recoveredBlock811Block841Block1199Stack2) at: (recoveredBlock811Block841Block1199Stack3).
            recoveredBlock811Block841Block1199PC := 1249.
        ].
        recoveredBlock811Block841Block1199Step = 1249 ifTrue: [
            recoveredBlock811Block841Block1199Stack1 := (recoveredBlock811Block841Block1199Stack1) add: (recoveredBlock811Block841Block1199Stack2).
            recoveredBlock811Block841Block1199PC := 1251.
        ].
        recoveredBlock811Block841Block1199Step = 1251 ifTrue: [
            recoveredBlock811Block841Block1199Result := recoveredBlock811Block841Block1199Stack1.
            recoveredBlock811Block841Block1199Done := true.
        ].
    ].
    recoveredBlock811Block841Block1199Result
].
            recoveredBlock811Block841PC := 1252.
        ].
        recoveredBlock811Block841Step = 1252 ifTrue: [
            (recoveredBlock811Block841Stack0) do: (recoveredBlock811Block841Stack1).
            recoveredBlock811Block841PC := 1254.
        ].
        recoveredBlock811Block841Step = 1254 ifTrue: [
            recoveredBlock811Block841Stack0 := recoveredBlock811Local3.
            recoveredBlock811Block841PC := 1257.
        ].
        recoveredBlock811Block841Step = 1257 ifTrue: [
            recoveredBlock811Block841Stack0 := (recoveredBlock811Block841Stack0) optionClass.
            recoveredBlock811Block841PC := 1261.
        ].
        recoveredBlock811Block841Step = 1261 ifTrue: [
            recoveredBlock811Block841Stack1 := recoveredBlock811Block841Stack0.
            recoveredBlock811Block841PC := 1262.
        ].
        recoveredBlock811Block841Step = 1262 ifTrue: [
            recoveredBlock811Block841Stack2 := recoveredBlock811Local2.
            recoveredBlock811Block841PC := 1265.
        ].
        recoveredBlock811Block841Step = 1265 ifTrue: [
            recoveredBlock811Block841Stack2 := (recoveredBlock811Block841Stack2) asArray.
            recoveredBlock811Block841PC := 1269.
        ].
        recoveredBlock811Block841Step = 1269 ifTrue: [
            (recoveredBlock811Block841Stack1) stringCollection: (recoveredBlock811Block841Stack2).
            recoveredBlock811Block841PC := 1273.
        ].
        recoveredBlock811Block841Step = 1273 ifTrue: [
            recoveredBlock811Block841Stack1 := recoveredBlock811Local2.
            recoveredBlock811Block841PC := 1276.
        ].
        recoveredBlock811Block841Step = 1276 ifTrue: [
            recoveredBlock811Block841Stack1 := (recoveredBlock811Block841Stack1) asArray.
            recoveredBlock811Block841PC := 1281.
        ].
        recoveredBlock811Block841Step = 1281 ifTrue: [
            recoveredBlock811Block841Stack0 := (recoveredBlock811Block841Stack0) valueCollection: (recoveredBlock811Block841Stack1).
            recoveredBlock811Block841PC := 1285.
        ].
        recoveredBlock811Block841Step = 1285 ifTrue: [
            recoveredBlock811Block841Result := recoveredBlock811Block841Stack0.
            recoveredBlock811Block841Done := true.
        ].
    ].
    recoveredBlock811Block841Result
].
    recoveredBlock811Value7 := (recoveredBlock811Value4) notNil: (recoveredBlock811Value6).
    recoveredBlock811Value7
].
            recoveredPC := 1292.
        ].
        recoveredStep = 1292 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 1294.
        ].
        recoveredStep = 1294 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 1295.
        ].
        recoveredStep = 1295 ifTrue: [
            recoveredStack0 := (recoveredStack0) options.
            recoveredPC := 1299.
        ].
        recoveredStep = 1299 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 1302.
        ].
        recoveredStep = 1302 ifTrue: [
            (recoveredStack0) addAll: (recoveredStack1).
            recoveredPC := 1307.
        ].
        recoveredStep = 1307 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 1308.
        ].
        recoveredStep = 1308 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 1311.
        ].
        recoveredStep = 1311 ifTrue: [
            recoveredStack0 := (recoveredStack0) calculateChecksumForFilename: (recoveredStack1).
            recoveredPC := 1315.
        ].
        recoveredStep = 1315 ifTrue: [
            checksum := recoveredStack0.
            recoveredPC := 1317.
        ].
        recoveredStep = 1317 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 1318.
        ].
        recoveredStep = 1318 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

