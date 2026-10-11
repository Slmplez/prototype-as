"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2000d24c; bytecode file offset 0x909e08"
!EtasXMLCustomizableOptions methodsFor: 'recovered'!
checkFilterCriteriaFor: recoveredArg1
    ^true
! !

"ASDBase.ic method 0x2000dbcc; bytecode file offset 0x90a4b8"
!EtasXMLCustomizableOptions methodsFor: 'recovered'!
xmlCategory: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2001c70c; bytecode file offset 0x92209c"
!EtasXMLCustomizableOptions methodsFor: 'recovered'!
declarationFilenamePattern
    ^'*.aoc.xml'
! !

"ASDBase.ic method 0x2004a36c; bytecode file offset 0x947128"
!EtasXMLCustomizableOptions methodsFor: 'recovered'!
initDeclarationFiles
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) getDeclarationFiles.
    recoveredValue1 := (self) declarationFiles: (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x20082fcc; bytecode file offset 0x97f888"
!EtasXMLCustomizableOptions methodsFor: 'recovered'!
declarationFiles: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredValue0.
    declarationFiles := recoveredValue1.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20083000; bytecode file offset 0x97f8cc"
!EtasXMLCustomizableOptions methodsFor: 'recovered'!
optionTable: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredValue0.
    optionTable := recoveredValue1.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2008302c; bytecode file offset 0x97f8f8"
!EtasXMLCustomizableOptions methodsFor: 'recovered'!
customDeclarations: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredValue0.
    customDeclarations := recoveredValue1.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20086ecc; bytecode file offset 0x9837f0"
!EtasXMLCustomizableOptions methodsFor: 'recovered'!
updateOption: recoveredArg1 withXMLDeclaration: recoveredArg2
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    (recoveredValue0) updateWithXMLDeclaration: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x200d6630; bytecode file offset 0x9d3134"
!EtasXMLCustomizableOptions methodsFor: 'recovered'!
initialize
    super initialize.
    (self) initDeclarationFiles.
    ^self
! !

"ASDBase.ic method 0x20105be4; bytecode file offset 0xa024a0"
!EtasXMLCustomizableOptions methodsFor: 'recovered'!
declarationFiles
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := declarationFiles.
    recoveredValue1 := [
    | recoveredBlock6Value0 |
    recoveredBlock6Value0 := (self) initDeclarationFiles.
    recoveredBlock6Value0
].
    recoveredValue2 := (recoveredValue0) ifNil: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x20105d08; bytecode file offset 0xa025c4"
!EtasXMLCustomizableOptions methodsFor: 'recovered'!
optionTable
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := optionTable.
    recoveredValue1 := [
    | recoveredBlock6Value0 |
    recoveredBlock6Value0 := (self) initOptionTable.
    recoveredBlock6Value0
].
    recoveredValue2 := (recoveredValue0) ifNil: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x20105e54; bytecode file offset 0xa02710"
!EtasXMLCustomizableOptions methodsFor: 'recovered'!
customDeclarations
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := customDeclarations.
    recoveredValue1 := [
    | recoveredBlock6Value0 |
    recoveredBlock6Value0 := (self) initCustomDeclarations.
    recoveredBlock6Value0
].
    recoveredValue2 := (recoveredValue0) ifNil: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x2010d548; bytecode file offset 0xa09e08"
!EtasXMLCustomizableOptions methodsFor: 'recovered'!
updateOptions: recoveredArg1
    | recoveredValue0 |
    (self) optionTable: (nil).
    recoveredValue0 := recoveredArg1.
    (self) options: (recoveredValue0).
    (self) updateOptions.
    ^self
! !

"ASDBase.ic method 0x2034a9e8; bytecode file offset 0xc472d0"
!EtasXMLCustomizableOptions methodsFor: 'recovered'!
updateOptions
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) customDeclarations.
    recoveredValue1 := [:recoveredBlock5Arg1 | 
    | recoveredBlock5Local1 recoveredBlock5Value0 recoveredBlock5Value1 recoveredBlock5Value2 recoveredBlock5Value3 recoveredBlock5Value4 recoveredBlock5Value5 recoveredBlock5Value6 recoveredBlock5Value7 recoveredBlock5Value8 recoveredBlock5Value9 recoveredBlock5Value10 recoveredBlock5Value11 recoveredBlock5Value12 |
    recoveredBlock5Value0 := Association.
    recoveredBlock5Value1 := recoveredBlock5Arg1.
    recoveredBlock5Value2 := (recoveredBlock5Value1) getAttribute: ('attributeName').
    recoveredBlock5Value3 := recoveredBlock5Arg1.
    recoveredBlock5Value4 := (recoveredBlock5Value3) getAttribute: ('xmlCategory').
    recoveredBlock5Value5 := (self) xmlCategory: (recoveredBlock5Value4).
    recoveredBlock5Value6 := (recoveredBlock5Value0) key: (recoveredBlock5Value2) value: (recoveredBlock5Value5).
    recoveredBlock5Local1 := recoveredBlock5Value6.
    recoveredBlock5Value7 := (self) optionTable.
    recoveredBlock5Value8 := recoveredBlock5Local1.
    recoveredBlock5Value9 := [].
    recoveredBlock5Value10 := (recoveredBlock5Value7) at: (recoveredBlock5Value8) ifAbsent: (recoveredBlock5Value9).
    recoveredBlock5Value11 := [:recoveredBlock5Block43Arg1 | 
    | recoveredBlock5Block43Value0 recoveredBlock5Block43Value1 recoveredBlock5Block43Value2 |
    recoveredBlock5Block43Value0 := recoveredBlock5Block43Arg1.
    recoveredBlock5Block43Value1 := recoveredBlock5Arg1.
    recoveredBlock5Block43Value2 := (self) updateOption: (recoveredBlock5Block43Value0) withXMLDeclaration: (recoveredBlock5Block43Value1).
    recoveredBlock5Block43Value2
].
    recoveredBlock5Value12 := (recoveredBlock5Value10) ifNotNil: (recoveredBlock5Value11).
    recoveredBlock5Value12
].
    (recoveredValue0) do: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x20356e68; bytecode file offset 0xc5374c"
!EtasXMLCustomizableOptions methodsFor: 'recovered'!
initOptionTable
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 |
    recoveredValue0 := (self) options.
    recoveredLocal2 := recoveredValue0.
    recoveredValue1 := LookupTable.
    recoveredValue2 := recoveredLocal2.
    recoveredValue3 := (recoveredValue2) size.
    recoveredValue4 := (recoveredValue1) new: (recoveredValue3).
    recoveredLocal1 := recoveredValue4.
    recoveredValue5 := recoveredLocal2.
    recoveredValue6 := [:recoveredBlock21Arg1 | 
    | recoveredBlock21Local1 recoveredBlock21Stack0 recoveredBlock21Stack1 recoveredBlock21Stack2 recoveredBlock21Stack3 recoveredBlock21Stack4 recoveredBlock21PC recoveredBlock21Step recoveredBlock21Done recoveredBlock21Result |
    recoveredBlock21Stack0 := self.
    recoveredBlock21PC := 28.
    recoveredBlock21Done := false.
    [recoveredBlock21Done not] whileTrue: [
        recoveredBlock21Step := recoveredBlock21PC.
        recoveredBlock21Step = 28 ifTrue: [
            recoveredBlock21Stack1 := nil.
            recoveredBlock21PC := 29.
        ].
        recoveredBlock21Step = 29 ifTrue: [
            recoveredBlock21Stack2 := recoveredBlock21Arg1.
            recoveredBlock21PC := 30.
        ].
        recoveredBlock21Step = 30 ifTrue: [
            recoveredBlock21Stack2 := (recoveredBlock21Stack2) isCustomizable.
            recoveredBlock21PC := 32.
        ].
        recoveredBlock21Step = 32 ifTrue: [
            (recoveredBlock21Stack2) ifTrue: [recoveredBlock21PC := 36] ifFalse: [recoveredBlock21PC := 55].
        ].
        recoveredBlock21Step = 36 ifTrue: [
            recoveredBlock21PC := 37.
        ].
        recoveredBlock21Step = 37 ifTrue: [
            recoveredBlock21Stack1 := Association.
            recoveredBlock21PC := 39.
        ].
        recoveredBlock21Step = 39 ifTrue: [
            recoveredBlock21Stack2 := recoveredBlock21Arg1.
            recoveredBlock21PC := 40.
        ].
        recoveredBlock21Step = 40 ifTrue: [
            recoveredBlock21Stack2 := (recoveredBlock21Stack2) attributeName.
            recoveredBlock21PC := 42.
        ].
        recoveredBlock21Step = 42 ifTrue: [
            recoveredBlock21Stack3 := recoveredBlock21Arg1.
            recoveredBlock21PC := 43.
        ].
        recoveredBlock21Step = 43 ifTrue: [
            recoveredBlock21Stack3 := (recoveredBlock21Stack3) xmlCategory.
            recoveredBlock21PC := 45.
        ].
        recoveredBlock21Step = 45 ifTrue: [
            recoveredBlock21Stack1 := (recoveredBlock21Stack1) key: (recoveredBlock21Stack2) value: (recoveredBlock21Stack3).
            recoveredBlock21PC := 47.
        ].
        recoveredBlock21Step = 47 ifTrue: [
            recoveredBlock21Local1 := recoveredBlock21Stack1.
            recoveredBlock21PC := 48.
        ].
        recoveredBlock21Step = 48 ifTrue: [
            recoveredBlock21Stack1 := recoveredLocal1.
            recoveredBlock21PC := 51.
        ].
        recoveredBlock21Step = 51 ifTrue: [
            recoveredBlock21Stack2 := recoveredBlock21Local1.
            recoveredBlock21PC := 52.
        ].
        recoveredBlock21Step = 52 ifTrue: [
            recoveredBlock21Stack3 := recoveredBlock21Arg1.
            recoveredBlock21PC := 53.
        ].
        recoveredBlock21Step = 53 ifTrue: [
            recoveredBlock21Stack1 := (recoveredBlock21Stack1) at: (recoveredBlock21Stack2) put: (recoveredBlock21Stack3).
            recoveredBlock21PC := 55.
        ].
        recoveredBlock21Step = 55 ifTrue: [
            recoveredBlock21Result := recoveredBlock21Stack1.
            recoveredBlock21Done := true.
        ].
    ].
    recoveredBlock21Result
].
    (recoveredValue5) do: (recoveredValue6).
    recoveredValue7 := recoveredLocal1.
    recoveredValue8 := (self) optionTable: (recoveredValue7).
    ^recoveredValue8
! !

"ASDBase.ic method 0x20396a9c; bytecode file offset 0xc93380"
!EtasXMLCustomizableOptions methodsFor: 'recovered'!
initCustomDeclarations
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := OrderedCollection.
    recoveredValue1 := (recoveredValue0) new.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := (self) declarationFiles.
    recoveredValue3 := [:recoveredBlock11Arg1 | 
    | recoveredBlock11Value0 recoveredBlock11Value1 recoveredBlock11Value2 recoveredBlock11Value3 |
    recoveredBlock11Value0 := recoveredBlock11Arg1.
    recoveredBlock11Value1 := (self) getDOMFromXMLFile: (recoveredBlock11Value0) rootTagName: ('OptionDeclarations').
    recoveredBlock11Value2 := [:recoveredBlock11Block23Arg1 | 
    | recoveredBlock11Block23Local1 recoveredBlock11Block23Value0 recoveredBlock11Block23Value1 recoveredBlock11Block23Value2 recoveredBlock11Block23Value3 recoveredBlock11Block23Value4 |
    recoveredBlock11Block23Value0 := recoveredBlock11Block23Arg1.
    recoveredBlock11Block23Value1 := (recoveredBlock11Block23Value0) getElementsByTagName: ('OptionDeclaration').
    recoveredBlock11Block23Local1 := recoveredBlock11Block23Value1.
    recoveredBlock11Block23Value2 := recoveredBlock11Block23Local1.
    recoveredBlock11Block23Value3 := [:recoveredBlock11Block23Block37Arg1 | 
    | recoveredBlock11Block23Block37Stack0 recoveredBlock11Block23Block37Stack1 recoveredBlock11Block23Block37Stack2 recoveredBlock11Block23Block37Stack3 recoveredBlock11Block23Block37Stack4 recoveredBlock11Block23Block37PC recoveredBlock11Block23Block37Step recoveredBlock11Block23Block37Done recoveredBlock11Block23Block37Result |
    recoveredBlock11Block23Block37Stack0 := self.
    recoveredBlock11Block23Block37PC := 44.
    recoveredBlock11Block23Block37Done := false.
    [recoveredBlock11Block23Block37Done not] whileTrue: [
        recoveredBlock11Block23Block37Step := recoveredBlock11Block23Block37PC.
        recoveredBlock11Block23Block37Step = 44 ifTrue: [
            recoveredBlock11Block23Block37Stack1 := nil.
            recoveredBlock11Block23Block37PC := 45.
        ].
        recoveredBlock11Block23Block37Step = 45 ifTrue: [
            recoveredBlock11Block23Block37Stack2 := self.
            recoveredBlock11Block23Block37PC := 46.
        ].
        recoveredBlock11Block23Block37Step = 46 ifTrue: [
            recoveredBlock11Block23Block37Stack3 := recoveredBlock11Block23Block37Arg1.
            recoveredBlock11Block23Block37PC := 47.
        ].
        recoveredBlock11Block23Block37Step = 47 ifTrue: [
            recoveredBlock11Block23Block37Stack2 := (recoveredBlock11Block23Block37Stack2) checkFilterCriteriaFor: (recoveredBlock11Block23Block37Stack3).
            recoveredBlock11Block23Block37PC := 49.
        ].
        recoveredBlock11Block23Block37Step = 49 ifTrue: [
            (recoveredBlock11Block23Block37Stack2) ifTrue: [recoveredBlock11Block23Block37PC := 52] ifFalse: [recoveredBlock11Block23Block37PC := 59].
        ].
        recoveredBlock11Block23Block37Step = 52 ifTrue: [
            recoveredBlock11Block23Block37PC := 53.
        ].
        recoveredBlock11Block23Block37Step = 53 ifTrue: [
            recoveredBlock11Block23Block37Stack1 := recoveredLocal1.
            recoveredBlock11Block23Block37PC := 56.
        ].
        recoveredBlock11Block23Block37Step = 56 ifTrue: [
            recoveredBlock11Block23Block37Stack2 := recoveredBlock11Block23Block37Arg1.
            recoveredBlock11Block23Block37PC := 57.
        ].
        recoveredBlock11Block23Block37Step = 57 ifTrue: [
            recoveredBlock11Block23Block37Stack1 := (recoveredBlock11Block23Block37Stack1) add: (recoveredBlock11Block23Block37Stack2).
            recoveredBlock11Block23Block37PC := 59.
        ].
        recoveredBlock11Block23Block37Step = 59 ifTrue: [
            recoveredBlock11Block23Block37Result := recoveredBlock11Block23Block37Stack1.
            recoveredBlock11Block23Block37Done := true.
        ].
    ].
    recoveredBlock11Block23Block37Result
].
    recoveredBlock11Block23Value4 := (recoveredBlock11Block23Value2) do: (recoveredBlock11Block23Value3).
    recoveredBlock11Block23Value4
].
    recoveredBlock11Value3 := (recoveredBlock11Value1) ifNotNil: (recoveredBlock11Value2).
    recoveredBlock11Value3
].
    (recoveredValue2) do: (recoveredValue3).
    recoveredValue4 := recoveredLocal1.
    recoveredValue5 := (self) customDeclarations: (recoveredValue4).
    ^recoveredValue5
! !

